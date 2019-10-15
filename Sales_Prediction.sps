* Encoding: windows-1252.
SELECT IF YEAR GE 2002.
EXECUTE.

COMMENT Run Frequencies and remove any and all that do not have enough representation.
FREQUENCIES.

DELETE VARIABLES SUSPEED_mean ICE_mean PRECIP_min SNOWFALL_min ICE_min ICE_median.
DELETE VARIABLES SNOWFALL_mean.Af ICE_mean.Af SNOWFALL_max.Af ICE_max.Af SNOWFALL_min.Af
ICE_min.Af SNOWFALL_median.Af ICE_median.Af SNOWFALL_sum.Af ICE_sum.Af SNOWFALL_mean.Am ICE_mean.Am
SNOWFALL_max.Am ICE_max.Am SNOWFALL_min.Am ICE_min.Am SNOWFALL_median.Am ICE_median.Am SNOWFALL_sum.Am ICE_sum.Am.
DELETE VARIABLES SNOWFALL_mean.Aw ICE_mean.Aw SNOWFALL_max.Aw ICE_max.Aw SNOWFALL_min.Aw
ICE_min.Aw SNOWFALL_median.Aw ICE_median.Aw SNOWFALL_sum.Aw ICE_sum.Aw SNOWFALL_mean.BSh
ICE_mean.BSh ICE_max.BSh PRECIP_min.BSh SNOWFALL_min.BSh ICE_min.BSh SNOWFALL_median.BSh
ICE_sum.BSh ICE_mean.BSk PRECIP_min.BSk SNOWFALL_min.BSk ICE_min.BSk ICE_median.BSk SNOWFALL_mean.BWh
ICE_mean.BWh ICE_max.BWh PRECIP_min.BWh SNOWFALL_min.BWh ICE_min.BWh SNOWFALL_median.BWh
ICE_median.BWh ICE_sum.BWh ICE_mean.BWk ICE_max.BWk PRECIP_min.BWk SNOWFALL_min.BWk ICE_min.BWk SNOWFALL_median.BWk ICE_median.BWk
ICE_sum.BWk.
DELETE VARIABLES ICE_mean.Cfa PRECIP_min.Cfa SNOWFALL_min.Cfa ICE_min.Cfa SNOWFALL_median.Cfa ICE_median.Cfa
ICE_mean.Cfb PRECIP_min.Cfb SNOWFALL_min.Cfb ICE_min.Cfb ICE_median.Cfb ICE_mean.Csa ICE_max.Csa PRECIP_min.Csa
SNOWFALL_min.Csa ICE_min.Csa SNOWFALL_median.Csa ICE_median.Csa ICE_sum.Csa ICE_mean.Csb ICE_max.Csb
PRECIP_min.Csb SNOWFALL_min.Csb ICE_min.Csb SNOWFALL_median.Csb ICE_median.Csb ICE_sum.Csb ICE_mean.Dfa ICE_max.Dfa 
PRECIP_min.Dfa SNOWFALL_min.Dfa ICE_min.Dfa ICE_median.Dfa ICE_sum.Dfa.
DELETE VARIABLES ICE_mean.Dfb PRECIP_min.Dfb SNOWFALL_min.Dfb ICE_min.Dfb
ICE_median.Dfb ICE_mean.Dfc ICE_min.Dfc ICE_mean.Dsb ICE_min.Dsb
ICE_median.Dsb ICE_sum.Dsb ICE_mean.Dwa ICE_max.Dwa ICE_min.Dwa ICE_median.Dwa ICE_sum.Dwa.

COMMENT Test Correlation of Climate Metrics.
CORRELATIONS
  /VARIABLES= HIGHTEMP_mean.Af LOTEMP_mean.Af AVGTEMP_mean.Af SUSPEED_mean.Af PRECIP_mean.Af HIGHTEMP_max.Af LOTEMP_max.Af AVGTEMP_max.Af
SUSPEED_max.Af PRECIP_max.Af HIGHTEMP_min.Af LOTEMP_min.Af AVGTEMP_min.Af SUSPEED_min.Af PRECIP_min.Af HIGHTEMP_median.Af
LOTEMP_median.Af AVGTEMP_median.Af SUSPEED_median.Af PRECIP_median.Af PRECIP_sum.Af HIGHTEMP_mean.Am LOTEMP_mean.Am AVGTEMP_mean.Am
SUSPEED_mean.Am PRECIP_mean.Am HIGHTEMP_max.Am LOTEMP_max.Am AVGTEMP_max.Am SUSPEED_max.Am PRECIP_max.Am HIGHTEMP_min.Am
LOTEMP_min.Am AVGTEMP_min.Am SUSPEED_min.Am PRECIP_min.Am HIGHTEMP_median.Am LOTEMP_median.Am AVGTEMP_median.Am SUSPEED_median.Am
PRECIP_median.Am PRECIP_sum.Am HIGHTEMP_mean.Aw LOTEMP_mean.Aw AVGTEMP_mean.Aw SUSPEED_mean.Aw PRECIP_mean.Aw
HIGHTEMP_max.Aw LOTEMP_max.Aw AVGTEMP_max.Aw SUSPEED_max.Aw PRECIP_max.Aw HIGHTEMP_min.Aw LOTEMP_min.Aw AVGTEMP_min.Aw
SUSPEED_min.Aw PRECIP_min.Aw  HIGHTEMP_median.Aw LOTEMP_median.Aw AVGTEMP_median.Aw SUSPEED_median.Aw PRECIP_median.Aw PRECIP_sum.Aw
HIGHTEMP_mean.BSh LOTEMP_mean.BSh AVGTEMP_mean.BSh SUSPEED_mean.BSh PRECIP_mean.BSh HIGHTEMP_max.BSh LOTEMP_max.BSh AVGTEMP_max.BSh
SUSPEED_max.BSh PRECIP_max.BSh SNOWFALL_max.BSh HIGHTEMP_min.BSh LOTEMP_min.BSh AVGTEMP_min.BSh SUSPEED_min.BSh HIGHTEMP_median.BSh
LOTEMP_median.BSh AVGTEMP_median.BSh SUSPEED_median.BSh PRECIP_median.BSh PRECIP_sum.BSh SNOWFALL_sum.BSh HIGHTEMP_mean.BSk
LOTEMP_mean.BSk AVGTEMP_mean.BSk SUSPEED_mean.BSk PRECIP_mean.BSk SNOWFALL_mean.BSk HIGHTEMP_max.BSk LOTEMP_max.BSk AVGTEMP_max.BSk
SUSPEED_max.BSk PRECIP_max.BSk SNOWFALL_max.BSk ICE_max.BSk HIGHTEMP_min.BSk LOTEMP_min.BSk AVGTEMP_min.BSk SUSPEED_min.BSk HIGHTEMP_median.BSk
LOTEMP_median.BSk AVGTEMP_median.BSk SUSPEED_median.BSk PRECIP_median.BSk SNOWFALL_median.BSk PRECIP_sum.BSk SNOWFALL_sum.BSk ICE_sum.BSk
HIGHTEMP_mean.BWh LOTEMP_mean.BWh AVGTEMP_mean.BWh SUSPEED_mean.BWh PRECIP_mean.BWh HIGHTEMP_max.BWh LOTEMP_max.BWh AVGTEMP_max.BWh
SUSPEED_max.BWh PRECIP_max.BWh SNOWFALL_max.BWh HIGHTEMP_min.BWh LOTEMP_min.BWh AVGTEMP_min.BWh SUSPEED_min.BWh HIGHTEMP_median.BWh
LOTEMP_median.BWh AVGTEMP_median.BWh SUSPEED_median.BWh PRECIP_median.BWh PRECIP_sum.BWh  SNOWFALL_sum.BWh 
HIGHTEMP_mean.BWk LOTEMP_mean.BWk AVGTEMP_mean.BWk SUSPEED_mean.BWk PRECIP_mean.BWk SNOWFALL_mean.BWk HIGHTEMP_max.BWk
LOTEMP_max.BWk AVGTEMP_max.BWk SUSPEED_max.BWk PRECIP_max.BWk SNOWFALL_max.BWk HIGHTEMP_min.BWk LOTEMP_min.BWk AVGTEMP_min.BWk
SUSPEED_min.BWk HIGHTEMP_median.BWk LOTEMP_median.BWk AVGTEMP_median.BWk SUSPEED_median.BWk PRECIP_median.BWk PRECIP_sum.BWk SNOWFALL_sum.BWk
HIGHTEMP_mean.Cfa LOTEMP_mean.Cfa AVGTEMP_mean.Cfa SUSPEED_mean.Cfa PRECIP_mean.Cfa SNOWFALL_mean.Cfa HIGHTEMP_max.Cfa LOTEMP_max.Cfa
AVGTEMP_max.Cfa SUSPEED_max.Cfa PRECIP_max.Cfa SNOWFALL_max.Cfa ICE_max.Cfa HIGHTEMP_min.Cfa LOTEMP_min.Cfa AVGTEMP_min.Cfa
SUSPEED_min.Cfa HIGHTEMP_median.Cfa LOTEMP_median.Cfa AVGTEMP_median.Cfa SUSPEED_median.Cfa PRECIP_median.Cfa PRECIP_sum.Cfa SNOWFALL_sum.Cfa
ICE_sum.Cfa HIGHTEMP_mean.Cfb LOTEMP_mean.Cfb AVGTEMP_mean.Cfb SUSPEED_mean.Cfb PRECIP_mean.Cfb SNOWFALL_mean.Cfb HIGHTEMP_max.Cfb
LOTEMP_max.Cfb AVGTEMP_max.Cfb SUSPEED_max.Cfb PRECIP_max.Cfb SNOWFALL_max.Cfb ICE_max.Cfb HIGHTEMP_min.Cfb LOTEMP_min.Cfb
AVGTEMP_min.Cfb SUSPEED_min.Cfb HIGHTEMP_median.Cfb LOTEMP_median.Cfb AVGTEMP_median.Cfb SUSPEED_median.Cfb PRECIP_median.Cfb SNOWFALL_median.Cfb
PRECIP_sum.Cfb SNOWFALL_sum.Cfb ICE_sum.Cfb HIGHTEMP_mean.Csa LOTEMP_mean.Csa AVGTEMP_mean.Csa SUSPEED_mean.Csa PRECIP_mean.Csa
SNOWFALL_mean.Csa HIGHTEMP_max.Csa LOTEMP_max.Csa AVGTEMP_max.Csa SUSPEED_max.Csa PRECIP_max.Csa SNOWFALL_max.Csa HIGHTEMP_min.Csa
LOTEMP_min.Csa AVGTEMP_min.Csa SUSPEED_min.Csa HIGHTEMP_median.Csa LOTEMP_median.Csa AVGTEMP_median.Csa SUSPEED_median.Csa PRECIP_median.Csa
PRECIP_sum.Csa SNOWFALL_sum.Csa HIGHTEMP_mean.Csb LOTEMP_mean.Csb AVGTEMP_mean.Csb SUSPEED_mean.Csb PRECIP_mean.Csb SNOWFALL_mean.Csb
HIGHTEMP_max.Csb LOTEMP_max.Csb AVGTEMP_max.Csb SUSPEED_max.Csb PRECIP_max.Csb SNOWFALL_max.Csb HIGHTEMP_min.Csb LOTEMP_min.Csb
AVGTEMP_min.Csb SUSPEED_min.Csb HIGHTEMP_median.Csb LOTEMP_median.Csb AVGTEMP_median.Csb SUSPEED_median.Csb
PRECIP_median.Csb PRECIP_sum.Csb SNOWFALL_sum.Csb HIGHTEMP_mean.Dfa LOTEMP_mean.Dfa AVGTEMP_mean.Dfa
SUSPEED_mean.Dfa PRECIP_mean.Dfa SNOWFALL_mean.Dfa HIGHTEMP_max.Dfa LOTEMP_max.Dfa AVGTEMP_max.Dfa SUSPEED_max.Dfa PRECIP_max.Dfa
SNOWFALL_max.Dfa HIGHTEMP_min.Dfa LOTEMP_min.Dfa AVGTEMP_min.Dfa SUSPEED_min.Dfa HIGHTEMP_median.Dfa LOTEMP_median.Dfa AVGTEMP_median.Dfa
SUSPEED_median.Dfa PRECIP_median.Dfa SNOWFALL_median.Dfa PRECIP_sum.Dfa SNOWFALL_sum.Dfa HIGHTEMP_mean.Dfb LOTEMP_mean.Dfb AVGTEMP_mean.Dfb
SUSPEED_mean.Dfb PRECIP_mean.Dfb SNOWFALL_mean.Dfb HIGHTEMP_max.Dfb LOTEMP_max.Dfb AVGTEMP_max.Dfb SUSPEED_max.Dfb PRECIP_max.Dfb
SNOWFALL_max.Dfb ICE_max.Dfb HIGHTEMP_min.Dfb LOTEMP_min.Dfb AVGTEMP_min.Dfb SUSPEED_min.Dfb HIGHTEMP_median.Dfb LOTEMP_median.Dfb
AVGTEMP_median.Dfb SUSPEED_median.Dfb PRECIP_median.Dfb SNOWFALL_median.Dfb PRECIP_sum.Dfb SNOWFALL_sum.Dfb ICE_sum.Dfb HIGHTEMP_mean.Dfc
LOTEMP_mean.Dfc AVGTEMP_mean.Dfc SUSPEED_mean.Dfc PRECIP_mean.Dfc SNOWFALL_mean.Dfc HIGHTEMP_max.Dfc LOTEMP_max.Dfc AVGTEMP_max.Dfc
SUSPEED_max.Dfc PRECIP_max.Dfc SNOWFALL_max.Dfc ICE_max.Dfc HIGHTEMP_min.Dfc LOTEMP_min.Dfc AVGTEMP_min.Dfc SUSPEED_min.Dfc
PRECIP_min.Dfc SNOWFALL_min.Dfc HIGHTEMP_median.Dfc LOTEMP_median.Dfc AVGTEMP_median.Dfc SUSPEED_median.Dfc PRECIP_median.Dfc SNOWFALL_median.Dfc
PRECIP_sum.Dfc SNOWFALL_sum.Dfc ICE_sum.Dfc HIGHTEMP_mean.Dsb LOTEMP_mean.Dsb AVGTEMP_mean.Dsb SUSPEED_mean.Dsb PRECIP_mean.Dsb SNOWFALL_mean.Dsb
HIGHTEMP_max.Dsb LOTEMP_max.Dsb AVGTEMP_max.Dsb SUSPEED_max.Dsb PRECIP_max.Dsb SNOWFALL_max.Dsb ICE_max.Dsb HIGHTEMP_min.Dsb
LOTEMP_min.Dsb AVGTEMP_min.Dsb SUSPEED_min.Dsb PRECIP_min.Dsb
SNOWFALL_min.Dsb HIGHTEMP_median.Dsb LOTEMP_median.Dsb AVGTEMP_median.Dsb
SUSPEED_median.Dsb PRECIP_median.Dsb SNOWFALL_median.Dsb PRECIP_sum.Dsb
SNOWFALL_sum.Dsb HIGHTEMP_mean.Dwa LOTEMP_mean.Dwa AVGTEMP_mean.Dwa
SUSPEED_mean.Dwa PRECIP_mean.Dwa SNOWFALL_mean.Dwa HIGHTEMP_max.Dwa
LOTEMP_max.Dwa AVGTEMP_max.Dwa SUSPEED_max.Dwa PRECIP_max.Dwa
SNOWFALL_max.Dwa HIGHTEMP_min.Dwa LOTEMP_min.Dwa AVGTEMP_min.Dwa
SUSPEED_min.Dwa PRECIP_min.Dwa SNOWFALL_min.Dwa HIGHTEMP_median.Dwa
LOTEMP_median.Dwa AVGTEMP_median.Dwa SUSPEED_median.Dwa PRECIP_median.Dwa
SNOWFALL_median.Dwa PRECIP_sum.Dwa SNOWFALL_sum.Dwa 
 WITH SalesIncrease
  /MISSING=PAIRWISE.

COMMENT AVGTEMP_max.Aw HIGHTEMP_min.Bsh AVGTEMP_min.Bsh SUSPEED_max.BSk HIGHTEMP_min.BSk HIGHTEMP_max.BWh LOTEMP_min.BWk
AVGTEMP_median.BWk AVGTEMP_min.Cfb SNOWFALL_min.Cfb SNOWFALL_min.Csa HIGHTEMP_max.Csa
SNOWFALL_max.Csa SNOWFALL_sum.Csa SNOWFALL_mean.Csb SNOWFALL_sum.Csb
AVGTEMP.Csb SNOWFALL_sum.Csb LOTEMP_min.Dfa LOTEMP_min.Dfa AVGTEMP_min.Dfb HIGHTEMP_min.Dsb AVGTEMP_min.Dwa.

COMMENT Test Correlations for National Weather Metrics.
CORRELATIONS
  /VARIABLES= HIGHTEMP_mean LOTEMP_mean AVGTEMP_mean PRECIP_mean SNOWFALL_mean
HIGHTEMP_max LOTEMP_max AVGTEMP_max SUSPEED_max PRECIP_max SNOWFALL_max ICE_max HIGHTEMP_min LOTEMP_min AVGTEMP_min
SUSPEED_min HIGHTEMP_median LOTEMP_median
AVGTEMP_median SUSPEED_median PRECIP_median SNOWFALL_median PRECIP_sum SNOWFALL_sum ICE_sum WITH SalesIncrease
  /MISSING=PAIRWISE.
COMMENT SUSPEED_max LOTEMP_min AVGTEMP_min AVGTEMP_max SUSPEED_max.


COMMENT Test for Economic Metric.
CORRELATIONS
  /VARIABLES=GDPGrowth WITH SalesIncrease
  /MISSING=PAIRWISE. 
COMMENT GDPGrowth.

COMMENT Compute Other Weather Interactions.
COMPUTE HVY_ICE = 0.
IF ICE_sum GT 10 HVY_ICE = 1. 
COMPUTE HVY_SNOW =0.
IF SNOWFALL_sum GT 10000 HVY_SNOW=1.
COMPUTE HVY_PREC =0.
IF PRECIP_sum GT 8000 HVY_PREC = 1.
COMPUTE MOD_ICE =0.
IF ICE_sum GT 2 AND ICE_sum LE 10 MOD_ICE = 1.
COMPUTE LT_ICE =0.
IF ICE_sum LE 2 LT_ICE =1. 
COMPUTE MOD_SNOW =0.
IF SNOWFALL_sum LE 10000 AND SNOWFALL_sum GT 7000 MOD_Snow =1. 
COMPUTE LT_SNOW =0.
IF SNOWFALL_sum LE 7000 LT_SNOW =1. 
COMPUTE MOD_PREC =0.
IF PRECIP_sum LE 8000 AND PRECIP_sum GT 6000 MOD_PREC=1. 
COMPUTE LT_PREC =0.
IF PRECIP_sum LE 6000 LT_PREC =1.
EXECUTE.

COMPUTE RECESSION = 0.
IF YEAR = 2008 OR YEAR = 2009 RECESSION =1.
EXECUTE.

CORRELATIONS
  /VARIABLES=HVY_ICE HVY_SNOW HVY_PREC MOD_ICE LT_ICE MOD_SNOW LT_SNOW MOD_PREC LT_PREC WITH SalesIncrease
  /MISSING=PAIRWISE. 

CORRELATIONS
  /VARIABLES = RECESSION WITH SalesIncrease
  /MISSING = PAIRWISE.

COMMENT Regression Model Testing.
REGRESSION
     /MISSING=LISTWISE
     /STATISTICS=ALL
     /CRITERIA POUT(0.1) PIN(0.05)
     /NOORIGIN
     /DEPENDENT= SalesIncrease
     /METHOD=STEPWISE AVGTEMP_min.Csb SNOWFALL_sum.Csb LOTEMP_min.Dfa LOTEMP_min.Dfa
 AVGTEMP_min.Dfb HIGHTEMP_min.Dsb AVGTEMP_min.Dwa AVGTEMP_max.Aw
 HIGHTEMP_min.Bsh AVGTEMP_min.Bsh SUSPEED_max.BSk HIGHTEMP_min.BSk HIGHTEMP_max.BWh LOTEMP_min.BWk
AVGTEMP_median.BWk AVGTEMP_min.Cfb SNOWFALL_mean.Csa HIGHTEMP_max.Csa
SNOWFALL_max.Csa SNOWFALL_sum.Csa SNOWFALL_mean.Csb SNOWFALL_sum.Csb.
COMMENT SNOWFALL_max.Csa AVGTEMP_median.BWk HIGHTEMP_max.BWk. 
REGRESSION
     /MISSING=LISTWISE
     /STATISTICS=ALL
     /CRITERIA POUT(0.1) PIN(0.05)
     /NOORIGIN
     /DEPENDENT= SalesIncrease
     /METHOD=STEPWISE SUSPEED_max LOTEMP_min AVGTEMP_min AVGTEMP_max SUSPEED_max.
COMMENT LOTEMP_min AVGTEMP_max.
COMMENT Final Weather Model Testing.
REGRESSION
     /MISSING=LISTWISE
     /STATISTICS=ALL
     /CRITERIA POUT(0.1) PIN(0.05)
     /NOORIGIN
     /DEPENDENT= SalesIncrease
     /METHOD=STEPWISE LOTEMP_min AVGTEMP_max SNOWFALL_max.Csa AVGTEMP_median.BWk HIGHTEMP_max.BWk.
COMMENT SNOWFALL_max.Csa AVGTEMP_median.BWk AVGTEMP_max. 
REGRESSION
     /MISSING=LISTWISE
     /STATISTICS=ALL
     /CRITERIA POUT(0.1) PIN(0.05)
     /NOORIGIN
     /DEPENDENT= SalesIncrease
     /METHOD=ENTER SNOWFALL_max.Csa AVGTEMP_median.BWk AVGTEMP_max.
COMMENT R2 = 78.2% Significant Model.
COMMENT Final Economic Model Testing.
REGRESSION
     /MISSING=LISTWISE
     /STATISTICS=ALL
     /CRITERIA POUT(0.1) PIN(0.05)
     /NOORIGIN
     /DEPENDENT= SalesIncrease
     /METHOD=STEPWISE GDPGrowth.
COMMENT GDPGrowth. 
REGRESSION
     /MISSING=LISTWISE
     /STATISTICS=ALL
     /CRITERIA POUT(0.1) PIN(0.05)
     /NOORIGIN
     /DEPENDENT= SalesIncrease
     /METHOD=ENTER GDPGrowth.
COMMENT R2 = 51.6% Significant Model.
COMMENT Combined Model Testing. 

COMMENT FINAL MODEL.
REGRESSION
     /MISSING=LISTWISE
     /STATISTICS=ALL
     /CRITERIA POUT(0.1) PIN(0.05)
     /NOORIGIN
     /DEPENDENT= SalesIncrease
     /METHOD=ENTER  GDPGrowth SNOWFALL_max.Csa
     /SAVE RESID (res_holid) SRESID (sres_holid) PRED (predict_holid).
DESCRIPTIVES  SalesIncrease predict_holid res_holid. 
DESCRIPTIVES VARIABLES=SalesIncrease predict_holid res_holid 
  /STATISTICS=MEAN SUM STDDEV VARIANCE RANGE MIN MAX KURTOSIS SKEWNESS.
EXAMINE /VARIABLES=SalesIncrease predict_holid res_holid.
FREQUENCIES predict_holid.
COMPUTE Sales = SalesIncrease.
EXECUTE.

REGRESSION
     /MISSING=LISTWISE
     /STATISTICS=ALL
     /CRITERIA POUT(0.1) PIN(0.05)
     /NOORIGIN
     /DEPENDENT= SalesIncrease
     /METHOD=ENTER SNOWFALL_max.Csa AVGTEMP_median.BWk AVGTEMP_max
     /SAVE RESID (res_wx2) SRESID (sres_wx2) PRED (predict_wx2).
DESCRIPTIVES  Sales predict_wx2 res_wx2. 
DESCRIPTIVES VARIABLES=Sales predict_wx2 res_wx2 
  /STATISTICS=MEAN SUM STDDEV VARIANCE RANGE MIN MAX KURTOSIS SKEWNESS.
EXAMINE /VARIABLES=Sales predict_wx2 res_wx2.
FREQUENCIES predict_wx2.

REGRESSION
     /MISSING=LISTWISE
     /STATISTICS=ALL
     /CRITERIA POUT(0.1) PIN(0.05)
     /NOORIGIN
     /DEPENDENT= SalesIncrease
     /METHOD=ENTER  GDPGrowth 
     /SAVE RESID (res_econ) SRESID (sres_econ) PRED (predict_econ).
DESCRIPTIVES  SalesIncrease predict_econ res_econ. 
DESCRIPTIVES VARIABLES=SalesIncrease predict_econ res_econ 
  /STATISTICS=MEAN SUM STDDEV VARIANCE RANGE MIN MAX KURTOSIS SKEWNESS.
EXAMINE /VARIABLES=SalesIncrease predict_econ res_econ.
FREQUENCIES predict_econ.

COMPUTE perc_pred = predict_econ/100.
EXECUTE.
COMPUTE perc_wx = predict_wx/100.
EXECUTE.
