convertRNAtoDNA=function(RNAseq){
RNAseq=unlist(strsplit(RNAseq,""))
DNAseq=c()
for (i in RNAseq){
    if (i=="A"){
        DNAseq=c(DNAseq,"T")
        }else if (i=="U"){
        DNAseq=c(DNAseq,"A")
        }else if (i=="C"){
        DNAseq=c(DNAseq,"G")
        }else if (i=="G"){
        DNAseq=c(DNAseq,"C")
        } 
    }
    return(DNAseq)
}
convertRNAtoDNA()