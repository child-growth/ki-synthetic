
Data Comparison
===============

Date comparison run: 2021-06-17 11:45:43  
Comparison run on R version 4.0.5 (2021-03-31)  
With dataCompareR version 0.1.3  


Meta Summary
============


|Dataset Name |Number of Rows |Number of Columns |
|:------------|:--------------|:-----------------|
|real_cov     |99630          |69                |
|covFULL      |77418          |79                |


Variable Summary
================

Number of columns in common: 60  
Number of columns only in real_cov: 9  
Number of columns only in covFULL: 19  
Number of columns with a type mismatch: 7  
No match key used, comparison is by row


Columns only in real_cov: DATEDEL, EXCLFEED3, EXCLFEED36, EXCLFEED6, PREDFEED3, PREDFEED36, PREDFEED6, SAFEH20, SES  
Columns only in covFULL: AGEDAYS, AGEDTH, AGEMONTHS, BRTHWEEK, BRTHYR, CLUSTERID, COHORTID, CTRYCD, DEAD, EXCLUDE_DESC, HTCM, LATITUDE, LENCM, LONGITUD, SAFEH2O, SITEID, STUDYIDA, SYNTYPE, WTKG  
Columns in both : ANYWAST06, ARM, BIRTHLEN, BIRTHWT, BRTHMON, CLEANCK, COUNTRY, EARLYBF, ENSTUNT, ENWAST, FAGE, FEDUCYRS, FHTCM, GAGEBRTH, HDLVRY, HFOODSEC, HHWEALTH_QUART, ID, IMPFLOOR, IMPSAN, MAGE, MBMI, MEASUREFREQ, MEDUCYRS, MHTCM, MONTH, MWTKG, NCHLDLT5, NHH, NROOMS, PARITY, PERDIAR24, PERDIAR6, PERS_WAST, PREDEXFD6, REGION, SEX, SINGLE, STUDYID, SUBJID, TR, TRTH2O, VAGBRTH, W_BIRTHLEN, W_BIRTHWT, W_FAGE, W_FEDUCYRS, W_FHTCM, W_GAGEBRTH, W_MAGE, W_MBMI, W_MEDUCYRS, W_MHTCM, W_MWTKG, W_NCHLDLT5, W_NHH, W_NROOMS, W_PARITY, W_PERDIAR24, W_PERDIAR6  
Listing of Common Columns with Different Data Types
===================================================



|Column Name |Column Type (in real_cov) |Column Type (in covFULL) |
|:-----------|:-------------------------|:------------------------|
|ID          |double                    |character                |
|W_FAGE      |integer                   |double                   |
|W_FEDUCYRS  |integer                   |double                   |
|W_GAGEBRTH  |integer                   |double                   |
|W_MEDUCYRS  |integer                   |double                   |
|W_NHH       |integer                   |double                   |
|W_NROOMS    |integer                   |double                   |



Row Summary
===========

Total number of rows read from real_cov: 99630  
Total number of rows read from covFULL: 77418    
Number of rows in common: 77418  
Number of rows dropped from real_cov: 22212  
Number of rows dropped from  covFULL: 0  


Data Values Comparison Summary
==============================

Number of columns compared with ALL rows equal: 0  
Number of columns compared with SOME rows unequal: 60  
Number of columns with missing value differences: 11  



Summary of columns with some rows unequal: 



|Column         |Type (in real_cov) |Type (in covFULL) | # differences|Max difference   | # NAs|
|:--------------|:------------------|:-----------------|-------------:|:----------------|-----:|
|ANYWAST06      |character          |character         |         16586|NA               |     0|
|ARM            |character          |character         |         68735|NA               |     0|
|BIRTHLEN       |character          |character         |         51306|NA               |     0|
|BIRTHWT        |character          |character         |         38429|NA               |     0|
|BRTHMON        |character          |character         |         71930|NA               |     0|
|CLEANCK        |character          |character         |         13758|NA               |     0|
|COUNTRY        |character          |character         |         53336|NA               |     0|
|EARLYBF        |character          |character         |         35174|NA               |     0|
|ENSTUNT        |character          |character         |         34216|NA               |     0|
|ENWAST         |character          |character         |         35288|NA               |     0|
|FAGE           |character          |character         |         36084|NA               |     0|
|FEDUCYRS       |character          |character         |         49741|NA               |     0|
|FHTCM          |character          |character         |         21595|NA               |     0|
|GAGEBRTH       |character          |character         |         53278|NA               |     0|
|HDLVRY         |character          |character         |         19711|NA               |     0|
|HFOODSEC       |character          |character         |         30694|NA               |     0|
|HHWEALTH_QUART |character          |character         |         40274|NA               |     0|
|ID             |double             |character         |         77418|NA               |     0|
|IMPFLOOR       |character          |character         |         26065|NA               |     0|
|IMPSAN         |character          |character         |         39964|NA               |     0|
|MAGE           |character          |character         |         49585|NA               |     0|
|MBMI           |character          |character         |         43748|NA               |     0|
|MEASUREFREQ    |character          |character         |         27573|NA               |     0|
|MEDUCYRS       |character          |character         |         55351|NA               |     0|
|MHTCM          |character          |character         |         49661|NA               |     0|
|MONTH          |character          |character         |         71975|NA               |     0|
|MWTKG          |character          |character         |         48053|NA               |     0|
|NCHLDLT5       |character          |character         |         28410|NA               |     0|
|NHH            |character          |character         |          6941|NA               |     0|
|NROOMS         |character          |character         |         41124|NA               |     0|
|PARITY         |character          |character         |         54295|NA               |     0|
|PERDIAR24      |character          |character         |         20832|NA               |     0|
|PERDIAR6       |character          |character         |         10753|NA               |     0|
|PERS_WAST      |character          |character         |         15261|NA               |     0|
|PREDEXFD6      |character          |character         |         29482|NA               |     0|
|REGION         |character          |character         |         48128|NA               |     0|
|SEX            |character          |character         |         38805|NA               |     0|
|SINGLE         |character          |character         |         27890|NA               |     0|
|STUDYID        |character          |character         |         56676|NA               |     0|
|SUBJID         |character          |character         |         77418|NA               |     0|
|TR             |character          |character         |         60122|NA               |     0|
|TRTH2O         |character          |character         |          4273|NA               |     0|
|VAGBRTH        |character          |character         |         31110|NA               |     0|
|W_BIRTHLEN     |double             |double            |         64245|26               | 30046|
|W_BIRTHWT      |double             |double            |         67287|4250             | 25782|
|W_FAGE         |integer            |double            |         77418|NA               |     0|
|W_FEDUCYRS     |integer            |double            |         77418|NA               |     0|
|W_FHTCM        |double             |double            |         22450|44               | 21058|
|W_GAGEBRTH     |integer            |double            |         77418|NA               |     0|
|W_MAGE         |double             |double            |         73243|43               | 13882|
|W_MBMI         |double             |double            |         69024|141.966653771475 | 32140|
|W_MEDUCYRS     |integer            |double            |         77418|NA               |     0|
|W_MHTCM        |double             |double            |         71181|87.6             | 25040|
|W_MWTKG        |double             |double            |         69174|109.39989154     | 30874|
|W_NCHLDLT5     |double             |double            |         28827|9                | 19364|
|W_NHH          |integer            |double            |         77418|NA               |     0|
|W_NROOMS       |integer            |double            |         77418|NA               |     0|
|W_PARITY       |double             |double            |         57270|11               | 37900|
|W_PERDIAR24    |double             |double            |         20825|0.37093023255814 | 20252|
|W_PERDIAR6     |double             |double            |         10753|                 | 10753|



Unequal column details
======================



#### Column -  ANYWAST06
Showing sample of size 5



|   |ANYWAST06 (real_cov) |ANYWAST06 (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:--------------------|:-------------------|:---------------|:--------------|:----------|
|1  |NA                   |0                   |character       |character      |           |
|2  |NA                   |1                   |character       |character      |           |
|3  |0                    |NA                  |character       |character      |           |
|4  |0                    |NA                  |character       |character      |           |
|5  |0                    |NA                  |character       |character      |           |


#### Column -  ARM
Showing sample of size 5



|   |ARM (real_cov)          |ARM (covFULL)                     |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-----------------------|:---------------------------------|:---------------|:--------------|:----------|
|1  |                        |Control group                     |character       |character      |           |
|2  |d.LNS-TabZn5            |NA                                |character       |character      |           |
|3  |Iron Folic Acid         |Soy FS                            |character       |character      |           |
|4  |Multiple Micronutrients |NA                                |character       |character      |           |
|5  |Experimental group      |Placebo nippled + 400,000 IU Oval |character       |character      |           |


#### Column -  BIRTHLEN
Showing sample of size 5



|   |BIRTHLEN (real_cov) |BIRTHLEN (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-------------------|:------------------|:---------------|:--------------|:----------|
|1  |NA                  |[48-50) cm         |character       |character      |           |
|2  |[48-50) cm          |>=50 cm            |character       |character      |           |
|3  |[48-50) cm          |<48 cm             |character       |character      |           |
|4  |<48 cm              |>=50 cm            |character       |character      |           |
|5  |NA                  |[48-50) cm         |character       |character      |           |


#### Column -  BIRTHWT
Showing sample of size 5



|   |BIRTHWT (real_cov)         |BIRTHWT (covFULL)          |Type (real_cov) |Type (covFULL) |Difference |
|:--|:--------------------------|:--------------------------|:---------------|:--------------|:----------|
|1  |NA                         |Low birthweight            |character       |character      |           |
|2  |NA                         |Normal or high birthweight |character       |character      |           |
|3  |Low birthweight            |Normal or high birthweight |character       |character      |           |
|4  |Normal or high birthweight |NA                         |character       |character      |           |
|5  |Normal or high birthweight |NA                         |character       |character      |           |


#### Column -  BRTHMON
Showing sample of size 5



|   |BRTHMON (real_cov) |BRTHMON (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:------------------|:-----------------|:---------------|:--------------|:----------|
|1  |11                 |8                 |character       |character      |           |
|2  |12                 |8                 |character       |character      |           |
|3  |5                  |NA                |character       |character      |           |
|4  |10                 |3                 |character       |character      |           |
|5  |6                  |1                 |character       |character      |           |


#### Column -  CLEANCK
Showing sample of size 5



|   |CLEANCK (real_cov) |CLEANCK (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:------------------|:-----------------|:---------------|:--------------|:----------|
|1  |NA                 |0                 |character       |character      |           |
|2  |NA                 |1                 |character       |character      |           |
|3  |NA                 |1                 |character       |character      |           |
|4  |NA                 |1                 |character       |character      |           |
|5  |NA                 |1                 |character       |character      |           |


#### Column -  COUNTRY
Showing sample of size 5



|   |COUNTRY (real_cov) |COUNTRY (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:------------------|:-----------------|:---------------|:--------------|:----------|
|1  |BANGLADESH         |GAMBIA            |character       |character      |           |
|2  |BANGLADESH         |GAMBIA            |character       |character      |           |
|3  |BANGLADESH         |GAMBIA            |character       |character      |           |
|4  |BELARUS            |ZIMBABWE          |character       |character      |           |
|5  |BANGLADESH         |BELARUS           |character       |character      |           |


#### Column -  EARLYBF
Showing sample of size 5



|   |EARLYBF (real_cov) |EARLYBF (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:------------------|:-----------------|:---------------|:--------------|:----------|
|1  |NA                 |1                 |character       |character      |           |
|2  |NA                 |1                 |character       |character      |           |
|3  |0                  |NA                |character       |character      |           |
|4  |NA                 |1                 |character       |character      |           |
|5  |0                  |NA                |character       |character      |           |


#### Column -  ENSTUNT
Showing sample of size 5



|   |ENSTUNT (real_cov) |ENSTUNT (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:------------------|:-----------------|:---------------|:--------------|:----------|
|1  |0                  |1                 |character       |character      |           |
|2  |NA                 |1                 |character       |character      |           |
|3  |0                  |1                 |character       |character      |           |
|4  |0                  |1                 |character       |character      |           |
|5  |0                  |1                 |character       |character      |           |


#### Column -  ENWAST
Showing sample of size 5



|   |ENWAST (real_cov) |ENWAST (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-----------------|:----------------|:---------------|:--------------|:----------|
|1  |NA                |0                |character       |character      |           |
|2  |1                 |0                |character       |character      |           |
|3  |NA                |0                |character       |character      |           |
|4  |NA                |0                |character       |character      |           |
|5  |0                 |1                |character       |character      |           |


#### Column -  FAGE
Showing sample of size 5



|   |FAGE (real_cov) |FAGE (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:---------------|:--------------|:---------------|:--------------|:----------|
|1  |NA              |[32-38)        |character       |character      |           |
|2  |NA              |>=38           |character       |character      |           |
|3  |<32             |NA             |character       |character      |           |
|4  |NA              |<32            |character       |character      |           |
|5  |[32-38)         |NA             |character       |character      |           |


#### Column -  FEDUCYRS
Showing sample of size 5



|   |FEDUCYRS (real_cov) |FEDUCYRS (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-------------------|:------------------|:---------------|:--------------|:----------|
|1  |Low                 |Medium             |character       |character      |           |
|2  |High                |Medium             |character       |character      |           |
|3  |Low                 |High               |character       |character      |           |
|4  |NA                  |Low                |character       |character      |           |
|5  |High                |Medium             |character       |character      |           |


#### Column -  FHTCM
Showing sample of size 5



|   |FHTCM (real_cov) |FHTCM (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:----------------|:---------------|:---------------|:--------------|:----------|
|1  |>=167 cm         |NA              |character       |character      |           |
|2  |>=167 cm         |NA              |character       |character      |           |
|3  |NA               |>=167 cm        |character       |character      |           |
|4  |NA               |>=167 cm        |character       |character      |           |
|5  |NA               |>=167 cm        |character       |character      |           |


#### Column -  GAGEBRTH
Showing sample of size 5



|   |GAGEBRTH (real_cov) |GAGEBRTH (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-------------------|:------------------|:---------------|:--------------|:----------|
|1  |Early term          |Full or late term  |character       |character      |           |
|2  |NA                  |Full or late term  |character       |character      |           |
|3  |NA                  |Early term         |character       |character      |           |
|4  |Preterm             |NA                 |character       |character      |           |
|5  |NA                  |Preterm            |character       |character      |           |


#### Column -  HDLVRY
Showing sample of size 5



|   |HDLVRY (real_cov) |HDLVRY (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-----------------|:----------------|:---------------|:--------------|:----------|
|1  |NA                |1                |character       |character      |           |
|2  |NA                |0                |character       |character      |           |
|3  |1                 |NA               |character       |character      |           |
|4  |1                 |NA               |character       |character      |           |
|5  |NA                |0                |character       |character      |           |


#### Column -  HFOODSEC
Showing sample of size 5



|   |HFOODSEC (real_cov)  |HFOODSEC (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:--------------------|:------------------|:---------------|:--------------|:----------|
|1  |NA                   |Food Secure        |character       |character      |           |
|2  |NA                   |Food Secure        |character       |character      |           |
|3  |Mildly Food Insecure |NA                 |character       |character      |           |
|4  |Food Secure          |NA                 |character       |character      |           |
|5  |Food Secure          |NA                 |character       |character      |           |


#### Column -  HHWEALTH_QUART
Showing sample of size 5



|   |HHWEALTH_QUART (real_cov) |HHWEALTH_QUART (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-------------------------|:------------------------|:---------------|:--------------|:----------|
|1  |WealthQ2                  |WealthQ3                 |character       |character      |           |
|2  |WealthQ3                  |WealthQ1                 |character       |character      |           |
|3  |WealthQ1                  |NA                       |character       |character      |           |
|4  |WealthQ4                  |NA                       |character       |character      |           |
|5  |WealthQ4                  |NA                       |character       |character      |           |


#### Column -  ID
Showing sample of size 5



|   | ID (real_cov)|ID (covFULL)  |Type (real_cov) |Type (covFULL) |Difference |
|:--|-------------:|:-------------|:---------------|:--------------|:----------|
|1  |         20369|ILND-MWI-8976 |double          |character      |           |
|2  |         16721|BFZn-BFA-3300 |double          |character      |           |
|3  |         15546|PRBT-BLR-7773 |double          |character      |           |
|4  |          7533|MLED-ZAF-7344 |double          |character      |           |
|5  |         29677|CMC-IND-213   |double          |character      |           |


#### Column -  IMPFLOOR
Showing sample of size 5



|   |IMPFLOOR (real_cov) |IMPFLOOR (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-------------------|:------------------|:---------------|:--------------|:----------|
|1  |0                   |1                  |character       |character      |           |
|2  |0                   |1                  |character       |character      |           |
|3  |0                   |NA                 |character       |character      |           |
|4  |0                   |NA                 |character       |character      |           |
|5  |0                   |NA                 |character       |character      |           |


#### Column -  IMPSAN
Showing sample of size 5



|   |IMPSAN (real_cov) |IMPSAN (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-----------------|:----------------|:---------------|:--------------|:----------|
|1  |1                 |NA               |character       |character      |           |
|2  |0                 |NA               |character       |character      |           |
|3  |NA                |0                |character       |character      |           |
|4  |0                 |1                |character       |character      |           |
|5  |0                 |NA               |character       |character      |           |


#### Column -  MAGE
Showing sample of size 5



|   |MAGE (real_cov) |MAGE (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:---------------|:--------------|:---------------|:--------------|:----------|
|1  |NA              |[20-30)        |character       |character      |           |
|2  |<20             |[20-30)        |character       |character      |           |
|3  |NA              |<20            |character       |character      |           |
|4  |[20-30)         |>=30           |character       |character      |           |
|5  |[20-30)         |>=30           |character       |character      |           |


#### Column -  MBMI
Showing sample of size 5



|   |MBMI (real_cov) |MBMI (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:---------------|:--------------|:---------------|:--------------|:----------|
|1  |Normal weight   |NA             |character       |character      |           |
|2  |Normal weight   |NA             |character       |character      |           |
|3  |NA              |Normal weight  |character       |character      |           |
|4  |Underweight     |Normal weight  |character       |character      |           |
|5  |NA              |Normal weight  |character       |character      |           |


#### Column -  MEASUREFREQ
Showing sample of size 5



|   |MEASUREFREQ (real_cov) |MEASUREFREQ (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:----------------------|:---------------------|:---------------|:--------------|:----------|
|1  |quarterly              |monthly               |character       |character      |           |
|2  |quarterly              |monthly               |character       |character      |           |
|3  |quarterly              |monthly               |character       |character      |           |
|4  |quarterly              |yearly                |character       |character      |           |
|5  |yearly                 |quarterly             |character       |character      |           |


#### Column -  MEDUCYRS
Showing sample of size 5



|   |MEDUCYRS (real_cov) |MEDUCYRS (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-------------------|:------------------|:---------------|:--------------|:----------|
|1  |High                |Medium             |character       |character      |           |
|2  |Medium              |High               |character       |character      |           |
|3  |Low                 |Medium             |character       |character      |           |
|4  |Low                 |NA                 |character       |character      |           |
|5  |Medium              |High               |character       |character      |           |


#### Column -  MHTCM
Showing sample of size 5



|   |MHTCM (real_cov) |MHTCM (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:----------------|:---------------|:---------------|:--------------|:----------|
|1  |>=155 cm         |[151-155) cm    |character       |character      |           |
|2  |NA               |[151-155) cm    |character       |character      |           |
|3  |>=155 cm         |[151-155) cm    |character       |character      |           |
|4  |<151 cm          |[151-155) cm    |character       |character      |           |
|5  |[151-155) cm     |NA              |character       |character      |           |


#### Column -  MONTH
Showing sample of size 5



|   |MONTH (real_cov) |MONTH (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:----------------|:---------------|:---------------|:--------------|:----------|
|1  |9                |5               |character       |character      |           |
|2  |4                |1               |character       |character      |           |
|3  |11               |NaN             |character       |character      |           |
|4  |2                |12              |character       |character      |           |
|5  |5                |1               |character       |character      |           |


#### Column -  MWTKG
Showing sample of size 5



|   |MWTKG (real_cov) |MWTKG (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:----------------|:---------------|:---------------|:--------------|:----------|
|1  |<52 kg           |NA              |character       |character      |           |
|2  |>=58 kg          |NA              |character       |character      |           |
|3  |>=58 kg          |NA              |character       |character      |           |
|4  |NA               |>=58 kg         |character       |character      |           |
|5  |>=58 kg          |[52-58) kg      |character       |character      |           |


#### Column -  NCHLDLT5
Showing sample of size 5



|   |NCHLDLT5 (real_cov) |NCHLDLT5 (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-------------------|:------------------|:---------------|:--------------|:----------|
|1  |1                   |NA                 |character       |character      |           |
|2  |2+                  |NA                 |character       |character      |           |
|3  |1                   |NA                 |character       |character      |           |
|4  |1                   |2+                 |character       |character      |           |
|5  |2+                  |NA                 |character       |character      |           |


#### Column -  NHH
Showing sample of size 5



|   |NHH (real_cov) |NHH (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:--------------|:-------------|:---------------|:--------------|:----------|
|1  |3 or less      |NA            |character       |character      |           |
|2  |NA             |4-5           |character       |character      |           |
|3  |NA             |6-7           |character       |character      |           |
|4  |NA             |3 or less     |character       |character      |           |
|5  |NA             |6-7           |character       |character      |           |


#### Column -  NROOMS
Showing sample of size 5



|   |NROOMS (real_cov) |NROOMS (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-----------------|:----------------|:---------------|:--------------|:----------|
|1  |NA                |1                |character       |character      |           |
|2  |1                 |2                |character       |character      |           |
|3  |3                 |NA               |character       |character      |           |
|4  |2                 |4+               |character       |character      |           |
|5  |NA                |1                |character       |character      |           |


#### Column -  PARITY
Showing sample of size 5



|   |PARITY (real_cov) |PARITY (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-----------------|:----------------|:---------------|:--------------|:----------|
|1  |1                 |NA               |character       |character      |           |
|2  |NA                |1                |character       |character      |           |
|3  |NA                |1                |character       |character      |           |
|4  |NA                |3+               |character       |character      |           |
|5  |1                 |NA               |character       |character      |           |


#### Column -  PERDIAR24
Showing sample of size 5



|   |PERDIAR24 (real_cov) |PERDIAR24 (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:--------------------|:-------------------|:---------------|:--------------|:----------|
|1  |[0%, 2%]             |NA                  |character       |character      |           |
|2  |NA                   |>5%                 |character       |character      |           |
|3  |NA                   |(0%, 5%]            |character       |character      |           |
|4  |>2%                  |NA                  |character       |character      |           |
|5  |>2%                  |>5%                 |character       |character      |           |


#### Column -  PERDIAR6
Showing sample of size 5



|   |PERDIAR6 (real_cov) |PERDIAR6 (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-------------------|:------------------|:---------------|:--------------|:----------|
|1  |NA                  |0%                 |character       |character      |           |
|2  |>2%                 |NA                 |character       |character      |           |
|3  |NA                  |>5%                |character       |character      |           |
|4  |[0%, 2%]            |NA                 |character       |character      |           |
|5  |>2%                 |NA                 |character       |character      |           |


#### Column -  PERS_WAST
Showing sample of size 5



|   |PERS_WAST (real_cov) |PERS_WAST (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:--------------------|:-------------------|:---------------|:--------------|:----------|
|1  |NA                   |0                   |character       |character      |           |
|2  |NA                   |0                   |character       |character      |           |
|3  |0                    |NA                  |character       |character      |           |
|4  |NA                   |0                   |character       |character      |           |
|5  |NA                   |1                   |character       |character      |           |


#### Column -  PREDEXFD6
Showing sample of size 5



|   |PREDEXFD6 (real_cov) |PREDEXFD6 (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:--------------------|:-------------------|:---------------|:--------------|:----------|
|1  |1                    |0                   |character       |character      |           |
|2  |1                    |NA                  |character       |character      |           |
|3  |NA                   |1                   |character       |character      |           |
|4  |NA                   |1                   |character       |character      |           |
|5  |0                    |1                   |character       |character      |           |


#### Column -  REGION
Showing sample of size 5



|   |REGION (real_cov) |REGION (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-----------------|:----------------|:---------------|:--------------|:----------|
|1  |South Asia        |Africa           |character       |character      |           |
|2  |Africa            |South Asia       |character       |character      |           |
|3  |South Asia        |Africa           |character       |character      |           |
|4  |South Asia        |Latin America    |character       |character      |           |
|5  |Europe            |South Asia       |character       |character      |           |


#### Column -  SEX
Showing sample of size 5



|   |SEX (real_cov) |SEX (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:--------------|:-------------|:---------------|:--------------|:----------|
|1  |Male           |Female        |character       |character      |           |
|2  |Female         |Male          |character       |character      |           |
|3  |Male           |Female        |character       |character      |           |
|4  |Male           |Female        |character       |character      |           |
|5  |Male           |Female        |character       |character      |           |


#### Column -  SINGLE
Showing sample of size 5



|   |SINGLE (real_cov) |SINGLE (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-----------------|:----------------|:---------------|:--------------|:----------|
|1  |NA                |0                |character       |character      |           |
|2  |NA                |0                |character       |character      |           |
|3  |NA                |0                |character       |character      |           |
|4  |NA                |0                |character       |character      |           |
|5  |NA                |0                |character       |character      |           |


#### Column -  STUDYID
Showing sample of size 5



|   |STUDYID (real_cov) |STUDYID (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:------------------|:-----------------|:---------------|:--------------|:----------|
|1  |JiVitA-3           |NIH-Birth         |character       |character      |           |
|2  |PROBIT             |Vitamin A         |character       |character      |           |
|3  |Keneba             |PROBIT            |character       |character      |           |
|4  |JiVitA-4           |PROBIT            |character       |character      |           |
|5  |JiVitA-4           |PROBIT            |character       |character      |           |


#### Column -  SUBJID
Showing sample of size 5



|   |SUBJID (real_cov) |SUBJID (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-----------------|:----------------|:---------------|:--------------|:----------|
|1  |160067            |ZVIT-ZWE-11611   |character       |character      |           |
|2  |17442             |JVT3-BGD-7577    |character       |character      |           |
|3  |678               |CORT-PHL-9827    |character       |character      |           |
|4  |27915             |NBrt-BGD-29385   |character       |character      |           |
|5  |291054            |ZVIT-ZWE-7182    |character       |character      |           |


#### Column -  TR
Showing sample of size 5



|   |TR (real_cov) |TR (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-------------|:------------|:---------------|:--------------|:----------|
|1  |Control       |             |character       |character      |           |
|2  |Maternal      |Control      |character       |character      |           |
|3  |NA            |Control      |character       |character      |           |
|4  |Maternal      |             |character       |character      |           |
|5  |Control       |             |character       |character      |           |


#### Column -  TRTH2O
Showing sample of size 5



|   |TRTH2O (real_cov) |TRTH2O (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:-----------------|:----------------|:---------------|:--------------|:----------|
|1  |1                 |NA               |character       |character      |           |
|2  |NA                |0                |character       |character      |           |
|3  |NA                |0                |character       |character      |           |
|4  |0                 |NA               |character       |character      |           |
|5  |NA                |0                |character       |character      |           |


#### Column -  VAGBRTH
Showing sample of size 5



|   |VAGBRTH (real_cov) |VAGBRTH (covFULL) |Type (real_cov) |Type (covFULL) |Difference |
|:--|:------------------|:-----------------|:---------------|:--------------|:----------|
|1  |NA                 |0                 |character       |character      |           |
|2  |0                  |NA                |character       |character      |           |
|3  |1                  |NA                |character       |character      |           |
|4  |1                  |NA                |character       |character      |           |
|5  |1                  |0                 |character       |character      |           |


#### Column -  W_BIRTHLEN
Showing sample of size 5



|   | W_BIRTHLEN (real_cov)| W_BIRTHLEN (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|---------------------:|--------------------:|:---------------|:--------------|----------:|
|1  |                    NA|                 49.5|double          |double         |         NA|
|2  |                  54.0|                   NA|double          |double         |         NA|
|3  |                  50.0|                 49.0|double          |double         |        1.0|
|4  |                  50.7|                 47.9|double          |double         |        2.8|
|5  |                  52.0|                   NA|double          |double         |         NA|


#### Column -  W_BIRTHWT
Showing sample of size 5



|   | W_BIRTHWT (real_cov)| W_BIRTHWT (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|--------------------:|-------------------:|:---------------|:--------------|----------:|
|1  |                 3600|              2920.0|double          |double         |      680.0|
|2  |                   NA|              2910.0|double          |double         |         NA|
|3  |                 2620|              3187.5|double          |double         |     -567.5|
|4  |                 2870|              2490.0|double          |double         |      380.0|
|5  |                 2240|                  NA|double          |double         |         NA|


#### Column -  W_FAGE
Showing sample of size 5



|   | W_FAGE (real_cov)| W_FAGE (covFULL)|Type (real_cov) |Type (covFULL) |Difference |
|:--|-----------------:|----------------:|:---------------|:--------------|:----------|
|1  |                NA|               NA|integer         |double         |           |
|2  |                23|               NA|integer         |double         |           |
|3  |                NA|               44|integer         |double         |           |
|4  |                NA|               28|integer         |double         |           |
|5  |                NA|               36|integer         |double         |           |


#### Column -  W_FEDUCYRS
Showing sample of size 5



|   | W_FEDUCYRS (real_cov)| W_FEDUCYRS (covFULL)|Type (real_cov) |Type (covFULL) |Difference |
|:--|---------------------:|--------------------:|:---------------|:--------------|:----------|
|1  |                     0|                   11|integer         |double         |           |
|2  |                    12|                   12|integer         |double         |           |
|3  |                    12|                   16|integer         |double         |           |
|4  |                    10|                   12|integer         |double         |           |
|5  |                     0|                   12|integer         |double         |           |


#### Column -  W_FHTCM
Showing sample of size 5



|   | W_FHTCM (real_cov)| W_FHTCM (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|------------------:|-----------------:|:---------------|:--------------|----------:|
|1  |                161|               170|double          |double         |         -9|
|2  |                 NA|               159|double          |double         |         NA|
|3  |                175|                NA|double          |double         |         NA|
|4  |                 NA|               176|double          |double         |         NA|
|5  |                 NA|               178|double          |double         |         NA|


#### Column -  W_GAGEBRTH
Showing sample of size 5



|   | W_GAGEBRTH (real_cov)| W_GAGEBRTH (covFULL)|Type (real_cov) |Type (covFULL) |Difference |
|:--|---------------------:|--------------------:|:---------------|:--------------|:----------|
|1  |                   227|                  266|integer         |double         |           |
|2  |                   281|                  259|integer         |double         |           |
|3  |                    NA|                  269|integer         |double         |           |
|4  |                   280|                   NA|integer         |double         |           |
|5  |                   265|                   NA|integer         |double         |           |


#### Column -  W_MAGE
Showing sample of size 5



|   | W_MAGE (real_cov)| W_MAGE (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|-----------------:|----------------:|:---------------|:--------------|----------:|
|1  |                30|               19|double          |double         |         11|
|2  |                22|               18|double          |double         |          4|
|3  |                35|               21|double          |double         |         14|
|4  |                34|               25|double          |double         |          9|
|5  |                20|               NA|double          |double         |         NA|


#### Column -  W_MBMI
Showing sample of size 5



|   | W_MBMI (real_cov)| W_MBMI (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|-----------------:|----------------:|:---------------|:--------------|----------:|
|1  |          20.89000|         26.13000|double          |double         |  -5.240000|
|2  |          22.56944|         24.04186|double          |double         |  -1.472413|
|3  |                NA|         26.02620|double          |double         |         NA|
|4  |          21.28220|         19.13000|double          |double         |   2.152200|
|5  |          21.59541|         22.82340|double          |double         |  -1.227993|


#### Column -  W_MEDUCYRS
Showing sample of size 5



|   | W_MEDUCYRS (real_cov)| W_MEDUCYRS (covFULL)|Type (real_cov) |Type (covFULL) |Difference |
|:--|---------------------:|--------------------:|:---------------|:--------------|:----------|
|1  |                     0|                   13|integer         |double         |           |
|2  |                     5|                    3|integer         |double         |           |
|3  |                    10|                   16|integer         |double         |           |
|4  |                    13|                   13|integer         |double         |           |
|5  |                     8|                   13|integer         |double         |           |


#### Column -  W_MHTCM
Showing sample of size 5



|   | W_MHTCM (real_cov)| W_MHTCM (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|------------------:|-----------------:|:---------------|:--------------|----------:|
|1  |                 NA|             152.3|double          |double         |         NA|
|2  |              150.0|             159.0|double          |double         |       -9.0|
|3  |              151.9|             162.0|double          |double         |      -10.1|
|4  |              164.0|                NA|double          |double         |         NA|
|5  |              165.0|             154.2|double          |double         |       10.8|


#### Column -  W_MWTKG
Showing sample of size 5



|   | W_MWTKG (real_cov)| W_MWTKG (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|------------------:|-----------------:|:---------------|:--------------|----------:|
|1  |               57.0|              53.7|double          |double         |        3.3|
|2  |                 NA|              52.8|double          |double         |         NA|
|3  |               39.7|                NA|double          |double         |         NA|
|4  |               46.7|              53.0|double          |double         |       -6.3|
|5  |                 NA|              57.9|double          |double         |         NA|


#### Column -  W_NCHLDLT5
Showing sample of size 5



|   | W_NCHLDLT5 (real_cov)| W_NCHLDLT5 (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|---------------------:|--------------------:|:---------------|:--------------|----------:|
|1  |                     2|                    1|double          |double         |          1|
|2  |                     1|                   NA|double          |double         |         NA|
|3  |                     1|                   NA|double          |double         |         NA|
|4  |                     2|                    1|double          |double         |          1|
|5  |                    NA|                    1|double          |double         |         NA|


#### Column -  W_NHH
Showing sample of size 5



|   | W_NHH (real_cov)| W_NHH (covFULL)|Type (real_cov) |Type (covFULL) |Difference |
|:--|----------------:|---------------:|:---------------|:--------------|:----------|
|1  |               NA|              NA|integer         |double         |           |
|2  |               NA|              NA|integer         |double         |           |
|3  |               NA|              NA|integer         |double         |           |
|4  |               NA|              NA|integer         |double         |           |
|5  |               NA|               5|integer         |double         |           |


#### Column -  W_NROOMS
Showing sample of size 5



|   | W_NROOMS (real_cov)| W_NROOMS (covFULL)|Type (real_cov) |Type (covFULL) |Difference |
|:--|-------------------:|------------------:|:---------------|:--------------|:----------|
|1  |                   1|                  1|integer         |double         |           |
|2  |                   2|                 NA|integer         |double         |           |
|3  |                  NA|                  2|integer         |double         |           |
|4  |                   2|                  4|integer         |double         |           |
|5  |                   4|                 NA|integer         |double         |           |


#### Column -  W_PARITY
Showing sample of size 5



|   | W_PARITY (real_cov)| W_PARITY (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|-------------------:|------------------:|:---------------|:--------------|----------:|
|1  |                  NA|                  3|double          |double         |         NA|
|2  |                   3|                  2|double          |double         |          1|
|3  |                   1|                 NA|double          |double         |         NA|
|4  |                  NA|                  1|double          |double         |         NA|
|5  |                  NA|                  1|double          |double         |         NA|


#### Column -  W_PERDIAR24
Showing sample of size 5



|   | W_PERDIAR24 (real_cov)| W_PERDIAR24 (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|----------------------:|---------------------:|:---------------|:--------------|----------:|
|1  |              0.0283286|                    NA|double          |double         |         NA|
|2  |              0.0000000|                    NA|double          |double         |         NA|
|3  |                     NA|             0.0123288|double          |double         |         NA|
|4  |              0.0054795|                    NA|double          |double         |         NA|
|5  |                     NA|             0.0523416|double          |double         |         NA|


#### Column -  W_PERDIAR6
Showing sample of size 5



|   | W_PERDIAR6 (real_cov)| W_PERDIAR6 (covFULL)|Type (real_cov) |Type (covFULL) | Difference|
|:--|---------------------:|--------------------:|:---------------|:--------------|----------:|
|1  |                    NA|            0.0714286|double          |double         |         NA|
|2  |                    NA|            0.0277778|double          |double         |         NA|
|3  |                     0|                   NA|double          |double         |         NA|
|4  |                    NA|            0.0274725|double          |double         |         NA|
|5  |                    NA|            0.0000000|double          |double         |         NA|


