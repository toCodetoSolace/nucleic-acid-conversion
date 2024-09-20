convertDNAtoRNA=function(DNAseq){
DNAseq=unlist(strsplit(DNAseq,""))
RNAseq=c()
for (i in DNAseq){
    if (i=="A"){
        RNAseq=c(RNAseq,"U")
        }else if (i=="T"){
        RNAseq=c(RNAseq,"A")
        }else if (i=="C"){
        RNAseq=c(RNAseq,"G")
        }else if (i=="G"){
        RNAseq=c(RNAseq,"C")
        } 
    }
    return(RNAseq)
}
convertDNAtoRNA()