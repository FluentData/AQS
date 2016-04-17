# df <- read.csv("AQDM.txt", stringsAsFactors = FALSE)
# df <- df[-dim(df)[1], ]

makeAQDM <- function(data){
  # data <- df
  col_names <- names(data)
  col_names <- gsub("\\.", "_", col_names)
  col_names <- sub("^X", "_", col_names)
  names(data) <- col_names

  structure(data, class = c("AQDM", "data.frame"))
}




