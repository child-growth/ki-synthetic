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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** meducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |meducyrs | wast_rec90d| n_cell|    n|
|:-----------|:--------------|:------------|:--------|-----------:|------:|----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Low      |           0|     41|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Low      |           1|     63|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Medium   |           0|     29|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Medium   |           1|     58|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |High     |           0|     50|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |High     |           1|     83|  324|
|0-24 months |COHORTS        |INDIA        |Low      |           0|    476| 2380|
|0-24 months |COHORTS        |INDIA        |Low      |           1|    170| 2380|
|0-24 months |COHORTS        |INDIA        |Medium   |           0|    982| 2380|
|0-24 months |COHORTS        |INDIA        |Medium   |           1|    318| 2380|
|0-24 months |COHORTS        |INDIA        |High     |           0|    338| 2380|
|0-24 months |COHORTS        |INDIA        |High     |           1|     96| 2380|
|0-24 months |COHORTS        |GUATEMALA    |Low      |           0|    105|  380|
|0-24 months |COHORTS        |GUATEMALA    |Low      |           1|     84|  380|
|0-24 months |COHORTS        |GUATEMALA    |Medium   |           0|     70|  380|
|0-24 months |COHORTS        |GUATEMALA    |Medium   |           1|     59|  380|
|0-24 months |COHORTS        |GUATEMALA    |High     |           0|     38|  380|
|0-24 months |COHORTS        |GUATEMALA    |High     |           1|     24|  380|
|0-24 months |COHORTS        |PHILIPPINES  |Low      |           0|    301| 1689|
|0-24 months |COHORTS        |PHILIPPINES  |Low      |           1|    389| 1689|
|0-24 months |COHORTS        |PHILIPPINES  |Medium   |           0|    120| 1689|
|0-24 months |COHORTS        |PHILIPPINES  |Medium   |           1|    190| 1689|
|0-24 months |COHORTS        |PHILIPPINES  |High     |           0|    243| 1689|
|0-24 months |COHORTS        |PHILIPPINES  |High     |           1|    446| 1689|
|0-24 months |EE             |PAKISTAN     |Low      |           0|    133|  321|
|0-24 months |EE             |PAKISTAN     |Low      |           1|    136|  321|
|0-24 months |EE             |PAKISTAN     |Medium   |           0|     14|  321|
|0-24 months |EE             |PAKISTAN     |Medium   |           1|     16|  321|
|0-24 months |EE             |PAKISTAN     |High     |           0|     12|  321|
|0-24 months |EE             |PAKISTAN     |High     |           1|     10|  321|
|0-24 months |GMS-Nepal      |NEPAL        |Low      |           0|    227|  643|
|0-24 months |GMS-Nepal      |NEPAL        |Low      |           1|    225|  643|
|0-24 months |GMS-Nepal      |NEPAL        |Medium   |           0|     44|  643|
|0-24 months |GMS-Nepal      |NEPAL        |Medium   |           1|     76|  643|
|0-24 months |GMS-Nepal      |NEPAL        |High     |           0|     25|  643|
|0-24 months |GMS-Nepal      |NEPAL        |High     |           1|     46|  643|
|0-24 months |Guatemala BSC  |GUATEMALA    |Low      |           0|      6|   36|
|0-24 months |Guatemala BSC  |GUATEMALA    |Low      |           1|      0|   36|
|0-24 months |Guatemala BSC  |GUATEMALA    |Medium   |           0|      7|   36|
|0-24 months |Guatemala BSC  |GUATEMALA    |Medium   |           1|      7|   36|
|0-24 months |Guatemala BSC  |GUATEMALA    |High     |           0|      7|   36|
|0-24 months |Guatemala BSC  |GUATEMALA    |High     |           1|      9|   36|
|0-24 months |JiVitA-3       |BANGLADESH   |Low      |           0|   1601| 7566|
|0-24 months |JiVitA-3       |BANGLADESH   |Low      |           1|   1172| 7566|
|0-24 months |JiVitA-3       |BANGLADESH   |Medium   |           0|   1319| 7566|
|0-24 months |JiVitA-3       |BANGLADESH   |Medium   |           1|    915| 7566|
|0-24 months |JiVitA-3       |BANGLADESH   |High     |           0|   1451| 7566|
|0-24 months |JiVitA-3       |BANGLADESH   |High     |           1|   1108| 7566|
|0-24 months |JiVitA-4       |BANGLADESH   |Low      |           0|    502| 2063|
|0-24 months |JiVitA-4       |BANGLADESH   |Low      |           1|    172| 2063|
|0-24 months |JiVitA-4       |BANGLADESH   |Medium   |           0|    501| 2063|
|0-24 months |JiVitA-4       |BANGLADESH   |Medium   |           1|    147| 2063|
|0-24 months |JiVitA-4       |BANGLADESH   |High     |           0|    527| 2063|
|0-24 months |JiVitA-4       |BANGLADESH   |High     |           1|    214| 2063|
|0-24 months |LCNI-5         |MALAWI       |Low      |           0|     18|   78|
|0-24 months |LCNI-5         |MALAWI       |Low      |           1|      6|   78|
|0-24 months |LCNI-5         |MALAWI       |Medium   |           0|     21|   78|
|0-24 months |LCNI-5         |MALAWI       |Medium   |           1|      2|   78|
|0-24 months |LCNI-5         |MALAWI       |High     |           0|     26|   78|
|0-24 months |LCNI-5         |MALAWI       |High     |           1|      5|   78|
|0-24 months |MAL-ED         |INDIA        |Low      |           0|     22|  146|
|0-24 months |MAL-ED         |INDIA        |Low      |           1|     32|  146|
|0-24 months |MAL-ED         |INDIA        |Medium   |           0|      9|  146|
|0-24 months |MAL-ED         |INDIA        |Medium   |           1|     25|  146|
|0-24 months |MAL-ED         |INDIA        |High     |           0|     24|  146|
|0-24 months |MAL-ED         |INDIA        |High     |           1|     34|  146|
|0-24 months |MAL-ED         |BANGLADESH   |Low      |           0|     15|  122|
|0-24 months |MAL-ED         |BANGLADESH   |Low      |           1|     26|  122|
|0-24 months |MAL-ED         |BANGLADESH   |Medium   |           0|      7|  122|
|0-24 months |MAL-ED         |BANGLADESH   |Medium   |           1|     17|  122|
|0-24 months |MAL-ED         |BANGLADESH   |High     |           0|     21|  122|
|0-24 months |MAL-ED         |BANGLADESH   |High     |           1|     36|  122|
|0-24 months |MAL-ED         |PERU         |Low      |           0|      1|   35|
|0-24 months |MAL-ED         |PERU         |Low      |           1|     10|   35|
|0-24 months |MAL-ED         |PERU         |Medium   |           0|      2|   35|
|0-24 months |MAL-ED         |PERU         |Medium   |           1|     13|   35|
|0-24 months |MAL-ED         |PERU         |High     |           0|      3|   35|
|0-24 months |MAL-ED         |PERU         |High     |           1|      6|   35|
|0-24 months |MAL-ED         |NEPAL        |Low      |           0|     11|   94|
|0-24 months |MAL-ED         |NEPAL        |Low      |           1|     34|   94|
|0-24 months |MAL-ED         |NEPAL        |Medium   |           0|      6|   94|
|0-24 months |MAL-ED         |NEPAL        |Medium   |           1|     23|   94|
|0-24 months |MAL-ED         |NEPAL        |High     |           0|      1|   94|
|0-24 months |MAL-ED         |NEPAL        |High     |           1|     19|   94|
|0-24 months |MAL-ED         |BRAZIL       |Low      |           0|      1|   24|
|0-24 months |MAL-ED         |BRAZIL       |Low      |           1|      7|   24|
|0-24 months |MAL-ED         |BRAZIL       |Medium   |           0|      3|   24|
|0-24 months |MAL-ED         |BRAZIL       |Medium   |           1|      7|   24|
|0-24 months |MAL-ED         |BRAZIL       |High     |           0|      2|   24|
|0-24 months |MAL-ED         |BRAZIL       |High     |           1|      4|   24|
|0-24 months |MAL-ED         |TANZANIA     |Low      |           0|      0|   45|
|0-24 months |MAL-ED         |TANZANIA     |Low      |           1|     11|   45|
|0-24 months |MAL-ED         |TANZANIA     |Medium   |           0|      4|   45|
|0-24 months |MAL-ED         |TANZANIA     |Medium   |           1|     13|   45|
|0-24 months |MAL-ED         |TANZANIA     |High     |           0|      4|   45|
|0-24 months |MAL-ED         |TANZANIA     |High     |           1|     13|   45|
|0-24 months |MAL-ED         |SOUTH AFRICA |Low      |           0|      6|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |Low      |           1|     36|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |Medium   |           0|      5|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |Medium   |           1|      9|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |High     |           0|      7|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |High     |           1|     24|   87|
|0-24 months |NIH-Birth      |BANGLADESH   |Low      |           0|     88|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |Low      |           1|     97|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |Medium   |           0|     68|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |Medium   |           1|     68|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |High     |           0|     46|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |High     |           1|     54|  421|
|0-24 months |NIH-Crypto     |BANGLADESH   |Low      |           0|     38|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |Low      |           1|     64|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |Medium   |           0|     21|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |Medium   |           1|     39|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |High     |           0|     58|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |High     |           1|     90|  310|
|0-24 months |PROBIT         |BELARUS      |Low      |           0|    178| 4408|
|0-24 months |PROBIT         |BELARUS      |Low      |           1|   1204| 4408|
|0-24 months |PROBIT         |BELARUS      |Medium   |           0|    265| 4408|
|0-24 months |PROBIT         |BELARUS      |Medium   |           1|   2014| 4408|
|0-24 months |PROBIT         |BELARUS      |High     |           0|     83| 4408|
|0-24 months |PROBIT         |BELARUS      |High     |           1|    664| 4408|
|0-24 months |PROVIDE        |BANGLADESH   |Low      |           0|     48|  308|
|0-24 months |PROVIDE        |BANGLADESH   |Low      |           1|     48|  308|
|0-24 months |PROVIDE        |BANGLADESH   |Medium   |           0|     49|  308|
|0-24 months |PROVIDE        |BANGLADESH   |Medium   |           1|     72|  308|
|0-24 months |PROVIDE        |BANGLADESH   |High     |           0|     32|  308|
|0-24 months |PROVIDE        |BANGLADESH   |High     |           1|     59|  308|
|0-24 months |SAS-CompFeed   |INDIA        |Low      |           0|    243|  811|
|0-24 months |SAS-CompFeed   |INDIA        |Low      |           1|    146|  811|
|0-24 months |SAS-CompFeed   |INDIA        |Medium   |           0|    165|  811|
|0-24 months |SAS-CompFeed   |INDIA        |Medium   |           1|     97|  811|
|0-24 months |SAS-CompFeed   |INDIA        |High     |           0|     94|  811|
|0-24 months |SAS-CompFeed   |INDIA        |High     |           1|     66|  811|
|0-24 months |SAS-FoodSuppl  |INDIA        |Low      |           0|    172|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |Low      |           1|      9|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |Medium   |           0|     26|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |Medium   |           1|      3|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |High     |           0|     23|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |High     |           1|      1|  234|
|0-24 months |TanzaniaChild2 |TANZANIA     |Low      |           0|      9|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |Low      |           1|     27|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |Medium   |           0|    200|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |Medium   |           1|    307|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |High     |           0|     57|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |High     |           1|    113|  713|
|0-24 months |Vellore Crypto |INDIA        |Low      |           0|     48|  395|
|0-24 months |Vellore Crypto |INDIA        |Low      |           1|     84|  395|
|0-24 months |Vellore Crypto |INDIA        |Medium   |           0|     66|  395|
|0-24 months |Vellore Crypto |INDIA        |Medium   |           1|     82|  395|
|0-24 months |Vellore Crypto |INDIA        |High     |           0|     48|  395|
|0-24 months |Vellore Crypto |INDIA        |High     |           1|     67|  395|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Low      |           0|    288| 3614|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Low      |           1|    370| 3614|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |           0|    440| 3614|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |           1|    484| 3614|
|0-24 months |ZVITAMBO       |ZIMBABWE     |High     |           0|    922| 3614|
|0-24 months |ZVITAMBO       |ZIMBABWE     |High     |           1|   1110| 3614|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Low      |           0|     26|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Low      |           1|     41|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Medium   |           0|     16|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Medium   |           1|     36|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |High     |           0|     24|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |High     |           1|     58|  201|
|0-6 months  |COHORTS        |INDIA        |Low      |           0|    248| 1610|
|0-6 months  |COHORTS        |INDIA        |Low      |           1|    170| 1610|
|0-6 months  |COHORTS        |INDIA        |Medium   |           0|    582| 1610|
|0-6 months  |COHORTS        |INDIA        |Medium   |           1|    318| 1610|
|0-6 months  |COHORTS        |INDIA        |High     |           0|    196| 1610|
|0-6 months  |COHORTS        |INDIA        |High     |           1|     96| 1610|
|0-6 months  |COHORTS        |GUATEMALA    |Low      |           0|     26|  214|
|0-6 months  |COHORTS        |GUATEMALA    |Low      |           1|     81|  214|
|0-6 months  |COHORTS        |GUATEMALA    |Medium   |           0|     20|  214|
|0-6 months  |COHORTS        |GUATEMALA    |Medium   |           1|     55|  214|
|0-6 months  |COHORTS        |GUATEMALA    |High     |           0|      9|  214|
|0-6 months  |COHORTS        |GUATEMALA    |High     |           1|     23|  214|
|0-6 months  |COHORTS        |PHILIPPINES  |Low      |           0|     81|  752|
|0-6 months  |COHORTS        |PHILIPPINES  |Low      |           1|    181|  752|
|0-6 months  |COHORTS        |PHILIPPINES  |Medium   |           0|     30|  752|
|0-6 months  |COHORTS        |PHILIPPINES  |Medium   |           1|    101|  752|
|0-6 months  |COHORTS        |PHILIPPINES  |High     |           0|     87|  752|
|0-6 months  |COHORTS        |PHILIPPINES  |High     |           1|    272|  752|
|0-6 months  |EE             |PAKISTAN     |Low      |           0|     43|  126|
|0-6 months  |EE             |PAKISTAN     |Low      |           1|     59|  126|
|0-6 months  |EE             |PAKISTAN     |Medium   |           0|      6|  126|
|0-6 months  |EE             |PAKISTAN     |Medium   |           1|      8|  126|
|0-6 months  |EE             |PAKISTAN     |High     |           0|      6|  126|
|0-6 months  |EE             |PAKISTAN     |High     |           1|      4|  126|
|0-6 months  |GMS-Nepal      |NEPAL        |Low      |           0|     81|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |Low      |           1|    106|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |Medium   |           0|     14|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |Medium   |           1|     33|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |High     |           0|      9|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |High     |           1|     20|  263|
|0-6 months  |Guatemala BSC  |GUATEMALA    |Low      |           0|      4|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |Low      |           1|      0|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |Medium   |           0|      1|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |Medium   |           1|      1|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |High     |           0|      1|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |High     |           1|      3|   10|
|0-6 months  |JiVitA-3       |BANGLADESH   |Low      |           0|    587| 4730|
|0-6 months  |JiVitA-3       |BANGLADESH   |Low      |           1|   1172| 4730|
|0-6 months  |JiVitA-3       |BANGLADESH   |Medium   |           0|    454| 4730|
|0-6 months  |JiVitA-3       |BANGLADESH   |Medium   |           1|    915| 4730|
|0-6 months  |JiVitA-3       |BANGLADESH   |High     |           0|    494| 4730|
|0-6 months  |JiVitA-3       |BANGLADESH   |High     |           1|   1108| 4730|
|0-6 months  |JiVitA-4       |BANGLADESH   |Low      |           0|     73|  551|
|0-6 months  |JiVitA-4       |BANGLADESH   |Low      |           1|     95|  551|
|0-6 months  |JiVitA-4       |BANGLADESH   |Medium   |           0|     83|  551|
|0-6 months  |JiVitA-4       |BANGLADESH   |Medium   |           1|     89|  551|
|0-6 months  |JiVitA-4       |BANGLADESH   |High     |           0|     87|  551|
|0-6 months  |JiVitA-4       |BANGLADESH   |High     |           1|    124|  551|
|0-6 months  |LCNI-5         |MALAWI       |Low      |           0|      2|    4|
|0-6 months  |LCNI-5         |MALAWI       |Low      |           1|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |Medium   |           0|      1|    4|
|0-6 months  |LCNI-5         |MALAWI       |Medium   |           1|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |High     |           0|      1|    4|
|0-6 months  |LCNI-5         |MALAWI       |High     |           1|      0|    4|
|0-6 months  |MAL-ED         |INDIA        |Low      |           0|     11|   71|
|0-6 months  |MAL-ED         |INDIA        |Low      |           1|     16|   71|
|0-6 months  |MAL-ED         |INDIA        |Medium   |           0|      3|   71|
|0-6 months  |MAL-ED         |INDIA        |Medium   |           1|     11|   71|
|0-6 months  |MAL-ED         |INDIA        |High     |           0|      8|   71|
|0-6 months  |MAL-ED         |INDIA        |High     |           1|     22|   71|
|0-6 months  |MAL-ED         |BANGLADESH   |Low      |           0|      5|   61|
|0-6 months  |MAL-ED         |BANGLADESH   |Low      |           1|     16|   61|
|0-6 months  |MAL-ED         |BANGLADESH   |Medium   |           0|      2|   61|
|0-6 months  |MAL-ED         |BANGLADESH   |Medium   |           1|     10|   61|
|0-6 months  |MAL-ED         |BANGLADESH   |High     |           0|      5|   61|
|0-6 months  |MAL-ED         |BANGLADESH   |High     |           1|     23|   61|
|0-6 months  |MAL-ED         |PERU         |Low      |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |Low      |           1|      2|   11|
|0-6 months  |MAL-ED         |PERU         |Medium   |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |Medium   |           1|      7|   11|
|0-6 months  |MAL-ED         |PERU         |High     |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |High     |           1|      2|   11|
|0-6 months  |MAL-ED         |NEPAL        |Low      |           0|      6|   46|
|0-6 months  |MAL-ED         |NEPAL        |Low      |           1|     17|   46|
|0-6 months  |MAL-ED         |NEPAL        |Medium   |           0|      2|   46|
|0-6 months  |MAL-ED         |NEPAL        |Medium   |           1|     13|   46|
|0-6 months  |MAL-ED         |NEPAL        |High     |           0|      0|   46|
|0-6 months  |MAL-ED         |NEPAL        |High     |           1|      8|   46|
|0-6 months  |MAL-ED         |BRAZIL       |Low      |           0|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |Low      |           1|      7|   15|
|0-6 months  |MAL-ED         |BRAZIL       |Medium   |           0|      1|   15|
|0-6 months  |MAL-ED         |BRAZIL       |Medium   |           1|      4|   15|
|0-6 months  |MAL-ED         |BRAZIL       |High     |           0|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |High     |           1|      3|   15|
|0-6 months  |MAL-ED         |TANZANIA     |Low      |           0|      0|   11|
|0-6 months  |MAL-ED         |TANZANIA     |Low      |           1|      2|   11|
|0-6 months  |MAL-ED         |TANZANIA     |Medium   |           0|      0|   11|
|0-6 months  |MAL-ED         |TANZANIA     |Medium   |           1|      4|   11|
|0-6 months  |MAL-ED         |TANZANIA     |High     |           0|      0|   11|
|0-6 months  |MAL-ED         |TANZANIA     |High     |           1|      5|   11|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Low      |           0|      3|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Low      |           1|     14|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Medium   |           0|      3|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Medium   |           1|      4|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |High     |           0|      3|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |High     |           1|      9|   36|
|0-6 months  |NIH-Birth      |BANGLADESH   |Low      |           0|     29|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |Low      |           1|     71|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |Medium   |           0|     22|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |Medium   |           1|     50|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |High     |           0|     13|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |High     |           1|     38|  223|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Low      |           0|      8|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Low      |           1|     57|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Medium   |           0|      4|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Medium   |           1|     35|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |High     |           0|      9|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |High     |           1|     84|  197|
|0-6 months  |PROBIT         |BELARUS      |Low      |           0|    145| 4267|
|0-6 months  |PROBIT         |BELARUS      |Low      |           1|   1186| 4267|
|0-6 months  |PROBIT         |BELARUS      |Medium   |           0|    211| 4267|
|0-6 months  |PROBIT         |BELARUS      |Medium   |           1|   1995| 4267|
|0-6 months  |PROBIT         |BELARUS      |High     |           0|     67| 4267|
|0-6 months  |PROBIT         |BELARUS      |High     |           1|    663| 4267|
|0-6 months  |PROVIDE        |BANGLADESH   |Low      |           0|     16|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |Low      |           1|     36|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |Medium   |           0|     15|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |Medium   |           1|     62|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |High     |           0|      9|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |High     |           1|     47|  185|
|0-6 months  |SAS-CompFeed   |INDIA        |Low      |           0|     76|  339|
|0-6 months  |SAS-CompFeed   |INDIA        |Low      |           1|     85|  339|
|0-6 months  |SAS-CompFeed   |INDIA        |Medium   |           0|     59|  339|
|0-6 months  |SAS-CompFeed   |INDIA        |Medium   |           1|     51|  339|
|0-6 months  |SAS-CompFeed   |INDIA        |High     |           0|     29|  339|
|0-6 months  |SAS-CompFeed   |INDIA        |High     |           1|     39|  339|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Low      |           0|     57|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Low      |           1|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Medium   |           0|     13|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Medium   |           1|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |High     |           0|      8|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |High     |           1|      0|   78|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Low      |           0|      4|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Low      |           1|     18|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Medium   |           0|     74|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Medium   |           1|    164|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |High     |           0|     23|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |High     |           1|     57|  340|
|0-6 months  |Vellore Crypto |INDIA        |Low      |           0|     25|  240|
|0-6 months  |Vellore Crypto |INDIA        |Low      |           1|     59|  240|
|0-6 months  |Vellore Crypto |INDIA        |Medium   |           0|     35|  240|
|0-6 months  |Vellore Crypto |INDIA        |Medium   |           1|     53|  240|
|0-6 months  |Vellore Crypto |INDIA        |High     |           0|     27|  240|
|0-6 months  |Vellore Crypto |INDIA        |High     |           1|     41|  240|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Low      |           0|    104| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Low      |           1|    354| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |           0|    169| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |           1|    463| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |High     |           0|    363| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |High     |           1|   1066| 2519|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Low      |           0|     15|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Low      |           1|     22|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Medium   |           0|     13|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |Medium   |           1|     22|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |High     |           0|     26|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |High     |           1|     25|  123|
|6-24 months |COHORTS        |INDIA        |Low      |           0|    228|  770|
|6-24 months |COHORTS        |INDIA        |Low      |           1|      0|  770|
|6-24 months |COHORTS        |INDIA        |Medium   |           0|    400|  770|
|6-24 months |COHORTS        |INDIA        |Medium   |           1|      0|  770|
|6-24 months |COHORTS        |INDIA        |High     |           0|    142|  770|
|6-24 months |COHORTS        |INDIA        |High     |           1|      0|  770|
|6-24 months |COHORTS        |GUATEMALA    |Low      |           0|     79|  166|
|6-24 months |COHORTS        |GUATEMALA    |Low      |           1|      3|  166|
|6-24 months |COHORTS        |GUATEMALA    |Medium   |           0|     50|  166|
|6-24 months |COHORTS        |GUATEMALA    |Medium   |           1|      4|  166|
|6-24 months |COHORTS        |GUATEMALA    |High     |           0|     29|  166|
|6-24 months |COHORTS        |GUATEMALA    |High     |           1|      1|  166|
|6-24 months |COHORTS        |PHILIPPINES  |Low      |           0|    220|  937|
|6-24 months |COHORTS        |PHILIPPINES  |Low      |           1|    208|  937|
|6-24 months |COHORTS        |PHILIPPINES  |Medium   |           0|     90|  937|
|6-24 months |COHORTS        |PHILIPPINES  |Medium   |           1|     89|  937|
|6-24 months |COHORTS        |PHILIPPINES  |High     |           0|    156|  937|
|6-24 months |COHORTS        |PHILIPPINES  |High     |           1|    174|  937|
|6-24 months |EE             |PAKISTAN     |Low      |           0|     90|  195|
|6-24 months |EE             |PAKISTAN     |Low      |           1|     77|  195|
|6-24 months |EE             |PAKISTAN     |Medium   |           0|      8|  195|
|6-24 months |EE             |PAKISTAN     |Medium   |           1|      8|  195|
|6-24 months |EE             |PAKISTAN     |High     |           0|      6|  195|
|6-24 months |EE             |PAKISTAN     |High     |           1|      6|  195|
|6-24 months |GMS-Nepal      |NEPAL        |Low      |           0|    146|  380|
|6-24 months |GMS-Nepal      |NEPAL        |Low      |           1|    119|  380|
|6-24 months |GMS-Nepal      |NEPAL        |Medium   |           0|     30|  380|
|6-24 months |GMS-Nepal      |NEPAL        |Medium   |           1|     43|  380|
|6-24 months |GMS-Nepal      |NEPAL        |High     |           0|     16|  380|
|6-24 months |GMS-Nepal      |NEPAL        |High     |           1|     26|  380|
|6-24 months |Guatemala BSC  |GUATEMALA    |Low      |           0|      2|   26|
|6-24 months |Guatemala BSC  |GUATEMALA    |Low      |           1|      0|   26|
|6-24 months |Guatemala BSC  |GUATEMALA    |Medium   |           0|      6|   26|
|6-24 months |Guatemala BSC  |GUATEMALA    |Medium   |           1|      6|   26|
|6-24 months |Guatemala BSC  |GUATEMALA    |High     |           0|      6|   26|
|6-24 months |Guatemala BSC  |GUATEMALA    |High     |           1|      6|   26|
|6-24 months |JiVitA-3       |BANGLADESH   |Low      |           0|   1014| 2836|
|6-24 months |JiVitA-3       |BANGLADESH   |Low      |           1|      0| 2836|
|6-24 months |JiVitA-3       |BANGLADESH   |Medium   |           0|    865| 2836|
|6-24 months |JiVitA-3       |BANGLADESH   |Medium   |           1|      0| 2836|
|6-24 months |JiVitA-3       |BANGLADESH   |High     |           0|    957| 2836|
|6-24 months |JiVitA-3       |BANGLADESH   |High     |           1|      0| 2836|
|6-24 months |JiVitA-4       |BANGLADESH   |Low      |           0|    429| 1512|
|6-24 months |JiVitA-4       |BANGLADESH   |Low      |           1|     77| 1512|
|6-24 months |JiVitA-4       |BANGLADESH   |Medium   |           0|    418| 1512|
|6-24 months |JiVitA-4       |BANGLADESH   |Medium   |           1|     58| 1512|
|6-24 months |JiVitA-4       |BANGLADESH   |High     |           0|    440| 1512|
|6-24 months |JiVitA-4       |BANGLADESH   |High     |           1|     90| 1512|
|6-24 months |LCNI-5         |MALAWI       |Low      |           0|     16|   74|
|6-24 months |LCNI-5         |MALAWI       |Low      |           1|      6|   74|
|6-24 months |LCNI-5         |MALAWI       |Medium   |           0|     20|   74|
|6-24 months |LCNI-5         |MALAWI       |Medium   |           1|      2|   74|
|6-24 months |LCNI-5         |MALAWI       |High     |           0|     25|   74|
|6-24 months |LCNI-5         |MALAWI       |High     |           1|      5|   74|
|6-24 months |MAL-ED         |INDIA        |Low      |           0|     11|   75|
|6-24 months |MAL-ED         |INDIA        |Low      |           1|     16|   75|
|6-24 months |MAL-ED         |INDIA        |Medium   |           0|      6|   75|
|6-24 months |MAL-ED         |INDIA        |Medium   |           1|     14|   75|
|6-24 months |MAL-ED         |INDIA        |High     |           0|     16|   75|
|6-24 months |MAL-ED         |INDIA        |High     |           1|     12|   75|
|6-24 months |MAL-ED         |BANGLADESH   |Low      |           0|     10|   61|
|6-24 months |MAL-ED         |BANGLADESH   |Low      |           1|     10|   61|
|6-24 months |MAL-ED         |BANGLADESH   |Medium   |           0|      5|   61|
|6-24 months |MAL-ED         |BANGLADESH   |Medium   |           1|      7|   61|
|6-24 months |MAL-ED         |BANGLADESH   |High     |           0|     16|   61|
|6-24 months |MAL-ED         |BANGLADESH   |High     |           1|     13|   61|
|6-24 months |MAL-ED         |PERU         |Low      |           0|      1|   24|
|6-24 months |MAL-ED         |PERU         |Low      |           1|      8|   24|
|6-24 months |MAL-ED         |PERU         |Medium   |           0|      2|   24|
|6-24 months |MAL-ED         |PERU         |Medium   |           1|      6|   24|
|6-24 months |MAL-ED         |PERU         |High     |           0|      3|   24|
|6-24 months |MAL-ED         |PERU         |High     |           1|      4|   24|
|6-24 months |MAL-ED         |NEPAL        |Low      |           0|      5|   48|
|6-24 months |MAL-ED         |NEPAL        |Low      |           1|     17|   48|
|6-24 months |MAL-ED         |NEPAL        |Medium   |           0|      4|   48|
|6-24 months |MAL-ED         |NEPAL        |Medium   |           1|     10|   48|
|6-24 months |MAL-ED         |NEPAL        |High     |           0|      1|   48|
|6-24 months |MAL-ED         |NEPAL        |High     |           1|     11|   48|
|6-24 months |MAL-ED         |BRAZIL       |Low      |           0|      1|    9|
|6-24 months |MAL-ED         |BRAZIL       |Low      |           1|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |Medium   |           0|      2|    9|
|6-24 months |MAL-ED         |BRAZIL       |Medium   |           1|      3|    9|
|6-24 months |MAL-ED         |BRAZIL       |High     |           0|      2|    9|
|6-24 months |MAL-ED         |BRAZIL       |High     |           1|      1|    9|
|6-24 months |MAL-ED         |TANZANIA     |Low      |           0|      0|   34|
|6-24 months |MAL-ED         |TANZANIA     |Low      |           1|      9|   34|
|6-24 months |MAL-ED         |TANZANIA     |Medium   |           0|      4|   34|
|6-24 months |MAL-ED         |TANZANIA     |Medium   |           1|      9|   34|
|6-24 months |MAL-ED         |TANZANIA     |High     |           0|      4|   34|
|6-24 months |MAL-ED         |TANZANIA     |High     |           1|      8|   34|
|6-24 months |MAL-ED         |SOUTH AFRICA |Low      |           0|      3|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |Low      |           1|     22|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |Medium   |           0|      2|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |Medium   |           1|      5|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |High     |           0|      4|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |High     |           1|     15|   51|
|6-24 months |NIH-Birth      |BANGLADESH   |Low      |           0|     59|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |Low      |           1|     26|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |Medium   |           0|     46|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |Medium   |           1|     18|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |High     |           0|     33|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |High     |           1|     16|  198|
|6-24 months |NIH-Crypto     |BANGLADESH   |Low      |           0|     30|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |Low      |           1|      7|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |Medium   |           0|     17|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |Medium   |           1|      4|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |High     |           0|     49|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |High     |           1|      6|  113|
|6-24 months |PROBIT         |BELARUS      |Low      |           0|     33|  141|
|6-24 months |PROBIT         |BELARUS      |Low      |           1|     18|  141|
|6-24 months |PROBIT         |BELARUS      |Medium   |           0|     54|  141|
|6-24 months |PROBIT         |BELARUS      |Medium   |           1|     19|  141|
|6-24 months |PROBIT         |BELARUS      |High     |           0|     16|  141|
|6-24 months |PROBIT         |BELARUS      |High     |           1|      1|  141|
|6-24 months |PROVIDE        |BANGLADESH   |Low      |           0|     32|  123|
|6-24 months |PROVIDE        |BANGLADESH   |Low      |           1|     12|  123|
|6-24 months |PROVIDE        |BANGLADESH   |Medium   |           0|     34|  123|
|6-24 months |PROVIDE        |BANGLADESH   |Medium   |           1|     10|  123|
|6-24 months |PROVIDE        |BANGLADESH   |High     |           0|     23|  123|
|6-24 months |PROVIDE        |BANGLADESH   |High     |           1|     12|  123|
|6-24 months |SAS-CompFeed   |INDIA        |Low      |           0|    167|  472|
|6-24 months |SAS-CompFeed   |INDIA        |Low      |           1|     61|  472|
|6-24 months |SAS-CompFeed   |INDIA        |Medium   |           0|    106|  472|
|6-24 months |SAS-CompFeed   |INDIA        |Medium   |           1|     46|  472|
|6-24 months |SAS-CompFeed   |INDIA        |High     |           0|     65|  472|
|6-24 months |SAS-CompFeed   |INDIA        |High     |           1|     27|  472|
|6-24 months |SAS-FoodSuppl  |INDIA        |Low      |           0|    115|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |Low      |           1|      9|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |Medium   |           0|     13|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |Medium   |           1|      3|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |High     |           0|     15|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |High     |           1|      1|  156|
|6-24 months |TanzaniaChild2 |TANZANIA     |Low      |           0|      5|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |Low      |           1|      9|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |Medium   |           0|    126|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |Medium   |           1|    143|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |High     |           0|     34|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |High     |           1|     56|  373|
|6-24 months |Vellore Crypto |INDIA        |Low      |           0|     23|  155|
|6-24 months |Vellore Crypto |INDIA        |Low      |           1|     25|  155|
|6-24 months |Vellore Crypto |INDIA        |Medium   |           0|     31|  155|
|6-24 months |Vellore Crypto |INDIA        |Medium   |           1|     29|  155|
|6-24 months |Vellore Crypto |INDIA        |High     |           0|     21|  155|
|6-24 months |Vellore Crypto |INDIA        |High     |           1|     26|  155|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Low      |           0|    184| 1095|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Low      |           1|     16| 1095|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |           0|    271| 1095|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |           1|     21| 1095|
|6-24 months |ZVITAMBO       |ZIMBABWE     |High     |           0|    559| 1095|
|6-24 months |ZVITAMBO       |ZIMBABWE     |High     |           1|     44| 1095|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
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
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


