```r
# Improved code that handles missing column names gracefully.

df <- data.frame(a = 1:3, b = 4:6, c = 7:9)
cols <- c("a", "d", "c")

# Check if all columns exist in the data frame
missingCols <- setdiff(cols, names(df))
if (length(missingCols) > 0) {
  warning(paste("Columns not found:", paste(missingCols, collapse = ", ")))
  # Handle missing columns; options include:
  # 1. Remove missing columns from the cols vector:
  cols <- intersect(cols, names(df))
  # 2. Add missing columns with default values (e.g., NA):
  # df[, missingCols] <- NA
}

subset <- df[, cols, drop = FALSE]
```