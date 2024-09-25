convertRNAtoDNA=function(RNAseqfastafile){
    RNA=readLines(RNAseqfastafile)
    RNA=paste(RNA[!grepl("^>",RNA)],collapse = "")
    RNA=unlist(strsplit(RNA,""))
    DNA=c()
    for (i in RNA){
    if (i=="A"){
        DNA=c(DNA,"T")
        }else if (i=="U"){
        DNA=c(DNA,"A")
        }else if (i=="C"){
        DNA=c(DNA,"G")
        }else if (i=="G"){
        DNA=c(DNA,"C")
        } 
    }
    return(DNA)
}
convertRNAtoDNA()