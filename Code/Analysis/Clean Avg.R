#Finding averages of each year based on clean data

#inflation
setwd("/Users/Yoolim_Jin/Desktop/Project/data/google/inflation")
rel_freq('clean_inf_Canada.csv', data = 'inflation')
rel_freq('clean_inf_South_Africa.csv', data = 'inflation')
rel_freq('clean_inf_NZ.csv', data = 'inflation')
rel_freq('clean_inf_US.csv', data = 'inflation')

#unemployment
setwd("/Users/Yoolim_Jin/Desktop/Project/data/google/unemployment")
rel_freq('clean_unemp_Canada.csv', data = 'unemployment')
rel_freq('clean_unemp_South_Africa.csv', data = 'unemployment')
rel_freq('clean_unemp_NZ.csv', data = 'unemployment')
rel_freq('clean_unemp_US.csv', data = 'unemployment')