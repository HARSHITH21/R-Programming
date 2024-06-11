#2 AGE COUNTER

library(stringr)

agecount <- function(age=NULL) {
  if (is.null(age)) {
    stop("age must be specified.")
  }
  input_texts <- readLines("homicides.txt")
  
  age_count <- 0
  for(input_text in input_texts){
    
    if(str_detect(input_text,"years old")){
      pattern <- str_extract(input_text,"\\d+ years old")
      
      extracted_age <- str_extract(pattern,"\\d+")
      
      if(extracted_age==age){
        age_count <- age_count+1
      }
    }
  }
  
  return(age_count)
}
#Answer

# > agecount(3)
# [1] 0

# > agecount(21)
# [1] 60