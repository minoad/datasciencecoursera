lm<-function(x){x*x}


f<-function(x,y){
    x^2+y/z
}
#this is a function within a function
#the make.power function constructs the power function by suppling the n
#we could do:
####square <-  make.power(2)
####cube   <-  make.power(3)

#This works because the varialbe n and x both cannot be filled with values
####so, by calling square <- make.power(2), we have constucted a function called square
####which contains the first of our required variables, n.
####so now by callilng square(2), we are passing the 2 into the x in the pow function

make.power<-function(n){
    pow<-function(x){
        x^n
    }
    pow
}

lmake.power<-function(x,n){
    lpow(x,n)
}
lpow<-function(x,n){
    x^n
}


##                  global of y = 10
##      f of y = 2                      g of y = NA
##      y will = 2 here                 y will = 10 here
y<-10
f<-function(x){
    y<-2
    y^2+g(x)
}
g<-function(x){
    x*y
}






foo <- function(x){
    if(x<3)list()+x
    else{
        if(x<10)warning("ouch")
        else 33
    }
}
bar <-function(x){
    bar2(x)
    bar2<-function(x){
        x+aa
    }
}
kk<-function(y)ff(y)
ff<-function(x)if(x)x*kk(x-1)else 1
    

gg<-local({
    k<-function(y) f(y)
    f<-function(x) if(x)x*k(x-1)else 1
})