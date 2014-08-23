## Put comments here that give an overall description of what your
## functions do


## Adapted from the vector example given on https://class.coursera.org/rprog-006/human_grading/view/courses/972578/assessments/3/submissions
## First, set the value of the matrix
## Second, get the value of the matrix
## Third, set the matrix inverse value
## Fourth, get the matrix inverse value
## Fifth, return relevant information

makeCacheMatrix <- function(x = matrix()) {
	matrix_inverse <- NULL
	set <- function(foo) {
		x <<- foo
		matrix_inverse <<- NULL
	}
	get <- function() x
	set_inverse <- function(inverse) matrix_inverse <<- inverse
	get_inverse <- function() matrix_inverse
	list(set = set, get = get, set_inverse = set_inverse, get_inverse = get_inverse) 
	## these variable names are somewhat confusing
	## maybe figure out less confusing names
}


## Adapted from the vector example given on https://class.coursera.org/rprog-006/human_grading/view/courses/972578/assessments/3/submissions
## This function returns the value of the inverse of the matrix; this won't always require a calculation. If the value is known (and present)
## we simply return the pre-computed value, saving us from unnecessary duplication of labor. If the value is not given, it instead goes ahead
## and uses solve() to calculate the inverse of the matrix, and you make yourself a cup of team because that process takes a fair bit of time

cacheSolve <- function(x, ...) {
	matrix_inverse <- x$get_inverse() 
	if (!is.null(matrix_inverse)) {
		message("getting cached data. yay.")
		return(matrix_inverse)
	}  ## don't need to use an else - if you return a value, you are done
    data <- x$get()
	matrix_inverse <- solve(data)
	x$set_inverse(matrix_inverse)
	matrix_inverse
}
