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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* vagbrth
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_vagbrth
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid    |country      |hfoodsec             | ever_wasted| n_cell|     n|
|:-----------|:----------|:------------|:--------------------|-----------:|------:|-----:|
|0-24 months |GMS-Nepal  |NEPAL        |Food Secure          |           0|    188|   663|
|0-24 months |GMS-Nepal  |NEPAL        |Food Secure          |           1|    283|   663|
|0-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |           0|     55|   663|
|0-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |           1|     50|   663|
|0-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |           0|     28|   663|
|0-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |           1|     59|   663|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |           0|   6332| 17375|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |           1|   2364| 17375|
|0-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |           0|   4087| 17375|
|0-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |           1|   1697| 17375|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |           0|   1924| 17375|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |           1|    971| 17375|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |           0|   1896|  5399|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |           1|    853|  5399|
|0-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |           0|   1333|  5399|
|0-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |           1|    615|  5399|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |           0|    494|  5399|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |           1|    208|  5399|
|0-24 months |MAL-ED     |BANGLADESH   |Food Secure          |           0|    105|   194|
|0-24 months |MAL-ED     |BANGLADESH   |Food Secure          |           1|     56|   194|
|0-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |           0|      3|   194|
|0-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |           1|      1|   194|
|0-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |           0|     19|   194|
|0-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |           1|     10|   194|
|0-24 months |MAL-ED     |BRAZIL       |Food Secure          |           0|      3|   129|
|0-24 months |MAL-ED     |BRAZIL       |Food Secure          |           1|      0|   129|
|0-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |           0|     11|   129|
|0-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |           1|      0|   129|
|0-24 months |MAL-ED     |BRAZIL       |Food Insecure        |           0|    103|   129|
|0-24 months |MAL-ED     |BRAZIL       |Food Insecure        |           1|     12|   129|
|0-24 months |MAL-ED     |INDIA        |Food Secure          |           0|     97|   212|
|0-24 months |MAL-ED     |INDIA        |Food Secure          |           1|     93|   212|
|0-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |           0|      1|   212|
|0-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |           1|      4|   212|
|0-24 months |MAL-ED     |INDIA        |Food Insecure        |           0|     10|   212|
|0-24 months |MAL-ED     |INDIA        |Food Insecure        |           1|      7|   212|
|0-24 months |MAL-ED     |NEPAL        |Food Secure          |           0|     64|   128|
|0-24 months |MAL-ED     |NEPAL        |Food Secure          |           1|     30|   128|
|0-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |           0|     10|   128|
|0-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |           1|      5|   128|
|0-24 months |MAL-ED     |NEPAL        |Food Insecure        |           0|     10|   128|
|0-24 months |MAL-ED     |NEPAL        |Food Insecure        |           1|      9|   128|
|0-24 months |MAL-ED     |PERU         |Food Secure          |           0|     22|   113|
|0-24 months |MAL-ED     |PERU         |Food Secure          |           1|      5|   113|
|0-24 months |MAL-ED     |PERU         |Mildly Food Insecure |           0|     29|   113|
|0-24 months |MAL-ED     |PERU         |Mildly Food Insecure |           1|      0|   113|
|0-24 months |MAL-ED     |PERU         |Food Insecure        |           0|     49|   113|
|0-24 months |MAL-ED     |PERU         |Food Insecure        |           1|      8|   113|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |           0|    100|   233|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |           1|     32|   233|
|0-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |           0|     17|   233|
|0-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |           1|      2|   233|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |           0|     64|   233|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |           1|     18|   233|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |           0|     56|   624|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |           1|     38|   624|
|0-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |           0|    247|   624|
|0-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |           1|    241|   624|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |           0|     23|   624|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |           1|     19|   624|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |           0|    308|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |           1|    145|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |           0|    149|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |           1|     70|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |           0|     51|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |           1|     35|   758|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Secure          |           0|    276|   663|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Secure          |           1|    195|   663|
|0-6 months  |GMS-Nepal  |NEPAL        |Mildly Food Insecure |           0|     81|   663|
|0-6 months  |GMS-Nepal  |NEPAL        |Mildly Food Insecure |           1|     24|   663|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Insecure        |           0|     57|   663|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Insecure        |           1|     30|   663|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Secure          |           0|   7325| 17281|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Secure          |           1|   1331| 17281|
|0-6 months  |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |           0|   4801| 17281|
|0-6 months  |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |           1|    945| 17281|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Insecure        |           0|   2338| 17281|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Insecure        |           1|    541| 17281|
|0-6 months  |JiVitA-4   |BANGLADESH   |Food Secure          |           0|   2315|  5059|
|0-6 months  |JiVitA-4   |BANGLADESH   |Food Secure          |           1|    263|  5059|
|0-6 months  |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |           0|   1595|  5059|
|0-6 months  |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |           1|    217|  5059|
|0-6 months  |JiVitA-4   |BANGLADESH   |Food Insecure        |           0|    600|  5059|
|0-6 months  |JiVitA-4   |BANGLADESH   |Food Insecure        |           1|     69|  5059|
|0-6 months  |MAL-ED     |BANGLADESH   |Food Secure          |           0|    124|   194|
|0-6 months  |MAL-ED     |BANGLADESH   |Food Secure          |           1|     37|   194|
|0-6 months  |MAL-ED     |BANGLADESH   |Mildly Food Insecure |           0|      3|   194|
|0-6 months  |MAL-ED     |BANGLADESH   |Mildly Food Insecure |           1|      1|   194|
|0-6 months  |MAL-ED     |BANGLADESH   |Food Insecure        |           0|     22|   194|
|0-6 months  |MAL-ED     |BANGLADESH   |Food Insecure        |           1|      7|   194|
|0-6 months  |MAL-ED     |BRAZIL       |Food Secure          |           0|      3|   129|
|0-6 months  |MAL-ED     |BRAZIL       |Food Secure          |           1|      0|   129|
|0-6 months  |MAL-ED     |BRAZIL       |Mildly Food Insecure |           0|     11|   129|
|0-6 months  |MAL-ED     |BRAZIL       |Mildly Food Insecure |           1|      0|   129|
|0-6 months  |MAL-ED     |BRAZIL       |Food Insecure        |           0|    106|   129|
|0-6 months  |MAL-ED     |BRAZIL       |Food Insecure        |           1|      9|   129|
|0-6 months  |MAL-ED     |INDIA        |Food Secure          |           0|    128|   212|
|0-6 months  |MAL-ED     |INDIA        |Food Secure          |           1|     62|   212|
|0-6 months  |MAL-ED     |INDIA        |Mildly Food Insecure |           0|      2|   212|
|0-6 months  |MAL-ED     |INDIA        |Mildly Food Insecure |           1|      3|   212|
|0-6 months  |MAL-ED     |INDIA        |Food Insecure        |           0|     13|   212|
|0-6 months  |MAL-ED     |INDIA        |Food Insecure        |           1|      4|   212|
|0-6 months  |MAL-ED     |NEPAL        |Food Secure          |           0|     74|   128|
|0-6 months  |MAL-ED     |NEPAL        |Food Secure          |           1|     20|   128|
|0-6 months  |MAL-ED     |NEPAL        |Mildly Food Insecure |           0|     11|   128|
|0-6 months  |MAL-ED     |NEPAL        |Mildly Food Insecure |           1|      4|   128|
|0-6 months  |MAL-ED     |NEPAL        |Food Insecure        |           0|     15|   128|
|0-6 months  |MAL-ED     |NEPAL        |Food Insecure        |           1|      4|   128|
|0-6 months  |MAL-ED     |PERU         |Food Secure          |           0|     25|   113|
|0-6 months  |MAL-ED     |PERU         |Food Secure          |           1|      2|   113|
|0-6 months  |MAL-ED     |PERU         |Mildly Food Insecure |           0|     29|   113|
|0-6 months  |MAL-ED     |PERU         |Mildly Food Insecure |           1|      0|   113|
|0-6 months  |MAL-ED     |PERU         |Food Insecure        |           0|     53|   113|
|0-6 months  |MAL-ED     |PERU         |Food Insecure        |           1|      4|   113|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Food Secure          |           0|    119|   233|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Food Secure          |           1|     13|   233|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |           0|     18|   233|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |           1|      1|   233|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Food Insecure        |           0|     71|   233|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Food Insecure        |           1|     11|   233|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Secure          |           0|     67|   622|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Secure          |           1|     27|   622|
|0-6 months  |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |           0|    303|   622|
|0-6 months  |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |           1|    183|   622|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Insecure        |           0|     30|   622|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Insecure        |           1|     12|   622|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Secure          |           0|    339|   758|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Secure          |           1|    114|   758|
|0-6 months  |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |           0|    165|   758|
|0-6 months  |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |           1|     54|   758|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Insecure        |           0|     59|   758|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Insecure        |           1|     27|   758|
|6-24 months |GMS-Nepal  |NEPAL        |Food Secure          |           0|    233|   573|
|6-24 months |GMS-Nepal  |NEPAL        |Food Secure          |           1|    181|   573|
|6-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |           0|     39|   573|
|6-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |           1|     42|   573|
|6-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |           0|     31|   573|
|6-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |           1|     47|   573|
|6-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |           0|   7329| 17235|
|6-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |           1|   1304| 17235|
|6-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |           0|   4790| 17235|
|6-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |           1|    953| 17235|
|6-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |           0|   2290| 17235|
|6-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |           1|    569| 17235|
|6-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |           0|   2065|  5386|
|6-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |           1|    678|  5386|
|6-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |           0|   1463|  5386|
|6-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |           1|    481|  5386|
|6-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |           0|    526|  5386|
|6-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |           1|    173|  5386|
|6-24 months |MAL-ED     |BANGLADESH   |Food Secure          |           0|    131|   194|
|6-24 months |MAL-ED     |BANGLADESH   |Food Secure          |           1|     30|   194|
|6-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |           0|      3|   194|
|6-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |           1|      1|   194|
|6-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |           0|     24|   194|
|6-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |           1|      5|   194|
|6-24 months |MAL-ED     |BRAZIL       |Food Secure          |           0|      3|   129|
|6-24 months |MAL-ED     |BRAZIL       |Food Secure          |           1|      0|   129|
|6-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |           0|     11|   129|
|6-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |           1|      0|   129|
|6-24 months |MAL-ED     |BRAZIL       |Food Insecure        |           0|    111|   129|
|6-24 months |MAL-ED     |BRAZIL       |Food Insecure        |           1|      4|   129|
|6-24 months |MAL-ED     |INDIA        |Food Secure          |           0|    137|   212|
|6-24 months |MAL-ED     |INDIA        |Food Secure          |           1|     53|   212|
|6-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |           0|      4|   212|
|6-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |           1|      1|   212|
|6-24 months |MAL-ED     |INDIA        |Food Insecure        |           0|     13|   212|
|6-24 months |MAL-ED     |INDIA        |Food Insecure        |           1|      4|   212|
|6-24 months |MAL-ED     |NEPAL        |Food Secure          |           0|     77|   128|
|6-24 months |MAL-ED     |NEPAL        |Food Secure          |           1|     17|   128|
|6-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |           0|     13|   128|
|6-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |           1|      2|   128|
|6-24 months |MAL-ED     |NEPAL        |Food Insecure        |           0|     13|   128|
|6-24 months |MAL-ED     |NEPAL        |Food Insecure        |           1|      6|   128|
|6-24 months |MAL-ED     |PERU         |Food Secure          |           0|     23|   111|
|6-24 months |MAL-ED     |PERU         |Food Secure          |           1|      4|   111|
|6-24 months |MAL-ED     |PERU         |Mildly Food Insecure |           0|     28|   111|
|6-24 months |MAL-ED     |PERU         |Mildly Food Insecure |           1|      0|   111|
|6-24 months |MAL-ED     |PERU         |Food Insecure        |           0|     51|   111|
|6-24 months |MAL-ED     |PERU         |Food Insecure        |           1|      5|   111|
|6-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |           0|    107|   231|
|6-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |           1|     23|   231|
|6-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |           0|     17|   231|
|6-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |           1|      2|   231|
|6-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |           0|     73|   231|
|6-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |           1|      9|   231|
|6-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |           0|     62|   542|
|6-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |           1|     19|   542|
|6-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |           0|    295|   542|
|6-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |           1|    126|   542|
|6-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |           0|     26|   542|
|6-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |           1|     14|   542|
|6-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |           0|    382|   730|
|6-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |           1|     56|   730|
|6-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |           0|    179|   730|
|6-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |           1|     28|   730|
|6-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |           0|     73|   730|
|6-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |           1|     12|   730|


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

* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/97a69b10-57a4-4b9f-87cc-405f8c05771b/53e0583a-7c55-45cf-910c-c790b7f4c1ee/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/97a69b10-57a4-4b9f-87cc-405f8c05771b/53e0583a-7c55-45cf-910c-c790b7f4c1ee/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/97a69b10-57a4-4b9f-87cc-405f8c05771b/53e0583a-7c55-45cf-910c-c790b7f4c1ee/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/97a69b10-57a4-4b9f-87cc-405f8c05771b/53e0583a-7c55-45cf-910c-c790b7f4c1ee/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid    |country    |intervention_level   |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:----------|:----------|:--------------------|:--------------|---------:|---------:|---------:|
|0-24 months |GMS-Nepal  |NEPAL      |Food Secure          |NA             | 0.6026365| 0.5582410| 0.6470319|
|0-24 months |GMS-Nepal  |NEPAL      |Mildly Food Insecure |NA             | 0.4944140| 0.3926256| 0.5962024|
|0-24 months |GMS-Nepal  |NEPAL      |Food Insecure        |NA             | 0.6721705| 0.5703185| 0.7740226|
|0-24 months |JiVitA-3   |BANGLADESH |Food Secure          |NA             | 0.2836197| 0.2714215| 0.2958178|
|0-24 months |JiVitA-3   |BANGLADESH |Mildly Food Insecure |NA             | 0.2860009| 0.2708706| 0.3011311|
|0-24 months |JiVitA-3   |BANGLADESH |Food Insecure        |NA             | 0.3010710| 0.2797515| 0.3223906|
|0-24 months |JiVitA-4   |BANGLADESH |Food Secure          |NA             | 0.3094644| 0.2896450| 0.3292838|
|0-24 months |JiVitA-4   |BANGLADESH |Mildly Food Insecure |NA             | 0.3159411| 0.2919957| 0.3398864|
|0-24 months |JiVitA-4   |BANGLADESH |Food Insecure        |NA             | 0.2958958| 0.2547104| 0.3370811|
|0-24 months |MAL-ED     |NEPAL      |Food Secure          |NA             | 0.3191489| 0.2245448| 0.4137531|
|0-24 months |MAL-ED     |NEPAL      |Mildly Food Insecure |NA             | 0.3333333| 0.0938367| 0.5728299|
|0-24 months |MAL-ED     |NEPAL      |Food Insecure        |NA             | 0.4736842| 0.2482904| 0.6990781|
|0-24 months |NIH-Birth  |BANGLADESH |Food Secure          |NA             | 0.3928568| 0.2929752| 0.4927384|
|0-24 months |NIH-Birth  |BANGLADESH |Mildly Food Insecure |NA             | 0.4938093| 0.4493855| 0.5382330|
|0-24 months |NIH-Birth  |BANGLADESH |Food Insecure        |NA             | 0.4335938| 0.2771319| 0.5900556|
|0-24 months |NIH-Crypto |BANGLADESH |Food Secure          |NA             | 0.3203679| 0.2773344| 0.3634015|
|0-24 months |NIH-Crypto |BANGLADESH |Mildly Food Insecure |NA             | 0.3224695| 0.2602791| 0.3846599|
|0-24 months |NIH-Crypto |BANGLADESH |Food Insecure        |NA             | 0.3905107| 0.2830600| 0.4979614|
|0-6 months  |GMS-Nepal  |NEPAL      |Food Secure          |NA             | 0.4145555| 0.3697893| 0.4593218|
|0-6 months  |GMS-Nepal  |NEPAL      |Mildly Food Insecure |NA             | 0.2353324| 0.1508134| 0.3198513|
|0-6 months  |GMS-Nepal  |NEPAL      |Food Insecure        |NA             | 0.3468063| 0.2445441| 0.4490684|
|0-6 months  |JiVitA-3   |BANGLADESH |Food Secure          |NA             | 0.1578292| 0.1479371| 0.1677212|
|0-6 months  |JiVitA-3   |BANGLADESH |Mildly Food Insecure |NA             | 0.1619228| 0.1504893| 0.1733562|
|0-6 months  |JiVitA-3   |BANGLADESH |Food Insecure        |NA             | 0.1603167| 0.1438071| 0.1768264|
|0-6 months  |JiVitA-4   |BANGLADESH |Food Secure          |NA             | 0.1019006| 0.0887130| 0.1150881|
|0-6 months  |JiVitA-4   |BANGLADESH |Mildly Food Insecure |NA             | 0.1196539| 0.1016598| 0.1376479|
|0-6 months  |JiVitA-4   |BANGLADESH |Food Insecure        |NA             | 0.1037131| 0.0772784| 0.1301478|
|0-6 months  |NIH-Birth  |BANGLADESH |Food Secure          |NA             | 0.2756151| 0.1847032| 0.3665271|
|0-6 months  |NIH-Birth  |BANGLADESH |Mildly Food Insecure |NA             | 0.3783009| 0.3351678| 0.4214339|
|0-6 months  |NIH-Birth  |BANGLADESH |Food Insecure        |NA             | 0.2995154| 0.1511105| 0.4479204|
|0-6 months  |NIH-Crypto |BANGLADESH |Food Secure          |NA             | 0.2504808| 0.2104658| 0.2904958|
|0-6 months  |NIH-Crypto |BANGLADESH |Mildly Food Insecure |NA             | 0.2477318| 0.1903197| 0.3051439|
|0-6 months  |NIH-Crypto |BANGLADESH |Food Insecure        |NA             | 0.3087898| 0.2089100| 0.4086695|
|6-24 months |GMS-Nepal  |NEPAL      |Food Secure          |NA             | 0.4436466| 0.3953072| 0.4919859|
|6-24 months |GMS-Nepal  |NEPAL      |Mildly Food Insecure |NA             | 0.4822646| 0.3650547| 0.5994744|
|6-24 months |GMS-Nepal  |NEPAL      |Food Insecure        |NA             | 0.5939151| 0.4803842| 0.7074460|
|6-24 months |JiVitA-3   |BANGLADESH |Food Secure          |NA             | 0.1622526| 0.1527319| 0.1717734|
|6-24 months |JiVitA-3   |BANGLADESH |Mildly Food Insecure |NA             | 0.1592635| 0.1480667| 0.1704603|
|6-24 months |JiVitA-3   |BANGLADESH |Food Insecure        |NA             | 0.1794442| 0.1624001| 0.1964883|
|6-24 months |JiVitA-4   |BANGLADESH |Food Secure          |NA             | 0.2474801| 0.2285232| 0.2664370|
|6-24 months |JiVitA-4   |BANGLADESH |Mildly Food Insecure |NA             | 0.2474838| 0.2255632| 0.2694043|
|6-24 months |JiVitA-4   |BANGLADESH |Food Insecure        |NA             | 0.2481756| 0.2088230| 0.2875283|
|6-24 months |NIH-Birth  |BANGLADESH |Food Secure          |NA             | 0.2393636| 0.1451597| 0.3335675|
|6-24 months |NIH-Birth  |BANGLADESH |Mildly Food Insecure |NA             | 0.2993304| 0.2555154| 0.3431454|
|6-24 months |NIH-Birth  |BANGLADESH |Food Insecure        |NA             | 0.3577126| 0.2055142| 0.5099109|
|6-24 months |NIH-Crypto |BANGLADESH |Food Secure          |NA             | 0.1276771| 0.0963228| 0.1590314|
|6-24 months |NIH-Crypto |BANGLADESH |Mildly Food Insecure |NA             | 0.1365938| 0.0893086| 0.1838789|
|6-24 months |NIH-Crypto |BANGLADESH |Food Insecure        |NA             | 0.1408619| 0.0670496| 0.2146742|


### Parameter: E(Y)


|agecat      |studyid    |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:----------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |GMS-Nepal  |NEPAL      |NA                 |NA             | 0.5912519| 0.5538035| 0.6287003|
|0-24 months |JiVitA-3   |BANGLADESH |NA                 |NA             | 0.2896115| 0.2819717| 0.2972513|
|0-24 months |JiVitA-4   |BANGLADESH |NA                 |NA             | 0.3104279| 0.2959885| 0.3248672|
|0-24 months |MAL-ED     |NEPAL      |NA                 |NA             | 0.3437500| 0.2611458| 0.4263542|
|0-24 months |NIH-Birth  |BANGLADESH |NA                 |NA             | 0.4775641| 0.4383415| 0.5167867|
|0-24 months |NIH-Crypto |BANGLADESH |NA                 |NA             | 0.3298153| 0.2963239| 0.3633067|
|0-6 months  |GMS-Nepal  |NEPAL      |NA                 |NA             | 0.3755656| 0.3386759| 0.4124553|
|0-6 months  |JiVitA-3   |BANGLADESH |NA                 |NA             | 0.1630114| 0.1568185| 0.1692043|
|0-6 months  |JiVitA-4   |BANGLADESH |NA                 |NA             | 0.1085195| 0.0986291| 0.1184098|
|0-6 months  |NIH-Birth  |BANGLADESH |NA                 |NA             | 0.3569132| 0.3192325| 0.3945938|
|0-6 months  |NIH-Crypto |BANGLADESH |NA                 |NA             | 0.2572559| 0.2261171| 0.2883948|
|6-24 months |GMS-Nepal  |NEPAL      |NA                 |NA             | 0.4712042| 0.4302971| 0.5121113|
|6-24 months |JiVitA-3   |BANGLADESH |NA                 |NA             | 0.1639687| 0.1578505| 0.1700868|
|6-24 months |JiVitA-4   |BANGLADESH |NA                 |NA             | 0.2473078| 0.2336663| 0.2609494|
|6-24 months |NIH-Birth  |BANGLADESH |NA                 |NA             | 0.2933579| 0.2549918| 0.3317241|
|6-24 months |NIH-Crypto |BANGLADESH |NA                 |NA             | 0.1315068| 0.1069744| 0.1560393|


### Parameter: RR


|agecat      |studyid    |country    |intervention_level   |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:----------|:----------|:--------------------|:--------------|---------:|---------:|---------:|
|0-24 months |GMS-Nepal  |NEPAL      |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |GMS-Nepal  |NEPAL      |Mildly Food Insecure |Food Secure    | 0.8204183| 0.6592634| 1.0209671|
|0-24 months |GMS-Nepal  |NEPAL      |Food Insecure        |Food Secure    | 1.1153831| 0.9423758| 1.3201522|
|0-24 months |JiVitA-3   |BANGLADESH |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |JiVitA-3   |BANGLADESH |Mildly Food Insecure |Food Secure    | 1.0083958| 0.9417453| 1.0797634|
|0-24 months |JiVitA-3   |BANGLADESH |Food Insecure        |Food Secure    | 1.0615309| 0.9803359| 1.1494508|
|0-24 months |JiVitA-4   |BANGLADESH |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |JiVitA-4   |BANGLADESH |Mildly Food Insecure |Food Secure    | 1.0209286| 0.9268489| 1.1245580|
|0-24 months |JiVitA-4   |BANGLADESH |Food Insecure        |Food Secure    | 0.9561544| 0.8194882| 1.1156125|
|0-24 months |MAL-ED     |NEPAL      |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED     |NEPAL      |Mildly Food Insecure |Food Secure    | 1.0444444| 0.4801047| 2.2721381|
|0-24 months |MAL-ED     |NEPAL      |Food Insecure        |Food Secure    | 1.4842105| 0.8472771| 2.5999533|
|0-24 months |NIH-Birth  |BANGLADESH |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |NIH-Birth  |BANGLADESH |Mildly Food Insecure |Food Secure    | 1.2569701| 0.9598425| 1.6460760|
|0-24 months |NIH-Birth  |BANGLADESH |Food Insecure        |Food Secure    | 1.1036942| 0.7097010| 1.7164140|
|0-24 months |NIH-Crypto |BANGLADESH |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |NIH-Crypto |BANGLADESH |Mildly Food Insecure |Food Secure    | 1.0065598| 0.7959406| 1.2729123|
|0-24 months |NIH-Crypto |BANGLADESH |Food Insecure        |Food Secure    | 1.2189445| 0.8973549| 1.6557836|
|0-6 months  |GMS-Nepal  |NEPAL      |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |GMS-Nepal  |NEPAL      |Mildly Food Insecure |Food Secure    | 0.5676740| 0.3900236| 0.8262417|
|0-6 months  |GMS-Nepal  |NEPAL      |Food Insecure        |Food Secure    | 0.8365737| 0.6109959| 1.1454342|
|0-6 months  |JiVitA-3   |BANGLADESH |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |JiVitA-3   |BANGLADESH |Mildly Food Insecure |Food Secure    | 1.0259369| 0.9334104| 1.1276353|
|0-6 months  |JiVitA-3   |BANGLADESH |Food Insecure        |Food Secure    | 1.0157612| 0.9048426| 1.1402766|
|0-6 months  |JiVitA-4   |BANGLADESH |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |JiVitA-4   |BANGLADESH |Mildly Food Insecure |Food Secure    | 1.1742218| 0.9616682| 1.4337552|
|0-6 months  |JiVitA-4   |BANGLADESH |Food Insecure        |Food Secure    | 1.0177870| 0.7625577| 1.3584421|
|0-6 months  |NIH-Birth  |BANGLADESH |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |NIH-Birth  |BANGLADESH |Mildly Food Insecure |Food Secure    | 1.3725692| 0.9676627| 1.9469038|
|0-6 months  |NIH-Birth  |BANGLADESH |Food Insecure        |Food Secure    | 1.0867162| 0.5995531| 1.9697205|
|0-6 months  |NIH-Crypto |BANGLADESH |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |NIH-Crypto |BANGLADESH |Mildly Food Insecure |Food Secure    | 0.9890250| 0.7464197| 1.3104831|
|0-6 months  |NIH-Crypto |BANGLADESH |Food Insecure        |Food Secure    | 1.2327880| 0.8593665| 1.7684727|
|6-24 months |GMS-Nepal  |NEPAL      |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |GMS-Nepal  |NEPAL      |Mildly Food Insecure |Food Secure    | 1.0870468| 0.8332696| 1.4181134|
|6-24 months |GMS-Nepal  |NEPAL      |Food Insecure        |Food Secure    | 1.3387123| 1.0743902| 1.6680631|
|6-24 months |JiVitA-3   |BANGLADESH |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |JiVitA-3   |BANGLADESH |Mildly Food Insecure |Food Secure    | 0.9815776| 0.8971933| 1.0738986|
|6-24 months |JiVitA-3   |BANGLADESH |Food Insecure        |Food Secure    | 1.1059555| 0.9929931| 1.2317684|
|6-24 months |JiVitA-4   |BANGLADESH |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |JiVitA-4   |BANGLADESH |Mildly Food Insecure |Food Secure    | 1.0000149| 0.8922852| 1.1207513|
|6-24 months |JiVitA-4   |BANGLADESH |Food Insecure        |Food Secure    | 1.0028104| 0.8407028| 1.1961762|
|6-24 months |NIH-Birth  |BANGLADESH |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |NIH-Birth  |BANGLADESH |Mildly Food Insecure |Food Secure    | 1.2505261| 0.8214552| 1.9037137|
|6-24 months |NIH-Birth  |BANGLADESH |Food Insecure        |Food Secure    | 1.4944318| 0.8367997| 2.6688902|
|6-24 months |NIH-Crypto |BANGLADESH |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |NIH-Crypto |BANGLADESH |Mildly Food Insecure |Food Secure    | 1.0698376| 0.6997580| 1.6356402|
|6-24 months |NIH-Crypto |BANGLADESH |Food Insecure        |Food Secure    | 1.1032665| 0.6185213| 1.9679142|


### Parameter: PAR


|agecat      |studyid    |country    |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:----------|:----------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |GMS-Nepal  |NEPAL      |Food Secure        |NA             | -0.0113846| -0.0356673|  0.0128982|
|0-24 months |JiVitA-3   |BANGLADESH |Food Secure        |NA             |  0.0059919| -0.0032653|  0.0152490|
|0-24 months |JiVitA-4   |BANGLADESH |Food Secure        |NA             |  0.0009634| -0.0127457|  0.0146726|
|0-24 months |MAL-ED     |NEPAL      |Food Secure        |NA             |  0.0246011| -0.0266646|  0.0758668|
|0-24 months |NIH-Birth  |BANGLADESH |Food Secure        |NA             |  0.0847073| -0.0077167|  0.1771313|
|0-24 months |NIH-Crypto |BANGLADESH |Food Secure        |NA             |  0.0094474| -0.0181491|  0.0370438|
|0-6 months  |GMS-Nepal  |NEPAL      |Food Secure        |NA             | -0.0389899| -0.0622959| -0.0156839|
|0-6 months  |JiVitA-3   |BANGLADESH |Food Secure        |NA             |  0.0051822| -0.0023216|  0.0126861|
|0-6 months  |JiVitA-4   |BANGLADESH |Food Secure        |NA             |  0.0066189| -0.0033170|  0.0165549|
|0-6 months  |NIH-Birth  |BANGLADESH |Food Secure        |NA             |  0.0812980| -0.0035375|  0.1661335|
|0-6 months  |NIH-Crypto |BANGLADESH |Food Secure        |NA             |  0.0067751| -0.0188886|  0.0324387|
|6-24 months |GMS-Nepal  |NEPAL      |Food Secure        |NA             |  0.0275576|  0.0012940|  0.0538213|
|6-24 months |JiVitA-3   |BANGLADESH |Food Secure        |NA             |  0.0017160| -0.0057731|  0.0092051|
|6-24 months |JiVitA-4   |BANGLADESH |Food Secure        |NA             | -0.0001722| -0.0130198|  0.0126753|
|6-24 months |NIH-Birth  |BANGLADESH |Food Secure        |NA             |  0.0539944| -0.0340627|  0.1420514|
|6-24 months |NIH-Crypto |BANGLADESH |Food Secure        |NA             |  0.0038298| -0.0163704|  0.0240299|


### Parameter: PAF


|agecat      |studyid    |country    |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:-----------|:----------|:----------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months |GMS-Nepal  |NEPAL      |Food Secure        |NA             | -0.0192550| -0.0611973|  0.0210295|
|0-24 months |JiVitA-3   |BANGLADESH |Food Secure        |NA             |  0.0206893| -0.0118259|  0.0521596|
|0-24 months |JiVitA-4   |BANGLADESH |Food Secure        |NA             |  0.0031036| -0.0420502|  0.0463009|
|0-24 months |MAL-ED     |NEPAL      |Food Secure        |NA             |  0.0715667| -0.0901841|  0.2093186|
|0-24 months |NIH-Birth  |BANGLADESH |Food Secure        |NA             |  0.1773737| -0.0412476|  0.3500930|
|0-24 months |NIH-Crypto |BANGLADESH |Food Secure        |NA             |  0.0286444| -0.0587388|  0.1088154|
|0-6 months  |GMS-Nepal  |NEPAL      |Food Secure        |NA             | -0.1038165| -0.1679083| -0.0432419|
|0-6 months  |JiVitA-3   |BANGLADESH |Food Secure        |NA             |  0.0317906| -0.0154141|  0.0768009|
|0-6 months  |JiVitA-4   |BANGLADESH |Food Secure        |NA             |  0.0609929| -0.0346581|  0.1478011|
|0-6 months  |NIH-Birth  |BANGLADESH |Food Secure        |NA             |  0.2277810| -0.0504077|  0.4322945|
|0-6 months  |NIH-Crypto |BANGLADESH |Food Secure        |NA             |  0.0263360| -0.0787095|  0.1211521|
|6-24 months |GMS-Nepal  |NEPAL      |Food Secure        |NA             |  0.0584834|  0.0008845|  0.1127618|
|6-24 months |JiVitA-3   |BANGLADESH |Food Secure        |NA             |  0.0104657| -0.0362677|  0.0550915|
|6-24 months |JiVitA-4   |BANGLADESH |Food Secure        |NA             | -0.0006965| -0.0540173|  0.0499269|
|6-24 months |NIH-Birth  |BANGLADESH |Food Secure        |NA             |  0.1840562| -0.1783528|  0.4350043|
|6-24 months |NIH-Crypto |BANGLADESH |Food Secure        |NA             |  0.0291221| -0.1372415|  0.1711488|
