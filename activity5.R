#Rohan Gupta
#Statistical Computing
#Activity 5

#1.
students<-function(name){
  courage<-sample(1:100,1)
  ambition<-sample(1:100,1)
  intelligence<-sample(1:100,1)
  effort<-sample(1:100,1)
  student<-list(name=name,courage=courage,ambition=ambition,intelligence=intelligence,effort=effort)
  class(student)<-"student"
  return(student)
}

#2.
sort.student<-function(object,matrix){
  a<-c(object$courage,object$ambition,object$intelligence,object$effort)
  calculate<-t(matrix)%*%a
  if(calculate[1,1]==max(calculate)){
    return("GRYFFINDOR!")
  }
  else if(calculate[2,1]==max(calculate)){
    return("SLYTHERIN!")
  }
  else if(calculate[3,1]==max(calculate)){
    return("RAVENCLAW!")
  }
  else if(calculate[4,1]==max(calculate)){
    return("HUFFLEPUFF!")
  }
}

#3.
sort.student<-function(object,matrix){
  a<-c(object$courage,object$ambition,object$intelligence,object$effort)
  calculate<-t(matrix)%*%a
  if(calculate[1,1]==max(calculate)){
    class(object)<-"Gryffindor"
    return(object)
  }
  else if(calculate[2,1]==max(calculate)){
    class(object)<-"Slythern"
    return(object)
  }
  else if(calculate[3,1]==max(calculate)){
    class(object)<-"Ravenclaw"
    return(object)
  }
  else if(calculate[4,1]==max(calculate)){
    class(object)<-"Hufflepuff"
    return(object)
  }
}

#4.
Gryffindor_Tower<-new.env()
Black_Lake<-new.env()
Ravenclaw_Tower<-new.env()
Basement<-new.env()
curfew<-function(x){
  UseMethod("curfew",x)
}
curfew.Gryffindor=function(x){
  y<-deparse(substitute(x))
  assign(y,get(y),Gryffindor_Tower)
  rm(list=y,envir=.GlobalEnv)
}
curfew.Slytherin=function(x){
  y<-deparse(substitute(x))
  assign(y,get(y),Black_Lake)
  rm(list=y,envir=.GlobalEnv)
}
curfew.Ravenclaw=function(x){
  y<-deparse(substitute(x))
  assign(y,get(y),Ravenclaw_Tower)
  rm(list=y,envir=.GlobalEnv)
}
curfew.Hufflepuff=function(x){
  y<-deparse(substitute(x))
  assign(y,get(y),Basement)
  rm(list=y,envir=.GlobalEnv)
}