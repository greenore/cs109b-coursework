## Set Java path if necessary
if (Sys.info()["sysname"] == "Windows" & Sys.getenv("JAVA_HOME") == "") {
  java_path <- "C:/Program Files (x86)/Java/jre7"
  Sys.setenv(JAVA_HOME = java_path)
  cat(paste("Set Java path to", java_path))
}

## CRAN packages
tidyverse_packages <- c("tidyverse")
visualization_packages <- c("RColorBrewer", "ggbeeswarm", "pander")
modelling_packages <- c("splines", "gam")

required_packages <- c(tidyverse_packages, visualization_packages, modelling_packages)
packagesCRAN(required_packages, update = setMissingVar(var_name = "update_package", value = FALSE))

## Clear Workspace
rm(list = ls())
