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

**Intervention Variable:** impsan

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid    |country      |impsan | ever_wasted| n_cell|     n|
|:---------------------------|:----------|:------------|:------|-----------:|------:|-----:|
|0-24 months (no birth wast) |COHORTS    |INDIA        |1      |           0|   1998|  5668|
|0-24 months (no birth wast) |COHORTS    |INDIA        |1      |           1|    476|  5668|
|0-24 months (no birth wast) |COHORTS    |INDIA        |0      |           0|   2630|  5668|
|0-24 months (no birth wast) |COHORTS    |INDIA        |0      |           1|    564|  5668|
|0-24 months (no birth wast) |COHORTS    |GUATEMALA    |1      |           0|     87|   952|
|0-24 months (no birth wast) |COHORTS    |GUATEMALA    |1      |           1|     11|   952|
|0-24 months (no birth wast) |COHORTS    |GUATEMALA    |0      |           0|    757|   952|
|0-24 months (no birth wast) |COHORTS    |GUATEMALA    |0      |           1|     97|   952|
|0-24 months (no birth wast) |COHORTS    |PHILIPPINES  |1      |           0|    154|  1256|
|0-24 months (no birth wast) |COHORTS    |PHILIPPINES  |1      |           1|     64|  1256|
|0-24 months (no birth wast) |COHORTS    |PHILIPPINES  |0      |           0|    676|  1256|
|0-24 months (no birth wast) |COHORTS    |PHILIPPINES  |0      |           1|    362|  1256|
|0-24 months (no birth wast) |CONTENT    |PERU         |1      |           0|    191|   215|
|0-24 months (no birth wast) |CONTENT    |PERU         |1      |           1|      4|   215|
|0-24 months (no birth wast) |CONTENT    |PERU         |0      |           0|     20|   215|
|0-24 months (no birth wast) |CONTENT    |PERU         |0      |           1|      0|   215|
|0-24 months (no birth wast) |JiVitA-3   |BANGLADESH   |1      |           0|  15268| 26502|
|0-24 months (no birth wast) |JiVitA-3   |BANGLADESH   |1      |           1|   3118| 26502|
|0-24 months (no birth wast) |JiVitA-3   |BANGLADESH   |0      |           0|   6743| 26502|
|0-24 months (no birth wast) |JiVitA-3   |BANGLADESH   |0      |           1|   1373| 26502|
|0-24 months (no birth wast) |JiVitA-4   |BANGLADESH   |1      |           0|   3119|  5392|
|0-24 months (no birth wast) |JiVitA-4   |BANGLADESH   |1      |           1|   1064|  5392|
|0-24 months (no birth wast) |JiVitA-4   |BANGLADESH   |0      |           0|    883|  5392|
|0-24 months (no birth wast) |JiVitA-4   |BANGLADESH   |0      |           1|    326|  5392|
|0-24 months (no birth wast) |LCNI-5     |MALAWI       |1      |           0|      2|   821|
|0-24 months (no birth wast) |LCNI-5     |MALAWI       |1      |           1|      0|   821|
|0-24 months (no birth wast) |LCNI-5     |MALAWI       |0      |           0|    764|   821|
|0-24 months (no birth wast) |LCNI-5     |MALAWI       |0      |           1|     55|   821|
|0-24 months (no birth wast) |MAL-ED     |INDIA        |1      |           0|     79|   235|
|0-24 months (no birth wast) |MAL-ED     |INDIA        |1      |           1|     40|   235|
|0-24 months (no birth wast) |MAL-ED     |INDIA        |0      |           0|     70|   235|
|0-24 months (no birth wast) |MAL-ED     |INDIA        |0      |           1|     46|   235|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH   |1      |           0|    157|   243|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH   |1      |           1|     47|   243|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH   |0      |           0|     32|   243|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH   |0      |           1|      7|   243|
|0-24 months (no birth wast) |MAL-ED     |PERU         |1      |           0|     60|   268|
|0-24 months (no birth wast) |MAL-ED     |PERU         |1      |           1|      3|   268|
|0-24 months (no birth wast) |MAL-ED     |PERU         |0      |           0|    190|   268|
|0-24 months (no birth wast) |MAL-ED     |PERU         |0      |           1|     15|   268|
|0-24 months (no birth wast) |MAL-ED     |NEPAL        |1      |           0|    191|   237|
|0-24 months (no birth wast) |MAL-ED     |NEPAL        |1      |           1|     46|   237|
|0-24 months (no birth wast) |MAL-ED     |NEPAL        |0      |           0|      0|   237|
|0-24 months (no birth wast) |MAL-ED     |NEPAL        |0      |           1|      0|   237|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL       |1      |           0|    190|   207|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL       |1      |           1|     12|   207|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL       |0      |           0|      5|   207|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL       |0      |           1|      0|   207|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA     |1      |           0|      0|   246|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA     |1      |           1|      0|   246|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA     |0      |           0|    212|   246|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA     |0      |           1|     34|   246|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA |1      |           0|      7|   261|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA |1      |           1|      1|   261|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA |0      |           0|    213|   261|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA |0      |           1|     40|   261|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH   |1      |           0|    144|   602|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH   |1      |           1|     71|   602|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH   |0      |           0|    280|   602|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH   |0      |           1|    107|   602|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH   |1      |           0|    556|   747|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH   |1      |           1|     87|   747|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH   |0      |           0|     84|   747|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH   |0      |           1|     20|   747|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH   |1      |           0|     52|    67|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH   |1      |           1|     15|    67|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH   |0      |           0|      0|    67|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH   |0      |           1|      0|    67|
|0-6 months (no birth wast)  |COHORTS    |INDIA        |1      |           0|   2055|  5165|
|0-6 months (no birth wast)  |COHORTS    |INDIA        |1      |           1|    186|  5165|
|0-6 months (no birth wast)  |COHORTS    |INDIA        |0      |           0|   2695|  5165|
|0-6 months (no birth wast)  |COHORTS    |INDIA        |0      |           1|    229|  5165|
|0-6 months (no birth wast)  |COHORTS    |GUATEMALA    |1      |           0|     78|   739|
|0-6 months (no birth wast)  |COHORTS    |GUATEMALA    |1      |           1|      0|   739|
|0-6 months (no birth wast)  |COHORTS    |GUATEMALA    |0      |           0|    648|   739|
|0-6 months (no birth wast)  |COHORTS    |GUATEMALA    |0      |           1|     13|   739|
|0-6 months (no birth wast)  |COHORTS    |PHILIPPINES  |1      |           0|    193|  1248|
|0-6 months (no birth wast)  |COHORTS    |PHILIPPINES  |1      |           1|     23|  1248|
|0-6 months (no birth wast)  |COHORTS    |PHILIPPINES  |0      |           0|    931|  1248|
|0-6 months (no birth wast)  |COHORTS    |PHILIPPINES  |0      |           1|    101|  1248|
|0-6 months (no birth wast)  |CONTENT    |PERU         |1      |           0|    192|   215|
|0-6 months (no birth wast)  |CONTENT    |PERU         |1      |           1|      3|   215|
|0-6 months (no birth wast)  |CONTENT    |PERU         |0      |           0|     20|   215|
|0-6 months (no birth wast)  |CONTENT    |PERU         |0      |           1|      0|   215|
|0-6 months (no birth wast)  |JiVitA-3   |BANGLADESH   |1      |           0|  16883| 26208|
|0-6 months (no birth wast)  |JiVitA-3   |BANGLADESH   |1      |           1|   1296| 26208|
|0-6 months (no birth wast)  |JiVitA-3   |BANGLADESH   |0      |           0|   7445| 26208|
|0-6 months (no birth wast)  |JiVitA-3   |BANGLADESH   |0      |           1|    584| 26208|
|0-6 months (no birth wast)  |JiVitA-4   |BANGLADESH   |1      |           0|   3755|  4953|
|0-6 months (no birth wast)  |JiVitA-4   |BANGLADESH   |1      |           1|     90|  4953|
|0-6 months (no birth wast)  |JiVitA-4   |BANGLADESH   |0      |           0|   1071|  4953|
|0-6 months (no birth wast)  |JiVitA-4   |BANGLADESH   |0      |           1|     37|  4953|
|0-6 months (no birth wast)  |LCNI-5     |MALAWI       |1      |           0|      1|   260|
|0-6 months (no birth wast)  |LCNI-5     |MALAWI       |1      |           1|      0|   260|
|0-6 months (no birth wast)  |LCNI-5     |MALAWI       |0      |           0|    259|   260|
|0-6 months (no birth wast)  |LCNI-5     |MALAWI       |0      |           1|      0|   260|
|0-6 months (no birth wast)  |MAL-ED     |INDIA        |1      |           0|    102|   233|
|0-6 months (no birth wast)  |MAL-ED     |INDIA        |1      |           1|     15|   233|
|0-6 months (no birth wast)  |MAL-ED     |INDIA        |0      |           0|     95|   233|
|0-6 months (no birth wast)  |MAL-ED     |INDIA        |0      |           1|     21|   233|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH   |1      |           0|    190|   242|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH   |1      |           1|     13|   242|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH   |0      |           0|     35|   242|
|0-6 months (no birth wast)  |MAL-ED     |BANGLADESH   |0      |           1|      4|   242|
|0-6 months (no birth wast)  |MAL-ED     |PERU         |1      |           0|     61|   268|
|0-6 months (no birth wast)  |MAL-ED     |PERU         |1      |           1|      2|   268|
|0-6 months (no birth wast)  |MAL-ED     |PERU         |0      |           0|    203|   268|
|0-6 months (no birth wast)  |MAL-ED     |PERU         |0      |           1|      2|   268|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL        |1      |           0|    219|   235|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL        |1      |           1|     16|   235|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL        |0      |           0|      0|   235|
|0-6 months (no birth wast)  |MAL-ED     |NEPAL        |0      |           1|      0|   235|
|0-6 months (no birth wast)  |MAL-ED     |BRAZIL       |1      |           0|    194|   207|
|0-6 months (no birth wast)  |MAL-ED     |BRAZIL       |1      |           1|      8|   207|
|0-6 months (no birth wast)  |MAL-ED     |BRAZIL       |0      |           0|      5|   207|
|0-6 months (no birth wast)  |MAL-ED     |BRAZIL       |0      |           1|      0|   207|
|0-6 months (no birth wast)  |MAL-ED     |TANZANIA     |1      |           0|      0|   246|
|0-6 months (no birth wast)  |MAL-ED     |TANZANIA     |1      |           1|      0|   246|
|0-6 months (no birth wast)  |MAL-ED     |TANZANIA     |0      |           0|    236|   246|
|0-6 months (no birth wast)  |MAL-ED     |TANZANIA     |0      |           1|     10|   246|
|0-6 months (no birth wast)  |MAL-ED     |SOUTH AFRICA |1      |           0|      8|   260|
|0-6 months (no birth wast)  |MAL-ED     |SOUTH AFRICA |1      |           1|      0|   260|
|0-6 months (no birth wast)  |MAL-ED     |SOUTH AFRICA |0      |           0|    239|   260|
|0-6 months (no birth wast)  |MAL-ED     |SOUTH AFRICA |0      |           1|     13|   260|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH   |1      |           0|    193|   584|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH   |1      |           1|     18|   584|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH   |0      |           0|    345|   584|
|0-6 months (no birth wast)  |NIH-Birth  |BANGLADESH   |0      |           1|     28|   584|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH   |1      |           0|    620|   742|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH   |1      |           1|     18|   742|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH   |0      |           0|    103|   742|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH   |0      |           1|      1|   742|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH   |1      |           0|     64|    66|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH   |1      |           1|      2|    66|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH   |0      |           0|      0|    66|
|0-6 months (no birth wast)  |PROVIDE    |BANGLADESH   |0      |           1|      0|    66|
|6-24 months                 |COHORTS    |INDIA        |1      |           0|   2092|  5500|
|6-24 months                 |COHORTS    |INDIA        |1      |           1|    316|  5500|
|6-24 months                 |COHORTS    |INDIA        |0      |           0|   2732|  5500|
|6-24 months                 |COHORTS    |INDIA        |0      |           1|    360|  5500|
|6-24 months                 |COHORTS    |GUATEMALA    |1      |           0|     76|   875|
|6-24 months                 |COHORTS    |GUATEMALA    |1      |           1|     11|   875|
|6-24 months                 |COHORTS    |GUATEMALA    |0      |           0|    695|   875|
|6-24 months                 |COHORTS    |GUATEMALA    |0      |           1|     93|   875|
|6-24 months                 |COHORTS    |PHILIPPINES  |1      |           0|    152|  1180|
|6-24 months                 |COHORTS    |PHILIPPINES  |1      |           1|     46|  1180|
|6-24 months                 |COHORTS    |PHILIPPINES  |0      |           0|    670|  1180|
|6-24 months                 |COHORTS    |PHILIPPINES  |0      |           1|    312|  1180|
|6-24 months                 |CONTENT    |PERU         |1      |           0|    193|   215|
|6-24 months                 |CONTENT    |PERU         |1      |           1|      2|   215|
|6-24 months                 |CONTENT    |PERU         |0      |           0|     20|   215|
|6-24 months                 |CONTENT    |PERU         |0      |           1|      0|   215|
|6-24 months                 |JiVitA-3   |BANGLADESH   |1      |           0|  10174| 17286|
|6-24 months                 |JiVitA-3   |BANGLADESH   |1      |           1|   1984| 17286|
|6-24 months                 |JiVitA-3   |BANGLADESH   |0      |           0|   4277| 17286|
|6-24 months                 |JiVitA-3   |BANGLADESH   |0      |           1|    851| 17286|
|6-24 months                 |JiVitA-4   |BANGLADESH   |1      |           0|   3180|  5426|
|6-24 months                 |JiVitA-4   |BANGLADESH   |1      |           1|   1030|  5426|
|6-24 months                 |JiVitA-4   |BANGLADESH   |0      |           0|    904|  5426|
|6-24 months                 |JiVitA-4   |BANGLADESH   |0      |           1|    312|  5426|
|6-24 months                 |LCNI-5     |MALAWI       |1      |           0|      2|   810|
|6-24 months                 |LCNI-5     |MALAWI       |1      |           1|      0|   810|
|6-24 months                 |LCNI-5     |MALAWI       |0      |           0|    745|   810|
|6-24 months                 |LCNI-5     |MALAWI       |0      |           1|     63|   810|
|6-24 months                 |MAL-ED     |INDIA        |1      |           0|     84|   225|
|6-24 months                 |MAL-ED     |INDIA        |1      |           1|     33|   225|
|6-24 months                 |MAL-ED     |INDIA        |0      |           0|     79|   225|
|6-24 months                 |MAL-ED     |INDIA        |0      |           1|     29|   225|
|6-24 months                 |MAL-ED     |BANGLADESH   |1      |           0|    151|   222|
|6-24 months                 |MAL-ED     |BANGLADESH   |1      |           1|     36|   222|
|6-24 months                 |MAL-ED     |BANGLADESH   |0      |           0|     31|   222|
|6-24 months                 |MAL-ED     |BANGLADESH   |0      |           1|      4|   222|
|6-24 months                 |MAL-ED     |PERU         |1      |           0|     53|   238|
|6-24 months                 |MAL-ED     |PERU         |1      |           1|      3|   238|
|6-24 months                 |MAL-ED     |PERU         |0      |           0|    169|   238|
|6-24 months                 |MAL-ED     |PERU         |0      |           1|     13|   238|
|6-24 months                 |MAL-ED     |NEPAL        |1      |           0|    197|   233|
|6-24 months                 |MAL-ED     |NEPAL        |1      |           1|     36|   233|
|6-24 months                 |MAL-ED     |NEPAL        |0      |           0|      0|   233|
|6-24 months                 |MAL-ED     |NEPAL        |0      |           1|      0|   233|
|6-24 months                 |MAL-ED     |BRAZIL       |1      |           0|    175|   185|
|6-24 months                 |MAL-ED     |BRAZIL       |1      |           1|      5|   185|
|6-24 months                 |MAL-ED     |BRAZIL       |0      |           0|      5|   185|
|6-24 months                 |MAL-ED     |BRAZIL       |0      |           1|      0|   185|
|6-24 months                 |MAL-ED     |TANZANIA     |1      |           0|      0|   234|
|6-24 months                 |MAL-ED     |TANZANIA     |1      |           1|      0|   234|
|6-24 months                 |MAL-ED     |TANZANIA     |0      |           0|    206|   234|
|6-24 months                 |MAL-ED     |TANZANIA     |0      |           1|     28|   234|
|6-24 months                 |MAL-ED     |SOUTH AFRICA |1      |           0|      5|   227|
|6-24 months                 |MAL-ED     |SOUTH AFRICA |1      |           1|      1|   227|
|6-24 months                 |MAL-ED     |SOUTH AFRICA |0      |           0|    188|   227|
|6-24 months                 |MAL-ED     |SOUTH AFRICA |0      |           1|     33|   227|
|6-24 months                 |NIH-Birth  |BANGLADESH   |1      |           0|    129|   542|
|6-24 months                 |NIH-Birth  |BANGLADESH   |1      |           1|     63|   542|
|6-24 months                 |NIH-Birth  |BANGLADESH   |0      |           0|    254|   542|
|6-24 months                 |NIH-Birth  |BANGLADESH   |0      |           1|     96|   542|
|6-24 months                 |NIH-Crypto |BANGLADESH   |1      |           0|    545|   723|
|6-24 months                 |NIH-Crypto |BANGLADESH   |1      |           1|     76|   723|
|6-24 months                 |NIH-Crypto |BANGLADESH   |0      |           0|     83|   723|
|6-24 months                 |NIH-Crypto |BANGLADESH   |0      |           1|     19|   723|
|6-24 months                 |PROVIDE    |BANGLADESH   |1      |           0|     36|    49|
|6-24 months                 |PROVIDE    |BANGLADESH   |1      |           1|     13|    49|
|6-24 months                 |PROVIDE    |BANGLADESH   |0      |           0|      0|    49|
|6-24 months                 |PROVIDE    |BANGLADESH   |0      |           1|      0|    49|


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

* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


