
Data Comparison
===============

Date comparison run: 2021-07-05 10:04:43  
Comparison run on R version 4.1.0 (2021-05-18)  
With dataCompareR version 0.1.3  


Meta Summary
============


|Dataset Name |Number of Rows |Number of Columns |
|:------------|:--------------|:-----------------|
|real_cov     |109680         |79                |
|covFULL      |77418          |79                |


Variable Summary
================

Number of columns in common: 79  
Number of columns only in real_cov: 0  
Number of columns only in covFULL: 0  
Number of columns with a type mismatch: 0  
No match key used, comparison is by row



Row Summary
===========

Total number of rows read from real_cov: 109680  
Total number of rows read from covFULL: 77418    
Number of rows in common: 77418  
Number of rows dropped from real_cov: 32262  
Number of rows dropped from  covFULL: 0  


Data Values Comparison Summary
==============================

Number of columns compared with ALL rows equal: 0  
Number of columns compared with SOME rows unequal: 79  
Number of columns with missing value differences: 26  



Summary of columns with some rows unequal: 



|Column         |Type (in real_cov) |Type (in covFULL) | # differences|Max difference    | # NAs|
|:--------------|:------------------|:-----------------|-------------:|:-----------------|-----:|
|AGEDAYS        |double             |double            |         45387|6489              |     0|
|AGEDTH         |double             |double            |          2169|793               |  2145|
|AGEMONTHS      |double             |double            |         77418|213.336749220001  |     0|
|ANYWAST06      |character          |character         |         16640|NA                |     0|
|ARM            |character          |character         |         60495|NA                |     0|
|BIRTHLEN       |character          |character         |         50633|NA                |     0|
|BIRTHWT        |character          |character         |         36505|NA                |     0|
|BRTHMON        |character          |character         |         61501|NA                |     0|
|BRTHWEEK       |double             |double            |         65410|52                |  8153|
|BRTHYR         |double             |double            |         61658|34                |  5770|
|CLEANCK        |character          |character         |         10647|NA                |     0|
|CLUSTERID      |integer            |integer           |         44560|                  | 44560|
|COHORTID       |character          |character         |         54049|NA                |     0|
|COUNTRY        |character          |character         |         49023|NA                |     0|
|CTRYCD         |character          |character         |         49023|NA                |     0|
|DEAD           |character          |character         |         29019|NA                |     0|
|EARLYBF        |character          |character         |         41158|NA                |     0|
|ENSTUNT        |character          |character         |         25558|NA                |     0|
|ENWAST         |character          |character         |         27535|NA                |     0|
|EXCLUDE_DESC   |character          |character         |         26831|NA                |     0|
|FAGE           |character          |character         |         29004|NA                |     0|
|FEDUCYRS       |character          |character         |         50026|NA                |     0|
|FHTCM          |character          |character         |         18641|NA                |     0|
|GAGEBRTH       |character          |character         |         46894|NA                |     0|
|HDLVRY         |character          |character         |         20171|NA                |     0|
|HFOODSEC       |character          |character         |         33253|NA                |     0|
|HHWEALTH_QUART |character          |character         |         45561|NA                |     0|
|HTCM           |double             |double            |          1252|38.055            |  1250|
|ID             |character          |character         |         77418|NA                |     0|
|IMPFLOOR       |character          |character         |         32070|NA                |     0|
|IMPSAN         |character          |character         |         45115|NA                |     0|
|LATITUDE       |double             |double            |         52308|67.79             |   560|
|LENCM          |double             |double            |         77404|47.5000045518364  |  6742|
|LONGITUD       |double             |double            |         51854|214.02            |   560|
|MAGE           |character          |character         |         50936|NA                |     0|
|MBMI           |character          |character         |         31661|NA                |     0|
|MEASUREFREQ    |character          |character         |         22213|NA                |     0|
|MEDUCYRS       |character          |character         |         55543|NA                |     0|
|MHTCM          |character          |character         |         50630|NA                |     0|
|MONTH          |character          |character         |         72045|NA                |     0|
|MWTKG          |character          |character         |         40160|NA                |     0|
|NCHLDLT5       |character          |character         |         31745|NA                |     0|
|NHH            |character          |character         |          6556|NA                |     0|
|NROOMS         |character          |character         |         46112|NA                |     0|
|PARITY         |character          |character         |         60875|NA                |     0|
|PERDIAR24      |character          |character         |         19043|NA                |     0|
|PERDIAR6       |character          |character         |          8943|NA                |     0|
|PERS_WAST      |character          |character         |         15349|NA                |     0|
|PREDEXFD6      |character          |character         |         31781|NA                |     0|
|REGION         |character          |character         |         37762|NA                |     0|
|SAFEH2O        |character          |character         |         31751|NA                |     0|
|SEX            |character          |character         |         38667|NA                |     0|
|SINGLE         |character          |character         |         28853|NA                |     0|
|SITEID         |character          |character         |         77418|NA                |     0|
|STUDYID        |character          |character         |         50294|NA                |     0|
|STUDYIDA       |character          |character         |         50294|NA                |     0|
|SUBJID         |character          |character         |         77418|NA                |     0|
|SYNTYPE        |character          |character         |         77418|NA                |     0|
|TR             |character          |character         |         47180|NA                |     0|
|TRTH2O         |character          |character         |          3451|NA                |     0|
|VAGBRTH        |character          |character         |         25892|NA                |     0|
|W_BIRTHLEN     |double             |double            |         62620|27.8              | 24404|
|W_BIRTHWT      |double             |double            |         65327|4890              | 21751|
|W_FAGE         |double             |double            |         30065|53                | 27569|
|W_FEDUCYRS     |double             |double            |         60016|21                | 22860|
|W_FHTCM        |double             |double            |         18651|25                | 18618|
|W_GAGEBRTH     |double             |double            |         54472|146               | 33599|
|W_MAGE         |double             |double            |         73370|51                | 14262|
|W_MBMI         |double             |double            |         58184|140.3623          | 18926|
|W_MEDUCYRS     |double             |double            |         69835|22                | 16991|
|W_MHTCM        |double             |double            |         69424|83                | 23091|
|W_MWTKG        |double             |double            |         58434|105.8             | 17748|
|W_NCHLDLT5     |double             |double            |         32403|10                | 24140|
|W_NHH          |double             |double            |          6556|                  |  6556|
|W_NROOMS       |double             |double            |         46174|76                | 33687|
|W_PARITY       |double             |double            |         64634|15                | 44328|
|W_PERDIAR24    |double             |double            |         19923|0.375342465753425 | 19709|
|W_PERDIAR6     |double             |double            |          8957|                  |  8957|
|WTKG           |double             |double            |         77418|69.2425644768582  |   174|



Unequal column details
======================



#### Column -  AGEDAYS
Showing sample of size 5



|   | AGEDAYS (real_cov)| AGEDAYS (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|------------------:|-----------------:|:---------------|:--------------|----------:|
|1  |                  1|                29|double          |double         |        -28|
|2  |                694|               235|double          |double         |        459|
|3  |                 19|                29|double          |double         |        -10|
|4  |                192|                 2|double          |double         |        190|
|5  |                  1|               110|double          |double         |       -109|


#### Column -  AGEDTH
Showing sample of size 5



|   | AGEDTH (real_cov)| AGEDTH (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|-----------------:|----------------:|:---------------|:--------------|----------:|
|1  |               204|               NA|double          |double         |         NA|
|2  |                 2|               NA|double          |double         |         NA|
|3  |               511|               NA|double          |double         |         NA|
|4  |                NA|                3|double          |double         |         NA|
|5  |               229|               NA|double          |double         |         NA|


#### Column -  AGEMONTHS
Showing sample of size 5



|   | AGEMONTHS (real_cov)| AGEMONTHS (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|--------------------:|-------------------:|:---------------|:--------------|----------:|
|1  |            0.0328767|           0.0328800|double          |double         | -0.0000033|
|2  |            0.0328767|           0.0328800|double          |double         | -0.0000033|
|3  |            0.0328767|           0.0328800|double          |double         | -0.0000033|
|4  |            0.0328767|           0.7232872|double          |double         | -0.6904105|
|5  |            0.0328767|           1.1506787|double          |double         | -1.1178021|


#### Column -  ANYWAST06
Showing sample of size 5



|   |ANYWAST06 (real_cov) |ANYWAST06 (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:--------------------|:-------------------|:---------------|:--------------|:----------|
|1  |NA                   |0                   |character       |character      |           |
|2  |1                    |NA                  |character       |character      |           |
|3  |NA                   |1                   |character       |character      |           |
|4  |NA                   |0                   |character       |character      |           |
|5  |0                    |NA                  |character       |character      |           |


#### Column -  ARM
Showing sample of size 5



|   |ARM (real_cov)    |ARM (covFULL)                       |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-----------------|:-----------------------------------|:---------------|:--------------|:----------|
|1  |Control (no Zinc) |Preventive Zinc: 7 mg/day           |character       |character      |           |
|2  |LNS-40gNoM        |Iron and folic acid supplementation |character       |character      |           |
|3  |NA                |50,000 IU nippled + Placebo Oval    |character       |character      |           |
|4  |Control group     |Placebo nippled + 400,000 IU Oval   |character       |character      |           |
|5  |WSB++             |Vitamin A                           |character       |character      |           |


#### Column -  BIRTHLEN
Showing sample of size 5



|   |BIRTHLEN (real_cov) |BIRTHLEN (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-------------------|:------------------|:---------------|:--------------|:----------|
|1  |NA                  |[48-50) cm         |character       |character      |           |
|2  |[48-50) cm          |>=50 cm            |character       |character      |           |
|3  |<48 cm              |>=50 cm            |character       |character      |           |
|4  |NA                  |<48 cm             |character       |character      |           |
|5  |<48 cm              |>=50 cm            |character       |character      |           |


#### Column -  BIRTHWT
Showing sample of size 5



|   |BIRTHWT (real_cov)         |BIRTHWT (covFULL)          |Type (real_cov) |Type (covFULL) |Difference |
|:--|:--------------------------|:--------------------------|:---------------|:--------------|:----------|
|1  |NA                         |Normal or high birthweight |character       |character      |           |
|2  |Normal or high birthweight |Low birthweight            |character       |character      |           |
|3  |Low birthweight            |Normal or high birthweight |character       |character      |           |
|4  |NA                         |Normal or high birthweight |character       |character      |           |
|5  |Normal or high birthweight |NA                         |character       |character      |           |


#### Column -  BRTHMON
Showing sample of size 5



|   |BRTHMON (real_cov) |BRTHMON (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:------------------|:-----------------|:---------------|:--------------|:----------|
|1  |10                 |12                |character       |character      |           |
|2  |5                  |9                 |character       |character      |           |
|3  |4                  |8                 |character       |character      |           |
|4  |6                  |9                 |character       |character      |           |
|5  |3                  |7                 |character       |character      |           |


#### Column -  BRTHWEEK
Showing sample of size 5



|   | BRTHWEEK (real_cov)| BRTHWEEK (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|-------------------:|------------------:|:---------------|:--------------|----------:|
|1  |                  42|                  8|double          |double         |         34|
|2  |                  50|                 29|double          |double         |         21|
|3  |                  40|                 33|double          |double         |          7|
|4  |                  46|                 23|double          |double         |         23|
|5  |                  25|                 29|double          |double         |         -4|


#### Column -  BRTHYR
Showing sample of size 5



|   | BRTHYR (real_cov)| BRTHYR (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|-----------------:|----------------:|:---------------|:--------------|----------:|
|1  |              2010|             2012|double          |double         |         -2|
|2  |              1996|             1997|double          |double         |         -1|
|3  |              2012|             2009|double          |double         |          3|
|4  |              2009|             2008|double          |double         |          1|
|5  |              2009|             2010|double          |double         |         -1|


#### Column -  CLEANCK
Showing sample of size 5



|   |CLEANCK (real_cov) |CLEANCK (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:------------------|:-----------------|:---------------|:--------------|:----------|
|1  |0                  |NA                |character       |character      |           |
|2  |0                  |NA                |character       |character      |           |
|3  |0                  |NA                |character       |character      |           |
|4  |0                  |NA                |character       |character      |           |
|5  |NA                 |0                 |character       |character      |           |


#### Column -  CLUSTERID
Showing sample of size 5



|   | CLUSTERID (real_cov)| CLUSTERID (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|--------------------:|-------------------:|:---------------|:--------------|----------:|
|1  |                35045|                  NA|integer         |integer        |         NA|
|2  |                34510|                  NA|integer         |integer        |         NA|
|3  |                20211|                  NA|integer         |integer        |         NA|
|4  |                34028|                  NA|integer         |integer        |         NA|
|5  |                36476|                  NA|integer         |integer        |         NA|


#### Column -  COHORTID
Showing sample of size 5



|   |COHORTID (real_cov) |COHORTID (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-------------------|:------------------|:---------------|:--------------|:----------|
|1  |ILND-MWI            |ILDM-MWI           |character       |character      |           |
|2  |JVT4-BGD            |VITA-IND           |character       |character      |           |
|3  |JVT3-BGD            |Knba-GMB           |character       |character      |           |
|4  |JVT3-BGD            |LCN5-MWI           |character       |character      |           |
|5  |JVT3-BGD            |PRBT-BLR           |character       |character      |           |


#### Column -  COUNTRY
Showing sample of size 5



|   |COUNTRY (real_cov) |COUNTRY (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:------------------|:-----------------|:---------------|:--------------|:----------|
|1  |BANGLADESH         |GAMBIA            |character       |character      |           |
|2  |BELARUS            |ZIMBABWE          |character       |character      |           |
|3  |BANGLADESH         |BELARUS           |character       |character      |           |
|4  |BANGLADESH         |ZIMBABWE          |character       |character      |           |
|5  |BELARUS            |ZIMBABWE          |character       |character      |           |


#### Column -  CTRYCD
Showing sample of size 5



|   |CTRYCD (real_cov) |CTRYCD (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-----------------|:----------------|:---------------|:--------------|:----------|
|1  |BLR               |ZWE              |character       |character      |           |
|2  |BGD               |BLR              |character       |character      |           |
|3  |BLR               |ZWE              |character       |character      |           |
|4  |PHL               |PER              |character       |character      |           |
|5  |PHL               |NPL              |character       |character      |           |


#### Column -  DEAD
Showing sample of size 5



|   |DEAD (real_cov) |DEAD (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:---------------|:--------------|:---------------|:--------------|:----------|
|1  |NA              |0              |character       |character      |           |
|2  |NA              |0              |character       |character      |           |
|3  |NA              |0              |character       |character      |           |
|4  |0               |NA             |character       |character      |           |
|5  |NA              |0              |character       |character      |           |


#### Column -  EARLYBF
Showing sample of size 5



|   |EARLYBF (real_cov) |EARLYBF (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:------------------|:-----------------|:---------------|:--------------|:----------|
|1  |NA                 |0                 |character       |character      |           |
|2  |NA                 |1                 |character       |character      |           |
|3  |1                  |0                 |character       |character      |           |
|4  |1                  |NA                |character       |character      |           |
|5  |0                  |NA                |character       |character      |           |


#### Column -  ENSTUNT
Showing sample of size 5



|   |ENSTUNT (real_cov) |ENSTUNT (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:------------------|:-----------------|:---------------|:--------------|:----------|
|1  |1                  |0                 |character       |character      |           |
|2  |1                  |0                 |character       |character      |           |
|3  |1                  |0                 |character       |character      |           |
|4  |0                  |1                 |character       |character      |           |
|5  |1                  |0                 |character       |character      |           |


#### Column -  ENWAST
Showing sample of size 5



|   |ENWAST (real_cov) |ENWAST (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-----------------|:----------------|:---------------|:--------------|:----------|
|1  |0                 |1                |character       |character      |           |
|2  |1                 |0                |character       |character      |           |
|3  |0                 |1                |character       |character      |           |
|4  |0                 |1                |character       |character      |           |
|5  |0                 |1                |character       |character      |           |


#### Column -  EXCLUDE_DESC
Showing sample of size 5



|   |EXCLUDE_DESC (real_cov) |EXCLUDE_DESC (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-----------------------|:----------------------|:---------------|:--------------|:----------|
|1  |Active arm              |NA                     |character       |character      |           |
|2  |Active arm              |NA                     |character       |character      |           |
|3  |Active arm              |NA                     |character       |character      |           |
|4  |Month 24+               |NA                     |character       |character      |           |
|5  |Active arm              |NA                     |character       |character      |           |


#### Column -  FAGE
Showing sample of size 5



|   |FAGE (real_cov) |FAGE (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:---------------|:--------------|:---------------|:--------------|:----------|
|1  |NA              |<32            |character       |character      |           |
|2  |NA              |<32            |character       |character      |           |
|3  |<32             |NA             |character       |character      |           |
|4  |NA              |<32            |character       |character      |           |
|5  |<32             |NA             |character       |character      |           |


#### Column -  FEDUCYRS
Showing sample of size 5



|   |FEDUCYRS (real_cov) |FEDUCYRS (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-------------------|:------------------|:---------------|:--------------|:----------|
|1  |Medium              |Low                |character       |character      |           |
|2  |High                |NA                 |character       |character      |           |
|3  |NA                  |Medium             |character       |character      |           |
|4  |Medium              |NA                 |character       |character      |           |
|5  |Medium              |NA                 |character       |character      |           |


#### Column -  FHTCM
Showing sample of size 5



|   |FHTCM (real_cov) |FHTCM (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:----------------|:---------------|:---------------|:--------------|:----------|
|1  |>=167 cm         |NA              |character       |character      |           |
|2  |NA               |>=167 cm        |character       |character      |           |
|3  |NA               |>=167 cm        |character       |character      |           |
|4  |NA               |<162 cm         |character       |character      |           |
|5  |NA               |>=167 cm        |character       |character      |           |


#### Column -  GAGEBRTH
Showing sample of size 5



|   |GAGEBRTH (real_cov) |GAGEBRTH (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-------------------|:------------------|:---------------|:--------------|:----------|
|1  |NA                  |Preterm            |character       |character      |           |
|2  |Preterm             |NA                 |character       |character      |           |
|3  |Preterm             |NA                 |character       |character      |           |
|4  |Preterm             |Full or late term  |character       |character      |           |
|5  |Full or late term   |Early term         |character       |character      |           |


#### Column -  HDLVRY
Showing sample of size 5



|   |HDLVRY (real_cov) |HDLVRY (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-----------------|:----------------|:---------------|:--------------|:----------|
|1  |0                 |NA               |character       |character      |           |
|2  |NA                |0                |character       |character      |           |
|3  |NA                |0                |character       |character      |           |
|4  |NA                |0                |character       |character      |           |
|5  |0                 |NA               |character       |character      |           |


#### Column -  HFOODSEC
Showing sample of size 5



|   |HFOODSEC (real_cov)  |HFOODSEC (covFULL)   |Type (real_cov) |Type (covFULL) |Difference |
|:--|:--------------------|:--------------------|:---------------|:--------------|:----------|
|1  |Food Secure          |NA                   |character       |character      |           |
|2  |Food Secure          |NA                   |character       |character      |           |
|3  |Food Secure          |Mildly Food Insecure |character       |character      |           |
|4  |Mildly Food Insecure |NA                   |character       |character      |           |
|5  |Mildly Food Insecure |NA                   |character       |character      |           |


#### Column -  HHWEALTH_QUART
Showing sample of size 5



|   |HHWEALTH_QUART (real_cov) |HHWEALTH_QUART (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-------------------------|:------------------------|:---------------|:--------------|:----------|
|1  |WealthQ1                  |NA                       |character       |character      |           |
|2  |WealthQ3                  |NA                       |character       |character      |           |
|3  |NA                        |WealthQ2                 |character       |character      |           |
|4  |WealthQ4                  |WealthQ1                 |character       |character      |           |
|5  |WealthQ4                  |WealthQ2                 |character       |character      |           |


#### Column -  HTCM
Showing sample of size 5



|   | HTCM (real_cov)| HTCM (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|---------------:|--------------:|:---------------|:--------------|----------:|
|1  |              NA|       47.24610|double          |double         |         NA|
|2  |              NA|       41.97502|double          |double         |         NA|
|3  |            80.3|             NA|double          |double         |         NA|
|4  |              NA|       44.26246|double          |double         |         NA|
|5  |            87.6|             NA|double          |double         |         NA|


#### Column -  ID
Showing sample of size 5



|   |ID (real_cov) |ID (covFULL)   |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-------------|:--------------|:---------------|:--------------|:----------|
|1  |30080749      |CORT-PHL-10906 |character       |character      |           |
|2  |47703         |ZVIT-ZWE-13893 |character       |character      |           |
|3  |8096          |Knba-GMB-2776  |character       |character      |           |
|4  |711601        |BFZn-BFA-6680  |character       |character      |           |
|5  |35990         |JVT3-BGD-11047 |character       |character      |           |


#### Column -  IMPFLOOR
Showing sample of size 5



|   |IMPFLOOR (real_cov) |IMPFLOOR (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-------------------|:------------------|:---------------|:--------------|:----------|
|1  |0                   |NA                 |character       |character      |           |
|2  |1                   |NA                 |character       |character      |           |
|3  |0                   |NA                 |character       |character      |           |
|4  |0                   |NA                 |character       |character      |           |
|5  |NA                  |0                  |character       |character      |           |


#### Column -  IMPSAN
Showing sample of size 5



|   |IMPSAN (real_cov) |IMPSAN (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-----------------|:----------------|:---------------|:--------------|:----------|
|1  |NA                |1                |character       |character      |           |
|2  |0                 |1                |character       |character      |           |
|3  |NA                |1                |character       |character      |           |
|4  |1                 |NA               |character       |character      |           |
|5  |1                 |NA               |character       |character      |           |


#### Column -  LATITUDE
Showing sample of size 5



|   | LATITUDE (real_cov)| LATITUDE (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|-------------------:|------------------:|:---------------|:--------------|----------:|
|1  |               14.82|              28.70|double          |double         |     -13.88|
|2  |               25.25|              13.33|double          |double         |      11.92|
|3  |              -14.49|              17.86|double          |double         |     -32.35|
|4  |               25.25|              -6.80|double          |double         |      32.05|
|5  |               25.25|              13.33|double          |double         |      11.92|


#### Column -  LENCM
Showing sample of size 5



|   | LENCM (real_cov)| LENCM (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|----------------:|---------------:|:---------------|:--------------|----------:|
|1  |               NA|        55.40000|double          |double         |         NA|
|2  |             68.1|        46.54991|double          |double         |  21.550089|
|3  |             50.6|        57.00000|double          |double         |  -6.400002|
|4  |               NA|        48.89999|double          |double         |         NA|
|5  |             47.0|        52.61664|double          |double         |  -5.616640|


#### Column -  LONGITUD
Showing sample of size 5



|   | LONGITUD (real_cov)| LONGITUD (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|-------------------:|------------------:|:---------------|:--------------|----------:|
|1  |               27.57|              31.03|double          |double         |      -3.46|
|2  |               30.40|              31.03|double          |double         |      -0.63|
|3  |               89.50|             -16.01|double          |double         |     105.51|
|4  |               27.57|              31.03|double          |double         |      -3.46|
|5  |               89.50|              30.40|double          |double         |      59.10|


#### Column -  MAGE
Showing sample of size 5



|   |MAGE (real_cov) |MAGE (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:---------------|:--------------|:---------------|:--------------|:----------|
|1  |[20-30)         |<20            |character       |character      |           |
|2  |<20             |NA             |character       |character      |           |
|3  |<20             |>=30           |character       |character      |           |
|4  |[20-30)         |NA             |character       |character      |           |
|5  |<20             |[20-30)        |character       |character      |           |


#### Column -  MBMI
Showing sample of size 5



|   |MBMI (real_cov) |MBMI (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:---------------|:--------------|:---------------|:--------------|:----------|
|1  |NA              |Normal weight  |character       |character      |           |
|2  |Normal weight   |NA             |character       |character      |           |
|3  |Underweight     |Normal weight  |character       |character      |           |
|4  |Normal weight   |NA             |character       |character      |           |
|5  |Underweight     |Normal weight  |character       |character      |           |


#### Column -  MEASUREFREQ
Showing sample of size 5



|   |MEASUREFREQ (real_cov) |MEASUREFREQ (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:----------------------|:---------------------|:---------------|:--------------|:----------|
|1  |monthly                |yearly                |character       |character      |           |
|2  |monthly                |yearly                |character       |character      |           |
|3  |quarterly              |monthly               |character       |character      |           |
|4  |quarterly              |yearly                |character       |character      |           |
|5  |quarterly              |monthly               |character       |character      |           |


#### Column -  MEDUCYRS
Showing sample of size 5



|   |MEDUCYRS (real_cov) |MEDUCYRS (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-------------------|:------------------|:---------------|:--------------|:----------|
|1  |Low                 |Medium             |character       |character      |           |
|2  |High                |NA                 |character       |character      |           |
|3  |Medium              |Low                |character       |character      |           |
|4  |Low                 |Medium             |character       |character      |           |
|5  |High                |Low                |character       |character      |           |


#### Column -  MHTCM
Showing sample of size 5



|   |MHTCM (real_cov) |MHTCM (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:----------------|:---------------|:---------------|:--------------|:----------|
|1  |<151 cm          |>=155 cm        |character       |character      |           |
|2  |<151 cm          |[151-155) cm    |character       |character      |           |
|3  |[151-155) cm     |>=155 cm        |character       |character      |           |
|4  |[151-155) cm     |NA              |character       |character      |           |
|5  |>=155 cm         |[151-155) cm    |character       |character      |           |


#### Column -  MONTH
Showing sample of size 5



|   |MONTH (real_cov) |MONTH (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:----------------|:---------------|:---------------|:--------------|:----------|
|1  |7                |8               |character       |character      |           |
|2  |9                |7               |character       |character      |           |
|3  |12               |6               |character       |character      |           |
|4  |3                |9               |character       |character      |           |
|5  |1                |5               |character       |character      |           |


#### Column -  MWTKG
Showing sample of size 5



|   |MWTKG (real_cov) |MWTKG (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:----------------|:---------------|:---------------|:--------------|:----------|
|1  |>=58 kg          |<52 kg          |character       |character      |           |
|2  |[52-58) kg       |<52 kg          |character       |character      |           |
|3  |NA               |>=58 kg         |character       |character      |           |
|4  |<52 kg           |>=58 kg         |character       |character      |           |
|5  |>=58 kg          |<52 kg          |character       |character      |           |


#### Column -  NCHLDLT5
Showing sample of size 5



|   |NCHLDLT5 (real_cov) |NCHLDLT5 (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-------------------|:------------------|:---------------|:--------------|:----------|
|1  |1                   |NA                 |character       |character      |           |
|2  |2+                  |1                  |character       |character      |           |
|3  |2+                  |1                  |character       |character      |           |
|4  |2+                  |NA                 |character       |character      |           |
|5  |2+                  |NA                 |character       |character      |           |


#### Column -  NHH
Showing sample of size 5



|   |NHH (real_cov) |NHH (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:--------------|:-------------|:---------------|:--------------|:----------|
|1  |6-7            |NA            |character       |character      |           |
|2  |4-5            |NA            |character       |character      |           |
|3  |NA             |3 or less     |character       |character      |           |
|4  |4-5            |NA            |character       |character      |           |
|5  |NA             |4-5           |character       |character      |           |


#### Column -  NROOMS
Showing sample of size 5



|   |NROOMS (real_cov) |NROOMS (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-----------------|:----------------|:---------------|:--------------|:----------|
|1  |1                 |NA               |character       |character      |           |
|2  |2                 |NA               |character       |character      |           |
|3  |1                 |NA               |character       |character      |           |
|4  |1                 |NA               |character       |character      |           |
|5  |2                 |1                |character       |character      |           |


#### Column -  PARITY
Showing sample of size 5



|   |PARITY (real_cov) |PARITY (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-----------------|:----------------|:---------------|:--------------|:----------|
|1  |NA                |3+               |character       |character      |           |
|2  |1                 |3+               |character       |character      |           |
|3  |2                 |NA               |character       |character      |           |
|4  |NA                |3+               |character       |character      |           |
|5  |3+                |NA               |character       |character      |           |


#### Column -  PERDIAR24
Showing sample of size 5



|   |PERDIAR24 (real_cov) |PERDIAR24 (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:--------------------|:-------------------|:---------------|:--------------|:----------|
|1  |(0%, 5%]             |NA                  |character       |character      |           |
|2  |0%                   |NA                  |character       |character      |           |
|3  |>5%                  |NA                  |character       |character      |           |
|4  |(0%, 5%]             |NA                  |character       |character      |           |
|5  |NA                   |0%                  |character       |character      |           |


#### Column -  PERDIAR6
Showing sample of size 5



|   |PERDIAR6 (real_cov) |PERDIAR6 (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-------------------|:------------------|:---------------|:--------------|:----------|
|1  |>5%                 |NA                 |character       |character      |           |
|2  |NA                  |>5%                |character       |character      |           |
|3  |0%                  |NA                 |character       |character      |           |
|4  |NA                  |0%                 |character       |character      |           |
|5  |NA                  |(0%, 5%]           |character       |character      |           |


#### Column -  PERS_WAST
Showing sample of size 5



|   |PERS_WAST (real_cov) |PERS_WAST (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:--------------------|:-------------------|:---------------|:--------------|:----------|
|1  |0                    |NA                  |character       |character      |           |
|2  |0                    |NA                  |character       |character      |           |
|3  |NA                   |0                   |character       |character      |           |
|4  |NA                   |0                   |character       |character      |           |
|5  |0                    |NA                  |character       |character      |           |


#### Column -  PREDEXFD6
Showing sample of size 5



|   |PREDEXFD6 (real_cov) |PREDEXFD6 (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:--------------------|:-------------------|:---------------|:--------------|:----------|
|1  |0                    |NA                  |character       |character      |           |
|2  |0                    |NA                  |character       |character      |           |
|3  |NA                   |1                   |character       |character      |           |
|4  |1                    |NA                  |character       |character      |           |
|5  |1                    |NA                  |character       |character      |           |


#### Column -  REGION
Showing sample of size 5



|   |REGION (real_cov) |REGION (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-----------------|:----------------|:---------------|:--------------|:----------|
|1  |Europe            |Africa           |character       |character      |           |
|2  |South Asia        |Africa           |character       |character      |           |
|3  |South Asia        |Africa           |character       |character      |           |
|4  |Europe            |Africa           |character       |character      |           |
|5  |South Asia        |Europe           |character       |character      |           |


#### Column -  SAFEH2O
Showing sample of size 5



|   |SAFEH2O (real_cov) |SAFEH2O (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:------------------|:-----------------|:---------------|:--------------|:----------|
|1  |1                  |NA                |character       |character      |           |
|2  |NA                 |1                 |character       |character      |           |
|3  |1                  |NA                |character       |character      |           |
|4  |NA                 |1                 |character       |character      |           |
|5  |1                  |NA                |character       |character      |           |


#### Column -  SEX
Showing sample of size 5



|   |SEX (real_cov) |SEX (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:--------------|:-------------|:---------------|:--------------|:----------|
|1  |Female         |Male          |character       |character      |           |
|2  |Male           |Female        |character       |character      |           |
|3  |Female         |Male          |character       |character      |           |
|4  |Male           |Female        |character       |character      |           |
|5  |Male           |Female        |character       |character      |           |


#### Column -  SINGLE
Showing sample of size 5



|   |SINGLE (real_cov) |SINGLE (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-----------------|:----------------|:---------------|:--------------|:----------|
|1  |0                 |1                |character       |character      |           |
|2  |NA                |0                |character       |character      |           |
|3  |0                 |NA               |character       |character      |           |
|4  |NA                |0                |character       |character      |           |
|5  |NA                |0                |character       |character      |           |


#### Column -  SITEID
Showing sample of size 5



|   |SITEID (real_cov) |SITEID (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-----------------|:----------------|:---------------|:--------------|:----------|
|1  |2                 |JVT3-BGD-2       |character       |character      |           |
|2  |91                |JVT3-BGD-2       |character       |character      |           |
|3  |2                 |Knba-GMB-2       |character       |character      |           |
|4  |90                |JVT3-BGD-2       |character       |character      |           |
|5  |94                |JVT3-BGD-2       |character       |character      |           |


#### Column -  STUDYID
Showing sample of size 5



|   |STUDYID (real_cov) |STUDYID (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:------------------|:-----------------|:---------------|:--------------|:----------|
|1  |PROBIT             |ZVITAMBO          |character       |character      |           |
|2  |JiVitA-3           |PROBIT            |character       |character      |           |
|3  |JiVitA-4           |Vitamin A         |character       |character      |           |
|4  |JiVitA-3           |PROBIT            |character       |character      |           |
|5  |JiVitA-3           |NIH-Birth         |character       |character      |           |


#### Column -  STUDYIDA
Showing sample of size 5



|   |STUDYIDA (real_cov) |STUDYIDA (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-------------------|:------------------|:---------------|:--------------|:----------|
|1  |JVT4                |VITA               |character       |character      |           |
|2  |JVT3                |PRBT               |character       |character      |           |
|3  |JVT3                |MLED               |character       |character      |           |
|4  |ILDM                |JVT3               |character       |character      |           |
|5  |MLED                |ZVIT               |character       |character      |           |


#### Column -  SUBJID
Showing sample of size 5



|   |SUBJID (real_cov) |SUBJID (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-----------------|:----------------|:---------------|:--------------|:----------|
|1  |31671             |JVT3-BGD-10030   |character       |character      |           |
|2  |1662              |TZC2-TZA-10522   |character       |character      |           |
|3  |727               |ZVIT-ZWE-10965   |character       |character      |           |
|4  |12538             |JVT3-BGD-4171    |character       |character      |           |
|5  |30020200          |CORT-IND-3858    |character       |character      |           |


#### Column -  SYNTYPE
Showing sample of size 5



|   |SYNTYPE (real_cov) |SYNTYPE (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:------------------|:-----------------|:---------------|:--------------|:----------|
|1  |real               |FULL              |character       |character      |           |
|2  |real               |FULL              |character       |character      |           |
|3  |real               |FULL              |character       |character      |           |
|4  |real               |FULL              |character       |character      |           |
|5  |real               |FULL              |character       |character      |           |


#### Column -  TR
Showing sample of size 5



|   |TR (real_cov) |TR (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-------------|:------------|:---------------|:--------------|:----------|
|1  |Maternal      |Control      |character       |character      |           |
|2  |Other         |Zinc         |character       |character      |           |
|3  |              |VitA         |character       |character      |           |
|4  |Other         |Zinc         |character       |character      |           |
|5  |              |Control      |character       |character      |           |


#### Column -  TRTH2O
Showing sample of size 5



|   |TRTH2O (real_cov) |TRTH2O (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-----------------|:----------------|:---------------|:--------------|:----------|
|1  |NA                |1                |character       |character      |           |
|2  |NA                |1                |character       |character      |           |
|3  |NA                |1                |character       |character      |           |
|4  |NA                |0                |character       |character      |           |
|5  |1                 |NA               |character       |character      |           |


#### Column -  VAGBRTH
Showing sample of size 5



|   |VAGBRTH (real_cov) |VAGBRTH (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:------------------|:-----------------|:---------------|:--------------|:----------|
|1  |1                  |NA                |character       |character      |           |
|2  |NA                 |1                 |character       |character      |           |
|3  |1                  |NA                |character       |character      |           |
|4  |NA                 |1                 |character       |character      |           |
|5  |0                  |1                 |character       |character      |           |


#### Column -  W_BIRTHLEN
Showing sample of size 5



|   | W_BIRTHLEN (real_cov)| W_BIRTHLEN (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|---------------------:|--------------------:|:---------------|:--------------|----------:|
|1  |                    NA|                 46.6|double          |double         |         NA|
|2  |                  48.0|                 54.0|double          |double         |       -6.0|
|3  |                    NA|                 46.6|double          |double         |         NA|
|4  |                  47.5|                 52.0|double          |double         |       -4.5|
|5  |                  49.0|                 52.0|double          |double         |       -3.0|


#### Column -  W_BIRTHWT
Showing sample of size 5



|   | W_BIRTHWT (real_cov)| W_BIRTHWT (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|--------------------:|-------------------:|:---------------|:--------------|----------:|
|1  |             2120.000|                  NA|double          |double         |         NA|
|2  |             3400.000|                2375|double          |double         |       1025|
|3  |             2700.000|                3415|double          |double         |       -715|
|4  |             2228.308|                  NA|double          |double         |         NA|
|5  |             2600.000|                2790|double          |double         |       -190|


#### Column -  W_FAGE
Showing sample of size 5



|   | W_FAGE (real_cov)| W_FAGE (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|-----------------:|----------------:|:---------------|:--------------|----------:|
|1  |                NA|               27|double          |double         |         NA|
|2  |                29|               NA|double          |double         |         NA|
|3  |                42|               NA|double          |double         |         NA|
|4  |                NA|               23|double          |double         |         NA|
|5  |                22|               NA|double          |double         |         NA|


#### Column -  W_FEDUCYRS
Showing sample of size 5



|   | W_FEDUCYRS (real_cov)| W_FEDUCYRS (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|---------------------:|--------------------:|:---------------|:--------------|----------:|
|1  |                    NA|                    1|double          |double         |         NA|
|2  |                    NA|                   13|double          |double         |         NA|
|3  |                    12|                    6|double          |double         |          6|
|4  |                    12|                   13|double          |double         |         -1|
|5  |                     8|                   13|double          |double         |         -5|


#### Column -  W_FHTCM
Showing sample of size 5



|   | W_FHTCM (real_cov)| W_FHTCM (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|------------------:|-----------------:|:---------------|:--------------|----------:|
|1  |                 NA|               186|double          |double         |         NA|
|2  |                174|                NA|double          |double         |         NA|
|3  |                163|                NA|double          |double         |         NA|
|4  |                163|                NA|double          |double         |         NA|
|5  |                 NA|               184|double          |double         |         NA|


#### Column -  W_GAGEBRTH
Showing sample of size 5



|   | W_GAGEBRTH (real_cov)| W_GAGEBRTH (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|---------------------:|--------------------:|:---------------|:--------------|----------:|
|1  |                   265|                  285|double          |double         |        -20|
|2  |                    NA|                  252|double          |double         |         NA|
|3  |                    NA|                  266|double          |double         |         NA|
|4  |                   301|                  273|double          |double         |         28|
|5  |                   255|                   NA|double          |double         |         NA|


#### Column -  W_MAGE
Showing sample of size 5



|   | W_MAGE (real_cov)| W_MAGE (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|-----------------:|----------------:|:---------------|:--------------|----------:|
|1  |                NA|               26|double          |double         |         NA|
|2  |                37|               24|double          |double         |         13|
|3  |                15|               18|double          |double         |         -3|
|4  |                15|               19|double          |double         |         -4|
|5  |                25|               31|double          |double         |         -6|


#### Column -  W_MBMI
Showing sample of size 5



|   | W_MBMI (real_cov)| W_MBMI (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|-----------------:|----------------:|:---------------|:--------------|----------:|
|1  |          15.93619|          23.7387|double          |double         |  -7.802509|
|2  |          23.26290|          29.7576|double          |double         |  -6.494700|
|3  |                NA|          27.8867|double          |double         |         NA|
|4  |          14.99000|               NA|double          |double         |         NA|
|5  |          22.84166|          26.0276|double          |double         |  -3.185943|


#### Column -  W_MEDUCYRS
Showing sample of size 5



|   | W_MEDUCYRS (real_cov)| W_MEDUCYRS (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|---------------------:|--------------------:|:---------------|:--------------|----------:|
|1  |                     9|                    3|double          |double         |          6|
|2  |                     7|                    9|double          |double         |         -2|
|3  |                    NA|                    7|double          |double         |         NA|
|4  |                    12|                    8|double          |double         |          4|
|5  |                    10|                    5|double          |double         |          5|


#### Column -  W_MHTCM
Showing sample of size 5



|   | W_MHTCM (real_cov)| W_MHTCM (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|------------------:|-----------------:|:---------------|:--------------|----------:|
|1  |                155|               146|double          |double         |          9|
|2  |                149|                NA|double          |double         |         NA|
|3  |                176|               158|double          |double         |         18|
|4  |                159|                NA|double          |double         |         NA|
|5  |                160|                NA|double          |double         |         NA|


#### Column -  W_MWTKG
Showing sample of size 5



|   | W_MWTKG (real_cov)| W_MWTKG (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|------------------:|-----------------:|:---------------|:--------------|----------:|
|1  |                 NA|              62.0|double          |double         |         NA|
|2  |           53.30942|                NA|double          |double         |         NA|
|3  |           37.20000|              43.6|double          |double         |       -6.4|
|4  |           52.00000|              64.0|double          |double         |      -12.0|
|5  |           48.50000|              51.3|double          |double         |       -2.8|


#### Column -  W_NCHLDLT5
Showing sample of size 5



|   | W_NCHLDLT5 (real_cov)| W_NCHLDLT5 (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|---------------------:|--------------------:|:---------------|:--------------|----------:|
|1  |                     1|                    2|double          |double         |         -1|
|2  |                     2|                   NA|double          |double         |         NA|
|3  |                     2|                   NA|double          |double         |         NA|
|4  |                     1|                   NA|double          |double         |         NA|
|5  |                     1|                   NA|double          |double         |         NA|


#### Column -  W_NHH
Showing sample of size 5



|   | W_NHH (real_cov)| W_NHH (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|----------------:|---------------:|:---------------|:--------------|----------:|
|1  |               NA|               7|double          |double         |         NA|
|2  |                6|              NA|double          |double         |         NA|
|3  |               NA|               5|double          |double         |         NA|
|4  |                4|              NA|double          |double         |         NA|
|5  |               NA|               9|double          |double         |         NA|


#### Column -  W_NROOMS
Showing sample of size 5



|   | W_NROOMS (real_cov)| W_NROOMS (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|-------------------:|------------------:|:---------------|:--------------|----------:|
|1  |                   2|                 NA|double          |double         |         NA|
|2  |                   1|                  4|double          |double         |         -3|
|3  |                   1|                 NA|double          |double         |         NA|
|4  |                   2|                 NA|double          |double         |         NA|
|5  |                   1|                  2|double          |double         |         -1|


#### Column -  W_PARITY
Showing sample of size 5



|   | W_PARITY (real_cov)| W_PARITY (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|-------------------:|------------------:|:---------------|:--------------|----------:|
|1  |                  NA|                  1|double          |double         |         NA|
|2  |                  10|                 NA|double          |double         |         NA|
|3  |                  NA|                  1|double          |double         |         NA|
|4  |                   6|                  2|double          |double         |          4|
|5  |                   1|                 NA|double          |double         |         NA|


#### Column -  W_PERDIAR24
Showing sample of size 5



|   | W_PERDIAR24 (real_cov)| W_PERDIAR24 (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|----------------------:|---------------------:|:---------------|:--------------|----------:|
|1  |              0.1982759|                    NA|double          |double         |         NA|
|2  |              0.0026738|                    NA|double          |double         |         NA|
|3  |              0.0404624|                    NA|double          |double         |         NA|
|4  |                     NA|             0.0027548|double          |double         |         NA|
|5  |              0.0084746|                    NA|double          |double         |         NA|


#### Column -  W_PERDIAR6
Showing sample of size 5



|   | W_PERDIAR6 (real_cov)| W_PERDIAR6 (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|---------------------:|--------------------:|:---------------|:--------------|----------:|
|1  |                    NA|                    0|double          |double         |         NA|
|2  |                    NA|                    0|double          |double         |         NA|
|3  |                    NA|                    0|double          |double         |         NA|
|4  |                    NA|                    0|double          |double         |         NA|
|5  |             0.0470588|                   NA|double          |double         |         NA|


#### Column -  WTKG
Showing sample of size 5



|   | WTKG (real_cov)| WTKG (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|---------------:|--------------:|:---------------|:--------------|----------:|
|1  |            2.86|       2.954449|double          |double         |  -0.094449|
|2  |            2.48|       2.358926|double          |double         |   0.121074|
|3  |            9.75|       6.266999|double          |double         |   3.483001|
|4  |            8.75|       6.880001|double          |double         |   1.869999|
|5  |            3.75|       2.944524|double          |double         |   0.805476|


