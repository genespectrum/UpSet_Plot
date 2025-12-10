install.packages("UpSetR")
library(UpSetR)
library(ggplot2)

upset_input <- file.choose()
upset_input <- read.csv(upset_input)

png()
upset(upset_input,
      nsets = 3,
      nintersects = NA,
      order.by = "freq",
      sets.bar.color = "skyblue")
dev.off()

