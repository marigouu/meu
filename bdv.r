#biodiv
install.packages("vegan")
library(vegan)
shannon_p <- diversity(r_bdv$plantio)
shannon_m <- diversity(r_bdv$mata)
shannon_a <- diversity(r_bdv$agrof)
simpson_p <- diversity(r_bdv$plantio, "simpson")
simpson_m <- diversity(r_bdv$mata, "simpson")
simpson_a <- diversity(r_bdv$agrof, "simpson")
s_p <- specnumber(r_bdv$plantio)
s_m <- specnumber(r_bdv$mata)
s_a <- specnumber(r_bdv$agrof)
pielou_p <- s_p/log(shannon_p)
pielou_m <- s_m/log(shannon_m)
pielou_a <- s_a/log(shannon_a)
rarecurve()
