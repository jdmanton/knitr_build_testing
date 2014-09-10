#!/usr/bin/Rscript
library(rmarkdown)

rmarkdown_files <- dir(pattern=".Rmd", recursive=TRUE)
built_files <- sapply(rmarkdown_files, render)

# built_files will not exist if a file failed to build
if(!exists(built_files)) quit(status=1)
