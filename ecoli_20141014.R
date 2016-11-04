
## TODO: supress messages in this from platexpress:
#```{r, echo=FALSE, warnings=FALSE, message=FALSE, cache=FALSE, width=8, height=4}
#source("ecoli_20141014.R")
#```


## IPTG injection experiment
library("platexpress")
## moving average
ma <- function(x,n=5){filter(x,rep(1/n,n), sides=2)}

setwd("~/work/CoilProject/experiments/plategrowth/ecoli_ts_20161014")

plate <-readPlateMap("20161014_platemap.csv",fsep=";",fields=c("strain","IPTG","blank"))

files <- c("20161014_20161014 IPTG mVenus Injection  1_Absorbance.CSV",
           "20161014_20161014 IPTG mVenus Injection  1_Fluorescence.CSV")
raw <- readPlateData(files,type="BMG",verb=FALSE)

## time in minutes
raw$Time <- raw$Time/60
raw <- prettyData(raw, dids=c(OD="584",mVenus="485/Em520"),
                  colors=c("#333300",wavelength2RGB(600)))


## blank FLUORESCENCE BY TIME
raw2 <- correctBlanks(raw,plate,dids="mVenus",by=c("strain","IPTG"),
                      mbins=length(raw$Time)/5,verb=FALSE)
## blank OD by mean
data <- correctBlanks(raw2,plate,dids="OD",max.mid=2000)


## raise above 0, for each well separately
groups <- getGroups(plate,by=c("strain","IPTG"))
data <- adjustBase(data, dids="OD", base=0, wells=unlist(groups),xlim=c(1,which(raw$Time>1500)[1]),each=TRUE,add.fraction=0.001)

sgroups <- getGroups(plate,by=c("strain"))


## FL/OD ratio
## TODO: fix, raise all above 0
## heavily smooth OD!
fl <- getData(data,"mVenus")
od <- getData(data,"OD")
fl <- fl/od
fl <- apply(fl,2,ma,n=20)
data <- addData(data, ID="mV/OD", dat=fl, col=wavelength2RGB(400), replace=TRUE)

## calculate fold-ratio per OD
fl <- getData(data,"mV/OD")
noiptg <- fl[ , paste(toupper(letters[1:7]), 2, sep="")]
noiptg <- rowMeans(noiptg)
fl <- fl / noiptg
fl <- apply(fl,2,ma,n=5)
data <- addData(data, ID="mV/OD/unind.", dat=fl, col=wavelength2RGB(500), replace=TRUE)

viewGroups(data,sgroups,groups,dids=c("OD","mV/OD/unind."),lwd.mean=2,lwd.orig=0,lty.orig=1,xlim=c(0,1800),show.ci95=TRUE,g2.legend=FALSE,emphasize.mean=TRUE,ylims=list("mV/OD/unind."=c(0,12)))
## emphasize means
#stats <- groupStats(data,groups,dids="mV/OD/unind.")
#apply(stats$"mV/OD/unind."$stats$mean, 2, function(x) lines(stats$Time, x))
arrows(x0=seq(0,900,100),x1=seq(0,900,100),y0=-100,y1=0,lwd=3,col="blue",length=.1)
