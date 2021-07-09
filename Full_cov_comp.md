
Data Comparison
===============

Date comparison run: 2021-07-09 11:05:08  
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
|1  |                  1|                91|double          |double         |        -90|
|2  |                 24|               113|double          |double         |        -89|
|3  |                 18|                35|double          |double         |        -17|
|4  |                 38|               186|double          |double         |       -148|
|5  |                437|               341|double          |double         |         96|


#### Column -  AGEDTH
Showing sample of size 5



|   | AGEDTH (real_cov)| AGEDTH (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|-----------------:|----------------:|:---------------|:--------------|----------:|
|1  |                NA|              463|double          |double         |         NA|
|2  |                87|               NA|double          |double         |         NA|
|3  |                 4|               NA|double          |double         |         NA|
|4  |               516|               NA|double          |double         |         NA|
|5  |                NA|              423|double          |double         |         NA|


#### Column -  AGEMONTHS
Showing sample of size 5



|   | AGEMONTHS (real_cov)| AGEMONTHS (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|--------------------:|-------------------:|:---------------|:--------------|----------:|
|1  |            0.0328767|            0.032880|double          |double         | -0.0000033|
|2  |            0.0328767|            0.032880|double          |double         | -0.0000033|
|3  |            0.0328767|            0.032880|double          |double         | -0.0000033|
|4  |           23.3753168|            7.134232|double          |double         | 16.2410847|
|5  |            8.8438259|            6.147929|double          |double         |  2.6958967|


#### Column -  ANYWAST06
Showing sample of size 5



|   |ANYWAST06 (real_cov) |ANYWAST06 (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:--------------------|:-------------------|:---------------|:--------------|:----------|
|1  |0                    |NA                  |character       |character      |           |
|2  |NA                   |1                   |character       |character      |           |
|3  |NA                   |0                   |character       |character      |           |
|4  |NA                   |0                   |character       |character      |           |
|5  |NA                   |1                   |character       |character      |           |


#### Column -  ARM
Showing sample of size 5



|   |ARM (real_cov)            |ARM (covFULL)                     |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-------------------------|:---------------------------------|:---------------|:--------------|:----------|
|1  |CFC                       |Zinc + Multivitamin               |character       |character      |           |
|2  |Experimental group        |Placebo nippled + 400,000 IU Oval |character       |character      |           |
|3  |Preventive Zinc: 7 mg/day |Control (no Zinc)                 |character       |character      |           |
|4  |Intervention              |NA                                |character       |character      |           |
|5  |Iron Folic Acid           |Control group                     |character       |character      |           |


#### Column -  BIRTHLEN
Showing sample of size 5



|   |BIRTHLEN (real_cov) |BIRTHLEN (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-------------------|:------------------|:---------------|:--------------|:----------|
|1  |<48 cm              |>=50 cm            |character       |character      |           |
|2  |[48-50) cm          |NA                 |character       |character      |           |
|3  |<48 cm              |>=50 cm            |character       |character      |           |
|4  |<48 cm              |[48-50) cm         |character       |character      |           |
|5  |<48 cm              |>=50 cm            |character       |character      |           |


#### Column -  BIRTHWT
Showing sample of size 5



|   |BIRTHWT (real_cov)         |BIRTHWT (covFULL)          |Type (real_cov) |Type (covFULL) |Difference |
|:--|:--------------------------|:--------------------------|:---------------|:--------------|:----------|
|1  |Normal or high birthweight |NA                         |character       |character      |           |
|2  |NA                         |Normal or high birthweight |character       |character      |           |
|3  |NA                         |Low birthweight            |character       |character      |           |
|4  |Low birthweight            |Normal or high birthweight |character       |character      |           |
|5  |Low birthweight            |Normal or high birthweight |character       |character      |           |


#### Column -  BRTHMON
Showing sample of size 5



|   |BRTHMON (real_cov) |BRTHMON (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:------------------|:-----------------|:---------------|:--------------|:----------|
|1  |12                 |11                |character       |character      |           |
|2  |9                  |2                 |character       |character      |           |
|3  |12                 |8                 |character       |character      |           |
|4  |7                  |3                 |character       |character      |           |
|5  |8                  |11                |character       |character      |           |


#### Column -  BRTHWEEK
Showing sample of size 5



|   | BRTHWEEK (real_cov)| BRTHWEEK (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|-------------------:|------------------:|:---------------|:--------------|----------:|
|1  |                  NA|                 35|double          |double         |         NA|
|2  |                  50|                 49|double          |double         |          1|
|3  |                  44|                 13|double          |double         |         31|
|4  |                  47|                 35|double          |double         |         12|
|5  |                  26|                 18|double          |double         |          8|


#### Column -  BRTHYR
Showing sample of size 5



|   | BRTHYR (real_cov)| BRTHYR (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|-----------------:|----------------:|:---------------|:--------------|----------:|
|1  |              2011|             1997|double          |double         |         14|
|2  |              2011|             2007|double          |double         |          4|
|3  |              2010|             2013|double          |double         |         -3|
|4  |              1997|             1999|double          |double         |         -2|
|5  |              2011|             1998|double          |double         |         13|


#### Column -  CLEANCK
Showing sample of size 5



|   |CLEANCK (real_cov) |CLEANCK (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:------------------|:-----------------|:---------------|:--------------|:----------|
|1  |NA                 |0                 |character       |character      |           |
|2  |0                  |NA                |character       |character      |           |
|3  |NA                 |1                 |character       |character      |           |
|4  |NA                 |1                 |character       |character      |           |
|5  |0                  |NA                |character       |character      |           |


#### Column -  CLUSTERID
Showing sample of size 5



|   | CLUSTERID (real_cov)| CLUSTERID (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|--------------------:|-------------------:|:---------------|:--------------|----------:|
|1  |                28529|                  NA|integer         |integer        |         NA|
|2  |                30034|                  NA|integer         |integer        |         NA|
|3  |                 7635|                  NA|integer         |integer        |         NA|
|4  |                36832|                  NA|integer         |integer        |         NA|
|5  |                19523|                  NA|integer         |integer        |         NA|


#### Column -  COHORTID
Showing sample of size 5



|   |COHORTID (real_cov) |COHORTID (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-------------------|:------------------|:---------------|:--------------|:----------|
|1  |JVT3-BGD            |NCry-BGD           |character       |character      |           |
|2  |JVT3-BGD            |PRBT-BLR           |character       |character      |           |
|3  |JVT3-BGD            |PRBT-BLR           |character       |character      |           |
|4  |JVT3-BGD            |PRBT-BLR           |character       |character      |           |
|5  |JVT3-BGD            |PRBT-BLR           |character       |character      |           |


#### Column -  COUNTRY
Showing sample of size 5



|   |COUNTRY (real_cov) |COUNTRY (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:------------------|:-----------------|:---------------|:--------------|:----------|
|1  |INDIA              |GUATEMALA         |character       |character      |           |
|2  |BELARUS            |ZIMBABWE          |character       |character      |           |
|3  |BANGLADESH         |BELARUS           |character       |character      |           |
|4  |BELARUS            |ZIMBABWE          |character       |character      |           |
|5  |BELARUS            |ZIMBABWE          |character       |character      |           |


#### Column -  CTRYCD
Showing sample of size 5



|   |CTRYCD (real_cov) |CTRYCD (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-----------------|:----------------|:---------------|:--------------|:----------|
|1  |NPL               |MWI              |character       |character      |           |
|2  |MWI               |BGD              |character       |character      |           |
|3  |IND               |PHL              |character       |character      |           |
|4  |PHL               |MWI              |character       |character      |           |
|5  |BGD               |MWI              |character       |character      |           |


#### Column -  DEAD
Showing sample of size 5



|   |DEAD (real_cov) |DEAD (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:---------------|:--------------|:---------------|:--------------|:----------|
|1  |0               |NA             |character       |character      |           |
|2  |NA              |0              |character       |character      |           |
|3  |NA              |0              |character       |character      |           |
|4  |NA              |0              |character       |character      |           |
|5  |1               |NA             |character       |character      |           |


#### Column -  EARLYBF
Showing sample of size 5



|   |EARLYBF (real_cov) |EARLYBF (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:------------------|:-----------------|:---------------|:--------------|:----------|
|1  |0                  |NA                |character       |character      |           |
|2  |0                  |1                 |character       |character      |           |
|3  |1                  |NA                |character       |character      |           |
|4  |0                  |NA                |character       |character      |           |
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
|1  |NA                |0                |character       |character      |           |
|2  |0                 |NA               |character       |character      |           |
|3  |1                 |0                |character       |character      |           |
|4  |1                 |0                |character       |character      |           |
|5  |NA                |0                |character       |character      |           |


#### Column -  EXCLUDE_DESC
Showing sample of size 5



|   |EXCLUDE_DESC (real_cov) |EXCLUDE_DESC (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-----------------------|:----------------------|:---------------|:--------------|:----------|
|1  |Active arm              |NA                     |character       |character      |           |
|2  |Active arm              |NA                     |character       |character      |           |
|3  |Active arm              |NA                     |character       |character      |           |
|4  |Active arm              |NA                     |character       |character      |           |
|5  |Active arm              |NA                     |character       |character      |           |


#### Column -  FAGE
Showing sample of size 5



|   |FAGE (real_cov) |FAGE (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:---------------|:--------------|:---------------|:--------------|:----------|
|1  |NA              |<32            |character       |character      |           |
|2  |NA              |[32-38)        |character       |character      |           |
|3  |<32             |NA             |character       |character      |           |
|4  |NA              |<32            |character       |character      |           |
|5  |NA              |[32-38)        |character       |character      |           |


#### Column -  FEDUCYRS
Showing sample of size 5



|   |FEDUCYRS (real_cov) |FEDUCYRS (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-------------------|:------------------|:---------------|:--------------|:----------|
|1  |Low                 |Medium             |character       |character      |           |
|2  |Low                 |High               |character       |character      |           |
|3  |High                |NA                 |character       |character      |           |
|4  |Low                 |Medium             |character       |character      |           |
|5  |High                |Low                |character       |character      |           |


#### Column -  FHTCM
Showing sample of size 5



|   |FHTCM (real_cov) |FHTCM (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:----------------|:---------------|:---------------|:--------------|:----------|
|1  |NA               |>=167 cm        |character       |character      |           |
|2  |NA               |>=167 cm        |character       |character      |           |
|3  |NA               |<162 cm         |character       |character      |           |
|4  |>=167 cm         |NA              |character       |character      |           |
|5  |>=167 cm         |NA              |character       |character      |           |


#### Column -  GAGEBRTH
Showing sample of size 5



|   |GAGEBRTH (real_cov) |GAGEBRTH (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-------------------|:------------------|:---------------|:--------------|:----------|
|1  |Early term          |Full or late term  |character       |character      |           |
|2  |NA                  |Early term         |character       |character      |           |
|3  |Preterm             |NA                 |character       |character      |           |
|4  |Early term          |Preterm            |character       |character      |           |
|5  |NA                  |Early term         |character       |character      |           |


#### Column -  HDLVRY
Showing sample of size 5



|   |HDLVRY (real_cov) |HDLVRY (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-----------------|:----------------|:---------------|:--------------|:----------|
|1  |NA                |0                |character       |character      |           |
|2  |NA                |1                |character       |character      |           |
|3  |NA                |0                |character       |character      |           |
|4  |1                 |0                |character       |character      |           |
|5  |NA                |1                |character       |character      |           |


#### Column -  HFOODSEC
Showing sample of size 5



|   |HFOODSEC (real_cov)  |HFOODSEC (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:--------------------|:------------------|:---------------|:--------------|:----------|
|1  |Food Secure          |Food Insecure      |character       |character      |           |
|2  |NA                   |Food Secure        |character       |character      |           |
|3  |Mildly Food Insecure |NA                 |character       |character      |           |
|4  |Mildly Food Insecure |Food Insecure      |character       |character      |           |
|5  |Food Insecure        |NA                 |character       |character      |           |


#### Column -  HHWEALTH_QUART
Showing sample of size 5



|   |HHWEALTH_QUART (real_cov) |HHWEALTH_QUART (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-------------------------|:------------------------|:---------------|:--------------|:----------|
|1  |WealthQ3                  |WealthQ1                 |character       |character      |           |
|2  |NA                        |WealthQ3                 |character       |character      |           |
|3  |WealthQ4                  |NA                       |character       |character      |           |
|4  |WealthQ1                  |NA                       |character       |character      |           |
|5  |WealthQ4                  |WealthQ3                 |character       |character      |           |


#### Column -  HTCM
Showing sample of size 5



|   | HTCM (real_cov)| HTCM (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|---------------:|--------------:|:---------------|:--------------|----------:|
|1  |           145.6|             NA|double          |double         |         NA|
|2  |              NA|       47.04719|double          |double         |         NA|
|3  |            75.9|             NA|double          |double         |         NA|
|4  |            94.2|             NA|double          |double         |         NA|
|5  |           105.9|             NA|double          |double         |         NA|


#### Column -  ID
Showing sample of size 5



|   |ID (real_cov) |ID (covFULL)   |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-------------|:--------------|:---------------|:--------------|:----------|
|1  |36816         |Knba-GMB-3237  |character       |character      |           |
|2  |34656         |NCry-BGD-30093 |character       |character      |           |
|3  |120503        |BFZn-BFA-1531  |character       |character      |           |
|4  |14030         |ZVIT-ZWE-13695 |character       |character      |           |
|5  |35617         |JVT3-BGD-13400 |character       |character      |           |


#### Column -  IMPFLOOR
Showing sample of size 5



|   |IMPFLOOR (real_cov) |IMPFLOOR (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-------------------|:------------------|:---------------|:--------------|:----------|
|1  |0                   |NA                 |character       |character      |           |
|2  |0                   |1                  |character       |character      |           |
|3  |0                   |NA                 |character       |character      |           |
|4  |0                   |NA                 |character       |character      |           |
|5  |0                   |NA                 |character       |character      |           |


#### Column -  IMPSAN
Showing sample of size 5



|   |IMPSAN (real_cov) |IMPSAN (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-----------------|:----------------|:---------------|:--------------|:----------|
|1  |0                 |NA               |character       |character      |           |
|2  |1                 |NA               |character       |character      |           |
|3  |0                 |NA               |character       |character      |           |
|4  |0                 |NA               |character       |character      |           |
|5  |0                 |1                |character       |character      |           |


#### Column -  LATITUDE
Showing sample of size 5



|   | LATITUDE (real_cov)| LATITUDE (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|-------------------:|------------------:|:---------------|:--------------|----------:|
|1  |              -12.04|             -14.35|double          |double         |       2.31|
|2  |               53.90|              17.86|double          |double         |      36.04|
|3  |              -14.27|              25.25|double          |double         |     -39.52|
|4  |               25.25|              53.90|double          |double         |     -28.65|
|5  |               10.31|              26.84|double          |double         |     -16.53|


#### Column -  LENCM
Showing sample of size 5



|   | LENCM (real_cov)| LENCM (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|----------------:|---------------:|:---------------|:--------------|----------:|
|1  |             42.7|        47.14664|double          |double         |  -4.446640|
|2  |               NA|        54.00000|double          |double         |         NA|
|3  |             46.8|        50.82645|double          |double         |  -4.026450|
|4  |             53.0|        49.50000|double          |double         |   3.499999|
|5  |             51.3|        77.77860|double          |double         | -26.478600|


#### Column -  LONGITUD
Showing sample of size 5



|   | LONGITUD (real_cov)| LONGITUD (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|-------------------:|------------------:|:---------------|:--------------|----------:|
|1  |              -90.46|              77.10|double          |double         |    -167.56|
|2  |               -1.67|              89.50|double          |double         |     -91.17|
|3  |              -90.46|              77.10|double          |double         |    -167.56|
|4  |               89.50|              27.57|double          |double         |      61.93|
|5  |              123.53|              86.01|double          |double         |      37.52|


#### Column -  MAGE
Showing sample of size 5



|   |MAGE (real_cov) |MAGE (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:---------------|:--------------|:---------------|:--------------|:----------|
|1  |NA              |>=30           |character       |character      |           |
|2  |NA              |[20-30)        |character       |character      |           |
|3  |<20             |[20-30)        |character       |character      |           |
|4  |[20-30)         |>=30           |character       |character      |           |
|5  |<20             |[20-30)        |character       |character      |           |


#### Column -  MBMI
Showing sample of size 5



|   |MBMI (real_cov) |MBMI (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:---------------|:--------------|:---------------|:--------------|:----------|
|1  |Normal weight   |Underweight    |character       |character      |           |
|2  |Normal weight   |Underweight    |character       |character      |           |
|3  |Normal weight   |NA             |character       |character      |           |
|4  |Normal weight   |NA             |character       |character      |           |
|5  |Underweight     |Normal weight  |character       |character      |           |


#### Column -  MEASUREFREQ
Showing sample of size 5



|   |MEASUREFREQ (real_cov) |MEASUREFREQ (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:----------------------|:---------------------|:---------------|:--------------|:----------|
|1  |quarterly              |monthly               |character       |character      |           |
|2  |quarterly              |monthly               |character       |character      |           |
|3  |quarterly              |monthly               |character       |character      |           |
|4  |monthly                |quarterly             |character       |character      |           |
|5  |quarterly              |monthly               |character       |character      |           |


#### Column -  MEDUCYRS
Showing sample of size 5



|   |MEDUCYRS (real_cov) |MEDUCYRS (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-------------------|:------------------|:---------------|:--------------|:----------|
|1  |Low                 |High               |character       |character      |           |
|2  |NA                  |Medium             |character       |character      |           |
|3  |High                |Low                |character       |character      |           |
|4  |High                |Medium             |character       |character      |           |
|5  |High                |Low                |character       |character      |           |


#### Column -  MHTCM
Showing sample of size 5



|   |MHTCM (real_cov) |MHTCM (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:----------------|:---------------|:---------------|:--------------|:----------|
|1  |>=155 cm         |<151 cm         |character       |character      |           |
|2  |<151 cm          |[151-155) cm    |character       |character      |           |
|3  |<151 cm          |>=155 cm        |character       |character      |           |
|4  |<151 cm          |NA              |character       |character      |           |
|5  |NA               |>=155 cm        |character       |character      |           |


#### Column -  MONTH
Showing sample of size 5



|   |MONTH (real_cov) |MONTH (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:----------------|:---------------|:---------------|:--------------|:----------|
|1  |1                |12              |character       |character      |           |
|2  |6                |7               |character       |character      |           |
|3  |NA               |NaN             |character       |character      |           |
|4  |4                |3               |character       |character      |           |
|5  |10               |9               |character       |character      |           |


#### Column -  MWTKG
Showing sample of size 5



|   |MWTKG (real_cov) |MWTKG (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:----------------|:---------------|:---------------|:--------------|:----------|
|1  |<52 kg           |>=58 kg         |character       |character      |           |
|2  |<52 kg           |NA              |character       |character      |           |
|3  |<52 kg           |>=58 kg         |character       |character      |           |
|4  |>=58 kg          |<52 kg          |character       |character      |           |
|5  |<52 kg           |>=58 kg         |character       |character      |           |


#### Column -  NCHLDLT5
Showing sample of size 5



|   |NCHLDLT5 (real_cov) |NCHLDLT5 (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-------------------|:------------------|:---------------|:--------------|:----------|
|1  |1                   |NA                 |character       |character      |           |
|2  |2+                  |1                  |character       |character      |           |
|3  |NA                  |1                  |character       |character      |           |
|4  |NA                  |1                  |character       |character      |           |
|5  |NA                  |2+                 |character       |character      |           |


#### Column -  NHH
Showing sample of size 5



|   |NHH (real_cov) |NHH (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:--------------|:-------------|:---------------|:--------------|:----------|
|1  |4-5            |NA            |character       |character      |           |
|2  |3 or less      |NA            |character       |character      |           |
|3  |NA             |6-7           |character       |character      |           |
|4  |6-7            |NA            |character       |character      |           |
|5  |NA             |6-7           |character       |character      |           |


#### Column -  NROOMS
Showing sample of size 5



|   |NROOMS (real_cov) |NROOMS (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-----------------|:----------------|:---------------|:--------------|:----------|
|1  |1                 |NA               |character       |character      |           |
|2  |2                 |1                |character       |character      |           |
|3  |NA                |2                |character       |character      |           |
|4  |2                 |NA               |character       |character      |           |
|5  |4+                |NA               |character       |character      |           |


#### Column -  PARITY
Showing sample of size 5



|   |PARITY (real_cov) |PARITY (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-----------------|:----------------|:---------------|:--------------|:----------|
|1  |NA                |2                |character       |character      |           |
|2  |NA                |1                |character       |character      |           |
|3  |2                 |3+               |character       |character      |           |
|4  |NA                |1                |character       |character      |           |
|5  |NA                |2                |character       |character      |           |


#### Column -  PERDIAR24
Showing sample of size 5



|   |PERDIAR24 (real_cov) |PERDIAR24 (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:--------------------|:-------------------|:---------------|:--------------|:----------|
|1  |(0%, 5%]             |NA                  |character       |character      |           |
|2  |(0%, 5%]             |NA                  |character       |character      |           |
|3  |NA                   |(0%, 5%]            |character       |character      |           |
|4  |>5%                  |NA                  |character       |character      |           |
|5  |NA                   |>5%                 |character       |character      |           |


#### Column -  PERDIAR6
Showing sample of size 5



|   |PERDIAR6 (real_cov) |PERDIAR6 (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-------------------|:------------------|:---------------|:--------------|:----------|
|1  |NA                  |0%                 |character       |character      |           |
|2  |NA                  |0%                 |character       |character      |           |
|3  |NA                  |>5%                |character       |character      |           |
|4  |NA                  |0%                 |character       |character      |           |
|5  |NA                  |0%                 |character       |character      |           |


#### Column -  PERS_WAST
Showing sample of size 5



|   |PERS_WAST (real_cov) |PERS_WAST (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:--------------------|:-------------------|:---------------|:--------------|:----------|
|1  |0                    |NA                  |character       |character      |           |
|2  |NA                   |0                   |character       |character      |           |
|3  |NA                   |0                   |character       |character      |           |
|4  |0                    |NA                  |character       |character      |           |
|5  |NA                   |0                   |character       |character      |           |


#### Column -  PREDEXFD6
Showing sample of size 5



|   |PREDEXFD6 (real_cov) |PREDEXFD6 (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:--------------------|:-------------------|:---------------|:--------------|:----------|
|1  |NA                   |1                   |character       |character      |           |
|2  |0                    |NA                  |character       |character      |           |
|3  |1                    |NA                  |character       |character      |           |
|4  |1                    |NA                  |character       |character      |           |
|5  |0                    |NA                  |character       |character      |           |


#### Column -  REGION
Showing sample of size 5



|   |REGION (real_cov) |REGION (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-----------------|:----------------|:---------------|:--------------|:----------|
|1  |South Asia        |Africa           |character       |character      |           |
|2  |South Asia        |Africa           |character       |character      |           |
|3  |Europe            |Africa           |character       |character      |           |
|4  |Latin America     |South Asia       |character       |character      |           |
|5  |South Asia        |Africa           |character       |character      |           |


#### Column -  SAFEH2O
Showing sample of size 5



|   |SAFEH2O (real_cov) |SAFEH2O (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:------------------|:-----------------|:---------------|:--------------|:----------|
|1  |NA                 |1                 |character       |character      |           |
|2  |0                  |NA                |character       |character      |           |
|3  |1                  |NA                |character       |character      |           |
|4  |1                  |NA                |character       |character      |           |
|5  |1                  |NA                |character       |character      |           |


#### Column -  SEX
Showing sample of size 5



|   |SEX (real_cov) |SEX (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:--------------|:-------------|:---------------|:--------------|:----------|
|1  |Female         |Male          |character       |character      |           |
|2  |Male           |Female        |character       |character      |           |
|3  |Male           |Female        |character       |character      |           |
|4  |Female         |Male          |character       |character      |           |
|5  |Male           |Female        |character       |character      |           |


#### Column -  SINGLE
Showing sample of size 5



|   |SINGLE (real_cov) |SINGLE (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-----------------|:----------------|:---------------|:--------------|:----------|
|1  |NA                |0                |character       |character      |           |
|2  |NA                |0                |character       |character      |           |
|3  |NA                |1                |character       |character      |           |
|4  |NA                |0                |character       |character      |           |
|5  |NA                |0                |character       |character      |           |


#### Column -  SITEID
Showing sample of size 5



|   |SITEID (real_cov) |SITEID (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-----------------|:----------------|:---------------|:--------------|:----------|
|1  |5                 |GBSC-GTM-10      |character       |character      |           |
|2  |2                 |ZVIT-ZWE-2       |character       |character      |           |
|3  |2                 |JVT3-BGD-2       |character       |character      |           |
|4  |3                 |CORT-IND-4       |character       |character      |           |
|5  |2                 |PRBT-BLR-5       |character       |character      |           |


#### Column -  STUDYID
Showing sample of size 5



|   |STUDYID (real_cov) |STUDYID (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:------------------|:-----------------|:---------------|:--------------|:----------|
|1  |PROBIT             |ZVITAMBO          |character       |character      |           |
|2  |JiVitA-4           |TanzaniaChild2    |character       |character      |           |
|3  |Guatemala BSC      |iLiNS-DOSE        |character       |character      |           |
|4  |NIH-Birth          |ZVITAMBO          |character       |character      |           |
|5  |iLiNS-DYAD-M       |JiVitA-3          |character       |character      |           |


#### Column -  STUDYIDA
Showing sample of size 5



|   |STUDYIDA (real_cov) |STUDYIDA (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-------------------|:------------------|:---------------|:--------------|:----------|
|1  |JVT3                |PRBT               |character       |character      |           |
|2  |JVT4                |TZC2               |character       |character      |           |
|3  |JVT3                |PRBT               |character       |character      |           |
|4  |JVT4                |VITA               |character       |character      |           |
|5  |PRBT                |ZVIT               |character       |character      |           |


#### Column -  SUBJID
Showing sample of size 5



|   |SUBJID (real_cov) |SUBJID (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-----------------|:----------------|:---------------|:--------------|:----------|
|1  |819               |LNSZ-BFA-28437   |character       |character      |           |
|2  |24125             |MLED-IND-6327    |character       |character      |           |
|3  |20001403          |CORT-IND-1016    |character       |character      |           |
|4  |5037              |ILND-MWI-9767    |character       |character      |           |
|5  |30041037          |CORT-IND-5586    |character       |character      |           |


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
|1  |Other         |             |character       |character      |           |
|2  |Maternal      |VitA         |character       |character      |           |
|3  |              |Control      |character       |character      |           |
|4  |              |LNS          |character       |character      |           |
|5  |              |Control      |character       |character      |           |


#### Column -  TRTH2O
Showing sample of size 5



|   |TRTH2O (real_cov) |TRTH2O (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-----------------|:----------------|:---------------|:--------------|:----------|
|1  |NA                |1                |character       |character      |           |
|2  |NA                |0                |character       |character      |           |
|3  |NA                |0                |character       |character      |           |
|4  |NA                |0                |character       |character      |           |
|5  |NA                |0                |character       |character      |           |


#### Column -  VAGBRTH
Showing sample of size 5



|   |VAGBRTH (real_cov) |VAGBRTH (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:------------------|:-----------------|:---------------|:--------------|:----------|
|1  |1                  |NA                |character       |character      |           |
|2  |1                  |NA                |character       |character      |           |
|3  |NA                 |1                 |character       |character      |           |
|4  |1                  |NA                |character       |character      |           |
|5  |1                  |0                 |character       |character      |           |


#### Column -  W_BIRTHLEN
Showing sample of size 5



|   | W_BIRTHLEN (real_cov)| W_BIRTHLEN (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|---------------------:|--------------------:|:---------------|:--------------|----------:|
|1  |                  46.8|                 52.3|double          |double         |       -5.5|
|2  |                  45.1|                 48.4|double          |double         |       -3.3|
|3  |                  42.1|                 50.1|double          |double         |       -8.0|
|4  |                  46.1|                   NA|double          |double         |         NA|
|5  |                  47.9|                   NA|double          |double         |         NA|


#### Column -  W_BIRTHWT
Showing sample of size 5



|   | W_BIRTHWT (real_cov)| W_BIRTHWT (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|--------------------:|-------------------:|:---------------|:--------------|----------:|
|1  |                 3150|                2500|double          |double         |        650|
|2  |                 2850|                2720|double          |double         |        130|
|3  |                 3100|                3230|double          |double         |       -130|
|4  |                 2750|                3200|double          |double         |       -450|
|5  |                 2530|                3400|double          |double         |       -870|


#### Column -  W_FAGE
Showing sample of size 5



|   | W_FAGE (real_cov)| W_FAGE (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|-----------------:|----------------:|:---------------|:--------------|----------:|
|1  |                NA|               24|double          |double         |         NA|
|2  |                23|               NA|double          |double         |         NA|
|3  |                NA|               30|double          |double         |         NA|
|4  |                NA|               31|double          |double         |         NA|
|5  |                47|               NA|double          |double         |         NA|


#### Column -  W_FEDUCYRS
Showing sample of size 5



|   | W_FEDUCYRS (real_cov)| W_FEDUCYRS (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|---------------------:|--------------------:|:---------------|:--------------|----------:|
|1  |                    11|                   16|double          |double         |         -5|
|2  |                     5|                   14|double          |double         |         -9|
|3  |                    NA|                    6|double          |double         |         NA|
|4  |                    NA|                   16|double          |double         |         NA|
|5  |                    13|                   10|double          |double         |          3|


#### Column -  W_FHTCM
Showing sample of size 5



|   | W_FHTCM (real_cov)| W_FHTCM (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|------------------:|-----------------:|:---------------|:--------------|----------:|
|1  |                179|                NA|double          |double         |         NA|
|2  |                 NA|               173|double          |double         |         NA|
|3  |                 NA|               156|double          |double         |         NA|
|4  |                 NA|               176|double          |double         |         NA|
|5  |                180|                NA|double          |double         |         NA|


#### Column -  W_GAGEBRTH
Showing sample of size 5



|   | W_GAGEBRTH (real_cov)| W_GAGEBRTH (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|---------------------:|--------------------:|:---------------|:--------------|----------:|
|1  |                    NA|                  175|double          |double         |         NA|
|2  |                   220|                  277|double          |double         |        -57|
|3  |                    NA|                  282|double          |double         |         NA|
|4  |                   258|                  273|double          |double         |        -15|
|5  |                   277|                   NA|double          |double         |         NA|


#### Column -  W_MAGE
Showing sample of size 5



|   | W_MAGE (real_cov)| W_MAGE (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|-----------------:|----------------:|:---------------|:--------------|----------:|
|1  |                NA|               27|double          |double         |         NA|
|2  |                NA|               23|double          |double         |         NA|
|3  |                27|               20|double          |double         |          7|
|4  |                38|               29|double          |double         |          9|
|5  |                20|               NA|double          |double         |         NA|


#### Column -  W_MBMI
Showing sample of size 5



|   | W_MBMI (real_cov)| W_MBMI (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|-----------------:|----------------:|:---------------|:--------------|----------:|
|1  |          18.68225|               NA|double          |double         |         NA|
|2  |          20.80550|               NA|double          |double         |         NA|
|3  |          19.33000|          24.1588|double          |double         | -4.8288000|
|4  |          19.71745|          20.0140|double          |double         | -0.2965535|
|5  |          20.42000|          27.5482|double          |double         | -7.1282000|


#### Column -  W_MEDUCYRS
Showing sample of size 5



|   | W_MEDUCYRS (real_cov)| W_MEDUCYRS (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|---------------------:|--------------------:|:---------------|:--------------|----------:|
|1  |                     0|                   13|double          |double         |        -13|
|2  |                     8|                   NA|double          |double         |         NA|
|3  |                     0|                   13|double          |double         |        -13|
|4  |                     8|                   13|double          |double         |         -5|
|5  |                     4|                   11|double          |double         |         -7|


#### Column -  W_MHTCM
Showing sample of size 5



|   | W_MHTCM (real_cov)| W_MHTCM (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|------------------:|-----------------:|:---------------|:--------------|----------:|
|1  |              154.8|             176.0|double          |double         |      -21.2|
|2  |              159.6|             156.0|double          |double         |        3.6|
|3  |                 NA|             158.5|double          |double         |         NA|
|4  |              156.0|             160.9|double          |double         |       -4.9|
|5  |              149.9|             147.1|double          |double         |        2.8|


#### Column -  W_MWTKG
Showing sample of size 5



|   | W_MWTKG (real_cov)| W_MWTKG (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|------------------:|-----------------:|:---------------|:--------------|----------:|
|1  |           72.69996|              58.7|double          |double         |   13.99996|
|2  |           55.00000|              78.0|double          |double         |  -23.00000|
|3  |           53.40000|              36.6|double          |double         |   16.80000|
|4  |                 NA|              80.0|double          |double         |         NA|
|5  |           39.20000|              74.0|double          |double         |  -34.80000|


#### Column -  W_NCHLDLT5
Showing sample of size 5



|   | W_NCHLDLT5 (real_cov)| W_NCHLDLT5 (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|---------------------:|--------------------:|:---------------|:--------------|----------:|
|1  |                     2|                   NA|double          |double         |         NA|
|2  |                     3|                    1|double          |double         |          2|
|3  |                    NA|                    2|double          |double         |         NA|
|4  |                     1|                   NA|double          |double         |         NA|
|5  |                     2|                   NA|double          |double         |         NA|


#### Column -  W_NHH
Showing sample of size 5



|   | W_NHH (real_cov)| W_NHH (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|----------------:|---------------:|:---------------|:--------------|----------:|
|1  |                8|              NA|double          |double         |         NA|
|2  |                3|              NA|double          |double         |         NA|
|3  |               NA|               6|double          |double         |         NA|
|4  |               NA|               5|double          |double         |         NA|
|5  |               NA|               5|double          |double         |         NA|


#### Column -  W_NROOMS
Showing sample of size 5



|   | W_NROOMS (real_cov)| W_NROOMS (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|-------------------:|------------------:|:---------------|:--------------|----------:|
|1  |                   1|                 NA|double          |double         |         NA|
|2  |                  NA|                  2|double          |double         |         NA|
|3  |                   3|                 NA|double          |double         |         NA|
|4  |                   1|                 NA|double          |double         |         NA|
|5  |                   1|                 NA|double          |double         |         NA|


#### Column -  W_PARITY
Showing sample of size 5



|   | W_PARITY (real_cov)| W_PARITY (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|-------------------:|------------------:|:---------------|:--------------|----------:|
|1  |                  11|                  1|double          |double         |         10|
|2  |                  NA|                  3|double          |double         |         NA|
|3  |                  NA|                  5|double          |double         |         NA|
|4  |                  NA|                  1|double          |double         |         NA|
|5  |                   3|                 NA|double          |double         |         NA|


#### Column -  W_PERDIAR24
Showing sample of size 5



|   | W_PERDIAR24 (real_cov)| W_PERDIAR24 (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|----------------------:|---------------------:|:---------------|:--------------|----------:|
|1  |                     NA|             0.0058824|double          |double         |         NA|
|2  |              0.0413223|                    NA|double          |double         |         NA|
|3  |              0.0096552|                    NA|double          |double         |         NA|
|4  |                     NA|             0.0550964|double          |double         |         NA|
|5  |              0.0780347|                    NA|double          |double         |         NA|


#### Column -  W_PERDIAR6
Showing sample of size 5



|   | W_PERDIAR6 (real_cov)| W_PERDIAR6 (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|---------------------:|--------------------:|:---------------|:--------------|----------:|
|1  |                    NA|             0.021978|double          |double         |         NA|
|2  |             0.0000000|                   NA|double          |double         |         NA|
|3  |                    NA|             0.000000|double          |double         |         NA|
|4  |             0.0549451|                   NA|double          |double         |         NA|
|5  |             0.0446927|                   NA|double          |double         |         NA|


#### Column -  WTKG
Showing sample of size 5



|   | WTKG (real_cov)| WTKG (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|---------------:|--------------:|:---------------|:--------------|----------:|
|1  |            1.94|       3.500349|double          |double         | -1.5603491|
|2  |            7.28|       7.388000|double          |double         | -0.1080000|
|3  |            3.80|       2.999999|double          |double         |  0.8000006|
|4  |            3.25|       2.999999|double          |double         |  0.2500006|
|5  |            3.35|       1.780001|double          |double         |  1.5699995|


