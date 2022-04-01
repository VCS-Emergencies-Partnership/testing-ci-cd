rsconnect::setAccountInfo(
  Sys.getenv("SHINYAPPS_ACC_NAME"),
  Sys.getenv("SHINYAPPS_TOKEN"),
  Sys.getenv("SHINYAPPS_SECRET")
)

rsconnect::deployApp(
  appName = Sys.getenv("SHINYAPPS_NAME"),
  # exclude hidden files and renv directory (if present)
  appFiles = setdiff(list.files(), "renv"),
  account = Sys.getenv("SHINYAPPS_ACC_NAME")
)
