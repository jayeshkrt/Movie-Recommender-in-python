##############################
# add a note to the dataframe of notes
# Jayesh Kumar Tiwari
# 11 July 2021
##############################
# version
suppressMessages(library(dplyr))
suppressMessages(library(tidyr))
# Initial write txt file
# DID BELOW TWO LINES ONLY IN DEVELOPMENT
# data <- data.frame(title=c("demo"), url=c("abc.example.com"), importance=c(0))
# write.table(data, file="all_notes.txt", sep="\t")
# loading data
data <- read.table("all_notes.txt", header=T, sep="\t")

cat("To add a note, enter the title, the url and importance level between 0 and 1\n")
cat("Here is example: \n")
print(data[1,], sep="\n")

cat("\nEnter title: ")
title1 <- readLines("stdin",n=1)
cat("\nEnter url: ")
url1 <- readLines("stdin",n=1)
cat("\nEnter importance: ")
imp <- as.numeric(readLines("stdin",n=1))

data <- data %>% add_row(title = title1, url = url1, importance=imp)
print(data, sep="\n")

# overwrite the final dataframe 
cat("Do you want to save changes? y/n \n")
yesOrNo <- readLines("stdin",n=1)
if (yesOrNo == "y" | yesOrNo == 'Y' | yesOrNo=="yes" | yesOrNo == "Yes"){
    write.table(data, file="all_notes.txt", sep = "\t")
}