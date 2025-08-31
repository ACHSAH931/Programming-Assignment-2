# Load your cachematrix functions
source("cachematrix.R")

# Create a test matrix
m <- matrix(c(4, 7, 2, 6), 2, 2)
cm <- makeCacheMatrix(m)

cat("Original matrix:\n")
print(m)

# First call → should compute inverse
cat("\nFirst call to cacheSolve (computes inverse):\n")
inv1 <- cacheSolve(cm)
print(inv1)

# Second call → should retrieve cached inverse
cat("\nSecond call to cacheSolve (uses cache):\n")
inv2 <- cacheSolve(cm)
print(inv2)

# Verify correctness: product should be identity matrix
cat("\nCheck if m * inv = identity matrix:\n")
print(round(m %*% inv1, 3))