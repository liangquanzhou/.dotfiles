# setup CRAN mirror, use tsinghua cran source
options("repos" = c(CRAN="https://mirrors.tuna.tsinghua.edu.cn/CRAN/"))
options(BioC_mirror="https://mirrors.tuna.tsinghua.edu.cn/bioconductor")

# auto packages without warnings
if(interactive()){
  suppressWarnings(suppressPackageStartupMessages(
    if (!require(pacman)) install.packages("pacman")
  ))
  invisible(pacman::p_load(stats, tidyverse, magrittr, RPresto, DT, parallel, DBI, scales, lubridate, dbplyr, readxl, clipr, reticulate, conflr))
}

try(reticulate::use_condaenv(condaenv = "py3", conda = Sys.getenv('RETICULATE_PYTHON')), silent = T)

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

# Returns a logical vector TRUE for elements of X not in Y
.env$"%nin%" <- function(x, y) !(x %in% y)

# read sql script
.env$getSQL <- function(filepath) {
  con = file(filepath, "r")
  sql.string <- ""
  while (TRUE) {
    line <- readLines(con, n = 1)
    if (length(line) == 0) {
      break
    }
    line <- gsub("\\t", " ", line)
    if (grepl("--", line) == TRUE) {
      line <- paste(sub("--", "/*", line), "*/")
    }
    sql.string <- paste(sql.string, line)
  }
  close(con)
  return(sql.string)
}

# Jupyter notebook Chinese support: this is the default display by IRkernel
.env$show_plot <- function(p, width = NULL, height = NULL) {
  if (is.null(width)) {
    width <- getOption("repr.plot.width", 3)
  }
  if (is.null(height)) {
    height <- getOption("repr.plot.height", 3)
  }
  filename <- paste(tempfile(pattern = "jupyter-"), ".png", sep = "")
  png(filename, width = width, height = height, units = "in", res = 120)
  print(p)
  dev.off()
  IRdisplay::display_png(file = filename)
}

# conflr attachment function
.env$confl_attachment <- function(path, space_key, page_title, ancestors = NULL) {
  # if: first time run, create page while running rmarkdown file. else: update attachment
  try_result <- try(confl_post_page(
    spaceKey = space_key,
    title = page_title,
    body = '',
    ancestors = ancestors
  ), silent = T)

  # if: first time run
  if(class(try_result) != 'try-error') {
    page_id <- try_result$id
    # upload document
    attach_result <- confl_post_attachment(page_id, path)
  }

  # if: not first time run
  if(class(try_result) == 'try-error') {
    # get page id
    page_info <- confl_list_pages(spaceKey = space_key, title = page_title)
    page_id <-  page_info$results[[1]]$id

    # check if the attachment has been uploaded before
    # attachment info
    attachment_info <- confl_list_attachments(page_id, filename = basename(path))

    # if attachment not exist, upload
    if (length(attachment_info$results) == 0) {
      attach_result <- confl_post_attachment(page_id, path)
    }

    # if attachment exist, update
    if (length(attachment_info$results) == 1L) {
      attachment_id <- attachment_info$results[[1]]$id
      update_result <- confl_update_attachment_data(page_id, attachment_id, path)
    }
  }

  # return the link used in markdown
  result <- confl_list_attachments(page_id, filename = basename(path))
  # this link can be referenced in rmarkdown
  attachment_preview_link <- paste0(result[['_links']][['base']], result[['results']][[1]][['_links']][['webui']])
  return(attachment_preview_link)
}

attach(.env)
