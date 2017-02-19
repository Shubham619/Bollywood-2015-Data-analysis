
  bollywood <- read.csv("bollywood.csv",header = T)

  bollywood$Movie <- as.character(bollywood$Movie)
  first_10 <- bollywood$Movie[1:10]
 
  movie_7 <- bollywood$Movie[[7]]
  rows <- nrow(bollywood)
  columns <- ncol(bollywood)

  na_bollywood <- is.na(bollywood)
  fact_vars <- factor(str(bollywood))
	 
  salman <- subset(bollywood, Hero == "Salman")
  srk <- subset(bollywood,Hero == "SRK")
  akshay <- subset(bollywood,Hero == "Akshay_Kumar")

  akshay_collection <-sum(akshay$Tcollection)
  salman_collection <- sum(salman$Tcollection)
  srk_collection <- sum(srk$Tcollection)

  most_movies_actor <-  c("akshay")
  largest_collection_actor <- c("salman")
 
  max_number <- (bollywood$Movie ==max("bollywood$Ocollection"))
  row_num <- which(bollywood$Ocollection == max_number)

	library(lubridate)

  bollywood$month <- month(bollywood$Rdate)
  bollywood$month <- as.factor(bollywood$month)

    	summary(bollywood)
    	summary(bollywood$Verdict)

  bollywood$Rdate <- as.character(bollywood$Rdate)
  bollywood$Rdate <-  as.Date(bollywood$Rdate, "%m/%d/%Y")

	str(bollywood)

  bollywood$Movie <- as.character(tolower(bollywood$Movie))

	View(bollywood)

    
