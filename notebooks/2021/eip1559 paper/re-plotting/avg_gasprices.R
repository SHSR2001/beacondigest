install.packages("magrittr") 
install.packages("dplyr")    
library(magrittr) 
library(dplyr) 
library(data.table)

df1 <- fread('txs.csv')
output_df1 <- df1 %>% 
  group_by(block_number) %>%
  summarise(avg_gas_price = weighted.mean(gas_price,gas_used))

output_df1['avg_gas_price'] = 0.000000001*output_df1['avg_gas_price']
output_df1

fwrite(output_df1, "avg_price_all.csv")



df2 <- fread('stable.csv')
output_df2 <- df2 %>% 
  group_by(block_number) %>%
  summarise(avg_gas_price = weighted.mean(gas_price,gas_used))

output_df2['avg_gas_price'] = 0.000000001*output_df2['avg_gas_price']
output_df2

fwrite(output_df2, "avg_price_stable.csv")



df3 <- fread('bursty.csv')
output_df3 <- df3 %>% 
  group_by(block_number) %>%
  summarise(avg_gas_price = weighted.mean(gas_price,gas_used))

output_df3['avg_gas_price'] = 0.000000001*output_df3['avg_gas_price']
output_df3

fwrite(output_df3, "avg_price_burst.csv")