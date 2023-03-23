managers_data <- read.csv("managers.csv")
managers_data

more_data <- read.csv("MoreData.csv")
more_data

new_sample <- managers_data[sample(1:nrow(managers_data),10,replace = TRUE),]
new_sample

sort_data <- managers_data[order(managers_data$Gender, managers_data$Age),]
sort_data
  

write.csv(new_sample,file = "random sample.csv")

new_data <- subset(managers_data, select = c(1:3,8:9))


managers_data <- read.csv("managers.csv")
managers_data

new_managers_data <- read.csv()