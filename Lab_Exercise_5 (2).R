#1 Cause counter

count <- function(cause = NULL) {
  if (is.null(cause)) {
    stop("Error: 'cause' argument cannot be NULL.")
  }
  allowed_causes <- c("asphyxiation", "blunt force", "other", "shooting", "stabbing", "unknown")
  cause <- tolower(cause)
  if (!(cause %in% allowed_causes)) {
    stop(paste("Error: '", cause, "' is not an allowed cause. Please choose from: ", toString(allowed_causes), ".", sep = ""))
  }
  homicides <- readLines("homicides.txt")
  causes <- grep("Cause:", homicides, value = TRUE, ignore.case = TRUE)
  cause_count <- sum(grepl(paste0("Cause:.", cause, "."), causes, ignore.case = TRUE))
  
  return(cause_count)
}
count("other")
count("unknown")

# Answer
# > count("other")
# [1] 6
# > count("unknown")
# [1] 10
