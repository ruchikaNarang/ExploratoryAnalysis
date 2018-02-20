# import csv file 
ExploratoryAnalysisData <- read.csv("C:/Users/Ruchika/Desktop/Ex_Files_Data_Science_of_Marketing/Exercise_Files/02_02/exploratory-r.csv")
# get a quick snapshot of your data. It gives first 6 rows of our data
head(ExploratoryAnalysisData)  
#drawing a histogram. Remember histogram is used only for numeric values
hist(ExploratoryAnalysisData$cpa)
# shift the names to each row
row.names(ExploratoryAnalysisData)<- ExploratoryAnalysisData$keyword
# review that transformation 
head(ExploratoryAnalysisData)
# transform into a matrix 
myDataMatrix<-data.matrix(ExploratoryAnalysisData)
# generate our heatmap
heatmap(myDataMatrix,Rowv = NA,Colv = NA,scale = "column")
