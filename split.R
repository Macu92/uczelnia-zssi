
df=read.table("??\\wine.txt",header=TRUE,sep=" ")
a=split(df, sample(rep(1:3, times=nrow(df)/3)))
b=rbind(a$'1',a$'2')
c=a$'3'