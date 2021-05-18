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

**Intervention Variable:** feducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |feducyrs | wast_rec90d| n_cell|    n|
|:-----------|:--------------|:------------|:--------|-----------:|------:|----:|
|0-24 months |COHORTS        |INDIA        |Low      |           0|    169|  679|
|0-24 months |COHORTS        |INDIA        |Low      |           1|     62|  679|
|0-24 months |COHORTS        |INDIA        |Medium   |           0|    144|  679|
|0-24 months |COHORTS        |INDIA        |Medium   |           1|     48|  679|
|0-24 months |COHORTS        |INDIA        |High     |           0|    195|  679|
|0-24 months |COHORTS        |INDIA        |High     |           1|     61|  679|
|0-24 months |COHORTS        |GUATEMALA    |Low      |           0|     95|  363|
|0-24 months |COHORTS        |GUATEMALA    |Low      |           1|     81|  363|
|0-24 months |COHORTS        |GUATEMALA    |Medium   |           0|     65|  363|
|0-24 months |COHORTS        |GUATEMALA    |Medium   |           1|     53|  363|
|0-24 months |COHORTS        |GUATEMALA    |High     |           0|     45|  363|
|0-24 months |COHORTS        |GUATEMALA    |High     |           1|     24|  363|
|0-24 months |COHORTS        |PHILIPPINES  |Low      |           0|    247| 1616|
|0-24 months |COHORTS        |PHILIPPINES  |Low      |           1|    337| 1616|
|0-24 months |COHORTS        |PHILIPPINES  |Medium   |           0|    148| 1616|
|0-24 months |COHORTS        |PHILIPPINES  |Medium   |           1|    241| 1616|
|0-24 months |COHORTS        |PHILIPPINES  |High     |           0|    243| 1616|
|0-24 months |COHORTS        |PHILIPPINES  |High     |           1|    400| 1616|
|0-24 months |GMS-Nepal      |NEPAL        |Low      |           0|    133|  642|
|0-24 months |GMS-Nepal      |NEPAL        |Low      |           1|    144|  642|
|0-24 months |GMS-Nepal      |NEPAL        |Medium   |           0|    100|  642|
|0-24 months |GMS-Nepal      |NEPAL        |Medium   |           1|    123|  642|
|0-24 months |GMS-Nepal      |NEPAL        |High     |           0|     63|  642|
|0-24 months |GMS-Nepal      |NEPAL        |High     |           1|     79|  642|
|0-24 months |JiVitA-3       |BANGLADESH   |Low      |           0|   1748| 7285|
|0-24 months |JiVitA-3       |BANGLADESH   |Low      |           1|   1255| 7285|
|0-24 months |JiVitA-3       |BANGLADESH   |Medium   |           0|   1471| 7285|
|0-24 months |JiVitA-3       |BANGLADESH   |Medium   |           1|   1073| 7285|
|0-24 months |JiVitA-3       |BANGLADESH   |High     |           0|    983| 7285|
|0-24 months |JiVitA-3       |BANGLADESH   |High     |           1|    755| 7285|
|0-24 months |JiVitA-4       |BANGLADESH   |Low      |           0|    575| 1966|
|0-24 months |JiVitA-4       |BANGLADESH   |Low      |           1|    173| 1966|
|0-24 months |JiVitA-4       |BANGLADESH   |Medium   |           0|    578| 1966|
|0-24 months |JiVitA-4       |BANGLADESH   |Medium   |           1|    223| 1966|
|0-24 months |JiVitA-4       |BANGLADESH   |High     |           0|    304| 1966|
|0-24 months |JiVitA-4       |BANGLADESH   |High     |           1|    113| 1966|
|0-24 months |LCNI-5         |MALAWI       |Low      |           0|     21|   78|
|0-24 months |LCNI-5         |MALAWI       |Low      |           1|      3|   78|
|0-24 months |LCNI-5         |MALAWI       |Medium   |           0|     24|   78|
|0-24 months |LCNI-5         |MALAWI       |Medium   |           1|      5|   78|
|0-24 months |LCNI-5         |MALAWI       |High     |           0|     20|   78|
|0-24 months |LCNI-5         |MALAWI       |High     |           1|      5|   78|
|0-24 months |MAL-ED         |INDIA        |Low      |           0|     11|   88|
|0-24 months |MAL-ED         |INDIA        |Low      |           1|     19|   88|
|0-24 months |MAL-ED         |INDIA        |Medium   |           0|     17|   88|
|0-24 months |MAL-ED         |INDIA        |Medium   |           1|      9|   88|
|0-24 months |MAL-ED         |INDIA        |High     |           0|     10|   88|
|0-24 months |MAL-ED         |INDIA        |High     |           1|     22|   88|
|0-24 months |MAL-ED         |BANGLADESH   |Low      |           0|      4|   64|
|0-24 months |MAL-ED         |BANGLADESH   |Low      |           1|     14|   64|
|0-24 months |MAL-ED         |BANGLADESH   |Medium   |           0|      4|   64|
|0-24 months |MAL-ED         |BANGLADESH   |Medium   |           1|     11|   64|
|0-24 months |MAL-ED         |BANGLADESH   |High     |           0|     11|   64|
|0-24 months |MAL-ED         |BANGLADESH   |High     |           1|     20|   64|
|0-24 months |MAL-ED         |PERU         |Low      |           0|      1|   32|
|0-24 months |MAL-ED         |PERU         |Low      |           1|      7|   32|
|0-24 months |MAL-ED         |PERU         |Medium   |           0|      2|   32|
|0-24 months |MAL-ED         |PERU         |Medium   |           1|      9|   32|
|0-24 months |MAL-ED         |PERU         |High     |           0|      2|   32|
|0-24 months |MAL-ED         |PERU         |High     |           1|     11|   32|
|0-24 months |MAL-ED         |NEPAL        |Low      |           0|      1|   34|
|0-24 months |MAL-ED         |NEPAL        |Low      |           1|      5|   34|
|0-24 months |MAL-ED         |NEPAL        |Medium   |           0|      1|   34|
|0-24 months |MAL-ED         |NEPAL        |Medium   |           1|     12|   34|
|0-24 months |MAL-ED         |NEPAL        |High     |           0|      3|   34|
|0-24 months |MAL-ED         |NEPAL        |High     |           1|     12|   34|
|0-24 months |MAL-ED         |TANZANIA     |Low      |           0|      1|   48|
|0-24 months |MAL-ED         |TANZANIA     |Low      |           1|     12|   48|
|0-24 months |MAL-ED         |TANZANIA     |Medium   |           0|      2|   48|
|0-24 months |MAL-ED         |TANZANIA     |Medium   |           1|     13|   48|
|0-24 months |MAL-ED         |TANZANIA     |High     |           0|      5|   48|
|0-24 months |MAL-ED         |TANZANIA     |High     |           1|     15|   48|
|0-24 months |MAL-ED         |SOUTH AFRICA |Low      |           0|      4|   31|
|0-24 months |MAL-ED         |SOUTH AFRICA |Low      |           1|     10|   31|
|0-24 months |MAL-ED         |SOUTH AFRICA |Medium   |           0|      0|   31|
|0-24 months |MAL-ED         |SOUTH AFRICA |Medium   |           1|      4|   31|
|0-24 months |MAL-ED         |SOUTH AFRICA |High     |           0|      7|   31|
|0-24 months |MAL-ED         |SOUTH AFRICA |High     |           1|      6|   31|
|0-24 months |NIH-Crypto     |BANGLADESH   |Low      |           0|     26|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |Low      |           1|     55|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |Medium   |           0|     36|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |Medium   |           1|     53|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |High     |           0|     55|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |High     |           1|     85|  310|
|0-24 months |PROBIT         |BELARUS      |Low      |           0|    203| 4263|
|0-24 months |PROBIT         |BELARUS      |Low      |           1|   1478| 4263|
|0-24 months |PROBIT         |BELARUS      |Medium   |           0|    211| 4263|
|0-24 months |PROBIT         |BELARUS      |Medium   |           1|   1619| 4263|
|0-24 months |PROBIT         |BELARUS      |High     |           0|     92| 4263|
|0-24 months |PROBIT         |BELARUS      |High     |           1|    660| 4263|
|0-24 months |PROVIDE        |BANGLADESH   |Low      |           0|     50|  308|
|0-24 months |PROVIDE        |BANGLADESH   |Low      |           1|     63|  308|
|0-24 months |PROVIDE        |BANGLADESH   |Medium   |           0|     41|  308|
|0-24 months |PROVIDE        |BANGLADESH   |Medium   |           1|     58|  308|
|0-24 months |PROVIDE        |BANGLADESH   |High     |           0|     38|  308|
|0-24 months |PROVIDE        |BANGLADESH   |High     |           1|     58|  308|
|0-24 months |SAS-CompFeed   |INDIA        |Low      |           0|    204|  813|
|0-24 months |SAS-CompFeed   |INDIA        |Low      |           1|    121|  813|
|0-24 months |SAS-CompFeed   |INDIA        |Medium   |           0|    161|  813|
|0-24 months |SAS-CompFeed   |INDIA        |Medium   |           1|    113|  813|
|0-24 months |SAS-CompFeed   |INDIA        |High     |           0|    138|  813|
|0-24 months |SAS-CompFeed   |INDIA        |High     |           1|     76|  813|
|0-24 months |SAS-FoodSuppl  |INDIA        |Low      |           0|     80|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |Low      |           1|      4|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |Medium   |           0|     82|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |Medium   |           1|      2|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |High     |           0|     59|  234|
|0-24 months |SAS-FoodSuppl  |INDIA        |High     |           1|      7|  234|
|0-24 months |TanzaniaChild2 |TANZANIA     |Low      |           0|    153|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |Low      |           1|    234|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |Medium   |           0|     71|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |Medium   |           1|    118|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |High     |           0|     42|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |High     |           1|     95|  713|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Low      |           0|    241| 3476|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Low      |           1|    309| 3476|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |           0|   1216| 3476|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |           1|   1435| 3476|
|0-24 months |ZVITAMBO       |ZIMBABWE     |High     |           0|    130| 3476|
|0-24 months |ZVITAMBO       |ZIMBABWE     |High     |           1|    145| 3476|
|0-6 months  |COHORTS        |INDIA        |Low      |           0|     83|  452|
|0-6 months  |COHORTS        |INDIA        |Low      |           1|     62|  452|
|0-6 months  |COHORTS        |INDIA        |Medium   |           0|     86|  452|
|0-6 months  |COHORTS        |INDIA        |Medium   |           1|     48|  452|
|0-6 months  |COHORTS        |INDIA        |High     |           0|    112|  452|
|0-6 months  |COHORTS        |INDIA        |High     |           1|     61|  452|
|0-6 months  |COHORTS        |GUATEMALA    |Low      |           0|     18|  203|
|0-6 months  |COHORTS        |GUATEMALA    |Low      |           1|     76|  203|
|0-6 months  |COHORTS        |GUATEMALA    |Medium   |           0|     22|  203|
|0-6 months  |COHORTS        |GUATEMALA    |Medium   |           1|     51|  203|
|0-6 months  |COHORTS        |GUATEMALA    |High     |           0|     13|  203|
|0-6 months  |COHORTS        |GUATEMALA    |High     |           1|     23|  203|
|0-6 months  |COHORTS        |PHILIPPINES  |Low      |           0|     68|  722|
|0-6 months  |COHORTS        |PHILIPPINES  |Low      |           1|    173|  722|
|0-6 months  |COHORTS        |PHILIPPINES  |Medium   |           0|     38|  722|
|0-6 months  |COHORTS        |PHILIPPINES  |Medium   |           1|    116|  722|
|0-6 months  |COHORTS        |PHILIPPINES  |High     |           0|     83|  722|
|0-6 months  |COHORTS        |PHILIPPINES  |High     |           1|    244|  722|
|0-6 months  |GMS-Nepal      |NEPAL        |Low      |           0|     50|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |Low      |           1|     70|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |Medium   |           0|     34|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |Medium   |           1|     50|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |High     |           0|     20|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |High     |           1|     39|  263|
|0-6 months  |JiVitA-3       |BANGLADESH   |Low      |           0|    636| 4565|
|0-6 months  |JiVitA-3       |BANGLADESH   |Low      |           1|   1255| 4565|
|0-6 months  |JiVitA-3       |BANGLADESH   |Medium   |           0|    495| 4565|
|0-6 months  |JiVitA-3       |BANGLADESH   |Medium   |           1|   1073| 4565|
|0-6 months  |JiVitA-3       |BANGLADESH   |High     |           0|    351| 4565|
|0-6 months  |JiVitA-3       |BANGLADESH   |High     |           1|    755| 4565|
|0-6 months  |JiVitA-4       |BANGLADESH   |Low      |           0|     87|  526|
|0-6 months  |JiVitA-4       |BANGLADESH   |Low      |           1|    100|  526|
|0-6 months  |JiVitA-4       |BANGLADESH   |Medium   |           0|     95|  526|
|0-6 months  |JiVitA-4       |BANGLADESH   |Medium   |           1|    125|  526|
|0-6 months  |JiVitA-4       |BANGLADESH   |High     |           0|     50|  526|
|0-6 months  |JiVitA-4       |BANGLADESH   |High     |           1|     69|  526|
|0-6 months  |LCNI-5         |MALAWI       |Low      |           0|      1|    4|
|0-6 months  |LCNI-5         |MALAWI       |Low      |           1|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |Medium   |           0|      3|    4|
|0-6 months  |LCNI-5         |MALAWI       |Medium   |           1|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |High     |           0|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |High     |           1|      0|    4|
|0-6 months  |MAL-ED         |INDIA        |Low      |           0|      4|   46|
|0-6 months  |MAL-ED         |INDIA        |Low      |           1|     10|   46|
|0-6 months  |MAL-ED         |INDIA        |Medium   |           0|      7|   46|
|0-6 months  |MAL-ED         |INDIA        |Medium   |           1|      5|   46|
|0-6 months  |MAL-ED         |INDIA        |High     |           0|      5|   46|
|0-6 months  |MAL-ED         |INDIA        |High     |           1|     15|   46|
|0-6 months  |MAL-ED         |BANGLADESH   |Low      |           0|      1|   34|
|0-6 months  |MAL-ED         |BANGLADESH   |Low      |           1|      7|   34|
|0-6 months  |MAL-ED         |BANGLADESH   |Medium   |           0|      2|   34|
|0-6 months  |MAL-ED         |BANGLADESH   |Medium   |           1|      8|   34|
|0-6 months  |MAL-ED         |BANGLADESH   |High     |           0|      4|   34|
|0-6 months  |MAL-ED         |BANGLADESH   |High     |           1|     12|   34|
|0-6 months  |MAL-ED         |PERU         |Low      |           0|      0|   10|
|0-6 months  |MAL-ED         |PERU         |Low      |           1|      1|   10|
|0-6 months  |MAL-ED         |PERU         |Medium   |           0|      0|   10|
|0-6 months  |MAL-ED         |PERU         |Medium   |           1|      2|   10|
|0-6 months  |MAL-ED         |PERU         |High     |           0|      0|   10|
|0-6 months  |MAL-ED         |PERU         |High     |           1|      7|   10|
|0-6 months  |MAL-ED         |NEPAL        |Low      |           0|      0|   19|
|0-6 months  |MAL-ED         |NEPAL        |Low      |           1|      3|   19|
|0-6 months  |MAL-ED         |NEPAL        |Medium   |           0|      1|   19|
|0-6 months  |MAL-ED         |NEPAL        |Medium   |           1|      6|   19|
|0-6 months  |MAL-ED         |NEPAL        |High     |           0|      3|   19|
|0-6 months  |MAL-ED         |NEPAL        |High     |           1|      6|   19|
|0-6 months  |MAL-ED         |TANZANIA     |Low      |           0|      0|   11|
|0-6 months  |MAL-ED         |TANZANIA     |Low      |           1|      3|   11|
|0-6 months  |MAL-ED         |TANZANIA     |Medium   |           0|      0|   11|
|0-6 months  |MAL-ED         |TANZANIA     |Medium   |           1|      4|   11|
|0-6 months  |MAL-ED         |TANZANIA     |High     |           0|      0|   11|
|0-6 months  |MAL-ED         |TANZANIA     |High     |           1|      4|   11|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Low      |           0|      2|   13|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Low      |           1|      4|   13|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Medium   |           0|      0|   13|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Medium   |           1|      2|   13|
|0-6 months  |MAL-ED         |SOUTH AFRICA |High     |           0|      3|   13|
|0-6 months  |MAL-ED         |SOUTH AFRICA |High     |           1|      2|   13|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Low      |           0|      3|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Low      |           1|     51|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Medium   |           0|      8|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Medium   |           1|     45|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |High     |           0|     10|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |High     |           1|     80|  197|
|0-6 months  |PROBIT         |BELARUS      |Low      |           0|    166| 4124|
|0-6 months  |PROBIT         |BELARUS      |Low      |           1|   1461| 4124|
|0-6 months  |PROBIT         |BELARUS      |Medium   |           0|    167| 4124|
|0-6 months  |PROBIT         |BELARUS      |Medium   |           1|   1601| 4124|
|0-6 months  |PROBIT         |BELARUS      |High     |           0|     71| 4124|
|0-6 months  |PROBIT         |BELARUS      |High     |           1|    658| 4124|
|0-6 months  |PROVIDE        |BANGLADESH   |Low      |           0|     14|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |Low      |           1|     55|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |Medium   |           0|     13|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |Medium   |           1|     43|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |High     |           0|     13|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |High     |           1|     47|  185|
|0-6 months  |SAS-CompFeed   |INDIA        |Low      |           0|     66|  340|
|0-6 months  |SAS-CompFeed   |INDIA        |Low      |           1|     68|  340|
|0-6 months  |SAS-CompFeed   |INDIA        |Medium   |           0|     49|  340|
|0-6 months  |SAS-CompFeed   |INDIA        |Medium   |           1|     62|  340|
|0-6 months  |SAS-CompFeed   |INDIA        |High     |           0|     50|  340|
|0-6 months  |SAS-CompFeed   |INDIA        |High     |           1|     45|  340|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Low      |           0|     28|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Low      |           1|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Medium   |           0|     31|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Medium   |           1|      0|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |High     |           0|     19|   78|
|0-6 months  |SAS-FoodSuppl  |INDIA        |High     |           1|      0|   78|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Low      |           0|     61|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Low      |           1|    131|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Medium   |           0|     23|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Medium   |           1|     58|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |High     |           0|     17|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |High     |           1|     50|  340|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Low      |           0|     94| 2420|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Low      |           1|    293| 2420|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |           0|    462| 2420|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |           1|   1374| 2420|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |High     |           0|     54| 2420|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |High     |           1|    143| 2420|
|6-24 months |COHORTS        |INDIA        |Low      |           0|     86|  227|
|6-24 months |COHORTS        |INDIA        |Low      |           1|      0|  227|
|6-24 months |COHORTS        |INDIA        |Medium   |           0|     58|  227|
|6-24 months |COHORTS        |INDIA        |Medium   |           1|      0|  227|
|6-24 months |COHORTS        |INDIA        |High     |           0|     83|  227|
|6-24 months |COHORTS        |INDIA        |High     |           1|      0|  227|
|6-24 months |COHORTS        |GUATEMALA    |Low      |           0|     77|  160|
|6-24 months |COHORTS        |GUATEMALA    |Low      |           1|      5|  160|
|6-24 months |COHORTS        |GUATEMALA    |Medium   |           0|     43|  160|
|6-24 months |COHORTS        |GUATEMALA    |Medium   |           1|      2|  160|
|6-24 months |COHORTS        |GUATEMALA    |High     |           0|     32|  160|
|6-24 months |COHORTS        |GUATEMALA    |High     |           1|      1|  160|
|6-24 months |COHORTS        |PHILIPPINES  |Low      |           0|    179|  894|
|6-24 months |COHORTS        |PHILIPPINES  |Low      |           1|    164|  894|
|6-24 months |COHORTS        |PHILIPPINES  |Medium   |           0|    110|  894|
|6-24 months |COHORTS        |PHILIPPINES  |Medium   |           1|    125|  894|
|6-24 months |COHORTS        |PHILIPPINES  |High     |           0|    160|  894|
|6-24 months |COHORTS        |PHILIPPINES  |High     |           1|    156|  894|
|6-24 months |GMS-Nepal      |NEPAL        |Low      |           0|     83|  379|
|6-24 months |GMS-Nepal      |NEPAL        |Low      |           1|     74|  379|
|6-24 months |GMS-Nepal      |NEPAL        |Medium   |           0|     66|  379|
|6-24 months |GMS-Nepal      |NEPAL        |Medium   |           1|     73|  379|
|6-24 months |GMS-Nepal      |NEPAL        |High     |           0|     43|  379|
|6-24 months |GMS-Nepal      |NEPAL        |High     |           1|     40|  379|
|6-24 months |JiVitA-3       |BANGLADESH   |Low      |           0|   1112| 2720|
|6-24 months |JiVitA-3       |BANGLADESH   |Low      |           1|      0| 2720|
|6-24 months |JiVitA-3       |BANGLADESH   |Medium   |           0|    976| 2720|
|6-24 months |JiVitA-3       |BANGLADESH   |Medium   |           1|      0| 2720|
|6-24 months |JiVitA-3       |BANGLADESH   |High     |           0|    632| 2720|
|6-24 months |JiVitA-3       |BANGLADESH   |High     |           1|      0| 2720|
|6-24 months |JiVitA-4       |BANGLADESH   |Low      |           0|    488| 1440|
|6-24 months |JiVitA-4       |BANGLADESH   |Low      |           1|     73| 1440|
|6-24 months |JiVitA-4       |BANGLADESH   |Medium   |           0|    483| 1440|
|6-24 months |JiVitA-4       |BANGLADESH   |Medium   |           1|     98| 1440|
|6-24 months |JiVitA-4       |BANGLADESH   |High     |           0|    254| 1440|
|6-24 months |JiVitA-4       |BANGLADESH   |High     |           1|     44| 1440|
|6-24 months |LCNI-5         |MALAWI       |Low      |           0|     20|   74|
|6-24 months |LCNI-5         |MALAWI       |Low      |           1|      3|   74|
|6-24 months |LCNI-5         |MALAWI       |Medium   |           0|     21|   74|
|6-24 months |LCNI-5         |MALAWI       |Medium   |           1|      5|   74|
|6-24 months |LCNI-5         |MALAWI       |High     |           0|     20|   74|
|6-24 months |LCNI-5         |MALAWI       |High     |           1|      5|   74|
|6-24 months |MAL-ED         |INDIA        |Low      |           0|      7|   42|
|6-24 months |MAL-ED         |INDIA        |Low      |           1|      9|   42|
|6-24 months |MAL-ED         |INDIA        |Medium   |           0|     10|   42|
|6-24 months |MAL-ED         |INDIA        |Medium   |           1|      4|   42|
|6-24 months |MAL-ED         |INDIA        |High     |           0|      5|   42|
|6-24 months |MAL-ED         |INDIA        |High     |           1|      7|   42|
|6-24 months |MAL-ED         |BANGLADESH   |Low      |           0|      3|   30|
|6-24 months |MAL-ED         |BANGLADESH   |Low      |           1|      7|   30|
|6-24 months |MAL-ED         |BANGLADESH   |Medium   |           0|      2|   30|
|6-24 months |MAL-ED         |BANGLADESH   |Medium   |           1|      3|   30|
|6-24 months |MAL-ED         |BANGLADESH   |High     |           0|      7|   30|
|6-24 months |MAL-ED         |BANGLADESH   |High     |           1|      8|   30|
|6-24 months |MAL-ED         |PERU         |Low      |           0|      1|   22|
|6-24 months |MAL-ED         |PERU         |Low      |           1|      6|   22|
|6-24 months |MAL-ED         |PERU         |Medium   |           0|      2|   22|
|6-24 months |MAL-ED         |PERU         |Medium   |           1|      7|   22|
|6-24 months |MAL-ED         |PERU         |High     |           0|      2|   22|
|6-24 months |MAL-ED         |PERU         |High     |           1|      4|   22|
|6-24 months |MAL-ED         |NEPAL        |Low      |           0|      1|   15|
|6-24 months |MAL-ED         |NEPAL        |Low      |           1|      2|   15|
|6-24 months |MAL-ED         |NEPAL        |Medium   |           0|      0|   15|
|6-24 months |MAL-ED         |NEPAL        |Medium   |           1|      6|   15|
|6-24 months |MAL-ED         |NEPAL        |High     |           0|      0|   15|
|6-24 months |MAL-ED         |NEPAL        |High     |           1|      6|   15|
|6-24 months |MAL-ED         |TANZANIA     |Low      |           0|      1|   37|
|6-24 months |MAL-ED         |TANZANIA     |Low      |           1|      9|   37|
|6-24 months |MAL-ED         |TANZANIA     |Medium   |           0|      2|   37|
|6-24 months |MAL-ED         |TANZANIA     |Medium   |           1|      9|   37|
|6-24 months |MAL-ED         |TANZANIA     |High     |           0|      5|   37|
|6-24 months |MAL-ED         |TANZANIA     |High     |           1|     11|   37|
|6-24 months |MAL-ED         |SOUTH AFRICA |Low      |           0|      2|   18|
|6-24 months |MAL-ED         |SOUTH AFRICA |Low      |           1|      6|   18|
|6-24 months |MAL-ED         |SOUTH AFRICA |Medium   |           0|      0|   18|
|6-24 months |MAL-ED         |SOUTH AFRICA |Medium   |           1|      2|   18|
|6-24 months |MAL-ED         |SOUTH AFRICA |High     |           0|      4|   18|
|6-24 months |MAL-ED         |SOUTH AFRICA |High     |           1|      4|   18|
|6-24 months |NIH-Crypto     |BANGLADESH   |Low      |           0|     23|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |Low      |           1|      4|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |Medium   |           0|     28|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |Medium   |           1|      8|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |High     |           0|     45|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |High     |           1|      5|  113|
|6-24 months |PROBIT         |BELARUS      |Low      |           0|     37|  139|
|6-24 months |PROBIT         |BELARUS      |Low      |           1|     17|  139|
|6-24 months |PROBIT         |BELARUS      |Medium   |           0|     44|  139|
|6-24 months |PROBIT         |BELARUS      |Medium   |           1|     18|  139|
|6-24 months |PROBIT         |BELARUS      |High     |           0|     21|  139|
|6-24 months |PROBIT         |BELARUS      |High     |           1|      2|  139|
|6-24 months |PROVIDE        |BANGLADESH   |Low      |           0|     36|  123|
|6-24 months |PROVIDE        |BANGLADESH   |Low      |           1|      8|  123|
|6-24 months |PROVIDE        |BANGLADESH   |Medium   |           0|     28|  123|
|6-24 months |PROVIDE        |BANGLADESH   |Medium   |           1|     15|  123|
|6-24 months |PROVIDE        |BANGLADESH   |High     |           0|     25|  123|
|6-24 months |PROVIDE        |BANGLADESH   |High     |           1|     11|  123|
|6-24 months |SAS-CompFeed   |INDIA        |Low      |           0|    138|  473|
|6-24 months |SAS-CompFeed   |INDIA        |Low      |           1|     53|  473|
|6-24 months |SAS-CompFeed   |INDIA        |Medium   |           0|    112|  473|
|6-24 months |SAS-CompFeed   |INDIA        |Medium   |           1|     51|  473|
|6-24 months |SAS-CompFeed   |INDIA        |High     |           0|     88|  473|
|6-24 months |SAS-CompFeed   |INDIA        |High     |           1|     31|  473|
|6-24 months |SAS-FoodSuppl  |INDIA        |Low      |           0|     52|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |Low      |           1|      4|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |Medium   |           0|     51|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |Medium   |           1|      2|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |High     |           0|     40|  156|
|6-24 months |SAS-FoodSuppl  |INDIA        |High     |           1|      7|  156|
|6-24 months |TanzaniaChild2 |TANZANIA     |Low      |           0|     92|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |Low      |           1|    103|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |Medium   |           0|     48|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |Medium   |           1|     60|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |High     |           0|     25|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |High     |           1|     45|  373|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Low      |           0|    147| 1056|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Low      |           1|     16| 1056|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |           0|    754| 1056|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |           1|     61| 1056|
|6-24 months |ZVITAMBO       |ZIMBABWE     |High     |           0|     76| 1056|
|6-24 months |ZVITAMBO       |ZIMBABWE     |High     |           1|      2| 1056|


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


