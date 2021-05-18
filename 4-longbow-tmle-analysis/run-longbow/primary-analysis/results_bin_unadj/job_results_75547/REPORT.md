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

**Outcome Variable:** swasted

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

|agecat    |studyid       |country      |fage    | swasted| n_cell|     n|
|:---------|:-------------|:------------|:-------|-------:|------:|-----:|
|Birth     |COHORTS       |GUATEMALA    |>=38    |       0|    211|   741|
|Birth     |COHORTS       |GUATEMALA    |>=38    |       1|     11|   741|
|Birth     |COHORTS       |GUATEMALA    |[32-38) |       0|    169|   741|
|Birth     |COHORTS       |GUATEMALA    |[32-38) |       1|     17|   741|
|Birth     |COHORTS       |GUATEMALA    |<32     |       0|    303|   741|
|Birth     |COHORTS       |GUATEMALA    |<32     |       1|     30|   741|
|Birth     |COHORTS       |PHILIPPINES  |>=38    |       0|    362|  2785|
|Birth     |COHORTS       |PHILIPPINES  |>=38    |       1|     18|  2785|
|Birth     |COHORTS       |PHILIPPINES  |[32-38) |       0|    491|  2785|
|Birth     |COHORTS       |PHILIPPINES  |[32-38) |       1|     20|  2785|
|Birth     |COHORTS       |PHILIPPINES  |<32     |       0|   1815|  2785|
|Birth     |COHORTS       |PHILIPPINES  |<32     |       1|     79|  2785|
|Birth     |MAL-ED        |INDIA        |>=38    |       0|     13|    30|
|Birth     |MAL-ED        |INDIA        |>=38    |       1|      0|    30|
|Birth     |MAL-ED        |INDIA        |[32-38) |       0|      7|    30|
|Birth     |MAL-ED        |INDIA        |[32-38) |       1|      0|    30|
|Birth     |MAL-ED        |INDIA        |<32     |       0|     10|    30|
|Birth     |MAL-ED        |INDIA        |<32     |       1|      0|    30|
|Birth     |MAL-ED        |BANGLADESH   |>=38    |       0|     69|   109|
|Birth     |MAL-ED        |BANGLADESH   |>=38    |       1|      2|   109|
|Birth     |MAL-ED        |BANGLADESH   |[32-38) |       0|     23|   109|
|Birth     |MAL-ED        |BANGLADESH   |[32-38) |       1|      0|   109|
|Birth     |MAL-ED        |BANGLADESH   |<32     |       0|     15|   109|
|Birth     |MAL-ED        |BANGLADESH   |<32     |       1|      0|   109|
|Birth     |MAL-ED        |PERU         |>=38    |       0|     35|    81|
|Birth     |MAL-ED        |PERU         |>=38    |       1|      0|    81|
|Birth     |MAL-ED        |PERU         |[32-38) |       0|     19|    81|
|Birth     |MAL-ED        |PERU         |[32-38) |       1|      0|    81|
|Birth     |MAL-ED        |PERU         |<32     |       0|     27|    81|
|Birth     |MAL-ED        |PERU         |<32     |       1|      0|    81|
|Birth     |MAL-ED        |NEPAL        |>=38    |       0|      4|    10|
|Birth     |MAL-ED        |NEPAL        |>=38    |       1|      0|    10|
|Birth     |MAL-ED        |NEPAL        |[32-38) |       0|      4|    10|
|Birth     |MAL-ED        |NEPAL        |[32-38) |       1|      0|    10|
|Birth     |MAL-ED        |NEPAL        |<32     |       0|      2|    10|
|Birth     |MAL-ED        |NEPAL        |<32     |       1|      0|    10|
|Birth     |MAL-ED        |BRAZIL       |>=38    |       0|      6|    16|
|Birth     |MAL-ED        |BRAZIL       |>=38    |       1|      0|    16|
|Birth     |MAL-ED        |BRAZIL       |[32-38) |       0|      5|    16|
|Birth     |MAL-ED        |BRAZIL       |[32-38) |       1|      0|    16|
|Birth     |MAL-ED        |BRAZIL       |<32     |       0|      5|    16|
|Birth     |MAL-ED        |BRAZIL       |<32     |       1|      0|    16|
|Birth     |MAL-ED        |TANZANIA     |>=38    |       0|     18|    42|
|Birth     |MAL-ED        |TANZANIA     |>=38    |       1|      0|    42|
|Birth     |MAL-ED        |TANZANIA     |[32-38) |       0|     14|    42|
|Birth     |MAL-ED        |TANZANIA     |[32-38) |       1|      0|    42|
|Birth     |MAL-ED        |TANZANIA     |<32     |       0|     10|    42|
|Birth     |MAL-ED        |TANZANIA     |<32     |       1|      0|    42|
|Birth     |MAL-ED        |SOUTH AFRICA |>=38    |       0|     28|    44|
|Birth     |MAL-ED        |SOUTH AFRICA |>=38    |       1|      0|    44|
|Birth     |MAL-ED        |SOUTH AFRICA |[32-38) |       0|     11|    44|
|Birth     |MAL-ED        |SOUTH AFRICA |[32-38) |       1|      0|    44|
|Birth     |MAL-ED        |SOUTH AFRICA |<32     |       0|      5|    44|
|Birth     |MAL-ED        |SOUTH AFRICA |<32     |       1|      0|    44|
|Birth     |PROBIT        |BELARUS      |>=38    |       0|    615| 13315|
|Birth     |PROBIT        |BELARUS      |>=38    |       1|     39| 13315|
|Birth     |PROBIT        |BELARUS      |[32-38) |       0|   1933| 13315|
|Birth     |PROBIT        |BELARUS      |[32-38) |       1|    137| 13315|
|Birth     |PROBIT        |BELARUS      |<32     |       0|   9880| 13315|
|Birth     |PROBIT        |BELARUS      |<32     |       1|    711| 13315|
|Birth     |SAS-CompFeed  |INDIA        |>=38    |       0|     45|  1103|
|Birth     |SAS-CompFeed  |INDIA        |>=38    |       1|      1|  1103|
|Birth     |SAS-CompFeed  |INDIA        |[32-38) |       0|    140|  1103|
|Birth     |SAS-CompFeed  |INDIA        |[32-38) |       1|      7|  1103|
|Birth     |SAS-CompFeed  |INDIA        |<32     |       0|    889|  1103|
|Birth     |SAS-CompFeed  |INDIA        |<32     |       1|     21|  1103|
|6 months  |COHORTS       |GUATEMALA    |>=38    |       0|    273|   938|
|6 months  |COHORTS       |GUATEMALA    |>=38    |       1|      1|   938|
|6 months  |COHORTS       |GUATEMALA    |[32-38) |       0|    236|   938|
|6 months  |COHORTS       |GUATEMALA    |[32-38) |       1|      1|   938|
|6 months  |COHORTS       |GUATEMALA    |<32     |       0|    423|   938|
|6 months  |COHORTS       |GUATEMALA    |<32     |       1|      4|   938|
|6 months  |COHORTS       |PHILIPPINES  |>=38    |       0|    349|  2601|
|6 months  |COHORTS       |PHILIPPINES  |>=38    |       1|      6|  2601|
|6 months  |COHORTS       |PHILIPPINES  |[32-38) |       0|    466|  2601|
|6 months  |COHORTS       |PHILIPPINES  |[32-38) |       1|      5|  2601|
|6 months  |COHORTS       |PHILIPPINES  |<32     |       0|   1751|  2601|
|6 months  |COHORTS       |PHILIPPINES  |<32     |       1|     24|  2601|
|6 months  |LCNI-5        |MALAWI       |>=38    |       0|     19|    50|
|6 months  |LCNI-5        |MALAWI       |>=38    |       1|      0|    50|
|6 months  |LCNI-5        |MALAWI       |[32-38) |       0|      8|    50|
|6 months  |LCNI-5        |MALAWI       |[32-38) |       1|      0|    50|
|6 months  |LCNI-5        |MALAWI       |<32     |       0|     23|    50|
|6 months  |LCNI-5        |MALAWI       |<32     |       1|      0|    50|
|6 months  |MAL-ED        |INDIA        |>=38    |       0|     58|   154|
|6 months  |MAL-ED        |INDIA        |>=38    |       1|      1|   154|
|6 months  |MAL-ED        |INDIA        |[32-38) |       0|     49|   154|
|6 months  |MAL-ED        |INDIA        |[32-38) |       1|      2|   154|
|6 months  |MAL-ED        |INDIA        |<32     |       0|     43|   154|
|6 months  |MAL-ED        |INDIA        |<32     |       1|      1|   154|
|6 months  |MAL-ED        |BANGLADESH   |>=38    |       0|     76|   122|
|6 months  |MAL-ED        |BANGLADESH   |>=38    |       1|      0|   122|
|6 months  |MAL-ED        |BANGLADESH   |[32-38) |       0|     29|   122|
|6 months  |MAL-ED        |BANGLADESH   |[32-38) |       1|      1|   122|
|6 months  |MAL-ED        |BANGLADESH   |<32     |       0|     16|   122|
|6 months  |MAL-ED        |BANGLADESH   |<32     |       1|      0|   122|
|6 months  |MAL-ED        |PERU         |>=38    |       0|     41|    97|
|6 months  |MAL-ED        |PERU         |>=38    |       1|      0|    97|
|6 months  |MAL-ED        |PERU         |[32-38) |       0|     27|    97|
|6 months  |MAL-ED        |PERU         |[32-38) |       1|      0|    97|
|6 months  |MAL-ED        |PERU         |<32     |       0|     29|    97|
|6 months  |MAL-ED        |PERU         |<32     |       1|      0|    97|
|6 months  |MAL-ED        |NEPAL        |>=38    |       0|     37|    85|
|6 months  |MAL-ED        |NEPAL        |>=38    |       1|      0|    85|
|6 months  |MAL-ED        |NEPAL        |[32-38) |       0|     31|    85|
|6 months  |MAL-ED        |NEPAL        |[32-38) |       1|      0|    85|
|6 months  |MAL-ED        |NEPAL        |<32     |       0|     17|    85|
|6 months  |MAL-ED        |NEPAL        |<32     |       1|      0|    85|
|6 months  |MAL-ED        |BRAZIL       |>=38    |       0|     34|    64|
|6 months  |MAL-ED        |BRAZIL       |>=38    |       1|      0|    64|
|6 months  |MAL-ED        |BRAZIL       |[32-38) |       0|     14|    64|
|6 months  |MAL-ED        |BRAZIL       |[32-38) |       1|      0|    64|
|6 months  |MAL-ED        |BRAZIL       |<32     |       0|     16|    64|
|6 months  |MAL-ED        |BRAZIL       |<32     |       1|      0|    64|
|6 months  |MAL-ED        |TANZANIA     |>=38    |       0|     50|    94|
|6 months  |MAL-ED        |TANZANIA     |>=38    |       1|      0|    94|
|6 months  |MAL-ED        |TANZANIA     |[32-38) |       0|     26|    94|
|6 months  |MAL-ED        |TANZANIA     |[32-38) |       1|      0|    94|
|6 months  |MAL-ED        |TANZANIA     |<32     |       0|     18|    94|
|6 months  |MAL-ED        |TANZANIA     |<32     |       1|      0|    94|
|6 months  |MAL-ED        |SOUTH AFRICA |>=38    |       0|     72|   103|
|6 months  |MAL-ED        |SOUTH AFRICA |>=38    |       1|      0|   103|
|6 months  |MAL-ED        |SOUTH AFRICA |[32-38) |       0|     24|   103|
|6 months  |MAL-ED        |SOUTH AFRICA |[32-38) |       1|      0|   103|
|6 months  |MAL-ED        |SOUTH AFRICA |<32     |       0|      7|   103|
|6 months  |MAL-ED        |SOUTH AFRICA |<32     |       1|      0|   103|
|6 months  |PROBIT        |BELARUS      |>=38    |       0|    727| 15172|
|6 months  |PROBIT        |BELARUS      |>=38    |       1|      0| 15172|
|6 months  |PROBIT        |BELARUS      |[32-38) |       0|   2366| 15172|
|6 months  |PROBIT        |BELARUS      |[32-38) |       1|      3| 15172|
|6 months  |PROBIT        |BELARUS      |<32     |       0|  12070| 15172|
|6 months  |PROBIT        |BELARUS      |<32     |       1|      6| 15172|
|6 months  |SAS-CompFeed  |INDIA        |>=38    |       0|     56|  1334|
|6 months  |SAS-CompFeed  |INDIA        |>=38    |       1|      1|  1334|
|6 months  |SAS-CompFeed  |INDIA        |[32-38) |       0|    177|  1334|
|6 months  |SAS-CompFeed  |INDIA        |[32-38) |       1|      3|  1334|
|6 months  |SAS-CompFeed  |INDIA        |<32     |       0|   1058|  1334|
|6 months  |SAS-CompFeed  |INDIA        |<32     |       1|     39|  1334|
|6 months  |SAS-FoodSuppl |INDIA        |>=38    |       0|     64|   380|
|6 months  |SAS-FoodSuppl |INDIA        |>=38    |       1|      1|   380|
|6 months  |SAS-FoodSuppl |INDIA        |[32-38) |       0|     84|   380|
|6 months  |SAS-FoodSuppl |INDIA        |[32-38) |       1|      5|   380|
|6 months  |SAS-FoodSuppl |INDIA        |<32     |       0|    213|   380|
|6 months  |SAS-FoodSuppl |INDIA        |<32     |       1|     13|   380|
|24 months |COHORTS       |GUATEMALA    |>=38    |       0|    322|  1052|
|24 months |COHORTS       |GUATEMALA    |>=38    |       1|      1|  1052|
|24 months |COHORTS       |GUATEMALA    |[32-38) |       0|    254|  1052|
|24 months |COHORTS       |GUATEMALA    |[32-38) |       1|      0|  1052|
|24 months |COHORTS       |GUATEMALA    |<32     |       0|    472|  1052|
|24 months |COHORTS       |GUATEMALA    |<32     |       1|      3|  1052|
|24 months |COHORTS       |PHILIPPINES  |>=38    |       0|    322|  2355|
|24 months |COHORTS       |PHILIPPINES  |>=38    |       1|      4|  2355|
|24 months |COHORTS       |PHILIPPINES  |[32-38) |       0|    420|  2355|
|24 months |COHORTS       |PHILIPPINES  |[32-38) |       1|      7|  2355|
|24 months |COHORTS       |PHILIPPINES  |<32     |       0|   1589|  2355|
|24 months |COHORTS       |PHILIPPINES  |<32     |       1|     13|  2355|
|24 months |LCNI-5        |MALAWI       |>=38    |       0|     12|    35|
|24 months |LCNI-5        |MALAWI       |>=38    |       1|      0|    35|
|24 months |LCNI-5        |MALAWI       |[32-38) |       0|      5|    35|
|24 months |LCNI-5        |MALAWI       |[32-38) |       1|      0|    35|
|24 months |LCNI-5        |MALAWI       |<32     |       0|     18|    35|
|24 months |LCNI-5        |MALAWI       |<32     |       1|      0|    35|
|24 months |MAL-ED        |INDIA        |>=38    |       0|     56|   147|
|24 months |MAL-ED        |INDIA        |>=38    |       1|      0|   147|
|24 months |MAL-ED        |INDIA        |[32-38) |       0|     48|   147|
|24 months |MAL-ED        |INDIA        |[32-38) |       1|      0|   147|
|24 months |MAL-ED        |INDIA        |<32     |       0|     43|   147|
|24 months |MAL-ED        |INDIA        |<32     |       1|      0|   147|
|24 months |MAL-ED        |BANGLADESH   |>=38    |       0|     68|   106|
|24 months |MAL-ED        |BANGLADESH   |>=38    |       1|      0|   106|
|24 months |MAL-ED        |BANGLADESH   |[32-38) |       0|     23|   106|
|24 months |MAL-ED        |BANGLADESH   |[32-38) |       1|      0|   106|
|24 months |MAL-ED        |BANGLADESH   |<32     |       0|     15|   106|
|24 months |MAL-ED        |BANGLADESH   |<32     |       1|      0|   106|
|24 months |MAL-ED        |PERU         |>=38    |       0|     29|    70|
|24 months |MAL-ED        |PERU         |>=38    |       1|      1|    70|
|24 months |MAL-ED        |PERU         |[32-38) |       0|     19|    70|
|24 months |MAL-ED        |PERU         |[32-38) |       1|      0|    70|
|24 months |MAL-ED        |PERU         |<32     |       0|     21|    70|
|24 months |MAL-ED        |PERU         |<32     |       1|      0|    70|
|24 months |MAL-ED        |NEPAL        |>=38    |       0|     35|    81|
|24 months |MAL-ED        |NEPAL        |>=38    |       1|      0|    81|
|24 months |MAL-ED        |NEPAL        |[32-38) |       0|     30|    81|
|24 months |MAL-ED        |NEPAL        |[32-38) |       1|      0|    81|
|24 months |MAL-ED        |NEPAL        |<32     |       0|     16|    81|
|24 months |MAL-ED        |NEPAL        |<32     |       1|      0|    81|
|24 months |MAL-ED        |BRAZIL       |>=38    |       0|     29|    51|
|24 months |MAL-ED        |BRAZIL       |>=38    |       1|      0|    51|
|24 months |MAL-ED        |BRAZIL       |[32-38) |       0|      7|    51|
|24 months |MAL-ED        |BRAZIL       |[32-38) |       1|      1|    51|
|24 months |MAL-ED        |BRAZIL       |<32     |       0|     14|    51|
|24 months |MAL-ED        |BRAZIL       |<32     |       1|      0|    51|
|24 months |MAL-ED        |TANZANIA     |>=38    |       0|     46|    83|
|24 months |MAL-ED        |TANZANIA     |>=38    |       1|      0|    83|
|24 months |MAL-ED        |TANZANIA     |[32-38) |       0|     20|    83|
|24 months |MAL-ED        |TANZANIA     |[32-38) |       1|      0|    83|
|24 months |MAL-ED        |TANZANIA     |<32     |       0|     17|    83|
|24 months |MAL-ED        |TANZANIA     |<32     |       1|      0|    83|
|24 months |MAL-ED        |SOUTH AFRICA |>=38    |       0|     66|    96|
|24 months |MAL-ED        |SOUTH AFRICA |>=38    |       1|      0|    96|
|24 months |MAL-ED        |SOUTH AFRICA |[32-38) |       0|     23|    96|
|24 months |MAL-ED        |SOUTH AFRICA |[32-38) |       1|      0|    96|
|24 months |MAL-ED        |SOUTH AFRICA |<32     |       0|      7|    96|
|24 months |MAL-ED        |SOUTH AFRICA |<32     |       1|      0|    96|
|24 months |PROBIT        |BELARUS      |>=38    |       0|    183|  3820|
|24 months |PROBIT        |BELARUS      |>=38    |       1|      0|  3820|
|24 months |PROBIT        |BELARUS      |[32-38) |       0|    585|  3820|
|24 months |PROBIT        |BELARUS      |[32-38) |       1|      5|  3820|
|24 months |PROBIT        |BELARUS      |<32     |       0|   3045|  3820|
|24 months |PROBIT        |BELARUS      |<32     |       1|      2|  3820|


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
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
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
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
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


