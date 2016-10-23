
df=read.table("??\\wine.txt",header=TRUE,sep=" ")
a=split(df, sample(rep(1:2, times=nrow(df)/2)))
treningowa=a$'1'
testowa=a$'2'