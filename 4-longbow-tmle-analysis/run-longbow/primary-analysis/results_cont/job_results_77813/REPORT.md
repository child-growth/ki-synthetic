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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** fage

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_fhtcm
* single
* brthmon
* delta_arm
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_fhtcm
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* syntype
* agecat
* studyid
* country

## Data Summary

|syntype |agecat    |studyid       |country      |fage    | n_cell|     n|
|:-------|:---------|:-------------|:------------|:-------|------:|-----:|
|BC      |Birth     |COHORTS       |GUATEMALA    |>=38    |    222|   741|
|BC      |Birth     |COHORTS       |GUATEMALA    |[32-38) |    186|   741|
|BC      |Birth     |COHORTS       |GUATEMALA    |<32     |    333|   741|
|BC      |Birth     |COHORTS       |PHILIPPINES  |>=38    |    380|  2785|
|BC      |Birth     |COHORTS       |PHILIPPINES  |[32-38) |    511|  2785|
|BC      |Birth     |COHORTS       |PHILIPPINES  |<32     |   1894|  2785|
|BC      |Birth     |MAL-ED        |INDIA        |>=38    |     13|    30|
|BC      |Birth     |MAL-ED        |INDIA        |[32-38) |      7|    30|
|BC      |Birth     |MAL-ED        |INDIA        |<32     |     10|    30|
|BC      |Birth     |MAL-ED        |BANGLADESH   |>=38    |     71|   109|
|BC      |Birth     |MAL-ED        |BANGLADESH   |[32-38) |     23|   109|
|BC      |Birth     |MAL-ED        |BANGLADESH   |<32     |     15|   109|
|BC      |Birth     |MAL-ED        |PERU         |>=38    |     35|    81|
|BC      |Birth     |MAL-ED        |PERU         |[32-38) |     19|    81|
|BC      |Birth     |MAL-ED        |PERU         |<32     |     27|    81|
|BC      |Birth     |MAL-ED        |NEPAL        |>=38    |      4|    10|
|BC      |Birth     |MAL-ED        |NEPAL        |[32-38) |      4|    10|
|BC      |Birth     |MAL-ED        |NEPAL        |<32     |      2|    10|
|BC      |Birth     |MAL-ED        |BRAZIL       |>=38    |      6|    16|
|BC      |Birth     |MAL-ED        |BRAZIL       |[32-38) |      5|    16|
|BC      |Birth     |MAL-ED        |BRAZIL       |<32     |      5|    16|
|BC      |Birth     |MAL-ED        |TANZANIA     |>=38    |     18|    42|
|BC      |Birth     |MAL-ED        |TANZANIA     |[32-38) |     14|    42|
|BC      |Birth     |MAL-ED        |TANZANIA     |<32     |     10|    42|
|BC      |Birth     |MAL-ED        |SOUTH AFRICA |>=38    |     28|    44|
|BC      |Birth     |MAL-ED        |SOUTH AFRICA |[32-38) |     11|    44|
|BC      |Birth     |MAL-ED        |SOUTH AFRICA |<32     |      5|    44|
|BC      |Birth     |PROBIT        |BELARUS      |>=38    |    654| 13315|
|BC      |Birth     |PROBIT        |BELARUS      |[32-38) |   2070| 13315|
|BC      |Birth     |PROBIT        |BELARUS      |<32     |  10591| 13315|
|BC      |Birth     |SAS-CompFeed  |INDIA        |>=38    |     46|  1103|
|BC      |Birth     |SAS-CompFeed  |INDIA        |[32-38) |    147|  1103|
|BC      |Birth     |SAS-CompFeed  |INDIA        |<32     |    910|  1103|
|BC      |6 months  |COHORTS       |GUATEMALA    |>=38    |    274|   938|
|BC      |6 months  |COHORTS       |GUATEMALA    |[32-38) |    237|   938|
|BC      |6 months  |COHORTS       |GUATEMALA    |<32     |    427|   938|
|BC      |6 months  |COHORTS       |PHILIPPINES  |>=38    |    355|  2601|
|BC      |6 months  |COHORTS       |PHILIPPINES  |[32-38) |    471|  2601|
|BC      |6 months  |COHORTS       |PHILIPPINES  |<32     |   1775|  2601|
|BC      |6 months  |LCNI-5        |MALAWI       |>=38    |     19|    50|
|BC      |6 months  |LCNI-5        |MALAWI       |[32-38) |      8|    50|
|BC      |6 months  |LCNI-5        |MALAWI       |<32     |     23|    50|
|BC      |6 months  |MAL-ED        |INDIA        |>=38    |     59|   154|
|BC      |6 months  |MAL-ED        |INDIA        |[32-38) |     51|   154|
|BC      |6 months  |MAL-ED        |INDIA        |<32     |     44|   154|
|BC      |6 months  |MAL-ED        |BANGLADESH   |>=38    |     76|   122|
|BC      |6 months  |MAL-ED        |BANGLADESH   |[32-38) |     30|   122|
|BC      |6 months  |MAL-ED        |BANGLADESH   |<32     |     16|   122|
|BC      |6 months  |MAL-ED        |PERU         |>=38    |     41|    97|
|BC      |6 months  |MAL-ED        |PERU         |[32-38) |     27|    97|
|BC      |6 months  |MAL-ED        |PERU         |<32     |     29|    97|
|BC      |6 months  |MAL-ED        |NEPAL        |>=38    |     37|    85|
|BC      |6 months  |MAL-ED        |NEPAL        |[32-38) |     31|    85|
|BC      |6 months  |MAL-ED        |NEPAL        |<32     |     17|    85|
|BC      |6 months  |MAL-ED        |BRAZIL       |>=38    |     34|    64|
|BC      |6 months  |MAL-ED        |BRAZIL       |[32-38) |     14|    64|
|BC      |6 months  |MAL-ED        |BRAZIL       |<32     |     16|    64|
|BC      |6 months  |MAL-ED        |TANZANIA     |>=38    |     50|    94|
|BC      |6 months  |MAL-ED        |TANZANIA     |[32-38) |     26|    94|
|BC      |6 months  |MAL-ED        |TANZANIA     |<32     |     18|    94|
|BC      |6 months  |MAL-ED        |SOUTH AFRICA |>=38    |     72|   103|
|BC      |6 months  |MAL-ED        |SOUTH AFRICA |[32-38) |     24|   103|
|BC      |6 months  |MAL-ED        |SOUTH AFRICA |<32     |      7|   103|
|BC      |6 months  |PROBIT        |BELARUS      |>=38    |    727| 15172|
|BC      |6 months  |PROBIT        |BELARUS      |[32-38) |   2369| 15172|
|BC      |6 months  |PROBIT        |BELARUS      |<32     |  12076| 15172|
|BC      |6 months  |SAS-CompFeed  |INDIA        |>=38    |     57|  1334|
|BC      |6 months  |SAS-CompFeed  |INDIA        |[32-38) |    180|  1334|
|BC      |6 months  |SAS-CompFeed  |INDIA        |<32     |   1097|  1334|
|BC      |6 months  |SAS-FoodSuppl |INDIA        |>=38    |     65|   380|
|BC      |6 months  |SAS-FoodSuppl |INDIA        |[32-38) |     89|   380|
|BC      |6 months  |SAS-FoodSuppl |INDIA        |<32     |    226|   380|
|BC      |24 months |COHORTS       |GUATEMALA    |>=38    |    323|  1052|
|BC      |24 months |COHORTS       |GUATEMALA    |[32-38) |    254|  1052|
|BC      |24 months |COHORTS       |GUATEMALA    |<32     |    475|  1052|
|BC      |24 months |COHORTS       |PHILIPPINES  |>=38    |    326|  2355|
|BC      |24 months |COHORTS       |PHILIPPINES  |[32-38) |    427|  2355|
|BC      |24 months |COHORTS       |PHILIPPINES  |<32     |   1602|  2355|
|BC      |24 months |LCNI-5        |MALAWI       |>=38    |     12|    35|
|BC      |24 months |LCNI-5        |MALAWI       |[32-38) |      5|    35|
|BC      |24 months |LCNI-5        |MALAWI       |<32     |     18|    35|
|BC      |24 months |MAL-ED        |INDIA        |>=38    |     56|   147|
|BC      |24 months |MAL-ED        |INDIA        |[32-38) |     48|   147|
|BC      |24 months |MAL-ED        |INDIA        |<32     |     43|   147|
|BC      |24 months |MAL-ED        |BANGLADESH   |>=38    |     68|   106|
|BC      |24 months |MAL-ED        |BANGLADESH   |[32-38) |     23|   106|
|BC      |24 months |MAL-ED        |BANGLADESH   |<32     |     15|   106|
|BC      |24 months |MAL-ED        |PERU         |>=38    |     30|    70|
|BC      |24 months |MAL-ED        |PERU         |[32-38) |     19|    70|
|BC      |24 months |MAL-ED        |PERU         |<32     |     21|    70|
|BC      |24 months |MAL-ED        |NEPAL        |>=38    |     35|    81|
|BC      |24 months |MAL-ED        |NEPAL        |[32-38) |     30|    81|
|BC      |24 months |MAL-ED        |NEPAL        |<32     |     16|    81|
|BC      |24 months |MAL-ED        |BRAZIL       |>=38    |     29|    51|
|BC      |24 months |MAL-ED        |BRAZIL       |[32-38) |      8|    51|
|BC      |24 months |MAL-ED        |BRAZIL       |<32     |     14|    51|
|BC      |24 months |MAL-ED        |TANZANIA     |>=38    |     46|    83|
|BC      |24 months |MAL-ED        |TANZANIA     |[32-38) |     20|    83|
|BC      |24 months |MAL-ED        |TANZANIA     |<32     |     17|    83|
|BC      |24 months |MAL-ED        |SOUTH AFRICA |>=38    |     66|    96|
|BC      |24 months |MAL-ED        |SOUTH AFRICA |[32-38) |     23|    96|
|BC      |24 months |MAL-ED        |SOUTH AFRICA |<32     |      7|    96|
|BC      |24 months |PROBIT        |BELARUS      |>=38    |    183|  3820|
|BC      |24 months |PROBIT        |BELARUS      |[32-38) |    590|  3820|
|BC      |24 months |PROBIT        |BELARUS      |<32     |   3047|  3820|
|FULL    |Birth     |COHORTS       |GUATEMALA    |>=38    |    280|   747|
|FULL    |Birth     |COHORTS       |GUATEMALA    |[32-38) |    160|   747|
|FULL    |Birth     |COHORTS       |GUATEMALA    |<32     |    307|   747|
|FULL    |Birth     |COHORTS       |PHILIPPINES  |>=38    |    309|  2793|
|FULL    |Birth     |COHORTS       |PHILIPPINES  |[32-38) |    534|  2793|
|FULL    |Birth     |COHORTS       |PHILIPPINES  |<32     |   1950|  2793|
|FULL    |Birth     |MAL-ED        |INDIA        |>=38    |     13|    26|
|FULL    |Birth     |MAL-ED        |INDIA        |[32-38) |      5|    26|
|FULL    |Birth     |MAL-ED        |INDIA        |<32     |      8|    26|
|FULL    |Birth     |MAL-ED        |BANGLADESH   |>=38    |     66|   133|
|FULL    |Birth     |MAL-ED        |BANGLADESH   |[32-38) |     49|   133|
|FULL    |Birth     |MAL-ED        |BANGLADESH   |<32     |     18|   133|
|FULL    |Birth     |MAL-ED        |PERU         |>=38    |     33|    75|
|FULL    |Birth     |MAL-ED        |PERU         |[32-38) |     22|    75|
|FULL    |Birth     |MAL-ED        |PERU         |<32     |     20|    75|
|FULL    |Birth     |MAL-ED        |NEPAL        |>=38    |      3|     9|
|FULL    |Birth     |MAL-ED        |NEPAL        |[32-38) |      5|     9|
|FULL    |Birth     |MAL-ED        |NEPAL        |<32     |      1|     9|
|FULL    |Birth     |MAL-ED        |BRAZIL       |>=38    |      5|    20|
|FULL    |Birth     |MAL-ED        |BRAZIL       |[32-38) |     11|    20|
|FULL    |Birth     |MAL-ED        |BRAZIL       |<32     |      4|    20|
|FULL    |Birth     |MAL-ED        |TANZANIA     |>=38    |     15|    39|
|FULL    |Birth     |MAL-ED        |TANZANIA     |[32-38) |     12|    39|
|FULL    |Birth     |MAL-ED        |TANZANIA     |<32     |     12|    39|
|FULL    |Birth     |MAL-ED        |SOUTH AFRICA |>=38    |     23|    29|
|FULL    |Birth     |MAL-ED        |SOUTH AFRICA |[32-38) |      4|    29|
|FULL    |Birth     |MAL-ED        |SOUTH AFRICA |<32     |      2|    29|
|FULL    |Birth     |PROBIT        |BELARUS      |>=38    |    610| 13335|
|FULL    |Birth     |PROBIT        |BELARUS      |[32-38) |   2111| 13335|
|FULL    |Birth     |PROBIT        |BELARUS      |<32     |  10614| 13335|
|FULL    |Birth     |SAS-CompFeed  |INDIA        |>=38    |     37|  1103|
|FULL    |Birth     |SAS-CompFeed  |INDIA        |[32-38) |    129|  1103|
|FULL    |Birth     |SAS-CompFeed  |INDIA        |<32     |    937|  1103|
|FULL    |6 months  |COHORTS       |GUATEMALA    |>=38    |    348|   946|
|FULL    |6 months  |COHORTS       |GUATEMALA    |[32-38) |    217|   946|
|FULL    |6 months  |COHORTS       |GUATEMALA    |<32     |    381|   946|
|FULL    |6 months  |COHORTS       |PHILIPPINES  |>=38    |    303|  2613|
|FULL    |6 months  |COHORTS       |PHILIPPINES  |[32-38) |    514|  2613|
|FULL    |6 months  |COHORTS       |PHILIPPINES  |<32     |   1796|  2613|
|FULL    |6 months  |LCNI-5        |MALAWI       |>=38    |     30|   106|
|FULL    |6 months  |LCNI-5        |MALAWI       |[32-38) |     18|   106|
|FULL    |6 months  |LCNI-5        |MALAWI       |<32     |     58|   106|
|FULL    |6 months  |MAL-ED        |INDIA        |>=38    |     50|   166|
|FULL    |6 months  |MAL-ED        |INDIA        |[32-38) |     58|   166|
|FULL    |6 months  |MAL-ED        |INDIA        |<32     |     58|   166|
|FULL    |6 months  |MAL-ED        |BANGLADESH   |>=38    |     78|   160|
|FULL    |6 months  |MAL-ED        |BANGLADESH   |[32-38) |     57|   160|
|FULL    |6 months  |MAL-ED        |BANGLADESH   |<32     |     25|   160|
|FULL    |6 months  |MAL-ED        |PERU         |>=38    |     44|    95|
|FULL    |6 months  |MAL-ED        |PERU         |[32-38) |     25|    95|
|FULL    |6 months  |MAL-ED        |PERU         |<32     |     26|    95|
|FULL    |6 months  |MAL-ED        |NEPAL        |>=38    |     28|    78|
|FULL    |6 months  |MAL-ED        |NEPAL        |[32-38) |     35|    78|
|FULL    |6 months  |MAL-ED        |NEPAL        |<32     |     15|    78|
|FULL    |6 months  |MAL-ED        |BRAZIL       |>=38    |     35|    92|
|FULL    |6 months  |MAL-ED        |BRAZIL       |[32-38) |     27|    92|
|FULL    |6 months  |MAL-ED        |BRAZIL       |<32     |     30|    92|
|FULL    |6 months  |MAL-ED        |TANZANIA     |>=38    |     46|    90|
|FULL    |6 months  |MAL-ED        |TANZANIA     |[32-38) |     25|    90|
|FULL    |6 months  |MAL-ED        |TANZANIA     |<32     |     19|    90|
|FULL    |6 months  |MAL-ED        |SOUTH AFRICA |>=38    |     65|    86|
|FULL    |6 months  |MAL-ED        |SOUTH AFRICA |[32-38) |     15|    86|
|FULL    |6 months  |MAL-ED        |SOUTH AFRICA |<32     |      6|    86|
|FULL    |6 months  |PROBIT        |BELARUS      |>=38    |    716| 15199|
|FULL    |6 months  |PROBIT        |BELARUS      |[32-38) |   2376| 15199|
|FULL    |6 months  |PROBIT        |BELARUS      |<32     |  12107| 15199|
|FULL    |6 months  |SAS-CompFeed  |INDIA        |>=38    |     47|  1334|
|FULL    |6 months  |SAS-CompFeed  |INDIA        |[32-38) |    151|  1334|
|FULL    |6 months  |SAS-CompFeed  |INDIA        |<32     |   1136|  1334|
|FULL    |6 months  |SAS-FoodSuppl |INDIA        |>=38    |     51|   380|
|FULL    |6 months  |SAS-FoodSuppl |INDIA        |[32-38) |    100|   380|
|FULL    |6 months  |SAS-FoodSuppl |INDIA        |<32     |    229|   380|
|FULL    |24 months |COHORTS       |GUATEMALA    |>=38    |    370|  1058|
|FULL    |24 months |COHORTS       |GUATEMALA    |[32-38) |    237|  1058|
|FULL    |24 months |COHORTS       |GUATEMALA    |<32     |    451|  1058|
|FULL    |24 months |COHORTS       |PHILIPPINES  |>=38    |    275|  2369|
|FULL    |24 months |COHORTS       |PHILIPPINES  |[32-38) |    454|  2369|
|FULL    |24 months |COHORTS       |PHILIPPINES  |<32     |   1640|  2369|
|FULL    |24 months |LCNI-5        |MALAWI       |>=38    |     23|    74|
|FULL    |24 months |LCNI-5        |MALAWI       |[32-38) |     11|    74|
|FULL    |24 months |LCNI-5        |MALAWI       |<32     |     40|    74|
|FULL    |24 months |MAL-ED        |INDIA        |>=38    |     49|   164|
|FULL    |24 months |MAL-ED        |INDIA        |[32-38) |     58|   164|
|FULL    |24 months |MAL-ED        |INDIA        |<32     |     57|   164|
|FULL    |24 months |MAL-ED        |BANGLADESH   |>=38    |     74|   154|
|FULL    |24 months |MAL-ED        |BANGLADESH   |[32-38) |     56|   154|
|FULL    |24 months |MAL-ED        |BANGLADESH   |<32     |     24|   154|
|FULL    |24 months |MAL-ED        |PERU         |>=38    |     37|    83|
|FULL    |24 months |MAL-ED        |PERU         |[32-38) |     21|    83|
|FULL    |24 months |MAL-ED        |PERU         |<32     |     25|    83|
|FULL    |24 months |MAL-ED        |NEPAL        |>=38    |     27|    76|
|FULL    |24 months |MAL-ED        |NEPAL        |[32-38) |     35|    76|
|FULL    |24 months |MAL-ED        |NEPAL        |<32     |     14|    76|
|FULL    |24 months |MAL-ED        |BRAZIL       |>=38    |     34|    84|
|FULL    |24 months |MAL-ED        |BRAZIL       |[32-38) |     24|    84|
|FULL    |24 months |MAL-ED        |BRAZIL       |<32     |     26|    84|
|FULL    |24 months |MAL-ED        |TANZANIA     |>=38    |     46|    87|
|FULL    |24 months |MAL-ED        |TANZANIA     |[32-38) |     23|    87|
|FULL    |24 months |MAL-ED        |TANZANIA     |<32     |     18|    87|
|FULL    |24 months |MAL-ED        |SOUTH AFRICA |>=38    |     64|    86|
|FULL    |24 months |MAL-ED        |SOUTH AFRICA |[32-38) |     15|    86|
|FULL    |24 months |MAL-ED        |SOUTH AFRICA |<32     |      7|    86|
|FULL    |24 months |PROBIT        |BELARUS      |>=38    |    181|  3848|
|FULL    |24 months |PROBIT        |BELARUS      |[32-38) |    589|  3848|
|FULL    |24 months |PROBIT        |BELARUS      |<32     |   3078|  3848|
|QI      |Birth     |COHORTS       |GUATEMALA    |>=38    |    223|   561|
|QI      |Birth     |COHORTS       |GUATEMALA    |[32-38) |    135|   561|
|QI      |Birth     |COHORTS       |GUATEMALA    |<32     |    203|   561|
|QI      |Birth     |COHORTS       |PHILIPPINES  |>=38    |    385|  2934|
|QI      |Birth     |COHORTS       |PHILIPPINES  |[32-38) |    561|  2934|
|QI      |Birth     |COHORTS       |PHILIPPINES  |<32     |   1988|  2934|
|QI      |Birth     |MAL-ED        |INDIA        |>=38    |     41|   151|
|QI      |Birth     |MAL-ED        |INDIA        |[32-38) |     55|   151|
|QI      |Birth     |MAL-ED        |INDIA        |<32     |     55|   151|
|QI      |Birth     |MAL-ED        |BANGLADESH   |>=38    |     84|   152|
|QI      |Birth     |MAL-ED        |BANGLADESH   |[32-38) |     48|   152|
|QI      |Birth     |MAL-ED        |BANGLADESH   |<32     |     20|   152|
|QI      |Birth     |MAL-ED        |PERU         |>=38    |     35|    82|
|QI      |Birth     |MAL-ED        |PERU         |[32-38) |     17|    82|
|QI      |Birth     |MAL-ED        |PERU         |<32     |     30|    82|
|QI      |Birth     |MAL-ED        |NEPAL        |>=38    |     26|    82|
|QI      |Birth     |MAL-ED        |NEPAL        |[32-38) |     32|    82|
|QI      |Birth     |MAL-ED        |NEPAL        |<32     |     24|    82|
|QI      |Birth     |MAL-ED        |BRAZIL       |>=38    |     41|    89|
|QI      |Birth     |MAL-ED        |BRAZIL       |[32-38) |     25|    89|
|QI      |Birth     |MAL-ED        |BRAZIL       |<32     |     23|    89|
|QI      |Birth     |MAL-ED        |TANZANIA     |>=38    |     43|    86|
|QI      |Birth     |MAL-ED        |TANZANIA     |[32-38) |     21|    86|
|QI      |Birth     |MAL-ED        |TANZANIA     |<32     |     22|    86|
|QI      |Birth     |MAL-ED        |SOUTH AFRICA |>=38    |     76|   107|
|QI      |Birth     |MAL-ED        |SOUTH AFRICA |[32-38) |     20|   107|
|QI      |Birth     |MAL-ED        |SOUTH AFRICA |<32     |     11|   107|
|QI      |Birth     |PROBIT        |BELARUS      |>=38    |    395|  6403|
|QI      |Birth     |PROBIT        |BELARUS      |[32-38) |   1062|  6403|
|QI      |Birth     |PROBIT        |BELARUS      |<32     |   4946|  6403|
|QI      |Birth     |SAS-CompFeed  |INDIA        |>=38    |     27|   393|
|QI      |Birth     |SAS-CompFeed  |INDIA        |[32-38) |     74|   393|
|QI      |Birth     |SAS-CompFeed  |INDIA        |<32     |    292|   393|
|QI      |6 months  |COHORTS       |GUATEMALA    |>=38    |    150|   405|
|QI      |6 months  |COHORTS       |GUATEMALA    |[32-38) |    106|   405|
|QI      |6 months  |COHORTS       |GUATEMALA    |<32     |    149|   405|
|QI      |6 months  |COHORTS       |PHILIPPINES  |>=38    |    293|  2321|
|QI      |6 months  |COHORTS       |PHILIPPINES  |[32-38) |    451|  2321|
|QI      |6 months  |COHORTS       |PHILIPPINES  |<32     |   1577|  2321|
|QI      |6 months  |LCNI-5        |MALAWI       |>=38    |     21|    56|
|QI      |6 months  |LCNI-5        |MALAWI       |[32-38) |      8|    56|
|QI      |6 months  |LCNI-5        |MALAWI       |<32     |     27|    56|
|QI      |6 months  |MAL-ED        |INDIA        |>=38    |     42|   149|
|QI      |6 months  |MAL-ED        |INDIA        |[32-38) |     54|   149|
|QI      |6 months  |MAL-ED        |INDIA        |<32     |     53|   149|
|QI      |6 months  |MAL-ED        |BANGLADESH   |>=38    |     79|   144|
|QI      |6 months  |MAL-ED        |BANGLADESH   |[32-38) |     45|   144|
|QI      |6 months  |MAL-ED        |BANGLADESH   |<32     |     20|   144|
|QI      |6 months  |MAL-ED        |PERU         |>=38    |     31|    74|
|QI      |6 months  |MAL-ED        |PERU         |[32-38) |     17|    74|
|QI      |6 months  |MAL-ED        |PERU         |<32     |     26|    74|
|QI      |6 months  |MAL-ED        |NEPAL        |>=38    |     25|    79|
|QI      |6 months  |MAL-ED        |NEPAL        |[32-38) |     30|    79|
|QI      |6 months  |MAL-ED        |NEPAL        |<32     |     24|    79|
|QI      |6 months  |MAL-ED        |BRAZIL       |>=38    |     40|    86|
|QI      |6 months  |MAL-ED        |BRAZIL       |[32-38) |     23|    86|
|QI      |6 months  |MAL-ED        |BRAZIL       |<32     |     23|    86|
|QI      |6 months  |MAL-ED        |TANZANIA     |>=38    |     53|   101|
|QI      |6 months  |MAL-ED        |TANZANIA     |[32-38) |     25|   101|
|QI      |6 months  |MAL-ED        |TANZANIA     |<32     |     23|   101|
|QI      |6 months  |MAL-ED        |SOUTH AFRICA |>=38    |     74|   103|
|QI      |6 months  |MAL-ED        |SOUTH AFRICA |[32-38) |     18|   103|
|QI      |6 months  |MAL-ED        |SOUTH AFRICA |<32     |     11|   103|
|QI      |6 months  |PROBIT        |BELARUS      |>=38    |    303|  4946|
|QI      |6 months  |PROBIT        |BELARUS      |[32-38) |    748|  4946|
|QI      |6 months  |PROBIT        |BELARUS      |<32     |   3895|  4946|
|QI      |6 months  |SAS-CompFeed  |INDIA        |>=38    |     21|   271|
|QI      |6 months  |SAS-CompFeed  |INDIA        |[32-38) |     49|   271|
|QI      |6 months  |SAS-CompFeed  |INDIA        |<32     |    201|   271|
|QI      |6 months  |SAS-FoodSuppl |INDIA        |>=38    |     48|   255|
|QI      |6 months  |SAS-FoodSuppl |INDIA        |[32-38) |     77|   255|
|QI      |6 months  |SAS-FoodSuppl |INDIA        |<32     |    130|   255|
|QI      |24 months |COHORTS       |GUATEMALA    |>=38    |     14|    30|
|QI      |24 months |COHORTS       |GUATEMALA    |[32-38) |      7|    30|
|QI      |24 months |COHORTS       |GUATEMALA    |<32     |      9|    30|
|QI      |24 months |COHORTS       |PHILIPPINES  |>=38    |     34|   284|
|QI      |24 months |COHORTS       |PHILIPPINES  |[32-38) |     60|   284|
|QI      |24 months |COHORTS       |PHILIPPINES  |<32     |    190|   284|
|QI      |24 months |LCNI-5        |MALAWI       |>=38    |      1|     5|
|QI      |24 months |LCNI-5        |MALAWI       |[32-38) |      0|     5|
|QI      |24 months |LCNI-5        |MALAWI       |<32     |      4|     5|
|QI      |24 months |MAL-ED        |INDIA        |>=38    |     18|    65|
|QI      |24 months |MAL-ED        |INDIA        |[32-38) |     25|    65|
|QI      |24 months |MAL-ED        |INDIA        |<32     |     22|    65|
|QI      |24 months |MAL-ED        |BANGLADESH   |>=38    |     42|    68|
|QI      |24 months |MAL-ED        |BANGLADESH   |[32-38) |     20|    68|
|QI      |24 months |MAL-ED        |BANGLADESH   |<32     |      6|    68|
|QI      |24 months |MAL-ED        |PERU         |>=38    |     10|    24|
|QI      |24 months |MAL-ED        |PERU         |[32-38) |      8|    24|
|QI      |24 months |MAL-ED        |PERU         |<32     |      6|    24|
|QI      |24 months |MAL-ED        |NEPAL        |>=38    |     13|    36|
|QI      |24 months |MAL-ED        |NEPAL        |[32-38) |     12|    36|
|QI      |24 months |MAL-ED        |NEPAL        |<32     |     11|    36|
|QI      |24 months |MAL-ED        |BRAZIL       |>=38    |     21|    36|
|QI      |24 months |MAL-ED        |BRAZIL       |[32-38) |     10|    36|
|QI      |24 months |MAL-ED        |BRAZIL       |<32     |      5|    36|
|QI      |24 months |MAL-ED        |TANZANIA     |>=38    |     22|    38|
|QI      |24 months |MAL-ED        |TANZANIA     |[32-38) |     12|    38|
|QI      |24 months |MAL-ED        |TANZANIA     |<32     |      4|    38|
|QI      |24 months |MAL-ED        |SOUTH AFRICA |>=38    |     14|    26|
|QI      |24 months |MAL-ED        |SOUTH AFRICA |[32-38) |     10|    26|
|QI      |24 months |MAL-ED        |SOUTH AFRICA |<32     |      2|    26|
|QI      |24 months |PROBIT        |BELARUS      |>=38    |      8|   139|
|QI      |24 months |PROBIT        |BELARUS      |[32-38) |     32|   139|
|QI      |24 months |PROBIT        |BELARUS      |<32     |     99|   139|
|QI      |24 months |SAS-CompFeed  |INDIA        |>=38    |      0|     3|
|QI      |24 months |SAS-CompFeed  |INDIA        |[32-38) |      1|     3|
|QI      |24 months |SAS-CompFeed  |INDIA        |<32     |      2|     3|
|QI      |24 months |SAS-FoodSuppl |INDIA        |>=38    |      0|     6|
|QI      |24 months |SAS-FoodSuppl |INDIA        |[32-38) |      1|     6|
|QI      |24 months |SAS-FoodSuppl |INDIA        |<32     |      5|     6|


The following strata were considered:

* syntype: BC, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* syntype: BC, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* syntype: BC, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: BC, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: BC, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* syntype: FULL, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* syntype: FULL, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: FULL, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: 24 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 24 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: QI, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: Birth, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* syntype: BC, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: 24 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 24 months, studyid: SAS-FoodSuppl, country: INDIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


