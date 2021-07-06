
Data Comparison
===============

Date comparison run: 2021-07-05 10:04:33  
Comparison run on R version 4.1.0 (2021-05-18)  
With dataCompareR version 0.1.3  


Meta Summary
============


|Dataset Name |Number of Rows |Number of Columns |
|:------------|:--------------|:-----------------|
|real_cov     |109680         |79                |
|covBC        |109680         |79                |


Variable Summary
================

Number of columns in common: 79  
Number of columns only in real_cov: 0  
Number of columns only in covBC: 0  
Number of columns with a type mismatch: 0  
No match key used, comparison is by row



Row Summary
===========

Total number of rows read from real_cov: 109680  
Total number of rows read from covBC: 109680    
Number of rows in common: 109680  
Number of rows dropped from real_cov: 0  
Number of rows dropped from  covBC: 0  


Data Values Comparison Summary
==============================

Number of columns compared with ALL rows equal: 3  
Number of columns compared with SOME rows unequal: 76  
Number of columns with missing value differences: 24  

Columns with all rows equal : MEASUREFREQ, STUDYID, STUDYIDA

Summary of columns with some rows unequal: 



|Column         |Type (in real_cov) |Type (in covBC) | # differences|Max difference    | # NAs|
|:--------------|:------------------|:---------------|-------------:|:-----------------|-----:|
|AGEDAYS        |double             |double          |         51299|6489              |     0|
|AGEDTH         |double             |double          |          4787|4907              |  4649|
|AGEMONTHS      |double             |double          |         51299|213.336752507668  |     0|
|ANYWAST06      |character          |character       |          4215|NA                |     0|
|ARM            |character          |character       |         55091|NA                |     0|
|BIRTHLEN       |character          |character       |         47375|NA                |     0|
|BIRTHWT        |character          |character       |         33555|NA                |     0|
|BRTHMON        |character          |character       |         87303|NA                |     0|
|BRTHWEEK       |double             |double          |         92646|52                |  2274|
|BRTHYR         |double             |double          |         51683|24                |  2274|
|CLEANCK        |character          |character       |          2535|NA                |     0|
|CLUSTERID      |integer            |integer         |         53450|42773             |   186|
|COHORTID       |character          |character       |          1840|NA                |     0|
|COUNTRY        |character          |character       |          1840|NA                |     0|
|CTRYCD         |character          |character       |          1840|NA                |     0|
|DEAD           |character          |character       |          7314|NA                |     0|
|EARLYBF        |character          |character       |         14108|NA                |     0|
|ENSTUNT        |character          |character       |         31624|NA                |     0|
|ENWAST         |character          |character       |         36781|NA                |     0|
|EXCLUDE_DESC   |character          |character       |         28574|NA                |     0|
|FAGE           |character          |character       |         13521|NA                |     0|
|FEDUCYRS       |character          |character       |         56341|NA                |     0|
|FHTCM          |character          |character       |         12257|NA                |     0|
|GAGEBRTH       |character          |character       |         37394|NA                |     0|
|HDLVRY         |character          |character       |         11197|NA                |     0|
|HFOODSEC       |character          |character       |         26814|NA                |     0|
|HHWEALTH_QUART |character          |character       |         36633|NA                |     0|
|HTCM           |double             |double          |          2855|88                |  1152|
|ID             |character          |character       |        108533|NA                |     0|
|IMPFLOOR       |character          |character       |          8090|NA                |     0|
|IMPSAN         |character          |character       |         28250|NA                |     0|
|LATITUDE       |double             |double          |          3271|50.47             |     0|
|LENCM          |double             |double          |         94628|45.3              |  5178|
|LONGITUD       |double             |double          |          3016|163.62            |     0|
|MAGE           |character          |character       |         57053|NA                |     0|
|MBMI           |character          |character       |         32943|NA                |     0|
|MEDUCYRS       |character          |character       |         64497|NA                |     0|
|MHTCM          |character          |character       |         53812|NA                |     0|
|MONTH          |character          |character       |         86833|NA                |     0|
|MWTKG          |character          |character       |         39453|NA                |     0|
|NCHLDLT5       |character          |character       |         17805|NA                |     0|
|NHH            |character          |character       |          3087|NA                |     0|
|NROOMS         |character          |character       |         31312|NA                |     0|
|PARITY         |character          |character       |         46662|NA                |     0|
|PERDIAR24      |character          |character       |          6848|NA                |     0|
|PERDIAR6       |character          |character       |          2928|NA                |     0|
|PERS_WAST      |character          |character       |          2681|NA                |     0|
|PREDEXFD6      |character          |character       |         25246|NA                |     0|
|REGION         |character          |character       |          1520|NA                |     0|
|SAFEH2O        |character          |character       |          6641|NA                |     0|
|SEX            |character          |character       |         54770|NA                |     0|
|SINGLE         |character          |character       |          9496|NA                |     0|
|SITEID         |character          |character       |        109680|NA                |     0|
|SUBJID         |character          |character       |        109680|NA                |     0|
|SYNTYPE        |character          |character       |        109680|NA                |     0|
|TR             |character          |character       |         39832|NA                |     0|
|TRTH2O         |character          |character       |          1490|NA                |     0|
|VAGBRTH        |character          |character       |         12671|NA                |     0|
|W_BIRTHLEN     |double             |double          |         80391|28.4              | 15486|
|W_BIRTHWT      |double             |double          |         86684|4700              | 13982|
|W_FAGE         |double             |double          |         27130|51                |  3347|
|W_FEDUCYRS     |double             |double          |         64985|27                |  9374|
|W_FHTCM        |double             |double          |         20819|40                |  9492|
|W_GAGEBRTH     |double             |double          |         52921|166               |  7710|
|W_MAGE         |double             |double          |         95452|48                |  6642|
|W_MBMI         |double             |double          |         78862|867.336412328197  | 15005|
|W_MEDUCYRS     |double             |double          |         77382|20                |  5968|
|W_MHTCM        |double             |double          |         90224|118               | 19534|
|W_MWTKG        |double             |double          |         79103|118.5             | 13048|
|W_NCHLDLT5     |double             |double          |         19544|10                |   970|
|W_NHH          |double             |double          |          3638|16                |   484|
|W_NROOMS       |double             |double          |         31735|76                |  4235|
|W_PARITY       |double             |double          |         52799|17                |  7498|
|W_PERDIAR24    |double             |double          |         14561|0.999998878139709 |  1745|
|W_PERDIAR6     |double             |double          |          4596|0.624975400249395 |   302|
|WTKG           |double             |double          |        107694|69.05             |   444|



Unequal column details
======================



#### Column -  AGEDAYS
Showing sample of size 5



|   | AGEDAYS (real_cov)| AGEDAYS (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|------------------:|---------------:|:---------------|:------------|----------:|
|1  |                 50|               1|double          |double       |         49|
|2  |                 36|              35|double          |double       |          1|
|3  |                  8|              29|double          |double       |        -21|
|4  |                119|              40|double          |double       |         79|
|5  |                676|             694|double          |double       |        -18|


#### Column -  AGEDTH
Showing sample of size 5



|   | AGEDTH (real_cov)| AGEDTH (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|-----------------:|--------------:|:---------------|:------------|----------:|
|1  |                NA|            161|double          |double       |         NA|
|2  |                 5|             NA|double          |double       |         NA|
|3  |                NA|             10|double          |double       |         NA|
|4  |               809|             NA|double          |double       |         NA|
|5  |               342|             NA|double          |double       |         NA|


#### Column -  AGEMONTHS
Showing sample of size 5



|   | AGEMONTHS (real_cov)| AGEMONTHS (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|--------------------:|-----------------:|:---------------|:------------|----------:|
|1  |            0.0328767|         0.0986300|double          |double       | -0.0657534|
|2  |            1.2164370|         0.0328767|double          |double       |  1.1835603|
|3  |            1.1178070|         0.0328767|double          |double       |  1.0849303|
|4  |           20.9095661|        17.1945017|double          |double       |  3.7150644|
|5  |            1.1178070|         0.0328767|double          |double       |  1.0849303|


#### Column -  ANYWAST06
Showing sample of size 5



|   |ANYWAST06 (real_cov) |ANYWAST06 (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:--------------------|:-----------------|:---------------|:------------|:----------|
|1  |1                    |0                 |character       |character    |           |
|2  |0                    |1                 |character       |character    |           |
|3  |1                    |0                 |character       |character    |           |
|4  |0                    |1                 |character       |character    |           |
|5  |0                    |1                 |character       |character    |           |


#### Column -  ARM
Showing sample of size 5



|   |ARM (real_cov)                      |ARM (covBC)                    |Type (real_cov) |Type (covBC) |Difference |
|:--|:-----------------------------------|:------------------------------|:---------------|:------------|:----------|
|1  |Multiple Micronutrients             |Iron Folic Acid                |character       |character    |           |
|2  |Multiple Micronutrients             |Iron Folic Acid                |character       |character    |           |
|3  |Iron Folic Acid                     |Multiple Micronutrients        |character       |character    |           |
|4  |50,000 IU nippled + 400,000 IU Oval |Placebo nippled + Placebo Oval |character       |character    |           |
|5  |Iron Folic Acid                     |Multiple Micronutrients        |character       |character    |           |


#### Column -  BIRTHLEN
Showing sample of size 5



|   |BIRTHLEN (real_cov) |BIRTHLEN (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |NA                  |<48 cm           |character       |character    |           |
|2  |[48-50) cm          |NA               |character       |character    |           |
|3  |[48-50) cm          |NA               |character       |character    |           |
|4  |[48-50) cm          |>=50 cm          |character       |character    |           |
|5  |NA                  |[48-50) cm       |character       |character    |           |


#### Column -  BIRTHWT
Showing sample of size 5



|   |BIRTHWT (real_cov) |BIRTHWT (covBC)            |Type (real_cov) |Type (covBC) |Difference |
|:--|:------------------|:--------------------------|:---------------|:------------|:----------|
|1  |NA                 |Normal or high birthweight |character       |character    |           |
|2  |NA                 |Normal or high birthweight |character       |character    |           |
|3  |NA                 |Low birthweight            |character       |character    |           |
|4  |NA                 |Normal or high birthweight |character       |character    |           |
|5  |Low birthweight    |Normal or high birthweight |character       |character    |           |


#### Column -  BRTHMON
Showing sample of size 5



|   |BRTHMON (real_cov) |BRTHMON (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |6                  |3               |character       |character    |           |
|2  |10                 |3               |character       |character    |           |
|3  |10                 |5               |character       |character    |           |
|4  |3                  |10              |character       |character    |           |
|5  |5                  |2               |character       |character    |           |


#### Column -  BRTHWEEK
Showing sample of size 5



|   | BRTHWEEK (real_cov)| BRTHWEEK (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|-------------------:|----------------:|:---------------|:------------|----------:|
|1  |                  14|               35|double          |double       |        -21|
|2  |                  52|                3|double          |double       |         49|
|3  |                  49|                1|double          |double       |         48|
|4  |                  15|               36|double          |double       |        -21|
|5  |                   9|               51|double          |double       |        -42|


#### Column -  BRTHYR
Showing sample of size 5



|   | BRTHYR (real_cov)| BRTHYR (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|-----------------:|--------------:|:---------------|:------------|----------:|
|1  |              2010|           2009|double          |double       |          1|
|2  |              2010|           2011|double          |double       |         -1|
|3  |              2008|           2011|double          |double       |         -3|
|4  |              2010|           2011|double          |double       |         -1|
|5  |              2008|           2010|double          |double       |         -2|


#### Column -  CLEANCK
Showing sample of size 5



|   |CLEANCK (real_cov) |CLEANCK (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |0                  |1               |character       |character    |           |
|2  |0                  |NA              |character       |character    |           |
|3  |NA                 |0               |character       |character    |           |
|4  |1                  |NA              |character       |character    |           |
|5  |1                  |0               |character       |character    |           |


#### Column -  CLUSTERID
Showing sample of size 5



|   | CLUSTERID (real_cov)| CLUSTERID (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|--------------------:|-----------------:|:---------------|:------------|----------:|
|1  |                28243|             36685|integer         |integer      |      -8442|
|2  |                19628|             29303|integer         |integer      |      -9675|
|3  |                 6401|             19896|integer         |integer      |     -13495|
|4  |                 9656|             19606|integer         |integer      |      -9950|
|5  |                34862|             34732|integer         |integer      |        130|


#### Column -  COHORTID
Showing sample of size 5



|   |COHORTID (real_cov) |COHORTID (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |MLED-IND            |MLED-TZA         |character       |character    |           |
|2  |MLED-BRA            |MLED-PER         |character       |character    |           |
|3  |MLED-NPL            |MLED-ZAF         |character       |character    |           |
|4  |MLED-PER            |MLED-BGD         |character       |character    |           |
|5  |MLED-NPL            |MLED-ZAF         |character       |character    |           |


#### Column -  COUNTRY
Showing sample of size 5



|   |COUNTRY (real_cov) |COUNTRY (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |PERU               |BANGLADESH      |character       |character    |           |
|2  |NEPAL              |SOUTH AFRICA    |character       |character    |           |
|3  |TANZANIA           |PERU            |character       |character    |           |
|4  |BRAZIL             |PERU            |character       |character    |           |
|5  |BANGLADESH         |PERU            |character       |character    |           |


#### Column -  CTRYCD
Showing sample of size 5



|   |CTRYCD (real_cov) |CTRYCD (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |TZA               |NPL            |character       |character    |           |
|2  |TZA               |NPL            |character       |character    |           |
|3  |ZAF               |IND            |character       |character    |           |
|4  |IND               |TZA            |character       |character    |           |
|5  |IND               |TZA            |character       |character    |           |


#### Column -  DEAD
Showing sample of size 5



|   |DEAD (real_cov) |DEAD (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:---------------|:------------|:---------------|:------------|:----------|
|1  |0               |1            |character       |character    |           |
|2  |NA              |0            |character       |character    |           |
|3  |0               |NA           |character       |character    |           |
|4  |1               |0            |character       |character    |           |
|5  |1               |NA           |character       |character    |           |


#### Column -  EARLYBF
Showing sample of size 5



|   |EARLYBF (real_cov) |EARLYBF (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |0                  |1               |character       |character    |           |
|2  |1                  |0               |character       |character    |           |
|3  |NA                 |1               |character       |character    |           |
|4  |1                  |0               |character       |character    |           |
|5  |1                  |0               |character       |character    |           |


#### Column -  ENSTUNT
Showing sample of size 5



|   |ENSTUNT (real_cov) |ENSTUNT (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |0                  |1               |character       |character    |           |
|2  |1                  |0               |character       |character    |           |
|3  |0                  |1               |character       |character    |           |
|4  |1                  |0               |character       |character    |           |
|5  |1                  |0               |character       |character    |           |


#### Column -  ENWAST
Showing sample of size 5



|   |ENWAST (real_cov) |ENWAST (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |0                 |NA             |character       |character    |           |
|2  |0                 |1              |character       |character    |           |
|3  |0                 |NA             |character       |character    |           |
|4  |NA                |0              |character       |character    |           |
|5  |0                 |1              |character       |character    |           |


#### Column -  EXCLUDE_DESC
Showing sample of size 5



|   |EXCLUDE_DESC (real_cov) |EXCLUDE_DESC (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-----------------------|:--------------------|:---------------|:------------|:----------|
|1  |NA                      |Active arm           |character       |character    |           |
|2  |Active arm              |NA                   |character       |character    |           |
|3  |NA                      |Active arm           |character       |character    |           |
|4  |Active arm              |NA                   |character       |character    |           |
|5  |Active arm              |NA                   |character       |character    |           |


#### Column -  FAGE
Showing sample of size 5



|   |FAGE (real_cov) |FAGE (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:---------------|:------------|:---------------|:------------|:----------|
|1  |<32             |[32-38)      |character       |character    |           |
|2  |<32             |>=38         |character       |character    |           |
|3  |NA              |<32          |character       |character    |           |
|4  |<32             |[32-38)      |character       |character    |           |
|5  |<32             |[32-38)      |character       |character    |           |


#### Column -  FEDUCYRS
Showing sample of size 5



|   |FEDUCYRS (real_cov) |FEDUCYRS (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |Medium              |High             |character       |character    |           |
|2  |High                |Low              |character       |character    |           |
|3  |Low                 |Medium           |character       |character    |           |
|4  |High                |Low              |character       |character    |           |
|5  |High                |Low              |character       |character    |           |


#### Column -  FHTCM
Showing sample of size 5



|   |FHTCM (real_cov) |FHTCM (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:----------------|:-------------|:---------------|:------------|:----------|
|1  |>=167 cm         |[162-167) cm  |character       |character    |           |
|2  |<162 cm          |>=167 cm      |character       |character    |           |
|3  |NA               |>=167 cm      |character       |character    |           |
|4  |[162-167) cm     |<162 cm       |character       |character    |           |
|5  |NA               |>=167 cm      |character       |character    |           |


#### Column -  GAGEBRTH
Showing sample of size 5



|   |GAGEBRTH (real_cov) |GAGEBRTH (covBC)  |Type (real_cov) |Type (covBC) |Difference |
|:--|:-------------------|:-----------------|:---------------|:------------|:----------|
|1  |Preterm             |NA                |character       |character    |           |
|2  |NA                  |Preterm           |character       |character    |           |
|3  |Full or late term   |Early term        |character       |character    |           |
|4  |Full or late term   |Early term        |character       |character    |           |
|5  |Preterm             |Full or late term |character       |character    |           |


#### Column -  HDLVRY
Showing sample of size 5



|   |HDLVRY (real_cov) |HDLVRY (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |1                 |0              |character       |character    |           |
|2  |0                 |NA             |character       |character    |           |
|3  |0                 |NA             |character       |character    |           |
|4  |NA                |0              |character       |character    |           |
|5  |0                 |1              |character       |character    |           |


#### Column -  HFOODSEC
Showing sample of size 5



|   |HFOODSEC (real_cov)  |HFOODSEC (covBC)     |Type (real_cov) |Type (covBC) |Difference |
|:--|:--------------------|:--------------------|:---------------|:------------|:----------|
|1  |NA                   |Mildly Food Insecure |character       |character    |           |
|2  |Food Secure          |NA                   |character       |character    |           |
|3  |Mildly Food Insecure |NA                   |character       |character    |           |
|4  |NA                   |Food Insecure        |character       |character    |           |
|5  |NA                   |Mildly Food Insecure |character       |character    |           |


#### Column -  HHWEALTH_QUART
Showing sample of size 5



|   |HHWEALTH_QUART (real_cov) |HHWEALTH_QUART (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-------------------------|:----------------------|:---------------|:------------|:----------|
|1  |WealthQ4                  |WealthQ3               |character       |character    |           |
|2  |WealthQ3                  |WealthQ1               |character       |character    |           |
|3  |WealthQ1                  |WealthQ3               |character       |character    |           |
|4  |WealthQ2                  |WealthQ3               |character       |character    |           |
|5  |WealthQ3                  |WealthQ4               |character       |character    |           |


#### Column -  HTCM
Showing sample of size 5



|   | HTCM (real_cov)| HTCM (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|---------------:|------------:|:---------------|:------------|----------:|
|1  |              NA|         81.0|double          |double       |         NA|
|2  |            50.0|         46.1|double          |double       |        3.9|
|3  |            91.3|        127.5|double          |double       |      -36.2|
|4  |              NA|         75.7|double          |double       |         NA|
|5  |            47.6|         46.1|double          |double       |        1.5|


#### Column -  ID
Showing sample of size 5



|   |ID (real_cov) |ID (covBC)        |Type (real_cov) |Type (covBC) |Difference |
|:--|:-------------|:-----------------|:---------------|:------------|:----------|
|1  |41881         |syn-ILDM-MWI-487  |character       |character    |           |
|2  |30080464      |syn-CORT-IND-6639 |character       |character    |           |
|3  |8579          |42233             |character       |character    |           |
|4  |34394         |20333             |character       |character    |           |
|5  |212091        |syn-ZVIT-ZWE-7295 |character       |character    |           |


#### Column -  IMPFLOOR
Showing sample of size 5



|   |IMPFLOOR (real_cov) |IMPFLOOR (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |1                   |0                |character       |character    |           |
|2  |0                   |1                |character       |character    |           |
|3  |0                   |1                |character       |character    |           |
|4  |0                   |1                |character       |character    |           |
|5  |0                   |1                |character       |character    |           |


#### Column -  IMPSAN
Showing sample of size 5



|   |IMPSAN (real_cov) |IMPSAN (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |1                 |0              |character       |character    |           |
|2  |1                 |0              |character       |character    |           |
|3  |1                 |0              |character       |character    |           |
|4  |0                 |1              |character       |character    |           |
|5  |NA                |0              |character       |character    |           |


#### Column -  LATITUDE
Showing sample of size 5



|   | LATITUDE (real_cov)| LATITUDE (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|-------------------:|----------------:|:---------------|:------------|----------:|
|1  |              -14.37|           -14.49|double          |double       |       0.12|
|2  |               -3.75|            23.81|double          |double       |     -27.56|
|3  |               -3.51|            27.67|double          |double       |     -31.18|
|4  |              -14.49|           -14.35|double          |double       |      -0.14|
|5  |              -14.35|           -14.49|double          |double       |       0.14|


#### Column -  LENCM
Showing sample of size 5



|   | LENCM (real_cov)| LENCM (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|----------------:|-------------:|:---------------|:------------|----------:|
|1  |             49.5|          59.9|double          |double       |      -10.4|
|2  |             50.1|          47.0|double          |double       |        3.1|
|3  |             55.0|          53.8|double          |double       |        1.2|
|4  |             68.5|          69.7|double          |double       |       -1.2|
|5  |             50.0|          48.6|double          |double       |        1.4|


#### Column -  LONGITUD
Showing sample of size 5



|   | LONGITUD (real_cov)| LONGITUD (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|-------------------:|----------------:|:---------------|:------------|----------:|
|1  |               35.25|            35.28|double          |double       |      -0.03|
|2  |               35.48|            35.25|double          |double       |       0.23|
|3  |               30.40|           -38.54|double          |double       |      68.94|
|4  |               85.43|            30.40|double          |double       |      55.03|
|5  |               35.28|            35.25|double          |double       |       0.03|


#### Column -  MAGE
Showing sample of size 5



|   |MAGE (real_cov) |MAGE (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:---------------|:------------|:---------------|:------------|:----------|
|1  |[20-30)         |>=30         |character       |character    |           |
|2  |[20-30)         |>=30         |character       |character    |           |
|3  |[20-30)         |>=30         |character       |character    |           |
|4  |>=30            |<20          |character       |character    |           |
|5  |>=30            |[20-30)      |character       |character    |           |


#### Column -  MBMI
Showing sample of size 5



|   |MBMI (real_cov) |MBMI (covBC)  |Type (real_cov) |Type (covBC) |Difference |
|:--|:---------------|:-------------|:---------------|:------------|:----------|
|1  |NA              |Normal weight |character       |character    |           |
|2  |Underweight     |Normal weight |character       |character    |           |
|3  |Underweight     |Normal weight |character       |character    |           |
|4  |Normal weight   |Underweight   |character       |character    |           |
|5  |Underweight     |Normal weight |character       |character    |           |


#### Column -  MEDUCYRS
Showing sample of size 5



|   |MEDUCYRS (real_cov) |MEDUCYRS (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |Medium              |High             |character       |character    |           |
|2  |NA                  |Low              |character       |character    |           |
|3  |High                |Low              |character       |character    |           |
|4  |High                |Medium           |character       |character    |           |
|5  |High                |Low              |character       |character    |           |


#### Column -  MHTCM
Showing sample of size 5



|   |MHTCM (real_cov) |MHTCM (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:----------------|:-------------|:---------------|:------------|:----------|
|1  |[151-155) cm     |<151 cm       |character       |character    |           |
|2  |>=155 cm         |<151 cm       |character       |character    |           |
|3  |<151 cm          |>=155 cm      |character       |character    |           |
|4  |<151 cm          |>=155 cm      |character       |character    |           |
|5  |>=155 cm         |NA            |character       |character    |           |


#### Column -  MONTH
Showing sample of size 5



|   |MONTH (real_cov) |MONTH (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:----------------|:-------------|:---------------|:------------|:----------|
|1  |5                |1             |character       |character    |           |
|2  |11               |2             |character       |character    |           |
|3  |11               |12            |character       |character    |           |
|4  |7                |11            |character       |character    |           |
|5  |11               |10            |character       |character    |           |


#### Column -  MWTKG
Showing sample of size 5



|   |MWTKG (real_cov) |MWTKG (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:----------------|:-------------|:---------------|:------------|:----------|
|1  |<52 kg           |>=58 kg       |character       |character    |           |
|2  |[52-58) kg       |<52 kg        |character       |character    |           |
|3  |>=58 kg          |NA            |character       |character    |           |
|4  |<52 kg           |>=58 kg       |character       |character    |           |
|5  |>=58 kg          |NA            |character       |character    |           |


#### Column -  NCHLDLT5
Showing sample of size 5



|   |NCHLDLT5 (real_cov) |NCHLDLT5 (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |1                   |2+               |character       |character    |           |
|2  |1                   |2+               |character       |character    |           |
|3  |1                   |2+               |character       |character    |           |
|4  |1                   |2+               |character       |character    |           |
|5  |2+                  |1                |character       |character    |           |


#### Column -  NHH
Showing sample of size 5



|   |NHH (real_cov) |NHH (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:--------------|:-----------|:---------------|:------------|:----------|
|1  |4-5            |NA          |character       |character    |           |
|2  |4-5            |6-7         |character       |character    |           |
|3  |4-5            |6-7         |character       |character    |           |
|4  |8+             |4-5         |character       |character    |           |
|5  |4-5            |3 or less   |character       |character    |           |


#### Column -  NROOMS
Showing sample of size 5



|   |NROOMS (real_cov) |NROOMS (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |2                 |1              |character       |character    |           |
|2  |3                 |1              |character       |character    |           |
|3  |2                 |1              |character       |character    |           |
|4  |1                 |4+             |character       |character    |           |
|5  |2                 |1              |character       |character    |           |


#### Column -  PARITY
Showing sample of size 5



|   |PARITY (real_cov) |PARITY (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |2                 |1              |character       |character    |           |
|2  |2                 |NA             |character       |character    |           |
|3  |1                 |2              |character       |character    |           |
|4  |3+                |1              |character       |character    |           |
|5  |3+                |1              |character       |character    |           |


#### Column -  PERDIAR24
Showing sample of size 5



|   |PERDIAR24 (real_cov) |PERDIAR24 (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:--------------------|:-----------------|:---------------|:------------|:----------|
|1  |(0%, 5%]             |>5%               |character       |character    |           |
|2  |(0%, 5%]             |0%                |character       |character    |           |
|3  |0%                   |(0%, 5%]          |character       |character    |           |
|4  |>5%                  |(0%, 5%]          |character       |character    |           |
|5  |(0%, 5%]             |>5%               |character       |character    |           |


#### Column -  PERDIAR6
Showing sample of size 5



|   |PERDIAR6 (real_cov) |PERDIAR6 (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |(0%, 5%]            |0%               |character       |character    |           |
|2  |(0%, 5%]            |0%               |character       |character    |           |
|3  |0%                  |(0%, 5%]         |character       |character    |           |
|4  |0%                  |>5%              |character       |character    |           |
|5  |0%                  |(0%, 5%]         |character       |character    |           |


#### Column -  PERS_WAST
Showing sample of size 5



|   |PERS_WAST (real_cov) |PERS_WAST (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:--------------------|:-----------------|:---------------|:------------|:----------|
|1  |NA                   |0                 |character       |character    |           |
|2  |NA                   |0                 |character       |character    |           |
|3  |0                    |1                 |character       |character    |           |
|4  |1                    |0                 |character       |character    |           |
|5  |NA                   |0                 |character       |character    |           |


#### Column -  PREDEXFD6
Showing sample of size 5



|   |PREDEXFD6 (real_cov) |PREDEXFD6 (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:--------------------|:-----------------|:---------------|:------------|:----------|
|1  |1                    |NA                |character       |character    |           |
|2  |1                    |NA                |character       |character    |           |
|3  |0                    |1                 |character       |character    |           |
|4  |1                    |0                 |character       |character    |           |
|5  |NA                   |1                 |character       |character    |           |


#### Column -  REGION
Showing sample of size 5



|   |REGION (real_cov) |REGION (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |Latin America     |South Asia     |character       |character    |           |
|2  |Africa            |South Asia     |character       |character    |           |
|3  |Latin America     |South Asia     |character       |character    |           |
|4  |Africa            |South Asia     |character       |character    |           |
|5  |Africa            |South Asia     |character       |character    |           |


#### Column -  SAFEH2O
Showing sample of size 5



|   |SAFEH2O (real_cov) |SAFEH2O (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |NA                 |0               |character       |character    |           |
|2  |0                  |NA              |character       |character    |           |
|3  |0                  |NA              |character       |character    |           |
|4  |1                  |0               |character       |character    |           |
|5  |1                  |NA              |character       |character    |           |


#### Column -  SEX
Showing sample of size 5



|   |SEX (real_cov) |SEX (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:--------------|:-----------|:---------------|:------------|:----------|
|1  |Female         |Male        |character       |character    |           |
|2  |Male           |Female      |character       |character    |           |
|3  |Female         |Male        |character       |character    |           |
|4  |Female         |Male        |character       |character    |           |
|5  |Male           |Female      |character       |character    |           |


#### Column -  SINGLE
Showing sample of size 5



|   |SINGLE (real_cov) |SINGLE (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |NA                |0              |character       |character    |           |
|2  |NA                |0              |character       |character    |           |
|3  |0                 |1              |character       |character    |           |
|4  |NA                |0              |character       |character    |           |
|5  |0                 |1              |character       |character    |           |


#### Column -  SITEID
Showing sample of size 5



|   |SITEID (real_cov) |SITEID (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |2                 |****           |character       |character    |           |
|2  |2                 |****           |character       |character    |           |
|3  |1                 |****           |character       |character    |           |
|4  |4                 |****           |character       |character    |           |
|5  |20                |****           |character       |character    |           |


#### Column -  SUBJID
Showing sample of size 5



|   |SUBJID (real_cov) |SUBJID (covBC)     |Type (real_cov) |Type (covBC) |Difference |
|:--|:-----------------|:------------------|:---------------|:------------|:----------|
|1  |1915              |syn-JVT3-BGD-18825 |character       |character    |           |
|2  |3436              |syn-JVT4-BGD-3435  |character       |character    |           |
|3  |260772            |syn-PRBT-BLR-2818  |character       |character    |           |
|4  |748901            |syn-BFZn-BFA-7351  |character       |character    |           |
|5  |203311            |syn-ZVIT-ZWE-6504  |character       |character    |           |


#### Column -  SYNTYPE
Showing sample of size 5



|   |SYNTYPE (real_cov) |SYNTYPE (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |real               |BC              |character       |character    |           |
|2  |real               |BC              |character       |character    |           |
|3  |real               |BC              |character       |character    |           |
|4  |real               |BC              |character       |character    |           |
|5  |real               |BC              |character       |character    |           |


#### Column -  TR
Showing sample of size 5



|   |TR (real_cov) |TR (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-------------|:----------|:---------------|:------------|:----------|
|1  |Control       |Maternal   |character       |character    |           |
|2  |Other         |LNS        |character       |character    |           |
|3  |Maternal      |Control    |character       |character    |           |
|4  |Maternal      |Control    |character       |character    |           |
|5  |LNS           |Other      |character       |character    |           |


#### Column -  TRTH2O
Showing sample of size 5



|   |TRTH2O (real_cov) |TRTH2O (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |1                 |0              |character       |character    |           |
|2  |1                 |0              |character       |character    |           |
|3  |NA                |1              |character       |character    |           |
|4  |NA                |1              |character       |character    |           |
|5  |NA                |1              |character       |character    |           |


#### Column -  VAGBRTH
Showing sample of size 5



|   |VAGBRTH (real_cov) |VAGBRTH (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |NA                 |1               |character       |character    |           |
|2  |0                  |1               |character       |character    |           |
|3  |1                  |0               |character       |character    |           |
|4  |0                  |1               |character       |character    |           |
|5  |0                  |1               |character       |character    |           |


#### Column -  W_BIRTHLEN
Showing sample of size 5



|   | W_BIRTHLEN (real_cov)| W_BIRTHLEN (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|---------------------:|------------------:|:---------------|:------------|----------:|
|1  |                  49.5|                 NA|double          |double       |         NA|
|2  |                  46.8|               46.7|double          |double       |        0.1|
|3  |                  47.4|                 NA|double          |double       |         NA|
|4  |                  54.0|               52.0|double          |double       |        2.0|
|5  |                  50.0|                 NA|double          |double       |         NA|


#### Column -  W_BIRTHWT
Showing sample of size 5



|   | W_BIRTHWT (real_cov)| W_BIRTHWT (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|--------------------:|-----------------:|:---------------|:------------|----------:|
|1  |             3080.000|              2710|double          |double       |        370|
|2  |             3200.000|              2800|double          |double       |        400|
|3  |             2995.000|              1995|double          |double       |       1000|
|4  |             1990.000|              1820|double          |double       |        170|
|5  |             3001.941|                NA|double          |double       |         NA|


#### Column -  W_FAGE
Showing sample of size 5



|   | W_FAGE (real_cov)| W_FAGE (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|-----------------:|--------------:|:---------------|:------------|----------:|
|1  |                31|             26|double          |double       |          5|
|2  |                25|             36|double          |double       |        -11|
|3  |                20|             29|double          |double       |         -9|
|4  |                26|             32|double          |double       |         -6|
|5  |                28|             24|double          |double       |          4|


#### Column -  W_FEDUCYRS
Showing sample of size 5



|   | W_FEDUCYRS (real_cov)| W_FEDUCYRS (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|---------------------:|------------------:|:---------------|:------------|----------:|
|1  |                    13|                 16|double          |double       |         -3|
|2  |                     7|                 11|double          |double       |         -4|
|3  |                     7|                  9|double          |double       |         -2|
|4  |                     6|                 15|double          |double       |         -9|
|5  |                     7|                 11|double          |double       |         -4|


#### Column -  W_FHTCM
Showing sample of size 5



|   | W_FHTCM (real_cov)| W_FHTCM (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|------------------:|---------------:|:---------------|:------------|----------:|
|1  |                185|             182|double          |double       |          3|
|2  |                176|              NA|double          |double       |         NA|
|3  |                168|             172|double          |double       |         -4|
|4  |                 NA|             176|double          |double       |         NA|
|5  |                162|              NA|double          |double       |         NA|


#### Column -  W_GAGEBRTH
Showing sample of size 5



|   | W_GAGEBRTH (real_cov)| W_GAGEBRTH (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|---------------------:|------------------:|:---------------|:------------|----------:|
|1  |                   277|                279|double          |double       |         -2|
|2  |                   279|                265|double          |double       |         14|
|3  |                   273|                280|double          |double       |         -7|
|4  |                   279|                265|double          |double       |         14|
|5  |                   258|                262|double          |double       |         -4|


#### Column -  W_MAGE
Showing sample of size 5



|   | W_MAGE (real_cov)| W_MAGE (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|-----------------:|--------------:|:---------------|:------------|----------:|
|1  |                21|             32|double          |double       |        -11|
|2  |                19|             27|double          |double       |         -8|
|3  |                15|             51|double          |double       |        -36|
|4  |                16|             21|double          |double       |         -5|
|5  |                20|             29|double          |double       |         -9|


#### Column -  W_MBMI
Showing sample of size 5



|   | W_MBMI (real_cov)| W_MBMI (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|-----------------:|--------------:|:---------------|:------------|----------:|
|1  |          24.45191|       20.45033|double          |double       |   4.001583|
|2  |          21.00546|       22.23557|double          |double       |  -1.230115|
|3  |          19.60380|       22.83308|double          |double       |  -3.229277|
|4  |          25.22000|       31.32136|double          |double       |  -6.101362|
|5  |          22.35170|             NA|double          |double       |         NA|


#### Column -  W_MEDUCYRS
Showing sample of size 5



|   | W_MEDUCYRS (real_cov)| W_MEDUCYRS (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|---------------------:|------------------:|:---------------|:------------|----------:|
|1  |                     7|                 14|double          |double       |         -7|
|2  |                     2|                  9|double          |double       |         -7|
|3  |                     7|                 10|double          |double       |         -3|
|4  |                     5|                  2|double          |double       |          3|
|5  |                    11|                 13|double          |double       |         -2|


#### Column -  W_MHTCM
Showing sample of size 5



|   | W_MHTCM (real_cov)| W_MHTCM (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|------------------:|---------------:|:---------------|:------------|----------:|
|1  |              159.5|           164.2|double          |double       |       -4.7|
|2  |              150.8|           157.9|double          |double       |       -7.1|
|3  |              161.3|           149.2|double          |double       |       12.1|
|4  |              142.5|           172.4|double          |double       |      -29.9|
|5  |              157.1|           163.2|double          |double       |       -6.1|


#### Column -  W_MWTKG
Showing sample of size 5



|   | W_MWTKG (real_cov)| W_MWTKG (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|------------------:|---------------:|:---------------|:------------|----------:|
|1  |            45.0000|        46.10000|double          |double       |  -1.100000|
|2  |            44.2000|        45.90000|double          |double       |  -1.700000|
|3  |            38.8000|        43.40000|double          |double       |  -4.600000|
|4  |            59.7834|        52.09922|double          |double       |   7.684182|
|5  |            63.4000|        53.00000|double          |double       |  10.400000|


#### Column -  W_NCHLDLT5
Showing sample of size 5



|   | W_NCHLDLT5 (real_cov)| W_NCHLDLT5 (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|---------------------:|------------------:|:---------------|:------------|----------:|
|1  |                     2|                  1|double          |double       |          1|
|2  |                     2|                  1|double          |double       |          1|
|3  |                     1|                  2|double          |double       |         -1|
|4  |                     5|                  2|double          |double       |          3|
|5  |                     2|                  1|double          |double       |          1|


#### Column -  W_NHH
Showing sample of size 5



|   | W_NHH (real_cov)| W_NHH (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|----------------:|-------------:|:---------------|:------------|----------:|
|1  |                2|            NA|double          |double       |         NA|
|2  |                5|             6|double          |double       |         -1|
|3  |                3|             4|double          |double       |         -1|
|4  |                5|            11|double          |double       |         -6|
|5  |               NA|             6|double          |double       |         NA|


#### Column -  W_NROOMS
Showing sample of size 5



|   | W_NROOMS (real_cov)| W_NROOMS (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|-------------------:|----------------:|:---------------|:------------|----------:|
|1  |                   2|                1|double          |double       |          1|
|2  |                   3|                2|double          |double       |          1|
|3  |                   1|                3|double          |double       |         -2|
|4  |                   1|                2|double          |double       |         -1|
|5  |                   2|                1|double          |double       |          1|


#### Column -  W_PARITY
Showing sample of size 5



|   | W_PARITY (real_cov)| W_PARITY (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|-------------------:|----------------:|:---------------|:------------|----------:|
|1  |                  NA|                3|double          |double       |         NA|
|2  |                   3|                9|double          |double       |         -6|
|3  |                   3|                1|double          |double       |          2|
|4  |                   1|                6|double          |double       |         -5|
|5  |                   3|                4|double          |double       |         -1|


#### Column -  W_PERDIAR24
Showing sample of size 5



|   | W_PERDIAR24 (real_cov)| W_PERDIAR24 (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|----------------------:|-------------------:|:---------------|:------------|----------:|
|1  |              0.0000000|           0.0004749|double          |double       | -0.0004749|
|2  |              0.0216450|           0.0585916|double          |double       | -0.0369466|
|3  |              0.0356164|           0.0031921|double          |double       |  0.0324243|
|4  |              0.0397260|           0.0000019|double          |double       |  0.0397241|
|5  |              0.0000000|           0.0014441|double          |double       | -0.0014441|


#### Column -  W_PERDIAR6
Showing sample of size 5



|   | W_PERDIAR6 (real_cov)| W_PERDIAR6 (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|---------------------:|------------------:|:---------------|:------------|----------:|
|1  |             0.2142857|          0.0329809|double          |double       |  0.1813048|
|2  |             0.0000000|          0.0989020|double          |double       | -0.0989020|
|3  |             0.0883978|          0.0714314|double          |double       |  0.0169664|
|4  |             0.0122699|          0.0322614|double          |double       | -0.0199915|
|5  |             0.0329670|          0.0549570|double          |double       | -0.0219899|


#### Column -  WTKG
Showing sample of size 5



|   | WTKG (real_cov)| WTKG (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|---------------:|------------:|:---------------|:------------|----------:|
|1  |          10.819|         4.10|double          |double       |      6.719|
|2  |           2.800|         3.10|double          |double       |     -0.300|
|3  |           2.700|         3.40|double          |double       |     -0.700|
|4  |           2.350|         2.78|double          |double       |     -0.430|
|5  |           2.950|         2.57|double          |double       |      0.380|


