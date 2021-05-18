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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |hhwealth_quart | ever_stunted| n_cell|     n|
|:-----------|:--------------|:------------|:--------------|------------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |            0|     11|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |            1|    102|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |            0|      8|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |            1|     82|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |            0|      3|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |            1|     77|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |            0|      6|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |            1|     84|   373|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ4       |            0|    135|  1294|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ4       |            1|    359|  1294|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ1       |            0|     59|  1294|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ1       |            1|    221|  1294|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ2       |            0|     39|  1294|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ2       |            1|    196|  1294|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ3       |            0|     69|  1294|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ3       |            1|    216|  1294|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ4       |            0|    378|  3055|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ4       |            1|    496|  3055|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ1       |            0|    189|  3055|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ1       |            1|    491|  3055|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ2       |            0|    155|  3055|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ2       |            1|    388|  3055|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ3       |            0|    235|  3055|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ3       |            1|    723|  3055|
|0-24 months |CONTENT        |PERU         |WealthQ4       |            0|     35|   215|
|0-24 months |CONTENT        |PERU         |WealthQ4       |            1|     12|   215|
|0-24 months |CONTENT        |PERU         |WealthQ1       |            0|     52|   215|
|0-24 months |CONTENT        |PERU         |WealthQ1       |            1|     14|   215|
|0-24 months |CONTENT        |PERU         |WealthQ2       |            0|     39|   215|
|0-24 months |CONTENT        |PERU         |WealthQ2       |            1|     11|   215|
|0-24 months |CONTENT        |PERU         |WealthQ3       |            0|     36|   215|
|0-24 months |CONTENT        |PERU         |WealthQ3       |            1|     16|   215|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ4       |            0|     61|   698|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ4       |            1|    110|   698|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ1       |            0|     58|   698|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ1       |            1|    112|   698|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ2       |            0|     56|   698|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ2       |            1|    119|   698|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ3       |            0|     77|   698|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ3       |            1|    105|   698|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |            0|   3849| 27200|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |            1|   3350| 27200|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |            0|   3162| 27200|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |            1|   3404| 27200|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |            0|   3310| 27200|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |            1|   3344| 27200|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |            0|   3408| 27200|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |            1|   3373| 27200|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |            0|    646|  5438|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |            1|    726|  5438|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |            0|    531|  5438|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |            1|    843|  5438|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |            0|    503|  5438|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |            1|    808|  5438|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |            0|    599|  5438|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |            1|    782|  5438|
|0-24 months |LCNI-5         |MALAWI       |WealthQ4       |            0|     68|   828|
|0-24 months |LCNI-5         |MALAWI       |WealthQ4       |            1|    134|   828|
|0-24 months |LCNI-5         |MALAWI       |WealthQ1       |            0|     87|   828|
|0-24 months |LCNI-5         |MALAWI       |WealthQ1       |            1|    131|   828|
|0-24 months |LCNI-5         |MALAWI       |WealthQ2       |            0|     65|   828|
|0-24 months |LCNI-5         |MALAWI       |WealthQ2       |            1|    135|   828|
|0-24 months |LCNI-5         |MALAWI       |WealthQ3       |            0|     80|   828|
|0-24 months |LCNI-5         |MALAWI       |WealthQ3       |            1|    128|   828|
|0-24 months |MAL-ED         |INDIA        |WealthQ4       |            0|     11|   240|
|0-24 months |MAL-ED         |INDIA        |WealthQ4       |            1|     36|   240|
|0-24 months |MAL-ED         |INDIA        |WealthQ1       |            0|     32|   240|
|0-24 months |MAL-ED         |INDIA        |WealthQ1       |            1|     37|   240|
|0-24 months |MAL-ED         |INDIA        |WealthQ2       |            0|     26|   240|
|0-24 months |MAL-ED         |INDIA        |WealthQ2       |            1|     43|   240|
|0-24 months |MAL-ED         |INDIA        |WealthQ3       |            0|     25|   240|
|0-24 months |MAL-ED         |INDIA        |WealthQ3       |            1|     30|   240|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ4       |            0|     25|   244|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ4       |            1|     31|   244|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ1       |            0|     28|   244|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ1       |            1|     48|   244|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ2       |            0|     20|   244|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ2       |            1|     30|   244|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ3       |            0|     25|   244|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ3       |            1|     37|   244|
|0-24 months |MAL-ED         |PERU         |WealthQ4       |            0|     26|   284|
|0-24 months |MAL-ED         |PERU         |WealthQ4       |            1|     50|   284|
|0-24 months |MAL-ED         |PERU         |WealthQ1       |            0|     26|   284|
|0-24 months |MAL-ED         |PERU         |WealthQ1       |            1|     31|   284|
|0-24 months |MAL-ED         |PERU         |WealthQ2       |            0|     22|   284|
|0-24 months |MAL-ED         |PERU         |WealthQ2       |            1|     49|   284|
|0-24 months |MAL-ED         |PERU         |WealthQ3       |            0|     35|   284|
|0-24 months |MAL-ED         |PERU         |WealthQ3       |            1|     45|   284|
|0-24 months |MAL-ED         |NEPAL        |WealthQ4       |            0|     44|   235|
|0-24 months |MAL-ED         |NEPAL        |WealthQ4       |            1|     30|   235|
|0-24 months |MAL-ED         |NEPAL        |WealthQ1       |            0|     39|   235|
|0-24 months |MAL-ED         |NEPAL        |WealthQ1       |            1|     19|   235|
|0-24 months |MAL-ED         |NEPAL        |WealthQ2       |            0|     42|   235|
|0-24 months |MAL-ED         |NEPAL        |WealthQ2       |            1|     19|   235|
|0-24 months |MAL-ED         |NEPAL        |WealthQ3       |            0|     26|   235|
|0-24 months |MAL-ED         |NEPAL        |WealthQ3       |            1|     16|   235|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ4       |            0|     32|   207|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ4       |            1|     13|   207|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ1       |            0|     47|   207|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ1       |            1|     15|   207|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ2       |            0|     35|   207|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ2       |            1|     14|   207|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ3       |            0|     36|   207|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ3       |            1|     15|   207|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ4       |            0|      6|   251|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ4       |            1|     52|   251|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ1       |            0|     11|   251|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ1       |            1|     60|   251|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ2       |            0|     11|   251|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ2       |            1|     48|   251|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ3       |            0|     11|   251|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ3       |            1|     52|   251|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |            0|     29|   271|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |            1|     34|   271|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |            0|     33|   271|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |            1|     48|   271|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |            0|     20|   271|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |            1|     32|   271|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |            0|     34|   271|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |            1|     41|   271|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ4       |            0|     75|   700|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ4       |            1|     86|   700|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ1       |            0|    101|   700|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ1       |            1|     73|   700|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ2       |            0|    113|   700|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ2       |            1|     63|   700|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ3       |            0|    106|   700|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ3       |            1|     83|   700|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |            0|    400|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |            1|    216|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |            0|    444|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |            1|    230|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |            0|    320|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |            1|    161|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |            0|    402|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |            1|    220|  2393|
|0-24 months |Vellore Crypto |INDIA        |WealthQ4       |            0|     36|   410|
|0-24 months |Vellore Crypto |INDIA        |WealthQ4       |            1|     58|   410|
|0-24 months |Vellore Crypto |INDIA        |WealthQ1       |            0|     57|   410|
|0-24 months |Vellore Crypto |INDIA        |WealthQ1       |            1|     75|   410|
|0-24 months |Vellore Crypto |INDIA        |WealthQ2       |            0|     34|   410|
|0-24 months |Vellore Crypto |INDIA        |WealthQ2       |            1|     79|   410|
|0-24 months |Vellore Crypto |INDIA        |WealthQ3       |            0|     20|   410|
|0-24 months |Vellore Crypto |INDIA        |WealthQ3       |            1|     51|   410|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ4       |            0|     59|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ4       |            1|     53|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ1       |            0|     38|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ1       |            1|     50|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ2       |            0|     40|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ2       |            1|     39|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ3       |            0|     43|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ3       |            1|     46|   368|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ4       |            0|    283|  1045|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ4       |            1|    106|  1045|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ1       |            0|    143|  1045|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ1       |            1|     80|  1045|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ2       |            0|    116|  1045|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ2       |            1|     66|  1045|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ3       |            0|    167|  1045|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ3       |            1|     84|  1045|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ4       |            0|    711|  3055|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ4       |            1|    163|  3055|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ1       |            0|    500|  3055|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ1       |            1|    180|  3055|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ2       |            0|    396|  3055|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ2       |            1|    147|  3055|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ3       |            0|    717|  3055|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ3       |            1|    241|  3055|
|0-6 months  |CONTENT        |PERU         |WealthQ4       |            0|     40|   215|
|0-6 months  |CONTENT        |PERU         |WealthQ4       |            1|      7|   215|
|0-6 months  |CONTENT        |PERU         |WealthQ1       |            0|     60|   215|
|0-6 months  |CONTENT        |PERU         |WealthQ1       |            1|      6|   215|
|0-6 months  |CONTENT        |PERU         |WealthQ2       |            0|     46|   215|
|0-6 months  |CONTENT        |PERU         |WealthQ2       |            1|      4|   215|
|0-6 months  |CONTENT        |PERU         |WealthQ3       |            0|     42|   215|
|0-6 months  |CONTENT        |PERU         |WealthQ3       |            1|     10|   215|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ4       |            0|    119|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ4       |            1|     52|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ1       |            0|    116|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ1       |            1|     54|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ2       |            0|    116|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ2       |            1|     59|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ3       |            0|    125|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ3       |            1|     57|   698|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ4       |            0|   4457| 27135|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ4       |            1|   2715| 27135|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ1       |            0|   3649| 27135|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ1       |            1|   2907| 27135|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ2       |            0|   3832| 27135|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ2       |            1|   2804| 27135|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ3       |            0|   3994| 27135|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ3       |            1|   2777| 27135|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ4       |            0|    901|  5126|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ4       |            1|    401|  5126|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ1       |            0|    800|  5126|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ1       |            1|    481|  5126|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ2       |            0|    770|  5126|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ2       |            1|    468|  5126|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ3       |            0|    873|  5126|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ3       |            1|    432|  5126|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ4       |            0|     44|   266|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ4       |            1|     19|   266|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ1       |            0|     42|   266|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ1       |            1|     23|   266|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ2       |            0|     36|   266|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ2       |            1|     28|   266|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ3       |            0|     48|   266|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ3       |            1|     26|   266|
|0-6 months  |MAL-ED         |INDIA        |WealthQ4       |            0|     24|   240|
|0-6 months  |MAL-ED         |INDIA        |WealthQ4       |            1|     23|   240|
|0-6 months  |MAL-ED         |INDIA        |WealthQ1       |            0|     44|   240|
|0-6 months  |MAL-ED         |INDIA        |WealthQ1       |            1|     25|   240|
|0-6 months  |MAL-ED         |INDIA        |WealthQ2       |            0|     47|   240|
|0-6 months  |MAL-ED         |INDIA        |WealthQ2       |            1|     22|   240|
|0-6 months  |MAL-ED         |INDIA        |WealthQ3       |            0|     42|   240|
|0-6 months  |MAL-ED         |INDIA        |WealthQ3       |            1|     13|   240|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ4       |            0|     44|   244|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ4       |            1|     12|   244|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ1       |            0|     41|   244|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ1       |            1|     35|   244|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ2       |            0|     35|   244|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ2       |            1|     15|   244|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ3       |            0|     40|   244|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ3       |            1|     22|   244|
|0-6 months  |MAL-ED         |PERU         |WealthQ4       |            0|     40|   284|
|0-6 months  |MAL-ED         |PERU         |WealthQ4       |            1|     36|   284|
|0-6 months  |MAL-ED         |PERU         |WealthQ1       |            0|     35|   284|
|0-6 months  |MAL-ED         |PERU         |WealthQ1       |            1|     22|   284|
|0-6 months  |MAL-ED         |PERU         |WealthQ2       |            0|     32|   284|
|0-6 months  |MAL-ED         |PERU         |WealthQ2       |            1|     39|   284|
|0-6 months  |MAL-ED         |PERU         |WealthQ3       |            0|     55|   284|
|0-6 months  |MAL-ED         |PERU         |WealthQ3       |            1|     25|   284|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ4       |            0|     59|   235|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ4       |            1|     15|   235|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ1       |            0|     48|   235|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ1       |            1|     10|   235|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ2       |            0|     51|   235|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ2       |            1|     10|   235|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ3       |            0|     34|   235|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ3       |            1|      8|   235|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ4       |            0|     36|   207|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ4       |            1|      9|   207|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ1       |            0|     49|   207|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ1       |            1|     13|   207|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ2       |            0|     36|   207|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ2       |            1|     13|   207|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ3       |            0|     39|   207|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ3       |            1|     12|   207|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ4       |            0|     33|   251|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ4       |            1|     25|   251|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ1       |            0|     39|   251|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ1       |            1|     32|   251|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ2       |            0|     36|   251|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ2       |            1|     23|   251|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ3       |            0|     41|   251|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ3       |            1|     22|   251|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ4       |            0|     39|   271|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ4       |            1|     24|   271|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ1       |            0|     45|   271|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ1       |            1|     36|   271|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ2       |            0|     34|   271|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ2       |            1|     18|   271|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ3       |            0|     52|   271|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ3       |            1|     23|   271|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ4       |            0|    117|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ4       |            1|     44|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ1       |            0|    132|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ1       |            1|     42|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ2       |            0|    143|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ2       |            1|     33|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ3       |            0|    140|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ3       |            1|     49|   700|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ4       |            0|    494|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ4       |            1|    122|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ1       |            0|    545|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ1       |            1|    129|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ2       |            0|    388|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ2       |            1|     93|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ3       |            0|    500|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ3       |            1|    122|  2393|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ4       |            0|     59|   410|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ4       |            1|     35|   410|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ1       |            0|     80|   410|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ1       |            1|     52|   410|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ2       |            0|     56|   410|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ2       |            1|     57|   410|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ3       |            0|     41|   410|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ3       |            1|     30|   410|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |            0|     11|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |            1|     49|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |            0|      8|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |            1|     32|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |            0|      3|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |            1|     38|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |            0|      6|   185|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |            1|     38|   185|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ4       |            0|     91|   859|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ4       |            1|    253|   859|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ1       |            0|     43|   859|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ1       |            1|    141|   859|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ2       |            0|     26|   859|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ2       |            1|    130|   859|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ3       |            0|     43|   859|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ3       |            1|    132|   859|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ4       |            0|    313|  2119|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ4       |            1|    333|  2119|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ1       |            0|    123|  2119|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ1       |            1|    311|  2119|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ2       |            0|    127|  2119|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ2       |            1|    241|  2119|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ3       |            0|    189|  2119|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ3       |            1|    482|  2119|
|6-24 months |CONTENT        |PERU         |WealthQ4       |            0|     35|   188|
|6-24 months |CONTENT        |PERU         |WealthQ4       |            1|      5|   188|
|6-24 months |CONTENT        |PERU         |WealthQ1       |            0|     52|   188|
|6-24 months |CONTENT        |PERU         |WealthQ1       |            1|      8|   188|
|6-24 months |CONTENT        |PERU         |WealthQ2       |            0|     39|   188|
|6-24 months |CONTENT        |PERU         |WealthQ2       |            1|      7|   188|
|6-24 months |CONTENT        |PERU         |WealthQ3       |            0|     36|   188|
|6-24 months |CONTENT        |PERU         |WealthQ3       |            1|      6|   188|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ4       |            0|     45|   397|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ4       |            1|     58|   397|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ1       |            0|     37|   397|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ1       |            1|     58|   397|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ2       |            0|     43|   397|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ2       |            1|     60|   397|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ3       |            0|     48|   397|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ3       |            1|     48|   397|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |            0|   2501| 10489|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |            1|    635| 10489|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |            0|   1739| 10489|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |            1|    497| 10489|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |            0|   1937| 10489|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |            1|    540| 10489|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |            0|   2044| 10489|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |            1|    596| 10489|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |            0|    640|  3647|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |            1|    325|  3647|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |            0|    529|  3647|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |            1|    362|  3647|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |            0|    502|  3647|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |            1|    340|  3647|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |            0|    599|  3647|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |            1|    350|  3647|
|6-24 months |LCNI-5         |MALAWI       |WealthQ4       |            0|     64|   719|
|6-24 months |LCNI-5         |MALAWI       |WealthQ4       |            1|    115|   719|
|6-24 months |LCNI-5         |MALAWI       |WealthQ1       |            0|     82|   719|
|6-24 months |LCNI-5         |MALAWI       |WealthQ1       |            1|    108|   719|
|6-24 months |LCNI-5         |MALAWI       |WealthQ2       |            0|     64|   719|
|6-24 months |LCNI-5         |MALAWI       |WealthQ2       |            1|    107|   719|
|6-24 months |LCNI-5         |MALAWI       |WealthQ3       |            0|     77|   719|
|6-24 months |LCNI-5         |MALAWI       |WealthQ3       |            1|    102|   719|
|6-24 months |MAL-ED         |INDIA        |WealthQ4       |            0|     10|   148|
|6-24 months |MAL-ED         |INDIA        |WealthQ4       |            1|     13|   148|
|6-24 months |MAL-ED         |INDIA        |WealthQ1       |            0|     31|   148|
|6-24 months |MAL-ED         |INDIA        |WealthQ1       |            1|     12|   148|
|6-24 months |MAL-ED         |INDIA        |WealthQ2       |            0|     22|   148|
|6-24 months |MAL-ED         |INDIA        |WealthQ2       |            1|     21|   148|
|6-24 months |MAL-ED         |INDIA        |WealthQ3       |            0|     22|   148|
|6-24 months |MAL-ED         |INDIA        |WealthQ3       |            1|     17|   148|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ4       |            0|     20|   148|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ4       |            1|     19|   148|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ1       |            0|     25|   148|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ1       |            1|     13|   148|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ2       |            0|     20|   148|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ2       |            1|     15|   148|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ3       |            0|     21|   148|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ3       |            1|     15|   148|
|6-24 months |MAL-ED         |PERU         |WealthQ4       |            0|     17|   137|
|6-24 months |MAL-ED         |PERU         |WealthQ4       |            1|     14|   137|
|6-24 months |MAL-ED         |PERU         |WealthQ1       |            0|     20|   137|
|6-24 months |MAL-ED         |PERU         |WealthQ1       |            1|      9|   137|
|6-24 months |MAL-ED         |PERU         |WealthQ2       |            0|     16|   137|
|6-24 months |MAL-ED         |PERU         |WealthQ2       |            1|     10|   137|
|6-24 months |MAL-ED         |PERU         |WealthQ3       |            0|     31|   137|
|6-24 months |MAL-ED         |PERU         |WealthQ3       |            1|     20|   137|
|6-24 months |MAL-ED         |NEPAL        |WealthQ4       |            0|     43|   190|
|6-24 months |MAL-ED         |NEPAL        |WealthQ4       |            1|     15|   190|
|6-24 months |MAL-ED         |NEPAL        |WealthQ1       |            0|     39|   190|
|6-24 months |MAL-ED         |NEPAL        |WealthQ1       |            1|      9|   190|
|6-24 months |MAL-ED         |NEPAL        |WealthQ2       |            0|     41|   190|
|6-24 months |MAL-ED         |NEPAL        |WealthQ2       |            1|      9|   190|
|6-24 months |MAL-ED         |NEPAL        |WealthQ3       |            0|     26|   190|
|6-24 months |MAL-ED         |NEPAL        |WealthQ3       |            1|      8|   190|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ4       |            0|     29|   145|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ4       |            1|      4|   145|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ1       |            0|     42|   145|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ1       |            1|      2|   145|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ2       |            0|     33|   145|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ2       |            1|      1|   145|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ3       |            0|     31|   145|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ3       |            1|      3|   145|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ4       |            0|      4|   141|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ4       |            1|     27|   141|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ1       |            0|      9|   141|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ1       |            1|     28|   141|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ2       |            0|      9|   141|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ2       |            1|     25|   141|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ3       |            0|      9|   141|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ3       |            1|     30|   141|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |            0|     25|   142|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |            1|     10|   142|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |            0|     25|   142|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |            1|     12|   142|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |            0|     13|   142|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |            1|     14|   142|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |            0|     25|   142|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |            1|     18|   142|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ4       |            0|     54|   456|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ4       |            1|     42|   456|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ1       |            0|     79|   456|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ1       |            1|     31|   456|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ2       |            0|    101|   456|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ2       |            1|     30|   456|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ3       |            0|     85|   456|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ3       |            1|     34|   456|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |            0|    316|  1601|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |            1|     94|  1601|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |            0|    357|  1601|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |            1|    101|  1601|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |            0|    259|  1601|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |            1|     68|  1601|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |            0|    308|  1601|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |            1|     98|  1601|
|6-24 months |Vellore Crypto |INDIA        |WealthQ4       |            0|     36|   236|
|6-24 months |Vellore Crypto |INDIA        |WealthQ4       |            1|     23|   236|
|6-24 months |Vellore Crypto |INDIA        |WealthQ1       |            0|     57|   236|
|6-24 months |Vellore Crypto |INDIA        |WealthQ1       |            1|     23|   236|
|6-24 months |Vellore Crypto |INDIA        |WealthQ2       |            0|     34|   236|
|6-24 months |Vellore Crypto |INDIA        |WealthQ2       |            1|     22|   236|
|6-24 months |Vellore Crypto |INDIA        |WealthQ3       |            0|     20|   236|
|6-24 months |Vellore Crypto |INDIA        |WealthQ3       |            1|     21|   236|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
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
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
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
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
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
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


