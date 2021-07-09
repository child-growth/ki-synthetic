
Data Comparison
===============

Date comparison run: 2021-06-17 11:45:28  
Comparison run on R version 4.0.5 (2021-03-31)  
With dataCompareR version 0.1.3  


Meta Summary
============


|Dataset Name |Number of Rows |Number of Columns |
|:------------|:--------------|:-----------------|
|real_cov     |99630          |69                |
|covQI        |109680         |79                |


Variable Summary
================

Number of columns in common: 60  
Number of columns only in real_cov: 9  
Number of columns only in covQI: 19  
Number of columns with a type mismatch: 7  
No match key used, comparison is by row


Columns only in real_cov: DATEDEL, EXCLFEED3, EXCLFEED36, EXCLFEED6, PREDFEED3, PREDFEED36, PREDFEED6, SAFEH20, SES  
Columns only in covQI: AGEDAYS, AGEDTH, AGEMONTHS, BRTHWEEK, BRTHYR, CLUSTERID, COHORTID, CTRYCD, DEAD, EXCLUDE_DESC, HTCM, LATITUDE, LENCM, LONGITUD, SAFEH2O, SITEID, STUDYIDA, SYNTYPE, WTKG  
Columns in both : ANYWAST06, ARM, BIRTHLEN, BIRTHWT, BRTHMON, CLEANCK, COUNTRY, EARLYBF, ENSTUNT, ENWAST, FAGE, FEDUCYRS, FHTCM, GAGEBRTH, HDLVRY, HFOODSEC, HHWEALTH_QUART, ID, IMPFLOOR, IMPSAN, MAGE, MBMI, MEASUREFREQ, MEDUCYRS, MHTCM, MONTH, MWTKG, NCHLDLT5, NHH, NROOMS, PARITY, PERDIAR24, PERDIAR6, PERS_WAST, PREDEXFD6, REGION, SEX, SINGLE, STUDYID, SUBJID, TR, TRTH2O, VAGBRTH, W_BIRTHLEN, W_BIRTHWT, W_FAGE, W_FEDUCYRS, W_FHTCM, W_GAGEBRTH, W_MAGE, W_MBMI, W_MEDUCYRS, W_MHTCM, W_MWTKG, W_NCHLDLT5, W_NHH, W_NROOMS, W_PARITY, W_PERDIAR24, W_PERDIAR6  
Listing of Common Columns with Different Data Types
===================================================



|Column Name |Column Type (in real_cov) |Column Type (in covQI) |
|:-----------|:-------------------------|:----------------------|
|ID          |double                    |character              |
|W_FAGE      |integer                   |double                 |
|W_FEDUCYRS  |integer                   |double                 |
|W_GAGEBRTH  |integer                   |double                 |
|W_MEDUCYRS  |integer                   |double                 |
|W_NHH       |integer                   |double                 |
|W_NROOMS    |integer                   |double                 |



Row Summary
===========

Total number of rows read from real_cov: 99630  
Total number of rows read from covQI: 109680    
Number of rows in common: 99630  
Number of rows dropped from real_cov: 0  
Number of rows dropped from  covQI: 10050  


Data Values Comparison Summary
==============================

Number of columns compared with ALL rows equal: 0  
Number of columns compared with SOME rows unequal: 60  
Number of columns with missing value differences: 11  



Summary of columns with some rows unequal: 



|Column         |Type (in real_cov) |Type (in covQI) | # differences|Max difference    | # NAs|
|:--------------|:------------------|:---------------|-------------:|:-----------------|-----:|
|ANYWAST06      |character          |character       |         20287|NA                |     0|
|ARM            |character          |character       |         84302|NA                |     0|
|BIRTHLEN       |character          |character       |         65948|NA                |     0|
|BIRTHWT        |character          |character       |         49806|NA                |     0|
|BRTHMON        |character          |character       |         92307|NA                |     0|
|CLEANCK        |character          |character       |         17122|NA                |     0|
|COUNTRY        |character          |character       |         55514|NA                |     0|
|EARLYBF        |character          |character       |         39566|NA                |     0|
|ENSTUNT        |character          |character       |         46036|NA                |     0|
|ENWAST         |character          |character       |         46796|NA                |     0|
|FAGE           |character          |character       |         33937|NA                |     0|
|FEDUCYRS       |character          |character       |         65152|NA                |     0|
|FHTCM          |character          |character       |         21680|NA                |     0|
|GAGEBRTH       |character          |character       |         58148|NA                |     0|
|HDLVRY         |character          |character       |         28244|NA                |     0|
|HFOODSEC       |character          |character       |         36785|NA                |     0|
|HHWEALTH_QUART |character          |character       |         51204|NA                |     0|
|ID             |double             |character       |         99630|NA                |     0|
|IMPFLOOR       |character          |character       |         29278|NA                |     0|
|IMPSAN         |character          |character       |         49340|NA                |     0|
|MAGE           |character          |character       |         61509|NA                |     0|
|MBMI           |character          |character       |         58022|NA                |     0|
|MEASUREFREQ    |character          |character       |         35395|NA                |     0|
|MEDUCYRS       |character          |character       |         69589|NA                |     0|
|MHTCM          |character          |character       |         65181|NA                |     0|
|MONTH          |character          |character       |         92040|NA                |     0|
|MWTKG          |character          |character       |         64122|NA                |     0|
|NCHLDLT5       |character          |character       |         40548|NA                |     0|
|NHH            |character          |character       |          8221|NA                |     0|
|NROOMS         |character          |character       |         51369|NA                |     0|
|PARITY         |character          |character       |         60078|NA                |     0|
|PERDIAR24      |character          |character       |         25636|NA                |     0|
|PERDIAR6       |character          |character       |         10628|NA                |     0|
|PERS_WAST      |character          |character       |         18730|NA                |     0|
|PREDEXFD6      |character          |character       |         36918|NA                |     0|
|REGION         |character          |character       |         47011|NA                |     0|
|SEX            |character          |character       |         49660|NA                |     0|
|SINGLE         |character          |character       |         41798|NA                |     0|
|STUDYID        |character          |character       |         62978|NA                |     0|
|SUBJID         |character          |character       |         99630|NA                |     0|
|TR             |character          |character       |         74585|NA                |     0|
|TRTH2O         |character          |character       |          4218|NA                |     0|
|VAGBRTH        |character          |character       |         45506|NA                |     0|
|W_BIRTHLEN     |double             |double          |         84928|42.0062083866     | 42910|
|W_BIRTHWT      |double             |double          |         87480|5360              | 33729|
|W_FAGE         |integer            |double          |         99630|NA                |     0|
|W_FEDUCYRS     |integer            |double          |         99630|NA                |     0|
|W_FHTCM        |double             |double          |         26012|47.5              | 20161|
|W_GAGEBRTH     |integer            |double          |         99630|NA                |     0|
|W_MAGE         |double             |double          |         93164|50                | 19959|
|W_MBMI         |double             |double          |         90282|872.044766901028  | 43704|
|W_MEDUCYRS     |integer            |double          |         99630|NA                |     0|
|W_MHTCM        |double             |double          |         93522|131               | 36262|
|W_MWTKG        |double             |double          |         90724|115.44158549265   | 42788|
|W_NCHLDLT5     |double             |double          |         41266|10                | 29320|
|W_NHH          |integer            |double          |         99630|NA                |     0|
|W_NROOMS       |integer            |double          |         99630|NA                |     0|
|W_PARITY       |double             |double          |         63904|18                | 34597|
|W_PERDIAR24    |double             |double          |         26743|0.622289972899729 | 23951|
|W_PERDIAR6     |double             |double          |         10892|0.585365853658537 | 10652|



Unequal column details
======================



#### Column -  ANYWAST06
Showing sample of size 5



|   |ANYWAST06 (real_cov) |ANYWAST06 (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:--------------------|:-----------------|:---------------|:------------|:----------|
|1  |NA                   |0                 |character       |character    |           |
|2  |0                    |NA                |character       |character    |           |
|3  |0                    |NA                |character       |character    |           |
|4  |0                    |NA                |character       |character    |           |
|5  |1                    |NA                |character       |character    |           |


#### Column -  ARM
Showing sample of size 5



|   |ARM (real_cov)          |ARM (covQI)        |Type (real_cov) |Type (covQI) |Difference |
|:--|:-----------------------|:------------------|:---------------|:------------|:----------|
|1  |Multiple Micronutrients |e.Control          |character       |character    |           |
|2  |Multiple Micronutrients |Iron Folic Acid    |character       |character    |           |
|3  |Iron Folic Acid         |BSC                |character       |character    |           |
|4  |Multiple Micronutrients |Iron Folic Acid    |character       |character    |           |
|5  |Multivitamin Alone      |Experimental group |character       |character    |           |


#### Column -  BIRTHLEN
Showing sample of size 5



|   |BIRTHLEN (real_cov) |BIRTHLEN (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |<48 cm              |NA               |character       |character    |           |
|2  |[48-50) cm          |>=50 cm          |character       |character    |           |
|3  |<48 cm              |[48-50) cm       |character       |character    |           |
|4  |<48 cm              |NA               |character       |character    |           |
|5  |NA                  |<48 cm           |character       |character    |           |


#### Column -  BIRTHWT
Showing sample of size 5



|   |BIRTHWT (real_cov)         |BIRTHWT (covQI)            |Type (real_cov) |Type (covQI) |Difference |
|:--|:--------------------------|:--------------------------|:---------------|:------------|:----------|
|1  |Normal or high birthweight |NA                         |character       |character    |           |
|2  |NA                         |Low birthweight            |character       |character    |           |
|3  |Normal or high birthweight |NA                         |character       |character    |           |
|4  |Normal or high birthweight |NA                         |character       |character    |           |
|5  |Low birthweight            |Normal or high birthweight |character       |character    |           |


#### Column -  BRTHMON
Showing sample of size 5



|   |BRTHMON (real_cov) |BRTHMON (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |8                  |10              |character       |character    |           |
|2  |7                  |11              |character       |character    |           |
|3  |10                 |4               |character       |character    |           |
|4  |8                  |12              |character       |character    |           |
|5  |12                 |11              |character       |character    |           |


#### Column -  CLEANCK
Showing sample of size 5



|   |CLEANCK (real_cov) |CLEANCK (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |NA                 |1               |character       |character    |           |
|2  |NA                 |1               |character       |character    |           |
|3  |NA                 |1               |character       |character    |           |
|4  |NA                 |1               |character       |character    |           |
|5  |NA                 |1               |character       |character    |           |


#### Column -  COUNTRY
Showing sample of size 5



|   |COUNTRY (real_cov) |COUNTRY (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |INDIA              |BELARUS         |character       |character    |           |
|2  |GAMBIA             |BANGLADESH      |character       |character    |           |
|3  |BELARUS            |GAMBIA          |character       |character    |           |
|4  |BANGLADESH         |PHILIPPINES     |character       |character    |           |
|5  |BANGLADESH         |MALAWI          |character       |character    |           |


#### Column -  EARLYBF
Showing sample of size 5



|   |EARLYBF (real_cov) |EARLYBF (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |NA                 |0               |character       |character    |           |
|2  |0                  |NA              |character       |character    |           |
|3  |1                  |NA              |character       |character    |           |
|4  |0                  |NA              |character       |character    |           |
|5  |1                  |NA              |character       |character    |           |


#### Column -  ENSTUNT
Showing sample of size 5



|   |ENSTUNT (real_cov) |ENSTUNT (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |1                  |0               |character       |character    |           |
|2  |NA                 |0               |character       |character    |           |
|3  |0                  |1               |character       |character    |           |
|4  |NA                 |0               |character       |character    |           |
|5  |NA                 |0               |character       |character    |           |


#### Column -  ENWAST
Showing sample of size 5



|   |ENWAST (real_cov) |ENWAST (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |NA                |0              |character       |character    |           |
|2  |NA                |1              |character       |character    |           |
|3  |NA                |0              |character       |character    |           |
|4  |0                 |1              |character       |character    |           |
|5  |NA                |0              |character       |character    |           |


#### Column -  FAGE
Showing sample of size 5



|   |FAGE (real_cov) |FAGE (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:---------------|:------------|:---------------|:------------|:----------|
|1  |NA              |<32          |character       |character    |           |
|2  |<32             |NA           |character       |character    |           |
|3  |<32             |NA           |character       |character    |           |
|4  |NA              |<32          |character       |character    |           |
|5  |NA              |<32          |character       |character    |           |


#### Column -  FEDUCYRS
Showing sample of size 5



|   |FEDUCYRS (real_cov) |FEDUCYRS (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |Low                 |NA               |character       |character    |           |
|2  |Low                 |Medium           |character       |character    |           |
|3  |Medium              |Low              |character       |character    |           |
|4  |High                |Medium           |character       |character    |           |
|5  |High                |Low              |character       |character    |           |


#### Column -  FHTCM
Showing sample of size 5



|   |FHTCM (real_cov) |FHTCM (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:----------------|:-------------|:---------------|:------------|:----------|
|1  |NA               |>=167 cm      |character       |character    |           |
|2  |NA               |[162-167) cm  |character       |character    |           |
|3  |NA               |>=167 cm      |character       |character    |           |
|4  |>=167 cm         |NA            |character       |character    |           |
|5  |>=167 cm         |<162 cm       |character       |character    |           |


#### Column -  GAGEBRTH
Showing sample of size 5



|   |GAGEBRTH (real_cov) |GAGEBRTH (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |Early term          |NA               |character       |character    |           |
|2  |Full or late term   |Early term       |character       |character    |           |
|3  |Full or late term   |Early term       |character       |character    |           |
|4  |Full or late term   |Early term       |character       |character    |           |
|5  |NA                  |Preterm          |character       |character    |           |


#### Column -  HDLVRY
Showing sample of size 5



|   |HDLVRY (real_cov) |HDLVRY (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |NA                |1              |character       |character    |           |
|2  |NA                |1              |character       |character    |           |
|3  |0                 |NA             |character       |character    |           |
|4  |NA                |1              |character       |character    |           |
|5  |0                 |NA             |character       |character    |           |


#### Column -  HFOODSEC
Showing sample of size 5



|   |HFOODSEC (real_cov)  |HFOODSEC (covQI)     |Type (real_cov) |Type (covQI) |Difference |
|:--|:--------------------|:--------------------|:---------------|:------------|:----------|
|1  |Food Secure          |Mildly Food Insecure |character       |character    |           |
|2  |Food Secure          |Mildly Food Insecure |character       |character    |           |
|3  |NA                   |Food Insecure        |character       |character    |           |
|4  |Mildly Food Insecure |Food Secure          |character       |character    |           |
|5  |Mildly Food Insecure |NA                   |character       |character    |           |


#### Column -  HHWEALTH_QUART
Showing sample of size 5



|   |HHWEALTH_QUART (real_cov) |HHWEALTH_QUART (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-------------------------|:----------------------|:---------------|:------------|:----------|
|1  |NA                        |WealthQ1               |character       |character    |           |
|2  |NA                        |WealthQ3               |character       |character    |           |
|3  |NA                        |WealthQ2               |character       |character    |           |
|4  |WealthQ2                  |WealthQ1               |character       |character    |           |
|5  |NA                        |WealthQ1               |character       |character    |           |


#### Column -  ID
Showing sample of size 5



|   | ID (real_cov)|ID (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|-------------:|:----------|:---------------|:------------|:----------|
|1  |         24991|36334      |double          |character    |           |
|2  |         18192|29044      |double          |character    |           |
|3  |         18435|19896      |double          |character    |           |
|4  |         24852|16797      |double          |character    |           |
|5  |         22850|35679      |double          |character    |           |


#### Column -  IMPFLOOR
Showing sample of size 5



|   |IMPFLOOR (real_cov) |IMPFLOOR (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |0                   |NA               |character       |character    |           |
|2  |0                   |NA               |character       |character    |           |
|3  |1                   |0                |character       |character    |           |
|4  |0                   |NA               |character       |character    |           |
|5  |0                   |NA               |character       |character    |           |


#### Column -  IMPSAN
Showing sample of size 5



|   |IMPSAN (real_cov) |IMPSAN (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |1                 |0              |character       |character    |           |
|2  |NA                |0              |character       |character    |           |
|3  |1                 |NA             |character       |character    |           |
|4  |0                 |1              |character       |character    |           |
|5  |0                 |1              |character       |character    |           |


#### Column -  MAGE
Showing sample of size 5



|   |MAGE (real_cov) |MAGE (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:---------------|:------------|:---------------|:------------|:----------|
|1  |[20-30)         |>=30         |character       |character    |           |
|2  |<20             |>=30         |character       |character    |           |
|3  |<20             |>=30         |character       |character    |           |
|4  |>=30            |<20          |character       |character    |           |
|5  |[20-30)         |<20          |character       |character    |           |


#### Column -  MBMI
Showing sample of size 5



|   |MBMI (real_cov) |MBMI (covQI)  |Type (real_cov) |Type (covQI) |Difference |
|:--|:---------------|:-------------|:---------------|:------------|:----------|
|1  |Normal weight   |NA            |character       |character    |           |
|2  |NA              |Normal weight |character       |character    |           |
|3  |Underweight     |Normal weight |character       |character    |           |
|4  |NA              |Underweight   |character       |character    |           |
|5  |NA              |Underweight   |character       |character    |           |


#### Column -  MEASUREFREQ
Showing sample of size 5



|   |MEASUREFREQ (real_cov) |MEASUREFREQ (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:----------------------|:-------------------|:---------------|:------------|:----------|
|1  |monthly                |quarterly           |character       |character    |           |
|2  |quarterly              |yearly              |character       |character    |           |
|3  |monthly                |quarterly           |character       |character    |           |
|4  |quarterly              |monthly             |character       |character    |           |
|5  |yearly                 |quarterly           |character       |character    |           |


#### Column -  MEDUCYRS
Showing sample of size 5



|   |MEDUCYRS (real_cov) |MEDUCYRS (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |Medium              |Low              |character       |character    |           |
|2  |High                |Low              |character       |character    |           |
|3  |High                |Low              |character       |character    |           |
|4  |NA                  |Low              |character       |character    |           |
|5  |Medium              |Low              |character       |character    |           |


#### Column -  MHTCM
Showing sample of size 5



|   |MHTCM (real_cov) |MHTCM (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:----------------|:-------------|:---------------|:------------|:----------|
|1  |NA               |[151-155) cm  |character       |character    |           |
|2  |>=155 cm         |<151 cm       |character       |character    |           |
|3  |<151 cm          |>=155 cm      |character       |character    |           |
|4  |[151-155) cm     |<151 cm       |character       |character    |           |
|5  |NA               |>=155 cm      |character       |character    |           |


#### Column -  MONTH
Showing sample of size 5



|   |MONTH (real_cov) |MONTH (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:----------------|:-------------|:---------------|:------------|:----------|
|1  |6                |10            |character       |character    |           |
|2  |2                |10            |character       |character    |           |
|3  |9                |NA            |character       |character    |           |
|4  |6                |11            |character       |character    |           |
|5  |12               |2             |character       |character    |           |


#### Column -  MWTKG
Showing sample of size 5



|   |MWTKG (real_cov) |MWTKG (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:----------------|:-------------|:---------------|:------------|:----------|
|1  |<52 kg           |NA            |character       |character    |           |
|2  |NA               |<52 kg        |character       |character    |           |
|3  |NA               |<52 kg        |character       |character    |           |
|4  |>=58 kg          |<52 kg        |character       |character    |           |
|5  |<52 kg           |NA            |character       |character    |           |


#### Column -  NCHLDLT5
Showing sample of size 5



|   |NCHLDLT5 (real_cov) |NCHLDLT5 (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |2+                  |NA               |character       |character    |           |
|2  |2+                  |1                |character       |character    |           |
|3  |2+                  |1                |character       |character    |           |
|4  |2+                  |NA               |character       |character    |           |
|5  |NA                  |1                |character       |character    |           |


#### Column -  NHH
Showing sample of size 5



|   |NHH (real_cov) |NHH (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:--------------|:-----------|:---------------|:------------|:----------|
|1  |NA             |4-5         |character       |character    |           |
|2  |3 or less      |NA          |character       |character    |           |
|3  |6-7            |NA          |character       |character    |           |
|4  |NA             |6-7         |character       |character    |           |
|5  |NA             |8+          |character       |character    |           |


#### Column -  NROOMS
Showing sample of size 5



|   |NROOMS (real_cov) |NROOMS (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |NA                |2              |character       |character    |           |
|2  |4+                |1              |character       |character    |           |
|3  |1                 |NA             |character       |character    |           |
|4  |1                 |NA             |character       |character    |           |
|5  |1                 |2              |character       |character    |           |


#### Column -  PARITY
Showing sample of size 5



|   |PARITY (real_cov) |PARITY (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |NA                |3+             |character       |character    |           |
|2  |NA                |1              |character       |character    |           |
|3  |NA                |1              |character       |character    |           |
|4  |3+                |2              |character       |character    |           |
|5  |1                 |2              |character       |character    |           |


#### Column -  PERDIAR24
Showing sample of size 5



|   |PERDIAR24 (real_cov) |PERDIAR24 (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:--------------------|:-----------------|:---------------|:------------|:----------|
|1  |NA                   |>5%               |character       |character    |           |
|2  |[0%, 2%]             |NA                |character       |character    |           |
|3  |[0%, 2%]             |NA                |character       |character    |           |
|4  |NA                   |(0%, 5%]          |character       |character    |           |
|5  |>2%                  |NA                |character       |character    |           |


#### Column -  PERDIAR6
Showing sample of size 5



|   |PERDIAR6 (real_cov) |PERDIAR6 (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |[0%, 2%]            |NA               |character       |character    |           |
|2  |>2%                 |NA               |character       |character    |           |
|3  |>2%                 |NA               |character       |character    |           |
|4  |NA                  |>5%              |character       |character    |           |
|5  |>2%                 |NA               |character       |character    |           |


#### Column -  PERS_WAST
Showing sample of size 5



|   |PERS_WAST (real_cov) |PERS_WAST (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:--------------------|:-----------------|:---------------|:------------|:----------|
|1  |NA                   |1                 |character       |character    |           |
|2  |0                    |NA                |character       |character    |           |
|3  |NA                   |0                 |character       |character    |           |
|4  |0                    |NA                |character       |character    |           |
|5  |NA                   |0                 |character       |character    |           |


#### Column -  PREDEXFD6
Showing sample of size 5



|   |PREDEXFD6 (real_cov) |PREDEXFD6 (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:--------------------|:-----------------|:---------------|:------------|:----------|
|1  |NA                   |0                 |character       |character    |           |
|2  |1                    |NA                |character       |character    |           |
|3  |NA                   |0                 |character       |character    |           |
|4  |0                    |1                 |character       |character    |           |
|5  |NA                   |0                 |character       |character    |           |


#### Column -  REGION
Showing sample of size 5



|   |REGION (real_cov) |REGION (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |Africa            |South Asia     |character       |character    |           |
|2  |Europe            |South Asia     |character       |character    |           |
|3  |Africa            |South Asia     |character       |character    |           |
|4  |Africa            |South Asia     |character       |character    |           |
|5  |Africa            |South Asia     |character       |character    |           |


#### Column -  SEX
Showing sample of size 5



|   |SEX (real_cov) |SEX (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:--------------|:-----------|:---------------|:------------|:----------|
|1  |Male           |Female      |character       |character    |           |
|2  |Male           |Female      |character       |character    |           |
|3  |Female         |Male        |character       |character    |           |
|4  |Male           |Female      |character       |character    |           |
|5  |Female         |Male        |character       |character    |           |


#### Column -  SINGLE
Showing sample of size 5



|   |SINGLE (real_cov) |SINGLE (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |NA                |0              |character       |character    |           |
|2  |NA                |0              |character       |character    |           |
|3  |0                 |NA             |character       |character    |           |
|4  |NA                |0              |character       |character    |           |
|5  |1                 |0              |character       |character    |           |


#### Column -  STUDYID
Showing sample of size 5



|   |STUDYID (real_cov) |STUDYID (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |JiVitA-4           |JiVitA-3        |character       |character    |           |
|2  |iLiNS-DYAD-M       |COHORTS         |character       |character    |           |
|3  |Keneba             |JiVitA-3        |character       |character    |           |
|4  |MAL-ED             |JiVitA-3        |character       |character    |           |
|5  |iLiNS-DOSE         |COHORTS         |character       |character    |           |


#### Column -  SUBJID
Showing sample of size 5



|   |SUBJID (real_cov) |SUBJID (covQI)    |Type (real_cov) |Type (covQI) |Difference |
|:--|:-----------------|:-----------------|:---------------|:------------|:----------|
|1  |140551            |syn-TZC2-TZA-1784 |character       |character    |           |
|2  |200208            |syn-NCry-BGD-990  |character       |character    |           |
|3  |130293            |syn-Knba-GMB-472  |character       |character    |           |
|4  |737               |syn-JVT3-BGD-927  |character       |character    |           |
|5  |2257              |syn-PRBT-BLR-8156 |character       |character    |           |


#### Column -  TR
Showing sample of size 5



|   |TR (real_cov) |TR (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-------------|:----------|:---------------|:------------|:----------|
|1  |VitA          |           |character       |character    |           |
|2  |LNS           |Control    |character       |character    |           |
|3  |Other         |Maternal   |character       |character    |           |
|4  |Maternal      |Control    |character       |character    |           |
|5  |LNS           |           |character       |character    |           |


#### Column -  TRTH2O
Showing sample of size 5



|   |TRTH2O (real_cov) |TRTH2O (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |NA                |0              |character       |character    |           |
|2  |1                 |NA             |character       |character    |           |
|3  |0                 |NA             |character       |character    |           |
|4  |NA                |1              |character       |character    |           |
|5  |0                 |NA             |character       |character    |           |


#### Column -  VAGBRTH
Showing sample of size 5



|   |VAGBRTH (real_cov) |VAGBRTH (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |1                  |NA              |character       |character    |           |
|2  |NA                 |1               |character       |character    |           |
|3  |NA                 |1               |character       |character    |           |
|4  |1                  |NA              |character       |character    |           |
|5  |1                  |NA              |character       |character    |           |


#### Column -  W_BIRTHLEN
Showing sample of size 5



|   | W_BIRTHLEN (real_cov)| W_BIRTHLEN (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|---------------------:|------------------:|:---------------|:------------|----------:|
|1  |                    NA|               47.1|double          |double       |         NA|
|2  |                    NA|               51.0|double          |double       |         NA|
|3  |                  52.0|               46.0|double          |double       |        6.0|
|4  |                  48.7|                 NA|double          |double       |         NA|
|5  |                  51.0|               50.3|double          |double       |        0.7|


#### Column -  W_BIRTHWT
Showing sample of size 5



|   | W_BIRTHWT (real_cov)| W_BIRTHWT (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|--------------------:|-----------------:|:---------------|:------------|----------:|
|1  |                 2500|              2580|double          |double       |        -80|
|2  |                 3050|                NA|double          |double       |         NA|
|3  |                 3210|              2300|double          |double       |        910|
|4  |                   NA|              2100|double          |double       |         NA|
|5  |                 2450|              3170|double          |double       |       -720|


#### Column -  W_FAGE
Showing sample of size 5



|   | W_FAGE (real_cov)| W_FAGE (covQI)|Type (real_cov) |Type (covQI) |Difference |
|:--|-----------------:|--------------:|:---------------|:------------|:----------|
|1  |                25|             24|integer         |double       |           |
|2  |                NA|             NA|integer         |double       |           |
|3  |                NA|             NA|integer         |double       |           |
|4  |                NA|             NA|integer         |double       |           |
|5  |                NA|             NA|integer         |double       |           |


#### Column -  W_FEDUCYRS
Showing sample of size 5



|   | W_FEDUCYRS (real_cov)| W_FEDUCYRS (covQI)|Type (real_cov) |Type (covQI) |Difference |
|:--|---------------------:|------------------:|:---------------|:------------|:----------|
|1  |                    14|                 13|integer         |double       |           |
|2  |                     9|                  9|integer         |double       |           |
|3  |                     0|                  5|integer         |double       |           |
|4  |                    13|                  0|integer         |double       |           |
|5  |                    12|                 NA|integer         |double       |           |


#### Column -  W_FHTCM
Showing sample of size 5



|   | W_FHTCM (real_cov)| W_FHTCM (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|------------------:|---------------:|:---------------|:------------|----------:|
|1  |                 NA|           170.0|double          |double       |         NA|
|2  |                168|              NA|double          |double       |         NA|
|3  |                 NA|           165.4|double          |double       |         NA|
|4  |                 NA|           178.0|double          |double       |         NA|
|5  |                 NA|           182.0|double          |double       |         NA|


#### Column -  W_GAGEBRTH
Showing sample of size 5



|   | W_GAGEBRTH (real_cov)| W_GAGEBRTH (covQI)|Type (real_cov) |Type (covQI) |Difference |
|:--|---------------------:|------------------:|:---------------|:------------|:----------|
|1  |                   297|                 NA|integer         |double       |           |
|2  |                    NA|                 NA|integer         |double       |           |
|3  |                   296|                277|integer         |double       |           |
|4  |                   280|                280|integer         |double       |           |
|5  |                    NA|                 NA|integer         |double       |           |


#### Column -  W_MAGE
Showing sample of size 5



|   | W_MAGE (real_cov)| W_MAGE (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|-----------------:|--------------:|:---------------|:------------|----------:|
|1  |                26|             29|double          |double       |         -3|
|2  |                NA|             25|double          |double       |         NA|
|3  |                NA|             50|double          |double       |         NA|
|4  |                23|             24|double          |double       |         -1|
|5  |                33|             22|double          |double       |         11|


#### Column -  W_MBMI
Showing sample of size 5



|   | W_MBMI (real_cov)| W_MBMI (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|-----------------:|--------------:|:---------------|:------------|----------:|
|1  |                NA|       21.49566|double          |double       |         NA|
|2  |          14.80263|       20.88473|double          |double       | -6.0820943|
|3  |          28.01020|       21.93635|double          |double       |  6.0738526|
|4  |          16.94000|       24.62612|double          |double       | -7.6861222|
|5  |          24.34180|       25.20920|double          |double       | -0.8674014|


#### Column -  W_MEDUCYRS
Showing sample of size 5



|   | W_MEDUCYRS (real_cov)| W_MEDUCYRS (covQI)|Type (real_cov) |Type (covQI) |Difference |
|:--|---------------------:|------------------:|:---------------|:------------|:----------|
|1  |                     3|                  0|integer         |double       |           |
|2  |                     7|                 13|integer         |double       |           |
|3  |                     5|                  9|integer         |double       |           |
|4  |                     4|                  0|integer         |double       |           |
|5  |                     6|                  8|integer         |double       |           |


#### Column -  W_MHTCM
Showing sample of size 5



|   | W_MHTCM (real_cov)| W_MHTCM (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|------------------:|---------------:|:---------------|:------------|----------:|
|1  |              151.0|           145.6|double          |double       |        5.4|
|2  |              147.1|           175.2|double          |double       |      -28.1|
|3  |              157.8|              NA|double          |double       |         NA|
|4  |              142.7|           147.7|double          |double       |       -5.0|
|5  |              144.3|           143.9|double          |double       |        0.4|


#### Column -  W_MWTKG
Showing sample of size 5



|   | W_MWTKG (real_cov)| W_MWTKG (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|------------------:|---------------:|:---------------|:------------|----------:|
|1  |             55.600|         43.5978|double          |double       |    12.0022|
|2  |             50.600|         48.4000|double          |double       |     2.2000|
|3  |             62.633|              NA|double          |double       |         NA|
|4  |             40.800|         53.8920|double          |double       |   -13.0920|
|5  |             60.000|         40.0000|double          |double       |    20.0000|


#### Column -  W_NCHLDLT5
Showing sample of size 5



|   | W_NCHLDLT5 (real_cov)| W_NCHLDLT5 (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|---------------------:|------------------:|:---------------|:------------|----------:|
|1  |                     1|                  2|double          |double       |         -1|
|2  |                    NA|                  1|double          |double       |         NA|
|3  |                     1|                 NA|double          |double       |         NA|
|4  |                     1|                  2|double          |double       |         -1|
|5  |                     3|                 NA|double          |double       |         NA|


#### Column -  W_NHH
Showing sample of size 5



|   | W_NHH (real_cov)| W_NHH (covQI)|Type (real_cov) |Type (covQI) |Difference |
|:--|----------------:|-------------:|:---------------|:------------|:----------|
|1  |                2|            NA|integer         |double       |           |
|2  |               NA|            NA|integer         |double       |           |
|3  |               NA|            NA|integer         |double       |           |
|4  |               NA|            NA|integer         |double       |           |
|5  |               NA|            NA|integer         |double       |           |


#### Column -  W_NROOMS
Showing sample of size 5



|   | W_NROOMS (real_cov)| W_NROOMS (covQI)|Type (real_cov) |Type (covQI) |Difference |
|:--|-------------------:|----------------:|:---------------|:------------|:----------|
|1  |                  NA|               NA|integer         |double       |           |
|2  |                  NA|               NA|integer         |double       |           |
|3  |                   1|                2|integer         |double       |           |
|4  |                   2|                2|integer         |double       |           |
|5  |                  NA|               NA|integer         |double       |           |


#### Column -  W_PARITY
Showing sample of size 5



|   | W_PARITY (real_cov)| W_PARITY (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|-------------------:|----------------:|:---------------|:------------|----------:|
|1  |                   2|                1|double          |double       |          1|
|2  |                   2|                1|double          |double       |          1|
|3  |                   2|                3|double          |double       |         -1|
|4  |                   2|                1|double          |double       |          1|
|5  |                   6|               NA|double          |double       |         NA|


#### Column -  W_PERDIAR24
Showing sample of size 5



|   | W_PERDIAR24 (real_cov)| W_PERDIAR24 (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|----------------------:|-------------------:|:---------------|:------------|----------:|
|1  |              0.0442804|                  NA|double          |double       |         NA|
|2  |              0.0026738|                  NA|double          |double       |         NA|
|3  |              0.1445087|                  NA|double          |double       |         NA|
|4  |                     NA|           0.0657534|double          |double       |         NA|
|5  |              0.0228571|                  NA|double          |double       |         NA|


#### Column -  W_PERDIAR6
Showing sample of size 5



|   | W_PERDIAR6 (real_cov)| W_PERDIAR6 (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|---------------------:|------------------:|:---------------|:------------|----------:|
|1  |                    NA|          0.0000000|double          |double       |         NA|
|2  |                    NA|          0.0295858|double          |double       |         NA|
|3  |             0.0000000|                 NA|double          |double       |         NA|
|4  |             0.0824176|                 NA|double          |double       |         NA|
|5  |             0.0000000|                 NA|double          |double       |         NA|


