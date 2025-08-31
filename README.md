# Programming-Assignment-2
R Programming Assignment – Lexical Scoping (Programming Assignment 2). This repository contains the implementation of the functions makeCacheMatrix and cacheSolve for creating a special matrix object that can cache its inverse. Part of the R Programming course (Coursera, Johns Hopkins University).

### Overview

The goal of this assignment is to write a pair of functions that cache the inverse of a matrix:

makeCacheMatrix:  Creates a special matrix object that can cache its inverse.

cacheSolve:  Computes the inverse of the matrix returned by makeCacheMatrix. If the inverse has already been calculated (and the matrix has not changed), then cacheSolve retrieves the inverse from the cache instead of computing it again.

### Files

cachematrix.R – Implementation of two functions demonstrating lexical scoping and caching in R.

README.md – this file

### Functions
- `makeCacheMatrix()`  
  Creates a special "matrix" object that can store its inverse using lexical scoping.  

- `cacheSolve()`  
  Computes the inverse of the matrix returned by `makeCacheMatrix()`. If the inverse has already been calculated, it retrieves the cached result instead of recalculating it.

### Concept
This assignment demonstrates:
- **Lexical scoping** in R  
- The use of **closures** to maintain state  
- Efficient computation using **caching**  

### Example
   ```R
  source("cachematrix.R")

   # Create a matrix
m <- matrix(c(1, 2, 3, 4), 2, 2)

# Create a special matrix object
cm <- makeCacheMatrix(m)

# Compute and cache the inverse
inv1 <- cacheSolve(cm)

# Retrieve the cached inverse
inv2 <- cacheSolve(cm)
