str<-readline("enter a string")
str_str<-strsplit(str,"")[[1]]
rev_str<-rev(split_str)
rev_str<-paste(rev_str,collapse="")
cat("otiginal",str,"\n")
cat("rev",rev_str)
