#Store the base data

#World Inflation
setwd("/Users/yoolim_jin/Desktop/Project/data/Worldbank/Inflation")
world_inflation <- read.csv("clean_World_Inflation.csv", check.names = FALSE, row.names = 1)

#World Unemployment
setwd("/Users/yoolim_jin/Desktop/Project/data/Worldbank/Unemployment")
world_unemployment <- read.csv("clean_world_unemployment.csv", check.names = FALSE, row.names = 1)

#Google Inflation
setwd("/Users/yoolim_jin/Desktop/Project/data/google/inflation")
GCan_inf <- rel_freq('clean_inf_Canada.csv', data = 'inflation')
GSA_inf <- rel_freq('clean_inf_South_Africa.csv', data = 'inflation')
GNZ_inf <- rel_freq('clean_inf_NZ.csv', data = 'inflation')
GUS_inf <- rel_freq('clean_inf_US.csv', data = 'inflation')

#Google Unemployment
setwd("/Users/yoolim_jin/Desktop/Project/data/google/unemployment")
GCan_unemp <- rel_freq('clean_unemp_Canada.csv', data = 'unemployment')
GSA_unemp <- rel_freq('clean_unemp_South_Africa.csv', data = 'unemployment')
GNZ_unemp <- rel_freq('clean_unemp_NZ.csv', data = 'unemployment')
GUS_unemp<- rel_freq('clean_unemp_US.csv', data = 'unemployment')