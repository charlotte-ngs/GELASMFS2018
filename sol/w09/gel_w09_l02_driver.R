###
###
###
###   Purpose:   Prototype of a driver script for a course document 
###   started:   2018-04-16 (pvr)
###
### ################################################################ ###

### # directory constants
### # rstudio project directory
s_rstudio_proj_dir <- rprojroot::find_rstudio_root_file()
### # full path to this file
s_this_file <- rprojroot::thisfile()
### # document source directory
s_doc_src_dir <- dirname(s_this_file)
### # basename of this file
s_base_this_file <- basename(s_this_file)
### # replace "_driver.R" in s_base_this_file by .Rmd to get to Rmd-src file
s_rmd_src <- gsub(pattern = "_driver.R", replacement = ".Rmd", x = s_base_this_file, fixed = TRUE)

### # put together full path to rmd-src file and call deployment
s_rmd_src_fp <- file.path(s_doc_src_dir, s_rmd_src)
teachtools::deploy_to_gh_pages(ps_doc_src_file = s_rmd_src_fp)


