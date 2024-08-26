## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = FALSE
)

Sys.setlocale("LC_ALL", "English")


## ----eval=FALSE, message=FALSE, warning = FALSE-------------------------------
#  
#  library(barrks)
#  

## ----eval=FALSE---------------------------------------------------------------
#  
#  # call phenology with a storage path
#  pheno <- phenology('phenips-clim',
#                     barrks_data(),
#                     .storage = 'path/to/storage')
#  
#  # recover phenology from a storage path
#  pheno_recovered <- phenology('phenips-clim', .storage = 'path/to/storage')
#  

