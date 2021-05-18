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

**Outcome Variable:** wasted

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

|agecat    |studyid       |country      |fage    | wasted| n_cell|     n|
|:---------|:-------------|:------------|:-------|------:|------:|-----:|
|Birth     |COHORTS       |GUATEMALA    |>=38    |      0|    169|   741|
|Birth     |COHORTS       |GUATEMALA    |>=38    |      1|     53|   741|
|Birth     |COHORTS       |GUATEMALA    |[32-38) |      0|    142|   741|
|Birth     |COHORTS       |GUATEMALA    |[32-38) |      1|     44|   741|
|Birth     |COHORTS       |GUATEMALA    |<32     |      0|    241|   741|
|Birth     |COHORTS       |GUATEMALA    |<32     |      1|     92|   741|
|Birth     |COHORTS       |PHILIPPINES  |>=38    |      0|    326|  2785|
|Birth     |COHORTS       |PHILIPPINES  |>=38    |      1|     54|  2785|
|Birth     |COHORTS       |PHILIPPINES  |[32-38) |      0|    433|  2785|
|Birth     |COHORTS       |PHILIPPINES  |[32-38) |      1|     78|  2785|
|Birth     |COHORTS       |PHILIPPINES  |<32     |      0|   1596|  2785|
|Birth     |COHORTS       |PHILIPPINES  |<32     |      1|    298|  2785|
|Birth     |MAL-ED        |INDIA        |>=38    |      0|     11|    30|
|Birth     |MAL-ED        |INDIA        |>=38    |      1|      2|    30|
|Birth     |MAL-ED        |INDIA        |[32-38) |      0|      7|    30|
|Birth     |MAL-ED        |INDIA        |[32-38) |      1|      0|    30|
|Birth     |MAL-ED        |INDIA        |<32     |      0|      8|    30|
|Birth     |MAL-ED        |INDIA        |<32     |      1|      2|    30|
|Birth     |MAL-ED        |BANGLADESH   |>=38    |      0|     59|   109|
|Birth     |MAL-ED        |BANGLADESH   |>=38    |      1|     12|   109|
|Birth     |MAL-ED        |BANGLADESH   |[32-38) |      0|     21|   109|
|Birth     |MAL-ED        |BANGLADESH   |[32-38) |      1|      2|   109|
|Birth     |MAL-ED        |BANGLADESH   |<32     |      0|     14|   109|
|Birth     |MAL-ED        |BANGLADESH   |<32     |      1|      1|   109|
|Birth     |MAL-ED        |PERU         |>=38    |      0|     35|    81|
|Birth     |MAL-ED        |PERU         |>=38    |      1|      0|    81|
|Birth     |MAL-ED        |PERU         |[32-38) |      0|     19|    81|
|Birth     |MAL-ED        |PERU         |[32-38) |      1|      0|    81|
|Birth     |MAL-ED        |PERU         |<32     |      0|     25|    81|
|Birth     |MAL-ED        |PERU         |<32     |      1|      2|    81|
|Birth     |MAL-ED        |NEPAL        |>=38    |      0|      4|    10|
|Birth     |MAL-ED        |NEPAL        |>=38    |      1|      0|    10|
|Birth     |MAL-ED        |NEPAL        |[32-38) |      0|      4|    10|
|Birth     |MAL-ED        |NEPAL        |[32-38) |      1|      0|    10|
|Birth     |MAL-ED        |NEPAL        |<32     |      0|      2|    10|
|Birth     |MAL-ED        |NEPAL        |<32     |      1|      0|    10|
|Birth     |MAL-ED        |BRAZIL       |>=38    |      0|      6|    16|
|Birth     |MAL-ED        |BRAZIL       |>=38    |      1|      0|    16|
|Birth     |MAL-ED        |BRAZIL       |[32-38) |      0|      5|    16|
|Birth     |MAL-ED        |BRAZIL       |[32-38) |      1|      0|    16|
|Birth     |MAL-ED        |BRAZIL       |<32     |      0|      4|    16|
|Birth     |MAL-ED        |BRAZIL       |<32     |      1|      1|    16|
|Birth     |MAL-ED        |TANZANIA     |>=38    |      0|     18|    42|
|Birth     |MAL-ED        |TANZANIA     |>=38    |      1|      0|    42|
|Birth     |MAL-ED        |TANZANIA     |[32-38) |      0|     13|    42|
|Birth     |MAL-ED        |TANZANIA     |[32-38) |      1|      1|    42|
|Birth     |MAL-ED        |TANZANIA     |<32     |      0|     10|    42|
|Birth     |MAL-ED        |TANZANIA     |<32     |      1|      0|    42|
|Birth     |MAL-ED        |SOUTH AFRICA |>=38    |      0|     26|    44|
|Birth     |MAL-ED        |SOUTH AFRICA |>=38    |      1|      2|    44|
|Birth     |MAL-ED        |SOUTH AFRICA |[32-38) |      0|     11|    44|
|Birth     |MAL-ED        |SOUTH AFRICA |[32-38) |      1|      0|    44|
|Birth     |MAL-ED        |SOUTH AFRICA |<32     |      0|      4|    44|
|Birth     |MAL-ED        |SOUTH AFRICA |<32     |      1|      1|    44|
|Birth     |PROBIT        |BELARUS      |>=38    |      0|    526| 13315|
|Birth     |PROBIT        |BELARUS      |>=38    |      1|    128| 13315|
|Birth     |PROBIT        |BELARUS      |[32-38) |      0|   1632| 13315|
|Birth     |PROBIT        |BELARUS      |[32-38) |      1|    438| 13315|
|Birth     |PROBIT        |BELARUS      |<32     |      0|   8353| 13315|
|Birth     |PROBIT        |BELARUS      |<32     |      1|   2238| 13315|
|Birth     |SAS-CompFeed  |INDIA        |>=38    |      0|     42|  1103|
|Birth     |SAS-CompFeed  |INDIA        |>=38    |      1|      4|  1103|
|Birth     |SAS-CompFeed  |INDIA        |[32-38) |      0|    132|  1103|
|Birth     |SAS-CompFeed  |INDIA        |[32-38) |      1|     15|  1103|
|Birth     |SAS-CompFeed  |INDIA        |<32     |      0|    811|  1103|
|Birth     |SAS-CompFeed  |INDIA        |<32     |      1|     99|  1103|
|6 months  |COHORTS       |GUATEMALA    |>=38    |      0|    267|   938|
|6 months  |COHORTS       |GUATEMALA    |>=38    |      1|      7|   938|
|6 months  |COHORTS       |GUATEMALA    |[32-38) |      0|    231|   938|
|6 months  |COHORTS       |GUATEMALA    |[32-38) |      1|      6|   938|
|6 months  |COHORTS       |GUATEMALA    |<32     |      0|    409|   938|
|6 months  |COHORTS       |GUATEMALA    |<32     |      1|     18|   938|
|6 months  |COHORTS       |PHILIPPINES  |>=38    |      0|    332|  2601|
|6 months  |COHORTS       |PHILIPPINES  |>=38    |      1|     23|  2601|
|6 months  |COHORTS       |PHILIPPINES  |[32-38) |      0|    439|  2601|
|6 months  |COHORTS       |PHILIPPINES  |[32-38) |      1|     32|  2601|
|6 months  |COHORTS       |PHILIPPINES  |<32     |      0|   1675|  2601|
|6 months  |COHORTS       |PHILIPPINES  |<32     |      1|    100|  2601|
|6 months  |LCNI-5        |MALAWI       |>=38    |      0|     19|    50|
|6 months  |LCNI-5        |MALAWI       |>=38    |      1|      0|    50|
|6 months  |LCNI-5        |MALAWI       |[32-38) |      0|      8|    50|
|6 months  |LCNI-5        |MALAWI       |[32-38) |      1|      0|    50|
|6 months  |LCNI-5        |MALAWI       |<32     |      0|     23|    50|
|6 months  |LCNI-5        |MALAWI       |<32     |      1|      0|    50|
|6 months  |MAL-ED        |INDIA        |>=38    |      0|     57|   154|
|6 months  |MAL-ED        |INDIA        |>=38    |      1|      2|   154|
|6 months  |MAL-ED        |INDIA        |[32-38) |      0|     46|   154|
|6 months  |MAL-ED        |INDIA        |[32-38) |      1|      5|   154|
|6 months  |MAL-ED        |INDIA        |<32     |      0|     39|   154|
|6 months  |MAL-ED        |INDIA        |<32     |      1|      5|   154|
|6 months  |MAL-ED        |BANGLADESH   |>=38    |      0|     75|   122|
|6 months  |MAL-ED        |BANGLADESH   |>=38    |      1|      1|   122|
|6 months  |MAL-ED        |BANGLADESH   |[32-38) |      0|     28|   122|
|6 months  |MAL-ED        |BANGLADESH   |[32-38) |      1|      2|   122|
|6 months  |MAL-ED        |BANGLADESH   |<32     |      0|     15|   122|
|6 months  |MAL-ED        |BANGLADESH   |<32     |      1|      1|   122|
|6 months  |MAL-ED        |PERU         |>=38    |      0|     41|    97|
|6 months  |MAL-ED        |PERU         |>=38    |      1|      0|    97|
|6 months  |MAL-ED        |PERU         |[32-38) |      0|     27|    97|
|6 months  |MAL-ED        |PERU         |[32-38) |      1|      0|    97|
|6 months  |MAL-ED        |PERU         |<32     |      0|     29|    97|
|6 months  |MAL-ED        |PERU         |<32     |      1|      0|    97|
|6 months  |MAL-ED        |NEPAL        |>=38    |      0|     37|    85|
|6 months  |MAL-ED        |NEPAL        |>=38    |      1|      0|    85|
|6 months  |MAL-ED        |NEPAL        |[32-38) |      0|     31|    85|
|6 months  |MAL-ED        |NEPAL        |[32-38) |      1|      0|    85|
|6 months  |MAL-ED        |NEPAL        |<32     |      0|     16|    85|
|6 months  |MAL-ED        |NEPAL        |<32     |      1|      1|    85|
|6 months  |MAL-ED        |BRAZIL       |>=38    |      0|     34|    64|
|6 months  |MAL-ED        |BRAZIL       |>=38    |      1|      0|    64|
|6 months  |MAL-ED        |BRAZIL       |[32-38) |      0|     13|    64|
|6 months  |MAL-ED        |BRAZIL       |[32-38) |      1|      1|    64|
|6 months  |MAL-ED        |BRAZIL       |<32     |      0|     16|    64|
|6 months  |MAL-ED        |BRAZIL       |<32     |      1|      0|    64|
|6 months  |MAL-ED        |TANZANIA     |>=38    |      0|     49|    94|
|6 months  |MAL-ED        |TANZANIA     |>=38    |      1|      1|    94|
|6 months  |MAL-ED        |TANZANIA     |[32-38) |      0|     26|    94|
|6 months  |MAL-ED        |TANZANIA     |[32-38) |      1|      0|    94|
|6 months  |MAL-ED        |TANZANIA     |<32     |      0|     18|    94|
|6 months  |MAL-ED        |TANZANIA     |<32     |      1|      0|    94|
|6 months  |MAL-ED        |SOUTH AFRICA |>=38    |      0|     72|   103|
|6 months  |MAL-ED        |SOUTH AFRICA |>=38    |      1|      0|   103|
|6 months  |MAL-ED        |SOUTH AFRICA |[32-38) |      0|     23|   103|
|6 months  |MAL-ED        |SOUTH AFRICA |[32-38) |      1|      1|   103|
|6 months  |MAL-ED        |SOUTH AFRICA |<32     |      0|      7|   103|
|6 months  |MAL-ED        |SOUTH AFRICA |<32     |      1|      0|   103|
|6 months  |PROBIT        |BELARUS      |>=38    |      0|    724| 15172|
|6 months  |PROBIT        |BELARUS      |>=38    |      1|      3| 15172|
|6 months  |PROBIT        |BELARUS      |[32-38) |      0|   2348| 15172|
|6 months  |PROBIT        |BELARUS      |[32-38) |      1|     21| 15172|
|6 months  |PROBIT        |BELARUS      |<32     |      0|  11996| 15172|
|6 months  |PROBIT        |BELARUS      |<32     |      1|     80| 15172|
|6 months  |SAS-CompFeed  |INDIA        |>=38    |      0|     53|  1334|
|6 months  |SAS-CompFeed  |INDIA        |>=38    |      1|      4|  1334|
|6 months  |SAS-CompFeed  |INDIA        |[32-38) |      0|    156|  1334|
|6 months  |SAS-CompFeed  |INDIA        |[32-38) |      1|     24|  1334|
|6 months  |SAS-CompFeed  |INDIA        |<32     |      0|    959|  1334|
|6 months  |SAS-CompFeed  |INDIA        |<32     |      1|    138|  1334|
|6 months  |SAS-FoodSuppl |INDIA        |>=38    |      0|     58|   380|
|6 months  |SAS-FoodSuppl |INDIA        |>=38    |      1|      7|   380|
|6 months  |SAS-FoodSuppl |INDIA        |[32-38) |      0|     69|   380|
|6 months  |SAS-FoodSuppl |INDIA        |[32-38) |      1|     20|   380|
|6 months  |SAS-FoodSuppl |INDIA        |<32     |      0|    184|   380|
|6 months  |SAS-FoodSuppl |INDIA        |<32     |      1|     42|   380|
|24 months |COHORTS       |GUATEMALA    |>=38    |      0|    315|  1052|
|24 months |COHORTS       |GUATEMALA    |>=38    |      1|      8|  1052|
|24 months |COHORTS       |GUATEMALA    |[32-38) |      0|    241|  1052|
|24 months |COHORTS       |GUATEMALA    |[32-38) |      1|     13|  1052|
|24 months |COHORTS       |GUATEMALA    |<32     |      0|    448|  1052|
|24 months |COHORTS       |GUATEMALA    |<32     |      1|     27|  1052|
|24 months |COHORTS       |PHILIPPINES  |>=38    |      0|    309|  2355|
|24 months |COHORTS       |PHILIPPINES  |>=38    |      1|     17|  2355|
|24 months |COHORTS       |PHILIPPINES  |[32-38) |      0|    396|  2355|
|24 months |COHORTS       |PHILIPPINES  |[32-38) |      1|     31|  2355|
|24 months |COHORTS       |PHILIPPINES  |<32     |      0|   1491|  2355|
|24 months |COHORTS       |PHILIPPINES  |<32     |      1|    111|  2355|
|24 months |LCNI-5        |MALAWI       |>=38    |      0|     12|    35|
|24 months |LCNI-5        |MALAWI       |>=38    |      1|      0|    35|
|24 months |LCNI-5        |MALAWI       |[32-38) |      0|      5|    35|
|24 months |LCNI-5        |MALAWI       |[32-38) |      1|      0|    35|
|24 months |LCNI-5        |MALAWI       |<32     |      0|     17|    35|
|24 months |LCNI-5        |MALAWI       |<32     |      1|      1|    35|
|24 months |MAL-ED        |INDIA        |>=38    |      0|     53|   147|
|24 months |MAL-ED        |INDIA        |>=38    |      1|      3|   147|
|24 months |MAL-ED        |INDIA        |[32-38) |      0|     38|   147|
|24 months |MAL-ED        |INDIA        |[32-38) |      1|     10|   147|
|24 months |MAL-ED        |INDIA        |<32     |      0|     38|   147|
|24 months |MAL-ED        |INDIA        |<32     |      1|      5|   147|
|24 months |MAL-ED        |BANGLADESH   |>=38    |      0|     62|   106|
|24 months |MAL-ED        |BANGLADESH   |>=38    |      1|      6|   106|
|24 months |MAL-ED        |BANGLADESH   |[32-38) |      0|     21|   106|
|24 months |MAL-ED        |BANGLADESH   |[32-38) |      1|      2|   106|
|24 months |MAL-ED        |BANGLADESH   |<32     |      0|     14|   106|
|24 months |MAL-ED        |BANGLADESH   |<32     |      1|      1|   106|
|24 months |MAL-ED        |PERU         |>=38    |      0|     29|    70|
|24 months |MAL-ED        |PERU         |>=38    |      1|      1|    70|
|24 months |MAL-ED        |PERU         |[32-38) |      0|     19|    70|
|24 months |MAL-ED        |PERU         |[32-38) |      1|      0|    70|
|24 months |MAL-ED        |PERU         |<32     |      0|     21|    70|
|24 months |MAL-ED        |PERU         |<32     |      1|      0|    70|
|24 months |MAL-ED        |NEPAL        |>=38    |      0|     34|    81|
|24 months |MAL-ED        |NEPAL        |>=38    |      1|      1|    81|
|24 months |MAL-ED        |NEPAL        |[32-38) |      0|     30|    81|
|24 months |MAL-ED        |NEPAL        |[32-38) |      1|      0|    81|
|24 months |MAL-ED        |NEPAL        |<32     |      0|     16|    81|
|24 months |MAL-ED        |NEPAL        |<32     |      1|      0|    81|
|24 months |MAL-ED        |BRAZIL       |>=38    |      0|     29|    51|
|24 months |MAL-ED        |BRAZIL       |>=38    |      1|      0|    51|
|24 months |MAL-ED        |BRAZIL       |[32-38) |      0|      6|    51|
|24 months |MAL-ED        |BRAZIL       |[32-38) |      1|      2|    51|
|24 months |MAL-ED        |BRAZIL       |<32     |      0|     14|    51|
|24 months |MAL-ED        |BRAZIL       |<32     |      1|      0|    51|
|24 months |MAL-ED        |TANZANIA     |>=38    |      0|     46|    83|
|24 months |MAL-ED        |TANZANIA     |>=38    |      1|      0|    83|
|24 months |MAL-ED        |TANZANIA     |[32-38) |      0|     20|    83|
|24 months |MAL-ED        |TANZANIA     |[32-38) |      1|      0|    83|
|24 months |MAL-ED        |TANZANIA     |<32     |      0|     15|    83|
|24 months |MAL-ED        |TANZANIA     |<32     |      1|      2|    83|
|24 months |MAL-ED        |SOUTH AFRICA |>=38    |      0|     66|    96|
|24 months |MAL-ED        |SOUTH AFRICA |>=38    |      1|      0|    96|
|24 months |MAL-ED        |SOUTH AFRICA |[32-38) |      0|     23|    96|
|24 months |MAL-ED        |SOUTH AFRICA |[32-38) |      1|      0|    96|
|24 months |MAL-ED        |SOUTH AFRICA |<32     |      0|      7|    96|
|24 months |MAL-ED        |SOUTH AFRICA |<32     |      1|      0|    96|
|24 months |PROBIT        |BELARUS      |>=38    |      0|    182|  3820|
|24 months |PROBIT        |BELARUS      |>=38    |      1|      1|  3820|
|24 months |PROBIT        |BELARUS      |[32-38) |      0|    582|  3820|
|24 months |PROBIT        |BELARUS      |[32-38) |      1|      8|  3820|
|24 months |PROBIT        |BELARUS      |<32     |      0|   3025|  3820|
|24 months |PROBIT        |BELARUS      |<32     |      1|     22|  3820|


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
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: PROBIT, country: BELARUS





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


