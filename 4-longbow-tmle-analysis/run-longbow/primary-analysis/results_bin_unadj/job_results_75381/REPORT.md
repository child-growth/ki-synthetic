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

**Outcome Variable:** sstunted

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

|agecat    |studyid       |country      |fage    | sstunted| n_cell|     n|
|:---------|:-------------|:------------|:-------|--------:|------:|-----:|
|Birth     |COHORTS       |GUATEMALA    |>=38    |        0|    242|   833|
|Birth     |COHORTS       |GUATEMALA    |>=38    |        1|      4|   833|
|Birth     |COHORTS       |GUATEMALA    |[32-38) |        0|    203|   833|
|Birth     |COHORTS       |GUATEMALA    |[32-38) |        1|      2|   833|
|Birth     |COHORTS       |GUATEMALA    |<32     |        0|    377|   833|
|Birth     |COHORTS       |GUATEMALA    |<32     |        1|      5|   833|
|Birth     |COHORTS       |PHILIPPINES  |>=38    |        0|    401|  2931|
|Birth     |COHORTS       |PHILIPPINES  |>=38    |        1|      9|  2931|
|Birth     |COHORTS       |PHILIPPINES  |[32-38) |        0|    529|  2931|
|Birth     |COHORTS       |PHILIPPINES  |[32-38) |        1|      5|  2931|
|Birth     |COHORTS       |PHILIPPINES  |<32     |        0|   1956|  2931|
|Birth     |COHORTS       |PHILIPPINES  |<32     |        1|     31|  2931|
|Birth     |MAL-ED        |INDIA        |>=38    |        0|     13|    32|
|Birth     |MAL-ED        |INDIA        |>=38    |        1|      1|    32|
|Birth     |MAL-ED        |INDIA        |[32-38) |        0|      7|    32|
|Birth     |MAL-ED        |INDIA        |[32-38) |        1|      1|    32|
|Birth     |MAL-ED        |INDIA        |<32     |        0|     10|    32|
|Birth     |MAL-ED        |INDIA        |<32     |        1|      0|    32|
|Birth     |MAL-ED        |BANGLADESH   |>=38    |        0|     73|   116|
|Birth     |MAL-ED        |BANGLADESH   |>=38    |        1|      3|   116|
|Birth     |MAL-ED        |BANGLADESH   |[32-38) |        0|     24|   116|
|Birth     |MAL-ED        |BANGLADESH   |[32-38) |        1|      0|   116|
|Birth     |MAL-ED        |BANGLADESH   |<32     |        0|     16|   116|
|Birth     |MAL-ED        |BANGLADESH   |<32     |        1|      0|   116|
|Birth     |MAL-ED        |PERU         |>=38    |        0|     35|    82|
|Birth     |MAL-ED        |PERU         |>=38    |        1|      1|    82|
|Birth     |MAL-ED        |PERU         |[32-38) |        0|     19|    82|
|Birth     |MAL-ED        |PERU         |[32-38) |        1|      0|    82|
|Birth     |MAL-ED        |PERU         |<32     |        0|     27|    82|
|Birth     |MAL-ED        |PERU         |<32     |        1|      0|    82|
|Birth     |MAL-ED        |NEPAL        |>=38    |        0|      4|    10|
|Birth     |MAL-ED        |NEPAL        |>=38    |        1|      0|    10|
|Birth     |MAL-ED        |NEPAL        |[32-38) |        0|      4|    10|
|Birth     |MAL-ED        |NEPAL        |[32-38) |        1|      0|    10|
|Birth     |MAL-ED        |NEPAL        |<32     |        0|      2|    10|
|Birth     |MAL-ED        |NEPAL        |<32     |        1|      0|    10|
|Birth     |MAL-ED        |BRAZIL       |>=38    |        0|      6|    17|
|Birth     |MAL-ED        |BRAZIL       |>=38    |        1|      1|    17|
|Birth     |MAL-ED        |BRAZIL       |[32-38) |        0|      5|    17|
|Birth     |MAL-ED        |BRAZIL       |[32-38) |        1|      0|    17|
|Birth     |MAL-ED        |BRAZIL       |<32     |        0|      5|    17|
|Birth     |MAL-ED        |BRAZIL       |<32     |        1|      0|    17|
|Birth     |MAL-ED        |TANZANIA     |>=38    |        0|     18|    45|
|Birth     |MAL-ED        |TANZANIA     |>=38    |        1|      3|    45|
|Birth     |MAL-ED        |TANZANIA     |[32-38) |        0|     14|    45|
|Birth     |MAL-ED        |TANZANIA     |[32-38) |        1|      0|    45|
|Birth     |MAL-ED        |TANZANIA     |<32     |        0|     10|    45|
|Birth     |MAL-ED        |TANZANIA     |<32     |        1|      0|    45|
|Birth     |MAL-ED        |SOUTH AFRICA |>=38    |        0|     29|    46|
|Birth     |MAL-ED        |SOUTH AFRICA |>=38    |        1|      0|    46|
|Birth     |MAL-ED        |SOUTH AFRICA |[32-38) |        0|     11|    46|
|Birth     |MAL-ED        |SOUTH AFRICA |[32-38) |        1|      1|    46|
|Birth     |MAL-ED        |SOUTH AFRICA |<32     |        0|      5|    46|
|Birth     |MAL-ED        |SOUTH AFRICA |<32     |        1|      0|    46|
|Birth     |PROBIT        |BELARUS      |>=38    |        0|    656| 13390|
|Birth     |PROBIT        |BELARUS      |>=38    |        1|      1| 13390|
|Birth     |PROBIT        |BELARUS      |[32-38) |        0|   2083| 13390|
|Birth     |PROBIT        |BELARUS      |[32-38) |        1|      0| 13390|
|Birth     |PROBIT        |BELARUS      |<32     |        0|  10646| 13390|
|Birth     |PROBIT        |BELARUS      |<32     |        1|      4| 13390|
|Birth     |SAS-CompFeed  |INDIA        |>=38    |        0|     50|  1252|
|Birth     |SAS-CompFeed  |INDIA        |>=38    |        1|      5|  1252|
|Birth     |SAS-CompFeed  |INDIA        |[32-38) |        0|    156|  1252|
|Birth     |SAS-CompFeed  |INDIA        |[32-38) |        1|      9|  1252|
|Birth     |SAS-CompFeed  |INDIA        |<32     |        0|    955|  1252|
|Birth     |SAS-CompFeed  |INDIA        |<32     |        1|     77|  1252|
|6 months  |COHORTS       |GUATEMALA    |>=38    |        0|    235|   936|
|6 months  |COHORTS       |GUATEMALA    |>=38    |        1|     39|   936|
|6 months  |COHORTS       |GUATEMALA    |[32-38) |        0|    212|   936|
|6 months  |COHORTS       |GUATEMALA    |[32-38) |        1|     25|   936|
|6 months  |COHORTS       |GUATEMALA    |<32     |        0|    373|   936|
|6 months  |COHORTS       |GUATEMALA    |<32     |        1|     52|   936|
|6 months  |COHORTS       |PHILIPPINES  |>=38    |        0|    344|  2603|
|6 months  |COHORTS       |PHILIPPINES  |>=38    |        1|     12|  2603|
|6 months  |COHORTS       |PHILIPPINES  |[32-38) |        0|    444|  2603|
|6 months  |COHORTS       |PHILIPPINES  |[32-38) |        1|     28|  2603|
|6 months  |COHORTS       |PHILIPPINES  |<32     |        0|   1687|  2603|
|6 months  |COHORTS       |PHILIPPINES  |<32     |        1|     88|  2603|
|6 months  |LCNI-5        |MALAWI       |>=38    |        0|     18|    50|
|6 months  |LCNI-5        |MALAWI       |>=38    |        1|      1|    50|
|6 months  |LCNI-5        |MALAWI       |[32-38) |        0|      7|    50|
|6 months  |LCNI-5        |MALAWI       |[32-38) |        1|      1|    50|
|6 months  |LCNI-5        |MALAWI       |<32     |        0|     18|    50|
|6 months  |LCNI-5        |MALAWI       |<32     |        1|      5|    50|
|6 months  |MAL-ED        |INDIA        |>=38    |        0|     58|   154|
|6 months  |MAL-ED        |INDIA        |>=38    |        1|      1|   154|
|6 months  |MAL-ED        |INDIA        |[32-38) |        0|     48|   154|
|6 months  |MAL-ED        |INDIA        |[32-38) |        1|      3|   154|
|6 months  |MAL-ED        |INDIA        |<32     |        0|     41|   154|
|6 months  |MAL-ED        |INDIA        |<32     |        1|      3|   154|
|6 months  |MAL-ED        |BANGLADESH   |>=38    |        0|     75|   122|
|6 months  |MAL-ED        |BANGLADESH   |>=38    |        1|      1|   122|
|6 months  |MAL-ED        |BANGLADESH   |[32-38) |        0|     27|   122|
|6 months  |MAL-ED        |BANGLADESH   |[32-38) |        1|      3|   122|
|6 months  |MAL-ED        |BANGLADESH   |<32     |        0|     16|   122|
|6 months  |MAL-ED        |BANGLADESH   |<32     |        1|      0|   122|
|6 months  |MAL-ED        |PERU         |>=38    |        0|     40|    97|
|6 months  |MAL-ED        |PERU         |>=38    |        1|      1|    97|
|6 months  |MAL-ED        |PERU         |[32-38) |        0|     27|    97|
|6 months  |MAL-ED        |PERU         |[32-38) |        1|      0|    97|
|6 months  |MAL-ED        |PERU         |<32     |        0|     29|    97|
|6 months  |MAL-ED        |PERU         |<32     |        1|      0|    97|
|6 months  |MAL-ED        |NEPAL        |>=38    |        0|     37|    85|
|6 months  |MAL-ED        |NEPAL        |>=38    |        1|      0|    85|
|6 months  |MAL-ED        |NEPAL        |[32-38) |        0|     31|    85|
|6 months  |MAL-ED        |NEPAL        |[32-38) |        1|      0|    85|
|6 months  |MAL-ED        |NEPAL        |<32     |        0|     17|    85|
|6 months  |MAL-ED        |NEPAL        |<32     |        1|      0|    85|
|6 months  |MAL-ED        |BRAZIL       |>=38    |        0|     34|    64|
|6 months  |MAL-ED        |BRAZIL       |>=38    |        1|      0|    64|
|6 months  |MAL-ED        |BRAZIL       |[32-38) |        0|     14|    64|
|6 months  |MAL-ED        |BRAZIL       |[32-38) |        1|      0|    64|
|6 months  |MAL-ED        |BRAZIL       |<32     |        0|     16|    64|
|6 months  |MAL-ED        |BRAZIL       |<32     |        1|      0|    64|
|6 months  |MAL-ED        |TANZANIA     |>=38    |        0|     46|    94|
|6 months  |MAL-ED        |TANZANIA     |>=38    |        1|      4|    94|
|6 months  |MAL-ED        |TANZANIA     |[32-38) |        0|     24|    94|
|6 months  |MAL-ED        |TANZANIA     |[32-38) |        1|      2|    94|
|6 months  |MAL-ED        |TANZANIA     |<32     |        0|     18|    94|
|6 months  |MAL-ED        |TANZANIA     |<32     |        1|      0|    94|
|6 months  |MAL-ED        |SOUTH AFRICA |>=38    |        0|     70|   103|
|6 months  |MAL-ED        |SOUTH AFRICA |>=38    |        1|      2|   103|
|6 months  |MAL-ED        |SOUTH AFRICA |[32-38) |        0|     23|   103|
|6 months  |MAL-ED        |SOUTH AFRICA |[32-38) |        1|      1|   103|
|6 months  |MAL-ED        |SOUTH AFRICA |<32     |        0|      6|   103|
|6 months  |MAL-ED        |SOUTH AFRICA |<32     |        1|      1|   103|
|6 months  |PROBIT        |BELARUS      |>=38    |        0|    717| 15175|
|6 months  |PROBIT        |BELARUS      |>=38    |        1|      9| 15175|
|6 months  |PROBIT        |BELARUS      |[32-38) |        0|   2346| 15175|
|6 months  |PROBIT        |BELARUS      |[32-38) |        1|     23| 15175|
|6 months  |PROBIT        |BELARUS      |<32     |        0|  11942| 15175|
|6 months  |PROBIT        |BELARUS      |<32     |        1|    138| 15175|
|6 months  |SAS-CompFeed  |INDIA        |>=38    |        0|     54|  1336|
|6 months  |SAS-CompFeed  |INDIA        |>=38    |        1|      3|  1336|
|6 months  |SAS-CompFeed  |INDIA        |[32-38) |        0|    163|  1336|
|6 months  |SAS-CompFeed  |INDIA        |[32-38) |        1|     18|  1336|
|6 months  |SAS-CompFeed  |INDIA        |<32     |        0|    991|  1336|
|6 months  |SAS-CompFeed  |INDIA        |<32     |        1|    107|  1336|
|6 months  |SAS-FoodSuppl |INDIA        |>=38    |        0|     53|   380|
|6 months  |SAS-FoodSuppl |INDIA        |>=38    |        1|     13|   380|
|6 months  |SAS-FoodSuppl |INDIA        |[32-38) |        0|     78|   380|
|6 months  |SAS-FoodSuppl |INDIA        |[32-38) |        1|     10|   380|
|6 months  |SAS-FoodSuppl |INDIA        |<32     |        0|    195|   380|
|6 months  |SAS-FoodSuppl |INDIA        |<32     |        1|     31|   380|
|24 months |COHORTS       |GUATEMALA    |>=38    |        0|    160|  1040|
|24 months |COHORTS       |GUATEMALA    |>=38    |        1|    159|  1040|
|24 months |COHORTS       |GUATEMALA    |[32-38) |        0|    125|  1040|
|24 months |COHORTS       |GUATEMALA    |[32-38) |        1|    128|  1040|
|24 months |COHORTS       |GUATEMALA    |<32     |        0|    246|  1040|
|24 months |COHORTS       |GUATEMALA    |<32     |        1|    222|  1040|
|24 months |COHORTS       |PHILIPPINES  |>=38    |        0|    238|  2351|
|24 months |COHORTS       |PHILIPPINES  |>=38    |        1|     87|  2351|
|24 months |COHORTS       |PHILIPPINES  |[32-38) |        0|    303|  2351|
|24 months |COHORTS       |PHILIPPINES  |[32-38) |        1|    123|  2351|
|24 months |COHORTS       |PHILIPPINES  |<32     |        0|   1117|  2351|
|24 months |COHORTS       |PHILIPPINES  |<32     |        1|    483|  2351|
|24 months |LCNI-5        |MALAWI       |>=38    |        0|     11|    36|
|24 months |LCNI-5        |MALAWI       |>=38    |        1|      1|    36|
|24 months |LCNI-5        |MALAWI       |[32-38) |        0|      5|    36|
|24 months |LCNI-5        |MALAWI       |[32-38) |        1|      1|    36|
|24 months |LCNI-5        |MALAWI       |<32     |        0|     14|    36|
|24 months |LCNI-5        |MALAWI       |<32     |        1|      4|    36|
|24 months |MAL-ED        |INDIA        |>=38    |        0|     46|   147|
|24 months |MAL-ED        |INDIA        |>=38    |        1|     10|   147|
|24 months |MAL-ED        |INDIA        |[32-38) |        0|     39|   147|
|24 months |MAL-ED        |INDIA        |[32-38) |        1|      9|   147|
|24 months |MAL-ED        |INDIA        |<32     |        0|     40|   147|
|24 months |MAL-ED        |INDIA        |<32     |        1|      3|   147|
|24 months |MAL-ED        |BANGLADESH   |>=38    |        0|     63|   106|
|24 months |MAL-ED        |BANGLADESH   |>=38    |        1|      5|   106|
|24 months |MAL-ED        |BANGLADESH   |[32-38) |        0|     20|   106|
|24 months |MAL-ED        |BANGLADESH   |[32-38) |        1|      3|   106|
|24 months |MAL-ED        |BANGLADESH   |<32     |        0|     14|   106|
|24 months |MAL-ED        |BANGLADESH   |<32     |        1|      1|   106|
|24 months |MAL-ED        |PERU         |>=38    |        0|     27|    70|
|24 months |MAL-ED        |PERU         |>=38    |        1|      3|    70|
|24 months |MAL-ED        |PERU         |[32-38) |        0|     18|    70|
|24 months |MAL-ED        |PERU         |[32-38) |        1|      1|    70|
|24 months |MAL-ED        |PERU         |<32     |        0|     20|    70|
|24 months |MAL-ED        |PERU         |<32     |        1|      1|    70|
|24 months |MAL-ED        |NEPAL        |>=38    |        0|     35|    81|
|24 months |MAL-ED        |NEPAL        |>=38    |        1|      0|    81|
|24 months |MAL-ED        |NEPAL        |[32-38) |        0|     30|    81|
|24 months |MAL-ED        |NEPAL        |[32-38) |        1|      0|    81|
|24 months |MAL-ED        |NEPAL        |<32     |        0|     15|    81|
|24 months |MAL-ED        |NEPAL        |<32     |        1|      1|    81|
|24 months |MAL-ED        |BRAZIL       |>=38    |        0|     29|    51|
|24 months |MAL-ED        |BRAZIL       |>=38    |        1|      0|    51|
|24 months |MAL-ED        |BRAZIL       |[32-38) |        0|      8|    51|
|24 months |MAL-ED        |BRAZIL       |[32-38) |        1|      0|    51|
|24 months |MAL-ED        |BRAZIL       |<32     |        0|     14|    51|
|24 months |MAL-ED        |BRAZIL       |<32     |        1|      0|    51|
|24 months |MAL-ED        |TANZANIA     |>=38    |        0|     28|    83|
|24 months |MAL-ED        |TANZANIA     |>=38    |        1|     18|    83|
|24 months |MAL-ED        |TANZANIA     |[32-38) |        0|     12|    83|
|24 months |MAL-ED        |TANZANIA     |[32-38) |        1|      8|    83|
|24 months |MAL-ED        |TANZANIA     |<32     |        0|     14|    83|
|24 months |MAL-ED        |TANZANIA     |<32     |        1|      3|    83|
|24 months |MAL-ED        |SOUTH AFRICA |>=38    |        0|     58|    96|
|24 months |MAL-ED        |SOUTH AFRICA |>=38    |        1|      8|    96|
|24 months |MAL-ED        |SOUTH AFRICA |[32-38) |        0|     21|    96|
|24 months |MAL-ED        |SOUTH AFRICA |[32-38) |        1|      2|    96|
|24 months |MAL-ED        |SOUTH AFRICA |<32     |        0|      4|    96|
|24 months |MAL-ED        |SOUTH AFRICA |<32     |        1|      3|    96|
|24 months |PROBIT        |BELARUS      |>=38    |        0|    180|  3883|
|24 months |PROBIT        |BELARUS      |>=38    |        1|      4|  3883|
|24 months |PROBIT        |BELARUS      |[32-38) |        0|    593|  3883|
|24 months |PROBIT        |BELARUS      |[32-38) |        1|      7|  3883|
|24 months |PROBIT        |BELARUS      |<32     |        0|   3049|  3883|
|24 months |PROBIT        |BELARUS      |<32     |        1|     50|  3883|


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

* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
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


