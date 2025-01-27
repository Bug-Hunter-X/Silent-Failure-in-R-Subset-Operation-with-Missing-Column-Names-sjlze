# R Subsetting Bug: Silent Failure with Missing Column Names

This repository demonstrates a common but subtle bug in R related to subsetting data frames using character vectors for column selection.  The code fails silently when the specified column names do not exist in the data frame, leading to unexpected behavior.

The `bug.R` file contains the buggy code, while `bugSolution.R` provides a corrected version that handles missing columns gracefully.  This demonstrates that explicitly checking the presence of columns before subsetting can significantly enhance code robustness.