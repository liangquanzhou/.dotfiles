# load packages without any warning
# stfu <- function(a.package){
#   suppressWarnings(suppressPackageStartupMessages(
#     library(a.package, character.only=TRUE)))
# }

# setup CRAN mirror, use tsinghua cran source
options("repos" = c(CRAN="https://mirrors.tuna.tsinghua.edu.cn/CRAN/"))
options(BioC_mirror="https://mirrors.tuna.tsinghua.edu.cn/bioconductor")
# options('defaultPackages') <-

# packages need to be auto loaded
# auto.loads <-c("tidyverse", "magrittr", "data.table", "reticulate")

# if (!require(pacman)) install.packages("pacman")

# load packages without warnings
if(interactive()){
  # invisible(sapply(auto.loads, stfu))
  suppressWarnings(suppressPackageStartupMessages(
    if (!require(pacman)) install.packages("pacman")
  ))
  invisible(pacman::p_load(stats, tidyverse, magrittr, RPresto, DT, parallel, DBI, scales, lubridate, dbplyr, readxl, clipr, reticulate))
}

try(reticulate::use_condaenv(condaenv = "py37", conda = Sys.getenv('RETICULATE_PYTHON')), silent = T)

# always want stringAsFactors = FALSE
options(stringsAsFactors = FALSE)

# max print in console
options(max.print = 100)

# tweak the prompt in console
options(prompt="> ", dights = 3, continue = " ")

# Don't save workspace by default
q <- function (save="no", ...) {
  quit(save=save, ...)
}

# Setting 'scipen=10' to not  use scientific notation to express very small or large numbers
options(scipen=10)

# create an empty environment for self defined functions
.env <- new.env()
# List all functions in a package (also from @_inundata)
.env$lsp <- function(package, all.names = FALSE, pattern) {
  package <- deparse(substitute(package))
  ls(
    pos = paste("package", package, sep = ":"),
    all.names = all.names,
    pattern = pattern
  )
}
# Returns a logical vector TRUE for elements of X not in Y
.env$"%nin%" <- function(x, y) !(x %in% y)

attach(.env)
