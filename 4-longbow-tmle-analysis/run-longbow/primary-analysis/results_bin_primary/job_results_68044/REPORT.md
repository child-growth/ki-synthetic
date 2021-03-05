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

|agecat      |studyid        |country                      |single | ever_wasted| n_cell|     n|
|:-----------|:--------------|:----------------------------|:------|-----------:|------:|-----:|
|0-24 months |COHORTS        |GUATEMALA                    |0      |           0|    804|  1197|
|0-24 months |COHORTS        |GUATEMALA                    |0      |           1|    295|  1197|
|0-24 months |COHORTS        |GUATEMALA                    |1      |           0|     77|  1197|
|0-24 months |COHORTS        |GUATEMALA                    |1      |           1|     21|  1197|
|0-24 months |COHORTS        |INDIA                        |0      |           0|   3568|  5376|
|0-24 months |COHORTS        |INDIA                        |0      |           1|   1799|  5376|
|0-24 months |COHORTS        |INDIA                        |1      |           0|      5|  5376|
|0-24 months |COHORTS        |INDIA                        |1      |           1|      4|  5376|
|0-24 months |COHORTS        |PHILIPPINES                  |0      |           0|   1754|  3005|
|0-24 months |COHORTS        |PHILIPPINES                  |0      |           1|   1177|  3005|
|0-24 months |COHORTS        |PHILIPPINES                  |1      |           0|     41|  3005|
|0-24 months |COHORTS        |PHILIPPINES                  |1      |           1|     33|  3005|
|0-24 months |Guatemala BSC  |GUATEMALA                    |0      |           0|    225|   282|
|0-24 months |Guatemala BSC  |GUATEMALA                    |0      |           1|     27|   282|
|0-24 months |Guatemala BSC  |GUATEMALA                    |1      |           0|     27|   282|
|0-24 months |Guatemala BSC  |GUATEMALA                    |1      |           1|      3|   282|
|0-24 months |JiVitA-4       |BANGLADESH                   |0      |           0|   3734|  5424|
|0-24 months |JiVitA-4       |BANGLADESH                   |0      |           1|   1682|  5424|
|0-24 months |JiVitA-4       |BANGLADESH                   |1      |           0|      7|  5424|
|0-24 months |JiVitA-4       |BANGLADESH                   |1      |           1|      1|  5424|
|0-24 months |MAL-ED         |BANGLADESH                   |0      |           0|    176|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |0      |           1|     87|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |1      |           0|      0|   263|
|0-24 months |MAL-ED         |BANGLADESH                   |1      |           1|      0|   263|
|0-24 months |MAL-ED         |BRAZIL                       |0      |           0|    182|   233|
|0-24 months |MAL-ED         |BRAZIL                       |0      |           1|     15|   233|
|0-24 months |MAL-ED         |BRAZIL                       |1      |           0|     31|   233|
|0-24 months |MAL-ED         |BRAZIL                       |1      |           1|      5|   233|
|0-24 months |MAL-ED         |INDIA                        |0      |           0|    130|   249|
|0-24 months |MAL-ED         |INDIA                        |0      |           1|    119|   249|
|0-24 months |MAL-ED         |INDIA                        |1      |           0|      0|   249|
|0-24 months |MAL-ED         |INDIA                        |1      |           1|      0|   249|
|0-24 months |MAL-ED         |NEPAL                        |0      |           0|    166|   240|
|0-24 months |MAL-ED         |NEPAL                        |0      |           1|     74|   240|
|0-24 months |MAL-ED         |NEPAL                        |1      |           0|      0|   240|
|0-24 months |MAL-ED         |NEPAL                        |1      |           1|      0|   240|
|0-24 months |MAL-ED         |PERU                         |0      |           0|    247|   302|
|0-24 months |MAL-ED         |PERU                         |0      |           1|     21|   302|
|0-24 months |MAL-ED         |PERU                         |1      |           0|     28|   302|
|0-24 months |MAL-ED         |PERU                         |1      |           1|      6|   302|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0      |           0|    142|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0      |           1|     34|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1      |           0|    106|   312|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1      |           1|     30|   312|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0      |           0|    218|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0      |           1|     33|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |           0|      7|   261|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |           1|      3|   261|
|0-24 months |PROBIT         |BELARUS                      |0      |           0|  12086| 16898|
|0-24 months |PROBIT         |BELARUS                      |0      |           1|   4119| 16898|
|0-24 months |PROBIT         |BELARUS                      |1      |           0|    496| 16898|
|0-24 months |PROBIT         |BELARUS                      |1      |           1|    197| 16898|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0      |           0|   1643|  2375|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0      |           1|    508|  2375|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |           0|    169|  2375|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |           1|     55|  2375|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0      |           0|   9970| 13890|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0      |           1|   3042| 13890|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1      |           0|    636| 13890|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1      |           1|    242| 13890|
|0-6 months  |COHORTS        |GUATEMALA                    |0      |           0|    703|   959|
|0-6 months  |COHORTS        |GUATEMALA                    |0      |           1|    187|   959|
|0-6 months  |COHORTS        |GUATEMALA                    |1      |           0|     60|   959|
|0-6 months  |COHORTS        |GUATEMALA                    |1      |           1|      9|   959|
|0-6 months  |COHORTS        |INDIA                        |0      |           0|   3873|  5170|
|0-6 months  |COHORTS        |INDIA                        |0      |           1|   1289|  5170|
|0-6 months  |COHORTS        |INDIA                        |1      |           0|      7|  5170|
|0-6 months  |COHORTS        |INDIA                        |1      |           1|      1|  5170|
|0-6 months  |COHORTS        |PHILIPPINES                  |0      |           0|   2253|  3004|
|0-6 months  |COHORTS        |PHILIPPINES                  |0      |           1|    677|  3004|
|0-6 months  |COHORTS        |PHILIPPINES                  |1      |           0|     49|  3004|
|0-6 months  |COHORTS        |PHILIPPINES                  |1      |           1|     25|  3004|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |0      |           0|    231|   265|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |0      |           1|      7|   265|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |1      |           0|     25|   265|
|0-6 months  |Guatemala BSC  |GUATEMALA                    |1      |           1|      2|   265|
|0-6 months  |JiVitA-4       |BANGLADESH                   |0      |           0|   4526|  5081|
|0-6 months  |JiVitA-4       |BANGLADESH                   |0      |           1|    548|  5081|
|0-6 months  |JiVitA-4       |BANGLADESH                   |1      |           0|      7|  5081|
|0-6 months  |JiVitA-4       |BANGLADESH                   |1      |           1|      0|  5081|
|0-6 months  |MAL-ED         |BANGLADESH                   |0      |           0|    203|   263|
|0-6 months  |MAL-ED         |BANGLADESH                   |0      |           1|     60|   263|
|0-6 months  |MAL-ED         |BANGLADESH                   |1      |           0|      0|   263|
|0-6 months  |MAL-ED         |BANGLADESH                   |1      |           1|      0|   263|
|0-6 months  |MAL-ED         |BRAZIL                       |0      |           0|    186|   233|
|0-6 months  |MAL-ED         |BRAZIL                       |0      |           1|     11|   233|
|0-6 months  |MAL-ED         |BRAZIL                       |1      |           0|     32|   233|
|0-6 months  |MAL-ED         |BRAZIL                       |1      |           1|      4|   233|
|0-6 months  |MAL-ED         |INDIA                        |0      |           0|    168|   249|
|0-6 months  |MAL-ED         |INDIA                        |0      |           1|     81|   249|
|0-6 months  |MAL-ED         |INDIA                        |1      |           0|      0|   249|
|0-6 months  |MAL-ED         |INDIA                        |1      |           1|      0|   249|
|0-6 months  |MAL-ED         |NEPAL                        |0      |           0|    192|   240|
|0-6 months  |MAL-ED         |NEPAL                        |0      |           1|     48|   240|
|0-6 months  |MAL-ED         |NEPAL                        |1      |           0|      0|   240|
|0-6 months  |MAL-ED         |NEPAL                        |1      |           1|      0|   240|
|0-6 months  |MAL-ED         |PERU                         |0      |           0|    260|   302|
|0-6 months  |MAL-ED         |PERU                         |0      |           1|      8|   302|
|0-6 months  |MAL-ED         |PERU                         |1      |           0|     31|   302|
|0-6 months  |MAL-ED         |PERU                         |1      |           1|      3|   302|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |0      |           0|    159|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |0      |           1|     17|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |1      |           0|    118|   312|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |1      |           1|     18|   312|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0      |           0|    240|   261|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0      |           1|     11|   261|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |           0|      8|   261|
|0-6 months  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |           1|      2|   261|
|0-6 months  |PROBIT         |BELARUS                      |0      |           0|  12171| 16895|
|0-6 months  |PROBIT         |BELARUS                      |0      |           1|   4031| 16895|
|0-6 months  |PROBIT         |BELARUS                      |1      |           0|    500| 16895|
|0-6 months  |PROBIT         |BELARUS                      |1      |           1|    193| 16895|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0      |           0|   1852|  2375|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0      |           1|    299|  2375|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |           0|    192|  2375|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |           1|     32|  2375|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |0      |           0|  10616| 13797|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |0      |           1|   2314| 13797|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |1      |           0|    688| 13797|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |1      |           1|    179| 13797|
|6-24 months |COHORTS        |GUATEMALA                    |0      |           0|    886|  1111|
|6-24 months |COHORTS        |GUATEMALA                    |0      |           1|    131|  1111|
|6-24 months |COHORTS        |GUATEMALA                    |1      |           0|     81|  1111|
|6-24 months |COHORTS        |GUATEMALA                    |1      |           1|     13|  1111|
|6-24 months |COHORTS        |INDIA                        |0      |           0|   4358|  5025|
|6-24 months |COHORTS        |INDIA                        |0      |           1|    658|  5025|
|6-24 months |COHORTS        |INDIA                        |1      |           0|      6|  5025|
|6-24 months |COHORTS        |INDIA                        |1      |           1|      3|  5025|
|6-24 months |COHORTS        |PHILIPPINES                  |0      |           0|   1983|  2775|
|6-24 months |COHORTS        |PHILIPPINES                  |0      |           1|    720|  2775|
|6-24 months |COHORTS        |PHILIPPINES                  |1      |           0|     51|  2775|
|6-24 months |COHORTS        |PHILIPPINES                  |1      |           1|     21|  2775|
|6-24 months |Guatemala BSC  |GUATEMALA                    |0      |           0|    214|   266|
|6-24 months |Guatemala BSC  |GUATEMALA                    |0      |           1|     22|   266|
|6-24 months |Guatemala BSC  |GUATEMALA                    |1      |           0|     29|   266|
|6-24 months |Guatemala BSC  |GUATEMALA                    |1      |           1|      1|   266|
|6-24 months |JiVitA-4       |BANGLADESH                   |0      |           0|   4072|  5420|
|6-24 months |JiVitA-4       |BANGLADESH                   |0      |           1|   1340|  5420|
|6-24 months |JiVitA-4       |BANGLADESH                   |1      |           0|      7|  5420|
|6-24 months |JiVitA-4       |BANGLADESH                   |1      |           1|      1|  5420|
|6-24 months |MAL-ED         |BANGLADESH                   |0      |           0|    197|   240|
|6-24 months |MAL-ED         |BANGLADESH                   |0      |           1|     43|   240|
|6-24 months |MAL-ED         |BANGLADESH                   |1      |           0|      0|   240|
|6-24 months |MAL-ED         |BANGLADESH                   |1      |           1|      0|   240|
|6-24 months |MAL-ED         |BRAZIL                       |0      |           0|    172|   207|
|6-24 months |MAL-ED         |BRAZIL                       |0      |           1|      5|   207|
|6-24 months |MAL-ED         |BRAZIL                       |1      |           0|     29|   207|
|6-24 months |MAL-ED         |BRAZIL                       |1      |           1|      1|   207|
|6-24 months |MAL-ED         |INDIA                        |0      |           0|    169|   233|
|6-24 months |MAL-ED         |INDIA                        |0      |           1|     64|   233|
|6-24 months |MAL-ED         |INDIA                        |1      |           0|      0|   233|
|6-24 months |MAL-ED         |INDIA                        |1      |           1|      0|   233|
|6-24 months |MAL-ED         |NEPAL                        |0      |           0|    199|   235|
|6-24 months |MAL-ED         |NEPAL                        |0      |           1|     36|   235|
|6-24 months |MAL-ED         |NEPAL                        |1      |           0|      0|   235|
|6-24 months |MAL-ED         |NEPAL                        |1      |           1|      0|   235|
|6-24 months |MAL-ED         |PERU                         |0      |           0|    224|   270|
|6-24 months |MAL-ED         |PERU                         |0      |           1|     14|   270|
|6-24 months |MAL-ED         |PERU                         |1      |           0|     28|   270|
|6-24 months |MAL-ED         |PERU                         |1      |           1|      4|   270|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |0      |           0|    123|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |0      |           1|     21|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |1      |           0|     99|   259|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |1      |           1|     16|   259|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0      |           0|    211|   245|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0      |           1|     26|   245|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |           0|      6|   245|
|6-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |           1|      2|   245|
|6-24 months |PROBIT         |BELARUS                      |0      |           0|  15786| 16598|
|6-24 months |PROBIT         |BELARUS                      |0      |           1|    133| 16598|
|6-24 months |PROBIT         |BELARUS                      |1      |           0|    673| 16598|
|6-24 months |PROBIT         |BELARUS                      |1      |           1|      6| 16598|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0      |           0|   1527|  2003|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0      |           1|    293|  2003|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |           0|    153|  2003|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1      |           1|     30|  2003|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |0      |           0|   9149| 10771|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |0      |           1|    954| 10771|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |1      |           0|    588| 10771|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |1      |           1|     80| 10771|


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
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
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
![](/tmp/4a2b83b6-c0e3-4807-9e3c-30300d97cdd7/afd38cad-4802-4f23-908c-7cf3a76ec412/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4a2b83b6-c0e3-4807-9e3c-30300d97cdd7/afd38cad-4802-4f23-908c-7cf3a76ec412/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4a2b83b6-c0e3-4807-9e3c-30300d97cdd7/afd38cad-4802-4f23-908c-7cf3a76ec412/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4a2b83b6-c0e3-4807-9e3c-30300d97cdd7/afd38cad-4802-4f23-908c-7cf3a76ec412/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |0                  |NA             | 0.2686692| 0.2424572| 0.2948812|
|0-24 months |COHORTS        |GUATEMALA                    |1                  |NA             | 0.1980860| 0.1161472| 0.2800248|
|0-24 months |COHORTS        |PHILIPPINES                  |0                  |NA             | 0.4030226| 0.3847947| 0.4212506|
|0-24 months |COHORTS        |PHILIPPINES                  |1                  |NA             | 0.4604620| 0.3989346| 0.5219894|
|0-24 months |MAL-ED         |BRAZIL                       |0                  |NA             | 0.0761421| 0.0390259| 0.1132584|
|0-24 months |MAL-ED         |BRAZIL                       |1                  |NA             | 0.1388889| 0.0256764| 0.2521013|
|0-24 months |MAL-ED         |PERU                         |0                  |NA             | 0.0783582| 0.0461309| 0.1105855|
|0-24 months |MAL-ED         |PERU                         |1                  |NA             | 0.1764706| 0.0481180| 0.3048232|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0                  |NA             | 0.1973560| 0.1303001| 0.2644119|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1                  |NA             | 0.2376923| 0.1659361| 0.3094486|
|0-24 months |PROBIT         |BELARUS                      |0                  |NA             | 0.2539378| 0.1944224| 0.3134532|
|0-24 months |PROBIT         |BELARUS                      |1                  |NA             | 0.2374138| 0.1819823| 0.2928453|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | 0.2306320| 0.2118565| 0.2494074|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.3391255| 0.2700035| 0.4082476|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0                  |NA             | 0.2351463| 0.2278177| 0.2424750|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | 0.2632977| 0.2308891| 0.2957063|
|0-6 months  |COHORTS        |GUATEMALA                    |0                  |NA             | 0.2101124| 0.1833337| 0.2368910|
|0-6 months  |COHORTS        |GUATEMALA                    |1                  |NA             | 0.1304348| 0.0509292| 0.2099404|
|0-6 months  |COHORTS        |PHILIPPINES                  |0                  |NA             | 0.2310286| 0.2156506| 0.2464065|
|0-6 months  |COHORTS        |PHILIPPINES                  |1                  |NA             | 0.3274857| 0.2391841| 0.4157873|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |0                  |NA             | 0.0971262| 0.0533587| 0.1408938|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |1                  |NA             | 0.1364710| 0.0791757| 0.1937663|
|0-6 months  |PROBIT         |BELARUS                      |0                  |NA             | 0.2490085| 0.1893079| 0.3087090|
|0-6 months  |PROBIT         |BELARUS                      |1                  |NA             | 0.2406348| 0.1867545| 0.2945151|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | 0.1386910| 0.1240751| 0.1533069|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.1347006| 0.0891621| 0.1802390|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |0                  |NA             | 0.1800887| 0.1734216| 0.1867559|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | 0.2030910| 0.1729963| 0.2331858|
|6-24 months |COHORTS        |GUATEMALA                    |0                  |NA             | 0.1299408| 0.1091225| 0.1507590|
|6-24 months |COHORTS        |GUATEMALA                    |1                  |NA             | 0.1324069| 0.0599796| 0.2048342|
|6-24 months |COHORTS        |PHILIPPINES                  |0                  |NA             | 0.2666477| 0.2498822| 0.2834133|
|6-24 months |COHORTS        |PHILIPPINES                  |1                  |NA             | 0.2974647| 0.2042382| 0.3906912|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |0                  |NA             | 0.1442304| 0.0869365| 0.2015243|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |1                  |NA             | 0.1422680| 0.0779764| 0.2065596|
|6-24 months |PROBIT         |BELARUS                      |0                  |NA             | 0.0083548| 0.0044070| 0.0123026|
|6-24 months |PROBIT         |BELARUS                      |1                  |NA             | 0.0088365| 0.0002568| 0.0174162|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | 0.1596607| 0.1428492| 0.1764722|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.1748972| 0.1156814| 0.2341130|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |0                  |NA             | 0.0945702| 0.0888611| 0.1002792|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | 0.1217931| 0.0956253| 0.1479609|


### Parameter: E(Y)


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.2639933| 0.2390117| 0.2889749|
|0-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.4026622| 0.3851243| 0.4202002|
|0-24 months |MAL-ED         |BRAZIL                       |NA                 |NA             | 0.0858369| 0.0497913| 0.1218826|
|0-24 months |MAL-ED         |PERU                         |NA                 |NA             | 0.0894040| 0.0571706| 0.1216374|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.2051282| 0.1602507| 0.2500058|
|0-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.2554148| 0.1971257| 0.3137039|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.2370526| 0.2199455| 0.2541598|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.2364291| 0.2293629| 0.2434953|
|0-6 months  |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.2043796| 0.1788445| 0.2299146|
|0-6 months  |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.2336884| 0.2185531| 0.2488237|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.1121795| 0.0771053| 0.1472536|
|0-6 months  |PROBIT         |BELARUS                      |NA                 |NA             | 0.2500148| 0.1915461| 0.3084835|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1393684| 0.1254369| 0.1532999|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.1806915| 0.1742710| 0.1871119|
|6-24 months |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.1296130| 0.1098539| 0.1493721|
|6-24 months |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.2670270| 0.2505637| 0.2834903|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.1428571| 0.1001583| 0.1855560|
|6-24 months |PROBIT         |BELARUS                      |NA                 |NA             | 0.0083745| 0.0044130| 0.0123360|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1612581| 0.1451483| 0.1773679|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.0959985| 0.0904349| 0.1015621|


### Parameter: RR


|agecat      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |COHORTS        |GUATEMALA                    |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |GUATEMALA                    |1                  |0              | 0.7372859| 0.4820733| 1.127610|
|0-24 months |COHORTS        |PHILIPPINES                  |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS        |PHILIPPINES                  |1                  |0              | 1.1425215| 0.9922143| 1.315598|
|0-24 months |MAL-ED         |BRAZIL                       |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |BRAZIL                       |1                  |0              | 1.8240741| 0.7056101| 4.715418|
|0-24 months |MAL-ED         |PERU                         |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |PERU                         |1                  |0              | 2.2521008| 0.9765802| 5.193591|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1                  |0              | 1.2043838| 0.7650202| 1.896081|
|0-24 months |PROBIT         |BELARUS                      |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROBIT         |BELARUS                      |1                  |0              | 0.9349291| 0.7257307| 1.204431|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |0              | 1.4704185| 1.1807845| 1.831097|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |0              | 1.1197184| 0.9862862| 1.271202|
|0-6 months  |COHORTS        |GUATEMALA                    |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |COHORTS        |GUATEMALA                    |1                  |0              | 0.6207859| 0.3330396| 1.157145|
|0-6 months  |COHORTS        |PHILIPPINES                  |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |COHORTS        |PHILIPPINES                  |1                  |0              | 1.4175118| 1.0737511| 1.871327|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |1                  |0              | 1.4050889| 0.7585517| 2.602690|
|0-6 months  |PROBIT         |BELARUS                      |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |PROBIT         |BELARUS                      |1                  |0              | 0.9663720| 0.7531453| 1.239966|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |0              | 0.9712278| 0.6816010| 1.383923|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |1                  |0              | 1.1277278| 0.9679985| 1.313814|
|6-24 months |COHORTS        |GUATEMALA                    |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|6-24 months |COHORTS        |GUATEMALA                    |1                  |0              | 1.0189791| 0.5763483| 1.801546|
|6-24 months |COHORTS        |PHILIPPINES                  |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|6-24 months |COHORTS        |PHILIPPINES                  |1                  |0              | 1.1155718| 0.8104222| 1.535620|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |1                  |0              | 0.9863938| 0.5402598| 1.800935|
|6-24 months |PROBIT         |BELARUS                      |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|6-24 months |PROBIT         |BELARUS                      |1                  |0              | 1.0576589| 0.4478582| 2.497760|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |0              | 1.0954307| 0.7686178| 1.561203|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |0                  |0              | 1.0000000| 1.0000000| 1.000000|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |1                  |0              | 1.2878595| 1.0303932| 1.609659|


### Parameter: PAR


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |0                  |NA             | -0.0046759| -0.0117310| 0.0023792|
|0-24 months |COHORTS        |PHILIPPINES                  |0                  |NA             | -0.0003604| -0.0036780| 0.0029572|
|0-24 months |MAL-ED         |BRAZIL                       |0                  |NA             |  0.0096948| -0.0089432| 0.0283328|
|0-24 months |MAL-ED         |PERU                         |0                  |NA             |  0.0110458| -0.0042594| 0.0263510|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0                  |NA             |  0.0077722| -0.0417351| 0.0572795|
|0-24 months |PROBIT         |BELARUS                      |0                  |NA             |  0.0014771| -0.0025492| 0.0055033|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             |  0.0064206| -0.0013459| 0.0141872|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0                  |NA             |  0.0012827| -0.0007499| 0.0033154|
|0-6 months  |COHORTS        |GUATEMALA                    |0                  |NA             | -0.0057328| -0.0119082| 0.0004426|
|0-6 months  |COHORTS        |PHILIPPINES                  |0                  |NA             |  0.0026598| -0.0001252| 0.0054449|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |0                  |NA             |  0.0150532| -0.0164152| 0.0465216|
|0-6 months  |PROBIT         |BELARUS                      |0                  |NA             |  0.0010063| -0.0032337| 0.0052464|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             |  0.0006774| -0.0038919| 0.0052467|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |0                  |NA             |  0.0006027| -0.0012579| 0.0024634|
|6-24 months |COHORTS        |GUATEMALA                    |0                  |NA             | -0.0003278| -0.0066388| 0.0059832|
|6-24 months |COHORTS        |PHILIPPINES                  |0                  |NA             |  0.0003793| -0.0024182| 0.0031768|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |0                  |NA             | -0.0013733| -0.0391974| 0.0364508|
|6-24 months |PROBIT         |BELARUS                      |0                  |NA             |  0.0000197| -0.0002915| 0.0003309|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             |  0.0015974| -0.0035530| 0.0067479|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |0                  |NA             |  0.0014283| -0.0001449| 0.0030015|


### Parameter: PAF


|agecat      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |COHORTS        |GUATEMALA                    |0                  |NA             | -0.0177121| -0.0447800| 0.0086545|
|0-24 months |COHORTS        |PHILIPPINES                  |0                  |NA             | -0.0008950| -0.0091637| 0.0073059|
|0-24 months |MAL-ED         |BRAZIL                       |0                  |NA             |  0.1129442| -0.1275143| 0.3021215|
|0-24 months |MAL-ED         |PERU                         |0                  |NA             |  0.1235489| -0.0596047| 0.2750443|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0                  |NA             |  0.0378897| -0.2366865| 0.2515029|
|0-24 months |PROBIT         |BELARUS                      |0                  |NA             |  0.0057830| -0.0105233| 0.0218261|
|0-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             |  0.0270853| -0.0062922| 0.0593557|
|0-24 months |ZVITAMBO       |ZIMBABWE                     |0                  |NA             |  0.0054255| -0.0032085| 0.0139852|
|0-6 months  |COHORTS        |GUATEMALA                    |0                  |NA             | -0.0280498| -0.0586145| 0.0016325|
|0-6 months  |COHORTS        |PHILIPPINES                  |0                  |NA             |  0.0113820| -0.0006278| 0.0232477|
|0-6 months  |MAL-ED         |SOUTH AFRICA                 |0                  |NA             |  0.1341889| -0.1934202| 0.3718651|
|0-6 months  |PROBIT         |BELARUS                      |0                  |NA             |  0.0040251| -0.0133503| 0.0211026|
|0-6 months  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             |  0.0048605| -0.0284698| 0.0371105|
|0-6 months  |ZVITAMBO       |ZIMBABWE                     |0                  |NA             |  0.0033357| -0.0070148| 0.0135798|
|6-24 months |COHORTS        |GUATEMALA                    |0                  |NA             | -0.0025290| -0.0524181| 0.0449952|
|6-24 months |COHORTS        |PHILIPPINES                  |0                  |NA             |  0.0014204| -0.0091138| 0.0118447|
|6-24 months |MAL-ED         |SOUTH AFRICA                 |0                  |NA             | -0.0096129| -0.3123309| 0.2232765|
|6-24 months |PROBIT         |BELARUS                      |0                  |NA             |  0.0023532| -0.0354342| 0.0387615|
|6-24 months |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             |  0.0099060| -0.0225486| 0.0413305|
|6-24 months |ZVITAMBO       |ZIMBABWE                     |0                  |NA             |  0.0148787| -0.0016274| 0.0311128|
