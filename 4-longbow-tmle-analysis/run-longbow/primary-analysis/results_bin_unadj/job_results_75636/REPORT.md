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

**Outcome Variable:** ever_wasted

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

|agecat      |studyid    |country      |hfoodsec             | ever_wasted| n_cell|     n|
|:-----------|:----------|:------------|:--------------------|-----------:|------:|-----:|
|0-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |           0|     44|   656|
|0-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |           1|     47|   656|
|0-24 months |GMS-Nepal  |NEPAL        |Food Secure          |           0|    183|   656|
|0-24 months |GMS-Nepal  |NEPAL        |Food Secure          |           1|    268|   656|
|0-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |           0|     42|   656|
|0-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |           1|     72|   656|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |           0|   2183| 17409|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |           1|    814| 17409|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |           0|   6314| 17409|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |           1|   2323| 17409|
|0-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |           0|   4198| 17409|
|0-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |           1|   1577| 17409|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |           0|    453|  5416|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |           1|    214|  5416|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |           0|   2030|  5416|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |           1|    877|  5416|
|0-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |           0|   1252|  5416|
|0-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |           1|    590|  5416|
|0-24 months |MAL-ED     |INDIA        |Food Insecure        |           0|      9|   225|
|0-24 months |MAL-ED     |INDIA        |Food Insecure        |           1|      9|   225|
|0-24 months |MAL-ED     |INDIA        |Food Secure          |           0|    106|   225|
|0-24 months |MAL-ED     |INDIA        |Food Secure          |           1|     97|   225|
|0-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |           0|      1|   225|
|0-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |           1|      3|   225|
|0-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |           0|     22|   183|
|0-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |           1|      7|   183|
|0-24 months |MAL-ED     |BANGLADESH   |Food Secure          |           0|     99|   183|
|0-24 months |MAL-ED     |BANGLADESH   |Food Secure          |           1|     50|   183|
|0-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |           0|      3|   183|
|0-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |           1|      2|   183|
|0-24 months |MAL-ED     |PERU         |Food Insecure        |           0|     99|   157|
|0-24 months |MAL-ED     |PERU         |Food Insecure        |           1|      9|   157|
|0-24 months |MAL-ED     |PERU         |Food Secure          |           0|     28|   157|
|0-24 months |MAL-ED     |PERU         |Food Secure          |           1|      3|   157|
|0-24 months |MAL-ED     |PERU         |Mildly Food Insecure |           0|     15|   157|
|0-24 months |MAL-ED     |PERU         |Mildly Food Insecure |           1|      3|   157|
|0-24 months |MAL-ED     |NEPAL        |Food Insecure        |           0|     11|   126|
|0-24 months |MAL-ED     |NEPAL        |Food Insecure        |           1|      7|   126|
|0-24 months |MAL-ED     |NEPAL        |Food Secure          |           0|     63|   126|
|0-24 months |MAL-ED     |NEPAL        |Food Secure          |           1|     33|   126|
|0-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |           0|      6|   126|
|0-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |           1|      6|   126|
|0-24 months |MAL-ED     |BRAZIL       |Food Insecure        |           0|     91|   111|
|0-24 months |MAL-ED     |BRAZIL       |Food Insecure        |           1|     12|   111|
|0-24 months |MAL-ED     |BRAZIL       |Food Secure          |           0|      2|   111|
|0-24 months |MAL-ED     |BRAZIL       |Food Secure          |           1|      0|   111|
|0-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |           0|      6|   111|
|0-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |           1|      0|   111|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |           0|     73|   251|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |           1|     20|   251|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |           0|     98|   251|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |           1|     24|   251|
|0-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |           0|     29|   251|
|0-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |           1|      7|   251|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |           0|     29|   624|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |           1|     23|   624|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |           0|     43|   624|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |           1|     33|   624|
|0-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |           0|    254|   624|
|0-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |           1|    242|   624|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |           0|     47|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |           1|     25|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |           0|    312|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |           1|    160|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |           0|    149|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |           1|     65|   758|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Insecure        |           0|     63|   656|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Insecure        |           1|     28|   656|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Secure          |           0|    281|   656|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Secure          |           1|    170|   656|
|0-6 months  |GMS-Nepal  |NEPAL        |Mildly Food Insecure |           0|     67|   656|
|0-6 months  |GMS-Nepal  |NEPAL        |Mildly Food Insecure |           1|     47|   656|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Insecure        |           0|   2483| 17334|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Insecure        |           1|    501| 17334|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Secure          |           0|   7189| 17334|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Secure          |           1|   1413| 17334|
|0-6 months  |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |           0|   4832| 17334|
|0-6 months  |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |           1|    916| 17334|
|0-6 months  |JiVitA-4   |BANGLADESH   |Food Insecure        |           0|    550|  5070|
|0-6 months  |JiVitA-4   |BANGLADESH   |Food Insecure        |           1|     75|  5070|
|0-6 months  |JiVitA-4   |BANGLADESH   |Food Secure          |           0|   2418|  5070|
|0-6 months  |JiVitA-4   |BANGLADESH   |Food Secure          |           1|    298|  5070|
|0-6 months  |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |           0|   1553|  5070|
|0-6 months  |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |           1|    176|  5070|
|0-6 months  |MAL-ED     |INDIA        |Food Insecure        |           0|     12|   225|
|0-6 months  |MAL-ED     |INDIA        |Food Insecure        |           1|      6|   225|
|0-6 months  |MAL-ED     |INDIA        |Food Secure          |           0|    137|   225|
|0-6 months  |MAL-ED     |INDIA        |Food Secure          |           1|     66|   225|
|0-6 months  |MAL-ED     |INDIA        |Mildly Food Insecure |           0|      1|   225|
|0-6 months  |MAL-ED     |INDIA        |Mildly Food Insecure |           1|      3|   225|
|0-6 months  |MAL-ED     |BANGLADESH   |Food Insecure        |           0|     25|   183|
|0-6 months  |MAL-ED     |BANGLADESH   |Food Insecure        |           1|      4|   183|
|0-6 months  |MAL-ED     |BANGLADESH   |Food Secure          |           0|    113|   183|
|0-6 months  |MAL-ED     |BANGLADESH   |Food Secure          |           1|     36|   183|
|0-6 months  |MAL-ED     |BANGLADESH   |Mildly Food Insecure |           0|      5|   183|
|0-6 months  |MAL-ED     |BANGLADESH   |Mildly Food Insecure |           1|      0|   183|
|0-6 months  |MAL-ED     |PERU         |Food Insecure        |           0|    103|   157|
|0-6 months  |MAL-ED     |PERU         |Food Insecure        |           1|      5|   157|
|0-6 months  |MAL-ED     |PERU         |Food Secure          |           0|     31|   157|
|0-6 months  |MAL-ED     |PERU         |Food Secure          |           1|      0|   157|
|0-6 months  |MAL-ED     |PERU         |Mildly Food Insecure |           0|     15|   157|
|0-6 months  |MAL-ED     |PERU         |Mildly Food Insecure |           1|      3|   157|
|0-6 months  |MAL-ED     |NEPAL        |Food Insecure        |           0|     12|   126|
|0-6 months  |MAL-ED     |NEPAL        |Food Insecure        |           1|      6|   126|
|0-6 months  |MAL-ED     |NEPAL        |Food Secure          |           0|     76|   126|
|0-6 months  |MAL-ED     |NEPAL        |Food Secure          |           1|     20|   126|
|0-6 months  |MAL-ED     |NEPAL        |Mildly Food Insecure |           0|      8|   126|
|0-6 months  |MAL-ED     |NEPAL        |Mildly Food Insecure |           1|      4|   126|
|0-6 months  |MAL-ED     |BRAZIL       |Food Insecure        |           0|     95|   111|
|0-6 months  |MAL-ED     |BRAZIL       |Food Insecure        |           1|      8|   111|
|0-6 months  |MAL-ED     |BRAZIL       |Food Secure          |           0|      2|   111|
|0-6 months  |MAL-ED     |BRAZIL       |Food Secure          |           1|      0|   111|
|0-6 months  |MAL-ED     |BRAZIL       |Mildly Food Insecure |           0|      6|   111|
|0-6 months  |MAL-ED     |BRAZIL       |Mildly Food Insecure |           1|      0|   111|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Food Insecure        |           0|     82|   251|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Food Insecure        |           1|     11|   251|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Food Secure          |           0|    110|   251|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Food Secure          |           1|     12|   251|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |           0|     32|   251|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |           1|      4|   251|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Insecure        |           0|     35|   622|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Insecure        |           1|     17|   622|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Secure          |           0|     54|   622|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Secure          |           1|     22|   622|
|0-6 months  |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |           0|    311|   622|
|0-6 months  |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |           1|    183|   622|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Insecure        |           0|     55|   758|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Insecure        |           1|     17|   758|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Secure          |           0|    344|   758|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Secure          |           1|    128|   758|
|0-6 months  |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |           0|    164|   758|
|0-6 months  |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |           1|     50|   758|
|6-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |           0|     45|   563|
|6-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |           1|     32|   563|
|6-24 months |GMS-Nepal  |NEPAL        |Food Secure          |           0|    202|   563|
|6-24 months |GMS-Nepal  |NEPAL        |Food Secure          |           1|    187|   563|
|6-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |           0|     50|   563|
|6-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |           1|     47|   563|
|6-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |           0|   2006| 14812|
|6-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |           1|    417| 14812|
|6-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |           0|   6288| 14812|
|6-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |           1|   1163| 14812|
|6-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |           0|   4121| 14812|
|6-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |           1|    817| 14812|
|6-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |           0|    503|  5403|
|6-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |           1|    162|  5403|
|6-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |           0|   2216|  5403|
|6-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |           1|    686|  5403|
|6-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |           0|   1346|  5403|
|6-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |           1|    490|  5403|
|6-24 months |MAL-ED     |INDIA        |Food Insecure        |           0|     14|   212|
|6-24 months |MAL-ED     |INDIA        |Food Insecure        |           1|      3|   212|
|6-24 months |MAL-ED     |INDIA        |Food Secure          |           0|    137|   212|
|6-24 months |MAL-ED     |INDIA        |Food Secure          |           1|     55|   212|
|6-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |           0|      2|   212|
|6-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |           1|      1|   212|
|6-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |           0|     23|   165|
|6-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |           1|      4|   165|
|6-24 months |MAL-ED     |BANGLADESH   |Food Secure          |           0|    108|   165|
|6-24 months |MAL-ED     |BANGLADESH   |Food Secure          |           1|     25|   165|
|6-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |           0|      3|   165|
|6-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |           1|      2|   165|
|6-24 months |MAL-ED     |PERU         |Food Insecure        |           0|     92|   139|
|6-24 months |MAL-ED     |PERU         |Food Insecure        |           1|      4|   139|
|6-24 months |MAL-ED     |PERU         |Food Secure          |           0|     23|   139|
|6-24 months |MAL-ED     |PERU         |Food Secure          |           1|      3|   139|
|6-24 months |MAL-ED     |PERU         |Mildly Food Insecure |           0|     16|   139|
|6-24 months |MAL-ED     |PERU         |Mildly Food Insecure |           1|      1|   139|
|6-24 months |MAL-ED     |NEPAL        |Food Insecure        |           0|     14|   123|
|6-24 months |MAL-ED     |NEPAL        |Food Insecure        |           1|      3|   123|
|6-24 months |MAL-ED     |NEPAL        |Food Secure          |           0|     76|   123|
|6-24 months |MAL-ED     |NEPAL        |Food Secure          |           1|     18|   123|
|6-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |           0|      9|   123|
|6-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |           1|      3|   123|
|6-24 months |MAL-ED     |BRAZIL       |Food Insecure        |           0|     86|    98|
|6-24 months |MAL-ED     |BRAZIL       |Food Insecure        |           1|      5|    98|
|6-24 months |MAL-ED     |BRAZIL       |Food Secure          |           0|      2|    98|
|6-24 months |MAL-ED     |BRAZIL       |Food Secure          |           1|      0|    98|
|6-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |           0|      5|    98|
|6-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |           1|      0|    98|
|6-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |           0|     68|   219|
|6-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |           1|     14|   219|
|6-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |           0|     90|   219|
|6-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |           1|     14|   219|
|6-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |           0|     30|   219|
|6-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |           1|      3|   219|
|6-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |           0|     35|   542|
|6-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |           1|     11|   542|
|6-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |           0|     49|   542|
|6-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |           1|     19|   542|
|6-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |           0|    299|   542|
|6-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |           1|    129|   542|
|6-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |           0|     58|   730|
|6-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |           1|     11|   730|
|6-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |           0|    397|   730|
|6-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |           1|     60|   730|
|6-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |           0|    179|   730|
|6-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |           1|     25|   730|


The following strata were considered:

* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA





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


