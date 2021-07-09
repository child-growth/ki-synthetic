
Data Comparison
===============

Date comparison run: 2021-07-09 11:05:00  
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
|1  |                296|             272|double          |double       |         24|
|2  |                279|             274|double          |double       |          5|
|3  |                 22|              29|double          |double       |         -7|
|4  |                 32|               1|double          |double       |         31|
|5  |                205|             272|double          |double       |        -67|


#### Column -  AGEDTH
Showing sample of size 5



|   | AGEDTH (real_cov)| AGEDTH (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|-----------------:|--------------:|:---------------|:------------|----------:|
|1  |                31|             NA|double          |double       |         NA|
|2  |                NA|            310|double          |double       |         NA|
|3  |                16|             NA|double          |double       |         NA|
|4  |               312|             NA|double          |double       |         NA|
|5  |                NA|            250|double          |double       |         NA|


#### Column -  AGEMONTHS
Showing sample of size 5



|   | AGEMONTHS (real_cov)| AGEMONTHS (covBC)|Type (real_cov) |Type (covBC) |  Difference|
|:--|--------------------:|-----------------:|:---------------|:------------|-----------:|
|1  |            0.0328767|        22.6849066|double          |double       | -22.6520300|
|2  |            0.0328767|         1.1178070|double          |double       |  -1.0849303|
|3  |            6.0493084|         5.5561583|double          |double       |   0.4931501|
|4  |            0.0328767|         0.4602735|double          |double       |  -0.4273968|
|5  |            0.0328767|         0.1315067|double          |double       |  -0.0986300|


#### Column -  ANYWAST06
Showing sample of size 5



|   |ANYWAST06 (real_cov) |ANYWAST06 (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:--------------------|:-----------------|:---------------|:------------|:----------|
|1  |1                    |0                 |character       |character    |           |
|2  |0                    |1                 |character       |character    |           |
|3  |1                    |NA                |character       |character    |           |
|4  |0                    |NA                |character       |character    |           |
|5  |1                    |0                 |character       |character    |           |


#### Column -  ARM
Showing sample of size 5



|   |ARM (real_cov)                    |ARM (covBC)                            |Type (real_cov) |Type (covBC) |Difference |
|:--|:---------------------------------|:--------------------------------------|:---------------|:------------|:----------|
|1  |Control                           |Zinc Alone                             |character       |character    |           |
|2  |Iron Folic Acid                   |Multiple Micronutrients                |character       |character    |           |
|3  |Multiple Micronutrients           |Iron Folic Acid                        |character       |character    |           |
|4  |Preventive Zinc: 7 mg/day         |Intermittent Zinc: 10 mg/d for 10 days |character       |character    |           |
|5  |Placebo nippled + 400,000 IU Oval |50,000 IU nippled + 400,000 IU Oval    |character       |character    |           |


#### Column -  BIRTHLEN
Showing sample of size 5



|   |BIRTHLEN (real_cov) |BIRTHLEN (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |>=50 cm             |[48-50) cm       |character       |character    |           |
|2  |<48 cm              |[48-50) cm       |character       |character    |           |
|3  |NA                  |>=50 cm          |character       |character    |           |
|4  |<48 cm              |[48-50) cm       |character       |character    |           |
|5  |>=50 cm             |[48-50) cm       |character       |character    |           |


#### Column -  BIRTHWT
Showing sample of size 5



|   |BIRTHWT (real_cov)         |BIRTHWT (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:--------------------------|:---------------|:---------------|:------------|:----------|
|1  |Normal or high birthweight |Low birthweight |character       |character    |           |
|2  |Normal or high birthweight |Low birthweight |character       |character    |           |
|3  |Normal or high birthweight |Low birthweight |character       |character    |           |
|4  |Normal or high birthweight |Low birthweight |character       |character    |           |
|5  |Normal or high birthweight |Low birthweight |character       |character    |           |


#### Column -  BRTHMON
Showing sample of size 5



|   |BRTHMON (real_cov) |BRTHMON (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |11                 |7               |character       |character    |           |
|2  |6                  |2               |character       |character    |           |
|3  |9                  |4               |character       |character    |           |
|4  |9                  |8               |character       |character    |           |
|5  |3                  |12              |character       |character    |           |


#### Column -  BRTHWEEK
Showing sample of size 5



|   | BRTHWEEK (real_cov)| BRTHWEEK (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|-------------------:|----------------:|:---------------|:------------|----------:|
|1  |                   3|               36|double          |double       |        -33|
|2  |                  32|               20|double          |double       |         12|
|3  |                  29|               12|double          |double       |         17|
|4  |                  36|               51|double          |double       |        -15|
|5  |                  36|               26|double          |double       |         10|


#### Column -  BRTHYR
Showing sample of size 5



|   | BRTHYR (real_cov)| BRTHYR (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|-----------------:|--------------:|:---------------|:------------|----------:|
|1  |              1994|           1992|double          |double       |          2|
|2  |              1994|           1995|double          |double       |         -1|
|3  |              1996|           1997|double          |double       |         -1|
|4  |              2008|           2011|double          |double       |         -3|
|5  |              2009|           2010|double          |double       |         -1|


#### Column -  CLEANCK
Showing sample of size 5



|   |CLEANCK (real_cov) |CLEANCK (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |NA                 |0               |character       |character    |           |
|2  |1                  |NA              |character       |character    |           |
|3  |0                  |1               |character       |character    |           |
|4  |0                  |1               |character       |character    |           |
|5  |1                  |0               |character       |character    |           |


#### Column -  CLUSTERID
Showing sample of size 5



|   | CLUSTERID (real_cov)| CLUSTERID (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|--------------------:|-----------------:|:---------------|:------------|----------:|
|1  |                 2607|             35082|integer         |integer      |     -32475|
|2  |                29044|             28646|integer         |integer      |        398|
|3  |                20270|             20139|integer         |integer      |        131|
|4  |                42233|             28852|integer         |integer      |      13381|
|5  |                29454|              8465|integer         |integer      |      20989|


#### Column -  COHORTID
Showing sample of size 5



|   |COHORTID (real_cov) |COHORTID (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |MLED-NPL            |MLED-ZAF         |character       |character    |           |
|2  |MLED-BRA            |MLED-PER         |character       |character    |           |
|3  |MLED-NPL            |MLED-ZAF         |character       |character    |           |
|4  |MLED-TZA            |MLED-NPL         |character       |character    |           |
|5  |MLED-PER            |MLED-BGD         |character       |character    |           |


#### Column -  COUNTRY
Showing sample of size 5



|   |COUNTRY (real_cov) |COUNTRY (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |BANGLADESH         |PERU            |character       |character    |           |
|2  |BRAZIL             |PERU            |character       |character    |           |
|3  |BANGLADESH         |SOUTH AFRICA    |character       |character    |           |
|4  |PERU               |BANGLADESH      |character       |character    |           |
|5  |INDIA              |TANZANIA        |character       |character    |           |


#### Column -  CTRYCD
Showing sample of size 5



|   |CTRYCD (real_cov) |CTRYCD (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |PER               |BGD            |character       |character    |           |
|2  |BGD               |PER            |character       |character    |           |
|3  |BRA               |TZA            |character       |character    |           |
|4  |BGD               |BRA            |character       |character    |           |
|5  |NPL               |ZAF            |character       |character    |           |


#### Column -  DEAD
Showing sample of size 5



|   |DEAD (real_cov) |DEAD (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:---------------|:------------|:---------------|:------------|:----------|
|1  |NA              |0            |character       |character    |           |
|2  |1               |0            |character       |character    |           |
|3  |NA              |0            |character       |character    |           |
|4  |1               |NA           |character       |character    |           |
|5  |0               |1            |character       |character    |           |


#### Column -  EARLYBF
Showing sample of size 5



|   |EARLYBF (real_cov) |EARLYBF (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |NA                 |0               |character       |character    |           |
|2  |1                  |0               |character       |character    |           |
|3  |0                  |1               |character       |character    |           |
|4  |1                  |0               |character       |character    |           |
|5  |0                  |1               |character       |character    |           |


#### Column -  ENSTUNT
Showing sample of size 5



|   |ENSTUNT (real_cov) |ENSTUNT (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |0                  |1               |character       |character    |           |
|2  |1                  |0               |character       |character    |           |
|3  |1                  |0               |character       |character    |           |
|4  |1                  |0               |character       |character    |           |
|5  |0                  |1               |character       |character    |           |


#### Column -  ENWAST
Showing sample of size 5



|   |ENWAST (real_cov) |ENWAST (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |1                 |0              |character       |character    |           |
|2  |NA                |0              |character       |character    |           |
|3  |0                 |NA             |character       |character    |           |
|4  |NA                |0              |character       |character    |           |
|5  |1                 |0              |character       |character    |           |


#### Column -  EXCLUDE_DESC
Showing sample of size 5



|   |EXCLUDE_DESC (real_cov) |EXCLUDE_DESC (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-----------------------|:--------------------|:---------------|:------------|:----------|
|1  |Active arm              |NA                   |character       |character    |           |
|2  |Active arm              |NA                   |character       |character    |           |
|3  |Active arm              |NA                   |character       |character    |           |
|4  |NA                      |Active arm           |character       |character    |           |
|5  |NA                      |Active arm           |character       |character    |           |


#### Column -  FAGE
Showing sample of size 5



|   |FAGE (real_cov) |FAGE (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:---------------|:------------|:---------------|:------------|:----------|
|1  |<32             |[32-38)      |character       |character    |           |
|2  |<32             |[32-38)      |character       |character    |           |
|3  |[32-38)         |<32          |character       |character    |           |
|4  |<32             |NA           |character       |character    |           |
|5  |[32-38)         |<32          |character       |character    |           |


#### Column -  FEDUCYRS
Showing sample of size 5



|   |FEDUCYRS (real_cov) |FEDUCYRS (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |Low                 |Medium           |character       |character    |           |
|2  |Low                 |Medium           |character       |character    |           |
|3  |Medium              |NA               |character       |character    |           |
|4  |High                |Low              |character       |character    |           |
|5  |Medium              |Low              |character       |character    |           |


#### Column -  FHTCM
Showing sample of size 5



|   |FHTCM (real_cov) |FHTCM (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:----------------|:-------------|:---------------|:------------|:----------|
|1  |NA               |>=167 cm      |character       |character    |           |
|2  |<162 cm          |>=167 cm      |character       |character    |           |
|3  |>=167 cm         |NA            |character       |character    |           |
|4  |>=167 cm         |NA            |character       |character    |           |
|5  |>=167 cm         |[162-167) cm  |character       |character    |           |


#### Column -  GAGEBRTH
Showing sample of size 5



|   |GAGEBRTH (real_cov) |GAGEBRTH (covBC)  |Type (real_cov) |Type (covBC) |Difference |
|:--|:-------------------|:-----------------|:---------------|:------------|:----------|
|1  |Full or late term   |Preterm           |character       |character    |           |
|2  |Preterm             |Early term        |character       |character    |           |
|3  |Early term          |Full or late term |character       |character    |           |
|4  |Full or late term   |Early term        |character       |character    |           |
|5  |Early term          |Full or late term |character       |character    |           |


#### Column -  HDLVRY
Showing sample of size 5



|   |HDLVRY (real_cov) |HDLVRY (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |0                 |1              |character       |character    |           |
|2  |1                 |NA             |character       |character    |           |
|3  |1                 |NA             |character       |character    |           |
|4  |0                 |1              |character       |character    |           |
|5  |0                 |NA             |character       |character    |           |


#### Column -  HFOODSEC
Showing sample of size 5



|   |HFOODSEC (real_cov)  |HFOODSEC (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:--------------------|:----------------|:---------------|:------------|:----------|
|1  |Mildly Food Insecure |Food Secure      |character       |character    |           |
|2  |Food Secure          |Food Insecure    |character       |character    |           |
|3  |Mildly Food Insecure |Food Secure      |character       |character    |           |
|4  |Food Insecure        |NA               |character       |character    |           |
|5  |NA                   |Food Secure      |character       |character    |           |


#### Column -  HHWEALTH_QUART
Showing sample of size 5



|   |HHWEALTH_QUART (real_cov) |HHWEALTH_QUART (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-------------------------|:----------------------|:---------------|:------------|:----------|
|1  |WealthQ1                  |WealthQ2               |character       |character    |           |
|2  |WealthQ1                  |WealthQ2               |character       |character    |           |
|3  |WealthQ2                  |WealthQ1               |character       |character    |           |
|4  |WealthQ2                  |WealthQ4               |character       |character    |           |
|5  |WealthQ3                  |WealthQ4               |character       |character    |           |


#### Column -  HTCM
Showing sample of size 5



|   | HTCM (real_cov)| HTCM (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|---------------:|------------:|:---------------|:------------|----------:|
|1  |              NA|         96.8|double          |double       |         NA|
|2  |            92.7|           NA|double          |double       |         NA|
|3  |            68.2|         75.4|double          |double       |       -7.2|
|4  |            45.5|         47.5|double          |double       |       -2.0|
|5  |            87.0|           NA|double          |double       |         NA|


#### Column -  ID
Showing sample of size 5



|   |ID (real_cov) |ID (covBC)        |Type (real_cov) |Type (covBC) |Difference |
|:--|:-------------|:-----------------|:---------------|:------------|:----------|
|1  |35768         |35342             |character       |character    |           |
|2  |35454         |35131             |character       |character    |           |
|3  |19523         |7634              |character       |character    |           |
|4  |40020902      |syn-CORT-PHL-1751 |character       |character    |           |
|5  |30677         |36476             |character       |character    |           |


#### Column -  IMPFLOOR
Showing sample of size 5



|   |IMPFLOOR (real_cov) |IMPFLOOR (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |0                   |1                |character       |character    |           |
|2  |0                   |1                |character       |character    |           |
|3  |1                   |0                |character       |character    |           |
|4  |1                   |0                |character       |character    |           |
|5  |NA                  |0                |character       |character    |           |


#### Column -  IMPSAN
Showing sample of size 5



|   |IMPSAN (real_cov) |IMPSAN (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |0                 |1              |character       |character    |           |
|2  |0                 |1              |character       |character    |           |
|3  |0                 |1              |character       |character    |           |
|4  |0                 |NA             |character       |character    |           |
|5  |NA                |0              |character       |character    |           |


#### Column -  LATITUDE
Showing sample of size 5



|   | LATITUDE (real_cov)| LATITUDE (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|-------------------:|----------------:|:---------------|:------------|----------:|
|1  |               -3.51|            27.67|double          |double       |     -31.18|
|2  |               23.81|            24.10|double          |double       |      -0.29|
|3  |               23.81|            27.67|double          |double       |      -3.86|
|4  |               -3.20|            -3.75|double          |double       |       0.55|
|5  |               12.92|           -22.80|double          |double       |      35.72|


#### Column -  LENCM
Showing sample of size 5



|   | LENCM (real_cov)| LENCM (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|----------------:|-------------:|:---------------|:------------|----------:|
|1  |             48.5|          48.0|double          |double       |        0.5|
|2  |             74.9|          64.7|double          |double       |       10.2|
|3  |             49.5|          50.4|double          |double       |       -0.9|
|4  |             68.3|          70.5|double          |double       |       -2.2|
|5  |             52.0|          49.0|double          |double       |        3.0|


#### Column -  LONGITUD
Showing sample of size 5



|   | LONGITUD (real_cov)| LONGITUD (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|-------------------:|----------------:|:---------------|:------------|----------:|
|1  |               35.48|            35.25|double          |double       |       0.23|
|2  |               35.25|            35.28|double          |double       |      -0.03|
|3  |               30.40|           -38.54|double          |double       |      68.94|
|4  |               90.33|            90.09|double          |double       |       0.24|
|5  |               35.25|            35.28|double          |double       |      -0.03|


#### Column -  MAGE
Showing sample of size 5



|   |MAGE (real_cov) |MAGE (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:---------------|:------------|:---------------|:------------|:----------|
|1  |NA              |>=30         |character       |character    |           |
|2  |>=30            |<20          |character       |character    |           |
|3  |>=30            |[20-30)      |character       |character    |           |
|4  |>=30            |[20-30)      |character       |character    |           |
|5  |<20             |[20-30)      |character       |character    |           |


#### Column -  MBMI
Showing sample of size 5



|   |MBMI (real_cov) |MBMI (covBC)  |Type (real_cov) |Type (covBC) |Difference |
|:--|:---------------|:-------------|:---------------|:------------|:----------|
|1  |NA              |Normal weight |character       |character    |           |
|2  |NA              |Normal weight |character       |character    |           |
|3  |Normal weight   |NA            |character       |character    |           |
|4  |NA              |Normal weight |character       |character    |           |
|5  |Normal weight   |NA            |character       |character    |           |


#### Column -  MEDUCYRS
Showing sample of size 5



|   |MEDUCYRS (real_cov) |MEDUCYRS (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |Medium              |Low              |character       |character    |           |
|2  |Medium              |High             |character       |character    |           |
|3  |Low                 |High             |character       |character    |           |
|4  |High                |Low              |character       |character    |           |
|5  |Low                 |High             |character       |character    |           |


#### Column -  MHTCM
Showing sample of size 5



|   |MHTCM (real_cov) |MHTCM (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:----------------|:-------------|:---------------|:------------|:----------|
|1  |NA               |>=155 cm      |character       |character    |           |
|2  |[151-155) cm     |<151 cm       |character       |character    |           |
|3  |[151-155) cm     |>=155 cm      |character       |character    |           |
|4  |>=155 cm         |NA            |character       |character    |           |
|5  |<151 cm          |>=155 cm      |character       |character    |           |


#### Column -  MONTH
Showing sample of size 5



|   |MONTH (real_cov) |MONTH (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:----------------|:-------------|:---------------|:------------|:----------|
|1  |10               |12            |character       |character    |           |
|2  |9                |3             |character       |character    |           |
|3  |2                |1             |character       |character    |           |
|4  |5                |8             |character       |character    |           |
|5  |1                |12            |character       |character    |           |


#### Column -  MWTKG
Showing sample of size 5



|   |MWTKG (real_cov) |MWTKG (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:----------------|:-------------|:---------------|:------------|:----------|
|1  |<52 kg           |>=58 kg       |character       |character    |           |
|2  |[52-58) kg       |>=58 kg       |character       |character    |           |
|3  |>=58 kg          |[52-58) kg    |character       |character    |           |
|4  |<52 kg           |[52-58) kg    |character       |character    |           |
|5  |NA               |<52 kg        |character       |character    |           |


#### Column -  NCHLDLT5
Showing sample of size 5



|   |NCHLDLT5 (real_cov) |NCHLDLT5 (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |1                   |2+               |character       |character    |           |
|2  |2+                  |1                |character       |character    |           |
|3  |1                   |2+               |character       |character    |           |
|4  |1                   |2+               |character       |character    |           |
|5  |2+                  |1                |character       |character    |           |


#### Column -  NHH
Showing sample of size 5



|   |NHH (real_cov) |NHH (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:--------------|:-----------|:---------------|:------------|:----------|
|1  |3 or less      |8+          |character       |character    |           |
|2  |6-7            |4-5         |character       |character    |           |
|3  |6-7            |4-5         |character       |character    |           |
|4  |8+             |3 or less   |character       |character    |           |
|5  |8+             |4-5         |character       |character    |           |


#### Column -  NROOMS
Showing sample of size 5



|   |NROOMS (real_cov) |NROOMS (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |2                 |NA             |character       |character    |           |
|2  |NA                |2              |character       |character    |           |
|3  |2                 |1              |character       |character    |           |
|4  |3                 |2              |character       |character    |           |
|5  |1                 |4+             |character       |character    |           |


#### Column -  PARITY
Showing sample of size 5



|   |PARITY (real_cov) |PARITY (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |2                 |3+             |character       |character    |           |
|2  |1                 |2              |character       |character    |           |
|3  |2                 |3+             |character       |character    |           |
|4  |1                 |3+             |character       |character    |           |
|5  |1                 |3+             |character       |character    |           |


#### Column -  PERDIAR24
Showing sample of size 5



|   |PERDIAR24 (real_cov) |PERDIAR24 (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:--------------------|:-----------------|:---------------|:------------|:----------|
|1  |(0%, 5%]             |>5%               |character       |character    |           |
|2  |0%                   |(0%, 5%]          |character       |character    |           |
|3  |>5%                  |0%                |character       |character    |           |
|4  |0%                   |(0%, 5%]          |character       |character    |           |
|5  |(0%, 5%]             |>5%               |character       |character    |           |


#### Column -  PERDIAR6
Showing sample of size 5



|   |PERDIAR6 (real_cov) |PERDIAR6 (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |>5%                 |0%               |character       |character    |           |
|2  |>5%                 |0%               |character       |character    |           |
|3  |0%                  |(0%, 5%]         |character       |character    |           |
|4  |(0%, 5%]            |0%               |character       |character    |           |
|5  |>5%                 |0%               |character       |character    |           |


#### Column -  PERS_WAST
Showing sample of size 5



|   |PERS_WAST (real_cov) |PERS_WAST (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:--------------------|:-----------------|:---------------|:------------|:----------|
|1  |0                    |NA                |character       |character    |           |
|2  |0                    |NA                |character       |character    |           |
|3  |0                    |NA                |character       |character    |           |
|4  |0                    |NA                |character       |character    |           |
|5  |0                    |1                 |character       |character    |           |


#### Column -  PREDEXFD6
Showing sample of size 5



|   |PREDEXFD6 (real_cov) |PREDEXFD6 (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:--------------------|:-----------------|:---------------|:------------|:----------|
|1  |NA                   |1                 |character       |character    |           |
|2  |0                    |1                 |character       |character    |           |
|3  |NA                   |1                 |character       |character    |           |
|4  |1                    |NA                |character       |character    |           |
|5  |0                    |NA                |character       |character    |           |


#### Column -  REGION
Showing sample of size 5



|   |REGION (real_cov) |REGION (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |South Asia        |Latin America  |character       |character    |           |
|2  |South Asia        |Latin America  |character       |character    |           |
|3  |South Asia        |Africa         |character       |character    |           |
|4  |South Asia        |Latin America  |character       |character    |           |
|5  |Africa            |South Asia     |character       |character    |           |


#### Column -  SAFEH2O
Showing sample of size 5



|   |SAFEH2O (real_cov) |SAFEH2O (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |1                  |0               |character       |character    |           |
|2  |0                  |1               |character       |character    |           |
|3  |1                  |0               |character       |character    |           |
|4  |NA                 |1               |character       |character    |           |
|5  |0                  |1               |character       |character    |           |


#### Column -  SEX
Showing sample of size 5



|   |SEX (real_cov) |SEX (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:--------------|:-----------|:---------------|:------------|:----------|
|1  |Male           |Female      |character       |character    |           |
|2  |Male           |Female      |character       |character    |           |
|3  |Male           |Female      |character       |character    |           |
|4  |Female         |Male        |character       |character    |           |
|5  |Male           |Female      |character       |character    |           |


#### Column -  SINGLE
Showing sample of size 5



|   |SINGLE (real_cov) |SINGLE (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |NA                |0              |character       |character    |           |
|2  |1                 |0              |character       |character    |           |
|3  |0                 |NA             |character       |character    |           |
|4  |1                 |0              |character       |character    |           |
|5  |1                 |0              |character       |character    |           |


#### Column -  SITEID
Showing sample of size 5



|   |SITEID (real_cov) |SITEID (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |2                 |****           |character       |character    |           |
|2  |2                 |****           |character       |character    |           |
|3  |2                 |****           |character       |character    |           |
|4  |21                |****           |character       |character    |           |
|5  |2                 |****           |character       |character    |           |


#### Column -  SUBJID
Showing sample of size 5



|   |SUBJID (real_cov) |SUBJID (covBC)     |Type (real_cov) |Type (covBC) |Difference |
|:--|:-----------------|:------------------|:---------------|:------------|:----------|
|1  |241681            |syn-ZVIT-ZWE-9951  |character       |character    |           |
|2  |2730              |syn-VITA-IND-2735  |character       |character    |           |
|3  |111011            |syn-ZVIT-ZWE-10987 |character       |character    |           |
|4  |173461            |syn-ZVIT-ZWE-3875  |character       |character    |           |
|5  |61752             |syn-TZC2-TZA-21    |character       |character    |           |


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
|1  |Maternal      |Control    |character       |character    |           |
|2  |Maternal      |Control    |character       |character    |           |
|3  |Control       |LNS        |character       |character    |           |
|4  |Control       |Maternal   |character       |character    |           |
|5  |Control       |Maternal   |character       |character    |           |


#### Column -  TRTH2O
Showing sample of size 5



|   |TRTH2O (real_cov) |TRTH2O (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |NA                |1              |character       |character    |           |
|2  |0                 |1              |character       |character    |           |
|3  |1                 |0              |character       |character    |           |
|4  |NA                |1              |character       |character    |           |
|5  |1                 |0              |character       |character    |           |


#### Column -  VAGBRTH
Showing sample of size 5



|   |VAGBRTH (real_cov) |VAGBRTH (covBC) |Type (real_cov) |Type (covBC) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |1                  |0               |character       |character    |           |
|2  |NA                 |0               |character       |character    |           |
|3  |0                  |1               |character       |character    |           |
|4  |0                  |1               |character       |character    |           |
|5  |0                  |1               |character       |character    |           |


#### Column -  W_BIRTHLEN
Showing sample of size 5



|   | W_BIRTHLEN (real_cov)| W_BIRTHLEN (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|---------------------:|------------------:|:---------------|:------------|----------:|
|1  |              49.00000|            55.0000|double          |double       |   -6.00000|
|2  |              53.00000|            52.4000|double          |double       |    0.60000|
|3  |              45.50000|            47.0000|double          |double       |   -1.50000|
|4  |              48.99919|            47.9948|double          |double       |    1.00439|
|5  |              53.30000|            48.1000|double          |double       |    5.20000|


#### Column -  W_BIRTHWT
Showing sample of size 5



|   | W_BIRTHWT (real_cov)| W_BIRTHWT (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|--------------------:|-----------------:|:---------------|:------------|----------:|
|1  |                 2440|                NA|double          |double       |         NA|
|2  |                 2310|              2770|double          |double       |       -460|
|3  |                 2930|              2700|double          |double       |        230|
|4  |                 3000|              3500|double          |double       |       -500|
|5  |                 2200|                NA|double          |double       |         NA|


#### Column -  W_FAGE
Showing sample of size 5



|   | W_FAGE (real_cov)| W_FAGE (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|-----------------:|--------------:|:---------------|:------------|----------:|
|1  |                36|             25|double          |double       |         11|
|2  |                18|             39|double          |double       |        -21|
|3  |                25|             23|double          |double       |          2|
|4  |                70|             31|double          |double       |         39|
|5  |                25|             28|double          |double       |         -3|


#### Column -  W_FEDUCYRS
Showing sample of size 5



|   | W_FEDUCYRS (real_cov)| W_FEDUCYRS (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|---------------------:|------------------:|:---------------|:------------|----------:|
|1  |                    14|                  0|double          |double       |         14|
|2  |                    11|                 13|double          |double       |         -2|
|3  |                     1|                 NA|double          |double       |         NA|
|4  |                    NA|                  2|double          |double       |         NA|
|5  |                     3|                  6|double          |double       |         -3|


#### Column -  W_FHTCM
Showing sample of size 5



|   | W_FHTCM (real_cov)| W_FHTCM (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|------------------:|---------------:|:---------------|:------------|----------:|
|1  |                172|             176|double          |double       |         -4|
|2  |                180|              NA|double          |double       |         NA|
|3  |                176|             170|double          |double       |          6|
|4  |                 NA|             175|double          |double       |         NA|
|5  |                175|             164|double          |double       |         11|


#### Column -  W_GAGEBRTH
Showing sample of size 5



|   | W_GAGEBRTH (real_cov)| W_GAGEBRTH (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|---------------------:|------------------:|:---------------|:------------|----------:|
|1  |                   287|                284|double          |double       |          3|
|2  |                   268|                293|double          |double       |        -25|
|3  |                   280|                273|double          |double       |          7|
|4  |                   273|                280|double          |double       |         -7|
|5  |                   273|                 NA|double          |double       |         NA|


#### Column -  W_MAGE
Showing sample of size 5



|   | W_MAGE (real_cov)| W_MAGE (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|-----------------:|--------------:|:---------------|:------------|----------:|
|1  |                30|             17|double          |double       |         13|
|2  |                22|             34|double          |double       |        -12|
|3  |                50|             NA|double          |double       |         NA|
|4  |                24|             25|double          |double       |         -1|
|5  |                NA|             32|double          |double       |         NA|


#### Column -  W_MBMI
Showing sample of size 5



|   | W_MBMI (real_cov)| W_MBMI (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|-----------------:|--------------:|:---------------|:------------|----------:|
|1  |          19.81000|       16.47263|double          |double       |   3.337371|
|2  |          25.77000|       22.79606|double          |double       |   2.973935|
|3  |          25.35496|       15.98249|double          |double       |   9.372469|
|4  |          22.23100|       24.05693|double          |double       |  -1.825935|
|5  |          17.47284|       27.07062|double          |double       |  -9.597788|


#### Column -  W_MEDUCYRS
Showing sample of size 5



|   | W_MEDUCYRS (real_cov)| W_MEDUCYRS (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|---------------------:|------------------:|:---------------|:------------|----------:|
|1  |                     5|                  0|double          |double       |          5|
|2  |                    10|                 11|double          |double       |         -1|
|3  |                     0|                  8|double          |double       |         -8|
|4  |                    10|                  0|double          |double       |         10|
|5  |                    11|                  6|double          |double       |          5|


#### Column -  W_MHTCM
Showing sample of size 5



|   | W_MHTCM (real_cov)| W_MHTCM (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|------------------:|---------------:|:---------------|:------------|----------:|
|1  |              160.0|           170.0|double          |double       |      -10.0|
|2  |              145.4|           158.5|double          |double       |      -13.1|
|3  |              144.0|           145.0|double          |double       |       -1.0|
|4  |              154.6|              NA|double          |double       |         NA|
|5  |              144.5|           144.9|double          |double       |       -0.4|


#### Column -  W_MWTKG
Showing sample of size 5



|   | W_MWTKG (real_cov)| W_MWTKG (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|------------------:|---------------:|:---------------|:------------|----------:|
|1  |               53.5|            41.3|double          |double       |       12.2|
|2  |               46.5|            52.8|double          |double       |       -6.3|
|3  |                 NA|            46.0|double          |double       |         NA|
|4  |               56.0|            75.0|double          |double       |      -19.0|
|5  |               56.0|              NA|double          |double       |         NA|


#### Column -  W_NCHLDLT5
Showing sample of size 5



|   | W_NCHLDLT5 (real_cov)| W_NCHLDLT5 (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|---------------------:|------------------:|:---------------|:------------|----------:|
|1  |                     2|                 NA|double          |double       |         NA|
|2  |                     2|                  1|double          |double       |          1|
|3  |                     1|                  2|double          |double       |         -1|
|4  |                     1|                  2|double          |double       |         -1|
|5  |                     1|                  2|double          |double       |         -1|


#### Column -  W_NHH
Showing sample of size 5



|   | W_NHH (real_cov)| W_NHH (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|----------------:|-------------:|:---------------|:------------|----------:|
|1  |                4|             7|double          |double       |         -3|
|2  |                3|             5|double          |double       |         -2|
|3  |                5|             8|double          |double       |         -3|
|4  |                3|             4|double          |double       |         -1|
|5  |                5|             3|double          |double       |          2|


#### Column -  W_NROOMS
Showing sample of size 5



|   | W_NROOMS (real_cov)| W_NROOMS (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|-------------------:|----------------:|:---------------|:------------|----------:|
|1  |                   1|                2|double          |double       |         -1|
|2  |                   2|                3|double          |double       |         -1|
|3  |                   2|                1|double          |double       |          1|
|4  |                  NA|                1|double          |double       |         NA|
|5  |                   2|                1|double          |double       |          1|


#### Column -  W_PARITY
Showing sample of size 5



|   | W_PARITY (real_cov)| W_PARITY (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|-------------------:|----------------:|:---------------|:------------|----------:|
|1  |                   1|                4|double          |double       |         -3|
|2  |                  NA|                3|double          |double       |         NA|
|3  |                   3|                1|double          |double       |          2|
|4  |                   1|                2|double          |double       |         -1|
|5  |                   1|                4|double          |double       |         -3|


#### Column -  W_PERDIAR24
Showing sample of size 5



|   | W_PERDIAR24 (real_cov)| W_PERDIAR24 (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|----------------------:|-------------------:|:---------------|:------------|----------:|
|1  |              0.0387275|           0.0182191|double          |double       |  0.0205084|
|2  |              0.1058394|           0.0000047|double          |double       |  0.1058348|
|3  |              0.0187166|           0.0752743|double          |double       | -0.0565578|
|4  |              0.0000000|           0.0537993|double          |double       | -0.0537993|
|5  |              0.0161725|           0.0408516|double          |double       | -0.0246791|


#### Column -  W_PERDIAR6
Showing sample of size 5



|   | W_PERDIAR6 (real_cov)| W_PERDIAR6 (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|---------------------:|------------------:|:---------------|:------------|----------:|
|1  |             0.0171429|          0.1079292|double          |double       | -0.0907864|
|2  |             0.0989011|          0.0000132|double          |double       |  0.0988879|
|3  |             0.0000000|          0.0000322|double          |double       | -0.0000322|
|4  |             0.3000000|          0.1228960|double          |double       |  0.1771040|
|5  |                   NaN|                 NA|double          |double       |        NaN|


#### Column -  WTKG
Showing sample of size 5



|   | WTKG (real_cov)| WTKG (covBC)|Type (real_cov) |Type (covBC) | Difference|
|:--|---------------:|------------:|:---------------|:------------|----------:|
|1  |            4.10|        3.085|double          |double       |      1.015|
|2  |            6.79|        8.800|double          |double       |     -2.010|
|3  |            2.41|        3.160|double          |double       |     -0.750|
|4  |            2.91|        2.530|double          |double       |      0.380|
|5  |            6.33|        5.750|double          |double       |      0.580|


