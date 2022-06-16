#f2k3 analysis
#run f2k3vars code
#remove labels?

library(dplyr)

setwd("D:/Users/Erwin/OneDrive - University of the Philippines/CSWCD/SD/SD 400/Data Analysis/FIES")

vars03 <- ls(f2k3vars)

sink(file = "vars2k3.txt", split = TRUE, append = FALSE)
print(sort=TRUE,digits=3, cut=0,vars03)
sink()

#sample table, labels removed

table(f2k3vars$z2011_h_sex)

ls(f2k3vars)
class(f2k3vars)


#rename f2k3


f2k3vars %>% rename(bldgtype = b4011_bldg_type)

names(f2k3vars)[names(f2k3vars)=="acrnt"]	<-	"acrnt03"
names(f2k3vars)[names(f2k3vars)=="b4011_bldg_type"]	<-	"bldgtype03"	  
names(f2k3vars)[names(f2k3vars)=="b4031_walls"]	<-	"walls03"	      
names(f2k3vars)[names(f2k3vars)=="b4042_tenure_ind"]	<-	"tenure_ind03"	 
names(f2k3vars)[names(f2k3vars)=="b4053_lot_rent"]	<-	"lotrent03"	   
names(f2k3vars)[names(f2k3vars)=="b5031_electric"]	<-	"elec03"	   
names(f2k3vars)[names(f2k3vars)=="b5052_n_radio"]	<-	"radio03"	    
names(f2k3vars)[names(f2k3vars)=="b5092_n_ref"]	<-	"ref03"	      
names(f2k3vars)[names(f2k3vars)=="b5112_n_aircon"]	<-	"aircon03"	   
names(f2k3vars)[names(f2k3vars)=="b5132_n_dining"]	<-	"dining03"	   
names(f2k3vars)[names(f2k3vars)=="b5152_n_phone"]	<-	"phone03"	    
names(f2k3vars)[names(f2k3vars)=="b5172_n_oven"]	<-	"oven03"	     
names(f2k3vars)[names(f2k3vars)=="cloth"]	<-	"cloth03"	            
names(f2k3vars)[names(f2k3vars)=="ea_loss"]	<-	"ealoss03"	          
names(f2k3vars)[names(f2k3vars)=="educ"]	<-	"educ03"	             
names(f2k3vars)[names(f2k3vars)=="food"]	<-	"food03"	             
names(f2k3vars)[names(f2k3vars)=="fwgt"]	<-	"fwgt03"	             
names(f2k3vars)[names(f2k3vars)=="knfood"]	<-	"knfood03"	           
names(f2k3vars)[names(f2k3vars)=="natdc"]	<-	"natdc03"	            
names(f2k3vars)[names(f2k3vars)=="pnsns"]	<-	"pnsns03"	            
names(f2k3vars)[names(f2k3vars)=="regdc"]	<-	"regdc03"	            
names(f2k3vars)[names(f2k3vars)=="regpc"]	<-	"regpc03"	            
names(f2k3vars)[names(f2k3vars)=="stratum"]	<-	"stratum03"	          
names(f2k3vars)[names(f2k3vars)=="toinc"]	<-	"toinc03"	            
names(f2k3vars)[names(f2k3vars)=="trcom"]	<-	"trcom03"	            
names(f2k3vars)[names(f2k3vars)=="z2011_h_sex"]	<-	"sex03"	      
names(f2k3vars)[names(f2k3vars)=="z2031_h_ms"]	<-	"ms03"	       
names(f2k3vars)[names(f2k3vars)=="z2051_h_has_job"]	<-	"hasjob03"	  
names(f2k3vars)[names(f2k3vars)=="z2071_h_kb_2"]	<-	"kb03"	     
names(f2k3vars)[names(f2k3vars)=="z2091_hhld_type"]	<-	"hhldtype03"	  
names(f2k3vars)[names(f2k3vars)=="z2161_m_tot_nrel"]	<-	"totnonrel03"	 
names(f2k3vars)[names(f2k3vars)=="z2181_wife_emp"]	<-	"wifeemp03"	  
names(f2k3vars)[names(f2k3vars)=="albev"]	<-	"albev03"	
names(f2k3vars)[names(f2k3vars)=="b4021_roof"]	<-	"roof03"	
names(f2k3vars)[names(f2k3vars)=="b4041_tenure"]	<-	"tenure03"	
names(f2k3vars)[names(f2k3vars)=="b4043_house_rent"]	<-	"houserent03"	
names(f2k3vars)[names(f2k3vars)=="b5021_toilet"]	<-	"toilet03"	
names(f2k3vars)[names(f2k3vars)=="b5041_water"]	<-	"water03"	
names(f2k3vars)[names(f2k3vars)=="b5062_n_tv"]	<-	"tv03"	
names(f2k3vars)[names(f2k3vars)=="b5102_n_wash"]	<-	"wash03"	
names(f2k3vars)[names(f2k3vars)=="b5122_n_salaset"]	<-	"salaset03"	
names(f2k3vars)[names(f2k3vars)=="b5142_n_car"]	<-	"car03"	
names(f2k3vars)[names(f2k3vars)=="b5162_n_pc"]	<-	"pc03"	
names(f2k3vars)[names(f2k3vars)=="b5182_n_motor"]	<-	"motor03"	
names(f2k3vars)[names(f2k3vars)=="dvdnd"]	<-	"dvdnd03"	
names(f2k3vars)[names(f2k3vars)=="eainc"]	<-	"eainc03"	
names(f2k3vars)[names(f2k3vars)=="fhome"]	<-	"fhome03"	
names(f2k3vars)[names(f2k3vars)=="fsize"]	<-	"fsize03"	
names(f2k3vars)[names(f2k3vars)=="ifams"]	<-	"ifams03"	
names(f2k3vars)[names(f2k3vars)=="medic"]	<-	"medic03"	
names(f2k3vars)[names(f2k3vars)=="natpc"]	<-	"natpc03"	
names(f2k3vars)[names(f2k3vars)=="rcrtn"]	<-	"rcrtn03"	
names(f2k3vars)[names(f2k3vars)=="regn"]	<-	"regn03"	
names(f2k3vars)[names(f2k3vars)=="rlineno"]	<-	"rlineno03"	
names(f2k3vars)[names(f2k3vars)=="tbcco"]	<-	"tbcco03"	
names(f2k3vars)[names(f2k3vars)=="totex"]	<-	"totex03"	
names(f2k3vars)[names(f2k3vars)=="w_id"]	<-	"wid03"	
names(f2k3vars)[names(f2k3vars)=="z2021_h_age"]	<-	"age03"	
names(f2k3vars)[names(f2k3vars)=="z2041_h_educ"]	<-	"heduc03"	
names(f2k3vars)[names(f2k3vars)=="z2061_h_occup_1"]	<-	"occup03"	
names(f2k3vars)[names(f2k3vars)=="z2081_h_cw"]	<-	"cw03"	
names(f2k3vars)[names(f2k3vars)=="z2101_tot_mem"]	<-	"totmem03"	
names(f2k3vars)[names(f2k3vars)=="z2171_m_tot_emp"]	<-	"totemp03"	

colnames(f2k3vars)

#test variables

table(f2k3vars$knfood03)
table(f2k3vars$fhome03)

##real prices 
#https://faculty.fgcu.edu/bhobbs/Nominal%20Real%20Price%20Index.htm

f2k3vars$toinc03adj	<-	f2k3vars$toinc03	*	115.4295	/	70.45
f2k3vars$acrnt03adj	<-	f2k3vars$acrnt03	*	115.4295	/	70.45
f2k3vars$cloth03adj	<-	f2k3vars$cloth03	*	115.4295	/	70.45
f2k3vars$ealoss03adj	<-	f2k3vars$ealoss03	*	115.4295	/	70.45
f2k3vars$educ03adj	<-	f2k3vars$educ03	*	115.4295	/	70.45
f2k3vars$food03adj	<-	f2k3vars$food03	*	115.4295	/	70.45
f2k3vars$knfood03adj	<-	f2k3vars$knfood03	*	115.4295	/	70.45
f2k3vars$trcom03adj	<-	f2k3vars$trcom03	*	115.4295	/	70.45
f2k3vars$eainc03adj	<-	f2k3vars$eainc03	*	115.4295	/	70.45
f2k3vars$medic03adj	<-	f2k3vars$medic03	*	115.4295	/	70.45
f2k3vars$rcrtn03adj	<-	f2k3vars$rcrtn03	*	115.4295	/	70.45
f2k3vars$tbcco03adj	<-	f2k3vars$tbcco03	*	115.4295	/	70.45
f2k3vars$totex03adj	<-	f2k3vars$totex03	*	115.4295	/	70.45
f2k3vars$houserent03adj	<-	f2k3vars$houserent03	*	115.4295	/	70.45
f2k3vars$albev03adj	<-	f2k3vars$albev03	*	115.4295	/	70.45

#per capita income

f2k3vars$pcinc03 <- f2k3vars$toinc03adj/f2k3vars$fsize03

#SES indicator

f2k3vars$ses03[f2k3vars$pcinc03 < 9999.99] <- 1
f2k3vars$ses03[9999.99<= f2k3vars$pcinc03 & f2k3vars$pcinc03 < 19999.97] <- 2
f2k3vars$ses03[19999.97<= f2k3vars$pcinc03  & f2k3vars$pcinc03 < 39999.94] <- 3
f2k3vars$ses03[39999.94<= f2k3vars$pcinc03  & f2k3vars$pcinc03 < 699999.04] <- 4
f2k3vars$ses03[699999.04<= f2k3vars$pcinc03  & f2k3vars$pcinc03 < 119999.82] <- 5
f2k3vars$ses03[119999.82<= f2k3vars$pcinc03  & f2k3vars$pcinc03 < 199999.70] <- 6
f2k3vars$ses03[199999.70<= f2k3vars$pcinc03] <- 7

f2k3vars$ses03b[f2k3vars$ses03 < 3] <- 1
f2k3vars$ses03b[2 < f2k3vars$ses03 & f2k3vars$ses03 < 6] <- 2
f2k3vars$ses03b[5 < f2k3vars$ses03] <- 3


#########
current_file$sal_cat[Salary<60.5] <- 1
current_file$sal_cat[60.5<Salary & Salary<69.0] <- 2
current_file$sal_cat[69.0<Salary & Salary<72.0] <- 3
current_file$sal_cat[Salary>72.0] <- 4
#########
#f2k6 analysis

vars06 <- ls(f2k6vars)

sink(file = "vars2k6.txt", split = TRUE, append = FALSE)
print(sort=TRUE,digits=3, cut=0,vars03)
sink()

#rename f2k6

names(f2k6vars)[names(f2k6vars)=="acrnt"]	<-	"acrnt06"
names(f2k6vars)[names(f2k6vars)=="b4011_bldg_type"]	<-	"bldgtype06"
names(f2k6vars)[names(f2k6vars)=="b4031_walls"]	<-	"walls06"
names(f2k6vars)[names(f2k6vars)=="b4042_tenure_ind"]	<-"tenure_ind06"
names(f2k6vars)[names(f2k6vars)=="b4053_lot_rent"]	<-	"lotrent06"
names(f2k6vars)[names(f2k6vars)=="b5031_electric"]	<-	"elec06"
names(f2k6vars)[names(f2k6vars)=="b5052_n_radio"]	<-	"radio06"
names(f2k6vars)[names(f2k6vars)=="b5092_n_ref"]	<-	"ref06"
names(f2k6vars)[names(f2k6vars)=="b5112_n_aircon"]	<-	"aircon06"
names(f2k6vars)[names(f2k6vars)=="b5132_n_dining"]	<-	"dining06"
names(f2k6vars)[names(f2k6vars)=="b5152_n_phone"]	<-	"phone06"
names(f2k6vars)[names(f2k6vars)=="b5172_n_oven"]	<-	"oven06"
names(f2k6vars)[names(f2k6vars)=="b5042_distance"]	<-	"distance06" # not in f2k3
names(f2k6vars)[names(f2k6vars)=="cloth"]	<-	"cloth06"
names(f2k6vars)[names(f2k6vars)=="ea_loss"]	<-	"ealoss06"
names(f2k6vars)[names(f2k6vars)=="ceduc"]	<-	"educ06"
names(f2k6vars)[names(f2k6vars)=="food"]	<-	"food06"
names(f2k6vars)[names(f2k6vars)=="fwgt"]	<-	"fwgt06"
names(f2k6vars)[names(f2k6vars)=="knfood"]	<-	"knfood06"
names(f2k6vars)[names(f2k6vars)=="natdc"]	<-	"natdc06"
names(f2k6vars)[names(f2k6vars)=="pnsns"]	<-	"pnsns06"
names(f2k6vars)[names(f2k6vars)=="regdc"]	<-	"regdc06"
names(f2k6vars)[names(f2k6vars)=="regpc"]	<-	"regpc06"
names(f2k6vars)[names(f2k6vars)=="stratum"]	<-	"stratum06"
names(f2k6vars)[names(f2k6vars)=="toinc"]	<-	"toinc06"
names(f2k6vars)[names(f2k6vars)=="trcom"]	<-	"trcom06"
names(f2k6vars)[names(f2k6vars)=="z2011_h_sex"]	<-	"sex06"
names(f2k6vars)[names(f2k6vars)=="z2031_h_ms"]	<-	"ms06"
names(f2k6vars)[names(f2k6vars)=="z2051_h_has_job"]	<-	"hasjob06"
names(f2k6vars)[names(f2k6vars)=="z2071_h_kb"]	<-	"kb06" #not in fk26
names(f2k6vars)[names(f2k6vars)=="z2091_hhld_type"]	<-	"hhldtype06"
names(f2k6vars)[names(f2k6vars)=="z2161_m_tot_nrel"]	<-	"totnonrel06"
names(f2k6vars)[names(f2k6vars)=="z2181_wife_emp"]	<-	"wifeemp06"
names(f2k6vars)[names(f2k6vars)=="albev"]	<-	"albev06"
names(f2k6vars)[names(f2k6vars)=="b4021_roof"]	<-	"roof06"
names(f2k6vars)[names(f2k6vars)=="b4041_tenure"]	<-	"tenure06"
names(f2k6vars)[names(f2k6vars)=="b4043_house_rent"]	<-	"houserent06"
names(f2k6vars)[names(f2k6vars)=="b5021_toilet"]	<-	"toilet06"
names(f2k6vars)[names(f2k6vars)=="b5041_water"]	<-	"water06"
names(f2k6vars)[names(f2k6vars)=="b5062_n_tv"]	<-	"tv06"
names(f2k6vars)[names(f2k6vars)=="b5102_n_wash"]	<-	"wash06"
names(f2k6vars)[names(f2k6vars)=="b5122_n_salaset"]	<-	"salaset06"
names(f2k6vars)[names(f2k6vars)=="b5142_n_car"]	<-	"car06"
names(f2k6vars)[names(f2k6vars)=="b5162_n_pc"]	<-	"pc06"
names(f2k6vars)[names(f2k6vars)=="b5182_n_motor"]	<-	"motor06"
names(f2k6vars)[names(f2k6vars)=="dvdnd"]	<-	"dvdnd06"
names(f2k6vars)[names(f2k6vars)=="eainc"]	<-	"eainc06"
names(f2k6vars)[names(f2k6vars)=="fhome"]	<-	"fhome06"
names(f2k6vars)[names(f2k6vars)=="fsize"]	<-	"fsize06"
names(f2k6vars)[names(f2k6vars)=="ifams"]	<-	"ifams06"
names(f2k6vars)[names(f2k6vars)=="medic"]	<-	"medic06"
names(f2k6vars)[names(f2k6vars)=="natpc"]	<-	"natpc06"
names(f2k6vars)[names(f2k6vars)=="rcrtn"]	<-	"rcrtn06"
names(f2k6vars)[names(f2k6vars)=="regn"]	<-	"regn06"
names(f2k6vars)[names(f2k6vars)=="rlineno"]	<- "rlineno06"
names(f2k6vars)[names(f2k6vars)=="tbcco"]	<-	"tbcco06"
names(f2k6vars)[names(f2k6vars)=="totex"]	<-	"totex06"
names(f2k6vars)[names(f2k6vars)=="w_oid"]	<-	"wid06"
names(f2k6vars)[names(f2k6vars)=="z2021_h_age"]	<-	"age06"
names(f2k6vars)[names(f2k6vars)=="z2041_h_educ"]	<-	"heduc06"
names(f2k6vars)[names(f2k6vars)=="z2061_h_occup"]	<-	"occup06" #not in fk26
names(f2k6vars)[names(f2k6vars)=="z2081_h_cw"]	<-	"cw06"
names(f2k6vars)[names(f2k6vars)=="z2101_tot_mem"]	<-	"totmem06"
names(f2k6vars)[names(f2k6vars)=="z2171_m_tot_emp"]	<-	"totemp06"

colnames(f2k6vars)

#real prices

f2k6vars$toinc06adj	<-	f2k6vars$toinc06	*	115.4295	/	82.98755187
f2k6vars$acrnt06adj	<-	f2k6vars$acrnt06	*	115.4295	/	82.98755187
f2k6vars$cloth06adj	<-	f2k6vars$cloth06	*	115.4295	/	82.98755187
f2k6vars$ealoss06adj	<-	f2k6vars$ealoss06	*	115.4295	/	82.98755187
f2k6vars$educ06adj	<-	f2k6vars$educ06	*	115.4295	/	82.98755187
f2k6vars$food06adj	<-	f2k6vars$food06	*	115.4295	/	82.98755187
f2k6vars$knfood06adj	<-	f2k6vars$knfood06	*	115.4295	/	82.98755187
f2k6vars$trcom06adj	<-	f2k6vars$trcom06	*	115.4295	/	82.98755187
f2k6vars$eainc06adj	<-	f2k6vars$eainc06	*	115.4295	/	82.98755187
f2k6vars$medic06adj	<-	f2k6vars$medic06	*	115.4295	/	82.98755187
f2k6vars$rcrtn06adj	<-	f2k6vars$rcrtn06	*	115.4295	/	82.98755187
f2k6vars$tbcco06adj	<-	f2k6vars$tbcco06	*	115.4295	/	82.98755187
f2k6vars$albev06adj	<-	f2k6vars$albev06	*	115.4295	/	82.98755187
f2k6vars$totex06adj	<-	f2k6vars$totex06	*	115.4295	/	82.98755187
f2k6vars$houserent06adj	<-	f2k6vars$houserent06	*	115.4295	/	82.98755187

#per capita income

f2k6vars$pcinc06 <- f2k6vars$toinc06adj/f2k6vars$fsize06

#SES indicator

f2k6vars$ses06[f2k6vars$pcinc06 < 9999.99] <- 1
f2k6vars$ses06[9999.99<= f2k6vars$pcinc06 & f2k6vars$pcinc06 < 19999.97] <- 2
f2k6vars$ses06[19999.97<= f2k6vars$pcinc06  & f2k6vars$pcinc06 < 39999.94] <- 3
f2k6vars$ses06[39999.94<= f2k6vars$pcinc06  & f2k6vars$pcinc06 < 699999.04] <- 4
f2k6vars$ses06[699999.04<= f2k6vars$pcinc06  & f2k6vars$pcinc06 < 119999.82] <- 5
f2k6vars$ses06[119999.82<= f2k6vars$pcinc06  & f2k6vars$pcinc06 < 199999.70] <- 6
f2k6vars$ses06[199999.70<= f2k6vars$pcinc06] <- 7



f2k6vars$ses06b[f2k6vars$ses06 < 3] <- 1
f2k6vars$ses06b[2 < f2k6vars$ses06 & f2k6vars$ses06 < 6] <- 2
f2k6vars$ses06b[5 < f2k6vars$ses06] <- 3

#f2k9 analysis

vars09 <- ls(f2k9vars)

sink(file = "vars2k9.txt", split = TRUE, append = FALSE)
print(sort=TRUE,digits=3, cut=0,vars09)
sink()

#rename f2k9

names(f2k9vars)[names(f2k9vars)=="acrnt"]	<-	"acrnt09"
names(f2k9vars)[names(f2k9vars)=="b4011_bldg_type"]	<-	"bldgtype09"
names(f2k9vars)[names(f2k9vars)=="b4031_walls"]	<-	"walls09"
names(f2k9vars)[names(f2k9vars)=="b4042_tenure_ind"]	<-	"tenure_ind09"
names(f2k9vars)[names(f2k9vars)=="b4053_lot_rent"]	<-	"lotrent09"
names(f2k9vars)[names(f2k9vars)=="b5021_toilet"]	<-	"toilet09"
names(f2k9vars)[names(f2k9vars)=="b5041_water"]	<-	"water09"
names(f2k9vars)[names(f2k9vars)=="b5052_n_radio"]	<-	"radio09"
names(f2k9vars)[names(f2k9vars)=="b5092_n_ref"]	<-	"ref09"
names(f2k9vars)[names(f2k9vars)=="b5112_n_aircon"]	<-	"aircon09"
names(f2k9vars)[names(f2k9vars)=="b5132_n_dining"]	<-	"dining09"
names(f2k9vars)[names(f2k9vars)=="b5152_n_phone"]	<-	"phone09"
names(f2k9vars)[names(f2k9vars)=="b5172_n_oven"]	<-	"oven09"
names(f2k9vars)[names(f2k9vars)=="dvdnd"]	<-	"dvdnd09"
names(f2k9vars)[names(f2k9vars)=="educ"]	<-	"educ09"
names(f2k9vars)[names(f2k9vars)=="fsize"]	<-	"fsize09"
names(f2k9vars)[names(f2k9vars)=="natdc"]	<-	"natdc09"
names(f2k9vars)[names(f2k9vars)=="nfood"]	<-	"nfood09"
names(f2k9vars)[names(f2k9vars)=="regdc"]	<-	"regdc09"
names(f2k9vars)[names(f2k9vars)=="rfact"]	<-	"fwgt09"
names(f2k9vars)[names(f2k9vars)=="toinc"]	<-	"toinc09"
names(f2k9vars)[names(f2k9vars)=="trcom"]	<-	"trcom09"
names(f2k9vars)[names(f2k9vars)=="w_line_no"]	<-	"rlineno09"
names(f2k9vars)[names(f2k9vars)=="w_regn"]	<-	"regn09"
names(f2k9vars)[names(f2k9vars)=="z2011_h_sex"]	<-	"sex09"
names(f2k9vars)[names(f2k9vars)=="z2031_h_ms"]	<-	"ms09"
names(f2k9vars)[names(f2k9vars)=="z2051_h_has_job"]	<-	"hasjob09"
names(f2k9vars)[names(f2k9vars)=="z2071_h_kb"]	<-	"kb09"
names(f2k9vars)[names(f2k9vars)=="z2091_hhld_type"]	<-	"hhldtype09"
names(f2k9vars)[names(f2k9vars)=="z2161_m_tot_nrel"]	<-	"totnonrel09"
names(f2k9vars)[names(f2k9vars)=="z2181_wife_emp"]	<-	"wifeemp09"
names(f2k9vars)[names(f2k9vars)=="albev"]	<-	"albev09"
names(f2k9vars)[names(f2k9vars)=="b4021_roof"]	<-	"roof09"
names(f2k9vars)[names(f2k9vars)=="b4041_tenure"]	<-	"tenure09"
names(f2k9vars)[names(f2k9vars)=="b4043_house_rent"]	<-	"houserent09"
names(f2k9vars)[names(f2k9vars)=="b5012_oth_house"]	<-	"ohouse09"
names(f2k9vars)[names(f2k9vars)=="b5031_electric"]	<-	"elec09"
names(f2k9vars)[names(f2k9vars)=="b5042_distance"]	<-	"distance09"
names(f2k9vars)[names(f2k9vars)=="b5062_n_tv"]	<-	"tv09"
names(f2k9vars)[names(f2k9vars)=="b5102_n_wash"]	<-	"wash09"
names(f2k9vars)[names(f2k9vars)=="b5122_n_salaset"]	<-	"salaset09"
names(f2k9vars)[names(f2k9vars)=="b5142_n_car"]	<-	"car09"
names(f2k9vars)[names(f2k9vars)=="b5162_n_pc"]	<-	"pc09"
names(f2k9vars)[names(f2k9vars)=="b5182_n_motor"]	<-	"motor09"
names(f2k9vars)[names(f2k9vars)=="eainc"]	<-	"eainc09"
names(f2k9vars)[names(f2k9vars)=="fhome"]	<-	"fhome09"
names(f2k9vars)[names(f2k9vars)=="medic"]	<-	"medic09"
names(f2k9vars)[names(f2k9vars)=="natpc"]	<-	"natpc09"
names(f2k9vars)[names(f2k9vars)=="pnsns"]	<-	"pnsns09"
names(f2k9vars)[names(f2k9vars)=="regpc"]	<-	"regpc09"
names(f2k9vars)[names(f2k9vars)=="tbcco"]	<-	"tbcco09"
names(f2k9vars)[names(f2k9vars)=="totex"]	<-	"totex09"
names(f2k9vars)[names(f2k9vars)=="w_id"]	<-	"id09"
names(f2k9vars)[names(f2k9vars)=="w_no_hh"]	<-	"no_hh09"
names(f2k9vars)[names(f2k9vars)=="w_urb2"]	<-	"urb09"
names(f2k9vars)[names(f2k9vars)=="z2021_h_age"]	<-	"age09"
names(f2k9vars)[names(f2k9vars)=="z2041_h_educ"]	<-	"heduc09"
names(f2k9vars)[names(f2k9vars)=="z2061_h_occup"]	<-	"occup09"
names(f2k9vars)[names(f2k9vars)=="z2081_h_cw"]	<-	"cw09"
names(f2k9vars)[names(f2k9vars)=="z2101_tot_mem"]	<-	"totmem09"
names(f2k9vars)[names(f2k9vars)=="z2171_m_tot_emp"]	<-	"totemp09"

colnames(f2k9vars)

#real prices

f2k9vars$toinc09adj	<-	f2k9vars$toinc09	*	115.4295	/	96.34854772
f2k9vars$acrnt09adj	<-	f2k9vars$acrnt09	*	115.4295	/	96.34854772
#f2k9vars$cloth09adj	<-	f2k9vars$cloth09	*	115.4295	/	96.34854772
#f2k9vars$ealoss09adj	<-	f2k9vars$ealoss09	*	115.4295	/	96.34854772
f2k9vars$educ09adj	<-	f2k9vars$educ09	*	115.4295	/	96.34854772
f2k9vars$food09adj	<-	f2k9vars$food09	*	115.4295	/	96.34854772
f2k9vars$nfood09adj	<-	f2k9vars$nfood09	*	115.4295	/	96.34854772
#f2k9vars$knfood09adj	<-	f2k9vars$knfood09	*	115.4295	/	96.34854772
f2k9vars$trcom09adj	<-	f2k9vars$trcom09	*	115.4295	/	96.34854772
f2k9vars$eainc09adj	<-	f2k9vars$eainc09	*	115.4295	/	96.34854772
f2k9vars$medic09adj	<-	f2k9vars$medic09	*	115.4295	/	96.34854772
#f2k9vars$rcrtn09adj	<-	f2k9vars$rcrtn09	*	115.4295	/	96.34854772
f2k9vars$albev09adj	<-	f2k9vars$albev09	*	115.4295	/	96.34854772
f2k9vars$tbcco09adj	<-	f2k9vars$tbcco09	*	115.4295	/	96.34854772
f2k9vars$totex09adj	<-	f2k9vars$totex09	*	115.4295	/	96.34854772
f2k9vars$houserent09adj	<-	f2k9vars$houserent09	*	115.4295	/	96.34854772


#per capita income

f2k9vars$pcinc09 <- f2k9vars$toinc09adj/f2k9vars$fsize09

#SES indicator


f2k9vars$ses09[f2k9vars$pcinc09 < 9999.99] <- 1
f2k9vars$ses09[9999.99<= f2k9vars$pcinc09 & f2k9vars$pcinc09 < 19999.97] <- 2
f2k9vars$ses09[19999.97<= f2k9vars$pcinc09  & f2k9vars$pcinc09 < 39999.94] <- 3
f2k9vars$ses09[39999.94<= f2k9vars$pcinc09  & f2k9vars$pcinc09 < 699999.04] <- 4
f2k9vars$ses09[699999.04<= f2k9vars$pcinc09  & f2k9vars$pcinc09 < 119999.82] <- 5
f2k9vars$ses09[119999.82<= f2k9vars$pcinc09  & f2k9vars$pcinc09 < 199999.70] <- 6
f2k9vars$ses09[199999.70<= f2k9vars$pcinc09] <- 7



f2k9vars$ses09b[f2k9vars$ses09 < 3] <- 1
f2k9vars$ses09b[2 < f2k9vars$ses09 & f2k9vars$ses09 < 6] <- 2
f2k9vars$ses09b[5 < f2k9vars$ses09] <- 3

#merge fies

n_last <- 18
f2k3vars$hhid <- substr(f2k3vars$wid03, nchar(f2k3vars$wid03) - n_last +1, nchar(f2k3vars$wid03))
f2k9vars$hhid <- f2k9vars$id09
f2k6vars$hhid <- substr(f2k6vars$wid06, nchar(f2k6vars$wid06) - n_last +1, nchar(f2k6vars$wid06))

library(dplyr)

#make sure you run f2k6 from merged folder
#f2k6vars <- test2k6 
#df1 <-inner_join(f2k3vars, f2k9vars, by="hhid")
df2 <- inner_join(f2k3vars, f2k6vars, by="hhid")
df <- inner_join(df2, f2k9vars, by="hhid")


#fix educ var
df$heduc03b = df$heduc03
df$heduc03b <- as.numeric(df$heduc03b)
class(df$heduc03b)
df$heduc03b[df$heduc03b > 5] <- 6
df$heduc03b <- as.factor(df$heduc03b)
class(df$heduc03b)
levels(df$heduc03b) <- c("Elem Under Grad", "Elem Grad", "HS Under Grad", "HS Grad", "College Under Grad", "College Grad")
table(df$heduc03b)

df$heduc06b = df$heduc06
df$heduc06b <- as.numeric(df$heduc06b)
class(df$heduc06b)
df$heduc06b[df$heduc06b > 5] <- 6
df$heduc06b <- as.factor(df$heduc06b)
class(df$heduc06b)
levels(df$heduc06b) <- c("Elem Under Grad", "Elem Grad", "HS Under Grad", "HS Grad", "College Under Grad", "College Grad")
table(df$heduc06b)

df$heduc09b = df$heduc09
df$heduc09b <- as.numeric(df$heduc09b)
class(df$heduc09b)
df$heduc09b[df$heduc09b > 5] <- 6
df$heduc09b <- as.factor(df$heduc09b)
class(df$heduc09b)
levels(df$heduc09b) <- c("Elem Under Grad", "Elem Grad", "HS Under Grad", "HS Grad", "College Under Grad", "College Grad")
table(df$heduc09b)

#explore

table(df$ses03b)
table(df$ses03)

library(gmodels)

CrossTable(df$ses03b, df$ses06b)
CrossTable(df$ses03b, df$ses09b)

#create mobility SES indicator

CrossTable(df$ses03b, df$ses09b)

df$sesmob <- NA
df[df$ses03b==1 & df$ses09b==1, "sesmob"] <- 1
df[df$ses03b==1 & df$ses09b==2, "sesmob"] <- 2
df[df$ses03b==1 & df$ses09b==3, "sesmob"] <- 3

df[df$ses03b==2 & df$ses09b==1, "sesmob"] <- 4
df[df$ses03b==2 & df$ses09b==2, "sesmob"] <- 5
df[df$ses03b==2 & df$ses09b==3, "sesmob"] <- 6

df[df$ses03b==3 & df$ses09b==1, "sesmob"] <- 7
df[df$ses03b==3 & df$ses09b==2, "sesmob"] <- 8
df[df$ses03b==3 & df$ses09b==3, "sesmob"] <- 9

table(df$sesmob)

dfmob <- subset(df, df$ses03b==2)

dfmob$sesmob2 <- NA
dfmob[dfmob$ses03b==2 & dfmob$ses09b==1, "sesmob2"] <- 1
dfmob[dfmob$ses03b==2 & dfmob$ses09b==2, "sesmob2"] <- 2
dfmob[dfmob$ses03b==2 & dfmob$ses09b==3, "sesmob2"] <- 3

table(dfmob$sesmob2)
class(dfmob$sesmob2)
dfmob$sesmob2 <- as.factor(dfmob$sesmob2)
class(dfmob$sesmob2)
levels(dfmob$sesmob2) <- c("Middle to Poor", "Middle to Middle", "Middle to Upper")
table(dfmob$sesmob2)

#check alternative
#from https://stackoverflow.com/questions/34998819/r-code-how-to-generate-variable-based-on-multiple-conditions-from-other-variabl
#dataset$newvar <- NA
#dataset[dataset$factor1 >= 5 & dataset$factor2 < 19 & (dataset$factor3=="b" | dataset$factor3 =="c"), "newvar"] <- 1

#this worked
#mydata <- as.data.frame(cbind(c(1, 2, 3, 4, 5), c(1, 2, 3, 4, 5), c(1, 2, 3, 4, 5)))
#mydata$test <- NA
#mydata[mydata$V1==1 & mydata$V2==1 & mydata$V3==1, "test"] <- 5

#ML

library(foreign)
library(nnet)
library(ggplot2)
library(reshape2)

#test <- f2k3vars
#test$b4021_roof2 <- relevel(test$b4021_roof, ref = 1)
#head(test$b4021_roof2)

#testml <- multinom(b4021_roof2 ~ b4031_walls + educ + medic + fsize + toinc, weights = fwgt, data=test)

#sum_ml <- summary(testml)


df$sesmob <- relevel(df$sesmob, ref = 1)
testml <- multinom(dfmob$sesmob2 ~ dfmob$heduc03b + dfmob$heduc06b + dfmob$educ03adj + dfmob$educ06adj + dfmob$medic03adj
                   + dfmob$medic06adj + dfmob$food03adj + dfmob$food06adj + dfmob$cw03 + dfmob$cw06 + dfmob$totnonrel03 
                   + dfmob$totnonrel06 + dfmob$regpc03 + dfmob$car03 + dfmob$car06 + dfmob$tv03 + dfmob$tv06 + dfmob$aircon03
                   + dfmob$aircon06 + dfmob$bldgtype + dfmob$hhldtype03 + dfmob$hhldtype06 + dfmob$eainc03adj + dfmob$eainc06adj
                   + dfmob$ealoss03adj + dfmob$ealoss06adj + dfmob$fsize03 + dfmob$fsize06 + dfmob$tbcco03adj + dfmob$tbcco06adj
                   + dfmob$albev03 + dfmob$albev06 + dfmob$tenure03 + dfmob$tenure06
                   , weights = fwgt09, maxit=1000, data=dfmob)
sum_ml <- summary(testml)

sum_ml

sink(file = "mltest.txt", split = TRUE, append = FALSE)
print(sort=TRUE,digits=3, cut=0,sum_ml)
sink()


testml <- multinom(dfmob$sesmob ~ dfmob$heduc03b + dfmob$heduc06b + dfmob$educ03adj + dfmob$educ06adj + dfmob$medic03adj + dfmob$medic06adj + dfmob$food03adj + dfmob$food06adj + dfmob$cw03 + dfmob$cw06 + dfmob$totnonrel03 + dfmob$totnonrel06 + dfmob$regpc03 + dfmob$car03 + dfmob$car06 + dfmob$tv03 + dfmob$tv06 + dfmob$aircon03+ dfmob$aircon06 + dfmob$bldgtype + dfmob$hhldtype03 + dfmob$hhldtype06 + dfmob$eainc03adj + dfmob$eainc06adj+ dfmob$ealoss03adj + dfmob$ealoss06adj + dfmob$fsize03 + dfmob$fsize06 + dfmob$tbcco03adj + dfmob$tbcco06adj+ dfmob$albev03 + dfmob$albev06 + dfmob$tenure03 + dfmob$tenure06, weights = fwgt09, maxit=1000, data=dfmob)

#this one worked
setwd("D:/Users/Erwin/OneDrive - University of the Philippines/CSWCD/SD/SD 400/Data Analysis/FIES")
dfmob$regn03 <- relevel(dfmob$regn03, ref = 2)
testml <- multinom(dfmob$sesmob2 ~ dfmob$regn03  + dfmob$heduc03b + dfmob$heduc06b + dfmob$educ03adj + dfmob$educ06adj + dfmob$cw03 + dfmob$cw06 
                   + dfmob$medic03adj + dfmob$medic06adj + dfmob$bldgtype03 + dfmob$hhldtype03 + dfmob$hhldtype06 + dfmob$fsize03 + dfmob$fsize06 
                   + dfmob$tenure03 +dfmob$tenure06 + dfmob$sex03
                   , maxit=1000, data=dfmob, Hess = TRUE) # less vars and ", weights = fwgt09" was also removed

sum_ml <- summary(testml)

sum_ml


sink(file = "mltest_1_23.txt", split = TRUE, append = FALSE)
print(sort=TRUE,digits=3, cut=0,sum_ml)
sink()


testml2 <- multinom(df$sesmob ~ df$regn03  + df$heduc03b + df$heduc06b + df$educ03adj + df$educ06adj + df$cw03 + df$cw06 
                   + df$medic03adj + df$medic06adj + df$bldgtype03 + df$hhldtype03 + df$hhldtype06 + df$fsize03 + df$fsize06 
                   + df$tenure03 +df$tenure06 + df$sex03
                   , maxit=1000, data=df, Hess = TRUE) # less vars and ", weights = fwgt09" was also removed

sum_ml2 <- summary(testml2)

sum_ml2

sink(file = "mltest_1_23_allmob.txt", split = TRUE, append = FALSE)
print(sort = TRUE, digits = 3, cot = 0, sum_ml2)
sink()
#extract coefficients from the model and exponentiate

sum_exp <- coef(testml)
sum_exp

sink(file = "exp_coef.txt", split = TRUE, append = FALSE)
print(sort=TRUE,digits=3, cut=0, sum_exp)
sink()

##test of significance

z <- summary(testml)$coefficients/summary(testml)$standard.errors
z



#2-tailed z test

p <- (1 - pnorm(abs(z), 0, 1)) * 2
p

sink(file = "p-values.txt", split = TRUE, append = FALSE)
print(sort=TRUE,digits=3, cut=0,p)
sink()



#predicted probabilities

head(pp <- fitted(testml))

library(effects)

plot(effects("heduc03", testml))

##fixest

fixesttest = feglm(dfmob$sesmob2 ~ dfmob$heduc03b, data = dfmob)
options(error=recover)
reach_full_in <- reachability(krack_full, 'in')
fitstat(fixesttest, ~ rmse + r2 + wald + wf)


testml <- multinom(df$sesmob ~ df$heduc03b + df$heduc06b + df$educ03adj + df$educ06adj + df$cw03 + df$cw06 
                   + df$medic03adj + df$medic06adj + df$bldgtype + df$bldgtype06 + df$hhldtype03 + df$hhldtype06 + df$fsize03 + df$fsize06 
                   + df$tenure03 +df$tenure06
                   , maxit=1000, data=df, Hess = TRUE) # less vars and ", weights = fwgt09" was also removed

sum_ml <- summary(testml)

sum_ml

##crosstabs of class of work

setwd("D:/Users/Erwin/OneDrive - University of the Philippines/CSWCD/SD/SD 400/Data Analysis/FIES")
library(labelled)
dfmob$cw03b <- remove_labels(dfmob$cw03)
dfmob$cw06b <- remove_labels(dfmob$cw06)
table(dfmob$cw03b)
library(gmodels)

sink(file = "xtabs cw03-06.txt", split = TRUE, append = FALSE)
CrossTable(as.factor(df$cw03), as.factor(df$cw06), chisq = TRUE)
sink()

sink(file = "xtabs cw06-09.txt", split = TRUE, append = FALSE)
CrossTable(as.factor(df$cw06), as.factor(df$cw09), chisq = TRUE)
sink()

library(stats)
cw <- xtabs(~dfmob$cw03+dfmob$cw06)
rowPerc(cw)



dfm <- df[which(df$sex03 == "Male"),]
table(dfm$sex03)
sink(file = "xtabs cw03-06 MALE.txt", split = TRUE, append = FALSE)
CrossTable(as.factor(dfm$cw03), as.factor(dfm$cw06), chisq = TRUE)
sink()

sink(file = "xtabs cw06-09 MALE.txt", split = TRUE, append = FALSE)
CrossTable(as.factor(dfm$cw06), as.factor(dfm$cw09), chisq = TRUE)
sink()

dff <- df[which(df$sex03 == "Female"),]
table(dff$sex03)

sink(file = "xtabs cw03-06 FEMALE.txt", split = TRUE, append = FALSE)
CrossTable(as.factor(dff$cw03), as.factor(dff$cw06), chisq = TRUE)
sink()

sink(file = "xtabs cw06-09 FEMALE.txt", split = TRUE, append = FALSE)
CrossTable(as.factor(dff$cw06), as.factor(dff$cw09), chisq = TRUE)
sink()

sink(file = "cw03 x sesmob.txt", split = TRUE, append = FALSE)
CrossTable(df$sesmob, df$cw03, chisq = TRUE)
sink()

sink(file = "sesmob x educ03.txt", split = TRUE, append = FALSE)
CrossTable(df$sesmob, df$heduc03b, chisq = TRUE)
sink()

CrossTable(df$cw03, df$sesmob, chisq = TRUE)

aggregate(df$toinc09adj~df$sesmob, df, mean) #mean per sesmob
aggregate(dfmob$toinc03adj~dfmob$sesmob2, df, mean)
aggregate(dfmob$toinc03adj~dfmob$sesmob2, df, median)
aggregate(dfmob$toinc03adj~dfmob$sesmob2, df, sd)
aggregate(dfmob$toinc06adj~dfmob$sesmob2, df, mean)
aggregate(dfmob$toinc06adj~dfmob$sesmob2, df, median)
aggregate(dfmob$toinc06adj~dfmob$sesmob2, df, sd)
aggregate(dfmob$toinc09adj~dfmob$sesmob2, df, mean)
aggregate(dfmob$toinc09adj~dfmob$sesmob2, df, median)

aggregate(df$toinc03adj~df$sesmob, df, quantile)
boxplot(df$fsize03~df$sesmob, data = df)
boxplot(df$toinc03adj~df$sesmob, data = df)
boxplot(df$toinc09adj~df$sesmob, data = df)

CrossTable(df$ses03b, df$ses06b, chisq = TRUE)
CrossTable(df$ses06b, df$ses09b, chisq = TRUE)

dfmob$m0306 <- NA
dfmob[dfmob$ses03b==2 & dfmob$ses06b==1, "m0306"] <- 1
dfmob[dfmob$ses03b==2 & dfmob$ses06b==2, "m0306"] <- 2
dfmob[dfmob$ses03b==2 & dfmob$ses06b==3, "m0306"] <- 3

dfmid0306 <- subset(dfmob, dfmob$m0306 == 2)
CrossTable(dfmid0306$m0306, dfmid0306$ses09b, chisq = TRUE)

dfmidup0306 <- subset(dfmob, dfmob$m0306 == 3)
CrossTable(dfmidup0306$m0306, dfmidup0306$ses09b, chisq = TRUE)

dfmidpoor0306 <- subset(dfmob, dfmob$m0306 == 1)
CrossTable(dfmidpoor0306$m0306, dfmidpoor0306$ses09b, chisq = TRUE)


###nothing
setwd("D:/Users/Erwin/OneDrive - University of the Philippines/CSWCD/SD/SD 400/Data Analysis/FIES")
dfmob$regn03 <- relevel(dfmob$regn03, ref = 2)
mlses <- multinom(df$sesmob ~ df$ses03b + df$ses06b + df$ses09b
                   , maxit=1000, data=dfmob, Hess = TRUE) # less vars and ", weights = fwgt09" was also removed

sum_mlses <- summary(mlses)

sum_mlses
###nothing

colnames(dfmob)


##income per sesmob

#dfpoormid <- subset(df, df$sesmob==2)

aggregate(df$toinc03adj~df$sesmob, df, mean)
aggregate(df$toinc06adj~df$sesmob, df, mean)
aggregate(df$toinc09adj~df$sesmob, df, mean)

aggregate(df$educ03adj~df$sesmob, df, mean)
aggregate(df$educ06adj~df$sesmob, df, mean)
aggregate(df$educ09adj~df$sesmob, df, mean)

table(df$sesmob)
table(dfpoormid$sesmob)

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

####

#head(df$tenure03)

sink(file = "tenure03 x tenure06.txt", split = TRUE, append = FALSE)
CrossTable(df$tenure03, df$tenure06, chisq = TRUE)
sink()
