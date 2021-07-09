
Data Comparison
===============

Date comparison run: 2021-06-17 11:45:36  
Comparison run on R version 4.0.5 (2021-03-31)  
With dataCompareR version 0.1.3  


Meta Summary
============


|Dataset Name |Number of Rows |Number of Columns |
|:------------|:--------------|:-----------------|
|real_cov     |99630          |69                |
|covBC        |109680         |79                |


Variable Summary
================

Number of columns in common: 60  
Number of columns only in real_cov: 9  
Number of columns only in covBC: 19  
Number of columns with a type mismatch: 7  
No match key used, comparison is by row


Columns only in real_cov: DATEDEL, EXCLFEED3, EXCLFEED36, EXCLFEED6, PREDFEED3, PREDFEED36, PREDFEED6, SAFEH20, SES  
Columns only in covBC: AGEDAYS, AGEDTH, AGEMONTHS, BRTHWEEK, BRTHYR, CLUSTERID, COHORTID, CTRYCD, DEAD, EXCLUDE_DESC, HTCM, LATITUDE, LENCM, LONGITUD, SAFEH2O, SITEID, STUDYIDA, SYNTYPE, WTKG  
Columns in both : ANYWAST06, ARM, BIRTHLEN, BIRTHWT, BRTHMON, CLEANCK, COUNTRY, EARLYBF, ENSTUNT, ENWAST, FAGE, FEDUCYRS, FHTCM, GAGEBRTH, HDLVRY, HFOODSEC, HHWEALTH_QUART, ID, IMPFLOOR, IMPSAN, MAGE, MBMI, MEASUREFREQ, MEDUCYRS, MHTCM, MONTH, MWTKG, NCHLDLT5, NHH, NROOMS, PARITY, PERDIAR24, PERDIAR6, PERS_WAST, PREDEXFD6, REGION, SEX, SINGLE, STUDYID, SUBJID, TR, TRTH2O, VAGBRTH, W_BIRTHLEN, W_BIRTHWT, W_FAGE, W_FEDUCYRS, W_FHTCM, W_GAGEBRTH, W_MAGE, W_MBMI, W_MEDUCYRS, W_MHTCM, W_MWTKG, W_NCHLDLT5, W_NHH, W_NROOMS, W_PARITY, W_PERDIAR24, W_PERDIAR6  
Listing of Common Columns with Different Data Types
===================================================



|Column Name |Column Type (in real_cov) |Column Type (in covBC) |
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
Total number of rows read from covBC: 109680    
Number of rows in common: 99630  
Number of rows dropped from real_cov: 0  
Number of rows dropped from  covBC: 10050  


Data Values Comparison Summary
==============================

Number of columns compared with ALL rows equal: 0  
Number of columns compared with SOME rows unequal: 60  
Number of columns with missing value differences: 11  



Summary of columns with some rows unequal: 



|Column         |Type (in real_cov) |Type (in covBC) | # differences|Max difference    | # NAs|
|:--------------|:------------------|:---------------|-------------:|:-----------------|-----:|
|ANYWAST06      |character          |character       |         20267|NA                |     0|
|ARM            |character          |character       |         84358|NA                |     0|
|BIRTHLEN       |character          |character       |         66051|NA                |     0|
|BIRTHWT        |character          |character       |         49883|NA                |     0|
|BRTHMON        |character          |character       |         92395|NA                |     0|
|CLEANCK        |character          |character       |         17228|NA                |     0|
|COUNTRY        |character          |character       |         55514|NA                |     0|
|EARLYBF        |character          |character       |         39585|NA                |     0|
|ENSTUNT        |character          |character       |         46235|NA                |     0|
|ENWAST         |character          |character       |         46678|NA                |     0|
|FAGE           |character          |character       |         34035|NA                |     0|
|FEDUCYRS       |character          |character       |         64935|NA                |     0|
|FHTCM          |character          |character       |         22044|NA                |     0|
|GAGEBRTH       |character          |character       |         58143|NA                |     0|
|HDLVRY         |character          |character       |         28072|NA                |     0|
|HFOODSEC       |character          |character       |         36976|NA                |     0|
|HHWEALTH_QUART |character          |character       |         51224|NA                |     0|
|ID             |double             |character       |         99630|NA                |     0|
|IMPFLOOR       |character          |character       |         29251|NA                |     0|
|IMPSAN         |character          |character       |         49933|NA                |     0|
|MAGE           |character          |character       |         62311|NA                |     0|
|MBMI           |character          |character       |         58025|NA                |     0|
|MEASUREFREQ    |character          |character       |         35395|NA                |     0|
|MEDUCYRS       |character          |character       |         69541|NA                |     0|
|MHTCM          |character          |character       |         64561|NA                |     0|
|MONTH          |character          |character       |         92237|NA                |     0|
|MWTKG          |character          |character       |         63904|NA                |     0|
|NCHLDLT5       |character          |character       |         40590|NA                |     0|
|NHH            |character          |character       |          8243|NA                |     0|
|NROOMS         |character          |character       |         51454|NA                |     0|
|PARITY         |character          |character       |         60022|NA                |     0|
|PERDIAR24      |character          |character       |         25670|NA                |     0|
|PERDIAR6       |character          |character       |         10635|NA                |     0|
|PERS_WAST      |character          |character       |         18735|NA                |     0|
|PREDEXFD6      |character          |character       |         36964|NA                |     0|
|REGION         |character          |character       |         47011|NA                |     0|
|SEX            |character          |character       |         49699|NA                |     0|
|SINGLE         |character          |character       |         42515|NA                |     0|
|STUDYID        |character          |character       |         62978|NA                |     0|
|SUBJID         |character          |character       |         99630|NA                |     0|
|TR             |character          |character       |         74544|NA                |     0|
|TRTH2O         |character          |character       |          4218|NA                |     0|
|VAGBRTH        |character          |character       |         45213|NA                |     0|
|W_BIRTHLEN     |double             |double          |         84999|41.0062083866     | 43009|
|W_BIRTHWT      |double             |double          |         87577|4570              | 33847|
|W_FAGE         |integer            |double          |         99630|NA                |     0|
|W_FEDUCYRS     |integer            |double          |         99630|NA                |     0|
|W_FHTCM        |double             |double          |         26154|56                | 20250|
|W_GAGEBRTH     |integer            |double          |         99630|NA                |     0|
|W_MAGE         |double             |double          |         93253|54                | 18660|
|W_MBMI         |double             |double          |         90201|872.60496303202   | 43558|
|W_MEDUCYRS     |integer            |double          |         99630|NA                |     0|
|W_MHTCM        |double             |double          |         93202|126               | 36398|
|W_MWTKG        |double             |double          |         90708|127.88            | 42682|
|W_NCHLDLT5     |double             |double          |         41335|10                | 29244|
|W_NHH          |integer            |double          |         99630|NA                |     0|
|W_NROOMS       |integer            |double          |         99630|NA                |     0|
|W_PARITY       |double             |double          |         63764|17                | 34297|
|W_PERDIAR24    |double             |double          |         25666|0.579916495713847 | 22859|
|W_PERDIAR6     |double             |double          |         10637|0.585358833526014 | 10364|



Unequal column details
======================



#### Column -  ANYWAST06
Showing sample of size 5



|   |ANYWAST06 (real_cov) |ANYWAST06 (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:--------------------|:-----------------|:---------------|:------------|:----------|
|1  |0                    |NA                |character       |character    |           |
|2  |0                    |NA                |character       |character    |           |
|3  |NA                   |1                 |character       |character    |           |
|4  |NA                   |1                 |character       |character    |           |
|5  |NA                   |0                 |character       |character    |           |


#### Column -  ARM
Showing sample of size 5



|   |ARM (real_cov)                      |ARM (covBC)   |Type (real_cov) |Type (covBC) |Difference |
|:--|:-----------------------------------|:-------------|:---------------|:------------|:----------|
|1  |Vitamin A                           |Control group |character       |character    |           |
|2  |Iron Folic Acid                     |LNS-40gM      |character       |character    |           |
|3  |e.Control                           |NA            |character       |character    |           |
|4  |50,000 IU nippled + 400,000 IU Oval |Intervention  |character       |character    |           |
|5  |                                    |NA            |character       |character    |           |


#### Column -  BIRTHLEN
Showing sample of size 5



|   |BIRTHLEN (real_cov) |BIRTHLEN (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |<48 cm              |NA               |character       |character    |           |
|2  |>=50 cm             |NA               |character       |character    |           |
|3  |NA                  |>=50 cm          |character       |character    |           |
|4  |[48-50) cm          |<48 cm           |character       |character    |           |
|5  |[48-50) cm          |>=50 cm          |character       |character    |           |


#### Column -  BIRTHWT
Showing sample of size 5



|   |BIRTHWT (real_cov)         |BIRTHWT (covBC)            |Type (real_cov) |Type (covBC) |Difference |
|:--|:--------------------------|:--------------------------|:---------------|:------------|:----------|
|1  |Normal or high birthweight |NA                         |character       |character    |           |
|2  |NA                         |Normal or high birthweight |character       |character    |           |
|3  |Low birthweight            |NA                         |character       |character    |           |
|4  |Normal or high birthweight |Low birthweight            |character       |character    |           |
|5  |Normal or high birthweight |NA                         |character       |character    |           |


#### Column -  BRTHMON
Showing sample of size 5



|   |BRTHMON (real_cov) |BRTHMON (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |9                  |4               |character       |character    |           |
|2  |7                  |NA              |character       |character    |           |
|3  |9                  |12              |character       |character    |           |
|4  |2                  |4               |character       |character    |           |
|5  |12                 |2               |character       |character    |           |


#### Column -  CLEANCK
Showing sample of size 5



|   |CLEANCK (real_cov) |CLEANCK (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |0                  |NA              |character       |character    |           |
|2  |0                  |NA              |character       |character    |           |
|3  |0                  |NA              |character       |character    |           |
|4  |1                  |NA              |character       |character    |           |
|5  |0                  |NA              |character       |character    |           |


#### Column -  COUNTRY
Showing sample of size 5



|   |COUNTRY (real_cov)           |COUNTRY (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:----------------------------|:---------------|:---------------|:------------|:----------|
|1  |BELARUS                      |SOUTH AFRICA    |character       |character    |           |
|2  |BURKINA FASO                 |INDIA           |character       |character    |           |
|3  |TANZANIA, UNITED REPUBLIC OF |BANGLADESH      |character       |character    |           |
|4  |BANGLADESH                   |BELARUS         |character       |character    |           |
|5  |MALAWI                       |INDIA           |character       |character    |           |


#### Column -  EARLYBF
Showing sample of size 5



|   |EARLYBF (real_cov) |EARLYBF (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |0                  |NA              |character       |character    |           |
|2  |0                  |NA              |character       |character    |           |
|3  |NA                 |0               |character       |character    |           |
|4  |NA                 |1               |character       |character    |           |
|5  |0                  |1               |character       |character    |           |


#### Column -  ENSTUNT
Showing sample of size 5



|   |ENSTUNT (real_cov) |ENSTUNT (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |0                  |1               |character       |character    |           |
|2  |0                  |NA              |character       |character    |           |
|3  |NA                 |0               |character       |character    |           |
|4  |0                  |1               |character       |character    |           |
|5  |NA                 |1               |character       |character    |           |


#### Column -  ENWAST
Showing sample of size 5



|   |ENWAST (real_cov) |ENWAST (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |0                 |NA             |character       |character    |           |
|2  |NA                |1              |character       |character    |           |
|3  |NA                |0              |character       |character    |           |
|4  |NA                |1              |character       |character    |           |
|5  |NA                |0              |character       |character    |           |


#### Column -  FAGE
Showing sample of size 5



|   |FAGE (real_cov) |FAGE (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:---------------|:------------|:---------------|:------------|:----------|
|1  |NA              |<32          |character       |character    |           |
|2  |<32             |>=38         |character       |character    |           |
|3  |<32             |NA           |character       |character    |           |
|4  |<32             |NA           |character       |character    |           |
|5  |[32-38)         |NA           |character       |character    |           |


#### Column -  FEDUCYRS
Showing sample of size 5



|   |FEDUCYRS (real_cov) |FEDUCYRS (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |Low                 |High             |character       |character    |           |
|2  |Medium              |Low              |character       |character    |           |
|3  |Medium              |High             |character       |character    |           |
|4  |Low                 |Medium           |character       |character    |           |
|5  |Low                 |NA               |character       |character    |           |


#### Column -  FHTCM
Showing sample of size 5



|   |FHTCM (real_cov) |FHTCM (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:----------------|:-------------|:---------------|:------------|:----------|
|1  |NA               |<162 cm       |character       |character    |           |
|2  |<162 cm          |NA            |character       |character    |           |
|3  |<162 cm          |NA            |character       |character    |           |
|4  |NA               |>=167 cm      |character       |character    |           |
|5  |>=167 cm         |NA            |character       |character    |           |


#### Column -  GAGEBRTH
Showing sample of size 5



|   |GAGEBRTH (real_cov) |GAGEBRTH (covBC)  |Type (real_cov) |Type (covBC) |Difference |
|:--|:-------------------|:-----------------|:---------------|:------------|:----------|
|1  |NA                  |Full or late term |character       |character    |           |
|2  |NA                  |Preterm           |character       |character    |           |
|3  |Full or late term   |Early term        |character       |character    |           |
|4  |NA                  |Full or late term |character       |character    |           |
|5  |NA                  |Early term        |character       |character    |           |


#### Column -  HDLVRY
Showing sample of size 5



|   |HDLVRY (real_cov) |HDLVRY (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |NA                |0              |character       |character    |           |
|2  |NA                |0              |character       |character    |           |
|3  |NA                |1              |character       |character    |           |
|4  |NA                |1              |character       |character    |           |
|5  |0                 |NA             |character       |character    |           |


#### Column -  HFOODSEC
Showing sample of size 5



|   |HFOODSEC (real_cov) |HFOODSEC (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |NA                  |Food Secure      |character       |character    |           |
|2  |Food Insecure       |NA               |character       |character    |           |
|3  |Food Secure         |NA               |character       |character    |           |
|4  |NA                  |Food Secure      |character       |character    |           |
|5  |Food Insecure       |Food Secure      |character       |character    |           |


#### Column -  HHWEALTH_QUART
Showing sample of size 5



|   |HHWEALTH_QUART (real_cov) |HHWEALTH_QUART (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-------------------------|:----------------------|:---------------|:------------|:----------|
|1  |NA                        |WealthQ3               |character       |character    |           |
|2  |WealthQ4                  |WealthQ2               |character       |character    |           |
|3  |WealthQ1                  |NA                     |character       |character    |           |
|4  |WealthQ1                  |NA                     |character       |character    |           |
|5  |WealthQ4                  |NA                     |character       |character    |           |


#### Column -  ID
Showing sample of size 5



|   | ID (real_cov)|ID (covBC)        |Type (real_cov) |Type (covBC) |Difference |
|:--|-------------:|:-----------------|:---------------|:------------|:----------|
|1  |         21729|syn-CORT-PHL-311  |double          |character    |           |
|2  |         20323|36383             |double          |character    |           |
|3  |         30561|syn-CORT-IND-4597 |double          |character    |           |
|4  |         18219|11302             |double          |character    |           |
|5  |         23546|syn-CORT-IND-5932 |double          |character    |           |


#### Column -  IMPFLOOR
Showing sample of size 5



|   |IMPFLOOR (real_cov) |IMPFLOOR (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |0                   |NA               |character       |character    |           |
|2  |0                   |NA               |character       |character    |           |
|3  |0                   |NA               |character       |character    |           |
|4  |NA                  |1                |character       |character    |           |
|5  |1                   |NA               |character       |character    |           |


#### Column -  IMPSAN
Showing sample of size 5



|   |IMPSAN (real_cov) |IMPSAN (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |NA                |0              |character       |character    |           |
|2  |0                 |1              |character       |character    |           |
|3  |0                 |NA             |character       |character    |           |
|4  |0                 |NA             |character       |character    |           |
|5  |NA                |1              |character       |character    |           |


#### Column -  MAGE
Showing sample of size 5



|   |MAGE (real_cov) |MAGE (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:---------------|:------------|:---------------|:------------|:----------|
|1  |NA              |>=30         |character       |character    |           |
|2  |[20-30)         |<20          |character       |character    |           |
|3  |[20-30)         |<20          |character       |character    |           |
|4  |[20-30)         |<20          |character       |character    |           |
|5  |NA              |<20          |character       |character    |           |


#### Column -  MBMI
Showing sample of size 5



|   |MBMI (real_cov) |MBMI (covBC)  |Type (real_cov) |Type (covBC) |Difference |
|:--|:---------------|:-------------|:---------------|:------------|:----------|
|1  |Normal weight   |Underweight   |character       |character    |           |
|2  |Underweight     |Normal weight |character       |character    |           |
|3  |NA              |Underweight   |character       |character    |           |
|4  |NA              |Underweight   |character       |character    |           |
|5  |NA              |Normal weight |character       |character    |           |


#### Column -  MEASUREFREQ
Showing sample of size 5



|   |MEASUREFREQ (real_cov) |MEASUREFREQ (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:----------------------|:-------------------|:---------------|:------------|:----------|
|1  |quarterly              |yearly              |character       |character    |           |
|2  |quarterly              |monthly             |character       |character    |           |
|3  |yearly                 |quarterly           |character       |character    |           |
|4  |quarterly              |yearly              |character       |character    |           |
|5  |yearly                 |quarterly           |character       |character    |           |


#### Column -  MEDUCYRS
Showing sample of size 5



|   |MEDUCYRS (real_cov) |MEDUCYRS (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |Medium              |NA               |character       |character    |           |
|2  |NA                  |Low              |character       |character    |           |
|3  |Low                 |High             |character       |character    |           |
|4  |Medium              |Low              |character       |character    |           |
|5  |High                |Medium           |character       |character    |           |


#### Column -  MHTCM
Showing sample of size 5



|   |MHTCM (real_cov) |MHTCM (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:----------------|:-------------|:---------------|:------------|:----------|
|1  |NA               |<151 cm       |character       |character    |           |
|2  |NA               |>=155 cm      |character       |character    |           |
|3  |<151 cm          |>=155 cm      |character       |character    |           |
|4  |>=155 cm         |NA            |character       |character    |           |
|5  |>=155 cm         |NA            |character       |character    |           |


#### Column -  MONTH
Showing sample of size 5



|   |MONTH (real_cov) |MONTH (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:----------------|:-------------|:---------------|:------------|:----------|
|1  |8                |10            |character       |character    |           |
|2  |5                |12            |character       |character    |           |
|3  |1                |11            |character       |character    |           |
|4  |6                |10            |character       |character    |           |
|5  |9                |11            |character       |character    |           |


#### Column -  MWTKG
Showing sample of size 5



|   |MWTKG (real_cov) |MWTKG (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:----------------|:-------------|:---------------|:------------|:----------|
|1  |NA               |>=58 kg       |character       |character    |           |
|2  |>=58 kg          |NA            |character       |character    |           |
|3  |<52 kg           |NA            |character       |character    |           |
|4  |>=58 kg          |NA            |character       |character    |           |
|5  |[52-58) kg       |<52 kg        |character       |character    |           |


#### Column -  NCHLDLT5
Showing sample of size 5



|   |NCHLDLT5 (real_cov) |NCHLDLT5 (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |2+                  |1                |character       |character    |           |
|2  |NA                  |2+               |character       |character    |           |
|3  |2+                  |1                |character       |character    |           |
|4  |1                   |NA               |character       |character    |           |
|5  |NA                  |1                |character       |character    |           |


#### Column -  NHH
Showing sample of size 5



|   |NHH (real_cov) |NHH (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:--------------|:-----------|:---------------|:------------|:----------|
|1  |NA             |4-5         |character       |character    |           |
|2  |4-5            |NA          |character       |character    |           |
|3  |3 or less      |NA          |character       |character    |           |
|4  |8+             |NA          |character       |character    |           |
|5  |NA             |3 or less   |character       |character    |           |


#### Column -  NROOMS
Showing sample of size 5



|   |NROOMS (real_cov) |NROOMS (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |4+                |NA             |character       |character    |           |
|2  |2                 |1              |character       |character    |           |
|3  |NA                |1              |character       |character    |           |
|4  |1                 |NA             |character       |character    |           |
|5  |1                 |2              |character       |character    |           |


#### Column -  PARITY
Showing sample of size 5



|   |PARITY (real_cov) |PARITY (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |3+                |1              |character       |character    |           |
|2  |1                 |3+             |character       |character    |           |
|3  |1                 |2              |character       |character    |           |
|4  |3+                |2              |character       |character    |           |
|5  |1                 |3+             |character       |character    |           |


#### Column -  PERDIAR24
Showing sample of size 5



|   |PERDIAR24 (real_cov) |PERDIAR24 (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:--------------------|:-----------------|:---------------|:------------|:----------|
|1  |NA                   |(0%, 5%]          |character       |character    |           |
|2  |[0%, 2%]             |NA                |character       |character    |           |
|3  |[0%, 2%]             |NA                |character       |character    |           |
|4  |NA                   |(0%, 5%]          |character       |character    |           |
|5  |NA                   |(0%, 5%]          |character       |character    |           |


#### Column -  PERDIAR6
Showing sample of size 5



|   |PERDIAR6 (real_cov) |PERDIAR6 (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |[0%, 2%]            |NA               |character       |character    |           |
|2  |[0%, 2%]            |NA               |character       |character    |           |
|3  |NA                  |0%               |character       |character    |           |
|4  |[0%, 2%]            |NA               |character       |character    |           |
|5  |NA                  |0%               |character       |character    |           |


#### Column -  PERS_WAST
Showing sample of size 5



|   |PERS_WAST (real_cov) |PERS_WAST (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:--------------------|:-----------------|:---------------|:------------|:----------|
|1  |0                    |NA                |character       |character    |           |
|2  |0                    |NA                |character       |character    |           |
|3  |NA                   |0                 |character       |character    |           |
|4  |NA                   |0                 |character       |character    |           |
|5  |0                    |NA                |character       |character    |           |


#### Column -  PREDEXFD6
Showing sample of size 5



|   |PREDEXFD6 (real_cov) |PREDEXFD6 (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:--------------------|:-----------------|:---------------|:------------|:----------|
|1  |NA                   |1                 |character       |character    |           |
|2  |NA                   |1                 |character       |character    |           |
|3  |NA                   |1                 |character       |character    |           |
|4  |1                    |NA                |character       |character    |           |
|5  |1                    |NA                |character       |character    |           |


#### Column -  REGION
Showing sample of size 5



|   |REGION (real_cov) |REGION (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |South Asia        |Africa         |character       |character    |           |
|2  |South Asia        |Africa         |character       |character    |           |
|3  |South Asia        |Latin America  |character       |character    |           |
|4  |Europe            |South Asia     |character       |character    |           |
|5  |Africa            |South Asia     |character       |character    |           |


#### Column -  SEX
Showing sample of size 5



|   |SEX (real_cov) |SEX (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:--------------|:-----------|:---------------|:------------|:----------|
|1  |Female         |Male        |character       |character    |           |
|2  |Male           |Female      |character       |character    |           |
|3  |Male           |Female      |character       |character    |           |
|4  |Male           |Female      |character       |character    |           |
|5  |Male           |Female      |character       |character    |           |


#### Column -  SINGLE
Showing sample of size 5



|   |SINGLE (real_cov) |SINGLE (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |0                 |NA             |character       |character    |           |
|2  |NA                |0              |character       |character    |           |
|3  |0                 |NA             |character       |character    |           |
|4  |NA                |0              |character       |character    |           |
|5  |NA                |1              |character       |character    |           |


#### Column -  STUDYID
Showing sample of size 5



|   |STUDYID (real_cov) |STUDYID (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |JiVitA-4           |JiVitA-3        |character       |character    |           |
|2  |iLiNS-Zinc         |COHORTS         |character       |character    |           |
|3  |JiVitA-3           |COHORTS         |character       |character    |           |
|4  |MAL-ED             |JiVitA-4        |character       |character    |           |
|5  |TanzaniaChild2     |PROBIT          |character       |character    |           |


#### Column -  SUBJID
Showing sample of size 5



|   |SUBJID (real_cov) |SUBJID (covBC)     |Type (real_cov) |Type (covBC) |Difference |
|:--|:-----------------|:------------------|:---------------|:------------|:----------|
|1  |60553             |syn-JVT4-BGD-5150  |character       |character    |           |
|2  |11987             |syn-JVT3-BGD-10985 |character       |character    |           |
|3  |1034              |syn-PRBT-BLR-7055  |character       |character    |           |
|4  |3943              |syn-PRBT-BLR-9674  |character       |character    |           |
|5  |216751            |syn-ZVIT-ZWE-11363 |character       |character    |           |


#### Column -  TR
Showing sample of size 5



|   |TR (real_cov) |TR (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-------------|:----------|:---------------|:------------|:----------|
|1  |Maternal      |Control    |character       |character    |           |
|2  |Maternal      |Other      |character       |character    |           |
|3  |Control       |           |character       |character    |           |
|4  |Control       |           |character       |character    |           |
|5  |Control       |           |character       |character    |           |


#### Column -  TRTH2O
Showing sample of size 5



|   |TRTH2O (real_cov) |TRTH2O (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |NA                |0              |character       |character    |           |
|2  |1                 |NA             |character       |character    |           |
|3  |NA                |0              |character       |character    |           |
|4  |0                 |NA             |character       |character    |           |
|5  |0                 |NA             |character       |character    |           |


#### Column -  VAGBRTH
Showing sample of size 5



|   |VAGBRTH (real_cov) |VAGBRTH (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |0                  |1               |character       |character    |           |
|2  |NA                 |1               |character       |character    |           |
|3  |NA                 |1               |character       |character    |           |
|4  |NA                 |1               |character       |character    |           |
|5  |1                  |NA              |character       |character    |           |


#### Column -  W_BIRTHLEN
Showing sample of size 5



|   | W_BIRTHLEN (real_cov)| W_BIRTHLEN (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|---------------------:|------------------:|:---------------|:------------|----------:|
|1  |                  52.0|           45.00483|double          |double       |   6.995169|
|2  |                  49.8|           43.90000|double          |double       |   5.900000|
|3  |                    NA|           52.00000|double          |double       |         NA|
|4  |                  49.5|           52.00000|double          |double       |  -2.500000|
|5  |                  49.0|           49.50000|double          |double       |  -0.500000|


#### Column -  W_BIRTHWT
Showing sample of size 5



|   | W_BIRTHWT (real_cov)| W_BIRTHWT (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|--------------------:|-----------------:|:---------------|:------------|----------:|
|1  |                 4360|          3045.000|double          |double       |  1315.0000|
|2  |                 2470|          3240.000|double          |double       |  -770.0000|
|3  |                 3432|          2601.582|double          |double       |   830.4176|
|4  |                 3400|          2940.000|double          |double       |   460.0000|
|5  |                 2370|                NA|double          |double       |         NA|


#### Column -  W_FAGE
Showing sample of size 5



|   | W_FAGE (real_cov)| W_FAGE (covBC)|Type (real_cov) |Type (covBC) |Difference |
|:--|-----------------:|--------------:|:---------------|:------------|:----------|
|1  |                27|             NA|integer         |double       |           |
|2  |                27|             NA|integer         |double       |           |
|3  |                34|             NA|integer         |double       |           |
|4  |                NA|             NA|integer         |double       |           |
|5  |                NA|             25|integer         |double       |           |


#### Column -  W_FEDUCYRS
Showing sample of size 5



|   | W_FEDUCYRS (real_cov)| W_FEDUCYRS (covBC)|Type (real_cov) |Type (covBC) |Difference |
|:--|---------------------:|------------------:|:---------------|:------------|:----------|
|1  |                     5|                 NA|integer         |double       |           |
|2  |                    12|                 12|integer         |double       |           |
|3  |                    NA|                 NA|integer         |double       |           |
|4  |                    NA|                 NA|integer         |double       |           |
|5  |                     5|                 NA|integer         |double       |           |


#### Column -  W_FHTCM
Showing sample of size 5



|   | W_FHTCM (real_cov)| W_FHTCM (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|------------------:|---------------:|:---------------|:------------|----------:|
|1  |                180|              NA|double          |double       |         NA|
|2  |                 NA|             178|double          |double       |         NA|
|3  |                181|             176|double          |double       |          5|
|4  |                170|             182|double          |double       |        -12|
|5  |                 NA|             154|double          |double       |         NA|


#### Column -  W_GAGEBRTH
Showing sample of size 5



|   | W_GAGEBRTH (real_cov)| W_GAGEBRTH (covBC)|Type (real_cov) |Type (covBC) |Difference |
|:--|---------------------:|------------------:|:---------------|:------------|:----------|
|1  |                   268|                 NA|integer         |double       |           |
|2  |                   283|                270|integer         |double       |           |
|3  |                    NA|                 NA|integer         |double       |           |
|4  |                    NA|                 NA|integer         |double       |           |
|5  |                    NA|                 NA|integer         |double       |           |


#### Column -  W_MAGE
Showing sample of size 5



|   | W_MAGE (real_cov)| W_MAGE (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|-----------------:|--------------:|:---------------|:------------|----------:|
|1  |                17|             24|double          |double       |         -7|
|2  |                24|             27|double          |double       |         -3|
|3  |                19|             18|double          |double       |          1|
|4  |                15|             20|double          |double       |         -5|
|5  |                27|             20|double          |double       |          7|


#### Column -  W_MBMI
Showing sample of size 5



|   | W_MBMI (real_cov)| W_MBMI (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|-----------------:|--------------:|:---------------|:------------|----------:|
|1  |           21.3599|       26.58918|double          |double       |  -5.229283|
|2  |           20.5400|       21.27656|double          |double       |  -0.736558|
|3  |           18.0951|       24.52839|double          |double       |  -6.433293|
|4  |                NA|       26.35372|double          |double       |         NA|
|5  |           21.5858|       22.77319|double          |double       |  -1.187386|


#### Column -  W_MEDUCYRS
Showing sample of size 5



|   | W_MEDUCYRS (real_cov)| W_MEDUCYRS (covBC)|Type (real_cov) |Type (covBC) |Difference |
|:--|---------------------:|------------------:|:---------------|:------------|:----------|
|1  |                     8|                  0|integer         |double       |           |
|2  |                     0|                  7|integer         |double       |           |
|3  |                     0|                  8|integer         |double       |           |
|4  |                    15|                  2|integer         |double       |           |
|5  |                     0|                  0|integer         |double       |           |


#### Column -  W_MHTCM
Showing sample of size 5



|   | W_MHTCM (real_cov)| W_MHTCM (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|------------------:|---------------:|:---------------|:------------|----------:|
|1  |                 NA|           161.5|double          |double       |         NA|
|2  |              149.5|           160.8|double          |double       |      -11.3|
|3  |                 NA|           160.0|double          |double       |         NA|
|4  |              169.6|              NA|double          |double       |         NA|
|5  |              159.9|              NA|double          |double       |         NA|


#### Column -  W_MWTKG
Showing sample of size 5



|   | W_MWTKG (real_cov)| W_MWTKG (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|------------------:|---------------:|:---------------|:------------|----------:|
|1  |               92.3|              NA|double          |double       |         NA|
|2  |               34.8|          42.044|double          |double       |     -7.244|
|3  |                 NA|          69.000|double          |double       |         NA|
|4  |               57.0|              NA|double          |double       |         NA|
|5  |               82.0|          56.000|double          |double       |     26.000|


#### Column -  W_NCHLDLT5
Showing sample of size 5



|   | W_NCHLDLT5 (real_cov)| W_NCHLDLT5 (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|---------------------:|------------------:|:---------------|:------------|----------:|
|1  |                     2|                 NA|double          |double       |         NA|
|2  |                     1|                 NA|double          |double       |         NA|
|3  |                    NA|                  1|double          |double       |         NA|
|4  |                     2|                 NA|double          |double       |         NA|
|5  |                     1|                  2|double          |double       |         -1|


#### Column -  W_NHH
Showing sample of size 5



|   | W_NHH (real_cov)| W_NHH (covBC)|Type (real_cov) |Type (covBC) |Difference |
|:--|----------------:|-------------:|:---------------|:------------|:----------|
|1  |               NA|            NA|integer         |double       |           |
|2  |               NA|            NA|integer         |double       |           |
|3  |               NA|            NA|integer         |double       |           |
|4  |               NA|            NA|integer         |double       |           |
|5  |               NA|            NA|integer         |double       |           |


#### Column -  W_NROOMS
Showing sample of size 5



|   | W_NROOMS (real_cov)| W_NROOMS (covBC)|Type (real_cov) |Type (covBC) |Difference |
|:--|-------------------:|----------------:|:---------------|:------------|:----------|
|1  |                  NA|                1|integer         |double       |           |
|2  |                  NA|                1|integer         |double       |           |
|3  |                  NA|               NA|integer         |double       |           |
|4  |                   1|                2|integer         |double       |           |
|5  |                   3|                4|integer         |double       |           |


#### Column -  W_PARITY
Showing sample of size 5



|   | W_PARITY (real_cov)| W_PARITY (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|-------------------:|----------------:|:---------------|:------------|----------:|
|1  |                   1|                5|double          |double       |         -4|
|2  |                  NA|                3|double          |double       |         NA|
|3  |                  NA|                3|double          |double       |         NA|
|4  |                  NA|                3|double          |double       |         NA|
|5  |                  NA|                1|double          |double       |         NA|


#### Column -  W_PERDIAR24
Showing sample of size 5



|   | W_PERDIAR24 (real_cov)| W_PERDIAR24 (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|----------------------:|-------------------:|:---------------|:------------|----------:|
|1  |                     NA|           0.0000144|double          |double       |         NA|
|2  |                     NA|           0.0069831|double          |double       |         NA|
|3  |                     NA|           0.0089336|double          |double       |         NA|
|4  |                     NA|           0.0000003|double          |double       |         NA|
|5  |                     NA|           0.0081077|double          |double       |         NA|


#### Column -  W_PERDIAR6
Showing sample of size 5



|   | W_PERDIAR6 (real_cov)| W_PERDIAR6 (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|---------------------:|------------------:|:---------------|:------------|----------:|
|1  |                    NA|          0.0000000|double          |double       |         NA|
|2  |                    NA|          0.0000000|double          |double       |         NA|
|3  |             0.0054945|                 NA|double          |double       |         NA|
|4  |                    NA|          0.0000000|double          |double       |         NA|
|5  |                    NA|          0.0329628|double          |double       |         NA|


