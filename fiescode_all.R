#fiescode2
#1997 to 2015 codes

#fies 1997

colnames(f97vars)
f97vars$pcinc97 <- f97vars$toinc/f97vars$fsize
f97vars$pcexp97 <- f97vars$toexp/f97vars$fsize

##real prices 

f97vars$toinc97adj	<-	f97vars$toinc	*	115.4295	/	52.90
f97vars$food97adj	<-	f97vars$food	*	115.4295	/	52.90
f97vars$albev97adj	<-	f97vars$albev	*	115.4295	/	52.90
f97vars$tbcco97adj	<-	f97vars$tbcco	*	115.4295	/	52.90
f97vars$trcom97adj	<-	f97vars$trcom	*	115.4295	/	52.90
f97vars$educ97adj	<-	f97vars$educ	*	115.4295	/	52.90
f97vars$rcrtn97adj	<-	f97vars$rcrtn	*	115.4295	/	52.90
f97vars$medic97adj	<-	f97vars$medic	*	115.4295	/	52.90
f97vars$nfood97adj	<-	f97vars$nfood	*	115.4295	/	52.90
f97vars$toexp97adj	<-	f97vars$toexp	*	115.4295	/	52.90
f97vars$depo97adj	<-	f97vars$depo	*	115.4295	/	52.90
f97vars$eainc97adj	<-	f97vars$eainc	*	115.4295	/	52.90
f97vars$pcexp97adj	<-	f97vars$pcexp97	*	115.4295	/	52.90
f97vars$pcinc97adj	<-	f97vars$pcinc97	*	115.4295	/	52.90


#SES indicator

f97vars$ses97[f97vars$pcinc97adj < 9999.99] <- 1
f97vars$ses97[9999.99<= f97vars$pcinc97adj & f97vars$pcinc97adj < 19999.97] <- 2
f97vars$ses97[19999.97<= f97vars$pcinc97adj  & f97vars$pcinc97adj < 39999.94] <- 3
f97vars$ses97[39999.94<= f97vars$pcinc97adj  & f97vars$pcinc97adj < 699999.04] <- 4
f97vars$ses97[699999.04<= f97vars$pcinc97adj  & f97vars$pcinc97adj < 119999.82] <- 5
f97vars$ses97[119999.82<= f97vars$pcinc97adj  & f97vars$pcinc97adj < 199999.70] <- 6
f97vars$ses97[199999.70<= f97vars$pcinc97adj] <- 7

f97vars$ses97b[f97vars$ses97 < 3] <- 1
f97vars$ses97b[2 < f97vars$ses97 & f97vars$ses97 < 6] <- 2
f97vars$ses97b[5 < f97vars$ses97] <- 3

colnames(f97vars)

table(f97vars$ses97b)

#group weighted mean

library(dplyr)

f97vars %>%
  group_by(ses97b) %>%
  summarise(weighted.mean(pcinc97adj, rfact))


f97vars %>%
  group_by(ses97b) %>%
  summarise(weighted.mean(pcexp97adj, rfact))

f97vars %>%
  group_by(ses97b) %>%
  summarise(weighted.mean(food97adj, rfact))

f97vars %>%
  group_by(ses97b) %>%
  summarise(weighted.mean(albev97adj, rfact))

f97vars %>%
  group_by(ses97b) %>%
  summarise(weighted.mean(tbcco97adj, rfact))

f97vars %>%
  group_by(ses97b) %>%
  summarise(weighted.mean(trcom97adj, rfact))

f97vars %>%
  group_by(ses97b) %>%
  summarise(weighted.mean(educ97adj, rfact))

f97vars %>%
  group_by(ses97b) %>%
  summarise(weighted.mean(rcrtn97adj, rfact))

f97vars %>%
  group_by(ses97b) %>%
  summarise(weighted.mean(medic97adj, rfact))

f97vars %>%
  group_by(ses97b) %>%
  summarise(weighted.mean(nfood97adj, rfact))

f97vars %>%
  group_by(ses97b) %>%
  summarise(weighted.mean(eainc97adj, rfact))

f97vars %>%
  group_by(ses97b) %>%
  summarise(weighted.mean(toinc97adj, rfact))


#fies 2000

colnames(f2kvars)
f2kvars$pcinc2k <- f2kvars$toinc/f2kvars$fsize
f2kvars$pcexp2k <- f2kvars$toexp/f2kvars$fsize


##real prices 

f2kvars$toinc2kadj	<-	f2kvars$toinc	*	115.4295	/	63.65
f2kvars$food2kadj	<-	f2kvars$food	*	115.4295	/	63.65
f2kvars$albev2kadj	<-	f2kvars$albev	*	115.4295	/	63.65
f2kvars$tbcco2kadj	<-	f2kvars$tbcco	*	115.4295	/	63.65
f2kvars$trcom2kadj	<-	f2kvars$trcom	*	115.4295	/	63.65
f2kvars$educ2kadj	<-	f2kvars$educ	*	115.4295	/	63.65
f2kvars$rcrtn2kadj	<-	f2kvars$rcrtn	*	115.4295	/	63.65
f2kvars$medic2kadj	<-	f2kvars$medic	*	115.4295	/	63.65
f2kvars$nfood2kadj	<-	f2kvars$nfood	*	115.4295	/	63.65
f2kvars$toexp2kadj	<-	f2kvars$toexp	*	115.4295	/	63.65
f2kvars$depo2kadj	<-	f2kvars$depo	*	115.4295	/	63.65
f2kvars$eainc2kadj	<-	f2kvars$eainc	*	115.4295	/	63.65
f2kvars$pcexp2kadj	<-	f2kvars$pcexp2k	*	115.4295	/	63.65
f2kvars$pcinc2kadj	<-	f2kvars$pcinc2k	*	115.4295	/	63.65

#SES indicator

f2kvars$ses2k[f2kvars$pcinc2kadj < 9999.99] <- 1
f2kvars$ses2k[9999.99<= f2kvars$pcinc2kadj & f2kvars$pcinc2kadj < 19999.97] <- 2
f2kvars$ses2k[19999.97<= f2kvars$pcinc2kadj  & f2kvars$pcinc2kadj < 39999.94] <- 3
f2kvars$ses2k[39999.94<= f2kvars$pcinc2kadj  & f2kvars$pcinc2kadj < 699999.04] <- 4
f2kvars$ses2k[699999.04<= f2kvars$pcinc2kadj  & f2kvars$pcinc2kadj < 119999.82] <- 5
f2kvars$ses2k[119999.82<= f2kvars$pcinc2kadj  & f2kvars$pcinc2kadj < 199999.70] <- 6
f2kvars$ses2k[199999.70<= f2kvars$pcinc2kadj] <- 7

f2kvars$ses2kb[f2kvars$ses2k < 3] <- 1
f2kvars$ses2kb[2 < f2kvars$ses2k & f2kvars$ses2k < 6] <- 2
f2kvars$ses2kb[5 < f2kvars$ses2k] <- 3

colnames(f2kvars)
#group weighted mean

library(dplyr)

f2kvars %>%
  group_by(ses2kb) %>%
  summarise(weighted.mean(pcinc2kadj, rfact))


f2kvars %>%
  group_by(ses2kb) %>%
  summarise(weighted.mean(pcexp2kadj, rfact))

f2kvars %>%
  group_by(ses2kb) %>%
  summarise(weighted.mean(food2kadj, rfact))

f2kvars %>%
  group_by(ses2kb) %>%
  summarise(weighted.mean(albev2kadj, rfact))

f2kvars %>%
  group_by(ses2kb) %>%
  summarise(weighted.mean(tbcco2kadj, rfact))

f2kvars %>%
  group_by(ses2kb) %>%
  summarise(weighted.mean(trcom2kadj, rfact))

f2kvars %>%
  group_by(ses2kb) %>%
  summarise(weighted.mean(educ2kadj, rfact))

f2kvars %>%
  group_by(ses2kb) %>%
  summarise(weighted.mean(rcrtn2kadj, rfact))

f2kvars %>%
  group_by(ses2kb) %>%
  summarise(weighted.mean(medic2kadj, rfact))

f2kvars %>%
  group_by(ses2kb) %>%
  summarise(weighted.mean(nfood2kadj, rfact))

f2kvars %>%
  group_by(ses2kb) %>%
  summarise(weighted.mean(eainc2kadj, rfact))


f2kvars %>%
  group_by(ses2kb) %>%
  summarise(weighted.mean(toinc2kadj, rfact))


#2003

colnames(f2k3vars)

f2k3vars$pcexp2k3 <- f2k3vars$totex03adj/f2k3vars$fsize03

f2k3vars %>%
  group_by(ses03b) %>%
  summarise(weighted.mean(pcinc03, fwgt03))


f2k3vars %>%
  group_by(ses03b) %>%
  summarise(weighted.mean(pcexp2k3, fwgt03))

f2k3vars %>%
  group_by(ses03b) %>%
  summarise(weighted.mean(food03adj, fwgt03))

f2k3vars %>%
  group_by(ses03b) %>%
  summarise(weighted.mean(albev03adj, fwgt03))

f2k3vars %>%
  group_by(ses03b) %>%
  summarise(weighted.mean(tbcco03adj, fwgt03))

f2k3vars %>%
  group_by(ses03b) %>%
  summarise(weighted.mean(trcom03adj, fwgt03))

f2k3vars %>%
  group_by(ses03b) %>%
  summarise(weighted.mean(educ03adj, fwgt03))

f2k3vars %>%
  group_by(ses03b) %>%
  summarise(weighted.mean(rcrtn03adj, fwgt03))

f2k3vars %>%
  group_by(ses03b) %>%
  summarise(weighted.mean(medic03adj, fwgt03))

f2k3vars %>%
  group_by(ses03b) %>%
  summarise(weighted.mean(nfood2kadj, rfact))

f2k3vars %>%
  group_by(ses03b) %>%
  summarise(weighted.mean(eainc03adj, fwgt03))


f2k3vars %>%
  group_by(ses03b) %>%
  summarise(weighted.mean(toinc03adj, fwgt03))

#2006


colnames(f2k6vars)

f2k6vars$pcexp2k6 <- f2k6vars$totex06adj/f2k6vars$fsize06

f2k6vars %>%
  group_by(ses06b) %>%
  summarise(weighted.mean(pcinc06, rfact))


f2k6vars %>%
  group_by(ses06b) %>%
  summarise(weighted.mean(pcexp2k6, rfact))

f2k6vars %>%
  group_by(ses06b) %>%
  summarise(weighted.mean(food06adj, rfact))

f2k6vars %>%
  group_by(ses06b) %>%
  summarise(weighted.mean(albev06adj, rfact))

f2k6vars %>%
  group_by(ses06b) %>%
  summarise(weighted.mean(tbcco06adj, rfact))

f2k6vars %>%
  group_by(ses06b) %>%
  summarise(weighted.mean(trcom06adj, rfact))

f2k6vars %>%
  group_by(ses06b) %>%
  summarise(weighted.mean(educ06adj, rfact))

f2k6vars %>%
  group_by(ses06b) %>%
  summarise(weighted.mean(rcrtn06adj, rfact))

f2k6vars %>%
  group_by(ses06b) %>%
  summarise(weighted.mean(medic06adj, rfact))

f2k6vars %>%
  group_by(ses06b) %>%
  summarise(weighted.mean(nfood2kadj, rfact))

f2k6vars %>%
  group_by(ses06b) %>%
  summarise(weighted.mean(eainc06adj, rfact))


f2k6vars %>%
  group_by(ses06b) %>%
  summarise(weighted.mean(toinc06adj, rfact))

#2009


colnames(f2k9vars)

f2k9vars$pcexp2k9 <- f2k9vars$totex09adj/f2k9vars$fsize09

f2k9vars %>%
  group_by(ses09b) %>%
  summarise(weighted.mean(pcinc09, fwgt09))

f2k9vars %>%
  group_by(ses09b) %>%
  summarise(weighted.mean(pcexp2k9, fwgt09))

f2k9vars %>%
  group_by(ses09b) %>%
  summarise(weighted.mean(food09adj, fwgt09))

f2k9vars %>%
  group_by(ses09b) %>%
  summarise(weighted.mean(albev09adj, fwgt09))

f2k9vars %>%
  group_by(ses09b) %>%
  summarise(weighted.mean(tbcco09adj, fwgt09))

f2k9vars %>%
  group_by(ses09b) %>%
  summarise(weighted.mean(trcom09adj, fwgt09))

f2k9vars %>%
  group_by(ses09b) %>%
  summarise(weighted.mean(educ09adj, fwgt09))

f2k9vars %>%
  group_by(ses09b) %>%
  summarise(weighted.mean(rcrtn09adj, fwgt09))

f2k9vars %>%
  group_by(ses09b) %>%
  summarise(weighted.mean(medic09adj, fwgt09))

f2k9vars %>%
  group_by(ses09b) %>%
  summarise(weighted.mean(nfood09adj, fwgt09))

f2k9vars %>%
  group_by(ses09b) %>%
  summarise(weighted.mean(eainc09adj, fwgt09))


f2k9vars %>%
  group_by(ses09b) %>%
  summarise(weighted.mean(toinc09adj, fwgt09))
#2012

colnames(f12vars2)

f12vars$pcinc12 <- f12vars$toinc/5
f12vars$pcexp12 <- f12vars$t_totex/5

#no fsize
#pcing already here

mean(f12vars$pcinc)
mean(f12vars$fsize)
summary(f12vars$pcinc)
#real prices

f12vars$toinc12adj	<-	f12vars$toinc	*	115.4295	/	107.89
f12vars$food12adj	<-	f12vars$t_food	*	115.4295	/	107.89
f12vars$albev12adj	<-	f12vars$t_alcohol	*	115.4295	/	107.89
f12vars$tbcco12adj	<-	f12vars$t_tobacco	*	115.4295	/	107.89
f12vars$trcom12adj	<-	f12vars$t_transport	*	115.4295	/	107.89
f12vars$comm12adj	<-	f12vars$t_communication	*	115.4295	/	107.89
f12vars$educ12adj	<-	f12vars$t_education	*	115.4295	/	107.89
f12vars$rcrtn12adj	<-	f12vars$t_recreation	*	115.4295	/	107.89
f12vars$medic12adj	<-	f12vars$t_health	*	115.4295	/	107.89
f12vars$nfood12adj	<-	f12vars$t_nfood	*	115.4295	/	107.89
f12vars$toexp12adj	<-	f12vars$t_totex	*	115.4295	/	107.89
#f12vars$depo12adj	<-	f12vars$depo	*	115.4295	/	107.89
f12vars$eainc12adj	<-	f12vars$eainc	*	115.4295	/	107.89
f12vars$pcexp12adj	<-	f12vars$t_totex	*	115.4295	/	107.89
f12vars$pcinc12adj	<-	f12vars$pcinc12	*	115.4295	/	107.89

summary(f12vars$pcinc12adj)
class(f12vars$pcinc12adj)
table(f12vars$pcinc12)
table(f12vars$fsize)


#SES indicator

f12vars$ses12[f12vars$pcinc12adj < 9999.99] <- 1
f12vars$ses12[9999.99<= f12vars$pcinc12adj & f12vars$pcinc12adj < 19999.97] <- 2
f12vars$ses12[19999.97<= f12vars$pcinc12adj  & f12vars$pcinc12adj < 39999.94] <- 3
f12vars$ses12[39999.94<= f12vars$pcinc12adj  & f12vars$pcinc12adj < 699999.04] <- 4
f12vars$ses12[699999.04<= f12vars$pcinc12adj  & f12vars$pcinc12adj < 119999.82] <- 5
f12vars$ses12[119999.82<= f12vars$pcinc12adj  & f12vars$pcinc12adj < 199999.70] <- 6
f12vars$ses12[199999.70<= f12vars$pcinc12adj] <- 7

f12vars$ses12b[f12vars$ses12 < 3] <- 1
f12vars$ses12b[2 < f12vars$ses12 & f12vars$ses12 < 6] <- 2
f12vars$ses12b[5 < f12vars$ses12] <- 3

table(f12vars2$ses12)
table(f12vars2$ses12b)
#weighted group mean

f12vars %>%
  group_by(ses12b) %>%
  summarise(weighted.mean(pcinc12adj, rfact))

f12vars %>%
  group_by(f12vars$ses12b) %>%
  summarise(weighted.mean(f12vars$pcexp12adj, rfact))

f12vars %>%
  group_by(ses12b) %>%
  summarise(weighted.mean(food12adj, rfact))

f12vars %>%
  group_by(ses12b) %>%
  summarise(weighted.mean(albev12adj, rfact))

f12vars %>%
  group_by(ses12b) %>%
  summarise(weighted.mean(tbcco12adj, rfact))

f12vars %>%
  group_by(ses12b) %>%
  summarise(weighted.mean(trcom12adj, rfact))

f12vars %>%
  group_by(ses12b) %>%
  summarise(weighted.mean(comm12adj, rfact))

f12vars %>%
  group_by(ses12b) %>%
  summarise(weighted.mean(educ12adj, rfact))

f12vars %>%
  group_by(ses12b) %>%
  summarise(weighted.mean(rcrtn12adj, rfact))

f12vars %>%
  group_by(ses12b) %>%
  summarise(weighted.mean(medic12adj, rfact))

f12vars %>%
  group_by(ses12b) %>%
  summarise(weighted.mean(nfood12adj, rfact))

f12vars %>%
  group_by(ses12b) %>%
  summarise(weighted.mean(eainc12adj, rfact))


f12vars %>%
  group_by(ses12b) %>%
  summarise(weighted.mean(toinc12adj, rfact))

#2015

colnames(f15vars)


f15vars$pcinc15 <- f15vars$toinc/f15vars$fsize
f15vars$pcexp15 <- f15vars$totex/f15vars$fsize

#real prices

f15vars$toinc15adj	<-	f15vars$toinc	*	115.4295	/	115.4295
f15vars$food15adj	<-	f15vars$food	*	115.4295	/	115.4295
f15vars$albev15adj	<-	f15vars$alcohol	*	115.4295	/	115.4295
f15vars$tbcco15adj	<-	f15vars$tobacco	*	115.4295	/	115.4295
f15vars$trcom15adj	<-	f15vars$transport	*	115.4295	/	115.4295
f15vars$comm15adj	<-	f15vars$communication	*	115.4295	/	115.4295
f15vars$educ15adj	<-	f15vars$education	*	115.4295	/	115.4295
f15vars$rcrtn15adj	<-	f15vars$recreation	*	115.4295	/	115.4295
f15vars$medic15adj	<-	f15vars$health	*	115.4295	/	115.4295
f15vars$nfood15adj	<-	f15vars$nfood	*	115.4295	/	115.4295
f15vars$toexp15adj	<-	f15vars$totex	*	115.4295	/	115.4295
#f15vars$depo15adj	<-	f15vars$depo	*	115.4295	/	115.4295
f15vars$eainc15adj	<-	f15vars$eainc	*	115.4295	/	115.4295
f15vars$pcexp15adj	<-	f15vars$pcexp15	*	115.4295	/	115.4295
f15vars$pcinc15adj	<-	f15vars$pcinc15	*	115.4295	/	115.4295


#SES indicator

f15vars$ses15[f15vars$pcinc15adj < 9999.99] <- 1
f15vars$ses15[9999.99<= f15vars$pcinc15adj & f15vars$pcinc15adj < 19999.97] <- 2
f15vars$ses15[19999.97<= f15vars$pcinc15adj  & f15vars$pcinc15adj < 39999.94] <- 3
f15vars$ses15[39999.94<= f15vars$pcinc15adj  & f15vars$pcinc15adj < 699999.04] <- 4
f15vars$ses15[699999.04<= f15vars$pcinc15adj  & f15vars$pcinc15adj < 119999.82] <- 5
f15vars$ses15[119999.82<= f15vars$pcinc15adj  & f15vars$pcinc15adj < 199999.70] <- 6
f15vars$ses15[199999.70<= f15vars$pcinc15adj] <- 7

f15vars$ses15b[f15vars$ses15 < 3] <- 1
f15vars$ses15b[2 < f15vars$ses15 & f15vars$ses15 < 6] <- 2
f15vars$ses15b[5 < f15vars$ses15] <- 3


#weighted group mean

f15vars %>%
  group_by(ses15b) %>%
  summarise(weighted.mean(pcinc15adj, rfact))

f15vars %>%
  group_by(ses15b) %>%
  summarise(weighted.mean(pcexp15adj, rfact))

f15vars %>%
  group_by(ses15b) %>%
  summarise(weighted.mean(food15adj, rfact))

f15vars %>%
  group_by(ses15b) %>%
  summarise(weighted.mean(albev15adj, rfact))

f15vars %>%
  group_by(ses15b) %>%
  summarise(weighted.mean(tbcco15adj, rfact))

f15vars %>%
  group_by(ses15b) %>%
  summarise(weighted.mean(trcom15adj, rfact))

f15vars %>%
  group_by(ses15b) %>%
  summarise(weighted.mean(comm15adj, rfact))

f15vars %>%
  group_by(ses15b) %>%
  summarise(weighted.mean(educ15adj, rfact))

f15vars %>%
  group_by(ses15b) %>%
  summarise(weighted.mean(rcrtn15adj, rfact))

f15vars %>%
  group_by(ses15b) %>%
  summarise(weighted.mean(medic15adj, rfact))

f15vars %>%
  group_by(ses15b) %>%
  summarise(weighted.mean(nfood15adj, rfact))

f15vars %>%
  group_by(ses15b) %>%
  summarise(weighted.mean(eainc15adj, rfact))


f15vars %>%
  group_by(ses15b) %>%
  summarise(weighted.mean(toinc15adj, rfact))

###panel

df %>%
  group_by(sesmob) %>%
  summarise(mean(medic03adj))

aggregate(df$medic03adj~df$sesmob, df, mean)
aggregate(df$medic06adj~df$sesmob, df, mean)
aggregate(df$medic09adj~df$sesmob, df, mean)

aggregate(df$tbcco03adj~df$sesmob, df, mean)
aggregate(df$tbcco06adj~df$sesmob, df, mean)
aggregate(df$tbcco09adj~df$sesmob, df, mean)

aggregate(df$eainc03adj~df$sesmob, df, mean)
aggregate(df$eainc06adj~df$sesmob, df, mean)
aggregate(df$eainc09adj~df$sesmob, df, mean)

aggregate(df$rcrtn03adj~df$sesmob, df, mean)
aggregate(df$rcrtn06adj~df$sesmob, df, mean)
aggregate(df$rcrtn09adj~df$sesmob, df, mean)

aggregate(df$trcom03adj~df$sesmob, df, mean)
aggregate(df$trcom06adj~df$sesmob, df, mean)
aggregate(df$trcom09adj~df$sesmob, df, mean)

aggregate(df$houserent03~df$sesmob, df, mean)
aggregate(df$houserent06~df$sesmob, df, mean)
aggregate(df$houserent09~df$sesmob, df, mean)
