data$Status1=ifelse(data$Survivaltohospitaldischarge=="Survivors",1,0)
logit_1<-glm(Status1 ~Agemonths+Gender+PRISM+SOFA+PH+ROSC_minutes+Lengthofstaydays+
               VISscore+Premorbidcond+EventLocation+AKI+Liverfailure, family = binomial, data=data)

logit_1<-glm(Status1 ~PH+ROSC_minutes+Lengthofstaydays+
               VISscore, family = binomial, data=data)

step(logit_1,direction = "backward")

library(car)

vif(logit_1)