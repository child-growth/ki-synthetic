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

**Intervention Variable:** feducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |feducyrs | pers_wast| n_cell|     n|
|:-----------|:--------------|:------------|:--------|---------:|------:|-----:|
|0-24 months |COHORTS        |INDIA        |Low      |         0|    433|  1400|
|0-24 months |COHORTS        |INDIA        |Low      |         1|     48|  1400|
|0-24 months |COHORTS        |INDIA        |Medium   |         0|    367|  1400|
|0-24 months |COHORTS        |INDIA        |Medium   |         1|     31|  1400|
|0-24 months |COHORTS        |INDIA        |High     |         0|    471|  1400|
|0-24 months |COHORTS        |INDIA        |High     |         1|     50|  1400|
|0-24 months |COHORTS        |GUATEMALA    |Low      |         0|    463|  1008|
|0-24 months |COHORTS        |GUATEMALA    |Low      |         1|     18|  1008|
|0-24 months |COHORTS        |GUATEMALA    |Medium   |         0|    339|  1008|
|0-24 months |COHORTS        |GUATEMALA    |Medium   |         1|     11|  1008|
|0-24 months |COHORTS        |GUATEMALA    |High     |         0|    170|  1008|
|0-24 months |COHORTS        |GUATEMALA    |High     |         1|      7|  1008|
|0-24 months |COHORTS        |PHILIPPINES  |Low      |         0|    875|  2705|
|0-24 months |COHORTS        |PHILIPPINES  |Low      |         1|     53|  2705|
|0-24 months |COHORTS        |PHILIPPINES  |Medium   |         0|    640|  2705|
|0-24 months |COHORTS        |PHILIPPINES  |Medium   |         1|     36|  2705|
|0-24 months |COHORTS        |PHILIPPINES  |High     |         0|   1051|  2705|
|0-24 months |COHORTS        |PHILIPPINES  |High     |         1|     50|  2705|
|0-24 months |GMS-Nepal      |NEPAL        |Low      |         0|    222|   596|
|0-24 months |GMS-Nepal      |NEPAL        |Low      |         1|     40|   596|
|0-24 months |GMS-Nepal      |NEPAL        |Medium   |         0|    188|   596|
|0-24 months |GMS-Nepal      |NEPAL        |Medium   |         1|     26|   596|
|0-24 months |GMS-Nepal      |NEPAL        |High     |         0|    106|   596|
|0-24 months |GMS-Nepal      |NEPAL        |High     |         1|     14|   596|
|0-24 months |JiVitA-3       |BANGLADESH   |Low      |         0|   5686| 15162|
|0-24 months |JiVitA-3       |BANGLADESH   |Low      |         1|    346| 15162|
|0-24 months |JiVitA-3       |BANGLADESH   |Medium   |         0|   4970| 15162|
|0-24 months |JiVitA-3       |BANGLADESH   |Medium   |         1|    306| 15162|
|0-24 months |JiVitA-3       |BANGLADESH   |High     |         0|   3643| 15162|
|0-24 months |JiVitA-3       |BANGLADESH   |High     |         1|    211| 15162|
|0-24 months |JiVitA-4       |BANGLADESH   |Low      |         0|   1717|  5025|
|0-24 months |JiVitA-4       |BANGLADESH   |Low      |         1|    160|  5025|
|0-24 months |JiVitA-4       |BANGLADESH   |Medium   |         0|   1831|  5025|
|0-24 months |JiVitA-4       |BANGLADESH   |Medium   |         1|    165|  5025|
|0-24 months |JiVitA-4       |BANGLADESH   |High     |         0|   1074|  5025|
|0-24 months |JiVitA-4       |BANGLADESH   |High     |         1|     78|  5025|
|0-24 months |LCNI-5         |MALAWI       |Low      |         0|    243|   709|
|0-24 months |LCNI-5         |MALAWI       |Low      |         1|      2|   709|
|0-24 months |LCNI-5         |MALAWI       |Medium   |         0|    251|   709|
|0-24 months |LCNI-5         |MALAWI       |Medium   |         1|      1|   709|
|0-24 months |LCNI-5         |MALAWI       |High     |         0|    209|   709|
|0-24 months |LCNI-5         |MALAWI       |High     |         1|      3|   709|
|0-24 months |MAL-ED         |INDIA        |Low      |         0|     29|   121|
|0-24 months |MAL-ED         |INDIA        |Low      |         1|      5|   121|
|0-24 months |MAL-ED         |INDIA        |Medium   |         0|     29|   121|
|0-24 months |MAL-ED         |INDIA        |Medium   |         1|      6|   121|
|0-24 months |MAL-ED         |INDIA        |High     |         0|     49|   121|
|0-24 months |MAL-ED         |INDIA        |High     |         1|      3|   121|
|0-24 months |MAL-ED         |BANGLADESH   |Low      |         0|     37|   140|
|0-24 months |MAL-ED         |BANGLADESH   |Low      |         1|      2|   140|
|0-24 months |MAL-ED         |BANGLADESH   |Medium   |         0|     35|   140|
|0-24 months |MAL-ED         |BANGLADESH   |Medium   |         1|      1|   140|
|0-24 months |MAL-ED         |BANGLADESH   |High     |         0|     62|   140|
|0-24 months |MAL-ED         |BANGLADESH   |High     |         1|      3|   140|
|0-24 months |MAL-ED         |PERU         |Low      |         0|     84|   273|
|0-24 months |MAL-ED         |PERU         |Low      |         1|      0|   273|
|0-24 months |MAL-ED         |PERU         |Medium   |         0|     82|   273|
|0-24 months |MAL-ED         |PERU         |Medium   |         1|      1|   273|
|0-24 months |MAL-ED         |PERU         |High     |         0|    106|   273|
|0-24 months |MAL-ED         |PERU         |High     |         1|      0|   273|
|0-24 months |MAL-ED         |NEPAL        |Low      |         0|     21|    79|
|0-24 months |MAL-ED         |NEPAL        |Low      |         1|      0|    79|
|0-24 months |MAL-ED         |NEPAL        |Medium   |         0|     24|    79|
|0-24 months |MAL-ED         |NEPAL        |Medium   |         1|      0|    79|
|0-24 months |MAL-ED         |NEPAL        |High     |         0|     33|    79|
|0-24 months |MAL-ED         |NEPAL        |High     |         1|      1|    79|
|0-24 months |MAL-ED         |TANZANIA     |Low      |         0|     63|   238|
|0-24 months |MAL-ED         |TANZANIA     |Low      |         1|      0|   238|
|0-24 months |MAL-ED         |TANZANIA     |Medium   |         0|     51|   238|
|0-24 months |MAL-ED         |TANZANIA     |Medium   |         1|      0|   238|
|0-24 months |MAL-ED         |TANZANIA     |High     |         0|    124|   238|
|0-24 months |MAL-ED         |TANZANIA     |High     |         1|      0|   238|
|0-24 months |MAL-ED         |SOUTH AFRICA |Low      |         0|     58|   123|
|0-24 months |MAL-ED         |SOUTH AFRICA |Low      |         1|      0|   123|
|0-24 months |MAL-ED         |SOUTH AFRICA |Medium   |         0|     28|   123|
|0-24 months |MAL-ED         |SOUTH AFRICA |Medium   |         1|      0|   123|
|0-24 months |MAL-ED         |SOUTH AFRICA |High     |         0|     36|   123|
|0-24 months |MAL-ED         |SOUTH AFRICA |High     |         1|      1|   123|
|0-24 months |NIH-Crypto     |BANGLADESH   |Low      |         0|    191|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |Low      |         1|      6|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |Medium   |         0|    178|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |Medium   |         1|     11|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |High     |         0|    335|   730|
|0-24 months |NIH-Crypto     |BANGLADESH   |High     |         1|      9|   730|
|0-24 months |PROBIT         |BELARUS      |Low      |         0|   6257| 16033|
|0-24 months |PROBIT         |BELARUS      |Low      |         1|     56| 16033|
|0-24 months |PROBIT         |BELARUS      |Medium   |         0|   6991| 16033|
|0-24 months |PROBIT         |BELARUS      |Medium   |         1|     53| 16033|
|0-24 months |PROBIT         |BELARUS      |High     |         0|   2658| 16033|
|0-24 months |PROBIT         |BELARUS      |High     |         1|     18| 16033|
|0-24 months |PROVIDE        |BANGLADESH   |Low      |         0|    204|   641|
|0-24 months |PROVIDE        |BANGLADESH   |Low      |         1|      7|   641|
|0-24 months |PROVIDE        |BANGLADESH   |Medium   |         0|    208|   641|
|0-24 months |PROVIDE        |BANGLADESH   |Medium   |         1|      4|   641|
|0-24 months |PROVIDE        |BANGLADESH   |High     |         0|    214|   641|
|0-24 months |PROVIDE        |BANGLADESH   |High     |         1|      4|   641|
|0-24 months |SAS-CompFeed   |INDIA        |Low      |         0|    518|  1365|
|0-24 months |SAS-CompFeed   |INDIA        |Low      |         1|     46|  1365|
|0-24 months |SAS-CompFeed   |INDIA        |Medium   |         0|    418|  1365|
|0-24 months |SAS-CompFeed   |INDIA        |Medium   |         1|     31|  1365|
|0-24 months |SAS-CompFeed   |INDIA        |High     |         0|    315|  1365|
|0-24 months |SAS-CompFeed   |INDIA        |High     |         1|     37|  1365|
|0-24 months |SAS-FoodSuppl  |INDIA        |Low      |         0|    111|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |Low      |         1|     26|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |Medium   |         0|    116|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |Medium   |         1|     23|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |High     |         0|     83|   375|
|0-24 months |SAS-FoodSuppl  |INDIA        |High     |         1|     16|   375|
|0-24 months |TanzaniaChild2 |TANZANIA     |Low      |         0|   1093|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |Low      |         1|     34|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |Medium   |         0|    594|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |Medium   |         1|     15|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |High     |         0|    421|  2166|
|0-24 months |TanzaniaChild2 |TANZANIA     |High     |         1|      9|  2166|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Low      |         0|   1394|  9221|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Low      |         1|     21|  9221|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |         0|   7005|  9221|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |         1|    125|  9221|
|0-24 months |ZVITAMBO       |ZIMBABWE     |High     |         0|    661|  9221|
|0-24 months |ZVITAMBO       |ZIMBABWE     |High     |         1|     15|  9221|
|0-6 months  |COHORTS        |PHILIPPINES  |Low      |         0|    262|   828|
|0-6 months  |COHORTS        |PHILIPPINES  |Low      |         1|     18|   828|
|0-6 months  |COHORTS        |PHILIPPINES  |Medium   |         0|    209|   828|
|0-6 months  |COHORTS        |PHILIPPINES  |Medium   |         1|     11|   828|
|0-6 months  |COHORTS        |PHILIPPINES  |High     |         0|    306|   828|
|0-6 months  |COHORTS        |PHILIPPINES  |High     |         1|     22|   828|
|0-6 months  |GMS-Nepal      |NEPAL        |Low      |         0|    215|   566|
|0-6 months  |GMS-Nepal      |NEPAL        |Low      |         1|     34|   566|
|0-6 months  |GMS-Nepal      |NEPAL        |Medium   |         0|    183|   566|
|0-6 months  |GMS-Nepal      |NEPAL        |Medium   |         1|     17|   566|
|0-6 months  |GMS-Nepal      |NEPAL        |High     |         0|    106|   566|
|0-6 months  |GMS-Nepal      |NEPAL        |High     |         1|     11|   566|
|0-6 months  |JiVitA-3       |BANGLADESH   |Low      |         0|     22|    48|
|0-6 months  |JiVitA-3       |BANGLADESH   |Low      |         1|      1|    48|
|0-6 months  |JiVitA-3       |BANGLADESH   |Medium   |         0|     14|    48|
|0-6 months  |JiVitA-3       |BANGLADESH   |Medium   |         1|      1|    48|
|0-6 months  |JiVitA-3       |BANGLADESH   |High     |         0|     10|    48|
|0-6 months  |JiVitA-3       |BANGLADESH   |High     |         1|      0|    48|
|0-6 months  |MAL-ED         |INDIA        |Low      |         0|     32|   121|
|0-6 months  |MAL-ED         |INDIA        |Low      |         1|      2|   121|
|0-6 months  |MAL-ED         |INDIA        |Medium   |         0|     32|   121|
|0-6 months  |MAL-ED         |INDIA        |Medium   |         1|      3|   121|
|0-6 months  |MAL-ED         |INDIA        |High     |         0|     49|   121|
|0-6 months  |MAL-ED         |INDIA        |High     |         1|      3|   121|
|0-6 months  |MAL-ED         |BANGLADESH   |Low      |         0|     39|   140|
|0-6 months  |MAL-ED         |BANGLADESH   |Low      |         1|      0|   140|
|0-6 months  |MAL-ED         |BANGLADESH   |Medium   |         0|     35|   140|
|0-6 months  |MAL-ED         |BANGLADESH   |Medium   |         1|      1|   140|
|0-6 months  |MAL-ED         |BANGLADESH   |High     |         0|     65|   140|
|0-6 months  |MAL-ED         |BANGLADESH   |High     |         1|      0|   140|
|0-6 months  |MAL-ED         |PERU         |Low      |         0|     84|   273|
|0-6 months  |MAL-ED         |PERU         |Low      |         1|      0|   273|
|0-6 months  |MAL-ED         |PERU         |Medium   |         0|     83|   273|
|0-6 months  |MAL-ED         |PERU         |Medium   |         1|      0|   273|
|0-6 months  |MAL-ED         |PERU         |High     |         0|    106|   273|
|0-6 months  |MAL-ED         |PERU         |High     |         1|      0|   273|
|0-6 months  |MAL-ED         |NEPAL        |Low      |         0|     21|    79|
|0-6 months  |MAL-ED         |NEPAL        |Low      |         1|      0|    79|
|0-6 months  |MAL-ED         |NEPAL        |Medium   |         0|     24|    79|
|0-6 months  |MAL-ED         |NEPAL        |Medium   |         1|      0|    79|
|0-6 months  |MAL-ED         |NEPAL        |High     |         0|     32|    79|
|0-6 months  |MAL-ED         |NEPAL        |High     |         1|      2|    79|
|0-6 months  |MAL-ED         |TANZANIA     |Low      |         0|     63|   238|
|0-6 months  |MAL-ED         |TANZANIA     |Low      |         1|      0|   238|
|0-6 months  |MAL-ED         |TANZANIA     |Medium   |         0|     51|   238|
|0-6 months  |MAL-ED         |TANZANIA     |Medium   |         1|      0|   238|
|0-6 months  |MAL-ED         |TANZANIA     |High     |         0|    124|   238|
|0-6 months  |MAL-ED         |TANZANIA     |High     |         1|      0|   238|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Low      |         0|     57|   122|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Low      |         1|      0|   122|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Medium   |         0|     28|   122|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Medium   |         1|      0|   122|
|0-6 months  |MAL-ED         |SOUTH AFRICA |High     |         0|     36|   122|
|0-6 months  |MAL-ED         |SOUTH AFRICA |High     |         1|      1|   122|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Low      |         0|     72|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Low      |         1|      1|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Medium   |         0|     61|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Medium   |         1|      2|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |High     |         0|    112|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |High     |         1|      2|   250|
|0-6 months  |PROBIT         |BELARUS      |Low      |         0|   4753| 13094|
|0-6 months  |PROBIT         |BELARUS      |Low      |         1|    411| 13094|
|0-6 months  |PROBIT         |BELARUS      |Medium   |         0|   5329| 13094|
|0-6 months  |PROBIT         |BELARUS      |Medium   |         1|    463| 13094|
|0-6 months  |PROBIT         |BELARUS      |High     |         0|   1957| 13094|
|0-6 months  |PROBIT         |BELARUS      |High     |         1|    181| 13094|
|0-6 months  |PROVIDE        |BANGLADESH   |Low      |         0|    206|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |Low      |         1|      5|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |Medium   |         0|    204|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |Medium   |         1|      7|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |High     |         0|    214|   638|
|0-6 months  |PROVIDE        |BANGLADESH   |High     |         1|      2|   638|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Low      |         0|   1046|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Low      |         1|     29|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Medium   |         0|    563|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Medium   |         1|     14|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |High     |         0|    400|  2061|
|0-6 months  |TanzaniaChild2 |TANZANIA     |High     |         1|      9|  2061|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Low      |         0|     87|   610|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Low      |         1|      2|   610|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |         0|    456|   610|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |         1|     11|   610|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |High     |         0|     54|   610|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |High     |         1|      0|   610|
|6-24 months |COHORTS        |INDIA        |Low      |         0|    433|  1400|
|6-24 months |COHORTS        |INDIA        |Low      |         1|     48|  1400|
|6-24 months |COHORTS        |INDIA        |Medium   |         0|    367|  1400|
|6-24 months |COHORTS        |INDIA        |Medium   |         1|     31|  1400|
|6-24 months |COHORTS        |INDIA        |High     |         0|    471|  1400|
|6-24 months |COHORTS        |INDIA        |High     |         1|     50|  1400|
|6-24 months |COHORTS        |GUATEMALA    |Low      |         0|    463|  1008|
|6-24 months |COHORTS        |GUATEMALA    |Low      |         1|     18|  1008|
|6-24 months |COHORTS        |GUATEMALA    |Medium   |         0|    339|  1008|
|6-24 months |COHORTS        |GUATEMALA    |Medium   |         1|     11|  1008|
|6-24 months |COHORTS        |GUATEMALA    |High     |         0|    170|  1008|
|6-24 months |COHORTS        |GUATEMALA    |High     |         1|      7|  1008|
|6-24 months |COHORTS        |PHILIPPINES  |Low      |         0|    875|  2705|
|6-24 months |COHORTS        |PHILIPPINES  |Low      |         1|     53|  2705|
|6-24 months |COHORTS        |PHILIPPINES  |Medium   |         0|    640|  2705|
|6-24 months |COHORTS        |PHILIPPINES  |Medium   |         1|     36|  2705|
|6-24 months |COHORTS        |PHILIPPINES  |High     |         0|   1051|  2705|
|6-24 months |COHORTS        |PHILIPPINES  |High     |         1|     50|  2705|
|6-24 months |GMS-Nepal      |NEPAL        |Low      |         0|    222|   596|
|6-24 months |GMS-Nepal      |NEPAL        |Low      |         1|     40|   596|
|6-24 months |GMS-Nepal      |NEPAL        |Medium   |         0|    188|   596|
|6-24 months |GMS-Nepal      |NEPAL        |Medium   |         1|     26|   596|
|6-24 months |GMS-Nepal      |NEPAL        |High     |         0|    106|   596|
|6-24 months |GMS-Nepal      |NEPAL        |High     |         1|     14|   596|
|6-24 months |JiVitA-3       |BANGLADESH   |Low      |         0|   5686| 15162|
|6-24 months |JiVitA-3       |BANGLADESH   |Low      |         1|    346| 15162|
|6-24 months |JiVitA-3       |BANGLADESH   |Medium   |         0|   4970| 15162|
|6-24 months |JiVitA-3       |BANGLADESH   |Medium   |         1|    306| 15162|
|6-24 months |JiVitA-3       |BANGLADESH   |High     |         0|   3643| 15162|
|6-24 months |JiVitA-3       |BANGLADESH   |High     |         1|    211| 15162|
|6-24 months |JiVitA-4       |BANGLADESH   |Low      |         0|   1717|  5025|
|6-24 months |JiVitA-4       |BANGLADESH   |Low      |         1|    160|  5025|
|6-24 months |JiVitA-4       |BANGLADESH   |Medium   |         0|   1831|  5025|
|6-24 months |JiVitA-4       |BANGLADESH   |Medium   |         1|    165|  5025|
|6-24 months |JiVitA-4       |BANGLADESH   |High     |         0|   1074|  5025|
|6-24 months |JiVitA-4       |BANGLADESH   |High     |         1|     78|  5025|
|6-24 months |LCNI-5         |MALAWI       |Low      |         0|    243|   709|
|6-24 months |LCNI-5         |MALAWI       |Low      |         1|      2|   709|
|6-24 months |LCNI-5         |MALAWI       |Medium   |         0|    251|   709|
|6-24 months |LCNI-5         |MALAWI       |Medium   |         1|      1|   709|
|6-24 months |LCNI-5         |MALAWI       |High     |         0|    209|   709|
|6-24 months |LCNI-5         |MALAWI       |High     |         1|      3|   709|
|6-24 months |MAL-ED         |INDIA        |Low      |         0|     29|   121|
|6-24 months |MAL-ED         |INDIA        |Low      |         1|      5|   121|
|6-24 months |MAL-ED         |INDIA        |Medium   |         0|     29|   121|
|6-24 months |MAL-ED         |INDIA        |Medium   |         1|      6|   121|
|6-24 months |MAL-ED         |INDIA        |High     |         0|     49|   121|
|6-24 months |MAL-ED         |INDIA        |High     |         1|      3|   121|
|6-24 months |MAL-ED         |BANGLADESH   |Low      |         0|     37|   140|
|6-24 months |MAL-ED         |BANGLADESH   |Low      |         1|      2|   140|
|6-24 months |MAL-ED         |BANGLADESH   |Medium   |         0|     35|   140|
|6-24 months |MAL-ED         |BANGLADESH   |Medium   |         1|      1|   140|
|6-24 months |MAL-ED         |BANGLADESH   |High     |         0|     62|   140|
|6-24 months |MAL-ED         |BANGLADESH   |High     |         1|      3|   140|
|6-24 months |MAL-ED         |PERU         |Low      |         0|     84|   273|
|6-24 months |MAL-ED         |PERU         |Low      |         1|      0|   273|
|6-24 months |MAL-ED         |PERU         |Medium   |         0|     82|   273|
|6-24 months |MAL-ED         |PERU         |Medium   |         1|      1|   273|
|6-24 months |MAL-ED         |PERU         |High     |         0|    106|   273|
|6-24 months |MAL-ED         |PERU         |High     |         1|      0|   273|
|6-24 months |MAL-ED         |NEPAL        |Low      |         0|     21|    79|
|6-24 months |MAL-ED         |NEPAL        |Low      |         1|      0|    79|
|6-24 months |MAL-ED         |NEPAL        |Medium   |         0|     24|    79|
|6-24 months |MAL-ED         |NEPAL        |Medium   |         1|      0|    79|
|6-24 months |MAL-ED         |NEPAL        |High     |         0|     33|    79|
|6-24 months |MAL-ED         |NEPAL        |High     |         1|      1|    79|
|6-24 months |MAL-ED         |TANZANIA     |Low      |         0|     63|   238|
|6-24 months |MAL-ED         |TANZANIA     |Low      |         1|      0|   238|
|6-24 months |MAL-ED         |TANZANIA     |Medium   |         0|     51|   238|
|6-24 months |MAL-ED         |TANZANIA     |Medium   |         1|      0|   238|
|6-24 months |MAL-ED         |TANZANIA     |High     |         0|    124|   238|
|6-24 months |MAL-ED         |TANZANIA     |High     |         1|      0|   238|
|6-24 months |MAL-ED         |SOUTH AFRICA |Low      |         0|     58|   123|
|6-24 months |MAL-ED         |SOUTH AFRICA |Low      |         1|      0|   123|
|6-24 months |MAL-ED         |SOUTH AFRICA |Medium   |         0|     28|   123|
|6-24 months |MAL-ED         |SOUTH AFRICA |Medium   |         1|      0|   123|
|6-24 months |MAL-ED         |SOUTH AFRICA |High     |         0|     36|   123|
|6-24 months |MAL-ED         |SOUTH AFRICA |High     |         1|      1|   123|
|6-24 months |NIH-Crypto     |BANGLADESH   |Low      |         0|    191|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |Low      |         1|      6|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |Medium   |         0|    178|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |Medium   |         1|     11|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |High     |         0|    335|   730|
|6-24 months |NIH-Crypto     |BANGLADESH   |High     |         1|      9|   730|
|6-24 months |PROBIT         |BELARUS      |Low      |         0|   6257| 16033|
|6-24 months |PROBIT         |BELARUS      |Low      |         1|     56| 16033|
|6-24 months |PROBIT         |BELARUS      |Medium   |         0|   6991| 16033|
|6-24 months |PROBIT         |BELARUS      |Medium   |         1|     53| 16033|
|6-24 months |PROBIT         |BELARUS      |High     |         0|   2658| 16033|
|6-24 months |PROBIT         |BELARUS      |High     |         1|     18| 16033|
|6-24 months |PROVIDE        |BANGLADESH   |Low      |         0|    204|   641|
|6-24 months |PROVIDE        |BANGLADESH   |Low      |         1|      7|   641|
|6-24 months |PROVIDE        |BANGLADESH   |Medium   |         0|    208|   641|
|6-24 months |PROVIDE        |BANGLADESH   |Medium   |         1|      4|   641|
|6-24 months |PROVIDE        |BANGLADESH   |High     |         0|    214|   641|
|6-24 months |PROVIDE        |BANGLADESH   |High     |         1|      4|   641|
|6-24 months |SAS-CompFeed   |INDIA        |Low      |         0|    518|  1365|
|6-24 months |SAS-CompFeed   |INDIA        |Low      |         1|     46|  1365|
|6-24 months |SAS-CompFeed   |INDIA        |Medium   |         0|    418|  1365|
|6-24 months |SAS-CompFeed   |INDIA        |Medium   |         1|     31|  1365|
|6-24 months |SAS-CompFeed   |INDIA        |High     |         0|    315|  1365|
|6-24 months |SAS-CompFeed   |INDIA        |High     |         1|     37|  1365|
|6-24 months |SAS-FoodSuppl  |INDIA        |Low      |         0|    111|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |Low      |         1|     26|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |Medium   |         0|    116|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |Medium   |         1|     23|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |High     |         0|     83|   375|
|6-24 months |SAS-FoodSuppl  |INDIA        |High     |         1|     16|   375|
|6-24 months |TanzaniaChild2 |TANZANIA     |Low      |         0|   1093|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |Low      |         1|     34|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |Medium   |         0|    594|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |Medium   |         1|     15|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |High     |         0|    421|  2166|
|6-24 months |TanzaniaChild2 |TANZANIA     |High     |         1|      9|  2166|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Low      |         0|   1394|  9221|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Low      |         1|     21|  9221|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |         0|   7005|  9221|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |         1|    125|  9221|
|6-24 months |ZVITAMBO       |ZIMBABWE     |High     |         0|    661|  9221|
|6-24 months |ZVITAMBO       |ZIMBABWE     |High     |         1|     15|  9221|


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
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
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
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


