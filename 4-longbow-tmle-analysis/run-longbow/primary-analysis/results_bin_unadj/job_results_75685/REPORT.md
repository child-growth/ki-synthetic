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

**Intervention Variable:** impsan

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid    |country      |impsan | ever_swasted| n_cell|     n|
|:---------------------------|:----------|:------------|:------|------------:|------:|-----:|
|0-24 months (no birth wast) |COHORTS    |INDIA        |1      |            0|   2358|  5668|
|0-24 months (no birth wast) |COHORTS    |INDIA        |1      |            1|    116|  5668|
|0-24 months (no birth wast) |COHORTS    |INDIA        |0      |            0|   3060|  5668|
|0-24 months (no birth wast) |COHORTS    |INDIA        |0      |            1|    134|  5668|
|0-24 months (no birth wast) |COHORTS    |GUATEMALA    |1      |            0|     98|   952|
|0-24 months (no birth wast) |COHORTS    |GUATEMALA    |1      |            1|      0|   952|
|0-24 months (no birth wast) |COHORTS    |GUATEMALA    |0      |            0|    837|   952|
|0-24 months (no birth wast) |COHORTS    |GUATEMALA    |0      |            1|     17|   952|
|0-24 months (no birth wast) |COHORTS    |PHILIPPINES  |1      |            0|    203|  1256|
|0-24 months (no birth wast) |COHORTS    |PHILIPPINES  |1      |            1|     15|  1256|
|0-24 months (no birth wast) |COHORTS    |PHILIPPINES  |0      |            0|    936|  1256|
|0-24 months (no birth wast) |COHORTS    |PHILIPPINES  |0      |            1|    102|  1256|
|0-24 months (no birth wast) |CONTENT    |PERU         |1      |            0|    194|   215|
|0-24 months (no birth wast) |CONTENT    |PERU         |1      |            1|      1|   215|
|0-24 months (no birth wast) |CONTENT    |PERU         |0      |            0|     20|   215|
|0-24 months (no birth wast) |CONTENT    |PERU         |0      |            1|      0|   215|
|0-24 months (no birth wast) |JiVitA-3   |BANGLADESH   |1      |            0|  17738| 26502|
|0-24 months (no birth wast) |JiVitA-3   |BANGLADESH   |1      |            1|    648| 26502|
|0-24 months (no birth wast) |JiVitA-3   |BANGLADESH   |0      |            0|   7816| 26502|
|0-24 months (no birth wast) |JiVitA-3   |BANGLADESH   |0      |            1|    300| 26502|
|0-24 months (no birth wast) |JiVitA-4   |BANGLADESH   |1      |            0|   4006|  5392|
|0-24 months (no birth wast) |JiVitA-4   |BANGLADESH   |1      |            1|    177|  5392|
|0-24 months (no birth wast) |JiVitA-4   |BANGLADESH   |0      |            0|   1154|  5392|
|0-24 months (no birth wast) |JiVitA-4   |BANGLADESH   |0      |            1|     55|  5392|
|0-24 months (no birth wast) |LCNI-5     |MALAWI       |1      |            0|      2|   821|
|0-24 months (no birth wast) |LCNI-5     |MALAWI       |1      |            1|      0|   821|
|0-24 months (no birth wast) |LCNI-5     |MALAWI       |0      |            0|    812|   821|
|0-24 months (no birth wast) |LCNI-5     |MALAWI       |0      |            1|      7|   821|
|0-24 months (no birth wast) |MAL-ED     |INDIA        |1      |            0|    114|   235|
|0-24 months (no birth wast) |MAL-ED     |INDIA        |1      |            1|      5|   235|
|0-24 months (no birth wast) |MAL-ED     |INDIA        |0      |            0|    109|   235|
|0-24 months (no birth wast) |MAL-ED     |INDIA        |0      |            1|      7|   235|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH   |1      |            0|    197|   243|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH   |1      |            1|      7|   243|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH   |0      |            0|     36|   243|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH   |0      |            1|      3|   243|
|0-24 months (no birth wast) |MAL-ED     |PERU         |1      |            0|     62|   268|
|0-24 months (no birth wast) |MAL-ED     |PERU         |1      |            1|      1|   268|
|0-24 months (no birth wast) |MAL-ED     |PERU         |0      |            0|    202|   268|
|0-24 months (no birth wast) |MAL-ED     |PERU         |0      |            1|      3|   268|
|0-24 months (no birth wast) |MAL-ED     |NEPAL        |1      |            0|    234|   237|
|0-24 months (no birth wast) |MAL-ED     |NEPAL        |1      |            1|      3|   237|
|0-24 months (no birth wast) |MAL-ED     |NEPAL        |0      |            0|      0|   237|
|0-24 months (no birth wast) |MAL-ED     |NEPAL        |0      |            1|      0|   237|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL       |1      |            0|    198|   207|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL       |1      |            1|      4|   207|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL       |0      |            0|      5|   207|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL       |0      |            1|      0|   207|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA     |1      |            0|      0|   246|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA     |1      |            1|      0|   246|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA     |0      |            0|    238|   246|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA     |0      |            1|      8|   246|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA |1      |            0|      8|   261|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA |1      |            1|      0|   261|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA |0      |            0|    242|   261|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA |0      |            1|     11|   261|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH   |1      |            0|    193|   602|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH   |1      |            1|     22|   602|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH   |0      |            0|    355|   602|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH   |0      |            1|     32|   602|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH   |1      |            0|    625|   747|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH   |1      |            1|     18|   747|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH   |0      |            0|    102|   747|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH   |0      |            1|      2|   747|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH   |1      |            0|     65|    67|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH   |1      |            1|      2|    67|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH   |0      |            0|      0|    67|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH   |0      |            1|      0|    67|
|0-6 months (no birth wast)  |COHORTS    |INDIA        |1      |            0|   2201|  5165|
|0-6 months (no birth wast)  |COHORTS    |INDIA        |1      |            1|     40|  5165|
|0-6 months (no birth wast)  |COHORTS    |INDIA        |0      |            0|   2880|  5165|
|0-6 months (no birth wast)  |COHORTS    |INDIA        |0      |            1|     44|  5165|
|0-6 months (no birth wast)  |COHORTS    |GUATEMALA    |1      |            0|     78|   739|
|0-6 months (no birth wast)  |COHORTS    |GUATEMALA    |1      |            1|      0|   739|
|0-6 months (no birth wast)  |COHORTS    |GUATEMALA    |0      |            0|    660|   739|
|0-6 months (no birth wast)  |COHORTS    |GUATEMALA    |0      |            1|      1|   739|
|0-6 months (no birth wast)  |COHORTS    |PHILIPPINES  |1      |            0|    210|  1248|
|0-6 months (no birth wast)  |COHORTS    |PHILIPPINES  |1      |            1|      6|  1248|
|0-6 months (no birth wast)  |COHORTS    |PHILIPPINES  |0      |            0|   1013|  1248|
|0-6 months (no birth wast)  |COHORTS    |PHILIPPINES  |0      |            1|     19|  1248|
|0-6 months (no birth wast)  |CONTENT    |PERU         |1      |            0|    194|   215|
|0-6 months (no birth wast)  |CONTENT    |PERU         |1      |            1|      1|   215|
|0-6 months (no birth wast)  |CONTENT    |PERU         |0      |            0|     20|   215|
|0-6 months (no birth wast)  |CONTENT    |PERU         |0      |            1|      0|   215|
|0-6 months (no birth wast)  |JiVitA-3   |BANGLADESH   |1      |            0|  17894| 26208|
|0-6 months (no birth wast)  |JiVitA-3   |BANGLADESH   |1      |            1|    285| 26208|
|0-6 months (no birth wast)  |JiVitA-3   |BANGLADESH   |0      |            0|   7879| 26208|
|0-6 months (no birth wast)  |JiVitA-3   |BANGLADESH   |0      |            1|    150| 26208|
|0-6 months (no birth wast)  |JiVitA-4   |BANGLADESH   |1      |            0|   3829|  4953|
|0-6 months (no birth wast)  |JiVitA-4   |BANGLADESH   |1      |            1|     16|  4953|
|0-6 months (no birth wast)  |JiVitA-4   |BANGLADESH   |0      |            0|   1103|  4953|
|0-6 months (no birth wast)  |JiVitA-4   |BANGLADESH   |0      |            1|      5|  4953|
|0-6 months (no birth wast)  |LCNI-5     |MALAWI       |1      |            0|      1|   260|
|0-6 months (no birth wast)  |LCNI-5     |MALAWI       |1      |            1|      0|   260|
|0-6 months (no birth wast)  |LCNI-5     |MALAWI       |0      |            0|    259|   260|
|0-6 months (no birth wast)  |LCNI-5     |MALAWI       |0      |            1|      0|   260|
|0-6 months (no birth wast)  |MAL-ED     |INDIA        |1      |            0|    116|   233|
|0-6 months (no birth wast)  |MAL-ED     |INDIA        |1      |            1|      1|   233|
|0-6 months (no birth wast)  |MAL-ED     |INDIA        |0      |            0|    111|   233|
|0-6 months (no birth wast)  |MAL-ED     |INDIA        |0      |            1|      5|   233|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH   |1      |            0|    200|   242|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH   |1      |            1|      3|   242|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH   |0      |            0|     37|   242|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH   |0      |            1|      2|   242|
|0-6 months (no birth wast)  |MAL-ED     |PERU         |1      |            0|     62|   268|
|0-6 months (no birth wast)  |MAL-ED     |PERU         |1      |            1|      1|   268|
|0-6 months (no birth wast)  |MAL-ED     |PERU         |0      |            0|    205|   268|
|0-6 months (no birth wast)  |MAL-ED     |PERU         |0      |            1|      0|   268|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL        |1      |            0|    234|   235|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL        |1      |            1|      1|   235|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL        |0      |            0|      0|   235|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL        |0      |            1|      0|   235|
|0-6 months (no birth wast)  |MAL-ED     |BRAZIL       |1      |            0|    199|   207|
|0-6 months (no birth wast)  |MAL-ED     |BRAZIL       |1      |            1|      3|   207|
|0-6 months (no birth wast)  |MAL-ED     |BRAZIL       |0      |            0|      5|   207|
|0-6 months (no birth wast)  |MAL-ED     |BRAZIL       |0      |            1|      0|   207|
|0-6 months (no birth wast)  |MAL-ED     |TANZANIA     |1      |            0|      0|   246|
|0-6 months (no birth wast)  |MAL-ED     |TANZANIA     |1      |            1|      0|   246|
|0-6 months (no birth wast)  |MAL-ED     |TANZANIA     |0      |            0|    243|   246|
|0-6 months (no birth wast)  |MAL-ED     |TANZANIA     |0      |            1|      3|   246|
|0-6 months (no birth wast)  |MAL-ED     |SOUTH AFRICA |1      |            0|      8|   260|
|0-6 months (no birth wast)  |MAL-ED     |SOUTH AFRICA |1      |            1|      0|   260|
|0-6 months (no birth wast)  |MAL-ED     |SOUTH AFRICA |0      |            0|    249|   260|
|0-6 months (no birth wast)  |MAL-ED     |SOUTH AFRICA |0      |            1|      3|   260|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH   |1      |            0|    208|   584|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH   |1      |            1|      3|   584|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH   |0      |            0|    367|   584|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH   |0      |            1|      6|   584|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH   |1      |            0|    637|   742|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH   |1      |            1|      1|   742|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH   |0      |            0|    104|   742|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH   |0      |            1|      0|   742|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH   |1      |            0|     66|    66|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH   |1      |            1|      0|    66|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH   |0      |            0|      0|    66|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH   |0      |            1|      0|    66|
|6-24 months                 |COHORTS    |INDIA        |1      |            0|   2320|  5500|
|6-24 months                 |COHORTS    |INDIA        |1      |            1|     88|  5500|
|6-24 months                 |COHORTS    |INDIA        |0      |            0|   2991|  5500|
|6-24 months                 |COHORTS    |INDIA        |0      |            1|    101|  5500|
|6-24 months                 |COHORTS    |GUATEMALA    |1      |            0|     87|   875|
|6-24 months                 |COHORTS    |GUATEMALA    |1      |            1|      0|   875|
|6-24 months                 |COHORTS    |GUATEMALA    |0      |            0|    769|   875|
|6-24 months                 |COHORTS    |GUATEMALA    |0      |            1|     19|   875|
|6-24 months                 |COHORTS    |PHILIPPINES  |1      |            0|    188|  1180|
|6-24 months                 |COHORTS    |PHILIPPINES  |1      |            1|     10|  1180|
|6-24 months                 |COHORTS    |PHILIPPINES  |0      |            0|    898|  1180|
|6-24 months                 |COHORTS    |PHILIPPINES  |0      |            1|     84|  1180|
|6-24 months                 |CONTENT    |PERU         |1      |            0|    195|   215|
|6-24 months                 |CONTENT    |PERU         |1      |            1|      0|   215|
|6-24 months                 |CONTENT    |PERU         |0      |            0|     20|   215|
|6-24 months                 |CONTENT    |PERU         |0      |            1|      0|   215|
|6-24 months                 |JiVitA-3   |BANGLADESH   |1      |            0|  11769| 17286|
|6-24 months                 |JiVitA-3   |BANGLADESH   |1      |            1|    389| 17286|
|6-24 months                 |JiVitA-3   |BANGLADESH   |0      |            0|   4964| 17286|
|6-24 months                 |JiVitA-3   |BANGLADESH   |0      |            1|    164| 17286|
|6-24 months                 |JiVitA-4   |BANGLADESH   |1      |            0|   4028|  5426|
|6-24 months                 |JiVitA-4   |BANGLADESH   |1      |            1|    182|  5426|
|6-24 months                 |JiVitA-4   |BANGLADESH   |0      |            0|   1159|  5426|
|6-24 months                 |JiVitA-4   |BANGLADESH   |0      |            1|     57|  5426|
|6-24 months                 |LCNI-5     |MALAWI       |1      |            0|      2|   810|
|6-24 months                 |LCNI-5     |MALAWI       |1      |            1|      0|   810|
|6-24 months                 |LCNI-5     |MALAWI       |0      |            0|    800|   810|
|6-24 months                 |LCNI-5     |MALAWI       |0      |            1|      8|   810|
|6-24 months                 |MAL-ED     |INDIA        |1      |            0|    113|   225|
|6-24 months                 |MAL-ED     |INDIA        |1      |            1|      4|   225|
|6-24 months                 |MAL-ED     |INDIA        |0      |            0|    106|   225|
|6-24 months                 |MAL-ED     |INDIA        |0      |            1|      2|   225|
|6-24 months                 |MAL-ED     |BANGLADESH   |1      |            0|    183|   222|
|6-24 months                 |MAL-ED     |BANGLADESH   |1      |            1|      4|   222|
|6-24 months                 |MAL-ED     |BANGLADESH   |0      |            0|     34|   222|
|6-24 months                 |MAL-ED     |BANGLADESH   |0      |            1|      1|   222|
|6-24 months                 |MAL-ED     |PERU         |1      |            0|     56|   238|
|6-24 months                 |MAL-ED     |PERU         |1      |            1|      0|   238|
|6-24 months                 |MAL-ED     |PERU         |0      |            0|    179|   238|
|6-24 months                 |MAL-ED     |PERU         |0      |            1|      3|   238|
|6-24 months                 |MAL-ED     |NEPAL        |1      |            0|    231|   233|
|6-24 months                 |MAL-ED     |NEPAL        |1      |            1|      2|   233|
|6-24 months                 |MAL-ED     |NEPAL        |0      |            0|      0|   233|
|6-24 months                 |MAL-ED     |NEPAL        |0      |            1|      0|   233|
|6-24 months                 |MAL-ED     |BRAZIL       |1      |            0|    179|   185|
|6-24 months                 |MAL-ED     |BRAZIL       |1      |            1|      1|   185|
|6-24 months                 |MAL-ED     |BRAZIL       |0      |            0|      5|   185|
|6-24 months                 |MAL-ED     |BRAZIL       |0      |            1|      0|   185|
|6-24 months                 |MAL-ED     |TANZANIA     |1      |            0|      0|   234|
|6-24 months                 |MAL-ED     |TANZANIA     |1      |            1|      0|   234|
|6-24 months                 |MAL-ED     |TANZANIA     |0      |            0|    229|   234|
|6-24 months                 |MAL-ED     |TANZANIA     |0      |            1|      5|   234|
|6-24 months                 |MAL-ED     |SOUTH AFRICA |1      |            0|      6|   227|
|6-24 months                 |MAL-ED     |SOUTH AFRICA |1      |            1|      0|   227|
|6-24 months                 |MAL-ED     |SOUTH AFRICA |0      |            0|    212|   227|
|6-24 months                 |MAL-ED     |SOUTH AFRICA |0      |            1|      9|   227|
|6-24 months                 |NIH-Birth  |BANGLADESH   |1      |            0|    172|   542|
|6-24 months                 |NIH-Birth  |BANGLADESH   |1      |            1|     20|   542|
|6-24 months                 |NIH-Birth  |BANGLADESH   |0      |            0|    322|   542|
|6-24 months                 |NIH-Birth  |BANGLADESH   |0      |            1|     28|   542|
|6-24 months                 |NIH-Crypto |BANGLADESH   |1      |            0|    603|   723|
|6-24 months                 |NIH-Crypto |BANGLADESH   |1      |            1|     18|   723|
|6-24 months                 |NIH-Crypto |BANGLADESH   |0      |            0|    100|   723|
|6-24 months                 |NIH-Crypto |BANGLADESH   |0      |            1|      2|   723|
|6-24 months                 |PROVIDE    |BANGLADESH   |1      |            0|     47|    49|
|6-24 months                 |PROVIDE    |BANGLADESH   |1      |            1|      2|    49|
|6-24 months                 |PROVIDE    |BANGLADESH   |0      |            0|      0|    49|
|6-24 months                 |PROVIDE    |BANGLADESH   |0      |            1|      0|    49|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


