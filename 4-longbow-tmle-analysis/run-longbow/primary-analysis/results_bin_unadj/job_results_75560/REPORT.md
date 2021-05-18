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

**Outcome Variable:** swasted

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

|agecat    |studyid    |country      |hfoodsec             | swasted| n_cell|     n|
|:---------|:----------|:------------|:--------------------|-------:|------:|-----:|
|Birth     |GMS-Nepal  |NEPAL        |Food Insecure        |       0|     85|   613|
|Birth     |GMS-Nepal  |NEPAL        |Food Insecure        |       1|      1|   613|
|Birth     |GMS-Nepal  |NEPAL        |Food Secure          |       0|    404|   613|
|Birth     |GMS-Nepal  |NEPAL        |Food Secure          |       1|     18|   613|
|Birth     |GMS-Nepal  |NEPAL        |Mildly Food Insecure |       0|    100|   613|
|Birth     |GMS-Nepal  |NEPAL        |Mildly Food Insecure |       1|      5|   613|
|Birth     |JiVitA-3   |BANGLADESH   |Food Insecure        |       0|   2019| 11756|
|Birth     |JiVitA-3   |BANGLADESH   |Food Insecure        |       1|     40| 11756|
|Birth     |JiVitA-3   |BANGLADESH   |Food Secure          |       0|   5699| 11756|
|Birth     |JiVitA-3   |BANGLADESH   |Food Secure          |       1|     91| 11756|
|Birth     |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |       0|   3840| 11756|
|Birth     |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |       1|     67| 11756|
|Birth     |JiVitA-4   |BANGLADESH   |Food Insecure        |       0|    303|  2387|
|Birth     |JiVitA-4   |BANGLADESH   |Food Insecure        |       1|      1|  2387|
|Birth     |JiVitA-4   |BANGLADESH   |Food Secure          |       0|   1225|  2387|
|Birth     |JiVitA-4   |BANGLADESH   |Food Secure          |       1|     19|  2387|
|Birth     |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |       0|    828|  2387|
|Birth     |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |       1|     11|  2387|
|Birth     |MAL-ED     |INDIA        |Food Insecure        |       0|      1|    38|
|Birth     |MAL-ED     |INDIA        |Food Insecure        |       1|      0|    38|
|Birth     |MAL-ED     |INDIA        |Food Secure          |       0|     36|    38|
|Birth     |MAL-ED     |INDIA        |Food Secure          |       1|      0|    38|
|Birth     |MAL-ED     |INDIA        |Mildly Food Insecure |       0|      1|    38|
|Birth     |MAL-ED     |INDIA        |Mildly Food Insecure |       1|      0|    38|
|Birth     |MAL-ED     |BANGLADESH   |Food Insecure        |       0|     25|   151|
|Birth     |MAL-ED     |BANGLADESH   |Food Insecure        |       1|      0|   151|
|Birth     |MAL-ED     |BANGLADESH   |Food Secure          |       0|    119|   151|
|Birth     |MAL-ED     |BANGLADESH   |Food Secure          |       1|      5|   151|
|Birth     |MAL-ED     |BANGLADESH   |Mildly Food Insecure |       0|      2|   151|
|Birth     |MAL-ED     |BANGLADESH   |Mildly Food Insecure |       1|      0|   151|
|Birth     |MAL-ED     |PERU         |Food Insecure        |       0|     84|   120|
|Birth     |MAL-ED     |PERU         |Food Insecure        |       1|      0|   120|
|Birth     |MAL-ED     |PERU         |Food Secure          |       0|     25|   120|
|Birth     |MAL-ED     |PERU         |Food Secure          |       1|      0|   120|
|Birth     |MAL-ED     |PERU         |Mildly Food Insecure |       0|     11|   120|
|Birth     |MAL-ED     |PERU         |Mildly Food Insecure |       1|      0|   120|
|Birth     |MAL-ED     |NEPAL        |Food Insecure        |       0|      0|    14|
|Birth     |MAL-ED     |NEPAL        |Food Insecure        |       1|      0|    14|
|Birth     |MAL-ED     |NEPAL        |Food Secure          |       0|     13|    14|
|Birth     |MAL-ED     |NEPAL        |Food Secure          |       1|      0|    14|
|Birth     |MAL-ED     |NEPAL        |Mildly Food Insecure |       0|      1|    14|
|Birth     |MAL-ED     |NEPAL        |Mildly Food Insecure |       1|      0|    14|
|Birth     |MAL-ED     |BRAZIL       |Food Insecure        |       0|     19|    21|
|Birth     |MAL-ED     |BRAZIL       |Food Insecure        |       1|      0|    21|
|Birth     |MAL-ED     |BRAZIL       |Food Secure          |       0|      1|    21|
|Birth     |MAL-ED     |BRAZIL       |Food Secure          |       1|      0|    21|
|Birth     |MAL-ED     |BRAZIL       |Mildly Food Insecure |       0|      1|    21|
|Birth     |MAL-ED     |BRAZIL       |Mildly Food Insecure |       1|      0|    21|
|Birth     |MAL-ED     |SOUTH AFRICA |Food Insecure        |       0|     37|    98|
|Birth     |MAL-ED     |SOUTH AFRICA |Food Insecure        |       1|      0|    98|
|Birth     |MAL-ED     |SOUTH AFRICA |Food Secure          |       0|     47|    98|
|Birth     |MAL-ED     |SOUTH AFRICA |Food Secure          |       1|      0|    98|
|Birth     |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |       0|     14|    98|
|Birth     |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |       1|      0|    98|
|Birth     |NIH-Birth  |BANGLADESH   |Food Insecure        |       0|     46|   575|
|Birth     |NIH-Birth  |BANGLADESH   |Food Insecure        |       1|      2|   575|
|Birth     |NIH-Birth  |BANGLADESH   |Food Secure          |       0|     66|   575|
|Birth     |NIH-Birth  |BANGLADESH   |Food Secure          |       1|      4|   575|
|Birth     |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |       0|    425|   575|
|Birth     |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |       1|     32|   575|
|Birth     |NIH-Crypto |BANGLADESH   |Food Insecure        |       0|     69|   707|
|Birth     |NIH-Crypto |BANGLADESH   |Food Insecure        |       1|      2|   707|
|Birth     |NIH-Crypto |BANGLADESH   |Food Secure          |       0|    405|   707|
|Birth     |NIH-Crypto |BANGLADESH   |Food Secure          |       1|     31|   707|
|Birth     |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |       0|    186|   707|
|Birth     |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |       1|     14|   707|
|6 months  |GMS-Nepal  |NEPAL        |Food Insecure        |       0|     71|   539|
|6 months  |GMS-Nepal  |NEPAL        |Food Insecure        |       1|      1|   539|
|6 months  |GMS-Nepal  |NEPAL        |Food Secure          |       0|    371|   539|
|6 months  |GMS-Nepal  |NEPAL        |Food Secure          |       1|      6|   539|
|6 months  |GMS-Nepal  |NEPAL        |Mildly Food Insecure |       0|     90|   539|
|6 months  |GMS-Nepal  |NEPAL        |Mildly Food Insecure |       1|      0|   539|
|6 months  |JiVitA-3   |BANGLADESH   |Food Insecure        |       0|   2303| 14362|
|6 months  |JiVitA-3   |BANGLADESH   |Food Insecure        |       1|     38| 14362|
|6 months  |JiVitA-3   |BANGLADESH   |Food Secure          |       0|   7141| 14362|
|6 months  |JiVitA-3   |BANGLADESH   |Food Secure          |       1|     90| 14362|
|6 months  |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |       0|   4730| 14362|
|6 months  |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |       1|     60| 14362|
|6 months  |JiVitA-4   |BANGLADESH   |Food Insecure        |       0|    586|  4809|
|6 months  |JiVitA-4   |BANGLADESH   |Food Insecure        |       1|      4|  4809|
|6 months  |JiVitA-4   |BANGLADESH   |Food Secure          |       0|   2558|  4809|
|6 months  |JiVitA-4   |BANGLADESH   |Food Secure          |       1|     18|  4809|
|6 months  |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |       0|   1633|  4809|
|6 months  |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |       1|     10|  4809|
|6 months  |MAL-ED     |INDIA        |Food Insecure        |       0|     15|   213|
|6 months  |MAL-ED     |INDIA        |Food Insecure        |       1|      2|   213|
|6 months  |MAL-ED     |INDIA        |Food Secure          |       0|    190|   213|
|6 months  |MAL-ED     |INDIA        |Food Secure          |       1|      3|   213|
|6 months  |MAL-ED     |INDIA        |Mildly Food Insecure |       0|      3|   213|
|6 months  |MAL-ED     |INDIA        |Mildly Food Insecure |       1|      0|   213|
|6 months  |MAL-ED     |BANGLADESH   |Food Insecure        |       0|     28|   167|
|6 months  |MAL-ED     |BANGLADESH   |Food Insecure        |       1|      0|   167|
|6 months  |MAL-ED     |BANGLADESH   |Food Secure          |       0|    133|   167|
|6 months  |MAL-ED     |BANGLADESH   |Food Secure          |       1|      1|   167|
|6 months  |MAL-ED     |BANGLADESH   |Mildly Food Insecure |       0|      5|   167|
|6 months  |MAL-ED     |BANGLADESH   |Mildly Food Insecure |       1|      0|   167|
|6 months  |MAL-ED     |PERU         |Food Insecure        |       0|     96|   140|
|6 months  |MAL-ED     |PERU         |Food Insecure        |       1|      0|   140|
|6 months  |MAL-ED     |PERU         |Food Secure          |       0|     27|   140|
|6 months  |MAL-ED     |PERU         |Food Secure          |       1|      0|   140|
|6 months  |MAL-ED     |PERU         |Mildly Food Insecure |       0|     17|   140|
|6 months  |MAL-ED     |PERU         |Mildly Food Insecure |       1|      0|   140|
|6 months  |MAL-ED     |NEPAL        |Food Insecure        |       0|     17|   123|
|6 months  |MAL-ED     |NEPAL        |Food Insecure        |       1|      0|   123|
|6 months  |MAL-ED     |NEPAL        |Food Secure          |       0|     94|   123|
|6 months  |MAL-ED     |NEPAL        |Food Secure          |       1|      0|   123|
|6 months  |MAL-ED     |NEPAL        |Mildly Food Insecure |       0|     12|   123|
|6 months  |MAL-ED     |NEPAL        |Mildly Food Insecure |       1|      0|   123|
|6 months  |MAL-ED     |BRAZIL       |Food Insecure        |       0|     91|    98|
|6 months  |MAL-ED     |BRAZIL       |Food Insecure        |       1|      0|    98|
|6 months  |MAL-ED     |BRAZIL       |Food Secure          |       0|      2|    98|
|6 months  |MAL-ED     |BRAZIL       |Food Secure          |       1|      0|    98|
|6 months  |MAL-ED     |BRAZIL       |Mildly Food Insecure |       0|      5|    98|
|6 months  |MAL-ED     |BRAZIL       |Mildly Food Insecure |       1|      0|    98|
|6 months  |MAL-ED     |SOUTH AFRICA |Food Insecure        |       0|     78|   216|
|6 months  |MAL-ED     |SOUTH AFRICA |Food Insecure        |       1|      2|   216|
|6 months  |MAL-ED     |SOUTH AFRICA |Food Secure          |       0|    102|   216|
|6 months  |MAL-ED     |SOUTH AFRICA |Food Secure          |       1|      1|   216|
|6 months  |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |       0|     33|   216|
|6 months  |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |       1|      0|   216|
|6 months  |NIH-Birth  |BANGLADESH   |Food Insecure        |       0|     46|   537|
|6 months  |NIH-Birth  |BANGLADESH   |Food Insecure        |       1|      0|   537|
|6 months  |NIH-Birth  |BANGLADESH   |Food Secure          |       0|     66|   537|
|6 months  |NIH-Birth  |BANGLADESH   |Food Secure          |       1|      2|   537|
|6 months  |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |       0|    419|   537|
|6 months  |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |       1|      4|   537|
|6 months  |NIH-Crypto |BANGLADESH   |Food Insecure        |       0|     68|   715|
|6 months  |NIH-Crypto |BANGLADESH   |Food Insecure        |       1|      0|   715|
|6 months  |NIH-Crypto |BANGLADESH   |Food Secure          |       0|    449|   715|
|6 months  |NIH-Crypto |BANGLADESH   |Food Secure          |       1|      0|   715|
|6 months  |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |       0|    198|   715|
|6 months  |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |       1|      0|   715|
|24 months |GMS-Nepal  |NEPAL        |Food Insecure        |       0|     65|   466|
|24 months |GMS-Nepal  |NEPAL        |Food Insecure        |       1|      2|   466|
|24 months |GMS-Nepal  |NEPAL        |Food Secure          |       0|    310|   466|
|24 months |GMS-Nepal  |NEPAL        |Food Secure          |       1|      9|   466|
|24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |       0|     77|   466|
|24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |       1|      3|   466|
|24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |       0|   1278|  7174|
|24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |       1|     53|  7174|
|24 months |JiVitA-3   |BANGLADESH   |Food Secure          |       0|   3278|  7174|
|24 months |JiVitA-3   |BANGLADESH   |Food Secure          |       1|    136|  7174|
|24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |       0|   2345|  7174|
|24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |       1|     84|  7174|
|24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |       0|    556|  4710|
|24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |       1|     14|  4710|
|24 months |JiVitA-4   |BANGLADESH   |Food Secure          |       0|   2471|  4710|
|24 months |JiVitA-4   |BANGLADESH   |Food Secure          |       1|     65|  4710|
|24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |       0|   1556|  4710|
|24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |       1|     48|  4710|
|24 months |MAL-ED     |INDIA        |Food Insecure        |       0|     16|   204|
|24 months |MAL-ED     |INDIA        |Food Insecure        |       1|      0|   204|
|24 months |MAL-ED     |INDIA        |Food Secure          |       0|    184|   204|
|24 months |MAL-ED     |INDIA        |Food Secure          |       1|      1|   204|
|24 months |MAL-ED     |INDIA        |Mildly Food Insecure |       0|      3|   204|
|24 months |MAL-ED     |INDIA        |Mildly Food Insecure |       1|      0|   204|
|24 months |MAL-ED     |BANGLADESH   |Food Insecure        |       0|     24|   143|
|24 months |MAL-ED     |BANGLADESH   |Food Insecure        |       1|      0|   143|
|24 months |MAL-ED     |BANGLADESH   |Food Secure          |       0|    114|   143|
|24 months |MAL-ED     |BANGLADESH   |Food Secure          |       1|      0|   143|
|24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |       0|      5|   143|
|24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |       1|      0|   143|
|24 months |MAL-ED     |PERU         |Food Insecure        |       0|     64|    98|
|24 months |MAL-ED     |PERU         |Food Insecure        |       1|      0|    98|
|24 months |MAL-ED     |PERU         |Food Secure          |       0|     18|    98|
|24 months |MAL-ED     |PERU         |Food Secure          |       1|      1|    98|
|24 months |MAL-ED     |PERU         |Mildly Food Insecure |       0|     15|    98|
|24 months |MAL-ED     |PERU         |Mildly Food Insecure |       1|      0|    98|
|24 months |MAL-ED     |NEPAL        |Food Insecure        |       0|     16|   119|
|24 months |MAL-ED     |NEPAL        |Food Insecure        |       1|      0|   119|
|24 months |MAL-ED     |NEPAL        |Food Secure          |       0|     91|   119|
|24 months |MAL-ED     |NEPAL        |Food Secure          |       1|      0|   119|
|24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |       0|     12|   119|
|24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |       1|      0|   119|
|24 months |MAL-ED     |BRAZIL       |Food Insecure        |       0|     69|    77|
|24 months |MAL-ED     |BRAZIL       |Food Insecure        |       1|      1|    77|
|24 months |MAL-ED     |BRAZIL       |Food Secure          |       0|      2|    77|
|24 months |MAL-ED     |BRAZIL       |Food Secure          |       1|      0|    77|
|24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |       0|      5|    77|
|24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |       1|      0|    77|
|24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |       0|     74|   202|
|24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |       1|      0|   202|
|24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |       0|     98|   202|
|24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |       1|      0|   202|
|24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |       0|     30|   202|
|24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |       1|      0|   202|
|24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |       0|     36|   428|
|24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |       1|      0|   428|
|24 months |NIH-Birth  |BANGLADESH   |Food Secure          |       0|     56|   428|
|24 months |NIH-Birth  |BANGLADESH   |Food Secure          |       1|      3|   428|
|24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |       0|    326|   428|
|24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |       1|      7|   428|
|24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |       0|     53|   514|
|24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |       1|      0|   514|
|24 months |NIH-Crypto |BANGLADESH   |Food Secure          |       0|    313|   514|
|24 months |NIH-Crypto |BANGLADESH   |Food Secure          |       1|      1|   514|
|24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |       0|    144|   514|
|24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |       1|      3|   514|


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
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH





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


