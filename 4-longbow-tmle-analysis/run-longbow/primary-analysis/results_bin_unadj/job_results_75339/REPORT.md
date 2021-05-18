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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** fage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid       |country      |fage    | stunted| n_cell|     n|
|:---------|:-------------|:------------|:-------|-------:|------:|-----:|
|Birth     |COHORTS       |GUATEMALA    |>=38    |       0|    226|   833|
|Birth     |COHORTS       |GUATEMALA    |>=38    |       1|     20|   833|
|Birth     |COHORTS       |GUATEMALA    |[32-38) |       0|    199|   833|
|Birth     |COHORTS       |GUATEMALA    |[32-38) |       1|      6|   833|
|Birth     |COHORTS       |GUATEMALA    |<32     |       0|    362|   833|
|Birth     |COHORTS       |GUATEMALA    |<32     |       1|     20|   833|
|Birth     |COHORTS       |PHILIPPINES  |>=38    |       0|    380|  2931|
|Birth     |COHORTS       |PHILIPPINES  |>=38    |       1|     30|  2931|
|Birth     |COHORTS       |PHILIPPINES  |[32-38) |       0|    501|  2931|
|Birth     |COHORTS       |PHILIPPINES  |[32-38) |       1|     33|  2931|
|Birth     |COHORTS       |PHILIPPINES  |<32     |       0|   1871|  2931|
|Birth     |COHORTS       |PHILIPPINES  |<32     |       1|    116|  2931|
|Birth     |MAL-ED        |INDIA        |>=38    |       0|     11|    32|
|Birth     |MAL-ED        |INDIA        |>=38    |       1|      3|    32|
|Birth     |MAL-ED        |INDIA        |[32-38) |       0|      6|    32|
|Birth     |MAL-ED        |INDIA        |[32-38) |       1|      2|    32|
|Birth     |MAL-ED        |INDIA        |<32     |       0|      9|    32|
|Birth     |MAL-ED        |INDIA        |<32     |       1|      1|    32|
|Birth     |MAL-ED        |BANGLADESH   |>=38    |       0|     60|   116|
|Birth     |MAL-ED        |BANGLADESH   |>=38    |       1|     16|   116|
|Birth     |MAL-ED        |BANGLADESH   |[32-38) |       0|     20|   116|
|Birth     |MAL-ED        |BANGLADESH   |[32-38) |       1|      4|   116|
|Birth     |MAL-ED        |BANGLADESH   |<32     |       0|     14|   116|
|Birth     |MAL-ED        |BANGLADESH   |<32     |       1|      2|   116|
|Birth     |MAL-ED        |PERU         |>=38    |       0|     33|    82|
|Birth     |MAL-ED        |PERU         |>=38    |       1|      3|    82|
|Birth     |MAL-ED        |PERU         |[32-38) |       0|     19|    82|
|Birth     |MAL-ED        |PERU         |[32-38) |       1|      0|    82|
|Birth     |MAL-ED        |PERU         |<32     |       0|     24|    82|
|Birth     |MAL-ED        |PERU         |<32     |       1|      3|    82|
|Birth     |MAL-ED        |NEPAL        |>=38    |       0|      4|    10|
|Birth     |MAL-ED        |NEPAL        |>=38    |       1|      0|    10|
|Birth     |MAL-ED        |NEPAL        |[32-38) |       0|      4|    10|
|Birth     |MAL-ED        |NEPAL        |[32-38) |       1|      0|    10|
|Birth     |MAL-ED        |NEPAL        |<32     |       0|      2|    10|
|Birth     |MAL-ED        |NEPAL        |<32     |       1|      0|    10|
|Birth     |MAL-ED        |BRAZIL       |>=38    |       0|      4|    17|
|Birth     |MAL-ED        |BRAZIL       |>=38    |       1|      3|    17|
|Birth     |MAL-ED        |BRAZIL       |[32-38) |       0|      5|    17|
|Birth     |MAL-ED        |BRAZIL       |[32-38) |       1|      0|    17|
|Birth     |MAL-ED        |BRAZIL       |<32     |       0|      3|    17|
|Birth     |MAL-ED        |BRAZIL       |<32     |       1|      2|    17|
|Birth     |MAL-ED        |TANZANIA     |>=38    |       0|     18|    45|
|Birth     |MAL-ED        |TANZANIA     |>=38    |       1|      3|    45|
|Birth     |MAL-ED        |TANZANIA     |[32-38) |       0|     13|    45|
|Birth     |MAL-ED        |TANZANIA     |[32-38) |       1|      1|    45|
|Birth     |MAL-ED        |TANZANIA     |<32     |       0|      8|    45|
|Birth     |MAL-ED        |TANZANIA     |<32     |       1|      2|    45|
|Birth     |MAL-ED        |SOUTH AFRICA |>=38    |       0|     26|    46|
|Birth     |MAL-ED        |SOUTH AFRICA |>=38    |       1|      3|    46|
|Birth     |MAL-ED        |SOUTH AFRICA |[32-38) |       0|      8|    46|
|Birth     |MAL-ED        |SOUTH AFRICA |[32-38) |       1|      4|    46|
|Birth     |MAL-ED        |SOUTH AFRICA |<32     |       0|      5|    46|
|Birth     |MAL-ED        |SOUTH AFRICA |<32     |       1|      0|    46|
|Birth     |PROBIT        |BELARUS      |>=38    |       0|    654| 13390|
|Birth     |PROBIT        |BELARUS      |>=38    |       1|      3| 13390|
|Birth     |PROBIT        |BELARUS      |[32-38) |       0|   2081| 13390|
|Birth     |PROBIT        |BELARUS      |[32-38) |       1|      2| 13390|
|Birth     |PROBIT        |BELARUS      |<32     |       0|  10622| 13390|
|Birth     |PROBIT        |BELARUS      |<32     |       1|     28| 13390|
|Birth     |SAS-CompFeed  |INDIA        |>=38    |       0|     33|  1252|
|Birth     |SAS-CompFeed  |INDIA        |>=38    |       1|     22|  1252|
|Birth     |SAS-CompFeed  |INDIA        |[32-38) |       0|    119|  1252|
|Birth     |SAS-CompFeed  |INDIA        |[32-38) |       1|     46|  1252|
|Birth     |SAS-CompFeed  |INDIA        |<32     |       0|    751|  1252|
|Birth     |SAS-CompFeed  |INDIA        |<32     |       1|    281|  1252|
|6 months  |COHORTS       |GUATEMALA    |>=38    |       0|    158|   936|
|6 months  |COHORTS       |GUATEMALA    |>=38    |       1|    116|   936|
|6 months  |COHORTS       |GUATEMALA    |[32-38) |       0|    146|   936|
|6 months  |COHORTS       |GUATEMALA    |[32-38) |       1|     91|   936|
|6 months  |COHORTS       |GUATEMALA    |<32     |       0|    253|   936|
|6 months  |COHORTS       |GUATEMALA    |<32     |       1|    172|   936|
|6 months  |COHORTS       |PHILIPPINES  |>=38    |       0|    271|  2603|
|6 months  |COHORTS       |PHILIPPINES  |>=38    |       1|     85|  2603|
|6 months  |COHORTS       |PHILIPPINES  |[32-38) |       0|    360|  2603|
|6 months  |COHORTS       |PHILIPPINES  |[32-38) |       1|    112|  2603|
|6 months  |COHORTS       |PHILIPPINES  |<32     |       0|   1413|  2603|
|6 months  |COHORTS       |PHILIPPINES  |<32     |       1|    362|  2603|
|6 months  |LCNI-5        |MALAWI       |>=38    |       0|     15|    50|
|6 months  |LCNI-5        |MALAWI       |>=38    |       1|      4|    50|
|6 months  |LCNI-5        |MALAWI       |[32-38) |       0|      5|    50|
|6 months  |LCNI-5        |MALAWI       |[32-38) |       1|      3|    50|
|6 months  |LCNI-5        |MALAWI       |<32     |       0|     13|    50|
|6 months  |LCNI-5        |MALAWI       |<32     |       1|     10|    50|
|6 months  |MAL-ED        |INDIA        |>=38    |       0|     45|   154|
|6 months  |MAL-ED        |INDIA        |>=38    |       1|     14|   154|
|6 months  |MAL-ED        |INDIA        |[32-38) |       0|     43|   154|
|6 months  |MAL-ED        |INDIA        |[32-38) |       1|      8|   154|
|6 months  |MAL-ED        |INDIA        |<32     |       0|     35|   154|
|6 months  |MAL-ED        |INDIA        |<32     |       1|      9|   154|
|6 months  |MAL-ED        |BANGLADESH   |>=38    |       0|     67|   122|
|6 months  |MAL-ED        |BANGLADESH   |>=38    |       1|      9|   122|
|6 months  |MAL-ED        |BANGLADESH   |[32-38) |       0|     23|   122|
|6 months  |MAL-ED        |BANGLADESH   |[32-38) |       1|      7|   122|
|6 months  |MAL-ED        |BANGLADESH   |<32     |       0|     14|   122|
|6 months  |MAL-ED        |BANGLADESH   |<32     |       1|      2|   122|
|6 months  |MAL-ED        |PERU         |>=38    |       0|     34|    97|
|6 months  |MAL-ED        |PERU         |>=38    |       1|      7|    97|
|6 months  |MAL-ED        |PERU         |[32-38) |       0|     21|    97|
|6 months  |MAL-ED        |PERU         |[32-38) |       1|      6|    97|
|6 months  |MAL-ED        |PERU         |<32     |       0|     25|    97|
|6 months  |MAL-ED        |PERU         |<32     |       1|      4|    97|
|6 months  |MAL-ED        |NEPAL        |>=38    |       0|     35|    85|
|6 months  |MAL-ED        |NEPAL        |>=38    |       1|      2|    85|
|6 months  |MAL-ED        |NEPAL        |[32-38) |       0|     30|    85|
|6 months  |MAL-ED        |NEPAL        |[32-38) |       1|      1|    85|
|6 months  |MAL-ED        |NEPAL        |<32     |       0|     16|    85|
|6 months  |MAL-ED        |NEPAL        |<32     |       1|      1|    85|
|6 months  |MAL-ED        |BRAZIL       |>=38    |       0|     34|    64|
|6 months  |MAL-ED        |BRAZIL       |>=38    |       1|      0|    64|
|6 months  |MAL-ED        |BRAZIL       |[32-38) |       0|     14|    64|
|6 months  |MAL-ED        |BRAZIL       |[32-38) |       1|      0|    64|
|6 months  |MAL-ED        |BRAZIL       |<32     |       0|     15|    64|
|6 months  |MAL-ED        |BRAZIL       |<32     |       1|      1|    64|
|6 months  |MAL-ED        |TANZANIA     |>=38    |       0|     36|    94|
|6 months  |MAL-ED        |TANZANIA     |>=38    |       1|     14|    94|
|6 months  |MAL-ED        |TANZANIA     |[32-38) |       0|     22|    94|
|6 months  |MAL-ED        |TANZANIA     |[32-38) |       1|      4|    94|
|6 months  |MAL-ED        |TANZANIA     |<32     |       0|     16|    94|
|6 months  |MAL-ED        |TANZANIA     |<32     |       1|      2|    94|
|6 months  |MAL-ED        |SOUTH AFRICA |>=38    |       0|     58|   103|
|6 months  |MAL-ED        |SOUTH AFRICA |>=38    |       1|     14|   103|
|6 months  |MAL-ED        |SOUTH AFRICA |[32-38) |       0|     17|   103|
|6 months  |MAL-ED        |SOUTH AFRICA |[32-38) |       1|      7|   103|
|6 months  |MAL-ED        |SOUTH AFRICA |<32     |       0|      5|   103|
|6 months  |MAL-ED        |SOUTH AFRICA |<32     |       1|      2|   103|
|6 months  |PROBIT        |BELARUS      |>=38    |       0|    695| 15175|
|6 months  |PROBIT        |BELARUS      |>=38    |       1|     31| 15175|
|6 months  |PROBIT        |BELARUS      |[32-38) |       0|   2278| 15175|
|6 months  |PROBIT        |BELARUS      |[32-38) |       1|     91| 15175|
|6 months  |PROBIT        |BELARUS      |<32     |       0|  11606| 15175|
|6 months  |PROBIT        |BELARUS      |<32     |       1|    474| 15175|
|6 months  |SAS-CompFeed  |INDIA        |>=38    |       0|     43|  1336|
|6 months  |SAS-CompFeed  |INDIA        |>=38    |       1|     14|  1336|
|6 months  |SAS-CompFeed  |INDIA        |[32-38) |       0|    134|  1336|
|6 months  |SAS-CompFeed  |INDIA        |[32-38) |       1|     47|  1336|
|6 months  |SAS-CompFeed  |INDIA        |<32     |       0|    779|  1336|
|6 months  |SAS-CompFeed  |INDIA        |<32     |       1|    319|  1336|
|6 months  |SAS-FoodSuppl |INDIA        |>=38    |       0|     35|   380|
|6 months  |SAS-FoodSuppl |INDIA        |>=38    |       1|     31|   380|
|6 months  |SAS-FoodSuppl |INDIA        |[32-38) |       0|     51|   380|
|6 months  |SAS-FoodSuppl |INDIA        |[32-38) |       1|     37|   380|
|6 months  |SAS-FoodSuppl |INDIA        |<32     |       0|    131|   380|
|6 months  |SAS-FoodSuppl |INDIA        |<32     |       1|     95|   380|
|24 months |COHORTS       |GUATEMALA    |>=38    |       0|     57|  1040|
|24 months |COHORTS       |GUATEMALA    |>=38    |       1|    262|  1040|
|24 months |COHORTS       |GUATEMALA    |[32-38) |       0|     45|  1040|
|24 months |COHORTS       |GUATEMALA    |[32-38) |       1|    208|  1040|
|24 months |COHORTS       |GUATEMALA    |<32     |       0|     93|  1040|
|24 months |COHORTS       |GUATEMALA    |<32     |       1|    375|  1040|
|24 months |COHORTS       |PHILIPPINES  |>=38    |       0|    122|  2351|
|24 months |COHORTS       |PHILIPPINES  |>=38    |       1|    203|  2351|
|24 months |COHORTS       |PHILIPPINES  |[32-38) |       0|    168|  2351|
|24 months |COHORTS       |PHILIPPINES  |[32-38) |       1|    258|  2351|
|24 months |COHORTS       |PHILIPPINES  |<32     |       0|    594|  2351|
|24 months |COHORTS       |PHILIPPINES  |<32     |       1|   1006|  2351|
|24 months |LCNI-5        |MALAWI       |>=38    |       0|      7|    36|
|24 months |LCNI-5        |MALAWI       |>=38    |       1|      5|    36|
|24 months |LCNI-5        |MALAWI       |[32-38) |       0|      3|    36|
|24 months |LCNI-5        |MALAWI       |[32-38) |       1|      3|    36|
|24 months |LCNI-5        |MALAWI       |<32     |       0|      9|    36|
|24 months |LCNI-5        |MALAWI       |<32     |       1|      9|    36|
|24 months |MAL-ED        |INDIA        |>=38    |       0|     30|   147|
|24 months |MAL-ED        |INDIA        |>=38    |       1|     26|   147|
|24 months |MAL-ED        |INDIA        |[32-38) |       0|     20|   147|
|24 months |MAL-ED        |INDIA        |[32-38) |       1|     28|   147|
|24 months |MAL-ED        |INDIA        |<32     |       0|     31|   147|
|24 months |MAL-ED        |INDIA        |<32     |       1|     12|   147|
|24 months |MAL-ED        |BANGLADESH   |>=38    |       0|     38|   106|
|24 months |MAL-ED        |BANGLADESH   |>=38    |       1|     30|   106|
|24 months |MAL-ED        |BANGLADESH   |[32-38) |       0|     14|   106|
|24 months |MAL-ED        |BANGLADESH   |[32-38) |       1|      9|   106|
|24 months |MAL-ED        |BANGLADESH   |<32     |       0|      9|   106|
|24 months |MAL-ED        |BANGLADESH   |<32     |       1|      6|   106|
|24 months |MAL-ED        |PERU         |>=38    |       0|     19|    70|
|24 months |MAL-ED        |PERU         |>=38    |       1|     11|    70|
|24 months |MAL-ED        |PERU         |[32-38) |       0|     13|    70|
|24 months |MAL-ED        |PERU         |[32-38) |       1|      6|    70|
|24 months |MAL-ED        |PERU         |<32     |       0|     16|    70|
|24 months |MAL-ED        |PERU         |<32     |       1|      5|    70|
|24 months |MAL-ED        |NEPAL        |>=38    |       0|     29|    81|
|24 months |MAL-ED        |NEPAL        |>=38    |       1|      6|    81|
|24 months |MAL-ED        |NEPAL        |[32-38) |       0|     20|    81|
|24 months |MAL-ED        |NEPAL        |[32-38) |       1|     10|    81|
|24 months |MAL-ED        |NEPAL        |<32     |       0|     12|    81|
|24 months |MAL-ED        |NEPAL        |<32     |       1|      4|    81|
|24 months |MAL-ED        |BRAZIL       |>=38    |       0|     28|    51|
|24 months |MAL-ED        |BRAZIL       |>=38    |       1|      1|    51|
|24 months |MAL-ED        |BRAZIL       |[32-38) |       0|      8|    51|
|24 months |MAL-ED        |BRAZIL       |[32-38) |       1|      0|    51|
|24 months |MAL-ED        |BRAZIL       |<32     |       0|     13|    51|
|24 months |MAL-ED        |BRAZIL       |<32     |       1|      1|    51|
|24 months |MAL-ED        |TANZANIA     |>=38    |       0|     14|    83|
|24 months |MAL-ED        |TANZANIA     |>=38    |       1|     32|    83|
|24 months |MAL-ED        |TANZANIA     |[32-38) |       0|      4|    83|
|24 months |MAL-ED        |TANZANIA     |[32-38) |       1|     16|    83|
|24 months |MAL-ED        |TANZANIA     |<32     |       0|      5|    83|
|24 months |MAL-ED        |TANZANIA     |<32     |       1|     12|    83|
|24 months |MAL-ED        |SOUTH AFRICA |>=38    |       0|     41|    96|
|24 months |MAL-ED        |SOUTH AFRICA |>=38    |       1|     25|    96|
|24 months |MAL-ED        |SOUTH AFRICA |[32-38) |       0|     17|    96|
|24 months |MAL-ED        |SOUTH AFRICA |[32-38) |       1|      6|    96|
|24 months |MAL-ED        |SOUTH AFRICA |<32     |       0|      3|    96|
|24 months |MAL-ED        |SOUTH AFRICA |<32     |       1|      4|    96|
|24 months |PROBIT        |BELARUS      |>=38    |       0|    170|  3883|
|24 months |PROBIT        |BELARUS      |>=38    |       1|     14|  3883|
|24 months |PROBIT        |BELARUS      |[32-38) |       0|    567|  3883|
|24 months |PROBIT        |BELARUS      |[32-38) |       1|     33|  3883|
|24 months |PROBIT        |BELARUS      |<32     |       0|   2884|  3883|
|24 months |PROBIT        |BELARUS      |<32     |       1|    215|  3883|


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


