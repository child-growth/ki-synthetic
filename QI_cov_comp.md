
Data Comparison
===============

Date comparison run: 2021-07-09 11:04:50  
Comparison run on R version 4.1.0 (2021-05-18)  
With dataCompareR version 0.1.3  


Meta Summary
============


|Dataset Name |Number of Rows |Number of Columns |
|:------------|:--------------|:-----------------|
|real_cov     |109680         |79                |
|covQI        |109680         |79                |


Variable Summary
================

Number of columns in common: 79  
Number of columns only in real_cov: 0  
Number of columns only in covQI: 0  
Number of columns with a type mismatch: 0  
No match key used, comparison is by row



Row Summary
===========

Total number of rows read from real_cov: 109680  
Total number of rows read from covQI: 109680    
Number of rows in common: 109680  
Number of rows dropped from real_cov: 0  
Number of rows dropped from  covQI: 0  


Data Values Comparison Summary
==============================

Number of columns compared with ALL rows equal: 3  
Number of columns compared with SOME rows unequal: 76  
Number of columns with missing value differences: 24  

Columns with all rows equal : MEASUREFREQ, STUDYID, STUDYIDA

Summary of columns with some rows unequal: 



|Column         |Type (in real_cov) |Type (in covQI) | # differences|Max difference    | # NAs|
|:--------------|:------------------|:---------------|-------------:|:-----------------|-----:|
|AGEDAYS        |double             |double          |         51261|6423              |     0|
|AGEDTH         |double             |double          |          4826|3900              |  4696|
|AGEMONTHS      |double             |double          |         51261|211.166891871899  |     0|
|ANYWAST06      |character          |character       |          4194|NA                |     0|
|ARM            |character          |character       |         55250|NA                |     0|
|BIRTHLEN       |character          |character       |         47462|NA                |     0|
|BIRTHWT        |character          |character       |         33465|NA                |     0|
|BRTHMON        |character          |character       |         87395|NA                |     0|
|BRTHWEEK       |double             |double          |         92695|52                |  2304|
|BRTHYR         |double             |double          |         51528|24                |  2304|
|CLEANCK        |character          |character       |          2632|NA                |     0|
|CLUSTERID      |integer            |integer         |         53479|42772             |   186|
|COHORTID       |character          |character       |          1840|NA                |     0|
|COUNTRY        |character          |character       |          1840|NA                |     0|
|CTRYCD         |character          |character       |          1840|NA                |     0|
|DEAD           |character          |character       |          7349|NA                |     0|
|EARLYBF        |character          |character       |         13987|NA                |     0|
|ENSTUNT        |character          |character       |         31763|NA                |     0|
|ENWAST         |character          |character       |         36739|NA                |     0|
|EXCLUDE_DESC   |character          |character       |         28722|NA                |     0|
|FAGE           |character          |character       |         13420|NA                |     0|
|FEDUCYRS       |character          |character       |         57356|NA                |     0|
|FHTCM          |character          |character       |         12064|NA                |     0|
|GAGEBRTH       |character          |character       |         37535|NA                |     0|
|HDLVRY         |character          |character       |         10970|NA                |     0|
|HFOODSEC       |character          |character       |         26861|NA                |     0|
|HHWEALTH_QUART |character          |character       |         36632|NA                |     0|
|HTCM           |double             |double          |          2849|87.8              |  1152|
|ID             |character          |character       |        108562|NA                |     0|
|IMPFLOOR       |character          |character       |          8111|NA                |     0|
|IMPSAN         |character          |character       |         28110|NA                |     0|
|LATITUDE       |double             |double          |          3306|50.47             |     0|
|LENCM          |double             |double          |         94652|46.3              |  5200|
|LONGITUD       |double             |double          |          3044|163.62            |     0|
|MAGE           |character          |character       |         56068|NA                |     0|
|MBMI           |character          |character       |         33122|NA                |     0|
|MEDUCYRS       |character          |character       |         64905|NA                |     0|
|MHTCM          |character          |character       |         54396|NA                |     0|
|MONTH          |character          |character       |         86780|NA                |     0|
|MWTKG          |character          |character       |         39224|NA                |     0|
|NCHLDLT5       |character          |character       |         18156|NA                |     0|
|NHH            |character          |character       |          3141|NA                |     0|
|NROOMS         |character          |character       |         31113|NA                |     0|
|PARITY         |character          |character       |         46655|NA                |     0|
|PERDIAR24      |character          |character       |          6731|NA                |     0|
|PERDIAR6       |character          |character       |          2957|NA                |     0|
|PERS_WAST      |character          |character       |          2621|NA                |     0|
|PREDEXFD6      |character          |character       |         25317|NA                |     0|
|REGION         |character          |character       |          1520|NA                |     0|
|SAFEH2O        |character          |character       |          6819|NA                |     0|
|SEX            |character          |character       |         54708|NA                |     0|
|SINGLE         |character          |character       |          9337|NA                |     0|
|SITEID         |character          |character       |        109680|NA                |     0|
|SUBJID         |character          |character       |        109680|NA                |     0|
|SYNTYPE        |character          |character       |        109680|NA                |     0|
|TR             |character          |character       |         39817|NA                |     0|
|TRTH2O         |character          |character       |          1480|NA                |     0|
|VAGBRTH        |character          |character       |         12939|NA                |     0|
|W_BIRTHLEN     |double             |double          |         80455|29.5              | 15506|
|W_BIRTHWT      |double             |double          |         86768|4890              | 14016|
|W_FAGE         |double             |double          |         27022|56                |  3334|
|W_FEDUCYRS     |double             |double          |         65846|23                |  9979|
|W_FHTCM        |double             |double          |         20663|52                |  9493|
|W_GAGEBRTH     |double             |double          |         52429|173               |  7890|
|W_MAGE         |double             |double          |         95062|48                |  7184|
|W_MBMI         |double             |double          |         79013|871.449722643744  | 15188|
|W_MEDUCYRS     |double             |double          |         77698|20                |  6052|
|W_MHTCM        |double             |double          |         91126|110.7             | 20360|
|W_MWTKG        |double             |double          |         79154|116.1             | 13084|
|W_NCHLDLT5     |double             |double          |         19787|9                 |  1144|
|W_NHH          |double             |double          |          3670|16                |   506|
|W_NROOMS       |double             |double          |         31539|75                |  4268|
|W_PARITY       |double             |double          |         52938|18                |  7332|
|W_PERDIAR24    |double             |double          |         13671|1                 |  1300|
|W_PERDIAR6     |double             |double          |          3701|0.569444444444444 |    34|
|WTKG           |double             |double          |        107709|68.3              |   444|



Unequal column details
======================



#### Column -  AGEDAYS
Showing sample of size 5



|   | AGEDAYS (real_cov)| AGEDAYS (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|------------------:|---------------:|:---------------|:------------|----------:|
|1  |                196|             173|double          |double       |         23|
|2  |                 14|             145|double          |double       |       -131|
|3  |                  2|               1|double          |double       |          1|
|4  |                  2|              29|double          |double       |        -27|
|5  |                 47|               1|double          |double       |         46|


#### Column -  AGEDTH
Showing sample of size 5



|   | AGEDTH (real_cov)| AGEDTH (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|-----------------:|--------------:|:---------------|:------------|----------:|
|1  |                NA|            213|double          |double       |         NA|
|2  |                NA|             20|double          |double       |         NA|
|3  |               692|             NA|double          |double       |         NA|
|4  |                NA|            577|double          |double       |         NA|
|5  |                NA|              6|double          |double       |         NA|


#### Column -  AGEMONTHS
Showing sample of size 5



|   | AGEMONTHS (real_cov)| AGEMONTHS (covQI)|Type (real_cov) |Type (covQI) |  Difference|
|:--|--------------------:|-----------------:|:---------------|:------------|-----------:|
|1  |            6.4767052|         5.6547883|double          |double       |   0.8219169|
|2  |            0.1315067|         0.0328767|double          |double       |   0.0986300|
|3  |            0.7232869|         0.0328767|double          |double       |   0.6904102|
|4  |            8.0219090|        25.4465475|double          |double       | -17.4246384|
|5  |            9.5671128|         9.5999895|double          |double       |  -0.0328767|


#### Column -  ANYWAST06
Showing sample of size 5



|   |ANYWAST06 (real_cov) |ANYWAST06 (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:--------------------|:-----------------|:---------------|:------------|:----------|
|1  |0                    |1                 |character       |character    |           |
|2  |0                    |NA                |character       |character    |           |
|3  |0                    |1                 |character       |character    |           |
|4  |1                    |0                 |character       |character    |           |
|5  |1                    |0                 |character       |character    |           |


#### Column -  ARM
Showing sample of size 5



|   |ARM (real_cov)     |ARM (covQI)             |Type (real_cov) |Type (covQI) |Difference |
|:--|:------------------|:-----------------------|:---------------|:------------|:----------|
|1  |Plumpy Doz         |CFC                     |character       |character    |           |
|2  |Iron Folic Acid    |Multiple Micronutrients |character       |character    |           |
|3  |WSB++              |CFC                     |character       |character    |           |
|4  |Experimental group |Control group           |character       |character    |           |
|5  |Iron Folic Acid    |Multiple Micronutrients |character       |character    |           |


#### Column -  BIRTHLEN
Showing sample of size 5



|   |BIRTHLEN (real_cov) |BIRTHLEN (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |>=50 cm             |<48 cm           |character       |character    |           |
|2  |<48 cm              |NA               |character       |character    |           |
|3  |>=50 cm             |[48-50) cm       |character       |character    |           |
|4  |NA                  |[48-50) cm       |character       |character    |           |
|5  |>=50 cm             |[48-50) cm       |character       |character    |           |


#### Column -  BIRTHWT
Showing sample of size 5



|   |BIRTHWT (real_cov)         |BIRTHWT (covQI)            |Type (real_cov) |Type (covQI) |Difference |
|:--|:--------------------------|:--------------------------|:---------------|:------------|:----------|
|1  |Normal or high birthweight |NA                         |character       |character    |           |
|2  |Normal or high birthweight |NA                         |character       |character    |           |
|3  |NA                         |Normal or high birthweight |character       |character    |           |
|4  |Normal or high birthweight |Low birthweight            |character       |character    |           |
|5  |NA                         |Normal or high birthweight |character       |character    |           |


#### Column -  BRTHMON
Showing sample of size 5



|   |BRTHMON (real_cov) |BRTHMON (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |7                  |6               |character       |character    |           |
|2  |3                  |9               |character       |character    |           |
|3  |10                 |6               |character       |character    |           |
|4  |2                  |10              |character       |character    |           |
|5  |10                 |8               |character       |character    |           |


#### Column -  BRTHWEEK
Showing sample of size 5



|   | BRTHWEEK (real_cov)| BRTHWEEK (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|-------------------:|----------------:|:---------------|:------------|----------:|
|1  |                   9|               42|double          |double       |        -33|
|2  |                  43|               34|double          |double       |          9|
|3  |                  48|               46|double          |double       |          2|
|4  |                  51|               50|double          |double       |          1|
|5  |                   2|               14|double          |double       |        -12|


#### Column -  BRTHYR
Showing sample of size 5



|   | BRTHYR (real_cov)| BRTHYR (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|-----------------:|--------------:|:---------------|:------------|----------:|
|1  |              2010|           2009|double          |double       |          1|
|2  |              1989|           1987|double          |double       |          2|
|3  |              1999|           1997|double          |double       |          2|
|4  |              2011|           2008|double          |double       |          3|
|5  |              2010|           2009|double          |double       |          1|


#### Column -  CLEANCK
Showing sample of size 5



|   |CLEANCK (real_cov) |CLEANCK (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |1                  |0               |character       |character    |           |
|2  |1                  |0               |character       |character    |           |
|3  |0                  |1               |character       |character    |           |
|4  |0                  |NA              |character       |character    |           |
|5  |0                  |1               |character       |character    |           |


#### Column -  CLUSTERID
Showing sample of size 5



|   | CLUSTERID (real_cov)| CLUSTERID (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|--------------------:|-----------------:|:---------------|:------------|----------:|
|1  |                 1868|             36169|integer         |integer      |     -34301|
|2  |                19595|             29685|integer         |integer      |     -10090|
|3  |                34408|             30858|integer         |integer      |       3550|
|4  |                 6892|             35398|integer         |integer      |     -28506|
|5  |                19170|             41359|integer         |integer      |     -22189|


#### Column -  COHORTID
Showing sample of size 5



|   |COHORTID (real_cov) |COHORTID (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |MLED-NPL            |MLED-ZAF         |character       |character    |           |
|2  |MLED-IND            |MLED-ZAF         |character       |character    |           |
|3  |MLED-IND            |MLED-TZA         |character       |character    |           |
|4  |MLED-NPL            |MLED-ZAF         |character       |character    |           |
|5  |MLED-PER            |MLED-BGD         |character       |character    |           |


#### Column -  COUNTRY
Showing sample of size 5



|   |COUNTRY (real_cov) |COUNTRY (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |INDIA              |TANZANIA        |character       |character    |           |
|2  |SOUTH AFRICA       |INDIA           |character       |character    |           |
|3  |PERU               |BANGLADESH      |character       |character    |           |
|4  |TANZANIA           |NEPAL           |character       |character    |           |
|5  |TANZANIA           |NEPAL           |character       |character    |           |


#### Column -  CTRYCD
Showing sample of size 5



|   |CTRYCD (real_cov) |CTRYCD (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |ZAF               |IND            |character       |character    |           |
|2  |BGD               |BRA            |character       |character    |           |
|3  |IND               |TZA            |character       |character    |           |
|4  |PER               |BRA            |character       |character    |           |
|5  |BRA               |PER            |character       |character    |           |


#### Column -  DEAD
Showing sample of size 5



|   |DEAD (real_cov) |DEAD (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:---------------|:------------|:---------------|:------------|:----------|
|1  |1               |0            |character       |character    |           |
|2  |0               |1            |character       |character    |           |
|3  |NA              |1            |character       |character    |           |
|4  |0               |1            |character       |character    |           |
|5  |1               |0            |character       |character    |           |


#### Column -  EARLYBF
Showing sample of size 5



|   |EARLYBF (real_cov) |EARLYBF (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |1                  |0               |character       |character    |           |
|2  |0                  |NA              |character       |character    |           |
|3  |0                  |1               |character       |character    |           |
|4  |1                  |0               |character       |character    |           |
|5  |1                  |0               |character       |character    |           |


#### Column -  ENSTUNT
Showing sample of size 5



|   |ENSTUNT (real_cov) |ENSTUNT (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |1                  |0               |character       |character    |           |
|2  |0                  |1               |character       |character    |           |
|3  |1                  |0               |character       |character    |           |
|4  |1                  |0               |character       |character    |           |
|5  |1                  |0               |character       |character    |           |


#### Column -  ENWAST
Showing sample of size 5



|   |ENWAST (real_cov) |ENWAST (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |1                 |0              |character       |character    |           |
|2  |NA                |0              |character       |character    |           |
|3  |0                 |NA             |character       |character    |           |
|4  |NA                |0              |character       |character    |           |
|5  |1                 |0              |character       |character    |           |


#### Column -  EXCLUDE_DESC
Showing sample of size 5



|   |EXCLUDE_DESC (real_cov) |EXCLUDE_DESC (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-----------------------|:--------------------|:---------------|:------------|:----------|
|1  |NA                      |Active arm           |character       |character    |           |
|2  |Active arm              |Month 24+            |character       |character    |           |
|3  |NA                      |Active arm           |character       |character    |           |
|4  |Active arm              |NA                   |character       |character    |           |
|5  |NA                      |Active arm           |character       |character    |           |


#### Column -  FAGE
Showing sample of size 5



|   |FAGE (real_cov) |FAGE (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:---------------|:------------|:---------------|:------------|:----------|
|1  |[32-38)         |NA           |character       |character    |           |
|2  |[32-38)         |<32          |character       |character    |           |
|3  |>=38            |<32          |character       |character    |           |
|4  |>=38            |[32-38)      |character       |character    |           |
|5  |>=38            |<32          |character       |character    |           |


#### Column -  FEDUCYRS
Showing sample of size 5



|   |FEDUCYRS (real_cov) |FEDUCYRS (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |High                |Medium           |character       |character    |           |
|2  |Medium              |Low              |character       |character    |           |
|3  |Medium              |Low              |character       |character    |           |
|4  |High                |Medium           |character       |character    |           |
|5  |Low                 |NA               |character       |character    |           |


#### Column -  FHTCM
Showing sample of size 5



|   |FHTCM (real_cov) |FHTCM (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:----------------|:-------------|:---------------|:------------|:----------|
|1  |NA               |>=167 cm      |character       |character    |           |
|2  |>=167 cm         |NA            |character       |character    |           |
|3  |NA               |>=167 cm      |character       |character    |           |
|4  |<162 cm          |>=167 cm      |character       |character    |           |
|5  |[162-167) cm     |>=167 cm      |character       |character    |           |


#### Column -  GAGEBRTH
Showing sample of size 5



|   |GAGEBRTH (real_cov) |GAGEBRTH (covQI)  |Type (real_cov) |Type (covQI) |Difference |
|:--|:-------------------|:-----------------|:---------------|:------------|:----------|
|1  |Full or late term   |NA                |character       |character    |           |
|2  |Full or late term   |Early term        |character       |character    |           |
|3  |Preterm             |Full or late term |character       |character    |           |
|4  |Early term          |Full or late term |character       |character    |           |
|5  |Full or late term   |Early term        |character       |character    |           |


#### Column -  HDLVRY
Showing sample of size 5



|   |HDLVRY (real_cov) |HDLVRY (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |1                 |NA             |character       |character    |           |
|2  |NA                |0              |character       |character    |           |
|3  |0                 |1              |character       |character    |           |
|4  |1                 |NA             |character       |character    |           |
|5  |1                 |NA             |character       |character    |           |


#### Column -  HFOODSEC
Showing sample of size 5



|   |HFOODSEC (real_cov)  |HFOODSEC (covQI)     |Type (real_cov) |Type (covQI) |Difference |
|:--|:--------------------|:--------------------|:---------------|:------------|:----------|
|1  |Food Secure          |NA                   |character       |character    |           |
|2  |NA                   |Mildly Food Insecure |character       |character    |           |
|3  |Food Secure          |Mildly Food Insecure |character       |character    |           |
|4  |Mildly Food Insecure |Food Insecure        |character       |character    |           |
|5  |Food Secure          |NA                   |character       |character    |           |


#### Column -  HHWEALTH_QUART
Showing sample of size 5



|   |HHWEALTH_QUART (real_cov) |HHWEALTH_QUART (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-------------------------|:----------------------|:---------------|:------------|:----------|
|1  |WealthQ4                  |WealthQ2               |character       |character    |           |
|2  |WealthQ2                  |WealthQ4               |character       |character    |           |
|3  |WealthQ1                  |WealthQ3               |character       |character    |           |
|4  |WealthQ3                  |WealthQ4               |character       |character    |           |
|5  |WealthQ4                  |WealthQ3               |character       |character    |           |


#### Column -  HTCM
Showing sample of size 5



|   | HTCM (real_cov)| HTCM (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|---------------:|------------:|:---------------|:------------|----------:|
|1  |              NA|        109.2|double          |double       |         NA|
|2  |            48.5|         44.0|double          |double       |        4.5|
|3  |            85.2|           NA|double          |double       |         NA|
|4  |           112.2|         92.0|double          |double       |       20.2|
|5  |              NA|         83.2|double          |double       |         NA|


#### Column -  ID
Showing sample of size 5



|   |ID (real_cov) |ID (covQI)        |Type (real_cov) |Type (covQI) |Difference |
|:--|:-------------|:-----------------|:---------------|:------------|:----------|
|1  |40021060      |syn-CORT-PHL-1883 |character       |character    |           |
|2  |2078          |syn-GBSC-GTM-122  |character       |character    |           |
|3  |19896         |39769             |character       |character    |           |
|4  |1640          |syn-ILND-MWI-1715 |character       |character    |           |
|5  |38518         |39769             |character       |character    |           |


#### Column -  IMPFLOOR
Showing sample of size 5



|   |IMPFLOOR (real_cov) |IMPFLOOR (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |NA                  |0                |character       |character    |           |
|2  |NA                  |1                |character       |character    |           |
|3  |0                   |1                |character       |character    |           |
|4  |1                   |0                |character       |character    |           |
|5  |0                   |1                |character       |character    |           |


#### Column -  IMPSAN
Showing sample of size 5



|   |IMPSAN (real_cov) |IMPSAN (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |0                 |1              |character       |character    |           |
|2  |0                 |1              |character       |character    |           |
|3  |0                 |1              |character       |character    |           |
|4  |0                 |NA             |character       |character    |           |
|5  |NA                |0              |character       |character    |           |


#### Column -  LATITUDE
Showing sample of size 5



|   | LATITUDE (real_cov)| LATITUDE (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|-------------------:|----------------:|:---------------|:------------|----------:|
|1  |               -3.75|            23.81|double          |double       |     -27.56|
|2  |              -14.27|           -14.37|double          |double       |       0.10|
|3  |               12.92|            -3.51|double          |double       |      16.43|
|4  |              -14.27|           -14.49|double          |double       |       0.22|
|5  |              -14.49|           -14.27|double          |double       |      -0.22|


#### Column -  LENCM
Showing sample of size 5



|   | LENCM (real_cov)| LENCM (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|----------------:|-------------:|:---------------|:------------|----------:|
|1  |             48.9|            NA|double          |double       |         NA|
|2  |             44.9|          46.1|double          |double       |       -1.2|
|3  |             48.5|          46.5|double          |double       |        2.0|
|4  |             53.0|          54.0|double          |double       |       -1.0|
|5  |             70.8|          71.1|double          |double       |       -0.3|


#### Column -  LONGITUD
Showing sample of size 5



|   | LONGITUD (real_cov)| LONGITUD (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|-------------------:|----------------:|:---------------|:------------|----------:|
|1  |              -38.54|           -73.25|double          |double       |      34.71|
|2  |               35.32|            79.13|double          |double       |     -43.81|
|3  |               79.13|            30.40|double          |double       |      48.73|
|4  |              -73.25|            90.37|double          |double       |    -163.62|
|5  |              -73.25|            90.37|double          |double       |    -163.62|


#### Column -  MAGE
Showing sample of size 5



|   |MAGE (real_cov) |MAGE (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:---------------|:------------|:---------------|:------------|:----------|
|1  |>=30            |[20-30)      |character       |character    |           |
|2  |>=30            |[20-30)      |character       |character    |           |
|3  |[20-30)         |NA           |character       |character    |           |
|4  |[20-30)         |<20          |character       |character    |           |
|5  |[20-30)         |NA           |character       |character    |           |


#### Column -  MBMI
Showing sample of size 5



|   |MBMI (real_cov) |MBMI (covQI)  |Type (real_cov) |Type (covQI) |Difference |
|:--|:---------------|:-------------|:---------------|:------------|:----------|
|1  |Normal weight   |Underweight   |character       |character    |           |
|2  |Underweight     |Normal weight |character       |character    |           |
|3  |NA              |Normal weight |character       |character    |           |
|4  |Underweight     |Normal weight |character       |character    |           |
|5  |Normal weight   |NA            |character       |character    |           |


#### Column -  MEDUCYRS
Showing sample of size 5



|   |MEDUCYRS (real_cov) |MEDUCYRS (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |Low                 |Medium           |character       |character    |           |
|2  |Medium              |NA               |character       |character    |           |
|3  |Low                 |High             |character       |character    |           |
|4  |Low                 |Medium           |character       |character    |           |
|5  |High                |Low              |character       |character    |           |


#### Column -  MHTCM
Showing sample of size 5



|   |MHTCM (real_cov) |MHTCM (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:----------------|:-------------|:---------------|:------------|:----------|
|1  |<151 cm          |[151-155) cm  |character       |character    |           |
|2  |[151-155) cm     |<151 cm       |character       |character    |           |
|3  |[151-155) cm     |>=155 cm      |character       |character    |           |
|4  |NA               |>=155 cm      |character       |character    |           |
|5  |[151-155) cm     |>=155 cm      |character       |character    |           |


#### Column -  MONTH
Showing sample of size 5



|   |MONTH (real_cov) |MONTH (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:----------------|:-------------|:---------------|:------------|:----------|
|1  |2                |8             |character       |character    |           |
|2  |8                |9             |character       |character    |           |
|3  |12               |1             |character       |character    |           |
|4  |5                |10            |character       |character    |           |
|5  |7                |10            |character       |character    |           |


#### Column -  MWTKG
Showing sample of size 5



|   |MWTKG (real_cov) |MWTKG (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:----------------|:-------------|:---------------|:------------|:----------|
|1  |[52-58) kg       |>=58 kg       |character       |character    |           |
|2  |[52-58) kg       |NA            |character       |character    |           |
|3  |[52-58) kg       |<52 kg        |character       |character    |           |
|4  |<52 kg           |>=58 kg       |character       |character    |           |
|5  |>=58 kg          |<52 kg        |character       |character    |           |


#### Column -  NCHLDLT5
Showing sample of size 5



|   |NCHLDLT5 (real_cov) |NCHLDLT5 (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |1                   |2+               |character       |character    |           |
|2  |1                   |2+               |character       |character    |           |
|3  |1                   |2+               |character       |character    |           |
|4  |1                   |2+               |character       |character    |           |
|5  |2+                  |1                |character       |character    |           |


#### Column -  NHH
Showing sample of size 5



|   |NHH (real_cov) |NHH (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:--------------|:-----------|:---------------|:------------|:----------|
|1  |8+             |4-5         |character       |character    |           |
|2  |4-5            |6-7         |character       |character    |           |
|3  |4-5            |8+          |character       |character    |           |
|4  |4-5            |8+          |character       |character    |           |
|5  |6-7            |4-5         |character       |character    |           |


#### Column -  NROOMS
Showing sample of size 5



|   |NROOMS (real_cov) |NROOMS (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |1                 |3              |character       |character    |           |
|2  |1                 |2              |character       |character    |           |
|3  |1                 |3              |character       |character    |           |
|4  |1                 |4+             |character       |character    |           |
|5  |1                 |2              |character       |character    |           |


#### Column -  PARITY
Showing sample of size 5



|   |PARITY (real_cov) |PARITY (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |2                 |1              |character       |character    |           |
|2  |1                 |NA             |character       |character    |           |
|3  |2                 |1              |character       |character    |           |
|4  |NA                |3+             |character       |character    |           |
|5  |2                 |3+             |character       |character    |           |


#### Column -  PERDIAR24
Showing sample of size 5



|   |PERDIAR24 (real_cov) |PERDIAR24 (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:--------------------|:-----------------|:---------------|:------------|:----------|
|1  |>5%                  |(0%, 5%]          |character       |character    |           |
|2  |(0%, 5%]             |>5%               |character       |character    |           |
|3  |>5%                  |(0%, 5%]          |character       |character    |           |
|4  |(0%, 5%]             |>5%               |character       |character    |           |
|5  |NA                   |>5%               |character       |character    |           |


#### Column -  PERDIAR6
Showing sample of size 5



|   |PERDIAR6 (real_cov) |PERDIAR6 (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |(0%, 5%]            |>5%              |character       |character    |           |
|2  |0%                  |>5%              |character       |character    |           |
|3  |0%                  |>5%              |character       |character    |           |
|4  |0%                  |(0%, 5%]         |character       |character    |           |
|5  |>5%                 |0%               |character       |character    |           |


#### Column -  PERS_WAST
Showing sample of size 5



|   |PERS_WAST (real_cov) |PERS_WAST (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:--------------------|:-----------------|:---------------|:------------|:----------|
|1  |NA                   |0                 |character       |character    |           |
|2  |NA                   |0                 |character       |character    |           |
|3  |NA                   |1                 |character       |character    |           |
|4  |0                    |1                 |character       |character    |           |
|5  |0                    |NA                |character       |character    |           |


#### Column -  PREDEXFD6
Showing sample of size 5



|   |PREDEXFD6 (real_cov) |PREDEXFD6 (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:--------------------|:-----------------|:---------------|:------------|:----------|
|1  |NA                   |1                 |character       |character    |           |
|2  |1                    |NA                |character       |character    |           |
|3  |0                    |1                 |character       |character    |           |
|4  |0                    |1                 |character       |character    |           |
|5  |NA                   |1                 |character       |character    |           |


#### Column -  REGION
Showing sample of size 5



|   |REGION (real_cov) |REGION (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |South Asia        |Africa         |character       |character    |           |
|2  |South Asia        |Africa         |character       |character    |           |
|3  |South Asia        |Africa         |character       |character    |           |
|4  |South Asia        |Latin America  |character       |character    |           |
|5  |South Asia        |Africa         |character       |character    |           |


#### Column -  SAFEH2O
Showing sample of size 5



|   |SAFEH2O (real_cov) |SAFEH2O (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |1                  |0               |character       |character    |           |
|2  |1                  |0               |character       |character    |           |
|3  |0                  |1               |character       |character    |           |
|4  |0                  |1               |character       |character    |           |
|5  |1                  |0               |character       |character    |           |


#### Column -  SEX
Showing sample of size 5



|   |SEX (real_cov) |SEX (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:--------------|:-----------|:---------------|:------------|:----------|
|1  |Female         |Male        |character       |character    |           |
|2  |Male           |Female      |character       |character    |           |
|3  |Female         |Male        |character       |character    |           |
|4  |Female         |Male        |character       |character    |           |
|5  |Female         |Male        |character       |character    |           |


#### Column -  SINGLE
Showing sample of size 5



|   |SINGLE (real_cov) |SINGLE (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |0                 |1              |character       |character    |           |
|2  |0                 |1              |character       |character    |           |
|3  |0                 |NA             |character       |character    |           |
|4  |0                 |NA             |character       |character    |           |
|5  |NA                |0              |character       |character    |           |


#### Column -  SITEID
Showing sample of size 5



|   |SITEID (real_cov) |SITEID (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |2                 |****           |character       |character    |           |
|2  |2                 |****           |character       |character    |           |
|3  |29                |****           |character       |character    |           |
|4  |3                 |****           |character       |character    |           |
|5  |2                 |****           |character       |character    |           |


#### Column -  SUBJID
Showing sample of size 5



|   |SUBJID (real_cov) |SUBJID (covQI)     |Type (real_cov) |Type (covQI) |Difference |
|:--|:-----------------|:------------------|:---------------|:------------|:----------|
|1  |269               |syn-ILND-MWI-291   |character       |character    |           |
|2  |40023132          |syn-CORT-PHL-846   |character       |character    |           |
|3  |19839             |syn-JVT3-BGD-1949  |character       |character    |           |
|4  |149911            |syn-ZVIT-ZWE-1762  |character       |character    |           |
|5  |18475             |syn-JVT3-BGD-18175 |character       |character    |           |


#### Column -  SYNTYPE
Showing sample of size 5



|   |SYNTYPE (real_cov) |SYNTYPE (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |real               |QI              |character       |character    |           |
|2  |real               |QI              |character       |character    |           |
|3  |real               |QI              |character       |character    |           |
|4  |real               |QI              |character       |character    |           |
|5  |real               |QI              |character       |character    |           |


#### Column -  TR
Showing sample of size 5



|   |TR (real_cov) |TR (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-------------|:----------|:---------------|:------------|:----------|
|1  |Maternal      |Control    |character       |character    |           |
|2  |Maternal      |Control    |character       |character    |           |
|3  |Control       |Other      |character       |character    |           |
|4  |VitA          |Control    |character       |character    |           |
|5  |VitA          |Control    |character       |character    |           |


#### Column -  TRTH2O
Showing sample of size 5



|   |TRTH2O (real_cov) |TRTH2O (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |1                 |NA             |character       |character    |           |
|2  |0                 |1              |character       |character    |           |
|3  |0                 |1              |character       |character    |           |
|4  |1                 |0              |character       |character    |           |
|5  |NA                |0              |character       |character    |           |


#### Column -  VAGBRTH
Showing sample of size 5



|   |VAGBRTH (real_cov) |VAGBRTH (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |0                  |1               |character       |character    |           |
|2  |1                  |NA              |character       |character    |           |
|3  |1                  |NA              |character       |character    |           |
|4  |1                  |0               |character       |character    |           |
|5  |1                  |0               |character       |character    |           |


#### Column -  W_BIRTHLEN
Showing sample of size 5



|   | W_BIRTHLEN (real_cov)| W_BIRTHLEN (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|---------------------:|------------------:|:---------------|:------------|----------:|
|1  |                  49.0|               50.2|double          |double       |       -1.2|
|2  |                  46.4|               47.3|double          |double       |       -0.9|
|3  |                  51.0|               50.1|double          |double       |        0.9|
|4  |                  54.0|               50.0|double          |double       |        4.0|
|5  |                  40.4|               47.9|double          |double       |       -7.5|


#### Column -  W_BIRTHWT
Showing sample of size 5



|   | W_BIRTHWT (real_cov)| W_BIRTHWT (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|--------------------:|-----------------:|:---------------|:------------|----------:|
|1  |                 2250|              3200|double          |double       |       -950|
|2  |                 1190|              2520|double          |double       |      -1330|
|3  |                 2760|              3430|double          |double       |       -670|
|4  |                 3300|              3040|double          |double       |        260|
|5  |                 3500|              3700|double          |double       |       -200|


#### Column -  W_FAGE
Showing sample of size 5



|   | W_FAGE (real_cov)| W_FAGE (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|-----------------:|--------------:|:---------------|:------------|----------:|
|1  |                33|             44|double          |double       |        -11|
|2  |                26|             41|double          |double       |        -15|
|3  |                24|             26|double          |double       |         -2|
|4  |                27|             31|double          |double       |         -4|
|5  |                25|             27|double          |double       |         -2|


#### Column -  W_FEDUCYRS
Showing sample of size 5



|   | W_FEDUCYRS (real_cov)| W_FEDUCYRS (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|---------------------:|------------------:|:---------------|:------------|----------:|
|1  |                     0|                 11|double          |double       |        -11|
|2  |                     0|                  9|double          |double       |         -9|
|3  |                    13|                 11|double          |double       |          2|
|4  |                     9|                  0|double          |double       |          9|
|5  |                     8|                 NA|double          |double       |         NA|


#### Column -  W_FHTCM
Showing sample of size 5



|   | W_FHTCM (real_cov)| W_FHTCM (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|------------------:|---------------:|:---------------|:------------|----------:|
|1  |                 NA|             180|double          |double       |         NA|
|2  |                177|              NA|double          |double       |         NA|
|3  |                 NA|             172|double          |double       |         NA|
|4  |                167|              NA|double          |double       |         NA|
|5  |                 NA|             184|double          |double       |         NA|


#### Column -  W_GAGEBRTH
Showing sample of size 5



|   | W_GAGEBRTH (real_cov)| W_GAGEBRTH (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|---------------------:|------------------:|:---------------|:------------|----------:|
|1  |                   278|                273|double          |double       |          5|
|2  |                    NA|                280|double          |double       |         NA|
|3  |                   273|                280|double          |double       |         -7|
|4  |                   273|                280|double          |double       |         -7|
|5  |                   289|                279|double          |double       |         10|


#### Column -  W_MAGE
Showing sample of size 5



|   | W_MAGE (real_cov)| W_MAGE (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|-----------------:|--------------:|:---------------|:------------|----------:|
|1  |                20|             31|double          |double       |        -11|
|2  |                19|             20|double          |double       |         -1|
|3  |                35|             18|double          |double       |         17|
|4  |                21|             28|double          |double       |         -7|
|5  |                18|             21|double          |double       |         -3|


#### Column -  W_MBMI
Showing sample of size 5



|   | W_MBMI (real_cov)| W_MBMI (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|-----------------:|--------------:|:---------------|:------------|----------:|
|1  |          24.23823|       20.28331|double          |double       |   3.954916|
|2  |          19.27756|       20.42366|double          |double       |  -1.146098|
|3  |          17.27468|       16.52468|double          |double       |   0.750001|
|4  |          15.01000|       19.46367|double          |double       |  -4.453668|
|5  |          16.62370|       19.96132|double          |double       |  -3.337619|


#### Column -  W_MEDUCYRS
Showing sample of size 5



|   | W_MEDUCYRS (real_cov)| W_MEDUCYRS (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|---------------------:|------------------:|:---------------|:------------|----------:|
|1  |                    12|                  7|double          |double       |          5|
|2  |                     8|                  9|double          |double       |         -1|
|3  |                     7|                  4|double          |double       |          3|
|4  |                    16|                 14|double          |double       |          2|
|5  |                    13|                 16|double          |double       |         -3|


#### Column -  W_MHTCM
Showing sample of size 5



|   | W_MHTCM (real_cov)| W_MHTCM (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|------------------:|---------------:|:---------------|:------------|----------:|
|1  |              150.5|           147.4|double          |double       |        3.1|
|2  |              143.9|           154.1|double          |double       |      -10.2|
|3  |              150.0|           148.0|double          |double       |        2.0|
|4  |                 NA|           152.4|double          |double       |         NA|
|5  |              147.9|           147.8|double          |double       |        0.1|


#### Column -  W_MWTKG
Showing sample of size 5



|   | W_MWTKG (real_cov)| W_MWTKG (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|------------------:|---------------:|:---------------|:------------|----------:|
|1  |             43.900|          49.100|double          |double       |     -5.200|
|2  |             67.000|              NA|double          |double       |         NA|
|3  |             63.000|          37.050|double          |double       |     25.950|
|4  |             43.117|          72.565|double          |double       |    -29.448|
|5  |             45.600|              NA|double          |double       |         NA|


#### Column -  W_NCHLDLT5
Showing sample of size 5



|   | W_NCHLDLT5 (real_cov)| W_NCHLDLT5 (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|---------------------:|------------------:|:---------------|:------------|----------:|
|1  |                     1|                  2|double          |double       |         -1|
|2  |                     2|                  1|double          |double       |          1|
|3  |                     1|                  2|double          |double       |         -1|
|4  |                     3|                 NA|double          |double       |         NA|
|5  |                     1|                  2|double          |double       |         -1|


#### Column -  W_NHH
Showing sample of size 5



|   | W_NHH (real_cov)| W_NHH (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|----------------:|-------------:|:---------------|:------------|----------:|
|1  |                5|             8|double          |double       |         -3|
|2  |                3|             4|double          |double       |         -1|
|3  |                4|             5|double          |double       |         -1|
|4  |                2|             5|double          |double       |         -3|
|5  |                7|            NA|double          |double       |         NA|


#### Column -  W_NROOMS
Showing sample of size 5



|   | W_NROOMS (real_cov)| W_NROOMS (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|-------------------:|----------------:|:---------------|:------------|----------:|
|1  |                  NA|                2|double          |double       |         NA|
|2  |                   5|                3|double          |double       |          2|
|3  |                   1|                2|double          |double       |         -1|
|4  |                   1|                3|double          |double       |         -2|
|5  |                   1|                3|double          |double       |         -2|


#### Column -  W_PARITY
Showing sample of size 5



|   | W_PARITY (real_cov)| W_PARITY (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|-------------------:|----------------:|:---------------|:------------|----------:|
|1  |                   2|                3|double          |double       |         -1|
|2  |                   2|                4|double          |double       |         -2|
|3  |                   1|                4|double          |double       |         -3|
|4  |                   4|               NA|double          |double       |         NA|
|5  |                   3|                6|double          |double       |         -3|


#### Column -  W_PERDIAR24
Showing sample of size 5



|   | W_PERDIAR24 (real_cov)| W_PERDIAR24 (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|----------------------:|-------------------:|:---------------|:------------|----------:|
|1  |              0.0026738|           0.0027397|double          |double       | -0.0000659|
|2  |              0.0095890|           0.0960219|double          |double       | -0.0864329|
|3  |              0.0000000|           0.0657534|double          |double       | -0.0657534|
|4  |              0.0357143|           0.0401786|double          |double       | -0.0044643|
|5  |              0.0410448|           0.0267380|double          |double       |  0.0143068|


#### Column -  W_PERDIAR6
Showing sample of size 5



|   | W_PERDIAR6 (real_cov)| W_PERDIAR6 (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|---------------------:|------------------:|:---------------|:------------|----------:|
|1  |              0.000000|          0.0115607|double          |double       | -0.0115607|
|2  |              0.043956|          0.0604396|double          |double       | -0.0164835|
|3  |              0.000000|          0.0329670|double          |double       | -0.0329670|
|4  |              0.000000|          0.0274725|double          |double       | -0.0274725|
|5  |              0.000000|          0.0219780|double          |double       | -0.0219780|


#### Column -  WTKG
Showing sample of size 5



|   | WTKG (real_cov)| WTKG (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|---------------:|------------:|:---------------|:------------|----------:|
|1  |            3.06|        2.500|double          |double       |      0.560|
|2  |            3.04|        2.935|double          |double       |      0.105|
|3  |            3.10|        2.800|double          |double       |      0.300|
|4  |            2.70|        3.300|double          |double       |     -0.600|
|5  |            2.60|        3.000|double          |double       |     -0.400|


