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

**Intervention Variable:** enstunt

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |enstunt | wast_rec90d| n_cell|    n|
|:-----------|:--------------|:------------|:-------|-----------:|------:|----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |0       |           0|     88|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |0       |           1|    159|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1       |           0|     32|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |1       |           1|     45|  324|
|0-24 months |CMIN           |BANGLADESH   |0       |           0|     40|  190|
|0-24 months |CMIN           |BANGLADESH   |0       |           1|     68|  190|
|0-24 months |CMIN           |BANGLADESH   |1       |           0|     40|  190|
|0-24 months |CMIN           |BANGLADESH   |1       |           1|     42|  190|
|0-24 months |COHORTS        |INDIA        |0       |           0|   1674| 2663|
|0-24 months |COHORTS        |INDIA        |0       |           1|    622| 2663|
|0-24 months |COHORTS        |INDIA        |1       |           0|    345| 2663|
|0-24 months |COHORTS        |INDIA        |1       |           1|     22| 2663|
|0-24 months |COHORTS        |GUATEMALA    |0       |           0|    141|  381|
|0-24 months |COHORTS        |GUATEMALA    |0       |           1|    167|  381|
|0-24 months |COHORTS        |GUATEMALA    |1       |           0|     72|  381|
|0-24 months |COHORTS        |GUATEMALA    |1       |           1|      1|  381|
|0-24 months |COHORTS        |PHILIPPINES  |0       |           0|    604| 1689|
|0-24 months |COHORTS        |PHILIPPINES  |0       |           1|    964| 1689|
|0-24 months |COHORTS        |PHILIPPINES  |1       |           0|     60| 1689|
|0-24 months |COHORTS        |PHILIPPINES  |1       |           1|     61| 1689|
|0-24 months |CONTENT        |PERU         |0       |           0|      1|    7|
|0-24 months |CONTENT        |PERU         |0       |           1|      5|    7|
|0-24 months |CONTENT        |PERU         |1       |           0|      0|    7|
|0-24 months |CONTENT        |PERU         |1       |           1|      1|    7|
|0-24 months |EE             |PAKISTAN     |0       |           0|     77|  323|
|0-24 months |EE             |PAKISTAN     |0       |           1|     95|  323|
|0-24 months |EE             |PAKISTAN     |1       |           0|     83|  323|
|0-24 months |EE             |PAKISTAN     |1       |           1|     68|  323|
|0-24 months |GMS-Nepal      |NEPAL        |0       |           0|    249|  643|
|0-24 months |GMS-Nepal      |NEPAL        |0       |           1|    300|  643|
|0-24 months |GMS-Nepal      |NEPAL        |1       |           0|     47|  643|
|0-24 months |GMS-Nepal      |NEPAL        |1       |           1|     47|  643|
|0-24 months |Guatemala BSC  |GUATEMALA    |0       |           0|      7|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |0       |           1|     12|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |1       |           0|     14|   38|
|0-24 months |Guatemala BSC  |GUATEMALA    |1       |           1|      5|   38|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |0       |           0|    457|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |0       |           1|     24|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |1       |           0|    327|  820|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |1       |           1|     12|  820|
|0-24 months |JiVitA-3       |BANGLADESH   |0       |           0|   2793| 7571|
|0-24 months |JiVitA-3       |BANGLADESH   |0       |           1|   2380| 7571|
|0-24 months |JiVitA-3       |BANGLADESH   |1       |           0|   1582| 7571|
|0-24 months |JiVitA-3       |BANGLADESH   |1       |           1|    816| 7571|
|0-24 months |JiVitA-4       |BANGLADESH   |0       |           0|    944| 2069|
|0-24 months |JiVitA-4       |BANGLADESH   |0       |           1|    386| 2069|
|0-24 months |JiVitA-4       |BANGLADESH   |1       |           0|    590| 2069|
|0-24 months |JiVitA-4       |BANGLADESH   |1       |           1|    149| 2069|
|0-24 months |Keneba         |GAMBIA       |0       |           0|    600| 1828|
|0-24 months |Keneba         |GAMBIA       |0       |           1|   1027| 1828|
|0-24 months |Keneba         |GAMBIA       |1       |           0|    112| 1828|
|0-24 months |Keneba         |GAMBIA       |1       |           1|     89| 1828|
|0-24 months |LCNI-5         |MALAWI       |0       |           0|     25|   79|
|0-24 months |LCNI-5         |MALAWI       |0       |           1|      5|   79|
|0-24 months |LCNI-5         |MALAWI       |1       |           0|     41|   79|
|0-24 months |LCNI-5         |MALAWI       |1       |           1|      8|   79|
|0-24 months |MAL-ED         |INDIA        |0       |           0|     51|  181|
|0-24 months |MAL-ED         |INDIA        |0       |           1|     92|  181|
|0-24 months |MAL-ED         |INDIA        |1       |           0|     20|  181|
|0-24 months |MAL-ED         |INDIA        |1       |           1|     18|  181|
|0-24 months |MAL-ED         |BANGLADESH   |0       |           0|     34|  124|
|0-24 months |MAL-ED         |BANGLADESH   |0       |           1|     61|  124|
|0-24 months |MAL-ED         |BANGLADESH   |1       |           0|     10|  124|
|0-24 months |MAL-ED         |BANGLADESH   |1       |           1|     19|  124|
|0-24 months |MAL-ED         |PERU         |0       |           0|      3|   35|
|0-24 months |MAL-ED         |PERU         |0       |           1|     21|   35|
|0-24 months |MAL-ED         |PERU         |1       |           0|      3|   35|
|0-24 months |MAL-ED         |PERU         |1       |           1|      8|   35|
|0-24 months |MAL-ED         |NEPAL        |0       |           0|     16|   98|
|0-24 months |MAL-ED         |NEPAL        |0       |           1|     63|   98|
|0-24 months |MAL-ED         |NEPAL        |1       |           0|      4|   98|
|0-24 months |MAL-ED         |NEPAL        |1       |           1|     15|   98|
|0-24 months |MAL-ED         |BRAZIL       |0       |           0|      5|   24|
|0-24 months |MAL-ED         |BRAZIL       |0       |           1|     15|   24|
|0-24 months |MAL-ED         |BRAZIL       |1       |           0|      1|   24|
|0-24 months |MAL-ED         |BRAZIL       |1       |           1|      3|   24|
|0-24 months |MAL-ED         |TANZANIA     |0       |           0|      8|   51|
|0-24 months |MAL-ED         |TANZANIA     |0       |           1|     31|   51|
|0-24 months |MAL-ED         |TANZANIA     |1       |           0|      1|   51|
|0-24 months |MAL-ED         |TANZANIA     |1       |           1|     11|   51|
|0-24 months |MAL-ED         |SOUTH AFRICA |0       |           0|     17|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |0       |           1|     57|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |1       |           0|      1|   87|
|0-24 months |MAL-ED         |SOUTH AFRICA |1       |           1|     12|   87|
|0-24 months |NIH-Birth      |BANGLADESH   |0       |           0|    162|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |0       |           1|    187|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |1       |           0|     40|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |1       |           1|     32|  421|
|0-24 months |NIH-Crypto     |BANGLADESH   |0       |           0|     88|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |0       |           1|    177|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |1       |           0|     29|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |1       |           1|     16|  310|
|0-24 months |PROBIT         |BELARUS      |0       |           0|    523| 4408|
|0-24 months |PROBIT         |BELARUS      |0       |           1|   3875| 4408|
|0-24 months |PROBIT         |BELARUS      |1       |           0|      3| 4408|
|0-24 months |PROBIT         |BELARUS      |1       |           1|      7| 4408|
|0-24 months |PROVIDE        |BANGLADESH   |0       |           0|    106|  308|
|0-24 months |PROVIDE        |BANGLADESH   |0       |           1|    153|  308|
|0-24 months |PROVIDE        |BANGLADESH   |1       |           0|     23|  308|
|0-24 months |PROVIDE        |BANGLADESH   |1       |           1|     26|  308|
|0-24 months |ResPak         |PAKISTAN     |0       |           0|     74|  204|
|0-24 months |ResPak         |PAKISTAN     |0       |           1|     68|  204|
|0-24 months |ResPak         |PAKISTAN     |1       |           0|     38|  204|
|0-24 months |ResPak         |PAKISTAN     |1       |           1|     24|  204|
|0-24 months |SAS-CompFeed   |INDIA        |0       |           0|    320|  814|
|0-24 months |SAS-CompFeed   |INDIA        |0       |           1|    236|  814|
|0-24 months |SAS-CompFeed   |INDIA        |1       |           0|    184|  814|
|0-24 months |SAS-CompFeed   |INDIA        |1       |           1|     74|  814|
|0-24 months |SAS-FoodSuppl  |INDIA        |0       |           0|    117|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |0       |           1|      9|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |1       |           0|    104|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |1       |           1|      4|  234|
|0-24 months |TanzaniaChild2 |TANZANIA     |0       |           0|    243|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |0       |           1|    409|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |1       |           0|     23|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |1       |           1|     38|  713|
|0-24 months |Vellore Crypto |INDIA        |0       |           0|    139|  395|
|0-24 months |Vellore Crypto |INDIA        |0       |           1|    203|  395|
|0-24 months |Vellore Crypto |INDIA        |1       |           0|     23|  395|
|0-24 months |Vellore Crypto |INDIA        |1       |           1|     30|  395|
|0-24 months |ZVITAMBO       |ZIMBABWE     |0       |           0|   1443| 3615|
|0-24 months |ZVITAMBO       |ZIMBABWE     |0       |           1|   1860| 3615|
|0-24 months |ZVITAMBO       |ZIMBABWE     |1       |           0|    208| 3615|
|0-24 months |ZVITAMBO       |ZIMBABWE     |1       |           1|    104| 3615|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |0       |           0|     51|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |0       |           1|    111|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1       |           0|     15|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |1       |           1|     24|  201|
|0-6 months  |CMIN           |BANGLADESH   |0       |           0|     13|   52|
|0-6 months  |CMIN           |BANGLADESH   |0       |           1|     19|   52|
|0-6 months  |CMIN           |BANGLADESH   |1       |           0|     12|   52|
|0-6 months  |CMIN           |BANGLADESH   |1       |           1|      8|   52|
|0-6 months  |COHORTS        |INDIA        |0       |           0|    993| 1796|
|0-6 months  |COHORTS        |INDIA        |0       |           1|    622| 1796|
|0-6 months  |COHORTS        |INDIA        |1       |           0|    159| 1796|
|0-6 months  |COHORTS        |INDIA        |1       |           1|     22| 1796|
|0-6 months  |COHORTS        |GUATEMALA    |0       |           0|     51|  215|
|0-6 months  |COHORTS        |GUATEMALA    |0       |           1|    160|  215|
|0-6 months  |COHORTS        |GUATEMALA    |1       |           0|      4|  215|
|0-6 months  |COHORTS        |GUATEMALA    |1       |           1|      0|  215|
|0-6 months  |COHORTS        |PHILIPPINES  |0       |           0|    187|  752|
|0-6 months  |COHORTS        |PHILIPPINES  |0       |           1|    534|  752|
|0-6 months  |COHORTS        |PHILIPPINES  |1       |           0|     11|  752|
|0-6 months  |COHORTS        |PHILIPPINES  |1       |           1|     20|  752|
|0-6 months  |CONTENT        |PERU         |0       |           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |0       |           1|      4|    4|
|0-6 months  |CONTENT        |PERU         |1       |           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |1       |           1|      0|    4|
|0-6 months  |EE             |PAKISTAN     |0       |           0|     31|  127|
|0-6 months  |EE             |PAKISTAN     |0       |           1|     47|  127|
|0-6 months  |EE             |PAKISTAN     |1       |           0|     24|  127|
|0-6 months  |EE             |PAKISTAN     |1       |           1|     25|  127|
|0-6 months  |GMS-Nepal      |NEPAL        |0       |           0|     92|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |0       |           1|    142|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |1       |           0|     12|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |1       |           1|     17|  263|
|0-6 months  |Guatemala BSC  |GUATEMALA    |0       |           0|      0|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |0       |           1|      4|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |1       |           0|      6|   10|
|0-6 months  |Guatemala BSC  |GUATEMALA    |1       |           1|      0|   10|
|0-6 months  |JiVitA-3       |BANGLADESH   |0       |           0|   1077| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH   |0       |           1|   2380| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH   |1       |           0|    461| 4734|
|0-6 months  |JiVitA-3       |BANGLADESH   |1       |           1|    816| 4734|
|0-6 months  |JiVitA-4       |BANGLADESH   |0       |           0|    173|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |0       |           1|    235|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |1       |           0|     71|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |1       |           1|     74|  553|
|0-6 months  |Keneba         |GAMBIA       |0       |           0|    143|  724|
|0-6 months  |Keneba         |GAMBIA       |0       |           1|    529|  724|
|0-6 months  |Keneba         |GAMBIA       |1       |           0|     22|  724|
|0-6 months  |Keneba         |GAMBIA       |1       |           1|     30|  724|
|0-6 months  |LCNI-5         |MALAWI       |0       |           0|      4|    4|
|0-6 months  |LCNI-5         |MALAWI       |0       |           1|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |1       |           0|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |1       |           1|      0|    4|
|0-6 months  |MAL-ED         |INDIA        |0       |           0|     23|   86|
|0-6 months  |MAL-ED         |INDIA        |0       |           1|     47|   86|
|0-6 months  |MAL-ED         |INDIA        |1       |           0|      4|   86|
|0-6 months  |MAL-ED         |INDIA        |1       |           1|     12|   86|
|0-6 months  |MAL-ED         |BANGLADESH   |0       |           0|      9|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |0       |           1|     43|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |1       |           0|      4|   63|
|0-6 months  |MAL-ED         |BANGLADESH   |1       |           1|      7|   63|
|0-6 months  |MAL-ED         |PERU         |0       |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |0       |           1|      8|   11|
|0-6 months  |MAL-ED         |PERU         |1       |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |1       |           1|      3|   11|
|0-6 months  |MAL-ED         |NEPAL        |0       |           0|      8|   48|
|0-6 months  |MAL-ED         |NEPAL        |0       |           1|     30|   48|
|0-6 months  |MAL-ED         |NEPAL        |1       |           0|      1|   48|
|0-6 months  |MAL-ED         |NEPAL        |1       |           1|      9|   48|
|0-6 months  |MAL-ED         |BRAZIL       |0       |           0|      1|   15|
|0-6 months  |MAL-ED         |BRAZIL       |0       |           1|     13|   15|
|0-6 months  |MAL-ED         |BRAZIL       |1       |           0|      0|   15|
|0-6 months  |MAL-ED         |BRAZIL       |1       |           1|      1|   15|
|0-6 months  |MAL-ED         |TANZANIA     |0       |           0|      1|   14|
|0-6 months  |MAL-ED         |TANZANIA     |0       |           1|     10|   14|
|0-6 months  |MAL-ED         |TANZANIA     |1       |           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |1       |           1|      3|   14|
|0-6 months  |MAL-ED         |SOUTH AFRICA |0       |           0|      9|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |0       |           1|     21|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1       |           0|      0|   36|
|0-6 months  |MAL-ED         |SOUTH AFRICA |1       |           1|      6|   36|
|0-6 months  |NIH-Birth      |BANGLADESH   |0       |           0|     52|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |0       |           1|    135|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |1       |           0|     12|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |1       |           1|     24|  223|
|0-6 months  |NIH-Crypto     |BANGLADESH   |0       |           0|     18|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |0       |           1|    162|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |1       |           0|      3|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |1       |           1|     14|  197|
|0-6 months  |PROBIT         |BELARUS      |0       |           0|    421| 4267|
|0-6 months  |PROBIT         |BELARUS      |0       |           1|   3837| 4267|
|0-6 months  |PROBIT         |BELARUS      |1       |           0|      2| 4267|
|0-6 months  |PROBIT         |BELARUS      |1       |           1|      7| 4267|
|0-6 months  |PROVIDE        |BANGLADESH   |0       |           0|     35|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |0       |           1|    127|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |1       |           0|      5|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |1       |           1|     18|  185|
|0-6 months  |ResPak         |PAKISTAN     |0       |           0|     26|  113|
|0-6 months  |ResPak         |PAKISTAN     |0       |           1|     52|  113|
|0-6 months  |ResPak         |PAKISTAN     |1       |           0|     17|  113|
|0-6 months  |ResPak         |PAKISTAN     |1       |           1|     18|  113|
|0-6 months  |SAS-CompFeed   |INDIA        |0       |           0|    107|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |0       |           1|    142|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |1       |           0|     59|  341|
|0-6 months  |SAS-CompFeed   |INDIA        |1       |           1|     33|  341|
|0-6 months  |SAS-FoodSuppl  |INDIA        |0       |           0|     46|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |0       |           1|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |1       |           0|     32|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |1       |           1|      0|   78|
|0-6 months  |TanzaniaChild2 |TANZANIA     |0       |           0|     97|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |0       |           1|    222|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |1       |           0|      4|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |1       |           1|     17|  340|
|0-6 months  |Vellore Crypto |INDIA        |0       |           0|     77|  240|
|0-6 months  |Vellore Crypto |INDIA        |0       |           1|    138|  240|
|0-6 months  |Vellore Crypto |INDIA        |1       |           0|     10|  240|
|0-6 months  |Vellore Crypto |INDIA        |1       |           1|     15|  240|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |0       |           0|    584| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |0       |           1|   1788| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |1       |           0|     52| 2519|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |1       |           1|     95| 2519|
|6-24 months |CMC-V-BCS-2002 |INDIA        |0       |           0|     37|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |0       |           1|     48|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1       |           0|     17|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |1       |           1|     21|  123|
|6-24 months |CMIN           |BANGLADESH   |0       |           0|     27|  138|
|6-24 months |CMIN           |BANGLADESH   |0       |           1|     49|  138|
|6-24 months |CMIN           |BANGLADESH   |1       |           0|     28|  138|
|6-24 months |CMIN           |BANGLADESH   |1       |           1|     34|  138|
|6-24 months |COHORTS        |INDIA        |0       |           0|    681|  867|
|6-24 months |COHORTS        |INDIA        |0       |           1|      0|  867|
|6-24 months |COHORTS        |INDIA        |1       |           0|    186|  867|
|6-24 months |COHORTS        |INDIA        |1       |           1|      0|  867|
|6-24 months |COHORTS        |GUATEMALA    |0       |           0|     90|  166|
|6-24 months |COHORTS        |GUATEMALA    |0       |           1|      7|  166|
|6-24 months |COHORTS        |GUATEMALA    |1       |           0|     68|  166|
|6-24 months |COHORTS        |GUATEMALA    |1       |           1|      1|  166|
|6-24 months |COHORTS        |PHILIPPINES  |0       |           0|    417|  937|
|6-24 months |COHORTS        |PHILIPPINES  |0       |           1|    430|  937|
|6-24 months |COHORTS        |PHILIPPINES  |1       |           0|     49|  937|
|6-24 months |COHORTS        |PHILIPPINES  |1       |           1|     41|  937|
|6-24 months |CONTENT        |PERU         |0       |           0|      1|    3|
|6-24 months |CONTENT        |PERU         |0       |           1|      1|    3|
|6-24 months |CONTENT        |PERU         |1       |           0|      0|    3|
|6-24 months |CONTENT        |PERU         |1       |           1|      1|    3|
|6-24 months |EE             |PAKISTAN     |0       |           0|     46|  196|
|6-24 months |EE             |PAKISTAN     |0       |           1|     48|  196|
|6-24 months |EE             |PAKISTAN     |1       |           0|     59|  196|
|6-24 months |EE             |PAKISTAN     |1       |           1|     43|  196|
|6-24 months |GMS-Nepal      |NEPAL        |0       |           0|    157|  380|
|6-24 months |GMS-Nepal      |NEPAL        |0       |           1|    158|  380|
|6-24 months |GMS-Nepal      |NEPAL        |1       |           0|     35|  380|
|6-24 months |GMS-Nepal      |NEPAL        |1       |           1|     30|  380|
|6-24 months |Guatemala BSC  |GUATEMALA    |0       |           0|      7|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |0       |           1|      8|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |1       |           0|      8|   28|
|6-24 months |Guatemala BSC  |GUATEMALA    |1       |           1|      5|   28|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |0       |           0|    457|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |0       |           1|     24|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |1       |           0|    327|  820|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |1       |           1|     12|  820|
|6-24 months |JiVitA-3       |BANGLADESH   |0       |           0|   1716| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |0       |           1|      0| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |1       |           0|   1121| 2837|
|6-24 months |JiVitA-3       |BANGLADESH   |1       |           1|      0| 2837|
|6-24 months |JiVitA-4       |BANGLADESH   |0       |           0|    771| 1516|
|6-24 months |JiVitA-4       |BANGLADESH   |0       |           1|    151| 1516|
|6-24 months |JiVitA-4       |BANGLADESH   |1       |           0|    519| 1516|
|6-24 months |JiVitA-4       |BANGLADESH   |1       |           1|     75| 1516|
|6-24 months |Keneba         |GAMBIA       |0       |           0|    457| 1104|
|6-24 months |Keneba         |GAMBIA       |0       |           1|    498| 1104|
|6-24 months |Keneba         |GAMBIA       |1       |           0|     90| 1104|
|6-24 months |Keneba         |GAMBIA       |1       |           1|     59| 1104|
|6-24 months |LCNI-5         |MALAWI       |0       |           0|     21|   75|
|6-24 months |LCNI-5         |MALAWI       |0       |           1|      5|   75|
|6-24 months |LCNI-5         |MALAWI       |1       |           0|     41|   75|
|6-24 months |LCNI-5         |MALAWI       |1       |           1|      8|   75|
|6-24 months |MAL-ED         |INDIA        |0       |           0|     28|   95|
|6-24 months |MAL-ED         |INDIA        |0       |           1|     45|   95|
|6-24 months |MAL-ED         |INDIA        |1       |           0|     16|   95|
|6-24 months |MAL-ED         |INDIA        |1       |           1|      6|   95|
|6-24 months |MAL-ED         |BANGLADESH   |0       |           0|     25|   61|
|6-24 months |MAL-ED         |BANGLADESH   |0       |           1|     18|   61|
|6-24 months |MAL-ED         |BANGLADESH   |1       |           0|      6|   61|
|6-24 months |MAL-ED         |BANGLADESH   |1       |           1|     12|   61|
|6-24 months |MAL-ED         |PERU         |0       |           0|      3|   24|
|6-24 months |MAL-ED         |PERU         |0       |           1|     13|   24|
|6-24 months |MAL-ED         |PERU         |1       |           0|      3|   24|
|6-24 months |MAL-ED         |PERU         |1       |           1|      5|   24|
|6-24 months |MAL-ED         |NEPAL        |0       |           0|      8|   50|
|6-24 months |MAL-ED         |NEPAL        |0       |           1|     33|   50|
|6-24 months |MAL-ED         |NEPAL        |1       |           0|      3|   50|
|6-24 months |MAL-ED         |NEPAL        |1       |           1|      6|   50|
|6-24 months |MAL-ED         |BRAZIL       |0       |           0|      4|    9|
|6-24 months |MAL-ED         |BRAZIL       |0       |           1|      2|    9|
|6-24 months |MAL-ED         |BRAZIL       |1       |           0|      1|    9|
|6-24 months |MAL-ED         |BRAZIL       |1       |           1|      2|    9|
|6-24 months |MAL-ED         |TANZANIA     |0       |           0|      7|   37|
|6-24 months |MAL-ED         |TANZANIA     |0       |           1|     21|   37|
|6-24 months |MAL-ED         |TANZANIA     |1       |           0|      1|   37|
|6-24 months |MAL-ED         |TANZANIA     |1       |           1|      8|   37|
|6-24 months |MAL-ED         |SOUTH AFRICA |0       |           0|      8|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |0       |           1|     36|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |1       |           0|      1|   51|
|6-24 months |MAL-ED         |SOUTH AFRICA |1       |           1|      6|   51|
|6-24 months |NIH-Birth      |BANGLADESH   |0       |           0|    110|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |0       |           1|     52|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |1       |           0|     28|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |1       |           1|      8|  198|
|6-24 months |NIH-Crypto     |BANGLADESH   |0       |           0|     70|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |0       |           1|     15|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |1       |           0|     26|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |1       |           1|      2|  113|
|6-24 months |PROBIT         |BELARUS      |0       |           0|    102|  141|
|6-24 months |PROBIT         |BELARUS      |0       |           1|     38|  141|
|6-24 months |PROBIT         |BELARUS      |1       |           0|      1|  141|
|6-24 months |PROBIT         |BELARUS      |1       |           1|      0|  141|
|6-24 months |PROVIDE        |BANGLADESH   |0       |           0|     71|  123|
|6-24 months |PROVIDE        |BANGLADESH   |0       |           1|     26|  123|
|6-24 months |PROVIDE        |BANGLADESH   |1       |           0|     18|  123|
|6-24 months |PROVIDE        |BANGLADESH   |1       |           1|      8|  123|
|6-24 months |ResPak         |PAKISTAN     |0       |           0|     48|   91|
|6-24 months |ResPak         |PAKISTAN     |0       |           1|     16|   91|
|6-24 months |ResPak         |PAKISTAN     |1       |           0|     21|   91|
|6-24 months |ResPak         |PAKISTAN     |1       |           1|      6|   91|
|6-24 months |SAS-CompFeed   |INDIA        |0       |           0|    213|  473|
|6-24 months |SAS-CompFeed   |INDIA        |0       |           1|     94|  473|
|6-24 months |SAS-CompFeed   |INDIA        |1       |           0|    125|  473|
|6-24 months |SAS-CompFeed   |INDIA        |1       |           1|     41|  473|
|6-24 months |SAS-FoodSuppl  |INDIA        |0       |           0|     71|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |0       |           1|      9|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |1       |           0|     72|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |1       |           1|      4|  156|
|6-24 months |TanzaniaChild2 |TANZANIA     |0       |           0|    146|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |0       |           1|    187|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |1       |           0|     19|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |1       |           1|     21|  373|
|6-24 months |Vellore Crypto |INDIA        |0       |           0|     62|  155|
|6-24 months |Vellore Crypto |INDIA        |0       |           1|     65|  155|
|6-24 months |Vellore Crypto |INDIA        |1       |           0|     13|  155|
|6-24 months |Vellore Crypto |INDIA        |1       |           1|     15|  155|
|6-24 months |ZVITAMBO       |ZIMBABWE     |0       |           0|    859| 1096|
|6-24 months |ZVITAMBO       |ZIMBABWE     |0       |           1|     72| 1096|
|6-24 months |ZVITAMBO       |ZIMBABWE     |1       |           0|    156| 1096|
|6-24 months |ZVITAMBO       |ZIMBABWE     |1       |           1|      9| 1096|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
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
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
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
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
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
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: CONTENT, country: PERU
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
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
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


