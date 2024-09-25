convertDNAtoRNA=function(DNAseqfastafile){
    DNA=readLines(DNAseqfastafile)
    DNA=paste(DNA[!grepl("^>",DNA)],collapse = "")
    DNA=unlist(strsplit(DNA,""))
    RNA=c()
    for (i in DNA){
    if (i=="A"){
        RNA=c(RNA,"U")
        }else if (i=="T"){
        RNA=c(RNA,"A")
        }else if (i=="C"){
        RNA=c(RNA,"G")
        }else if (i=="G"){
        RNA=c(RNA,"C")
        } 
    }
    return(RNA)
}
convertDNAtoRNA()