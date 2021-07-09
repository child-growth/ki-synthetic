
Data Comparison
===============

Date comparison run: 2021-07-05 10:04:23  
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
|1  |                365|               1|double          |double       |        364|
|2  |                369|             237|double          |double       |        132|
|3  |                  1|              39|double          |double       |        -38|
|4  |                  3|               5|double          |double       |         -2|
|5  |                 24|              31|double          |double       |         -7|


#### Column -  AGEDTH
Showing sample of size 5



|   | AGEDTH (real_cov)| AGEDTH (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|-----------------:|--------------:|:---------------|:------------|----------:|
|1  |                91|             92|double          |double       |         -1|
|2  |               174|             NA|double          |double       |         NA|
|3  |                NA|             81|double          |double       |         NA|
|4  |                82|             77|double          |double       |          5|
|5  |                NA|              4|double          |double       |         NA|


#### Column -  AGEMONTHS
Showing sample of size 5



|   | AGEMONTHS (real_cov)| AGEMONTHS (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|--------------------:|-----------------:|:---------------|:------------|----------:|
|1  |            0.0328767|         1.2821904|double          |double       | -1.2493137|
|2  |            0.8219169|         0.0657534|double          |double       |  0.7561636|
|3  |            0.1972601|         0.0986300|double          |double       |  0.0986300|
|4  |           14.3999842|         9.4684828|double          |double       |  4.9315014|
|5  |           22.3232632|        22.4876466|double          |double       | -0.1643834|


#### Column -  ANYWAST06
Showing sample of size 5



|   |ANYWAST06 (real_cov) |ANYWAST06 (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:--------------------|:-----------------|:---------------|:------------|:----------|
|1  |1                    |0                 |character       |character    |           |
|2  |0                    |1                 |character       |character    |           |
|3  |1                    |0                 |character       |character    |           |
|4  |1                    |NA                |character       |character    |           |
|5  |1                    |0                 |character       |character    |           |


#### Column -  ARM
Showing sample of size 5



|   |ARM (real_cov)            |ARM (covQI)                            |Type (real_cov) |Type (covQI) |Difference |
|:--|:-------------------------|:--------------------------------------|:---------------|:------------|:----------|
|1  |Iron Folic Acid           |Multiple Micronutrients                |character       |character    |           |
|2  |Chickpea                  |CFC                                    |character       |character    |           |
|3  |Preventive Zinc: 7 mg/day |Intermittent Zinc: 10 mg/d for 10 days |character       |character    |           |
|4  |Control group             |Experimental group                     |character       |character    |           |
|5  |Experimental group        |Control group                          |character       |character    |           |


#### Column -  BIRTHLEN
Showing sample of size 5



|   |BIRTHLEN (real_cov) |BIRTHLEN (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |>=50 cm             |[48-50) cm       |character       |character    |           |
|2  |[48-50) cm          |NA               |character       |character    |           |
|3  |<48 cm              |NA               |character       |character    |           |
|4  |NA                  |[48-50) cm       |character       |character    |           |
|5  |<48 cm              |[48-50) cm       |character       |character    |           |


#### Column -  BIRTHWT
Showing sample of size 5



|   |BIRTHWT (real_cov)         |BIRTHWT (covQI)            |Type (real_cov) |Type (covQI) |Difference |
|:--|:--------------------------|:--------------------------|:---------------|:------------|:----------|
|1  |Low birthweight            |Normal or high birthweight |character       |character    |           |
|2  |Low birthweight            |Normal or high birthweight |character       |character    |           |
|3  |Low birthweight            |Normal or high birthweight |character       |character    |           |
|4  |Normal or high birthweight |Low birthweight            |character       |character    |           |
|5  |Normal or high birthweight |Low birthweight            |character       |character    |           |


#### Column -  BRTHMON
Showing sample of size 5



|   |BRTHMON (real_cov) |BRTHMON (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |1                  |11              |character       |character    |           |
|2  |7                  |5               |character       |character    |           |
|3  |5                  |11              |character       |character    |           |
|4  |2                  |7               |character       |character    |           |
|5  |1                  |10              |character       |character    |           |


#### Column -  BRTHWEEK
Showing sample of size 5



|   | BRTHWEEK (real_cov)| BRTHWEEK (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|-------------------:|----------------:|:---------------|:------------|----------:|
|1  |                   4|               15|double          |double       |        -11|
|2  |                  30|               29|double          |double       |          1|
|3  |                  45|               42|double          |double       |          3|
|4  |                   9|               19|double          |double       |        -10|
|5  |                  51|                9|double          |double       |         42|


#### Column -  BRTHYR
Showing sample of size 5



|   | BRTHYR (real_cov)| BRTHYR (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|-----------------:|--------------:|:---------------|:------------|----------:|
|1  |              1998|           1999|double          |double       |         -1|
|2  |              2008|           2009|double          |double       |         -1|
|3  |              2011|           2009|double          |double       |          2|
|4  |              2008|           2010|double          |double       |         -2|
|5  |              2010|           2011|double          |double       |         -1|


#### Column -  CLEANCK
Showing sample of size 5



|   |CLEANCK (real_cov) |CLEANCK (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |1                  |NA              |character       |character    |           |
|2  |1                  |0               |character       |character    |           |
|3  |0                  |1               |character       |character    |           |
|4  |NA                 |1               |character       |character    |           |
|5  |0                  |1               |character       |character    |           |


#### Column -  CLUSTERID
Showing sample of size 5



|   | CLUSTERID (real_cov)| CLUSTERID (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|--------------------:|-----------------:|:---------------|:------------|----------:|
|1  |                35970|             35531|integer         |integer      |        439|
|2  |                39769|             30938|integer         |integer      |       8831|
|3  |                18223|              7281|integer         |integer      |      10942|
|4  |                19170|             18223|integer         |integer      |        947|
|5  |                19746|             12465|integer         |integer      |       7281|


#### Column -  COHORTID
Showing sample of size 5



|   |COHORTID (real_cov) |COHORTID (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |MLED-IND            |MLED-TZA         |character       |character    |           |
|2  |MLED-TZA            |MLED-NPL         |character       |character    |           |
|3  |MLED-TZA            |MLED-NPL         |character       |character    |           |
|4  |MLED-BRA            |MLED-PER         |character       |character    |           |
|5  |MLED-TZA            |MLED-NPL         |character       |character    |           |


#### Column -  COUNTRY
Showing sample of size 5



|   |COUNTRY (real_cov) |COUNTRY (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |TANZANIA           |NEPAL           |character       |character    |           |
|2  |NEPAL              |SOUTH AFRICA    |character       |character    |           |
|3  |TANZANIA           |NEPAL           |character       |character    |           |
|4  |TANZANIA           |INDIA           |character       |character    |           |
|5  |BRAZIL             |PERU            |character       |character    |           |


#### Column -  CTRYCD
Showing sample of size 5



|   |CTRYCD (real_cov) |CTRYCD (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |NPL               |ZAF            |character       |character    |           |
|2  |ZAF               |BRA            |character       |character    |           |
|3  |BRA               |TZA            |character       |character    |           |
|4  |ZAF               |IND            |character       |character    |           |
|5  |ZAF               |BRA            |character       |character    |           |


#### Column -  DEAD
Showing sample of size 5



|   |DEAD (real_cov) |DEAD (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:---------------|:------------|:---------------|:------------|:----------|
|1  |1               |NA           |character       |character    |           |
|2  |1               |0            |character       |character    |           |
|3  |1               |NA           |character       |character    |           |
|4  |1               |0            |character       |character    |           |
|5  |NA              |0            |character       |character    |           |


#### Column -  EARLYBF
Showing sample of size 5



|   |EARLYBF (real_cov) |EARLYBF (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |1                  |0               |character       |character    |           |
|2  |NA                 |0               |character       |character    |           |
|3  |1                  |0               |character       |character    |           |
|4  |1                  |0               |character       |character    |           |
|5  |0                  |1               |character       |character    |           |


#### Column -  ENSTUNT
Showing sample of size 5



|   |ENSTUNT (real_cov) |ENSTUNT (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |1                  |0               |character       |character    |           |
|2  |1                  |0               |character       |character    |           |
|3  |0                  |1               |character       |character    |           |
|4  |0                  |1               |character       |character    |           |
|5  |1                  |0               |character       |character    |           |


#### Column -  ENWAST
Showing sample of size 5



|   |ENWAST (real_cov) |ENWAST (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |1                 |0              |character       |character    |           |
|2  |0                 |1              |character       |character    |           |
|3  |0                 |1              |character       |character    |           |
|4  |NA                |0              |character       |character    |           |
|5  |0                 |1              |character       |character    |           |


#### Column -  EXCLUDE_DESC
Showing sample of size 5



|   |EXCLUDE_DESC (real_cov) |EXCLUDE_DESC (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-----------------------|:--------------------|:---------------|:------------|:----------|
|1  |NA                      |Active arm           |character       |character    |           |
|2  |NA                      |Active arm           |character       |character    |           |
|3  |NA                      |Active arm           |character       |character    |           |
|4  |Active arm              |NA                   |character       |character    |           |
|5  |NA                      |Active arm           |character       |character    |           |


#### Column -  FAGE
Showing sample of size 5



|   |FAGE (real_cov) |FAGE (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:---------------|:------------|:---------------|:------------|:----------|
|1  |<32             |[32-38)      |character       |character    |           |
|2  |<32             |[32-38)      |character       |character    |           |
|3  |<32             |>=38         |character       |character    |           |
|4  |[32-38)         |>=38         |character       |character    |           |
|5  |<32             |[32-38)      |character       |character    |           |


#### Column -  FEDUCYRS
Showing sample of size 5



|   |FEDUCYRS (real_cov) |FEDUCYRS (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |Medium              |High             |character       |character    |           |
|2  |High                |Low              |character       |character    |           |
|3  |High                |Medium           |character       |character    |           |
|4  |High                |Medium           |character       |character    |           |
|5  |Low                 |Medium           |character       |character    |           |


#### Column -  FHTCM
Showing sample of size 5



|   |FHTCM (real_cov) |FHTCM (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:----------------|:-------------|:---------------|:------------|:----------|
|1  |NA               |>=167 cm      |character       |character    |           |
|2  |>=167 cm         |NA            |character       |character    |           |
|3  |NA               |>=167 cm      |character       |character    |           |
|4  |NA               |<162 cm       |character       |character    |           |
|5  |<162 cm          |NA            |character       |character    |           |


#### Column -  GAGEBRTH
Showing sample of size 5



|   |GAGEBRTH (real_cov) |GAGEBRTH (covQI)  |Type (real_cov) |Type (covQI) |Difference |
|:--|:-------------------|:-----------------|:---------------|:------------|:----------|
|1  |Preterm             |Full or late term |character       |character    |           |
|2  |Full or late term   |Early term        |character       |character    |           |
|3  |Early term          |NA                |character       |character    |           |
|4  |Full or late term   |Early term        |character       |character    |           |
|5  |Early term          |Full or late term |character       |character    |           |


#### Column -  HDLVRY
Showing sample of size 5



|   |HDLVRY (real_cov) |HDLVRY (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |0                 |1              |character       |character    |           |
|2  |0                 |NA             |character       |character    |           |
|3  |1                 |0              |character       |character    |           |
|4  |0                 |NA             |character       |character    |           |
|5  |NA                |1              |character       |character    |           |


#### Column -  HFOODSEC
Showing sample of size 5



|   |HFOODSEC (real_cov)  |HFOODSEC (covQI)     |Type (real_cov) |Type (covQI) |Difference |
|:--|:--------------------|:--------------------|:---------------|:------------|:----------|
|1  |Food Secure          |Food Insecure        |character       |character    |           |
|2  |Mildly Food Insecure |Food Secure          |character       |character    |           |
|3  |NA                   |Mildly Food Insecure |character       |character    |           |
|4  |Food Insecure        |Mildly Food Insecure |character       |character    |           |
|5  |Food Secure          |Mildly Food Insecure |character       |character    |           |


#### Column -  HHWEALTH_QUART
Showing sample of size 5



|   |HHWEALTH_QUART (real_cov) |HHWEALTH_QUART (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-------------------------|:----------------------|:---------------|:------------|:----------|
|1  |WealthQ3                  |WealthQ4               |character       |character    |           |
|2  |WealthQ4                  |WealthQ2               |character       |character    |           |
|3  |WealthQ4                  |WealthQ2               |character       |character    |           |
|4  |WealthQ2                  |WealthQ1               |character       |character    |           |
|5  |WealthQ2                  |WealthQ1               |character       |character    |           |


#### Column -  HTCM
Showing sample of size 5



|   | HTCM (real_cov)| HTCM (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|---------------:|------------:|:---------------|:------------|----------:|
|1  |            53.0|         48.3|double          |double       |        4.7|
|2  |              NA|        104.2|double          |double       |         NA|
|3  |              NA|        149.3|double          |double       |         NA|
|4  |            48.8|         45.5|double          |double       |        3.3|
|5  |            78.4|           NA|double          |double       |         NA|


#### Column -  ID
Showing sample of size 5



|   |ID (real_cov) |ID (covQI)        |Type (real_cov) |Type (covQI) |Difference |
|:--|:-------------|:-----------------|:---------------|:------------|:----------|
|1  |34889         |36693             |character       |character    |           |
|2  |182804        |syn-BFZn-BFA-2546 |character       |character    |           |
|3  |20431         |12217             |character       |character    |           |
|4  |20003464      |syn-CORT-GTM-1460 |character       |character    |           |
|5  |2240          |syn-Knba-GMB-2247 |character       |character    |           |


#### Column -  IMPFLOOR
Showing sample of size 5



|   |IMPFLOOR (real_cov) |IMPFLOOR (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |1                   |0                |character       |character    |           |
|2  |0                   |1                |character       |character    |           |
|3  |0                   |1                |character       |character    |           |
|4  |0                   |1                |character       |character    |           |
|5  |0                   |1                |character       |character    |           |


#### Column -  IMPSAN
Showing sample of size 5



|   |IMPSAN (real_cov) |IMPSAN (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |1                 |0              |character       |character    |           |
|2  |NA                |0              |character       |character    |           |
|3  |NA                |0              |character       |character    |           |
|4  |0                 |NA             |character       |character    |           |
|5  |NA                |0              |character       |character    |           |


#### Column -  LATITUDE
Showing sample of size 5



|   | LATITUDE (real_cov)| LATITUDE (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|-------------------:|----------------:|:---------------|:------------|----------:|
|1  |              -14.49|           -14.37|double          |double       |      -0.12|
|2  |               24.10|            23.81|double          |double       |       0.29|
|3  |              -14.37|           -14.49|double          |double       |       0.12|
|4  |               23.81|            24.10|double          |double       |      -0.29|
|5  |               -3.20|            -3.75|double          |double       |       0.55|


#### Column -  LENCM
Showing sample of size 5



|   | LENCM (real_cov)| LENCM (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|----------------:|-------------:|:---------------|:------------|----------:|
|1  |             51.5|          55.0|double          |double       |       -3.5|
|2  |             54.0|          52.0|double          |double       |        2.0|
|3  |             67.0|          81.2|double          |double       |      -14.2|
|4  |             53.0|          49.5|double          |double       |        3.5|
|5  |             51.0|          52.2|double          |double       |       -1.2|


#### Column -  LONGITUD
Showing sample of size 5



|   | LONGITUD (real_cov)| LONGITUD (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|-------------------:|----------------:|:---------------|:------------|----------:|
|1  |              -73.25|           -38.54|double          |double       |     -34.71|
|2  |               35.32|            85.43|double          |double       |     -50.11|
|3  |               85.43|            30.40|double          |double       |      55.03|
|4  |               30.40|           -38.54|double          |double       |      68.94|
|5  |               90.09|            90.33|double          |double       |      -0.24|


#### Column -  MAGE
Showing sample of size 5



|   |MAGE (real_cov) |MAGE (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:---------------|:------------|:---------------|:------------|:----------|
|1  |NA              |[20-30)      |character       |character    |           |
|2  |[20-30)         |<20          |character       |character    |           |
|3  |>=30            |[20-30)      |character       |character    |           |
|4  |>=30            |[20-30)      |character       |character    |           |
|5  |>=30            |[20-30)      |character       |character    |           |


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
|1  |High                |Medium           |character       |character    |           |
|2  |High                |Medium           |character       |character    |           |
|3  |High                |Low              |character       |character    |           |
|4  |Medium              |High             |character       |character    |           |
|5  |High                |Medium           |character       |character    |           |


#### Column -  MHTCM
Showing sample of size 5



|   |MHTCM (real_cov) |MHTCM (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:----------------|:-------------|:---------------|:------------|:----------|
|1  |[151-155) cm     |<151 cm       |character       |character    |           |
|2  |NA               |>=155 cm      |character       |character    |           |
|3  |NA               |<151 cm       |character       |character    |           |
|4  |NA               |>=155 cm      |character       |character    |           |
|5  |<151 cm          |[151-155) cm  |character       |character    |           |


#### Column -  MONTH
Showing sample of size 5



|   |MONTH (real_cov) |MONTH (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:----------------|:-------------|:---------------|:------------|:----------|
|1  |10               |4             |character       |character    |           |
|2  |8                |7             |character       |character    |           |
|3  |1                |8             |character       |character    |           |
|4  |4                |8             |character       |character    |           |
|5  |5                |7             |character       |character    |           |


#### Column -  MWTKG
Showing sample of size 5



|   |MWTKG (real_cov) |MWTKG (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:----------------|:-------------|:---------------|:------------|:----------|
|1  |<52 kg           |[52-58) kg    |character       |character    |           |
|2  |<52 kg           |>=58 kg       |character       |character    |           |
|3  |<52 kg           |>=58 kg       |character       |character    |           |
|4  |>=58 kg          |<52 kg        |character       |character    |           |
|5  |<52 kg           |[52-58) kg    |character       |character    |           |


#### Column -  NCHLDLT5
Showing sample of size 5



|   |NCHLDLT5 (real_cov) |NCHLDLT5 (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |2+                  |1                |character       |character    |           |
|2  |1                   |2+               |character       |character    |           |
|3  |2+                  |1                |character       |character    |           |
|4  |2+                  |1                |character       |character    |           |
|5  |2+                  |NA               |character       |character    |           |


#### Column -  NHH
Showing sample of size 5



|   |NHH (real_cov) |NHH (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:--------------|:-----------|:---------------|:------------|:----------|
|1  |4-5            |6-7         |character       |character    |           |
|2  |4-5            |3 or less   |character       |character    |           |
|3  |8+             |NA          |character       |character    |           |
|4  |4-5            |8+          |character       |character    |           |
|5  |4-5            |6-7         |character       |character    |           |


#### Column -  NROOMS
Showing sample of size 5



|   |NROOMS (real_cov) |NROOMS (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |1                 |3              |character       |character    |           |
|2  |3                 |2              |character       |character    |           |
|3  |1                 |3              |character       |character    |           |
|4  |1                 |2              |character       |character    |           |
|5  |2                 |3              |character       |character    |           |


#### Column -  PARITY
Showing sample of size 5



|   |PARITY (real_cov) |PARITY (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |3+                |2              |character       |character    |           |
|2  |3+                |2              |character       |character    |           |
|3  |3+                |2              |character       |character    |           |
|4  |2                 |1              |character       |character    |           |
|5  |3+                |2              |character       |character    |           |


#### Column -  PERDIAR24
Showing sample of size 5



|   |PERDIAR24 (real_cov) |PERDIAR24 (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:--------------------|:-----------------|:---------------|:------------|:----------|
|1  |>5%                  |(0%, 5%]          |character       |character    |           |
|2  |(0%, 5%]             |>5%               |character       |character    |           |
|3  |0%                   |(0%, 5%]          |character       |character    |           |
|4  |(0%, 5%]             |NA                |character       |character    |           |
|5  |(0%, 5%]             |>5%               |character       |character    |           |


#### Column -  PERDIAR6
Showing sample of size 5



|   |PERDIAR6 (real_cov) |PERDIAR6 (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-------------------|:----------------|:---------------|:------------|:----------|
|1  |0%                  |(0%, 5%]         |character       |character    |           |
|2  |(0%, 5%]            |0%               |character       |character    |           |
|3  |0%                  |>5%              |character       |character    |           |
|4  |0%                  |>5%              |character       |character    |           |
|5  |(0%, 5%]            |>5%              |character       |character    |           |


#### Column -  PERS_WAST
Showing sample of size 5



|   |PERS_WAST (real_cov) |PERS_WAST (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:--------------------|:-----------------|:---------------|:------------|:----------|
|1  |NA                   |0                 |character       |character    |           |
|2  |NA                   |0                 |character       |character    |           |
|3  |0                    |1                 |character       |character    |           |
|4  |0                    |NA                |character       |character    |           |
|5  |0                    |NA                |character       |character    |           |


#### Column -  PREDEXFD6
Showing sample of size 5



|   |PREDEXFD6 (real_cov) |PREDEXFD6 (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:--------------------|:-----------------|:---------------|:------------|:----------|
|1  |NA                   |1                 |character       |character    |           |
|2  |NA                   |0                 |character       |character    |           |
|3  |1                    |NA                |character       |character    |           |
|4  |1                    |0                 |character       |character    |           |
|5  |1                    |NA                |character       |character    |           |


#### Column -  REGION
Showing sample of size 5



|   |REGION (real_cov) |REGION (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |South Asia        |Africa         |character       |character    |           |
|2  |South Asia        |Africa         |character       |character    |           |
|3  |Africa            |South Asia     |character       |character    |           |
|4  |Latin America     |South Asia     |character       |character    |           |
|5  |Africa            |South Asia     |character       |character    |           |


#### Column -  SAFEH2O
Showing sample of size 5



|   |SAFEH2O (real_cov) |SAFEH2O (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |0                  |NA              |character       |character    |           |
|2  |1                  |NA              |character       |character    |           |
|3  |0                  |NA              |character       |character    |           |
|4  |NA                 |1               |character       |character    |           |
|5  |1                  |0               |character       |character    |           |


#### Column -  SEX
Showing sample of size 5



|   |SEX (real_cov) |SEX (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:--------------|:-----------|:---------------|:------------|:----------|
|1  |Male           |Female      |character       |character    |           |
|2  |Female         |Male        |character       |character    |           |
|3  |Male           |Female      |character       |character    |           |
|4  |Female         |Male        |character       |character    |           |
|5  |Female         |Male        |character       |character    |           |


#### Column -  SINGLE
Showing sample of size 5



|   |SINGLE (real_cov) |SINGLE (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |0                 |1              |character       |character    |           |
|2  |1                 |0              |character       |character    |           |
|3  |0                 |NA             |character       |character    |           |
|4  |1                 |0              |character       |character    |           |
|5  |1                 |0              |character       |character    |           |


#### Column -  SITEID
Showing sample of size 5



|   |SITEID (real_cov) |SITEID (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |3                 |****           |character       |character    |           |
|2  |5                 |****           |character       |character    |           |
|3  |2                 |****           |character       |character    |           |
|4  |7                 |****           |character       |character    |           |
|5  |2                 |****           |character       |character    |           |


#### Column -  SUBJID
Showing sample of size 5



|   |SUBJID (real_cov) |SUBJID (covQI)    |Type (real_cov) |Type (covQI) |Difference |
|:--|:-----------------|:-----------------|:---------------|:------------|:----------|
|1  |9309              |syn-GBSC-GTM-95   |character       |character    |           |
|2  |469801            |syn-BFZn-BFA-5011 |character       |character    |           |
|3  |113402            |syn-BFZn-BFA-1274 |character       |character    |           |
|4  |5970              |syn-JVT3-BGD-6140 |character       |character    |           |
|5  |20005124          |syn-CORT-GTM-1729 |character       |character    |           |


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
|1  |Control       |LNS        |character       |character    |           |
|2  |Control       |Maternal   |character       |character    |           |
|3  |Zinc          |Control    |character       |character    |           |
|4  |Maternal      |Control    |character       |character    |           |
|5  |Maternal      |Control    |character       |character    |           |


#### Column -  TRTH2O
Showing sample of size 5



|   |TRTH2O (real_cov) |TRTH2O (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:-----------------|:--------------|:---------------|:------------|:----------|
|1  |0                 |1              |character       |character    |           |
|2  |1                 |NA             |character       |character    |           |
|3  |1                 |0              |character       |character    |           |
|4  |1                 |0              |character       |character    |           |
|5  |1                 |NA             |character       |character    |           |


#### Column -  VAGBRTH
Showing sample of size 5



|   |VAGBRTH (real_cov) |VAGBRTH (covQI) |Type (real_cov) |Type (covQI) |Difference |
|:--|:------------------|:---------------|:---------------|:------------|:----------|
|1  |0                  |1               |character       |character    |           |
|2  |1                  |0               |character       |character    |           |
|3  |1                  |0               |character       |character    |           |
|4  |0                  |1               |character       |character    |           |
|5  |0                  |1               |character       |character    |           |


#### Column -  W_BIRTHLEN
Showing sample of size 5



|   | W_BIRTHLEN (real_cov)| W_BIRTHLEN (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|---------------------:|------------------:|:---------------|:------------|----------:|
|1  |                  53.5|               48.1|double          |double       |        5.4|
|2  |                  50.9|               47.4|double          |double       |        3.5|
|3  |                  45.1|               44.0|double          |double       |        1.1|
|4  |                  47.6|                 NA|double          |double       |         NA|
|5  |                  50.7|               42.4|double          |double       |        8.3|


#### Column -  W_BIRTHWT
Showing sample of size 5



|   | W_BIRTHWT (real_cov)| W_BIRTHWT (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|--------------------:|-----------------:|:---------------|:------------|----------:|
|1  |                 3000|              2000|double          |double       |       1000|
|2  |                 2890|              2950|double          |double       |        -60|
|3  |                   NA|              2590|double          |double       |         NA|
|4  |                 2800|              3300|double          |double       |       -500|
|5  |                 2305|              3130|double          |double       |       -825|


#### Column -  W_FAGE
Showing sample of size 5



|   | W_FAGE (real_cov)| W_FAGE (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|-----------------:|--------------:|:---------------|:------------|----------:|
|1  |                26|             30|double          |double       |         -4|
|2  |                28|             33|double          |double       |         -5|
|3  |                29|             45|double          |double       |        -16|
|4  |                34|             31|double          |double       |          3|
|5  |                35|             30|double          |double       |          5|


#### Column -  W_FEDUCYRS
Showing sample of size 5



|   | W_FEDUCYRS (real_cov)| W_FEDUCYRS (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|---------------------:|------------------:|:---------------|:------------|----------:|
|1  |                    12|                 13|double          |double       |         -1|
|2  |                     4|                  7|double          |double       |         -3|
|3  |                    NA|                 12|double          |double       |         NA|
|4  |                    13|                 12|double          |double       |          1|
|5  |                    11|                  9|double          |double       |          2|


#### Column -  W_FHTCM
Showing sample of size 5



|   | W_FHTCM (real_cov)| W_FHTCM (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|------------------:|---------------:|:---------------|:------------|----------:|
|1  |                172|              NA|double          |double       |         NA|
|2  |                170|             171|double          |double       |         -1|
|3  |                174|              NA|double          |double       |         NA|
|4  |                 NA|             182|double          |double       |         NA|
|5  |                173|             171|double          |double       |          2|


#### Column -  W_GAGEBRTH
Showing sample of size 5



|   | W_GAGEBRTH (real_cov)| W_GAGEBRTH (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|---------------------:|------------------:|:---------------|:------------|----------:|
|1  |                   243|                267|double          |double       |        -24|
|2  |                   279|                292|double          |double       |        -13|
|3  |                   280|                266|double          |double       |         14|
|4  |                   276|                271|double          |double       |          5|
|5  |                   269|                295|double          |double       |        -26|


#### Column -  W_MAGE
Showing sample of size 5



|   | W_MAGE (real_cov)| W_MAGE (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|-----------------:|--------------:|:---------------|:------------|----------:|
|1  |                27|             23|double          |double       |          4|
|2  |                27|             36|double          |double       |         -9|
|3  |                38|             28|double          |double       |         10|
|4  |                20|             23|double          |double       |         -3|
|5  |                18|             15|double          |double       |          3|


#### Column -  W_MBMI
Showing sample of size 5



|   | W_MBMI (real_cov)| W_MBMI (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|-----------------:|--------------:|:---------------|:------------|----------:|
|1  |           23.2800|       19.46667|double          |double       |   3.813333|
|2  |           16.7962|             NA|double          |double       |         NA|
|3  |                NA|       24.71049|double          |double       |         NA|
|4  |           15.8210|             NA|double          |double       |         NA|
|5  |           23.1084|             NA|double          |double       |         NA|


#### Column -  W_MEDUCYRS
Showing sample of size 5



|   | W_MEDUCYRS (real_cov)| W_MEDUCYRS (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|---------------------:|------------------:|:---------------|:------------|----------:|
|1  |                     7|                  0|double          |double       |          7|
|2  |                     8|                  7|double          |double       |          1|
|3  |                     8|                  2|double          |double       |          6|
|4  |                     2|                  5|double          |double       |         -3|
|5  |                     9|                  5|double          |double       |          4|


#### Column -  W_MHTCM
Showing sample of size 5



|   | W_MHTCM (real_cov)| W_MHTCM (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|------------------:|---------------:|:---------------|:------------|----------:|
|1  |              143.6|              NA|double          |double       |         NA|
|2  |                 NA|           158.0|double          |double       |         NA|
|3  |              148.8|           150.7|double          |double       |       -1.9|
|4  |              148.7|           154.8|double          |double       |       -6.1|
|5  |              161.0|           151.0|double          |double       |       10.0|


#### Column -  W_MWTKG
Showing sample of size 5



|   | W_MWTKG (real_cov)| W_MWTKG (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|------------------:|---------------:|:---------------|:------------|----------:|
|1  |              64.00|          52.500|double          |double       |     11.500|
|2  |              49.70|          46.000|double          |double       |      3.700|
|3  |              54.75|          49.758|double          |double       |      4.992|
|4  |              40.80|          50.900|double          |double       |    -10.100|
|5  |              50.50|          43.100|double          |double       |      7.400|


#### Column -  W_NCHLDLT5
Showing sample of size 5



|   | W_NCHLDLT5 (real_cov)| W_NCHLDLT5 (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|---------------------:|------------------:|:---------------|:------------|----------:|
|1  |                     1|                  2|double          |double       |         -1|
|2  |                     2|                  1|double          |double       |          1|
|3  |                     1|                  2|double          |double       |         -1|
|4  |                     3|                  1|double          |double       |          2|
|5  |                     2|                  1|double          |double       |          1|


#### Column -  W_NHH
Showing sample of size 5



|   | W_NHH (real_cov)| W_NHH (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|----------------:|-------------:|:---------------|:------------|----------:|
|1  |                6|             4|double          |double       |          2|
|2  |                4|            NA|double          |double       |         NA|
|3  |               11|             5|double          |double       |          6|
|4  |                6|             5|double          |double       |          1|
|5  |                6|             9|double          |double       |         -3|


#### Column -  W_NROOMS
Showing sample of size 5



|   | W_NROOMS (real_cov)| W_NROOMS (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|-------------------:|----------------:|:---------------|:------------|----------:|
|1  |                   2|                1|double          |double       |          1|
|2  |                   3|                1|double          |double       |          2|
|3  |                   2|                1|double          |double       |          1|
|4  |                   1|                2|double          |double       |         -1|
|5  |                   2|               NA|double          |double       |         NA|


#### Column -  W_PARITY
Showing sample of size 5



|   | W_PARITY (real_cov)| W_PARITY (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|-------------------:|----------------:|:---------------|:------------|----------:|
|1  |                   6|                3|double          |double       |          3|
|2  |                   1|                4|double          |double       |         -3|
|3  |                   2|                4|double          |double       |         -2|
|4  |                   1|                4|double          |double       |         -3|
|5  |                  NA|                1|double          |double       |         NA|


#### Column -  W_PERDIAR24
Showing sample of size 5



|   | W_PERDIAR24 (real_cov)| W_PERDIAR24 (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|----------------------:|-------------------:|:---------------|:------------|----------:|
|1  |              0.0013699|           0.0410959|double          |double       | -0.0397260|
|2  |              0.3593074|                 NaN|double          |double       |        NaN|
|3  |              0.0109589|           0.0821918|double          |double       | -0.0712329|
|4  |                    NaN|           0.0428571|double          |double       |        NaN|
|5  |              0.0190736|           0.0080214|double          |double       |  0.0110522|


#### Column -  W_PERDIAR6
Showing sample of size 5



|   | W_PERDIAR6 (real_cov)| W_PERDIAR6 (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|---------------------:|------------------:|:---------------|:------------|----------:|
|1  |             0.0000000|          0.0219780|double          |double       | -0.0219780|
|2  |             0.0164835|          0.0000000|double          |double       |  0.0164835|
|3  |             0.0000000|          0.0838710|double          |double       | -0.0838710|
|4  |             0.0462428|          0.0786517|double          |double       | -0.0324089|
|5  |             0.1648352|          0.0000000|double          |double       |  0.1648352|


#### Column -  WTKG
Showing sample of size 5



|   | WTKG (real_cov)| WTKG (covQI)|Type (real_cov) |Type (covQI) | Difference|
|:--|---------------:|------------:|:---------------|:------------|----------:|
|1  |            3.77|         3.66|double          |double       |       0.11|
|2  |            3.05|         2.70|double          |double       |       0.35|
|3  |            2.95|         2.37|double          |double       |       0.58|
|4  |            9.93|         7.24|double          |double       |       2.69|
|5  |            2.39|         2.83|double          |double       |      -0.44|


