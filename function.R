##############
## Function ##
##############

##############################################################################
# 1. N-gram separate characters

cut_word = function(data,how.many){ #how.many>=2
        word = vector(length = (nchar(data)-how.many+1))
        if (how.many<=1){
                warning('\n suggesting argument how.many>1 \n or using strsplit() if how.many == 1')
        }
        for (i in 1:(nchar(data)-how.many+1)){
                word[i] = substr(data,i,i+how.many-1)
        }
        return(word)
}
# example
cut_word("ABCDEFG",3)


################################################################################
# 2. NA check

na_check = function(data){
        t1 = vector()
        for (i in 1:dim(data)[2]){
                t1[i] = sum(is.na(data[,i]))
        }
        naPercent = data.frame(colname = colnames(data), 
                               na = t1, percent = round(t1/dim(data)[1]*100,2), 
                               class = as.vector(unlist(sapply(data,class)))
        )
        return(naPercent)
}
# example
na_check(iris)

