## ----content------------------------------------------------------------------
library(drake)
loadd(sc1_interim_data)
print(sc1_interim_data)

## ----content2-----------------------------------------------------------------
library(tidyverse)
ggplot(sc1_interim_data, aes(x=timestamp, y=cpp, color=factor(gupi)))+
  geom_line()

