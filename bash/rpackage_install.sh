#!/bin/sh
###
###
###   Purpose:   R-package installation scripts
###   started:   20180304 (pvr)
###
### ############################################## ###

sudo su - -c "R -e \"install.packages('bookdown', repos='http://cran.rstudio.com/', dependencies = TRUE)\""