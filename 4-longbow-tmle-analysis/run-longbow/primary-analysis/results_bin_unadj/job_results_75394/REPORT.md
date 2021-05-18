---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
params:
  roles:
    value:
      - exclude
      - strata
      - id
      - W
      - A
      - Y
  data: 
    value: 
      type: 'web'
      uri: 'https://raw.githubusercontent.com/HBGD-UCB/longbowRiskFactors/master/inst/sample_data/birthwt_data.rdata'
  nodes:
    value:
      strata: ['study_id', 'mrace']
      id: ['subjid']
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
      A: ['parity_cat']
      Y: ['haz01']
  script_params:
    value:
      parallelize:
        input: checkbox
        value: FALSE
      count_A:
        input: checkbox
        value: TRUE
      count_Y:
        input: checkbox
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** hfoodsec

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid    |country      |hfoodsec             | sstunted| n_cell|     n|
|:---------|:----------|:------------|:--------------------|--------:|------:|-----:|
|Birth     |GMS-Nepal  |NEPAL        |Food Insecure        |        0|     86|   665|
|Birth     |GMS-Nepal  |NEPAL        |Food Insecure        |        1|      5|   665|
|Birth     |GMS-Nepal  |NEPAL        |Food Secure          |        0|    436|   665|
|Birth     |GMS-Nepal  |NEPAL        |Food Secure          |        1|     24|   665|
|Birth     |GMS-Nepal  |NEPAL        |Mildly Food Insecure |        0|    112|   665|
|Birth     |GMS-Nepal  |NEPAL        |Mildly Food Insecure |        1|      2|   665|
|Birth     |JiVitA-3   |BANGLADESH   |Food Insecure        |        0|   2274| 14378|
|Birth     |JiVitA-3   |BANGLADESH   |Food Insecure        |        1|    250| 14378|
|Birth     |JiVitA-3   |BANGLADESH   |Food Secure          |        0|   6393| 14378|
|Birth     |JiVitA-3   |BANGLADESH   |Food Secure          |        1|    662| 14378|
|Birth     |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |        0|   4326| 14378|
|Birth     |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |        1|    473| 14378|
|Birth     |JiVitA-4   |BANGLADESH   |Food Insecure        |        0|    331|  2809|
|Birth     |JiVitA-4   |BANGLADESH   |Food Insecure        |        1|     28|  2809|
|Birth     |JiVitA-4   |BANGLADESH   |Food Secure          |        0|   1346|  2809|
|Birth     |JiVitA-4   |BANGLADESH   |Food Secure          |        1|    122|  2809|
|Birth     |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |        0|    902|  2809|
|Birth     |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |        1|     80|  2809|
|Birth     |MAL-ED     |INDIA        |Food Insecure        |        0|      1|    40|
|Birth     |MAL-ED     |INDIA        |Food Insecure        |        1|      0|    40|
|Birth     |MAL-ED     |INDIA        |Food Secure          |        0|     36|    40|
|Birth     |MAL-ED     |INDIA        |Food Secure          |        1|      2|    40|
|Birth     |MAL-ED     |INDIA        |Mildly Food Insecure |        0|      1|    40|
|Birth     |MAL-ED     |INDIA        |Mildly Food Insecure |        1|      0|    40|
|Birth     |MAL-ED     |BANGLADESH   |Food Insecure        |        0|     26|   159|
|Birth     |MAL-ED     |BANGLADESH   |Food Insecure        |        1|      0|   159|
|Birth     |MAL-ED     |BANGLADESH   |Food Secure          |        0|    125|   159|
|Birth     |MAL-ED     |BANGLADESH   |Food Secure          |        1|      4|   159|
|Birth     |MAL-ED     |BANGLADESH   |Mildly Food Insecure |        0|      4|   159|
|Birth     |MAL-ED     |BANGLADESH   |Mildly Food Insecure |        1|      0|   159|
|Birth     |MAL-ED     |PERU         |Food Insecure        |        0|     84|   122|
|Birth     |MAL-ED     |PERU         |Food Insecure        |        1|      2|   122|
|Birth     |MAL-ED     |PERU         |Food Secure          |        0|     25|   122|
|Birth     |MAL-ED     |PERU         |Food Secure          |        1|      0|   122|
|Birth     |MAL-ED     |PERU         |Mildly Food Insecure |        0|     11|   122|
|Birth     |MAL-ED     |PERU         |Mildly Food Insecure |        1|      0|   122|
|Birth     |MAL-ED     |NEPAL        |Food Insecure        |        0|      0|    14|
|Birth     |MAL-ED     |NEPAL        |Food Insecure        |        1|      0|    14|
|Birth     |MAL-ED     |NEPAL        |Food Secure          |        0|     13|    14|
|Birth     |MAL-ED     |NEPAL        |Food Secure          |        1|      0|    14|
|Birth     |MAL-ED     |NEPAL        |Mildly Food Insecure |        0|      1|    14|
|Birth     |MAL-ED     |NEPAL        |Mildly Food Insecure |        1|      0|    14|
|Birth     |MAL-ED     |BRAZIL       |Food Insecure        |        0|     19|    23|
|Birth     |MAL-ED     |BRAZIL       |Food Insecure        |        1|      1|    23|
|Birth     |MAL-ED     |BRAZIL       |Food Secure          |        0|      1|    23|
|Birth     |MAL-ED     |BRAZIL       |Food Secure          |        1|      0|    23|
|Birth     |MAL-ED     |BRAZIL       |Mildly Food Insecure |        0|      1|    23|
|Birth     |MAL-ED     |BRAZIL       |Mildly Food Insecure |        1|      1|    23|
|Birth     |MAL-ED     |SOUTH AFRICA |Food Insecure        |        0|     37|   100|
|Birth     |MAL-ED     |SOUTH AFRICA |Food Insecure        |        1|      0|   100|
|Birth     |MAL-ED     |SOUTH AFRICA |Food Secure          |        0|     48|   100|
|Birth     |MAL-ED     |SOUTH AFRICA |Food Secure          |        1|      0|   100|
|Birth     |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |        0|     14|   100|
|Birth     |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |        1|      1|   100|
|Birth     |NIH-Birth  |BANGLADESH   |Food Insecure        |        0|     49|   608|
|Birth     |NIH-Birth  |BANGLADESH   |Food Insecure        |        1|      0|   608|
|Birth     |NIH-Birth  |BANGLADESH   |Food Secure          |        0|     72|   608|
|Birth     |NIH-Birth  |BANGLADESH   |Food Secure          |        1|      3|   608|
|Birth     |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |        0|    468|   608|
|Birth     |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |        1|     16|   608|
|Birth     |NIH-Crypto |BANGLADESH   |Food Insecure        |        0|     71|   732|
|Birth     |NIH-Crypto |BANGLADESH   |Food Insecure        |        1|      0|   732|
|Birth     |NIH-Crypto |BANGLADESH   |Food Secure          |        0|    446|   732|
|Birth     |NIH-Crypto |BANGLADESH   |Food Secure          |        1|      7|   732|
|Birth     |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |        0|    205|   732|
|Birth     |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |        1|      3|   732|
|6 months  |GMS-Nepal  |NEPAL        |Food Insecure        |        0|     68|   539|
|6 months  |GMS-Nepal  |NEPAL        |Food Insecure        |        1|      4|   539|
|6 months  |GMS-Nepal  |NEPAL        |Food Secure          |        0|    365|   539|
|6 months  |GMS-Nepal  |NEPAL        |Food Secure          |        1|     12|   539|
|6 months  |GMS-Nepal  |NEPAL        |Mildly Food Insecure |        0|     85|   539|
|6 months  |GMS-Nepal  |NEPAL        |Mildly Food Insecure |        1|      5|   539|
|6 months  |JiVitA-3   |BANGLADESH   |Food Insecure        |        0|   2208| 14383|
|6 months  |JiVitA-3   |BANGLADESH   |Food Insecure        |        1|    136| 14383|
|6 months  |JiVitA-3   |BANGLADESH   |Food Secure          |        0|   6827| 14383|
|6 months  |JiVitA-3   |BANGLADESH   |Food Secure          |        1|    415| 14383|
|6 months  |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |        0|   4487| 14383|
|6 months  |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |        1|    310| 14383|
|6 months  |JiVitA-4   |BANGLADESH   |Food Insecure        |        0|    552|  4806|
|6 months  |JiVitA-4   |BANGLADESH   |Food Insecure        |        1|     38|  4806|
|6 months  |JiVitA-4   |BANGLADESH   |Food Secure          |        0|   2430|  4806|
|6 months  |JiVitA-4   |BANGLADESH   |Food Secure          |        1|    145|  4806|
|6 months  |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |        0|   1556|  4806|
|6 months  |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |        1|     85|  4806|
|6 months  |MAL-ED     |INDIA        |Food Insecure        |        0|     16|   213|
|6 months  |MAL-ED     |INDIA        |Food Insecure        |        1|      1|   213|
|6 months  |MAL-ED     |INDIA        |Food Secure          |        0|    186|   213|
|6 months  |MAL-ED     |INDIA        |Food Secure          |        1|      7|   213|
|6 months  |MAL-ED     |INDIA        |Mildly Food Insecure |        0|      3|   213|
|6 months  |MAL-ED     |INDIA        |Mildly Food Insecure |        1|      0|   213|
|6 months  |MAL-ED     |BANGLADESH   |Food Insecure        |        0|     28|   167|
|6 months  |MAL-ED     |BANGLADESH   |Food Insecure        |        1|      0|   167|
|6 months  |MAL-ED     |BANGLADESH   |Food Secure          |        0|    130|   167|
|6 months  |MAL-ED     |BANGLADESH   |Food Secure          |        1|      4|   167|
|6 months  |MAL-ED     |BANGLADESH   |Mildly Food Insecure |        0|      5|   167|
|6 months  |MAL-ED     |BANGLADESH   |Mildly Food Insecure |        1|      0|   167|
|6 months  |MAL-ED     |PERU         |Food Insecure        |        0|     94|   140|
|6 months  |MAL-ED     |PERU         |Food Insecure        |        1|      2|   140|
|6 months  |MAL-ED     |PERU         |Food Secure          |        0|     27|   140|
|6 months  |MAL-ED     |PERU         |Food Secure          |        1|      0|   140|
|6 months  |MAL-ED     |PERU         |Mildly Food Insecure |        0|     17|   140|
|6 months  |MAL-ED     |PERU         |Mildly Food Insecure |        1|      0|   140|
|6 months  |MAL-ED     |NEPAL        |Food Insecure        |        0|     17|   123|
|6 months  |MAL-ED     |NEPAL        |Food Insecure        |        1|      0|   123|
|6 months  |MAL-ED     |NEPAL        |Food Secure          |        0|     94|   123|
|6 months  |MAL-ED     |NEPAL        |Food Secure          |        1|      0|   123|
|6 months  |MAL-ED     |NEPAL        |Mildly Food Insecure |        0|     12|   123|
|6 months  |MAL-ED     |NEPAL        |Mildly Food Insecure |        1|      0|   123|
|6 months  |MAL-ED     |BRAZIL       |Food Insecure        |        0|     91|    98|
|6 months  |MAL-ED     |BRAZIL       |Food Insecure        |        1|      0|    98|
|6 months  |MAL-ED     |BRAZIL       |Food Secure          |        0|      2|    98|
|6 months  |MAL-ED     |BRAZIL       |Food Secure          |        1|      0|    98|
|6 months  |MAL-ED     |BRAZIL       |Mildly Food Insecure |        0|      5|    98|
|6 months  |MAL-ED     |BRAZIL       |Mildly Food Insecure |        1|      0|    98|
|6 months  |MAL-ED     |SOUTH AFRICA |Food Insecure        |        0|     79|   216|
|6 months  |MAL-ED     |SOUTH AFRICA |Food Insecure        |        1|      1|   216|
|6 months  |MAL-ED     |SOUTH AFRICA |Food Secure          |        0|    101|   216|
|6 months  |MAL-ED     |SOUTH AFRICA |Food Secure          |        1|      2|   216|
|6 months  |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |        0|     30|   216|
|6 months  |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |        1|      3|   216|
|6 months  |NIH-Birth  |BANGLADESH   |Food Insecure        |        0|     45|   537|
|6 months  |NIH-Birth  |BANGLADESH   |Food Insecure        |        1|      1|   537|
|6 months  |NIH-Birth  |BANGLADESH   |Food Secure          |        0|     66|   537|
|6 months  |NIH-Birth  |BANGLADESH   |Food Secure          |        1|      2|   537|
|6 months  |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |        0|    391|   537|
|6 months  |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |        1|     32|   537|
|6 months  |NIH-Crypto |BANGLADESH   |Food Insecure        |        0|     63|   715|
|6 months  |NIH-Crypto |BANGLADESH   |Food Insecure        |        1|      5|   715|
|6 months  |NIH-Crypto |BANGLADESH   |Food Secure          |        0|    439|   715|
|6 months  |NIH-Crypto |BANGLADESH   |Food Secure          |        1|     10|   715|
|6 months  |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |        0|    190|   715|
|6 months  |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |        1|      8|   715|
|24 months |GMS-Nepal  |NEPAL        |Food Insecure        |        0|     62|   467|
|24 months |GMS-Nepal  |NEPAL        |Food Insecure        |        1|      5|   467|
|24 months |GMS-Nepal  |NEPAL        |Food Secure          |        0|    281|   467|
|24 months |GMS-Nepal  |NEPAL        |Food Secure          |        1|     39|   467|
|24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |        0|     73|   467|
|24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |        1|      7|   467|
|24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |        0|   1104|  7198|
|24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |        1|    230|  7198|
|24 months |JiVitA-3   |BANGLADESH   |Food Secure          |        0|   2907|  7198|
|24 months |JiVitA-3   |BANGLADESH   |Food Secure          |        1|    520|  7198|
|24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |        0|   2037|  7198|
|24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |        1|    400|  7198|
|24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |        0|    523|  4727|
|24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |        1|     50|  4727|
|24 months |JiVitA-4   |BANGLADESH   |Food Secure          |        0|   2292|  4727|
|24 months |JiVitA-4   |BANGLADESH   |Food Secure          |        1|    253|  4727|
|24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |        0|   1461|  4727|
|24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |        1|    148|  4727|
|24 months |MAL-ED     |INDIA        |Food Insecure        |        0|     14|   204|
|24 months |MAL-ED     |INDIA        |Food Insecure        |        1|      2|   204|
|24 months |MAL-ED     |INDIA        |Food Secure          |        0|    160|   204|
|24 months |MAL-ED     |INDIA        |Food Secure          |        1|     25|   204|
|24 months |MAL-ED     |INDIA        |Mildly Food Insecure |        0|      3|   204|
|24 months |MAL-ED     |INDIA        |Mildly Food Insecure |        1|      0|   204|
|24 months |MAL-ED     |BANGLADESH   |Food Insecure        |        0|     24|   143|
|24 months |MAL-ED     |BANGLADESH   |Food Insecure        |        1|      0|   143|
|24 months |MAL-ED     |BANGLADESH   |Food Secure          |        0|    103|   143|
|24 months |MAL-ED     |BANGLADESH   |Food Secure          |        1|     11|   143|
|24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |        0|      4|   143|
|24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |        1|      1|   143|
|24 months |MAL-ED     |PERU         |Food Insecure        |        0|     59|    98|
|24 months |MAL-ED     |PERU         |Food Insecure        |        1|      5|    98|
|24 months |MAL-ED     |PERU         |Food Secure          |        0|     17|    98|
|24 months |MAL-ED     |PERU         |Food Secure          |        1|      2|    98|
|24 months |MAL-ED     |PERU         |Mildly Food Insecure |        0|     15|    98|
|24 months |MAL-ED     |PERU         |Mildly Food Insecure |        1|      0|    98|
|24 months |MAL-ED     |NEPAL        |Food Insecure        |        0|     16|   119|
|24 months |MAL-ED     |NEPAL        |Food Insecure        |        1|      0|   119|
|24 months |MAL-ED     |NEPAL        |Food Secure          |        0|     88|   119|
|24 months |MAL-ED     |NEPAL        |Food Secure          |        1|      3|   119|
|24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |        0|     12|   119|
|24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |        1|      0|   119|
|24 months |MAL-ED     |BRAZIL       |Food Insecure        |        0|     70|    77|
|24 months |MAL-ED     |BRAZIL       |Food Insecure        |        1|      0|    77|
|24 months |MAL-ED     |BRAZIL       |Food Secure          |        0|      2|    77|
|24 months |MAL-ED     |BRAZIL       |Food Secure          |        1|      0|    77|
|24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |        0|      5|    77|
|24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |        1|      0|    77|
|24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |        0|     68|   202|
|24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |        1|      6|   202|
|24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |        0|     86|   202|
|24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |        1|     12|   202|
|24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |        0|     25|   202|
|24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |        1|      5|   202|
|24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |        0|     30|   429|
|24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |        1|      6|   429|
|24 months |NIH-Birth  |BANGLADESH   |Food Secure          |        0|     50|   429|
|24 months |NIH-Birth  |BANGLADESH   |Food Secure          |        1|      9|   429|
|24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |        0|    254|   429|
|24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |        1|     80|   429|
|24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |        0|     47|   514|
|24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |        1|      6|   514|
|24 months |NIH-Crypto |BANGLADESH   |Food Secure          |        0|    297|   514|
|24 months |NIH-Crypto |BANGLADESH   |Food Secure          |        1|     17|   514|
|24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |        0|    134|   514|
|24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |        1|     13|   514|


The following strata were considered:

* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


