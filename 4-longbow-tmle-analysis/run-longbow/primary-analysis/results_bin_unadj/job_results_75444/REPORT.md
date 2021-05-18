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

**Outcome Variable:** ever_sstunted

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

|agecat      |studyid        |country      |feducyrs | ever_sstunted| n_cell|     n|
|:-----------|:--------------|:------------|:--------|-------------:|------:|-----:|
|0-24 months |COHORTS        |INDIA        |Low      |             0|    525|  1832|
|0-24 months |COHORTS        |INDIA        |Low      |             1|     97|  1832|
|0-24 months |COHORTS        |INDIA        |Medium   |             0|    451|  1832|
|0-24 months |COHORTS        |INDIA        |Medium   |             1|     72|  1832|
|0-24 months |COHORTS        |INDIA        |High     |             0|    598|  1832|
|0-24 months |COHORTS        |INDIA        |High     |             1|     89|  1832|
|0-24 months |COHORTS        |GUATEMALA    |Low      |             0|    318|  1298|
|0-24 months |COHORTS        |GUATEMALA    |Low      |             1|    305|  1298|
|0-24 months |COHORTS        |GUATEMALA    |Medium   |             0|    251|  1298|
|0-24 months |COHORTS        |GUATEMALA    |Medium   |             1|    204|  1298|
|0-24 months |COHORTS        |GUATEMALA    |High     |             0|    128|  1298|
|0-24 months |COHORTS        |GUATEMALA    |High     |             1|     92|  1298|
|0-24 months |COHORTS        |PHILIPPINES  |Low      |             0|    558|  2940|
|0-24 months |COHORTS        |PHILIPPINES  |Low      |             1|    439|  2940|
|0-24 months |COHORTS        |PHILIPPINES  |Medium   |             0|    434|  2940|
|0-24 months |COHORTS        |PHILIPPINES  |Medium   |             1|    284|  2940|
|0-24 months |COHORTS        |PHILIPPINES  |High     |             0|    890|  2940|
|0-24 months |COHORTS        |PHILIPPINES  |High     |             1|    335|  2940|
|0-24 months |GMS-Nepal      |NEPAL        |Low      |             0|    239|   697|
|0-24 months |GMS-Nepal      |NEPAL        |Low      |             1|     66|   697|
|0-24 months |GMS-Nepal      |NEPAL        |Medium   |             0|    180|   697|
|0-24 months |GMS-Nepal      |NEPAL        |Medium   |             1|     62|   697|
|0-24 months |GMS-Nepal      |NEPAL        |High     |             0|    109|   697|
|0-24 months |GMS-Nepal      |NEPAL        |High     |             1|     41|   697|
|0-24 months |JiVitA-3       |BANGLADESH   |Low      |             0|   8719| 26212|
|0-24 months |JiVitA-3       |BANGLADESH   |Low      |             1|   2031| 26212|
|0-24 months |JiVitA-3       |BANGLADESH   |Medium   |             0|   7317| 26212|
|0-24 months |JiVitA-3       |BANGLADESH   |Medium   |             1|   1689| 26212|
|0-24 months |JiVitA-3       |BANGLADESH   |High     |             0|   5349| 26212|
|0-24 months |JiVitA-3       |BANGLADESH   |High     |             1|   1107| 26212|
|0-24 months |JiVitA-4       |BANGLADESH   |Low      |             0|   1539|  5179|
|0-24 months |JiVitA-4       |BANGLADESH   |Low      |             1|    402|  5179|
|0-24 months |JiVitA-4       |BANGLADESH   |Medium   |             0|   1639|  5179|
|0-24 months |JiVitA-4       |BANGLADESH   |Medium   |             1|    415|  5179|
|0-24 months |JiVitA-4       |BANGLADESH   |High     |             0|    967|  5179|
|0-24 months |JiVitA-4       |BANGLADESH   |High     |             1|    217|  5179|
|0-24 months |LCNI-5         |MALAWI       |Low      |             0|    218|   828|
|0-24 months |LCNI-5         |MALAWI       |Low      |             1|     63|   828|
|0-24 months |LCNI-5         |MALAWI       |Medium   |             0|    236|   828|
|0-24 months |LCNI-5         |MALAWI       |Medium   |             1|     60|   828|
|0-24 months |LCNI-5         |MALAWI       |High     |             0|    200|   828|
|0-24 months |LCNI-5         |MALAWI       |High     |             1|     51|   828|
|0-24 months |MAL-ED         |INDIA        |Low      |             0|     23|   126|
|0-24 months |MAL-ED         |INDIA        |Low      |             1|     12|   126|
|0-24 months |MAL-ED         |INDIA        |Medium   |             0|     23|   126|
|0-24 months |MAL-ED         |INDIA        |Medium   |             1|     13|   126|
|0-24 months |MAL-ED         |INDIA        |High     |             0|     47|   126|
|0-24 months |MAL-ED         |INDIA        |High     |             1|      8|   126|
|0-24 months |MAL-ED         |BANGLADESH   |Low      |             0|     33|   151|
|0-24 months |MAL-ED         |BANGLADESH   |Low      |             1|      8|   151|
|0-24 months |MAL-ED         |BANGLADESH   |Medium   |             0|     31|   151|
|0-24 months |MAL-ED         |BANGLADESH   |Medium   |             1|      7|   151|
|0-24 months |MAL-ED         |BANGLADESH   |High     |             0|     54|   151|
|0-24 months |MAL-ED         |BANGLADESH   |High     |             1|     18|   151|
|0-24 months |MAL-ED         |PERU         |Low      |             0|     68|   292|
|0-24 months |MAL-ED         |PERU         |Low      |             1|     18|   292|
|0-24 months |MAL-ED         |PERU         |Medium   |             0|     76|   292|
|0-24 months |MAL-ED         |PERU         |Medium   |             1|     19|   292|
|0-24 months |MAL-ED         |PERU         |High     |             0|     87|   292|
|0-24 months |MAL-ED         |PERU         |High     |             1|     24|   292|
|0-24 months |MAL-ED         |NEPAL        |Low      |             0|     20|    81|
|0-24 months |MAL-ED         |NEPAL        |Low      |             1|      2|    81|
|0-24 months |MAL-ED         |NEPAL        |Medium   |             0|     19|    81|
|0-24 months |MAL-ED         |NEPAL        |Medium   |             1|      5|    81|
|0-24 months |MAL-ED         |NEPAL        |High     |             0|     34|    81|
|0-24 months |MAL-ED         |NEPAL        |High     |             1|      1|    81|
|0-24 months |MAL-ED         |TANZANIA     |Low      |             0|     32|   246|
|0-24 months |MAL-ED         |TANZANIA     |Low      |             1|     32|   246|
|0-24 months |MAL-ED         |TANZANIA     |Medium   |             0|     23|   246|
|0-24 months |MAL-ED         |TANZANIA     |Medium   |             1|     30|   246|
|0-24 months |MAL-ED         |TANZANIA     |High     |             0|     61|   246|
|0-24 months |MAL-ED         |TANZANIA     |High     |             1|     68|   246|
|0-24 months |MAL-ED         |SOUTH AFRICA |Low      |             0|     49|   141|
|0-24 months |MAL-ED         |SOUTH AFRICA |Low      |             1|     14|   141|
|0-24 months |MAL-ED         |SOUTH AFRICA |Medium   |             0|     23|   141|
|0-24 months |MAL-ED         |SOUTH AFRICA |Medium   |             1|      9|   141|
|0-24 months |MAL-ED         |SOUTH AFRICA |High     |             0|     34|   141|
|0-24 months |MAL-ED         |SOUTH AFRICA |High     |             1|     12|   141|
|0-24 months |NIH-Crypto     |BANGLADESH   |Low      |             0|    185|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |Low      |             1|     23|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |Medium   |             0|    156|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |Medium   |             1|     36|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |High     |             0|    318|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |High     |             1|     40|   758|
|0-24 months |PROBIT         |BELARUS      |Low      |             0|   6226| 16334|
|0-24 months |PROBIT         |BELARUS      |Low      |             1|    193| 16334|
|0-24 months |PROBIT         |BELARUS      |Medium   |             0|   6981| 16334|
|0-24 months |PROBIT         |BELARUS      |Medium   |             1|    188| 16334|
|0-24 months |PROBIT         |BELARUS      |High     |             0|   2676| 16334|
|0-24 months |PROBIT         |BELARUS      |High     |             1|     70| 16334|
|0-24 months |PROVIDE        |BANGLADESH   |Low      |             0|    193|   700|
|0-24 months |PROVIDE        |BANGLADESH   |Low      |             1|     34|   700|
|0-24 months |PROVIDE        |BANGLADESH   |Medium   |             0|    197|   700|
|0-24 months |PROVIDE        |BANGLADESH   |Medium   |             1|     37|   700|
|0-24 months |PROVIDE        |BANGLADESH   |High     |             0|    215|   700|
|0-24 months |PROVIDE        |BANGLADESH   |High     |             1|     24|   700|
|0-24 months |SAS-CompFeed   |INDIA        |Low      |             0|    417|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |Low      |             1|    217|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |Medium   |             0|    340|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |Medium   |             1|    160|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |High     |             0|    268|  1531|
|0-24 months |SAS-CompFeed   |INDIA        |High     |             1|    129|  1531|
|0-24 months |SAS-FoodSuppl  |INDIA        |Low      |             0|     74|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |Low      |             1|     79|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |Medium   |             0|     84|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |Medium   |             1|     70|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |High     |             0|     59|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |High     |             1|     52|   418|
|0-24 months |TanzaniaChild2 |TANZANIA     |Low      |             0|   1131|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |Low      |             1|    117|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |Medium   |             0|    597|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |Medium   |             1|     74|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |High     |             0|    429|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |High     |             1|     48|  2396|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Low      |             0|   1698| 13524|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Low      |             1|    339| 13524|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |             0|   8663| 13524|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |             1|   1765| 13524|
|0-24 months |ZVITAMBO       |ZIMBABWE     |High     |             0|    878| 13524|
|0-24 months |ZVITAMBO       |ZIMBABWE     |High     |             1|    181| 13524|
|0-6 months  |COHORTS        |INDIA        |Low      |             0|    569|  1774|
|0-6 months  |COHORTS        |INDIA        |Low      |             1|     33|  1774|
|0-6 months  |COHORTS        |INDIA        |Medium   |             0|    481|  1774|
|0-6 months  |COHORTS        |INDIA        |Medium   |             1|     24|  1774|
|0-6 months  |COHORTS        |INDIA        |High     |             0|    632|  1774|
|0-6 months  |COHORTS        |INDIA        |High     |             1|     35|  1774|
|0-6 months  |COHORTS        |GUATEMALA    |Low      |             0|    441|  1046|
|0-6 months  |COHORTS        |GUATEMALA    |Low      |             1|     59|  1046|
|0-6 months  |COHORTS        |GUATEMALA    |Medium   |             0|    337|  1046|
|0-6 months  |COHORTS        |GUATEMALA    |Medium   |             1|     31|  1046|
|0-6 months  |COHORTS        |GUATEMALA    |High     |             0|    163|  1046|
|0-6 months  |COHORTS        |GUATEMALA    |High     |             1|     15|  1046|
|0-6 months  |COHORTS        |PHILIPPINES  |Low      |             0|    922|  2940|
|0-6 months  |COHORTS        |PHILIPPINES  |Low      |             1|     75|  2940|
|0-6 months  |COHORTS        |PHILIPPINES  |Medium   |             0|    677|  2940|
|0-6 months  |COHORTS        |PHILIPPINES  |Medium   |             1|     41|  2940|
|0-6 months  |COHORTS        |PHILIPPINES  |High     |             0|   1156|  2940|
|0-6 months  |COHORTS        |PHILIPPINES  |High     |             1|     69|  2940|
|0-6 months  |GMS-Nepal      |NEPAL        |Low      |             0|    280|   697|
|0-6 months  |GMS-Nepal      |NEPAL        |Low      |             1|     25|   697|
|0-6 months  |GMS-Nepal      |NEPAL        |Medium   |             0|    218|   697|
|0-6 months  |GMS-Nepal      |NEPAL        |Medium   |             1|     24|   697|
|0-6 months  |GMS-Nepal      |NEPAL        |High     |             0|    139|   697|
|0-6 months  |GMS-Nepal      |NEPAL        |High     |             1|     11|   697|
|0-6 months  |JiVitA-3       |BANGLADESH   |Low      |             0|   9099| 26150|
|0-6 months  |JiVitA-3       |BANGLADESH   |Low      |             1|   1626| 26150|
|0-6 months  |JiVitA-3       |BANGLADESH   |Medium   |             0|   7642| 26150|
|0-6 months  |JiVitA-3       |BANGLADESH   |Medium   |             1|   1343| 26150|
|0-6 months  |JiVitA-3       |BANGLADESH   |High     |             0|   5556| 26150|
|0-6 months  |JiVitA-3       |BANGLADESH   |High     |             1|    884| 26150|
|0-6 months  |JiVitA-4       |BANGLADESH   |Low      |             0|   1636|  4875|
|0-6 months  |JiVitA-4       |BANGLADESH   |Low      |             1|    182|  4875|
|0-6 months  |JiVitA-4       |BANGLADESH   |Medium   |             0|   1728|  4875|
|0-6 months  |JiVitA-4       |BANGLADESH   |Medium   |             1|    208|  4875|
|0-6 months  |JiVitA-4       |BANGLADESH   |High     |             0|   1022|  4875|
|0-6 months  |JiVitA-4       |BANGLADESH   |High     |             1|     99|  4875|
|0-6 months  |LCNI-5         |MALAWI       |Low      |             0|     85|   265|
|0-6 months  |LCNI-5         |MALAWI       |Low      |             1|      9|   265|
|0-6 months  |LCNI-5         |MALAWI       |Medium   |             0|     83|   265|
|0-6 months  |LCNI-5         |MALAWI       |Medium   |             1|      7|   265|
|0-6 months  |LCNI-5         |MALAWI       |High     |             0|     77|   265|
|0-6 months  |LCNI-5         |MALAWI       |High     |             1|      4|   265|
|0-6 months  |MAL-ED         |INDIA        |Low      |             0|     30|   126|
|0-6 months  |MAL-ED         |INDIA        |Low      |             1|      5|   126|
|0-6 months  |MAL-ED         |INDIA        |Medium   |             0|     31|   126|
|0-6 months  |MAL-ED         |INDIA        |Medium   |             1|      5|   126|
|0-6 months  |MAL-ED         |INDIA        |High     |             0|     53|   126|
|0-6 months  |MAL-ED         |INDIA        |High     |             1|      2|   126|
|0-6 months  |MAL-ED         |BANGLADESH   |Low      |             0|     38|   151|
|0-6 months  |MAL-ED         |BANGLADESH   |Low      |             1|      3|   151|
|0-6 months  |MAL-ED         |BANGLADESH   |Medium   |             0|     35|   151|
|0-6 months  |MAL-ED         |BANGLADESH   |Medium   |             1|      3|   151|
|0-6 months  |MAL-ED         |BANGLADESH   |High     |             0|     68|   151|
|0-6 months  |MAL-ED         |BANGLADESH   |High     |             1|      4|   151|
|0-6 months  |MAL-ED         |PERU         |Low      |             0|     73|   292|
|0-6 months  |MAL-ED         |PERU         |Low      |             1|     13|   292|
|0-6 months  |MAL-ED         |PERU         |Medium   |             0|     81|   292|
|0-6 months  |MAL-ED         |PERU         |Medium   |             1|     14|   292|
|0-6 months  |MAL-ED         |PERU         |High     |             0|    102|   292|
|0-6 months  |MAL-ED         |PERU         |High     |             1|      9|   292|
|0-6 months  |MAL-ED         |NEPAL        |Low      |             0|     22|    81|
|0-6 months  |MAL-ED         |NEPAL        |Low      |             1|      0|    81|
|0-6 months  |MAL-ED         |NEPAL        |Medium   |             0|     22|    81|
|0-6 months  |MAL-ED         |NEPAL        |Medium   |             1|      2|    81|
|0-6 months  |MAL-ED         |NEPAL        |High     |             0|     35|    81|
|0-6 months  |MAL-ED         |NEPAL        |High     |             1|      0|    81|
|0-6 months  |MAL-ED         |TANZANIA     |Low      |             0|     55|   246|
|0-6 months  |MAL-ED         |TANZANIA     |Low      |             1|      9|   246|
|0-6 months  |MAL-ED         |TANZANIA     |Medium   |             0|     43|   246|
|0-6 months  |MAL-ED         |TANZANIA     |Medium   |             1|     10|   246|
|0-6 months  |MAL-ED         |TANZANIA     |High     |             0|    112|   246|
|0-6 months  |MAL-ED         |TANZANIA     |High     |             1|     17|   246|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Low      |             0|     57|   141|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Low      |             1|      6|   141|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Medium   |             0|     28|   141|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Medium   |             1|      4|   141|
|0-6 months  |MAL-ED         |SOUTH AFRICA |High     |             0|     42|   141|
|0-6 months  |MAL-ED         |SOUTH AFRICA |High     |             1|      4|   141|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Low      |             0|    200|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Low      |             1|      8|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Medium   |             0|    173|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Medium   |             1|     19|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |High     |             0|    338|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |High     |             1|     20|   758|
|0-6 months  |PROBIT         |BELARUS      |Low      |             0|   6342| 16329|
|0-6 months  |PROBIT         |BELARUS      |Low      |             1|     76| 16329|
|0-6 months  |PROBIT         |BELARUS      |Medium   |             0|   7084| 16329|
|0-6 months  |PROBIT         |BELARUS      |Medium   |             1|     83| 16329|
|0-6 months  |PROBIT         |BELARUS      |High     |             0|   2723| 16329|
|0-6 months  |PROBIT         |BELARUS      |High     |             1|     21| 16329|
|0-6 months  |PROVIDE        |BANGLADESH   |Low      |             0|    213|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |Low      |             1|     14|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |Medium   |             0|    224|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |Medium   |             1|     10|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |High     |             0|    232|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |High     |             1|      7|   700|
|0-6 months  |SAS-CompFeed   |INDIA        |Low      |             0|    536|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |Low      |             1|     95|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |Medium   |             0|    427|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |Medium   |             1|     73|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |High     |             0|    337|  1528|
|0-6 months  |SAS-CompFeed   |INDIA        |High     |             1|     60|  1528|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Low      |             0|    133|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Low      |             1|     20|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Medium   |             0|    136|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Medium   |             1|     16|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |High     |             0|     97|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |High     |             1|     14|   416|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Low      |             0|   1198|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Low      |             1|     50|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Medium   |             0|    639|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Medium   |             1|     32|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |High     |             0|    454|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |High     |             1|     23|  2396|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Low      |             0|   1843| 13507|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Low      |             1|    191| 13507|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |             0|   9456| 13507|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |             1|    958| 13507|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |High     |             0|    969| 13507|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |High     |             1|     90| 13507|


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


