##Step 1 Create makeCasheMatrix function
#Make this following function
#I am both cashing the inverse of the data and displaying it.
makeCasheMatrix <- function(x){
  InvX <<- solve(x)
  return(InvX)
}

#Create Data to test function

TestData <- matrix(c(2, 3, 5, 8),
                   nrow = 2, byrow = TRUE)
#Store inverse matrix cashe for testing.

makeCasheMatrix(TestData)

#confirming that above function works.

ConfirmMatrix <- TestData%*%InvX

# Round as R displays
round(ConfirmMatrix, digits = 2)

## Part 2 Cache the Inverse of a Matrix

CasheSolve <- function(x = InvX){
  InvInvX <<- solve(x)
  return(InvInvX)}

#Testing this function out
CasheSolve(InvX)

#Additional check that matrix has been returned to original 
# form by inverting the inverted matrix

mean(round(InvInvX - TestData, digits = 10))==0
