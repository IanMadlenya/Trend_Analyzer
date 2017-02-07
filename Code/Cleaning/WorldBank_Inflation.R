#Cleaning data for World Bank(Inflation)
clean_wrldinf <- function(x, directory = "/Users/Yoolim_Jin/Desktop/Project/data/") {
  raw <- read.csv(x, skip = 4, stringsAsFactors = FALSE)
  newdf <- raw[which(grepl("Canada|New Zealand|South Africa|United States", raw$Country.Name) 
                     == TRUE), c("Country.Name", paste0("X", 2006:2013))]
  names(newdf) <- c("Country", 2006:2013)
  rownames(newdf) <- NULL
  newdf <- t(newdf)[-1, ]
  colnames(newdf) <- c("Canada", "New Zealand", "United States", "South Africa")
  write.csv(newdf, paste0(directory, "/clean_", x))
}

#Clean
setwd("/Users/Yoolim_Jin/Desktop/Project/rawdata/Worldbank/Inflation")
inf_dir <- "/Users/Yoolim_Jin/Desktop/Project/data/Worldbank/Inflation"
clean_wrldinf("world_inflation.csv", directory = inf_dir)