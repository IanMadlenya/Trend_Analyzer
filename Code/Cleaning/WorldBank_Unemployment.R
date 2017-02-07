#Cleaning Data for World Bank(Unemployment)
clean_wrldunempl <- function(x, directory = "/Users/Yoolim_Jin/Desktop/Project/data/") {
  raw <- read.csv(x, stringsAsFactors = FALSE)
  newdf <- raw[which(grepl("Canada|New Zealand|South Africa|United States", raw$Country.Name) 
                     == TRUE), c("Country.Name", 
                                 paste0("X", 2006:2013 ,"..", "YR", 2006:2013, "."))]
  names(newdf) <- c("Country", 2006:2013)
  rownames(newdf) <- NULL
  newdf <- t(newdf) [-1, ]
  colnames(newdf) <- c("Canada", "New Zealand", "South Africa", "United States")
  write.csv(newdf, paste0(directory, "/clean_", x))
}

#Cleaning
setwd("/Users/Yoolim_Jin/Desktop/Project/rawdata/Worldbank/Unemployment")
clean_wrldunempl("World_Unemployment.csv",
                 directory = "/Users/Yoolim_Jin/Desktop/Project/data/Worldbank/Unemployment")