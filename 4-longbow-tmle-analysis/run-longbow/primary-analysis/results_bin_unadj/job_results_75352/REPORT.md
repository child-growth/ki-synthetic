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

**Outcome Variable:** stunted

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

|agecat    |studyid    |country      |hfoodsec             | stunted| n_cell|     n|
|:---------|:----------|:------------|:--------------------|-------:|------:|-----:|
|Birth     |GMS-Nepal  |NEPAL        |Food Insecure        |       0|     77|   665|
|Birth     |GMS-Nepal  |NEPAL        |Food Insecure        |       1|     14|   665|
|Birth     |GMS-Nepal  |NEPAL        |Food Secure          |       0|    374|   665|
|Birth     |GMS-Nepal  |NEPAL        |Food Secure          |       1|     86|   665|
|Birth     |GMS-Nepal  |NEPAL        |Mildly Food Insecure |       0|     98|   665|
|Birth     |GMS-Nepal  |NEPAL        |Mildly Food Insecure |       1|     16|   665|
|Birth     |JiVitA-3   |BANGLADESH   |Food Insecure        |       0|   1737| 14378|
|Birth     |JiVitA-3   |BANGLADESH   |Food Insecure        |       1|    787| 14378|
|Birth     |JiVitA-3   |BANGLADESH   |Food Secure          |       0|   4857| 14378|
|Birth     |JiVitA-3   |BANGLADESH   |Food Secure          |       1|   2198| 14378|
|Birth     |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |       0|   3261| 14378|
|Birth     |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |       1|   1538| 14378|
|Birth     |JiVitA-4   |BANGLADESH   |Food Insecure        |       0|    243|  2809|
|Birth     |JiVitA-4   |BANGLADESH   |Food Insecure        |       1|    116|  2809|
|Birth     |JiVitA-4   |BANGLADESH   |Food Secure          |       0|   1036|  2809|
|Birth     |JiVitA-4   |BANGLADESH   |Food Secure          |       1|    432|  2809|
|Birth     |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |       0|    682|  2809|
|Birth     |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |       1|    300|  2809|
|Birth     |MAL-ED     |INDIA        |Food Insecure        |       0|      1|    40|
|Birth     |MAL-ED     |INDIA        |Food Insecure        |       1|      0|    40|
|Birth     |MAL-ED     |INDIA        |Food Secure          |       0|     31|    40|
|Birth     |MAL-ED     |INDIA        |Food Secure          |       1|      7|    40|
|Birth     |MAL-ED     |INDIA        |Mildly Food Insecure |       0|      1|    40|
|Birth     |MAL-ED     |INDIA        |Mildly Food Insecure |       1|      0|    40|
|Birth     |MAL-ED     |BANGLADESH   |Food Insecure        |       0|     22|   159|
|Birth     |MAL-ED     |BANGLADESH   |Food Insecure        |       1|      4|   159|
|Birth     |MAL-ED     |BANGLADESH   |Food Secure          |       0|    108|   159|
|Birth     |MAL-ED     |BANGLADESH   |Food Secure          |       1|     21|   159|
|Birth     |MAL-ED     |BANGLADESH   |Mildly Food Insecure |       0|      2|   159|
|Birth     |MAL-ED     |BANGLADESH   |Mildly Food Insecure |       1|      2|   159|
|Birth     |MAL-ED     |PERU         |Food Insecure        |       0|     76|   122|
|Birth     |MAL-ED     |PERU         |Food Insecure        |       1|     10|   122|
|Birth     |MAL-ED     |PERU         |Food Secure          |       0|     24|   122|
|Birth     |MAL-ED     |PERU         |Food Secure          |       1|      1|   122|
|Birth     |MAL-ED     |PERU         |Mildly Food Insecure |       0|     11|   122|
|Birth     |MAL-ED     |PERU         |Mildly Food Insecure |       1|      0|   122|
|Birth     |MAL-ED     |NEPAL        |Food Insecure        |       0|      0|    14|
|Birth     |MAL-ED     |NEPAL        |Food Insecure        |       1|      0|    14|
|Birth     |MAL-ED     |NEPAL        |Food Secure          |       0|     13|    14|
|Birth     |MAL-ED     |NEPAL        |Food Secure          |       1|      0|    14|
|Birth     |MAL-ED     |NEPAL        |Mildly Food Insecure |       0|      1|    14|
|Birth     |MAL-ED     |NEPAL        |Mildly Food Insecure |       1|      0|    14|
|Birth     |MAL-ED     |BRAZIL       |Food Insecure        |       0|     16|    23|
|Birth     |MAL-ED     |BRAZIL       |Food Insecure        |       1|      4|    23|
|Birth     |MAL-ED     |BRAZIL       |Food Secure          |       0|      1|    23|
|Birth     |MAL-ED     |BRAZIL       |Food Secure          |       1|      0|    23|
|Birth     |MAL-ED     |BRAZIL       |Mildly Food Insecure |       0|      0|    23|
|Birth     |MAL-ED     |BRAZIL       |Mildly Food Insecure |       1|      2|    23|
|Birth     |MAL-ED     |SOUTH AFRICA |Food Insecure        |       0|     32|   100|
|Birth     |MAL-ED     |SOUTH AFRICA |Food Insecure        |       1|      5|   100|
|Birth     |MAL-ED     |SOUTH AFRICA |Food Secure          |       0|     45|   100|
|Birth     |MAL-ED     |SOUTH AFRICA |Food Secure          |       1|      3|   100|
|Birth     |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |       0|     14|   100|
|Birth     |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |       1|      1|   100|
|Birth     |NIH-Birth  |BANGLADESH   |Food Insecure        |       0|     45|   608|
|Birth     |NIH-Birth  |BANGLADESH   |Food Insecure        |       1|      4|   608|
|Birth     |NIH-Birth  |BANGLADESH   |Food Secure          |       0|     64|   608|
|Birth     |NIH-Birth  |BANGLADESH   |Food Secure          |       1|     11|   608|
|Birth     |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |       0|    402|   608|
|Birth     |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |       1|     82|   608|
|Birth     |NIH-Crypto |BANGLADESH   |Food Insecure        |       0|     64|   732|
|Birth     |NIH-Crypto |BANGLADESH   |Food Insecure        |       1|      7|   732|
|Birth     |NIH-Crypto |BANGLADESH   |Food Secure          |       0|    385|   732|
|Birth     |NIH-Crypto |BANGLADESH   |Food Secure          |       1|     68|   732|
|Birth     |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |       0|    182|   732|
|Birth     |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |       1|     26|   732|
|6 months  |GMS-Nepal  |NEPAL        |Food Insecure        |       0|     54|   539|
|6 months  |GMS-Nepal  |NEPAL        |Food Insecure        |       1|     18|   539|
|6 months  |GMS-Nepal  |NEPAL        |Food Secure          |       0|    302|   539|
|6 months  |GMS-Nepal  |NEPAL        |Food Secure          |       1|     75|   539|
|6 months  |GMS-Nepal  |NEPAL        |Mildly Food Insecure |       0|     66|   539|
|6 months  |GMS-Nepal  |NEPAL        |Mildly Food Insecure |       1|     24|   539|
|6 months  |JiVitA-3   |BANGLADESH   |Food Insecure        |       0|   1743| 14383|
|6 months  |JiVitA-3   |BANGLADESH   |Food Insecure        |       1|    601| 14383|
|6 months  |JiVitA-3   |BANGLADESH   |Food Secure          |       0|   5423| 14383|
|6 months  |JiVitA-3   |BANGLADESH   |Food Secure          |       1|   1819| 14383|
|6 months  |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |       0|   3582| 14383|
|6 months  |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |       1|   1215| 14383|
|6 months  |JiVitA-4   |BANGLADESH   |Food Insecure        |       0|    444|  4806|
|6 months  |JiVitA-4   |BANGLADESH   |Food Insecure        |       1|    146|  4806|
|6 months  |JiVitA-4   |BANGLADESH   |Food Secure          |       0|   1925|  4806|
|6 months  |JiVitA-4   |BANGLADESH   |Food Secure          |       1|    650|  4806|
|6 months  |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |       0|   1226|  4806|
|6 months  |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |       1|    415|  4806|
|6 months  |MAL-ED     |INDIA        |Food Insecure        |       0|     13|   213|
|6 months  |MAL-ED     |INDIA        |Food Insecure        |       1|      4|   213|
|6 months  |MAL-ED     |INDIA        |Food Secure          |       0|    156|   213|
|6 months  |MAL-ED     |INDIA        |Food Secure          |       1|     37|   213|
|6 months  |MAL-ED     |INDIA        |Mildly Food Insecure |       0|      3|   213|
|6 months  |MAL-ED     |INDIA        |Mildly Food Insecure |       1|      0|   213|
|6 months  |MAL-ED     |BANGLADESH   |Food Insecure        |       0|     26|   167|
|6 months  |MAL-ED     |BANGLADESH   |Food Insecure        |       1|      2|   167|
|6 months  |MAL-ED     |BANGLADESH   |Food Secure          |       0|    116|   167|
|6 months  |MAL-ED     |BANGLADESH   |Food Secure          |       1|     18|   167|
|6 months  |MAL-ED     |BANGLADESH   |Mildly Food Insecure |       0|      4|   167|
|6 months  |MAL-ED     |BANGLADESH   |Mildly Food Insecure |       1|      1|   167|
|6 months  |MAL-ED     |PERU         |Food Insecure        |       0|     78|   140|
|6 months  |MAL-ED     |PERU         |Food Insecure        |       1|     18|   140|
|6 months  |MAL-ED     |PERU         |Food Secure          |       0|     21|   140|
|6 months  |MAL-ED     |PERU         |Food Secure          |       1|      6|   140|
|6 months  |MAL-ED     |PERU         |Mildly Food Insecure |       0|     15|   140|
|6 months  |MAL-ED     |PERU         |Mildly Food Insecure |       1|      2|   140|
|6 months  |MAL-ED     |NEPAL        |Food Insecure        |       0|     17|   123|
|6 months  |MAL-ED     |NEPAL        |Food Insecure        |       1|      0|   123|
|6 months  |MAL-ED     |NEPAL        |Food Secure          |       0|     88|   123|
|6 months  |MAL-ED     |NEPAL        |Food Secure          |       1|      6|   123|
|6 months  |MAL-ED     |NEPAL        |Mildly Food Insecure |       0|     12|   123|
|6 months  |MAL-ED     |NEPAL        |Mildly Food Insecure |       1|      0|   123|
|6 months  |MAL-ED     |BRAZIL       |Food Insecure        |       0|     89|    98|
|6 months  |MAL-ED     |BRAZIL       |Food Insecure        |       1|      2|    98|
|6 months  |MAL-ED     |BRAZIL       |Food Secure          |       0|      2|    98|
|6 months  |MAL-ED     |BRAZIL       |Food Secure          |       1|      0|    98|
|6 months  |MAL-ED     |BRAZIL       |Mildly Food Insecure |       0|      5|    98|
|6 months  |MAL-ED     |BRAZIL       |Mildly Food Insecure |       1|      0|    98|
|6 months  |MAL-ED     |SOUTH AFRICA |Food Insecure        |       0|     65|   216|
|6 months  |MAL-ED     |SOUTH AFRICA |Food Insecure        |       1|     15|   216|
|6 months  |MAL-ED     |SOUTH AFRICA |Food Secure          |       0|     85|   216|
|6 months  |MAL-ED     |SOUTH AFRICA |Food Secure          |       1|     18|   216|
|6 months  |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |       0|     24|   216|
|6 months  |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |       1|      9|   216|
|6 months  |NIH-Birth  |BANGLADESH   |Food Insecure        |       0|     33|   537|
|6 months  |NIH-Birth  |BANGLADESH   |Food Insecure        |       1|     13|   537|
|6 months  |NIH-Birth  |BANGLADESH   |Food Secure          |       0|     53|   537|
|6 months  |NIH-Birth  |BANGLADESH   |Food Secure          |       1|     15|   537|
|6 months  |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |       0|    307|   537|
|6 months  |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |       1|    116|   537|
|6 months  |NIH-Crypto |BANGLADESH   |Food Insecure        |       0|     56|   715|
|6 months  |NIH-Crypto |BANGLADESH   |Food Insecure        |       1|     12|   715|
|6 months  |NIH-Crypto |BANGLADESH   |Food Secure          |       0|    351|   715|
|6 months  |NIH-Crypto |BANGLADESH   |Food Secure          |       1|     98|   715|
|6 months  |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |       0|    158|   715|
|6 months  |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |       1|     40|   715|
|24 months |GMS-Nepal  |NEPAL        |Food Insecure        |       0|     37|   467|
|24 months |GMS-Nepal  |NEPAL        |Food Insecure        |       1|     30|   467|
|24 months |GMS-Nepal  |NEPAL        |Food Secure          |       0|    172|   467|
|24 months |GMS-Nepal  |NEPAL        |Food Secure          |       1|    148|   467|
|24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |       0|     46|   467|
|24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |       1|     34|   467|
|24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |       0|    652|  7198|
|24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |       1|    682|  7198|
|24 months |JiVitA-3   |BANGLADESH   |Food Secure          |       0|   1748|  7198|
|24 months |JiVitA-3   |BANGLADESH   |Food Secure          |       1|   1679|  7198|
|24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |       0|   1229|  7198|
|24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |       1|   1208|  7198|
|24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |       0|    356|  4727|
|24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |       1|    217|  4727|
|24 months |JiVitA-4   |BANGLADESH   |Food Secure          |       0|   1516|  4727|
|24 months |JiVitA-4   |BANGLADESH   |Food Secure          |       1|   1029|  4727|
|24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |       0|    960|  4727|
|24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |       1|    649|  4727|
|24 months |MAL-ED     |INDIA        |Food Insecure        |       0|      8|   204|
|24 months |MAL-ED     |INDIA        |Food Insecure        |       1|      8|   204|
|24 months |MAL-ED     |INDIA        |Food Secure          |       0|    105|   204|
|24 months |MAL-ED     |INDIA        |Food Secure          |       1|     80|   204|
|24 months |MAL-ED     |INDIA        |Mildly Food Insecure |       0|      2|   204|
|24 months |MAL-ED     |INDIA        |Mildly Food Insecure |       1|      1|   204|
|24 months |MAL-ED     |BANGLADESH   |Food Insecure        |       0|     13|   143|
|24 months |MAL-ED     |BANGLADESH   |Food Insecure        |       1|     11|   143|
|24 months |MAL-ED     |BANGLADESH   |Food Secure          |       0|     67|   143|
|24 months |MAL-ED     |BANGLADESH   |Food Secure          |       1|     47|   143|
|24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |       0|      1|   143|
|24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |       1|      4|   143|
|24 months |MAL-ED     |PERU         |Food Insecure        |       0|     42|    98|
|24 months |MAL-ED     |PERU         |Food Insecure        |       1|     22|    98|
|24 months |MAL-ED     |PERU         |Food Secure          |       0|     14|    98|
|24 months |MAL-ED     |PERU         |Food Secure          |       1|      5|    98|
|24 months |MAL-ED     |PERU         |Mildly Food Insecure |       0|     10|    98|
|24 months |MAL-ED     |PERU         |Mildly Food Insecure |       1|      5|    98|
|24 months |MAL-ED     |NEPAL        |Food Insecure        |       0|     13|   119|
|24 months |MAL-ED     |NEPAL        |Food Insecure        |       1|      3|   119|
|24 months |MAL-ED     |NEPAL        |Food Secure          |       0|     66|   119|
|24 months |MAL-ED     |NEPAL        |Food Secure          |       1|     25|   119|
|24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |       0|     12|   119|
|24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |       1|      0|   119|
|24 months |MAL-ED     |BRAZIL       |Food Insecure        |       0|     68|    77|
|24 months |MAL-ED     |BRAZIL       |Food Insecure        |       1|      2|    77|
|24 months |MAL-ED     |BRAZIL       |Food Secure          |       0|      2|    77|
|24 months |MAL-ED     |BRAZIL       |Food Secure          |       1|      0|    77|
|24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |       0|      5|    77|
|24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |       1|      0|    77|
|24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |       0|     51|   202|
|24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |       1|     23|   202|
|24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |       0|     65|   202|
|24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |       1|     33|   202|
|24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |       0|     16|   202|
|24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |       1|     14|   202|
|24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |       0|     17|   429|
|24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |       1|     19|   429|
|24 months |NIH-Birth  |BANGLADESH   |Food Secure          |       0|     24|   429|
|24 months |NIH-Birth  |BANGLADESH   |Food Secure          |       1|     35|   429|
|24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |       0|    144|   429|
|24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |       1|    190|   429|
|24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |       0|     38|   514|
|24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |       1|     15|   514|
|24 months |NIH-Crypto |BANGLADESH   |Food Secure          |       0|    241|   514|
|24 months |NIH-Crypto |BANGLADESH   |Food Secure          |       1|     73|   514|
|24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |       0|    103|   514|
|24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |       1|     44|   514|


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

* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
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


