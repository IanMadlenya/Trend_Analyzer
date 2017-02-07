#Function for cleaning data for Google Files
clean_data <- function(x, directory = "/Users/Yoolim_Jin/Desktop/Project/data/") {
  raw <- read.table(x, skip = 4, fill = TRUE, sep = ',', header = TRUE, quote = "")
  raw1 <- raw[1:grep("Top subregion", raw$Week) - 1, ]
  split_dates <- function(y) {
    return(matrix(unlist(strsplit(y, ' - ')), ncol = 2, byrow = TRUE))
  }
  raw1$Week <- as.character(raw1$Week)
  a <- as.data.frame(split_dates(raw1$Week))
  newdf <- cbind(a, as.numeric(raw1[, 2]))
  names(newdf) <- c('from', 'to', names(raw1)[2])
  newdf$from <- as.Date(newdf$from)
  newdf$to <- as.Date(newdf$to)
  newdf$from_year <- as.numeric(format(newdf$from, format = '%Y'))
  newdf$to_year <- as.numeric(format(newdf$to, format = '%Y'))
  newdf$from_month <- as.numeric(format(newdf$from, format = '%m'))
  newdf$to_month <- as.numeric(format(newdf$to, format = '%m'))
  newdf$from_day <- as.numeric(format(newdf$from, format = '%d'))
  newdf$to_day <- as.numeric(format(newdf$to, format = '%d'))
  write.csv(newdf, paste0(directory, "/clean_", x))
} 

#Cleaning data for Google Files(inflation)
setwd("/Users/Yoolim_Jin/Desktop/Project/rawdata/google/inflation")
inf_wd <- "/Users/Yoolim_Jin/Desktop/Project/data/google/inflation"
clean_data('inf_Canada.csv', directory = inf_wd)
clean_data('inf_South_Africa.csv', directory = inf_wd)
clean_data('inf_US.csv', directory = inf_wd)
clean_data('inf_NZ.csv', directory = inf_wd)

#Cleaning data for Google Files(unemployment)
setwd("/Users/Yoolim_Jin/Desktop/Project/rawdata/google/unemployment")
emp_wd <- "/Users/Yoolim_Jin/Desktop/Project/data/google/unemployment"
clean_data('unemp_Canada.csv', directory = emp_wd)
clean_data('unemp_South_Africa.csv', directory = emp_wd)
clean_data('unemp_US.csv', directory = emp_wd)
clean_data('unemp_NZ.csv', directory = emp_wd)