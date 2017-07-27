# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"

CompareLength <- function(v1, v2) {
  diff <- abs(length(v1) - length(v2))
  diff.string <- paste('The difference in lengths is', diff)
  return(diff.string) }

# Pass two vectors of different length to your `CompareLength` function

v1 <- c(1, 2, 3, 4)
v2 <- c(4, 5, 2)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"

DescribeDifference <- function(v3, v4) {
  diff <- length(v3) - length(v4)
  if (diff > 0) {
    vector.name <- deparse(substitute(v3))
    answer <- paste('Your, v3, vector is longer by', abs(diff), 'elements') 
  }
  else if(diff < 0) {
    answer <- paste('Your, v4, vector is longer by', abs(diff), 'elements') 
    }
  
  else if (diff == 0) {
    answer <- paste('Your two vectors are of equal length') 
  } 
 else {
  answer <- paste('NULL')
} 
return(answer) }

# Pass two vectors to your `DescribeDifference` function

v3 <- c(4:10)
v4 <- c(6:15)

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer