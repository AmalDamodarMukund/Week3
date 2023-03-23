
managers_data <- read.csv("managers.csv")
managers_data

new_managers_data <- read.csv("MoreData.csv")
new_managers_data

str(managers_data)
str(new_managers_data)

names(managers_data)
names(new_managers_data)


include_list <- new_managers_data[c("Date" , "Country" , "Gender" , "Age" , "Q1" , "Q2" ,
                                    "Q3" , "Q4" , "Q5")]
include_list


str(managers_data)
str(include_list)


formatted_date <- as.Date(include_list$Date, format = "%m/%d/%Y")
formatted_date
class(formatted_date)

include_list$Date <- formatted_date

include_list$AgeCat[include_list$Age >= 45] <- "Elder"
include_list$AgeCat[include_list$Age >= 26 & include_list$Age <= 44] <- "Middle Aged"
include_list$AgeCat[include_list$Age <= 25] <- "Young"
include_list$AgeCat[is.na(include_list$Age)] <- "Elder"

include_list

names(managers_data)
names(include_list)

managers_final_data <- managers_data[c(2:11)]
managers_final_data
include_list

managers_formatted_date <- as.Date(managers_final_data$Date, format = "%m/%d/%y")
managers_formatted_date
class(formatted_date)

managers_final_data$Date <- managers_formatted_date
managers_final_data
include_list

final_data <- rbind(managers_final_data,include_list)
final_data


head(managers_data)




