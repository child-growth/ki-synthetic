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

**Outcome Variable:** ever_swasted

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

|agecat      |studyid    |country      |hfoodsec             | ever_swasted| n_cell|     n|
|:-----------|:----------|:------------|:--------------------|------------:|------:|-----:|
|0-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |            0|     68|   656|
|0-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |            1|     23|   656|
|0-24 months |GMS-Nepal  |NEPAL        |Food Secure          |            0|    332|   656|
|0-24 months |GMS-Nepal  |NEPAL        |Food Secure          |            1|    119|   656|
|0-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |            0|     88|   656|
|0-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |            1|     26|   656|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |            0|   2801| 17409|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |            1|    196| 17409|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |            0|   8139| 17409|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |            1|    498| 17409|
|0-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |            0|   5422| 17409|
|0-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |            1|    353| 17409|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |            0|    623|  5416|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |            1|     44|  5416|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |            0|   2726|  5416|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |            1|    181|  5416|
|0-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |            0|   1728|  5416|
|0-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |            1|    114|  5416|
|0-24 months |MAL-ED     |INDIA        |Food Insecure        |            0|     16|   225|
|0-24 months |MAL-ED     |INDIA        |Food Insecure        |            1|      2|   225|
|0-24 months |MAL-ED     |INDIA        |Food Secure          |            0|    183|   225|
|0-24 months |MAL-ED     |INDIA        |Food Secure          |            1|     20|   225|
|0-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |            0|      3|   225|
|0-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |            1|      1|   225|
|0-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |            0|     27|   183|
|0-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |            1|      2|   183|
|0-24 months |MAL-ED     |BANGLADESH   |Food Secure          |            0|    138|   183|
|0-24 months |MAL-ED     |BANGLADESH   |Food Secure          |            1|     11|   183|
|0-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |            0|      5|   183|
|0-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |            1|      0|   183|
|0-24 months |MAL-ED     |PERU         |Food Insecure        |            0|    108|   157|
|0-24 months |MAL-ED     |PERU         |Food Insecure        |            1|      0|   157|
|0-24 months |MAL-ED     |PERU         |Food Secure          |            0|     30|   157|
|0-24 months |MAL-ED     |PERU         |Food Secure          |            1|      1|   157|
|0-24 months |MAL-ED     |PERU         |Mildly Food Insecure |            0|     17|   157|
|0-24 months |MAL-ED     |PERU         |Mildly Food Insecure |            1|      1|   157|
|0-24 months |MAL-ED     |NEPAL        |Food Insecure        |            0|     17|   126|
|0-24 months |MAL-ED     |NEPAL        |Food Insecure        |            1|      1|   126|
|0-24 months |MAL-ED     |NEPAL        |Food Secure          |            0|     95|   126|
|0-24 months |MAL-ED     |NEPAL        |Food Secure          |            1|      1|   126|
|0-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |            0|     12|   126|
|0-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |            1|      0|   126|
|0-24 months |MAL-ED     |BRAZIL       |Food Insecure        |            0|    100|   111|
|0-24 months |MAL-ED     |BRAZIL       |Food Insecure        |            1|      3|   111|
|0-24 months |MAL-ED     |BRAZIL       |Food Secure          |            0|      2|   111|
|0-24 months |MAL-ED     |BRAZIL       |Food Secure          |            1|      0|   111|
|0-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |            0|      6|   111|
|0-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |            1|      0|   111|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |            0|     87|   251|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |            1|      6|   251|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |            0|    117|   251|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |            1|      5|   251|
|0-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |            0|     34|   251|
|0-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |            1|      2|   251|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |            0|     46|   624|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |            1|      6|   624|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |            0|     63|   624|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |            1|     13|   624|
|0-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |            0|    416|   624|
|0-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |            1|     80|   624|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |            0|     69|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |            1|      3|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |            0|    430|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |            1|     42|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |            0|    193|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |            1|     21|   758|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Insecure        |            0|     85|   656|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Insecure        |            1|      6|   656|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Secure          |            0|    394|   656|
|0-6 months  |GMS-Nepal  |NEPAL        |Food Secure          |            1|     57|   656|
|0-6 months  |GMS-Nepal  |NEPAL        |Mildly Food Insecure |            0|    103|   656|
|0-6 months  |GMS-Nepal  |NEPAL        |Mildly Food Insecure |            1|     11|   656|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Insecure        |            0|   2878| 17334|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Insecure        |            1|    106| 17334|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Secure          |            0|   8309| 17334|
|0-6 months  |JiVitA-3   |BANGLADESH   |Food Secure          |            1|    293| 17334|
|0-6 months  |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |            0|   5540| 17334|
|0-6 months  |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |            1|    208| 17334|
|0-6 months  |JiVitA-4   |BANGLADESH   |Food Insecure        |            0|    604|  5070|
|0-6 months  |JiVitA-4   |BANGLADESH   |Food Insecure        |            1|     21|  5070|
|0-6 months  |JiVitA-4   |BANGLADESH   |Food Secure          |            0|   2660|  5070|
|0-6 months  |JiVitA-4   |BANGLADESH   |Food Secure          |            1|     56|  5070|
|0-6 months  |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |            0|   1697|  5070|
|0-6 months  |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |            1|     32|  5070|
|0-6 months  |MAL-ED     |INDIA        |Food Insecure        |            0|     16|   225|
|0-6 months  |MAL-ED     |INDIA        |Food Insecure        |            1|      2|   225|
|0-6 months  |MAL-ED     |INDIA        |Food Secure          |            0|    188|   225|
|0-6 months  |MAL-ED     |INDIA        |Food Secure          |            1|     15|   225|
|0-6 months  |MAL-ED     |INDIA        |Mildly Food Insecure |            0|      3|   225|
|0-6 months  |MAL-ED     |INDIA        |Mildly Food Insecure |            1|      1|   225|
|0-6 months  |MAL-ED     |BANGLADESH   |Food Insecure        |            0|     28|   183|
|0-6 months  |MAL-ED     |BANGLADESH   |Food Insecure        |            1|      1|   183|
|0-6 months  |MAL-ED     |BANGLADESH   |Food Secure          |            0|    140|   183|
|0-6 months  |MAL-ED     |BANGLADESH   |Food Secure          |            1|      9|   183|
|0-6 months  |MAL-ED     |BANGLADESH   |Mildly Food Insecure |            0|      5|   183|
|0-6 months  |MAL-ED     |BANGLADESH   |Mildly Food Insecure |            1|      0|   183|
|0-6 months  |MAL-ED     |PERU         |Food Insecure        |            0|    108|   157|
|0-6 months  |MAL-ED     |PERU         |Food Insecure        |            1|      0|   157|
|0-6 months  |MAL-ED     |PERU         |Food Secure          |            0|     31|   157|
|0-6 months  |MAL-ED     |PERU         |Food Secure          |            1|      0|   157|
|0-6 months  |MAL-ED     |PERU         |Mildly Food Insecure |            0|     17|   157|
|0-6 months  |MAL-ED     |PERU         |Mildly Food Insecure |            1|      1|   157|
|0-6 months  |MAL-ED     |NEPAL        |Food Insecure        |            0|     17|   126|
|0-6 months  |MAL-ED     |NEPAL        |Food Insecure        |            1|      1|   126|
|0-6 months  |MAL-ED     |NEPAL        |Food Secure          |            0|     95|   126|
|0-6 months  |MAL-ED     |NEPAL        |Food Secure          |            1|      1|   126|
|0-6 months  |MAL-ED     |NEPAL        |Mildly Food Insecure |            0|     12|   126|
|0-6 months  |MAL-ED     |NEPAL        |Mildly Food Insecure |            1|      0|   126|
|0-6 months  |MAL-ED     |BRAZIL       |Food Insecure        |            0|    101|   111|
|0-6 months  |MAL-ED     |BRAZIL       |Food Insecure        |            1|      2|   111|
|0-6 months  |MAL-ED     |BRAZIL       |Food Secure          |            0|      2|   111|
|0-6 months  |MAL-ED     |BRAZIL       |Food Secure          |            1|      0|   111|
|0-6 months  |MAL-ED     |BRAZIL       |Mildly Food Insecure |            0|      6|   111|
|0-6 months  |MAL-ED     |BRAZIL       |Mildly Food Insecure |            1|      0|   111|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Food Insecure        |            0|     91|   251|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Food Insecure        |            1|      2|   251|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Food Secure          |            0|    121|   251|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Food Secure          |            1|      1|   251|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |            0|     35|   251|
|0-6 months  |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |            1|      1|   251|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Insecure        |            0|     49|   622|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Insecure        |            1|      3|   622|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Secure          |            0|     69|   622|
|0-6 months  |NIH-Birth  |BANGLADESH   |Food Secure          |            1|      7|   622|
|0-6 months  |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |            0|    448|   622|
|0-6 months  |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |            1|     46|   622|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Insecure        |            0|     70|   758|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Insecure        |            1|      2|   758|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Secure          |            0|    439|   758|
|0-6 months  |NIH-Crypto |BANGLADESH   |Food Secure          |            1|     33|   758|
|0-6 months  |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |            0|    199|   758|
|0-6 months  |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |            1|     15|   758|
|6-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |            0|     59|   563|
|6-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |            1|     18|   563|
|6-24 months |GMS-Nepal  |NEPAL        |Food Secure          |            0|    316|   563|
|6-24 months |GMS-Nepal  |NEPAL        |Food Secure          |            1|     73|   563|
|6-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |            0|     80|   563|
|6-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |            1|     17|   563|
|6-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |            0|   2330| 14812|
|6-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |            1|     93| 14812|
|6-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |            0|   7240| 14812|
|6-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |            1|    211| 14812|
|6-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |            0|   4785| 14812|
|6-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |            1|    153| 14812|
|6-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |            0|    641|  5403|
|6-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |            1|     24|  5403|
|6-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |            0|   2772|  5403|
|6-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |            1|    130|  5403|
|6-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |            0|   1753|  5403|
|6-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |            1|     83|  5403|
|6-24 months |MAL-ED     |INDIA        |Food Insecure        |            0|     17|   212|
|6-24 months |MAL-ED     |INDIA        |Food Insecure        |            1|      0|   212|
|6-24 months |MAL-ED     |INDIA        |Food Secure          |            0|    186|   212|
|6-24 months |MAL-ED     |INDIA        |Food Secure          |            1|      6|   212|
|6-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |            0|      3|   212|
|6-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |            1|      0|   212|
|6-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |            0|     26|   165|
|6-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |            1|      1|   165|
|6-24 months |MAL-ED     |BANGLADESH   |Food Secure          |            0|    131|   165|
|6-24 months |MAL-ED     |BANGLADESH   |Food Secure          |            1|      2|   165|
|6-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |            0|      5|   165|
|6-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |            1|      0|   165|
|6-24 months |MAL-ED     |PERU         |Food Insecure        |            0|     96|   139|
|6-24 months |MAL-ED     |PERU         |Food Insecure        |            1|      0|   139|
|6-24 months |MAL-ED     |PERU         |Food Secure          |            0|     25|   139|
|6-24 months |MAL-ED     |PERU         |Food Secure          |            1|      1|   139|
|6-24 months |MAL-ED     |PERU         |Mildly Food Insecure |            0|     17|   139|
|6-24 months |MAL-ED     |PERU         |Mildly Food Insecure |            1|      0|   139|
|6-24 months |MAL-ED     |NEPAL        |Food Insecure        |            0|     17|   123|
|6-24 months |MAL-ED     |NEPAL        |Food Insecure        |            1|      0|   123|
|6-24 months |MAL-ED     |NEPAL        |Food Secure          |            0|     94|   123|
|6-24 months |MAL-ED     |NEPAL        |Food Secure          |            1|      0|   123|
|6-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |            0|     12|   123|
|6-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |            1|      0|   123|
|6-24 months |MAL-ED     |BRAZIL       |Food Insecure        |            0|     90|    98|
|6-24 months |MAL-ED     |BRAZIL       |Food Insecure        |            1|      1|    98|
|6-24 months |MAL-ED     |BRAZIL       |Food Secure          |            0|      2|    98|
|6-24 months |MAL-ED     |BRAZIL       |Food Secure          |            1|      0|    98|
|6-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |            0|      5|    98|
|6-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |            1|      0|    98|
|6-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |            0|     78|   219|
|6-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |            1|      4|   219|
|6-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |            0|    100|   219|
|6-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |            1|      4|   219|
|6-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |            0|     32|   219|
|6-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |            1|      1|   219|
|6-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |            0|     43|   542|
|6-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |            1|      3|   542|
|6-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |            0|     62|   542|
|6-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |            1|      6|   542|
|6-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |            0|    389|   542|
|6-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |            1|     39|   542|
|6-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |            0|     68|   730|
|6-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |            1|      1|   730|
|6-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |            0|    446|   730|
|6-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |            1|     11|   730|
|6-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |            0|    196|   730|
|6-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |            1|      8|   730|


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
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


