readXlsxTable = function(path_input){
        a1 = names(installed.packages()[,1])
        if (!'gdata' %in% a1){
                install.packages('gdata')
        }
        library(gdata)
        t1 = list()
        loop = 0
        repeat{
                loop = loop + 1
                tmp = tryCatch(read.xls(path_input, sheet = loop), error = function(e) NA)
                if (is.na(tmp)){
                        break
                } else {
                        
                        t1[[loop]] = tmp
                }
        }
        # output as list()
        return(t1)
}

# Example
path_input = "/home/leongkaon/Documents/temp/iris.xlsx"
aaa = readXlsxTable(path_input)

# if you want a data.frame()
do.call('rbind', aaa)

# con:
# don't know names of table of xlsx file 


















