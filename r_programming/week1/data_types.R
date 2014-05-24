#variaties of data types
#scalars
#vectors(numerical, character, logical)
#matrices
#data frames
#lists

#-------------Vectors are referenced using subscripts
a<-c(1,2,5.3,6,-2,4) #numeric vector
b<-c("one","two","three") #character vector
c<-c(TRUE,TRUE,FALSE,TRUE,FALSE) #logical vector
a[c(2,4)]
a[a>2]

#-------------all columns of a matrix must have the same mode and the same length.  Identify using subscripts.
#format of: mymatrix <- matrix(vector, nrow=r, ncol=c, byrow=false, dimnames=list(char_vector_rownames, char_vector_colnames))
#byrow True means the matrix is filled by rows.  False means its filled by columns
y<-matrix(1:20,nrow=5,ncol=4)
y
x<-matrix(1:20,nrow=5, ncol=4, byrow=TRUE)
x
y
cells<-c(1,26,24,68)
rnames<-c("R1","R2")
cnames<-c("C1","C2")
my_matrix<-matrix(cells, nrow=2,ncol=2,byrow=TRUE,dimnames=list(rnames,cnames))
my_matrix

x[1]
x[,4] #= 4th column
x[3,] #=3rd row
x[3,2] #2ndt column in the 3rd row
x[1:2,1:3] #row 1 and 2 of columns 1,2 and 3
x[c(1,3),c(1,4)] #row 1 and 3 of columns 1 and 4
x[c(1,3),] # entire rows of 1 and 3

#----arrays are matrixes with more than two dimensions.  simply a vector with additionl attribuses, namely dim=.
#dimnames allows you to reference by name.4

help(array)
ya<-array(1:20,dim=1:3)
ya
y
ya[3][1]
ya[3][]


#Dataframes are very general.  Modes can be mixed across columns, unlike matrixes.  
#can be called out using the $ for column
d<-c(1,2,3,4)
e<-c("red","white","red",NA)
f<-c(TRUE,TRUE,TRUE,FALSE)
af<-data.frame(d,e,f)


af    #show all
af[1] #first column
af[2] #second column
af[1,] #first row
af[,1] #first column displayed as row ????
af[1,2] #item in first row, second column
names(af) #allows reference by name.  names derived from variable names if not specified
af['d'] #everything in the d column(first variable name in data.frame(d,e,f))
af["e"]
names(af)<-c('ID','Color','Passed')
names(af) #can change the names after the fact by passing in a character vector of names
af$ID

#lists are odered collections.  they allow gathering variety of unrelated data
#lists seem to have greater seperation between the components
#can be called out using the $ for column
#use the [[]] convention
w<-list(name="fred",mynumbers=a,mymatrix=y,age=5.3)
w["name"]
w
v<-c(list1=list(1:5),list2=list(5:1))
v[[1]]
v[["list1"]]

is.list(v) #our list is a list
is.vector(v) #our list is a vector
is.vector(v[[2]]) #the second element is also a vector
is.list(v[[2]]) #however, the second element is not a list
#factors
  #nominal
  m<-c("male")
  mf<-c("female")
  gender<-factor(c(m,mf))  
  gender  
  summary(gender)
  #ordinal
  rating<-ordered(c("large","medium","small"))
  rating
  summary(rating)
  levels(rating)
####General all of this different stuff converted
as.array(x)
as.matrix(x)
as.vector(x)
as.list(x)
as.data.frame(x)
as.array(x,dimnames=list("r1","r2","r3"))
