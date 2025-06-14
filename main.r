install.packages("https://cran.r-project.org/src/contrib/Archive/read.dbc/read.dbc_1.0.7.tar.gz", repos = NULL, type = "source")

df1 <- read.dbc::read.dbc("./DENGBR25.dbc")
df2 <- read.dbc::read.dbc("./ZIKABR25.dbc")
df3 <- read.dbc::read.dbc("./CHIKBR25.dbc")

str(df1)
str(df2)
str(df3)

nrow(df1)
nrow(df2)
nrow(df3)

head(df1, 10)
head(df2, 10)
head(df3, 10)

summary(df1)
summary(df2)
summary(df3)

write.csv(head(df1, 100), "dengbr25_amostra.csv", row.names = FALSE)
write.csv(head(df2, 100), "zikabr25_amostra.csv", row.names = FALSE)
write.csv(head(df3, 100), "chikbr25_amostra.csv", row.names = FALSE)
