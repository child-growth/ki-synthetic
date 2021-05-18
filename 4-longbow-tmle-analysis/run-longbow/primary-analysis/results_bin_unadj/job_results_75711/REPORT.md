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

**Outcome Variable:** pers_wast

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

|agecat      |studyid       |country      |fage    | pers_wast| n_cell|     n|
|:-----------|:-------------|:------------|:-------|---------:|------:|-----:|
|0-24 months |COHORTS       |GUATEMALA    |>=38    |         0|    298|  1032|
|0-24 months |COHORTS       |GUATEMALA    |>=38    |         1|      7|  1032|
|0-24 months |COHORTS       |GUATEMALA    |[32-38) |         0|    246|  1032|
|0-24 months |COHORTS       |GUATEMALA    |[32-38) |         1|     11|  1032|
|0-24 months |COHORTS       |GUATEMALA    |<32     |         0|    452|  1032|
|0-24 months |COHORTS       |GUATEMALA    |<32     |         1|     18|  1032|
|0-24 months |COHORTS       |PHILIPPINES  |>=38    |         0|    349|  2702|
|0-24 months |COHORTS       |PHILIPPINES  |>=38    |         1|     22|  2702|
|0-24 months |COHORTS       |PHILIPPINES  |[32-38) |         0|    462|  2702|
|0-24 months |COHORTS       |PHILIPPINES  |[32-38) |         1|     24|  2702|
|0-24 months |COHORTS       |PHILIPPINES  |<32     |         0|   1753|  2702|
|0-24 months |COHORTS       |PHILIPPINES  |<32     |         1|     92|  2702|
|0-24 months |LCNI-5        |MALAWI       |>=38    |         0|     18|    44|
|0-24 months |LCNI-5        |MALAWI       |>=38    |         1|      0|    44|
|0-24 months |LCNI-5        |MALAWI       |[32-38) |         0|      6|    44|
|0-24 months |LCNI-5        |MALAWI       |[32-38) |         1|      0|    44|
|0-24 months |LCNI-5        |MALAWI       |<32     |         0|     20|    44|
|0-24 months |LCNI-5        |MALAWI       |<32     |         1|      0|    44|
|0-24 months |MAL-ED        |INDIA        |>=38    |         0|     56|   155|
|0-24 months |MAL-ED        |INDIA        |>=38    |         1|      3|   155|
|0-24 months |MAL-ED        |INDIA        |[32-38) |         0|     45|   155|
|0-24 months |MAL-ED        |INDIA        |[32-38) |         1|      6|   155|
|0-24 months |MAL-ED        |INDIA        |<32     |         0|     40|   155|
|0-24 months |MAL-ED        |INDIA        |<32     |         1|      5|   155|
|0-24 months |MAL-ED        |BANGLADESH   |>=38    |         0|     76|   126|
|0-24 months |MAL-ED        |BANGLADESH   |>=38    |         1|      3|   126|
|0-24 months |MAL-ED        |BANGLADESH   |[32-38) |         0|     28|   126|
|0-24 months |MAL-ED        |BANGLADESH   |[32-38) |         1|      2|   126|
|0-24 months |MAL-ED        |BANGLADESH   |<32     |         0|     15|   126|
|0-24 months |MAL-ED        |BANGLADESH   |<32     |         1|      2|   126|
|0-24 months |MAL-ED        |PERU         |>=38    |         0|     42|   101|
|0-24 months |MAL-ED        |PERU         |>=38    |         1|      1|   101|
|0-24 months |MAL-ED        |PERU         |[32-38) |         0|     27|   101|
|0-24 months |MAL-ED        |PERU         |[32-38) |         1|      0|   101|
|0-24 months |MAL-ED        |PERU         |<32     |         0|     31|   101|
|0-24 months |MAL-ED        |PERU         |<32     |         1|      0|   101|
|0-24 months |MAL-ED        |NEPAL        |>=38    |         0|     38|    86|
|0-24 months |MAL-ED        |NEPAL        |>=38    |         1|      0|    86|
|0-24 months |MAL-ED        |NEPAL        |[32-38) |         0|     31|    86|
|0-24 months |MAL-ED        |NEPAL        |[32-38) |         1|      0|    86|
|0-24 months |MAL-ED        |NEPAL        |<32     |         0|     16|    86|
|0-24 months |MAL-ED        |NEPAL        |<32     |         1|      1|    86|
|0-24 months |MAL-ED        |BRAZIL       |>=38    |         0|     34|    66|
|0-24 months |MAL-ED        |BRAZIL       |>=38    |         1|      0|    66|
|0-24 months |MAL-ED        |BRAZIL       |[32-38) |         0|     13|    66|
|0-24 months |MAL-ED        |BRAZIL       |[32-38) |         1|      2|    66|
|0-24 months |MAL-ED        |BRAZIL       |<32     |         0|     17|    66|
|0-24 months |MAL-ED        |BRAZIL       |<32     |         1|      0|    66|
|0-24 months |MAL-ED        |TANZANIA     |>=38    |         0|     51|    95|
|0-24 months |MAL-ED        |TANZANIA     |>=38    |         1|      0|    95|
|0-24 months |MAL-ED        |TANZANIA     |[32-38) |         0|     26|    95|
|0-24 months |MAL-ED        |TANZANIA     |[32-38) |         1|      0|    95|
|0-24 months |MAL-ED        |TANZANIA     |<32     |         0|     18|    95|
|0-24 months |MAL-ED        |TANZANIA     |<32     |         1|      0|    95|
|0-24 months |MAL-ED        |SOUTH AFRICA |>=38    |         0|     75|   109|
|0-24 months |MAL-ED        |SOUTH AFRICA |>=38    |         1|      0|   109|
|0-24 months |MAL-ED        |SOUTH AFRICA |[32-38) |         0|     26|   109|
|0-24 months |MAL-ED        |SOUTH AFRICA |[32-38) |         1|      0|   109|
|0-24 months |MAL-ED        |SOUTH AFRICA |<32     |         0|      8|   109|
|0-24 months |MAL-ED        |SOUTH AFRICA |<32     |         1|      0|   109|
|0-24 months |PROBIT        |BELARUS      |>=38    |         0|    759| 15970|
|0-24 months |PROBIT        |BELARUS      |>=38    |         1|      5| 15970|
|0-24 months |PROBIT        |BELARUS      |[32-38) |         0|   2475| 15970|
|0-24 months |PROBIT        |BELARUS      |[32-38) |         1|     24| 15970|
|0-24 months |PROBIT        |BELARUS      |<32     |         0|  12610| 15970|
|0-24 months |PROBIT        |BELARUS      |<32     |         1|     97| 15970|
|0-24 months |SAS-CompFeed  |INDIA        |>=38    |         0|     51|  1366|
|0-24 months |SAS-CompFeed  |INDIA        |>=38    |         1|      5|  1366|
|0-24 months |SAS-CompFeed  |INDIA        |[32-38) |         0|    166|  1366|
|0-24 months |SAS-CompFeed  |INDIA        |[32-38) |         1|     12|  1366|
|0-24 months |SAS-CompFeed  |INDIA        |<32     |         0|   1035|  1366|
|0-24 months |SAS-CompFeed  |INDIA        |<32     |         1|     97|  1366|
|0-24 months |SAS-FoodSuppl |INDIA        |>=38    |         0|     57|   375|
|0-24 months |SAS-FoodSuppl |INDIA        |>=38    |         1|     11|   375|
|0-24 months |SAS-FoodSuppl |INDIA        |[32-38) |         0|     71|   375|
|0-24 months |SAS-FoodSuppl |INDIA        |[32-38) |         1|     18|   375|
|0-24 months |SAS-FoodSuppl |INDIA        |<32     |         0|    182|   375|
|0-24 months |SAS-FoodSuppl |INDIA        |<32     |         1|     36|   375|
|0-6 months  |COHORTS       |PHILIPPINES  |>=38    |         0|     85|   820|
|0-6 months  |COHORTS       |PHILIPPINES  |>=38    |         1|     10|   820|
|0-6 months  |COHORTS       |PHILIPPINES  |[32-38) |         0|    141|   820|
|0-6 months  |COHORTS       |PHILIPPINES  |[32-38) |         1|     13|   820|
|0-6 months  |COHORTS       |PHILIPPINES  |<32     |         0|    543|   820|
|0-6 months  |COHORTS       |PHILIPPINES  |<32     |         1|     28|   820|
|0-6 months  |MAL-ED        |INDIA        |>=38    |         0|     57|   155|
|0-6 months  |MAL-ED        |INDIA        |>=38    |         1|      2|   155|
|0-6 months  |MAL-ED        |INDIA        |[32-38) |         0|     47|   155|
|0-6 months  |MAL-ED        |INDIA        |[32-38) |         1|      4|   155|
|0-6 months  |MAL-ED        |INDIA        |<32     |         0|     42|   155|
|0-6 months  |MAL-ED        |INDIA        |<32     |         1|      3|   155|
|0-6 months  |MAL-ED        |BANGLADESH   |>=38    |         0|     75|   126|
|0-6 months  |MAL-ED        |BANGLADESH   |>=38    |         1|      4|   126|
|0-6 months  |MAL-ED        |BANGLADESH   |[32-38) |         0|     29|   126|
|0-6 months  |MAL-ED        |BANGLADESH   |[32-38) |         1|      1|   126|
|0-6 months  |MAL-ED        |BANGLADESH   |<32     |         0|     17|   126|
|0-6 months  |MAL-ED        |BANGLADESH   |<32     |         1|      0|   126|
|0-6 months  |MAL-ED        |PERU         |>=38    |         0|     43|   101|
|0-6 months  |MAL-ED        |PERU         |>=38    |         1|      0|   101|
|0-6 months  |MAL-ED        |PERU         |[32-38) |         0|     27|   101|
|0-6 months  |MAL-ED        |PERU         |[32-38) |         1|      0|   101|
|0-6 months  |MAL-ED        |PERU         |<32     |         0|     31|   101|
|0-6 months  |MAL-ED        |PERU         |<32     |         1|      0|   101|
|0-6 months  |MAL-ED        |NEPAL        |>=38    |         0|     38|    86|
|0-6 months  |MAL-ED        |NEPAL        |>=38    |         1|      0|    86|
|0-6 months  |MAL-ED        |NEPAL        |[32-38) |         0|     31|    86|
|0-6 months  |MAL-ED        |NEPAL        |[32-38) |         1|      0|    86|
|0-6 months  |MAL-ED        |NEPAL        |<32     |         0|     16|    86|
|0-6 months  |MAL-ED        |NEPAL        |<32     |         1|      1|    86|
|0-6 months  |MAL-ED        |BRAZIL       |>=38    |         0|     34|    66|
|0-6 months  |MAL-ED        |BRAZIL       |>=38    |         1|      0|    66|
|0-6 months  |MAL-ED        |BRAZIL       |[32-38) |         0|     14|    66|
|0-6 months  |MAL-ED        |BRAZIL       |[32-38) |         1|      1|    66|
|0-6 months  |MAL-ED        |BRAZIL       |<32     |         0|     17|    66|
|0-6 months  |MAL-ED        |BRAZIL       |<32     |         1|      0|    66|
|0-6 months  |MAL-ED        |TANZANIA     |>=38    |         0|     51|    95|
|0-6 months  |MAL-ED        |TANZANIA     |>=38    |         1|      0|    95|
|0-6 months  |MAL-ED        |TANZANIA     |[32-38) |         0|     26|    95|
|0-6 months  |MAL-ED        |TANZANIA     |[32-38) |         1|      0|    95|
|0-6 months  |MAL-ED        |TANZANIA     |<32     |         0|     18|    95|
|0-6 months  |MAL-ED        |TANZANIA     |<32     |         1|      0|    95|
|0-6 months  |MAL-ED        |SOUTH AFRICA |>=38    |         0|     75|   108|
|0-6 months  |MAL-ED        |SOUTH AFRICA |>=38    |         1|      0|   108|
|0-6 months  |MAL-ED        |SOUTH AFRICA |[32-38) |         0|     25|   108|
|0-6 months  |MAL-ED        |SOUTH AFRICA |[32-38) |         1|      0|   108|
|0-6 months  |MAL-ED        |SOUTH AFRICA |<32     |         0|      8|   108|
|0-6 months  |MAL-ED        |SOUTH AFRICA |<32     |         1|      0|   108|
|0-6 months  |PROBIT        |BELARUS      |>=38    |         0|    595| 13043|
|0-6 months  |PROBIT        |BELARUS      |>=38    |         1|     50| 13043|
|0-6 months  |PROBIT        |BELARUS      |[32-38) |         0|   1866| 13043|
|0-6 months  |PROBIT        |BELARUS      |[32-38) |         1|    155| 13043|
|0-6 months  |PROBIT        |BELARUS      |<32     |         0|   9526| 13043|
|0-6 months  |PROBIT        |BELARUS      |<32     |         1|    851| 13043|
|6-24 months |COHORTS       |GUATEMALA    |>=38    |         0|    298|  1032|
|6-24 months |COHORTS       |GUATEMALA    |>=38    |         1|      7|  1032|
|6-24 months |COHORTS       |GUATEMALA    |[32-38) |         0|    246|  1032|
|6-24 months |COHORTS       |GUATEMALA    |[32-38) |         1|     11|  1032|
|6-24 months |COHORTS       |GUATEMALA    |<32     |         0|    452|  1032|
|6-24 months |COHORTS       |GUATEMALA    |<32     |         1|     18|  1032|
|6-24 months |COHORTS       |PHILIPPINES  |>=38    |         0|    349|  2702|
|6-24 months |COHORTS       |PHILIPPINES  |>=38    |         1|     22|  2702|
|6-24 months |COHORTS       |PHILIPPINES  |[32-38) |         0|    462|  2702|
|6-24 months |COHORTS       |PHILIPPINES  |[32-38) |         1|     24|  2702|
|6-24 months |COHORTS       |PHILIPPINES  |<32     |         0|   1753|  2702|
|6-24 months |COHORTS       |PHILIPPINES  |<32     |         1|     92|  2702|
|6-24 months |LCNI-5        |MALAWI       |>=38    |         0|     18|    44|
|6-24 months |LCNI-5        |MALAWI       |>=38    |         1|      0|    44|
|6-24 months |LCNI-5        |MALAWI       |[32-38) |         0|      6|    44|
|6-24 months |LCNI-5        |MALAWI       |[32-38) |         1|      0|    44|
|6-24 months |LCNI-5        |MALAWI       |<32     |         0|     20|    44|
|6-24 months |LCNI-5        |MALAWI       |<32     |         1|      0|    44|
|6-24 months |MAL-ED        |INDIA        |>=38    |         0|     56|   155|
|6-24 months |MAL-ED        |INDIA        |>=38    |         1|      3|   155|
|6-24 months |MAL-ED        |INDIA        |[32-38) |         0|     45|   155|
|6-24 months |MAL-ED        |INDIA        |[32-38) |         1|      6|   155|
|6-24 months |MAL-ED        |INDIA        |<32     |         0|     40|   155|
|6-24 months |MAL-ED        |INDIA        |<32     |         1|      5|   155|
|6-24 months |MAL-ED        |BANGLADESH   |>=38    |         0|     76|   126|
|6-24 months |MAL-ED        |BANGLADESH   |>=38    |         1|      3|   126|
|6-24 months |MAL-ED        |BANGLADESH   |[32-38) |         0|     28|   126|
|6-24 months |MAL-ED        |BANGLADESH   |[32-38) |         1|      2|   126|
|6-24 months |MAL-ED        |BANGLADESH   |<32     |         0|     15|   126|
|6-24 months |MAL-ED        |BANGLADESH   |<32     |         1|      2|   126|
|6-24 months |MAL-ED        |PERU         |>=38    |         0|     42|   101|
|6-24 months |MAL-ED        |PERU         |>=38    |         1|      1|   101|
|6-24 months |MAL-ED        |PERU         |[32-38) |         0|     27|   101|
|6-24 months |MAL-ED        |PERU         |[32-38) |         1|      0|   101|
|6-24 months |MAL-ED        |PERU         |<32     |         0|     31|   101|
|6-24 months |MAL-ED        |PERU         |<32     |         1|      0|   101|
|6-24 months |MAL-ED        |NEPAL        |>=38    |         0|     38|    86|
|6-24 months |MAL-ED        |NEPAL        |>=38    |         1|      0|    86|
|6-24 months |MAL-ED        |NEPAL        |[32-38) |         0|     31|    86|
|6-24 months |MAL-ED        |NEPAL        |[32-38) |         1|      0|    86|
|6-24 months |MAL-ED        |NEPAL        |<32     |         0|     16|    86|
|6-24 months |MAL-ED        |NEPAL        |<32     |         1|      1|    86|
|6-24 months |MAL-ED        |BRAZIL       |>=38    |         0|     34|    66|
|6-24 months |MAL-ED        |BRAZIL       |>=38    |         1|      0|    66|
|6-24 months |MAL-ED        |BRAZIL       |[32-38) |         0|     13|    66|
|6-24 months |MAL-ED        |BRAZIL       |[32-38) |         1|      2|    66|
|6-24 months |MAL-ED        |BRAZIL       |<32     |         0|     17|    66|
|6-24 months |MAL-ED        |BRAZIL       |<32     |         1|      0|    66|
|6-24 months |MAL-ED        |TANZANIA     |>=38    |         0|     51|    95|
|6-24 months |MAL-ED        |TANZANIA     |>=38    |         1|      0|    95|
|6-24 months |MAL-ED        |TANZANIA     |[32-38) |         0|     26|    95|
|6-24 months |MAL-ED        |TANZANIA     |[32-38) |         1|      0|    95|
|6-24 months |MAL-ED        |TANZANIA     |<32     |         0|     18|    95|
|6-24 months |MAL-ED        |TANZANIA     |<32     |         1|      0|    95|
|6-24 months |MAL-ED        |SOUTH AFRICA |>=38    |         0|     75|   109|
|6-24 months |MAL-ED        |SOUTH AFRICA |>=38    |         1|      0|   109|
|6-24 months |MAL-ED        |SOUTH AFRICA |[32-38) |         0|     26|   109|
|6-24 months |MAL-ED        |SOUTH AFRICA |[32-38) |         1|      0|   109|
|6-24 months |MAL-ED        |SOUTH AFRICA |<32     |         0|      8|   109|
|6-24 months |MAL-ED        |SOUTH AFRICA |<32     |         1|      0|   109|
|6-24 months |PROBIT        |BELARUS      |>=38    |         0|    759| 15970|
|6-24 months |PROBIT        |BELARUS      |>=38    |         1|      5| 15970|
|6-24 months |PROBIT        |BELARUS      |[32-38) |         0|   2475| 15970|
|6-24 months |PROBIT        |BELARUS      |[32-38) |         1|     24| 15970|
|6-24 months |PROBIT        |BELARUS      |<32     |         0|  12610| 15970|
|6-24 months |PROBIT        |BELARUS      |<32     |         1|     97| 15970|
|6-24 months |SAS-CompFeed  |INDIA        |>=38    |         0|     51|  1366|
|6-24 months |SAS-CompFeed  |INDIA        |>=38    |         1|      5|  1366|
|6-24 months |SAS-CompFeed  |INDIA        |[32-38) |         0|    166|  1366|
|6-24 months |SAS-CompFeed  |INDIA        |[32-38) |         1|     12|  1366|
|6-24 months |SAS-CompFeed  |INDIA        |<32     |         0|   1035|  1366|
|6-24 months |SAS-CompFeed  |INDIA        |<32     |         1|     97|  1366|
|6-24 months |SAS-FoodSuppl |INDIA        |>=38    |         0|     57|   375|
|6-24 months |SAS-FoodSuppl |INDIA        |>=38    |         1|     11|   375|
|6-24 months |SAS-FoodSuppl |INDIA        |[32-38) |         0|     71|   375|
|6-24 months |SAS-FoodSuppl |INDIA        |[32-38) |         1|     18|   375|
|6-24 months |SAS-FoodSuppl |INDIA        |<32     |         0|    182|   375|
|6-24 months |SAS-FoodSuppl |INDIA        |<32     |         1|     36|   375|


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


