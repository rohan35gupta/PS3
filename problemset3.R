#Rohan Gupta
#February 13, 2018
#Pol Sci 4626 Problem Set 3

#1.
one<-1 #Objects of class take on one numeric value: 1,
two<-2 #2,
three<-3 #or 3--indicating which door candidate chooses
class(one)<-"door" #Defined new class: door
class(two)<-"door"
class(three)<-"door"

#2.
PlayGame<-function(x){ #Created method for door objects called PlayGame
  UseMethod("PlayGame",x)
}
PlayGame.door<-function(x){ #Method takes numeric value stored in door object
  random<-sample(1:3,1) #Method draws random number between 1 and 3 that presents door behind which car is hidden
  if(x==random){ #Method compares the two numbers
    print("Congratulations! You win. You chose the correct door.") #Method prints message congratulating winning candidate that chose correct door
  }
  else{
    print("Sorry! You lose. You chose the wrong door.") #Method prints message expressing sympathies for losing candidate that chose wrong door
  }
}

#4.
