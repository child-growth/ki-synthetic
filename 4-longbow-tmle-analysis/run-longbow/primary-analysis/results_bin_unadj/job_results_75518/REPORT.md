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

**Outcome Variable:** wasted

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

|agecat    |studyid    |country      |hfoodsec             | wasted| n_cell|     n|
|:---------|:----------|:------------|:--------------------|------:|------:|-----:|
|Birth     |GMS-Nepal  |NEPAL        |Food Insecure        |      0|     75|   613|
|Birth     |GMS-Nepal  |NEPAL        |Food Insecure        |      1|     11|   613|
|Birth     |GMS-Nepal  |NEPAL        |Food Secure          |      0|    331|   613|
|Birth     |GMS-Nepal  |NEPAL        |Food Secure          |      1|     91|   613|
|Birth     |GMS-Nepal  |NEPAL        |Mildly Food Insecure |      0|     82|   613|
|Birth     |GMS-Nepal  |NEPAL        |Mildly Food Insecure |      1|     23|   613|
|Birth     |JiVitA-3   |BANGLADESH   |Food Insecure        |      0|   1836| 11756|
|Birth     |JiVitA-3   |BANGLADESH   |Food Insecure        |      1|    223| 11756|
|Birth     |JiVitA-3   |BANGLADESH   |Food Secure          |      0|   5162| 11756|
|Birth     |JiVitA-3   |BANGLADESH   |Food Secure          |      1|    628| 11756|
|Birth     |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |      0|   3527| 11756|
|Birth     |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |      1|    380| 11756|
|Birth     |JiVitA-4   |BANGLADESH   |Food Insecure        |      0|    279|  2387|
|Birth     |JiVitA-4   |BANGLADESH   |Food Insecure        |      1|     25|  2387|
|Birth     |JiVitA-4   |BANGLADESH   |Food Secure          |      0|   1115|  2387|
|Birth     |JiVitA-4   |BANGLADESH   |Food Secure          |      1|    129|  2387|
|Birth     |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |      0|    756|  2387|
|Birth     |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |      1|     83|  2387|
|Birth     |MAL-ED     |INDIA        |Food Insecure        |      0|      1|    38|
|Birth     |MAL-ED     |INDIA        |Food Insecure        |      1|      0|    38|
|Birth     |MAL-ED     |INDIA        |Food Secure          |      0|     31|    38|
|Birth     |MAL-ED     |INDIA        |Food Secure          |      1|      5|    38|
|Birth     |MAL-ED     |INDIA        |Mildly Food Insecure |      0|      1|    38|
|Birth     |MAL-ED     |INDIA        |Mildly Food Insecure |      1|      0|    38|
|Birth     |MAL-ED     |BANGLADESH   |Food Insecure        |      0|     21|   151|
|Birth     |MAL-ED     |BANGLADESH   |Food Insecure        |      1|      4|   151|
|Birth     |MAL-ED     |BANGLADESH   |Food Secure          |      0|    105|   151|
|Birth     |MAL-ED     |BANGLADESH   |Food Secure          |      1|     19|   151|
|Birth     |MAL-ED     |BANGLADESH   |Mildly Food Insecure |      0|      2|   151|
|Birth     |MAL-ED     |BANGLADESH   |Mildly Food Insecure |      1|      0|   151|
|Birth     |MAL-ED     |PERU         |Food Insecure        |      0|     82|   120|
|Birth     |MAL-ED     |PERU         |Food Insecure        |      1|      2|   120|
|Birth     |MAL-ED     |PERU         |Food Secure          |      0|     25|   120|
|Birth     |MAL-ED     |PERU         |Food Secure          |      1|      0|   120|
|Birth     |MAL-ED     |PERU         |Mildly Food Insecure |      0|      9|   120|
|Birth     |MAL-ED     |PERU         |Mildly Food Insecure |      1|      2|   120|
|Birth     |MAL-ED     |NEPAL        |Food Insecure        |      0|      0|    14|
|Birth     |MAL-ED     |NEPAL        |Food Insecure        |      1|      0|    14|
|Birth     |MAL-ED     |NEPAL        |Food Secure          |      0|     13|    14|
|Birth     |MAL-ED     |NEPAL        |Food Secure          |      1|      0|    14|
|Birth     |MAL-ED     |NEPAL        |Mildly Food Insecure |      0|      1|    14|
|Birth     |MAL-ED     |NEPAL        |Mildly Food Insecure |      1|      0|    14|
|Birth     |MAL-ED     |BRAZIL       |Food Insecure        |      0|     18|    21|
|Birth     |MAL-ED     |BRAZIL       |Food Insecure        |      1|      1|    21|
|Birth     |MAL-ED     |BRAZIL       |Food Secure          |      0|      1|    21|
|Birth     |MAL-ED     |BRAZIL       |Food Secure          |      1|      0|    21|
|Birth     |MAL-ED     |BRAZIL       |Mildly Food Insecure |      0|      1|    21|
|Birth     |MAL-ED     |BRAZIL       |Mildly Food Insecure |      1|      0|    21|
|Birth     |MAL-ED     |SOUTH AFRICA |Food Insecure        |      0|     33|    98|
|Birth     |MAL-ED     |SOUTH AFRICA |Food Insecure        |      1|      4|    98|
|Birth     |MAL-ED     |SOUTH AFRICA |Food Secure          |      0|     43|    98|
|Birth     |MAL-ED     |SOUTH AFRICA |Food Secure          |      1|      4|    98|
|Birth     |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |      0|     13|    98|
|Birth     |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |      1|      1|    98|
|Birth     |NIH-Birth  |BANGLADESH   |Food Insecure        |      0|     35|   575|
|Birth     |NIH-Birth  |BANGLADESH   |Food Insecure        |      1|     13|   575|
|Birth     |NIH-Birth  |BANGLADESH   |Food Secure          |      0|     54|   575|
|Birth     |NIH-Birth  |BANGLADESH   |Food Secure          |      1|     16|   575|
|Birth     |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |      0|    318|   575|
|Birth     |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |      1|    139|   575|
|Birth     |NIH-Crypto |BANGLADESH   |Food Insecure        |      0|     54|   707|
|Birth     |NIH-Crypto |BANGLADESH   |Food Insecure        |      1|     17|   707|
|Birth     |NIH-Crypto |BANGLADESH   |Food Secure          |      0|    326|   707|
|Birth     |NIH-Crypto |BANGLADESH   |Food Secure          |      1|    110|   707|
|Birth     |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |      0|    155|   707|
|Birth     |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |      1|     45|   707|
|6 months  |GMS-Nepal  |NEPAL        |Food Insecure        |      0|     65|   539|
|6 months  |GMS-Nepal  |NEPAL        |Food Insecure        |      1|      7|   539|
|6 months  |GMS-Nepal  |NEPAL        |Food Secure          |      0|    339|   539|
|6 months  |GMS-Nepal  |NEPAL        |Food Secure          |      1|     38|   539|
|6 months  |GMS-Nepal  |NEPAL        |Mildly Food Insecure |      0|     86|   539|
|6 months  |GMS-Nepal  |NEPAL        |Mildly Food Insecure |      1|      4|   539|
|6 months  |JiVitA-3   |BANGLADESH   |Food Insecure        |      0|   2134| 14362|
|6 months  |JiVitA-3   |BANGLADESH   |Food Insecure        |      1|    207| 14362|
|6 months  |JiVitA-3   |BANGLADESH   |Food Secure          |      0|   6650| 14362|
|6 months  |JiVitA-3   |BANGLADESH   |Food Secure          |      1|    581| 14362|
|6 months  |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |      0|   4386| 14362|
|6 months  |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |      1|    404| 14362|
|6 months  |JiVitA-4   |BANGLADESH   |Food Insecure        |      0|    551|  4809|
|6 months  |JiVitA-4   |BANGLADESH   |Food Insecure        |      1|     39|  4809|
|6 months  |JiVitA-4   |BANGLADESH   |Food Secure          |      0|   2433|  4809|
|6 months  |JiVitA-4   |BANGLADESH   |Food Secure          |      1|    143|  4809|
|6 months  |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |      0|   1553|  4809|
|6 months  |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |      1|     90|  4809|
|6 months  |MAL-ED     |INDIA        |Food Insecure        |      0|     15|   213|
|6 months  |MAL-ED     |INDIA        |Food Insecure        |      1|      2|   213|
|6 months  |MAL-ED     |INDIA        |Food Secure          |      0|    179|   213|
|6 months  |MAL-ED     |INDIA        |Food Secure          |      1|     14|   213|
|6 months  |MAL-ED     |INDIA        |Mildly Food Insecure |      0|      3|   213|
|6 months  |MAL-ED     |INDIA        |Mildly Food Insecure |      1|      0|   213|
|6 months  |MAL-ED     |BANGLADESH   |Food Insecure        |      0|     28|   167|
|6 months  |MAL-ED     |BANGLADESH   |Food Insecure        |      1|      0|   167|
|6 months  |MAL-ED     |BANGLADESH   |Food Secure          |      0|    129|   167|
|6 months  |MAL-ED     |BANGLADESH   |Food Secure          |      1|      5|   167|
|6 months  |MAL-ED     |BANGLADESH   |Mildly Food Insecure |      0|      5|   167|
|6 months  |MAL-ED     |BANGLADESH   |Mildly Food Insecure |      1|      0|   167|
|6 months  |MAL-ED     |PERU         |Food Insecure        |      0|     96|   140|
|6 months  |MAL-ED     |PERU         |Food Insecure        |      1|      0|   140|
|6 months  |MAL-ED     |PERU         |Food Secure          |      0|     27|   140|
|6 months  |MAL-ED     |PERU         |Food Secure          |      1|      0|   140|
|6 months  |MAL-ED     |PERU         |Mildly Food Insecure |      0|     17|   140|
|6 months  |MAL-ED     |PERU         |Mildly Food Insecure |      1|      0|   140|
|6 months  |MAL-ED     |NEPAL        |Food Insecure        |      0|     17|   123|
|6 months  |MAL-ED     |NEPAL        |Food Insecure        |      1|      0|   123|
|6 months  |MAL-ED     |NEPAL        |Food Secure          |      0|     92|   123|
|6 months  |MAL-ED     |NEPAL        |Food Secure          |      1|      2|   123|
|6 months  |MAL-ED     |NEPAL        |Mildly Food Insecure |      0|     12|   123|
|6 months  |MAL-ED     |NEPAL        |Mildly Food Insecure |      1|      0|   123|
|6 months  |MAL-ED     |BRAZIL       |Food Insecure        |      0|     90|    98|
|6 months  |MAL-ED     |BRAZIL       |Food Insecure        |      1|      1|    98|
|6 months  |MAL-ED     |BRAZIL       |Food Secure          |      0|      2|    98|
|6 months  |MAL-ED     |BRAZIL       |Food Secure          |      1|      0|    98|
|6 months  |MAL-ED     |BRAZIL       |Mildly Food Insecure |      0|      5|    98|
|6 months  |MAL-ED     |BRAZIL       |Mildly Food Insecure |      1|      0|    98|
|6 months  |MAL-ED     |SOUTH AFRICA |Food Insecure        |      0|     76|   216|
|6 months  |MAL-ED     |SOUTH AFRICA |Food Insecure        |      1|      4|   216|
|6 months  |MAL-ED     |SOUTH AFRICA |Food Secure          |      0|    101|   216|
|6 months  |MAL-ED     |SOUTH AFRICA |Food Secure          |      1|      2|   216|
|6 months  |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |      0|     32|   216|
|6 months  |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |      1|      1|   216|
|6 months  |NIH-Birth  |BANGLADESH   |Food Insecure        |      0|     45|   537|
|6 months  |NIH-Birth  |BANGLADESH   |Food Insecure        |      1|      1|   537|
|6 months  |NIH-Birth  |BANGLADESH   |Food Secure          |      0|     61|   537|
|6 months  |NIH-Birth  |BANGLADESH   |Food Secure          |      1|      7|   537|
|6 months  |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |      0|    396|   537|
|6 months  |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |      1|     27|   537|
|6 months  |NIH-Crypto |BANGLADESH   |Food Insecure        |      0|     67|   715|
|6 months  |NIH-Crypto |BANGLADESH   |Food Insecure        |      1|      1|   715|
|6 months  |NIH-Crypto |BANGLADESH   |Food Secure          |      0|    438|   715|
|6 months  |NIH-Crypto |BANGLADESH   |Food Secure          |      1|     11|   715|
|6 months  |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |      0|    189|   715|
|6 months  |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |      1|      9|   715|
|24 months |GMS-Nepal  |NEPAL        |Food Insecure        |      0|     55|   466|
|24 months |GMS-Nepal  |NEPAL        |Food Insecure        |      1|     12|   466|
|24 months |GMS-Nepal  |NEPAL        |Food Secure          |      0|    259|   466|
|24 months |GMS-Nepal  |NEPAL        |Food Secure          |      1|     60|   466|
|24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |      0|     66|   466|
|24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |      1|     14|   466|
|24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |      0|   1038|  7174|
|24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |      1|    293|  7174|
|24 months |JiVitA-3   |BANGLADESH   |Food Secure          |      0|   2693|  7174|
|24 months |JiVitA-3   |BANGLADESH   |Food Secure          |      1|    721|  7174|
|24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |      0|   1907|  7174|
|24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |      1|    522|  7174|
|24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |      0|    457|  4710|
|24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |      1|    113|  4710|
|24 months |JiVitA-4   |BANGLADESH   |Food Secure          |      0|   2049|  4710|
|24 months |JiVitA-4   |BANGLADESH   |Food Secure          |      1|    487|  4710|
|24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |      0|   1287|  4710|
|24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |      1|    317|  4710|
|24 months |MAL-ED     |INDIA        |Food Insecure        |      0|     14|   204|
|24 months |MAL-ED     |INDIA        |Food Insecure        |      1|      2|   204|
|24 months |MAL-ED     |INDIA        |Food Secure          |      0|    164|   204|
|24 months |MAL-ED     |INDIA        |Food Secure          |      1|     21|   204|
|24 months |MAL-ED     |INDIA        |Mildly Food Insecure |      0|      2|   204|
|24 months |MAL-ED     |INDIA        |Mildly Food Insecure |      1|      1|   204|
|24 months |MAL-ED     |BANGLADESH   |Food Insecure        |      0|     21|   143|
|24 months |MAL-ED     |BANGLADESH   |Food Insecure        |      1|      3|   143|
|24 months |MAL-ED     |BANGLADESH   |Food Secure          |      0|    102|   143|
|24 months |MAL-ED     |BANGLADESH   |Food Secure          |      1|     12|   143|
|24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |      0|      5|   143|
|24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |      1|      0|   143|
|24 months |MAL-ED     |PERU         |Food Insecure        |      0|     64|    98|
|24 months |MAL-ED     |PERU         |Food Insecure        |      1|      0|    98|
|24 months |MAL-ED     |PERU         |Food Secure          |      0|     18|    98|
|24 months |MAL-ED     |PERU         |Food Secure          |      1|      1|    98|
|24 months |MAL-ED     |PERU         |Mildly Food Insecure |      0|     15|    98|
|24 months |MAL-ED     |PERU         |Mildly Food Insecure |      1|      0|    98|
|24 months |MAL-ED     |NEPAL        |Food Insecure        |      0|     16|   119|
|24 months |MAL-ED     |NEPAL        |Food Insecure        |      1|      0|   119|
|24 months |MAL-ED     |NEPAL        |Food Secure          |      0|     90|   119|
|24 months |MAL-ED     |NEPAL        |Food Secure          |      1|      1|   119|
|24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |      0|     12|   119|
|24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |      1|      0|   119|
|24 months |MAL-ED     |BRAZIL       |Food Insecure        |      0|     68|    77|
|24 months |MAL-ED     |BRAZIL       |Food Insecure        |      1|      2|    77|
|24 months |MAL-ED     |BRAZIL       |Food Secure          |      0|      2|    77|
|24 months |MAL-ED     |BRAZIL       |Food Secure          |      1|      0|    77|
|24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |      0|      5|    77|
|24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |      1|      0|    77|
|24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |      0|     73|   202|
|24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |      1|      1|   202|
|24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |      0|     98|   202|
|24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |      1|      0|   202|
|24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |      0|     30|   202|
|24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |      1|      0|   202|
|24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |      0|     34|   428|
|24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |      1|      2|   428|
|24 months |NIH-Birth  |BANGLADESH   |Food Secure          |      0|     47|   428|
|24 months |NIH-Birth  |BANGLADESH   |Food Secure          |      1|     12|   428|
|24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |      0|    294|   428|
|24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |      1|     39|   428|
|24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |      0|     50|   514|
|24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |      1|      3|   514|
|24 months |NIH-Crypto |BANGLADESH   |Food Secure          |      0|    280|   514|
|24 months |NIH-Crypto |BANGLADESH   |Food Secure          |      1|     34|   514|
|24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |      0|    139|   514|
|24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |      1|      8|   514|


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
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
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


