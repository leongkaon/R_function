pwGen = function(length, number = TRUE, lower = TRUE, upper = TRUE, special = TRUE){
        
        pool = c(letters,LETTERS,0:9,"!", "@", "$", "%", "^", "&", "*", "(", ")", "_", "+", "-")
        
        if (number==FALSE){
                pool = pool[grepl("[^0-9]",pool)]
        }
        
        if (upper==FALSE){
                pool = pool[grepl("[^A-Z]",pool)]
        }
        
        if (lower==FALSE){
                pool = pool[grepl("[^a-z]",pool)]
        }
        
        if (special==FALSE){
                pool = pool[!grepl("[[:punct:]]",pool)]
        }
        
        
        pw = paste0(sample(pool,length), collapse = "")
        return(pw)
}

pwGen(length = 10)
