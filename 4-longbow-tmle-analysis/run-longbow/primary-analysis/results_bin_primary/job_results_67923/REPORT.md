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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** single

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country                      |single | ever_stunted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:------|------------:|------:|-----:|
|0-24 months |COHORTS        |GUATEMALA                    |0      |            0|    254|  1207|
|0-24 months |COHORTS        |GUATEMALA                    |0      |            1|    855|  1207|
|0-24 months |COHORTS        |GUATEMALA                    |1      |            0|     12|  1207|
|0-24 months |COHORTS        |GUATEMALA                    |1      |            1|     86|  1207|
|0-24 months |COHORTS        |INDIA                        |0      |            0|   3293|  5384|
|0-24 months |COHORTS        |INDIA                        |0      |            1|   2082|  5384|
|0-24 months |COHORTS        |INDIA                        |1      |            0|      4|  5384|
|0-24 months |COHORTS        |INDIA                        |1      |            1|      5|  5384|
|0-24 months |COHORTS        |PHILIPPINES                  |0      |            0|    924|  3018|
|0-24 months |COHORTS        |PHILIPPINES                  |0      |            1|   2019|  3018|
|0-24 months |COHORTS        |PHILIPPINES                  |1      |            0|     21|  3018|
|0-24 months |COHORTS        |PHILIPPINES                  |1      |            1|     54|  3018|
|0-24 months |Guatemala BSC  |GUATEMALA                    |0      |            0|    118|   282|
|0-24 months |Guatemala BSC  |GUATEMALA                    |0      |            1|    134|   282|
|0-24 months |Guatemala BSC  |GUATEMALA                    |1      |            0|      8|   282|
|0-24 months |Guatemala BSC  |GUATEMALA                    |1      |            1|     22|   282|
|0-24 months |JiVitA-4       |BANGLADESH                   |0      |            0|   2263|  5423|
|0-24 months |JiVitA-4       |BANGLADESH                   |0      |            1|   3152|  5423|
|0-24 months |JiVitA-4       |BANGLADESH                   |1      |            0|      4|  5423|
|0-24 months |JiVitA-4       |BANGLADESH                   |1      |            1|      4|  5423|
|0-24 months |MAL-ED         |BANGLADESH                   |0      |            0|    103|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |0      |            1|    162|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |1      |            0|      0|   265|
|0-24 months |MAL-ED         |BANGLADESH                   |1      |            1|      0|   265|
|0-24 months |MAL-ED         |BRAZIL                       |0      |            0|    148|   233|
|0-24 months |MAL-ED         |BRAZIL                       |0      |            1|     49|   233|
|0-24 months |MAL-ED         |BRAZIL                       |1      |            0|     22|   233|
|0-24 months |MAL-ED         |BRAZIL                       |1      |            1|     14|   233|
|0-24 months |MAL-ED         |INDIA                        |0      |            0|     99|   249|
|0-24 months |MAL-ED         |INDIA                        |0      |            1|    150|   249|
|0-24 months |MAL-ED         |INDIA                        |1      |            0|      0|   249|
|0-24 months |MAL-ED         |INDIA                        |1      |            1|      0|   249|
|0-24 months |MAL-ED         |NEPAL                        |0      |            0|    156|   240|
|0-24 months |MAL-ED         |NEPAL                        |0      |            1|     84|   240|
|0-24 months |MAL-ED         |NEPAL                        |1      |            0|      0|   240|
|0-24 months |MAL-ED         |NEPAL                        |1      |            1|      0|   240|
|0-24 months |MAL-ED         |PERU                         |0      |            0|    101|   303|
|0-24 months |MAL-ED         |PERU                         |0      |            1|    167|   303|
|0-24 months |MAL-ED         |PERU                         |1      |            0|     14|   303|
|0-24 months |MAL-ED         |PERU                         |1      |            1|     21|   303|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0      |            0|     79|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0      |            1|     97|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1      |            0|     59|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1      |            1|     79|   314|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0      |            0|     37|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0      |            1|    215|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |            0|      3|   262|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |            1|      7|   262|
|0-24 months |PROBIT         |BELARUS                      |0      |            0|  14176| 16897|
|0-24 months |PROBIT         |BELARUS                      |0      |            1|   2028| 16897|
|0-24 months |PROBIT         |BELARUS                      |1      |            0|    568| 16897|
|0-24 months |PROBIT         |BELARUS                      |1      |            1|    125| 16897|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0      |            0|   1400|  2375|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0      |            1|    751|  2375|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |            0|    148|  2375|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |            1|     76|  2375|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0      |            0|   7683| 14016|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0      |            1|   5444| 14016|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1      |            0|    485| 14016|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1      |            1|    404| 14016|
|0-6 months  |COHORTS        |GUATEMALA                    |0      |            0|    622|   974|
|0-6 months  |COHORTS        |GUATEMALA                    |0      |            1|    283|   974|
|0-6 months  |COHORTS        |GUATEMALA                    |1      |            0|     36|   974|
|0-6 months  |COHORTS        |GUATEMALA                    |1      |            1|     33|   974|
|0-6 months  |COHORTS        |INDIA                        |0      |            0|   4207|  5203|
|0-6 months  |COHORTS        |INDIA                        |0      |            1|    988|  5203|
|0-6 months  |COHORTS        |INDIA                        |1      |            0|      6|  5203|
|0-6 months  |COHORTS        |INDIA                        |1      |            1|      2|  5203|
|0-6 months  |COHORTS        |PHILIPPINES                  |0      |            0|   2246|  3018|
|0-6 months  |COHORTS        |PHILIPPINES                  |0      |            1|    697|  3018|
|0-6 months  |COHORTS        |PHILIPPINES                  |1      |            0|     52|  3018|
|0-6 months  |COHORTS        |PHILIPPINES                  |1      |            1|     23|  3018|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |0      |            0|    167|   265|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |0      |            1|     71|   265|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |1      |            0|     14|   265|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |1      |            1|     13|   265|
|0-6 months  |JiVitA-4       |BANGLADESH                   |0      |            0|   3333|  5115|
|0-6 months  |JiVitA-4       |BANGLADESH                   |0      |            1|   1775|  5115|
|0-6 months  |JiVitA-4       |BANGLADESH                   |1      |            0|      5|  5115|
|0-6 months  |JiVitA-4       |BANGLADESH                   |1      |            1|      2|  5115|
|0-6 months  |MAL-ED         |BANGLADESH                   |0      |            0|    170|   265|
|0-6 months  |MAL-ED         |BANGLADESH                   |0      |            1|     95|   265|
|0-6 months  |MAL-ED         |BANGLADESH                   |1      |            0|      0|   265|
|0-6 months  |MAL-ED         |BANGLADESH                   |1      |            1|      0|   265|
|0-6 months  |MAL-ED         |BRAZIL                       |0      |            0|    156|   233|
|0-6 months  |MAL-ED         |BRAZIL                       |0      |            1|     41|   233|
|0-6 months  |MAL-ED         |BRAZIL                       |1      |            0|     25|   233|
|0-6 months  |MAL-ED         |BRAZIL                       |1      |            1|     11|   233|
|0-6 months  |MAL-ED         |INDIA                        |0      |            0|    164|   249|
|0-6 months  |MAL-ED         |INDIA                        |0      |            1|     85|   249|
|0-6 months  |MAL-ED         |INDIA                        |1      |            0|      0|   249|
|0-6 months  |MAL-ED         |INDIA                        |1      |            1|      0|   249|
|0-6 months  |MAL-ED         |NEPAL                        |0      |            0|    197|   240|
|0-6 months  |MAL-ED         |NEPAL                        |0      |            1|     43|   240|
|0-6 months  |MAL-ED         |NEPAL                        |1      |            0|      0|   240|
|0-6 months  |MAL-ED         |NEPAL                        |1      |            1|      0|   240|
|0-6 months  |MAL-ED         |PERU                         |0      |            0|    154|   303|
|0-6 months  |MAL-ED         |PERU                         |0      |            1|    114|   303|
|0-6 months  |MAL-ED         |PERU                         |1      |            0|     20|   303|
|0-6 months  |MAL-ED         |PERU                         |1      |            1|     15|   303|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |0      |            0|    116|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |0      |            1|     60|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |1      |            0|     82|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |1      |            1|     56|   314|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0      |            0|    146|   262|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0      |            1|    106|   262|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |            0|      7|   262|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |            1|      3|   262|
|0-6 months  |PROBIT         |BELARUS                      |0      |            0|  15119| 16892|
|0-6 months  |PROBIT         |BELARUS                      |0      |            1|   1080| 16892|
|0-6 months  |PROBIT         |BELARUS                      |1      |            0|    614| 16892|
|0-6 months  |PROBIT         |BELARUS                      |1      |            1|     79| 16892|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0      |            0|   1726|  2375|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0      |            1|    425|  2375|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |            0|    184|  2375|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |            1|     40|  2375|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |0      |            0|   9751| 13999|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |0      |            1|   3361| 13999|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |1      |            0|    625| 13999|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |1      |            1|    262| 13999|
|6-24 months |COHORTS        |GUATEMALA                    |0      |            0|    186|   820|
|6-24 months |COHORTS        |GUATEMALA                    |0      |            1|    572|   820|
|6-24 months |COHORTS        |GUATEMALA                    |1      |            0|      9|   820|
|6-24 months |COHORTS        |GUATEMALA                    |1      |            1|     53|   820|
|6-24 months |COHORTS        |INDIA                        |0      |            0|   3016|  4117|
|6-24 months |COHORTS        |INDIA                        |0      |            1|   1094|  4117|
|6-24 months |COHORTS        |INDIA                        |1      |            0|      4|  4117|
|6-24 months |COHORTS        |INDIA                        |1      |            1|      3|  4117|
|6-24 months |COHORTS        |PHILIPPINES                  |0      |            0|    724|  2097|
|6-24 months |COHORTS        |PHILIPPINES                  |0      |            1|   1322|  2097|
|6-24 months |COHORTS        |PHILIPPINES                  |1      |            0|     20|  2097|
|6-24 months |COHORTS        |PHILIPPINES                  |1      |            1|     31|  2097|
|6-24 months |Guatemala BSC  |GUATEMALA                    |0      |            0|    105|   185|
|6-24 months |Guatemala BSC  |GUATEMALA                    |0      |            1|     63|   185|
|6-24 months |Guatemala BSC  |GUATEMALA                    |1      |            0|      8|   185|
|6-24 months |Guatemala BSC  |GUATEMALA                    |1      |            1|      9|   185|
|6-24 months |JiVitA-4       |BANGLADESH                   |0      |            0|   2259|  3642|
|6-24 months |JiVitA-4       |BANGLADESH                   |0      |            1|   1377|  3642|
|6-24 months |JiVitA-4       |BANGLADESH                   |1      |            0|      4|  3642|
|6-24 months |JiVitA-4       |BANGLADESH                   |1      |            1|      2|  3642|
|6-24 months |MAL-ED         |BANGLADESH                   |0      |            0|     91|   158|
|6-24 months |MAL-ED         |BANGLADESH                   |0      |            1|     67|   158|
|6-24 months |MAL-ED         |BANGLADESH                   |1      |            0|      0|   158|
|6-24 months |MAL-ED         |BANGLADESH                   |1      |            1|      0|   158|
|6-24 months |MAL-ED         |BRAZIL                       |0      |            0|    133|   163|
|6-24 months |MAL-ED         |BRAZIL                       |0      |            1|      8|   163|
|6-24 months |MAL-ED         |BRAZIL                       |1      |            0|     19|   163|
|6-24 months |MAL-ED         |BRAZIL                       |1      |            1|      3|   163|
|6-24 months |MAL-ED         |INDIA                        |0      |            0|     89|   154|
|6-24 months |MAL-ED         |INDIA                        |0      |            1|     65|   154|
|6-24 months |MAL-ED         |INDIA                        |1      |            0|      0|   154|
|6-24 months |MAL-ED         |INDIA                        |1      |            1|      0|   154|
|6-24 months |MAL-ED         |NEPAL                        |0      |            0|    153|   194|
|6-24 months |MAL-ED         |NEPAL                        |0      |            1|     41|   194|
|6-24 months |MAL-ED         |NEPAL                        |1      |            0|      0|   194|
|6-24 months |MAL-ED         |NEPAL                        |1      |            1|      0|   194|
|6-24 months |MAL-ED         |PERU                         |0      |            0|     77|   149|
|6-24 months |MAL-ED         |PERU                         |0      |            1|     53|   149|
|6-24 months |MAL-ED         |PERU                         |1      |            0|     13|   149|
|6-24 months |MAL-ED         |PERU                         |1      |            1|      6|   149|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |0      |            0|     56|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |0      |            1|     37|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |1      |            0|     42|   158|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |1      |            1|     23|   158|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0      |            0|     30|   144|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0      |            1|    109|   144|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |            0|      1|   144|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |            1|      4|   144|
|6-24 months |PROBIT         |BELARUS                      |0      |            0|  13915| 15467|
|6-24 months |PROBIT         |BELARUS                      |0      |            1|    948| 15467|
|6-24 months |PROBIT         |BELARUS                      |1      |            0|    558| 15467|
|6-24 months |PROBIT         |BELARUS                      |1      |            1|     46| 15467|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0      |            0|   1115|  1589|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0      |            1|    326|  1589|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |            0|    112|  1589|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |            1|     36|  1589|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |0      |            0|   5889|  8461|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |0      |            1|   2083|  8461|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |1      |            0|    347|  8461|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |1      |            1|    142|  8461|


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
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/38f36941-5ea2-4075-93e4-675407bb897b/e744e354-b96a-4fd0-9122-98b560b2b123/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/38f36941-5ea2-4075-93e4-675407bb897b/e744e354-b96a-4fd0-9122-98b560b2b123/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/38f36941-5ea2-4075-93e4-675407bb897b/e744e354-b96a-4fd0-9122-98b560b2b123/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/38f36941-5ea2-4075-93e4-675407bb897b/e744e354-b96a-4fd0-9122-98b560b2b123/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |0                  |NA             | 0.7715758| 0.7468557| 0.7962960|
|0-24 months |COHORTS        |GUATEMALA                    |1                  |NA             | 0.8995276| 0.8429673| 0.9560880|
|0-24 months |COHORTS        |PHILIPPINES                  |0                  |NA             | 0.6862867| 0.6694357| 0.7031376|
|0-24 months |COHORTS        |PHILIPPINES                  |1                  |NA             | 0.7008789| 0.6138012| 0.7879567|
|0-24 months |Guatemala BSC  |GUATEMALA                    |0                  |NA             | 0.5317460| 0.4700280| 0.5934641|
|0-24 months |Guatemala BSC  |GUATEMALA                    |1                  |NA             | 0.7333333| 0.5748097| 0.8918569|
|0-24 months |MAL-ED         |BRAZIL                       |0                  |NA             | 0.2494131| 0.1888458| 0.3099803|
|0-24 months |MAL-ED         |BRAZIL                       |1                  |NA             | 0.4163005| 0.2561870| 0.5764139|
|0-24 months |MAL-ED         |PERU                         |0                  |NA             | 0.6250145| 0.5669241| 0.6831049|
|0-24 months |MAL-ED         |PERU                         |1                  |NA             | 0.5574211| 0.3868517| 0.7279905|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0                  |NA             | 0.5310905| 0.4475377| 0.6146434|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1                  |NA             | 0.5960478| 0.5128387| 0.6792570|
|0-24 months |PROBIT         |BELARUS                      |0                  |NA             | 0.1273108| 0.1102506| 0.1443710|
|0-24 months |PROBIT         |BELARUS                      |1                  |NA             | 0.1196974| 0.0996152| 0.1397796|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | 0.3432879| 0.3219608| 0.3646150|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.2854506| 0.2241043| 0.3467969|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0                  |NA             | 0.4164852| 0.4080447| 0.4249257|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | 0.4578023| 0.4222912| 0.4933134|
|0-6 months  |COHORTS        |GUATEMALA                    |0                  |NA             | 0.3140668| 0.2838163| 0.3443172|
|0-6 months  |COHORTS        |GUATEMALA                    |1                  |NA             | 0.4968898| 0.3743566| 0.6194230|
|0-6 months  |COHORTS        |PHILIPPINES                  |0                  |NA             | 0.2371331| 0.2216719| 0.2525943|
|0-6 months  |COHORTS        |PHILIPPINES                  |1                  |NA             | 0.2389665| 0.1658766| 0.3120564|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |0                  |NA             | 0.2976561| 0.2393692| 0.3559430|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |1                  |NA             | 0.4983805| 0.3035411| 0.6932200|
|0-6 months  |MAL-ED         |BRAZIL                       |0                  |NA             | 0.2077953| 0.1509571| 0.2646334|
|0-6 months  |MAL-ED         |BRAZIL                       |1                  |NA             | 0.2952570| 0.1382360| 0.4522780|
|0-6 months  |MAL-ED         |PERU                         |0                  |NA             | 0.4275234| 0.3682540| 0.4867929|
|0-6 months  |MAL-ED         |PERU                         |1                  |NA             | 0.3934025| 0.2256178| 0.5611871|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |0                  |NA             | 0.3293583| 0.2529542| 0.4057624|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |1                  |NA             | 0.4139170| 0.3320901| 0.4957439|
|0-6 months  |PROBIT         |BELARUS                      |0                  |NA             | 0.0668429| 0.0560227| 0.0776631|
|0-6 months  |PROBIT         |BELARUS                      |1                  |NA             | 0.0917701| 0.0667416| 0.1167986|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | 0.1924104| 0.1751595| 0.2096612|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.0978275| 0.0622890| 0.1333660|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |0                  |NA             | 0.2574556| 0.2499494| 0.2649618|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | 0.2950606| 0.2618214| 0.3282998|
|6-24 months |COHORTS        |GUATEMALA                    |0                  |NA             | 0.7546174| 0.7239651| 0.7852698|
|6-24 months |COHORTS        |GUATEMALA                    |1                  |NA             | 0.8548387| 0.7671013| 0.9425761|
|6-24 months |COHORTS        |PHILIPPINES                  |0                  |NA             | 0.6461319| 0.6253573| 0.6669065|
|6-24 months |COHORTS        |PHILIPPINES                  |1                  |NA             | 0.6044613| 0.4766530| 0.7322697|
|6-24 months |Guatemala BSC  |GUATEMALA                    |0                  |NA             | 0.3750000| 0.3015949| 0.4484051|
|6-24 months |Guatemala BSC  |GUATEMALA                    |1                  |NA             | 0.5294118| 0.2914989| 0.7673246|
|6-24 months |MAL-ED         |PERU                         |0                  |NA             | 0.4076923| 0.3229347| 0.4924499|
|6-24 months |MAL-ED         |PERU                         |1                  |NA             | 0.3157895| 0.1060755| 0.5255034|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |0                  |NA             | 0.3972890| 0.2962889| 0.4982892|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |1                  |NA             | 0.3457488| 0.2274677| 0.4640300|
|6-24 months |PROBIT         |BELARUS                      |0                  |NA             | 0.0639614| 0.0522447| 0.0756780|
|6-24 months |PROBIT         |BELARUS                      |1                  |NA             | 0.0671477| 0.0463566| 0.0879387|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | 0.2258059| 0.2041945| 0.2474173|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.2563716| 0.1813059| 0.3314372|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |0                  |NA             | 0.2623395| 0.2526484| 0.2720306|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | 0.2952214| 0.2498794| 0.3405635|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.7796189| 0.7562250| 0.8030128|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.6868787| 0.6703303| 0.7034272|
|0-24 months |Guatemala BSC  |GUATEMALA                    |NA                 |NA             | 0.5531915| 0.4950624| 0.6113206|
|0-24 months |MAL-ED         |BRAZIL                       |NA                 |NA             | 0.2703863| 0.2132328| 0.3275398|
|0-24 months |MAL-ED         |PERU                         |NA                 |NA             | 0.6204620| 0.5657315| 0.6751926|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.5605096| 0.5055248| 0.6154943|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.1274191| 0.1115552| 0.1432829|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.3482105| 0.3290467| 0.3673744|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.4172374| 0.4090737| 0.4254012|
|0-6 months  |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.3244353| 0.2950189| 0.3538517|
|0-6 months  |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.2385686| 0.2233602| 0.2537770|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |NA                 |NA             | 0.3169811| 0.2608532| 0.3731091|
|0-6 months  |MAL-ED         |BRAZIL                       |NA                 |NA             | 0.2231760| 0.1695976| 0.2767543|
|0-6 months  |MAL-ED         |PERU                         |NA                 |NA             | 0.4257426| 0.3699763| 0.4815088|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.3694268| 0.3159570| 0.4228965|
|0-6 months  |PROBIT         |BELARUS                      |NA                 |NA             | 0.0686124| 0.0577768| 0.0794479|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1957895| 0.1798275| 0.2117515|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.2588042| 0.2515487| 0.2660597|
|6-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.7621951| 0.7330377| 0.7913526|
|6-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.6452074| 0.6247246| 0.6656902|
|6-24 months |Guatemala BSC  |GUATEMALA                    |NA                 |NA             | 0.3891892| 0.3187405| 0.4596379|
|6-24 months |MAL-ED         |PERU                         |NA                 |NA             | 0.3959732| 0.3171819| 0.4747644|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.3797468| 0.3038314| 0.4556622|
|6-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.0642659| 0.0526827| 0.0758490|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.2278162| 0.2071874| 0.2484451|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.2629713| 0.2535901| 0.2723525|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |GUATEMALA                    |1                  |0              | 1.1658318| 1.0865630| 1.2508835|
|0-24 months |COHORTS        |PHILIPPINES                  |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |COHORTS        |PHILIPPINES                  |1                  |0              | 1.0212627| 0.8999459| 1.1589335|
|0-24 months |Guatemala BSC  |GUATEMALA                    |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |Guatemala BSC  |GUATEMALA                    |1                  |0              | 1.3791045| 1.0790454| 1.7626034|
|0-24 months |MAL-ED         |BRAZIL                       |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |BRAZIL                       |1                  |0              | 1.6691205| 1.0580006| 2.6332341|
|0-24 months |MAL-ED         |PERU                         |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |PERU                         |1                  |0              | 0.8918532| 0.6480625| 1.2273541|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1                  |0              | 1.1223093| 0.9114973| 1.3818780|
|0-24 months |PROBIT         |BELARUS                      |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |PROBIT         |BELARUS                      |1                  |0              | 0.9401983| 0.8057952| 1.0970194|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |0              | 0.8315195| 0.6653202| 1.0392358|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |0              | 1.0992042| 1.0147706| 1.1906632|
|0-6 months  |COHORTS        |GUATEMALA                    |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |COHORTS        |GUATEMALA                    |1                  |0              | 1.5821153| 1.2160778| 2.0583294|
|0-6 months  |COHORTS        |PHILIPPINES                  |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |COHORTS        |PHILIPPINES                  |1                  |0              | 1.0077317| 0.7379011| 1.3762322|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |1                  |0              | 1.6743502| 1.0843743| 2.5853144|
|0-6 months  |MAL-ED         |BRAZIL                       |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |BRAZIL                       |1                  |0              | 1.4209034| 0.7811108| 2.5847377|
|0-6 months  |MAL-ED         |PERU                         |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |PERU                         |1                  |0              | 0.9201892| 0.5882089| 1.4395365|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |1                  |0              | 1.2567378| 0.9300027| 1.6982638|
|0-6 months  |PROBIT         |BELARUS                      |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |PROBIT         |BELARUS                      |1                  |0              | 1.3729223| 1.0535529| 1.7891038|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |0              | 0.5084316| 0.3500070| 0.7385643|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |1                  |0              | 1.1460641| 1.0203970| 1.2872077|
|6-24 months |COHORTS        |GUATEMALA                    |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |COHORTS        |GUATEMALA                    |1                  |0              | 1.1328107| 1.0144231| 1.2650147|
|6-24 months |COHORTS        |PHILIPPINES                  |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |COHORTS        |PHILIPPINES                  |1                  |0              | 0.9355076| 0.7554481| 1.1584838|
|6-24 months |Guatemala BSC  |GUATEMALA                    |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |Guatemala BSC  |GUATEMALA                    |1                  |0              | 1.4117647| 0.8647352| 2.3048439|
|6-24 months |MAL-ED         |PERU                         |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |MAL-ED         |PERU                         |1                  |0              | 0.7745780| 0.3862340| 1.5533872|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |1                  |0              | 0.8702703| 0.5666459| 1.3365848|
|6-24 months |PROBIT         |BELARUS                      |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |PROBIT         |BELARUS                      |1                  |0              | 1.0498165| 0.7842285| 1.4053488|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |0              | 1.1353627| 0.8346726| 1.5443762|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |0              | 1.1253413| 0.9610133| 1.3177685|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |0                  |NA             |  0.0080431|  0.0021962| 0.0138900|
|0-24 months |COHORTS        |PHILIPPINES                  |0                  |NA             |  0.0005921| -0.0019493| 0.0031334|
|0-24 months |Guatemala BSC  |GUATEMALA                    |0                  |NA             |  0.0214455|  0.0019436| 0.0409473|
|0-24 months |MAL-ED         |BRAZIL                       |0                  |NA             |  0.0209732| -0.0065724| 0.0485188|
|0-24 months |MAL-ED         |PERU                         |0                  |NA             | -0.0045524| -0.0243676| 0.0152628|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0                  |NA             |  0.0294190| -0.0308681| 0.0897062|
|0-24 months |PROBIT         |BELARUS                      |0                  |NA             |  0.0001083| -0.0036325| 0.0038491|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             |  0.0049226| -0.0038689| 0.0137141|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0                  |NA             |  0.0007522| -0.0014265| 0.0029309|
|0-6 months  |COHORTS        |GUATEMALA                    |0                  |NA             |  0.0103686|  0.0016985| 0.0190386|
|0-6 months  |COHORTS        |PHILIPPINES                  |0                  |NA             |  0.0014355| -0.0010735| 0.0039445|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |0                  |NA             |  0.0193250| -0.0010676| 0.0397176|
|0-6 months  |MAL-ED         |BRAZIL                       |0                  |NA             |  0.0153807| -0.0100174| 0.0407788|
|0-6 months  |MAL-ED         |PERU                         |0                  |NA             | -0.0017809| -0.0217339| 0.0181722|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |0                  |NA             |  0.0400685| -0.0157245| 0.0958614|
|0-6 months  |PROBIT         |BELARUS                      |0                  |NA             |  0.0017694|  0.0002381| 0.0033008|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             |  0.0033791| -0.0032041| 0.0099624|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |0                  |NA             |  0.0013486| -0.0006620| 0.0033592|
|6-24 months |COHORTS        |GUATEMALA                    |0                  |NA             |  0.0075777|  0.0003202| 0.0148352|
|6-24 months |COHORTS        |PHILIPPINES                  |0                  |NA             | -0.0009245| -0.0042437| 0.0023948|
|6-24 months |Guatemala BSC  |GUATEMALA                    |0                  |NA             |  0.0141892| -0.0095805| 0.0379589|
|6-24 months |MAL-ED         |PERU                         |0                  |NA             | -0.0117192| -0.0409824| 0.0175441|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |0                  |NA             | -0.0175422| -0.0829113| 0.0478269|
|6-24 months |PROBIT         |BELARUS                      |0                  |NA             |  0.0003045| -0.0005275| 0.0011365|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             |  0.0020103| -0.0047269| 0.0087476|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |0                  |NA             |  0.0006318| -0.0018853| 0.0031489|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |0                  |NA             |  0.0103167|  0.0027484| 0.0178275|
|0-24 months |COHORTS        |PHILIPPINES                  |0                  |NA             |  0.0008620| -0.0028457| 0.0045560|
|0-24 months |Guatemala BSC  |GUATEMALA                    |0                  |NA             |  0.0387668|  0.0025234| 0.0736932|
|0-24 months |MAL-ED         |BRAZIL                       |0                  |NA             |  0.0775675| -0.0295426| 0.1735343|
|0-24 months |MAL-ED         |PERU                         |0                  |NA             | -0.0073371| -0.0397960| 0.0241084|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0                  |NA             |  0.0524862| -0.0618326| 0.1544972|
|0-24 months |PROBIT         |BELARUS                      |0                  |NA             |  0.0008500| -0.0289671| 0.0298031|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             |  0.0141369| -0.0114735| 0.0390987|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0                  |NA             |  0.0018029| -0.0034325| 0.0070110|
|0-6 months  |COHORTS        |GUATEMALA                    |0                  |NA             |  0.0319588|  0.0048499| 0.0583292|
|0-6 months  |COHORTS        |PHILIPPINES                  |0                  |NA             |  0.0060171| -0.0045700| 0.0164926|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |0                  |NA             |  0.0609659| -0.0057401| 0.1232476|
|0-6 months  |MAL-ED         |BRAZIL                       |0                  |NA             |  0.0689173| -0.0515321| 0.1755697|
|0-6 months  |MAL-ED         |PERU                         |0                  |NA             | -0.0041829| -0.0521624| 0.0416086|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |0                  |NA             |  0.1084612| -0.0566575| 0.2477776|
|0-6 months  |PROBIT         |BELARUS                      |0                  |NA             |  0.0257890|  0.0031683| 0.0478964|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             |  0.0172589| -0.0169738| 0.0503393|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |0                  |NA             |  0.0052109| -0.0025879| 0.0129490|
|6-24 months |COHORTS        |GUATEMALA                    |0                  |NA             |  0.0099420|  0.0003332| 0.0194583|
|6-24 months |COHORTS        |PHILIPPINES                  |0                  |NA             | -0.0014329| -0.0065904| 0.0036983|
|6-24 months |Guatemala BSC  |GUATEMALA                    |0                  |NA             |  0.0364583| -0.0266802| 0.0957140|
|6-24 months |MAL-ED         |PERU                         |0                  |NA             | -0.0295958| -0.1063031| 0.0417928|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |0                  |NA             | -0.0461945| -0.2334158| 0.1126084|
|6-24 months |PROBIT         |BELARUS                      |0                  |NA             |  0.0047380| -0.0084288| 0.0177330|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             |  0.0088244| -0.0211939| 0.0379603|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |0                  |NA             |  0.0024026| -0.0072150| 0.0119283|
