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

**Intervention Variable:** single

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |single | ever_swasted| n_cell|     n|
|:-----------|:--------------|:------------|:------|------------:|------:|-----:|
|0-24 months |COHORTS        |INDIA        |1      |            0|      4|  5594|
|0-24 months |COHORTS        |INDIA        |1      |            1|      0|  5594|
|0-24 months |COHORTS        |INDIA        |0      |            0|   5013|  5594|
|0-24 months |COHORTS        |INDIA        |0      |            1|    577|  5594|
|0-24 months |COHORTS        |GUATEMALA    |1      |            0|    116|  1238|
|0-24 months |COHORTS        |GUATEMALA    |1      |            1|     13|  1238|
|0-24 months |COHORTS        |GUATEMALA    |0      |            0|   1030|  1238|
|0-24 months |COHORTS        |GUATEMALA    |0      |            1|     79|  1238|
|0-24 months |COHORTS        |PHILIPPINES  |1      |            0|     73|  2998|
|0-24 months |COHORTS        |PHILIPPINES  |1      |            1|      6|  2998|
|0-24 months |COHORTS        |PHILIPPINES  |0      |            0|   2546|  2998|
|0-24 months |COHORTS        |PHILIPPINES  |0      |            1|    373|  2998|
|0-24 months |Guatemala BSC  |GUATEMALA    |1      |            0|     34|   302|
|0-24 months |Guatemala BSC  |GUATEMALA    |1      |            1|      0|   302|
|0-24 months |Guatemala BSC  |GUATEMALA    |0      |            0|    265|   302|
|0-24 months |Guatemala BSC  |GUATEMALA    |0      |            1|      3|   302|
|0-24 months |JiVitA-4       |BANGLADESH   |1      |            0|     40|  5435|
|0-24 months |JiVitA-4       |BANGLADESH   |1      |            1|      2|  5435|
|0-24 months |JiVitA-4       |BANGLADESH   |0      |            0|   5052|  5435|
|0-24 months |JiVitA-4       |BANGLADESH   |0      |            1|    341|  5435|
|0-24 months |MAL-ED         |INDIA        |1      |            0|      0|   249|
|0-24 months |MAL-ED         |INDIA        |1      |            1|      0|   249|
|0-24 months |MAL-ED         |INDIA        |0      |            0|    223|   249|
|0-24 months |MAL-ED         |INDIA        |0      |            1|     26|   249|
|0-24 months |MAL-ED         |BANGLADESH   |1      |            0|      0|   263|
|0-24 months |MAL-ED         |BANGLADESH   |1      |            1|      0|   263|
|0-24 months |MAL-ED         |BANGLADESH   |0      |            0|    242|   263|
|0-24 months |MAL-ED         |BANGLADESH   |0      |            1|     21|   263|
|0-24 months |MAL-ED         |PERU         |1      |            0|     20|   302|
|0-24 months |MAL-ED         |PERU         |1      |            1|      0|   302|
|0-24 months |MAL-ED         |PERU         |0      |            0|    278|   302|
|0-24 months |MAL-ED         |PERU         |0      |            1|      4|   302|
|0-24 months |MAL-ED         |NEPAL        |1      |            0|      0|   240|
|0-24 months |MAL-ED         |NEPAL        |1      |            1|      0|   240|
|0-24 months |MAL-ED         |NEPAL        |0      |            0|    231|   240|
|0-24 months |MAL-ED         |NEPAL        |0      |            1|      9|   240|
|0-24 months |MAL-ED         |BRAZIL       |1      |            0|     42|   233|
|0-24 months |MAL-ED         |BRAZIL       |1      |            1|      2|   233|
|0-24 months |MAL-ED         |BRAZIL       |0      |            0|    187|   233|
|0-24 months |MAL-ED         |BRAZIL       |0      |            1|      2|   233|
|0-24 months |MAL-ED         |TANZANIA     |1      |            0|     16|   261|
|0-24 months |MAL-ED         |TANZANIA     |1      |            1|      0|   261|
|0-24 months |MAL-ED         |TANZANIA     |0      |            0|    236|   261|
|0-24 months |MAL-ED         |TANZANIA     |0      |            1|      9|   261|
|0-24 months |MAL-ED         |SOUTH AFRICA |1      |            0|    117|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |1      |            1|      4|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |0      |            0|    179|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA |0      |            1|     12|   312|
|0-24 months |PROBIT         |BELARUS      |1      |            0|    642| 16898|
|0-24 months |PROBIT         |BELARUS      |1      |            1|     54| 16898|
|0-24 months |PROBIT         |BELARUS      |0      |            0|  14931| 16898|
|0-24 months |PROBIT         |BELARUS      |0      |            1|   1271| 16898|
|0-24 months |TanzaniaChild2 |TANZANIA     |1      |            0|    219|  2390|
|0-24 months |TanzaniaChild2 |TANZANIA     |1      |            1|     15|  2390|
|0-24 months |TanzaniaChild2 |TANZANIA     |0      |            0|   2013|  2390|
|0-24 months |TanzaniaChild2 |TANZANIA     |0      |            1|    143|  2390|
|0-24 months |ZVITAMBO       |ZIMBABWE     |1      |            0|    860| 13856|
|0-24 months |ZVITAMBO       |ZIMBABWE     |1      |            1|    107| 13856|
|0-24 months |ZVITAMBO       |ZIMBABWE     |0      |            0|  11717| 13856|
|0-24 months |ZVITAMBO       |ZIMBABWE     |0      |            1|   1172| 13856|
|0-6 months  |COHORTS        |INDIA        |1      |            0|      4|  5380|
|0-6 months  |COHORTS        |INDIA        |1      |            1|      0|  5380|
|0-6 months  |COHORTS        |INDIA        |0      |            0|   4971|  5380|
|0-6 months  |COHORTS        |INDIA        |0      |            1|    405|  5380|
|0-6 months  |COHORTS        |GUATEMALA    |1      |            0|     88|   988|
|0-6 months  |COHORTS        |GUATEMALA    |1      |            1|      7|   988|
|0-6 months  |COHORTS        |GUATEMALA    |0      |            0|    838|   988|
|0-6 months  |COHORTS        |GUATEMALA    |0      |            1|     55|   988|
|0-6 months  |COHORTS        |PHILIPPINES  |1      |            0|     74|  2997|
|0-6 months  |COHORTS        |PHILIPPINES  |1      |            1|      5|  2997|
|0-6 months  |COHORTS        |PHILIPPINES  |0      |            0|   2713|  2997|
|0-6 months  |COHORTS        |PHILIPPINES  |0      |            1|    205|  2997|
|0-6 months  |Guatemala BSC  |GUATEMALA    |1      |            0|     32|   282|
|0-6 months  |Guatemala BSC  |GUATEMALA    |1      |            1|      0|   282|
|0-6 months  |Guatemala BSC  |GUATEMALA    |0      |            0|    249|   282|
|0-6 months  |Guatemala BSC  |GUATEMALA    |0      |            1|      1|   282|
|0-6 months  |JiVitA-4       |BANGLADESH   |1      |            0|     40|  5088|
|0-6 months  |JiVitA-4       |BANGLADESH   |1      |            1|      1|  5088|
|0-6 months  |JiVitA-4       |BANGLADESH   |0      |            0|   4937|  5088|
|0-6 months  |JiVitA-4       |BANGLADESH   |0      |            1|    110|  5088|
|0-6 months  |MAL-ED         |INDIA        |1      |            0|      0|   249|
|0-6 months  |MAL-ED         |INDIA        |1      |            1|      0|   249|
|0-6 months  |MAL-ED         |INDIA        |0      |            0|    228|   249|
|0-6 months  |MAL-ED         |INDIA        |0      |            1|     21|   249|
|0-6 months  |MAL-ED         |BANGLADESH   |1      |            0|      0|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |1      |            1|      0|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |0      |            0|    247|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |0      |            1|     16|   263|
|0-6 months  |MAL-ED         |PERU         |1      |            0|     20|   302|
|0-6 months  |MAL-ED         |PERU         |1      |            1|      0|   302|
|0-6 months  |MAL-ED         |PERU         |0      |            0|    281|   302|
|0-6 months  |MAL-ED         |PERU         |0      |            1|      1|   302|
|0-6 months  |MAL-ED         |NEPAL        |1      |            0|      0|   240|
|0-6 months  |MAL-ED         |NEPAL        |1      |            1|      0|   240|
|0-6 months  |MAL-ED         |NEPAL        |0      |            0|    233|   240|
|0-6 months  |MAL-ED         |NEPAL        |0      |            1|      7|   240|
|0-6 months  |MAL-ED         |BRAZIL       |1      |            0|     43|   233|
|0-6 months  |MAL-ED         |BRAZIL       |1      |            1|      1|   233|
|0-6 months  |MAL-ED         |BRAZIL       |0      |            0|    187|   233|
|0-6 months  |MAL-ED         |BRAZIL       |0      |            1|      2|   233|
|0-6 months  |MAL-ED         |TANZANIA     |1      |            0|     16|   261|
|0-6 months  |MAL-ED         |TANZANIA     |1      |            1|      0|   261|
|0-6 months  |MAL-ED         |TANZANIA     |0      |            0|    241|   261|
|0-6 months  |MAL-ED         |TANZANIA     |0      |            1|      4|   261|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1      |            0|    119|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1      |            1|      2|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |0      |            0|    187|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA |0      |            1|      4|   312|
|0-6 months  |PROBIT         |BELARUS      |1      |            0|    643| 16895|
|0-6 months  |PROBIT         |BELARUS      |1      |            1|     53| 16895|
|0-6 months  |PROBIT         |BELARUS      |0      |            0|  14939| 16895|
|0-6 months  |PROBIT         |BELARUS      |0      |            1|   1260| 16895|
|0-6 months  |TanzaniaChild2 |TANZANIA     |1      |            0|    222|  2390|
|0-6 months  |TanzaniaChild2 |TANZANIA     |1      |            1|     12|  2390|
|0-6 months  |TanzaniaChild2 |TANZANIA     |0      |            0|   2089|  2390|
|0-6 months  |TanzaniaChild2 |TANZANIA     |0      |            1|     67|  2390|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |1      |            0|    882| 13764|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |1      |            1|     81| 13764|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |0      |            0|  11936| 13764|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |0      |            1|    865| 13764|
|6-24 months |COHORTS        |INDIA        |1      |            0|      3|  5236|
|6-24 months |COHORTS        |INDIA        |1      |            1|      0|  5236|
|6-24 months |COHORTS        |INDIA        |0      |            0|   5053|  5236|
|6-24 months |COHORTS        |INDIA        |0      |            1|    180|  5236|
|6-24 months |COHORTS        |GUATEMALA    |1      |            0|    113|  1127|
|6-24 months |COHORTS        |GUATEMALA    |1      |            1|      6|  1127|
|6-24 months |COHORTS        |GUATEMALA    |0      |            0|    984|  1127|
|6-24 months |COHORTS        |GUATEMALA    |0      |            1|     24|  1127|
|6-24 months |COHORTS        |PHILIPPINES  |1      |            0|     73|  2767|
|6-24 months |COHORTS        |PHILIPPINES  |1      |            1|      1|  2767|
|6-24 months |COHORTS        |PHILIPPINES  |0      |            0|   2508|  2767|
|6-24 months |COHORTS        |PHILIPPINES  |0      |            1|    185|  2767|
|6-24 months |Guatemala BSC  |GUATEMALA    |1      |            0|     31|   268|
|6-24 months |Guatemala BSC  |GUATEMALA    |1      |            1|      0|   268|
|6-24 months |Guatemala BSC  |GUATEMALA    |0      |            0|    235|   268|
|6-24 months |Guatemala BSC  |GUATEMALA    |0      |            1|      2|   268|
|6-24 months |JiVitA-4       |BANGLADESH   |1      |            0|     41|  5422|
|6-24 months |JiVitA-4       |BANGLADESH   |1      |            1|      1|  5422|
|6-24 months |JiVitA-4       |BANGLADESH   |0      |            0|   5142|  5422|
|6-24 months |JiVitA-4       |BANGLADESH   |0      |            1|    238|  5422|
|6-24 months |MAL-ED         |INDIA        |1      |            0|      0|   233|
|6-24 months |MAL-ED         |INDIA        |1      |            1|      0|   233|
|6-24 months |MAL-ED         |INDIA        |0      |            0|    227|   233|
|6-24 months |MAL-ED         |INDIA        |0      |            1|      6|   233|
|6-24 months |MAL-ED         |BANGLADESH   |1      |            0|      0|   240|
|6-24 months |MAL-ED         |BANGLADESH   |1      |            1|      0|   240|
|6-24 months |MAL-ED         |BANGLADESH   |0      |            0|    235|   240|
|6-24 months |MAL-ED         |BANGLADESH   |0      |            1|      5|   240|
|6-24 months |MAL-ED         |PERU         |1      |            0|     19|   270|
|6-24 months |MAL-ED         |PERU         |1      |            1|      0|   270|
|6-24 months |MAL-ED         |PERU         |0      |            0|    248|   270|
|6-24 months |MAL-ED         |PERU         |0      |            1|      3|   270|
|6-24 months |MAL-ED         |NEPAL        |1      |            0|      0|   235|
|6-24 months |MAL-ED         |NEPAL        |1      |            1|      0|   235|
|6-24 months |MAL-ED         |NEPAL        |0      |            0|    233|   235|
|6-24 months |MAL-ED         |NEPAL        |0      |            1|      2|   235|
|6-24 months |MAL-ED         |BRAZIL       |1      |            0|     36|   207|
|6-24 months |MAL-ED         |BRAZIL       |1      |            1|      1|   207|
|6-24 months |MAL-ED         |BRAZIL       |0      |            0|    170|   207|
|6-24 months |MAL-ED         |BRAZIL       |0      |            1|      0|   207|
|6-24 months |MAL-ED         |TANZANIA     |1      |            0|     16|   245|
|6-24 months |MAL-ED         |TANZANIA     |1      |            1|      0|   245|
|6-24 months |MAL-ED         |TANZANIA     |0      |            0|    224|   245|
|6-24 months |MAL-ED         |TANZANIA     |0      |            1|      5|   245|
|6-24 months |MAL-ED         |SOUTH AFRICA |1      |            0|     92|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |1      |            1|      2|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |0      |            0|    157|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA |0      |            1|      8|   259|
|6-24 months |PROBIT         |BELARUS      |1      |            0|    675| 16598|
|6-24 months |PROBIT         |BELARUS      |1      |            1|      1| 16598|
|6-24 months |PROBIT         |BELARUS      |0      |            0|  15911| 16598|
|6-24 months |PROBIT         |BELARUS      |0      |            1|     11| 16598|
|6-24 months |TanzaniaChild2 |TANZANIA     |1      |            0|    198|  2012|
|6-24 months |TanzaniaChild2 |TANZANIA     |1      |            1|      4|  2012|
|6-24 months |TanzaniaChild2 |TANZANIA     |0      |            0|   1731|  2012|
|6-24 months |TanzaniaChild2 |TANZANIA     |0      |            1|     79|  2012|
|6-24 months |ZVITAMBO       |ZIMBABWE     |1      |            0|    685| 10747|
|6-24 months |ZVITAMBO       |ZIMBABWE     |1      |            1|     29| 10747|
|6-24 months |ZVITAMBO       |ZIMBABWE     |0      |            0|   9706| 10747|
|6-24 months |ZVITAMBO       |ZIMBABWE     |0      |            1|    327| 10747|


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


