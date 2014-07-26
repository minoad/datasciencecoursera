x<- 10:1
y<- -4:5
q<-c('Football','Baseball','Baseketball','Cricket','Tennis','Pool','Swimming','Foursquare','Ping pong','Soccer')
TheDF<-data.frame(First=x, Second=y, Sport=q, stringsAsFactors=FALSE)
# Can reference the columns using the $ and the column name.  This extracts as a vector.
print(TheDF$Sport)
cat('Class type when using $ to extract a column: ',class(TheDF$Sport),'\n')
# We can also use indexing to look at a DataFrame
print(TheDF[3,2]) #Row 3, column 2
print(TheDF[3,2:3]) #Row 3, column 2 and 3, using 2:3
print(TheDF[3,c(1,3)]) #Row 3, column 1 and 3 using c(1,3)
print(TheDF[c(1,3), 2:3]) #Row 1 and 3 (using c(1,3)) columns 2 and 3 using 2:3
#leaving one of the indeex items [row, column] blank will return all.
print(TheDF[c(2,3),]) # Rows 2 and 3 [c(2,3), and all columns ,]
print(TheDF[,c(2,3)]) # All rows[, and columns 2 and 3 ,c(2,3)]
#### BIG NOTE:  If you pull a single row, it will be returned as a Data Frame
print(class(TheDF[2,]))
#Because Rows may contain different data types, a data frame is used.
#If however, we pull a single column it will be returned as a vector
print(class(TheDF[,2])) # This is an integer vector
print(class(TheDF[,3])) # This is a char vector
#This is because vectors must be of the same type
## In many, if not most cases, you actually want this to come back as a Data frame.  
# This can be accomplished by using the drop=FALSE argument
print(class(TheDF[,2], drop=FALSE)) # What was by default an integer vector, with drop=FALSE, it is now a Data Frame.
print(class(TheDF[,3], drop=FALSE)) # What was by default a char vector, with drop=FALSE, it is now a Data Frame.