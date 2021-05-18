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

**Intervention Variable:** earlybf

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid      |country      |earlybf | ever_wasted| n_cell|     n|
|:---------------------------|:------------|:------------|:-------|-----------:|------:|-----:|
|0-24 months (no birth wast) |EE           |PAKISTAN     |1       |           0|     39|   368|
|0-24 months (no birth wast) |EE           |PAKISTAN     |1       |           1|     43|   368|
|0-24 months (no birth wast) |EE           |PAKISTAN     |0       |           0|    130|   368|
|0-24 months (no birth wast) |EE           |PAKISTAN     |0       |           1|    156|   368|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL        |1       |           0|     85|   606|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL        |1       |           1|     82|   606|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL        |0       |           0|    216|   606|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL        |0       |           1|    223|   606|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH   |1       |           0|    170| 26401|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH   |1       |           1|     26| 26401|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH   |0       |           0|  21755| 26401|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH   |0       |           1|   4450| 26401|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH   |1       |           0|   2526|  5389|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH   |1       |           1|    832|  5389|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH   |0       |           0|   1475|  5389|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH   |0       |           1|    556|  5389|
|0-24 months (no birth wast) |MAL-ED       |INDIA        |1       |           0|    105|   246|
|0-24 months (no birth wast) |MAL-ED       |INDIA        |1       |           1|     49|   246|
|0-24 months (no birth wast) |MAL-ED       |INDIA        |0       |           0|     50|   246|
|0-24 months (no birth wast) |MAL-ED       |INDIA        |0       |           1|     42|   246|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH   |1       |           0|    125|   263|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH   |1       |           1|     34|   263|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH   |0       |           0|     80|   263|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH   |0       |           1|     24|   263|
|0-24 months (no birth wast) |MAL-ED       |PERU         |1       |           0|    210|   302|
|0-24 months (no birth wast) |MAL-ED       |PERU         |1       |           1|     17|   302|
|0-24 months (no birth wast) |MAL-ED       |PERU         |0       |           0|     71|   302|
|0-24 months (no birth wast) |MAL-ED       |PERU         |0       |           1|      4|   302|
|0-24 months (no birth wast) |MAL-ED       |NEPAL        |1       |           0|     73|   239|
|0-24 months (no birth wast) |MAL-ED       |NEPAL        |1       |           1|     17|   239|
|0-24 months (no birth wast) |MAL-ED       |NEPAL        |0       |           0|    120|   239|
|0-24 months (no birth wast) |MAL-ED       |NEPAL        |0       |           1|     29|   239|
|0-24 months (no birth wast) |MAL-ED       |BRAZIL       |1       |           0|    107|   233|
|0-24 months (no birth wast) |MAL-ED       |BRAZIL       |1       |           1|      6|   233|
|0-24 months (no birth wast) |MAL-ED       |BRAZIL       |0       |           0|    113|   233|
|0-24 months (no birth wast) |MAL-ED       |BRAZIL       |0       |           1|      7|   233|
|0-24 months (no birth wast) |MAL-ED       |TANZANIA     |1       |           0|    180|   261|
|0-24 months (no birth wast) |MAL-ED       |TANZANIA     |1       |           1|     30|   261|
|0-24 months (no birth wast) |MAL-ED       |TANZANIA     |0       |           0|     47|   261|
|0-24 months (no birth wast) |MAL-ED       |TANZANIA     |0       |           1|      4|   261|
|0-24 months (no birth wast) |MAL-ED       |SOUTH AFRICA |1       |           0|    143|   298|
|0-24 months (no birth wast) |MAL-ED       |SOUTH AFRICA |1       |           1|     21|   298|
|0-24 months (no birth wast) |MAL-ED       |SOUTH AFRICA |0       |           0|    110|   298|
|0-24 months (no birth wast) |MAL-ED       |SOUTH AFRICA |0       |           1|     24|   298|
|0-24 months (no birth wast) |NIH-Crypto   |BANGLADESH   |1       |           0|    571|   754|
|0-24 months (no birth wast) |NIH-Crypto   |BANGLADESH   |1       |           1|     93|   754|
|0-24 months (no birth wast) |NIH-Crypto   |BANGLADESH   |0       |           0|     75|   754|
|0-24 months (no birth wast) |NIH-Crypto   |BANGLADESH   |0       |           1|     15|   754|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA        |1       |           0|     58|  1451|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA        |1       |           1|     30|  1451|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA        |0       |           0|    866|  1451|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA        |0       |           1|    497|  1451|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE     |1       |           0|   5831| 12149|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE     |1       |           1|    653| 12149|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE     |0       |           0|   5084| 12149|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE     |0       |           1|    581| 12149|
|0-6 months (no birth wast)  |EE           |PAKISTAN     |1       |           0|     68|   366|
|0-6 months (no birth wast)  |EE           |PAKISTAN     |1       |           1|     14|   366|
|0-6 months (no birth wast)  |EE           |PAKISTAN     |0       |           0|    218|   366|
|0-6 months (no birth wast)  |EE           |PAKISTAN     |0       |           1|     66|   366|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL        |1       |           0|    129|   588|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL        |1       |           1|     33|   588|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL        |0       |           0|    343|   588|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL        |0       |           1|     83|   588|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH   |1       |           0|    178| 26108|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH   |1       |           1|     15| 26108|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH   |0       |           0|  24052| 26108|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH   |0       |           1|   1863| 26108|
|0-6 months (no birth wast)  |JiVitA-4     |BANGLADESH   |1       |           0|   3015|  4950|
|0-6 months (no birth wast)  |JiVitA-4     |BANGLADESH   |1       |           1|     75|  4950|
|0-6 months (no birth wast)  |JiVitA-4     |BANGLADESH   |0       |           0|   1808|  4950|
|0-6 months (no birth wast)  |JiVitA-4     |BANGLADESH   |0       |           1|     52|  4950|
|0-6 months (no birth wast)  |MAL-ED       |INDIA        |1       |           0|    132|   244|
|0-6 months (no birth wast)  |MAL-ED       |INDIA        |1       |           1|     21|   244|
|0-6 months (no birth wast)  |MAL-ED       |INDIA        |0       |           0|     73|   244|
|0-6 months (no birth wast)  |MAL-ED       |INDIA        |0       |           1|     18|   244|
|0-6 months (no birth wast)  |MAL-ED       |BANGLADESH   |1       |           0|    148|   262|
|0-6 months (no birth wast)  |MAL-ED       |BANGLADESH   |1       |           1|     11|   262|
|0-6 months (no birth wast)  |MAL-ED       |BANGLADESH   |0       |           0|     95|   262|
|0-6 months (no birth wast)  |MAL-ED       |BANGLADESH   |0       |           1|      8|   262|
|0-6 months (no birth wast)  |MAL-ED       |PERU         |1       |           0|    222|   302|
|0-6 months (no birth wast)  |MAL-ED       |PERU         |1       |           1|      5|   302|
|0-6 months (no birth wast)  |MAL-ED       |PERU         |0       |           0|     75|   302|
|0-6 months (no birth wast)  |MAL-ED       |PERU         |0       |           1|      0|   302|
|0-6 months (no birth wast)  |MAL-ED       |NEPAL        |1       |           0|     82|   237|
|0-6 months (no birth wast)  |MAL-ED       |NEPAL        |1       |           1|      8|   237|
|0-6 months (no birth wast)  |MAL-ED       |NEPAL        |0       |           0|    139|   237|
|0-6 months (no birth wast)  |MAL-ED       |NEPAL        |0       |           1|      8|   237|
|0-6 months (no birth wast)  |MAL-ED       |BRAZIL       |1       |           0|    109|   233|
|0-6 months (no birth wast)  |MAL-ED       |BRAZIL       |1       |           1|      4|   233|
|0-6 months (no birth wast)  |MAL-ED       |BRAZIL       |0       |           0|    116|   233|
|0-6 months (no birth wast)  |MAL-ED       |BRAZIL       |0       |           1|      4|   233|
|0-6 months (no birth wast)  |MAL-ED       |TANZANIA     |1       |           0|    202|   261|
|0-6 months (no birth wast)  |MAL-ED       |TANZANIA     |1       |           1|      8|   261|
|0-6 months (no birth wast)  |MAL-ED       |TANZANIA     |0       |           0|     49|   261|
|0-6 months (no birth wast)  |MAL-ED       |TANZANIA     |0       |           1|      2|   261|
|0-6 months (no birth wast)  |MAL-ED       |SOUTH AFRICA |1       |           0|    157|   297|
|0-6 months (no birth wast)  |MAL-ED       |SOUTH AFRICA |1       |           1|      6|   297|
|0-6 months (no birth wast)  |MAL-ED       |SOUTH AFRICA |0       |           0|    126|   297|
|0-6 months (no birth wast)  |MAL-ED       |SOUTH AFRICA |0       |           1|      8|   297|
|0-6 months (no birth wast)  |NIH-Crypto   |BANGLADESH   |1       |           0|    641|   749|
|0-6 months (no birth wast)  |NIH-Crypto   |BANGLADESH   |1       |           1|     18|   749|
|0-6 months (no birth wast)  |NIH-Crypto   |BANGLADESH   |0       |           0|     88|   749|
|0-6 months (no birth wast)  |NIH-Crypto   |BANGLADESH   |0       |           1|      2|   749|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA        |1       |           0|     76|  1422|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA        |1       |           1|     12|  1422|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA        |0       |           0|   1170|  1422|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA        |0       |           1|    164|  1422|
|0-6 months (no birth wast)  |ZVITAMBO     |ZIMBABWE     |1       |           0|   6167| 11914|
|0-6 months (no birth wast)  |ZVITAMBO     |ZIMBABWE     |1       |           1|    195| 11914|
|0-6 months (no birth wast)  |ZVITAMBO     |ZIMBABWE     |0       |           0|   5372| 11914|
|0-6 months (no birth wast)  |ZVITAMBO     |ZIMBABWE     |0       |           1|    180| 11914|
|6-24 months                 |EE           |PAKISTAN     |1       |           0|     40|   366|
|6-24 months                 |EE           |PAKISTAN     |1       |           1|     41|   366|
|6-24 months                 |EE           |PAKISTAN     |0       |           0|    169|   366|
|6-24 months                 |EE           |PAKISTAN     |0       |           1|    116|   366|
|6-24 months                 |GMS-Nepal    |NEPAL        |1       |           0|     84|   543|
|6-24 months                 |GMS-Nepal    |NEPAL        |1       |           1|     67|   543|
|6-24 months                 |GMS-Nepal    |NEPAL        |0       |           0|    204|   543|
|6-24 months                 |GMS-Nepal    |NEPAL        |0       |           1|    188|   543|
|6-24 months                 |JiVitA-3     |BANGLADESH   |1       |           0|     67| 17222|
|6-24 months                 |JiVitA-3     |BANGLADESH   |1       |           1|     12| 17222|
|6-24 months                 |JiVitA-3     |BANGLADESH   |0       |           0|  14334| 17222|
|6-24 months                 |JiVitA-3     |BANGLADESH   |0       |           1|   2809| 17222|
|6-24 months                 |JiVitA-4     |BANGLADESH   |1       |           0|   2572|  5423|
|6-24 months                 |JiVitA-4     |BANGLADESH   |1       |           1|    802|  5423|
|6-24 months                 |JiVitA-4     |BANGLADESH   |0       |           0|   1511|  5423|
|6-24 months                 |JiVitA-4     |BANGLADESH   |0       |           1|    538|  5423|
|6-24 months                 |MAL-ED       |INDIA        |1       |           0|    108|   235|
|6-24 months                 |MAL-ED       |INDIA        |1       |           1|     34|   235|
|6-24 months                 |MAL-ED       |INDIA        |0       |           0|     63|   235|
|6-24 months                 |MAL-ED       |INDIA        |0       |           1|     30|   235|
|6-24 months                 |MAL-ED       |BANGLADESH   |1       |           0|    117|   240|
|6-24 months                 |MAL-ED       |BANGLADESH   |1       |           1|     26|   240|
|6-24 months                 |MAL-ED       |BANGLADESH   |0       |           0|     80|   240|
|6-24 months                 |MAL-ED       |BANGLADESH   |0       |           1|     17|   240|
|6-24 months                 |MAL-ED       |PERU         |1       |           0|    189|   270|
|6-24 months                 |MAL-ED       |PERU         |1       |           1|     14|   270|
|6-24 months                 |MAL-ED       |PERU         |0       |           0|     63|   270|
|6-24 months                 |MAL-ED       |PERU         |0       |           1|      4|   270|
|6-24 months                 |MAL-ED       |NEPAL        |1       |           0|     77|   235|
|6-24 months                 |MAL-ED       |NEPAL        |1       |           1|     12|   235|
|6-24 months                 |MAL-ED       |NEPAL        |0       |           0|    122|   235|
|6-24 months                 |MAL-ED       |NEPAL        |0       |           1|     24|   235|
|6-24 months                 |MAL-ED       |BRAZIL       |1       |           0|     94|   207|
|6-24 months                 |MAL-ED       |BRAZIL       |1       |           1|      3|   207|
|6-24 months                 |MAL-ED       |BRAZIL       |0       |           0|    107|   207|
|6-24 months                 |MAL-ED       |BRAZIL       |0       |           1|      3|   207|
|6-24 months                 |MAL-ED       |TANZANIA     |1       |           0|    172|   245|
|6-24 months                 |MAL-ED       |TANZANIA     |1       |           1|     26|   245|
|6-24 months                 |MAL-ED       |TANZANIA     |0       |           0|     45|   245|
|6-24 months                 |MAL-ED       |TANZANIA     |0       |           1|      2|   245|
|6-24 months                 |MAL-ED       |SOUTH AFRICA |1       |           0|    126|   254|
|6-24 months                 |MAL-ED       |SOUTH AFRICA |1       |           1|     19|   254|
|6-24 months                 |MAL-ED       |SOUTH AFRICA |0       |           0|     91|   254|
|6-24 months                 |MAL-ED       |SOUTH AFRICA |0       |           1|     18|   254|
|6-24 months                 |NIH-Crypto   |BANGLADESH   |1       |           0|    563|   730|
|6-24 months                 |NIH-Crypto   |BANGLADESH   |1       |           1|     82|   730|
|6-24 months                 |NIH-Crypto   |BANGLADESH   |0       |           0|     71|   730|
|6-24 months                 |NIH-Crypto   |BANGLADESH   |0       |           1|     14|   730|
|6-24 months                 |SAS-CompFeed |INDIA        |1       |           0|     59|  1354|
|6-24 months                 |SAS-CompFeed |INDIA        |1       |           1|     19|  1354|
|6-24 months                 |SAS-CompFeed |INDIA        |0       |           0|    880|  1354|
|6-24 months                 |SAS-CompFeed |INDIA        |0       |           1|    396|  1354|
|6-24 months                 |ZVITAMBO     |ZIMBABWE     |1       |           0|   4718|  9651|
|6-24 months                 |ZVITAMBO     |ZIMBABWE     |1       |           1|    495|  9651|
|6-24 months                 |ZVITAMBO     |ZIMBABWE     |0       |           0|   4010|  9651|
|6-24 months                 |ZVITAMBO     |ZIMBABWE     |0       |           1|    428|  9651|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA





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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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


