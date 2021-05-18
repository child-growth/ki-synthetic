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

**Intervention Variable:** perdiar24

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid       |country      |perdiar24 | pers_wast| n_cell|    n|
|:-----------|:-------------|:------------|:---------|---------:|------:|----:|
|0-24 months |CMIN          |BANGLADESH   |(0%, 5%]  |         0|     97|  254|
|0-24 months |CMIN          |BANGLADESH   |(0%, 5%]  |         1|      9|  254|
|0-24 months |CMIN          |BANGLADESH   |>5%       |         0|    117|  254|
|0-24 months |CMIN          |BANGLADESH   |>5%       |         1|     10|  254|
|0-24 months |CMIN          |BANGLADESH   |0%        |         0|     20|  254|
|0-24 months |CMIN          |BANGLADESH   |0%        |         1|      1|  254|
|0-24 months |CONTENT       |PERU         |(0%, 5%]  |         0|    132|  215|
|0-24 months |CONTENT       |PERU         |(0%, 5%]  |         1|      0|  215|
|0-24 months |CONTENT       |PERU         |>5%       |         0|     81|  215|
|0-24 months |CONTENT       |PERU         |>5%       |         1|      0|  215|
|0-24 months |CONTENT       |PERU         |0%        |         0|      2|  215|
|0-24 months |CONTENT       |PERU         |0%        |         1|      0|  215|
|0-24 months |EE            |PAKISTAN     |(0%, 5%]  |         0|    102|  377|
|0-24 months |EE            |PAKISTAN     |(0%, 5%]  |         1|     13|  377|
|0-24 months |EE            |PAKISTAN     |>5%       |         0|      0|  377|
|0-24 months |EE            |PAKISTAN     |>5%       |         1|      0|  377|
|0-24 months |EE            |PAKISTAN     |0%        |         0|    242|  377|
|0-24 months |EE            |PAKISTAN     |0%        |         1|     20|  377|
|0-24 months |Guatemala BSC |GUATEMALA    |(0%, 5%]  |         0|     60|  253|
|0-24 months |Guatemala BSC |GUATEMALA    |(0%, 5%]  |         1|      0|  253|
|0-24 months |Guatemala BSC |GUATEMALA    |>5%       |         0|    161|  253|
|0-24 months |Guatemala BSC |GUATEMALA    |>5%       |         1|      2|  253|
|0-24 months |Guatemala BSC |GUATEMALA    |0%        |         0|     29|  253|
|0-24 months |Guatemala BSC |GUATEMALA    |0%        |         1|      1|  253|
|0-24 months |iLiNS-Zinc    |BURKINA FASO |(0%, 5%]  |         0|    559| 1261|
|0-24 months |iLiNS-Zinc    |BURKINA FASO |(0%, 5%]  |         1|     74| 1261|
|0-24 months |iLiNS-Zinc    |BURKINA FASO |>5%       |         0|    264| 1261|
|0-24 months |iLiNS-Zinc    |BURKINA FASO |>5%       |         1|     38| 1261|
|0-24 months |iLiNS-Zinc    |BURKINA FASO |0%        |         0|    290| 1261|
|0-24 months |iLiNS-Zinc    |BURKINA FASO |0%        |         1|     36| 1261|
|0-24 months |JiVitA-4      |BANGLADESH   |(0%, 5%]  |         0|   4112| 5281|
|0-24 months |JiVitA-4      |BANGLADESH   |(0%, 5%]  |         1|    365| 5281|
|0-24 months |JiVitA-4      |BANGLADESH   |>5%       |         0|    554| 5281|
|0-24 months |JiVitA-4      |BANGLADESH   |>5%       |         1|     46| 5281|
|0-24 months |JiVitA-4      |BANGLADESH   |0%        |         0|    189| 5281|
|0-24 months |JiVitA-4      |BANGLADESH   |0%        |         1|     15| 5281|
|0-24 months |MAL-ED        |INDIA        |(0%, 5%]  |         0|    167|  241|
|0-24 months |MAL-ED        |INDIA        |(0%, 5%]  |         1|     17|  241|
|0-24 months |MAL-ED        |INDIA        |>5%       |         0|     52|  241|
|0-24 months |MAL-ED        |INDIA        |>5%       |         1|      4|  241|
|0-24 months |MAL-ED        |INDIA        |0%        |         0|      1|  241|
|0-24 months |MAL-ED        |INDIA        |0%        |         1|      0|  241|
|0-24 months |MAL-ED        |BANGLADESH   |(0%, 5%]  |         0|    121|  248|
|0-24 months |MAL-ED        |BANGLADESH   |(0%, 5%]  |         1|     10|  248|
|0-24 months |MAL-ED        |BANGLADESH   |>5%       |         0|     87|  248|
|0-24 months |MAL-ED        |BANGLADESH   |>5%       |         1|      3|  248|
|0-24 months |MAL-ED        |BANGLADESH   |0%        |         0|     27|  248|
|0-24 months |MAL-ED        |BANGLADESH   |0%        |         1|      0|  248|
|0-24 months |MAL-ED        |PERU         |(0%, 5%]  |         0|    121|  284|
|0-24 months |MAL-ED        |PERU         |(0%, 5%]  |         1|      1|  284|
|0-24 months |MAL-ED        |PERU         |>5%       |         0|    133|  284|
|0-24 months |MAL-ED        |PERU         |>5%       |         1|      0|  284|
|0-24 months |MAL-ED        |PERU         |0%        |         0|     29|  284|
|0-24 months |MAL-ED        |PERU         |0%        |         1|      0|  284|
|0-24 months |MAL-ED        |NEPAL        |(0%, 5%]  |         0|    141|  238|
|0-24 months |MAL-ED        |NEPAL        |(0%, 5%]  |         1|      2|  238|
|0-24 months |MAL-ED        |NEPAL        |>5%       |         0|     92|  238|
|0-24 months |MAL-ED        |NEPAL        |>5%       |         1|      2|  238|
|0-24 months |MAL-ED        |NEPAL        |0%        |         0|      1|  238|
|0-24 months |MAL-ED        |NEPAL        |0%        |         1|      0|  238|
|0-24 months |MAL-ED        |BRAZIL       |(0%, 5%]  |         0|     96|  218|
|0-24 months |MAL-ED        |BRAZIL       |(0%, 5%]  |         1|      2|  218|
|0-24 months |MAL-ED        |BRAZIL       |>5%       |         0|      3|  218|
|0-24 months |MAL-ED        |BRAZIL       |>5%       |         1|      0|  218|
|0-24 months |MAL-ED        |BRAZIL       |0%        |         0|    117|  218|
|0-24 months |MAL-ED        |BRAZIL       |0%        |         1|      0|  218|
|0-24 months |MAL-ED        |TANZANIA     |(0%, 5%]  |         0|    168|  253|
|0-24 months |MAL-ED        |TANZANIA     |(0%, 5%]  |         1|      0|  253|
|0-24 months |MAL-ED        |TANZANIA     |>5%       |         0|     81|  253|
|0-24 months |MAL-ED        |TANZANIA     |>5%       |         1|      0|  253|
|0-24 months |MAL-ED        |TANZANIA     |0%        |         0|      4|  253|
|0-24 months |MAL-ED        |TANZANIA     |0%        |         1|      0|  253|
|0-24 months |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |         0|    159|  274|
|0-24 months |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |         1|      0|  274|
|0-24 months |MAL-ED        |SOUTH AFRICA |>5%       |         0|      1|  274|
|0-24 months |MAL-ED        |SOUTH AFRICA |>5%       |         1|      0|  274|
|0-24 months |MAL-ED        |SOUTH AFRICA |0%        |         0|    112|  274|
|0-24 months |MAL-ED        |SOUTH AFRICA |0%        |         1|      2|  274|
|0-24 months |NIH-Birth     |BANGLADESH   |(0%, 5%]  |         0|    267|  531|
|0-24 months |NIH-Birth     |BANGLADESH   |(0%, 5%]  |         1|     27|  531|
|0-24 months |NIH-Birth     |BANGLADESH   |>5%       |         0|    181|  531|
|0-24 months |NIH-Birth     |BANGLADESH   |>5%       |         1|     17|  531|
|0-24 months |NIH-Birth     |BANGLADESH   |0%        |         0|     37|  531|
|0-24 months |NIH-Birth     |BANGLADESH   |0%        |         1|      2|  531|
|0-24 months |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |         0|    383|  730|
|0-24 months |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |         1|     18|  730|
|0-24 months |NIH-Crypto    |BANGLADESH   |>5%       |         0|    182|  730|
|0-24 months |NIH-Crypto    |BANGLADESH   |>5%       |         1|      6|  730|
|0-24 months |NIH-Crypto    |BANGLADESH   |0%        |         0|    139|  730|
|0-24 months |NIH-Crypto    |BANGLADESH   |0%        |         1|      2|  730|
|0-24 months |PROVIDE       |BANGLADESH   |(0%, 5%]  |         0|    387|  641|
|0-24 months |PROVIDE       |BANGLADESH   |(0%, 5%]  |         1|     13|  641|
|0-24 months |PROVIDE       |BANGLADESH   |>5%       |         0|    187|  641|
|0-24 months |PROVIDE       |BANGLADESH   |>5%       |         1|      2|  641|
|0-24 months |PROVIDE       |BANGLADESH   |0%        |         0|     52|  641|
|0-24 months |PROVIDE       |BANGLADESH   |0%        |         1|      0|  641|
|0-24 months |SAS-FoodSuppl |INDIA        |(0%, 5%]  |         0|     35|  375|
|0-24 months |SAS-FoodSuppl |INDIA        |(0%, 5%]  |         1|     11|  375|
|0-24 months |SAS-FoodSuppl |INDIA        |>5%       |         0|    218|  375|
|0-24 months |SAS-FoodSuppl |INDIA        |>5%       |         1|     37|  375|
|0-24 months |SAS-FoodSuppl |INDIA        |0%        |         0|     57|  375|
|0-24 months |SAS-FoodSuppl |INDIA        |0%        |         1|     17|  375|
|0-6 months  |CMIN          |BANGLADESH   |(0%, 5%]  |         0|     93|  231|
|0-6 months  |CMIN          |BANGLADESH   |(0%, 5%]  |         1|      6|  231|
|0-6 months  |CMIN          |BANGLADESH   |>5%       |         0|    111|  231|
|0-6 months  |CMIN          |BANGLADESH   |>5%       |         1|      3|  231|
|0-6 months  |CMIN          |BANGLADESH   |0%        |         0|     18|  231|
|0-6 months  |CMIN          |BANGLADESH   |0%        |         1|      0|  231|
|0-6 months  |CONTENT       |PERU         |(0%, 5%]  |         0|    132|  215|
|0-6 months  |CONTENT       |PERU         |(0%, 5%]  |         1|      0|  215|
|0-6 months  |CONTENT       |PERU         |>5%       |         0|     81|  215|
|0-6 months  |CONTENT       |PERU         |>5%       |         1|      0|  215|
|0-6 months  |CONTENT       |PERU         |0%        |         0|      2|  215|
|0-6 months  |CONTENT       |PERU         |0%        |         1|      0|  215|
|0-6 months  |EE            |PAKISTAN     |(0%, 5%]  |         0|    102|  371|
|0-6 months  |EE            |PAKISTAN     |(0%, 5%]  |         1|     12|  371|
|0-6 months  |EE            |PAKISTAN     |>5%       |         0|      0|  371|
|0-6 months  |EE            |PAKISTAN     |>5%       |         1|      0|  371|
|0-6 months  |EE            |PAKISTAN     |0%        |         0|    244|  371|
|0-6 months  |EE            |PAKISTAN     |0%        |         1|     13|  371|
|0-6 months  |MAL-ED        |INDIA        |(0%, 5%]  |         0|    169|  240|
|0-6 months  |MAL-ED        |INDIA        |(0%, 5%]  |         1|     15|  240|
|0-6 months  |MAL-ED        |INDIA        |>5%       |         0|     51|  240|
|0-6 months  |MAL-ED        |INDIA        |>5%       |         1|      4|  240|
|0-6 months  |MAL-ED        |INDIA        |0%        |         0|      1|  240|
|0-6 months  |MAL-ED        |INDIA        |0%        |         1|      0|  240|
|0-6 months  |MAL-ED        |BANGLADESH   |(0%, 5%]  |         0|    126|  248|
|0-6 months  |MAL-ED        |BANGLADESH   |(0%, 5%]  |         1|      5|  248|
|0-6 months  |MAL-ED        |BANGLADESH   |>5%       |         0|     88|  248|
|0-6 months  |MAL-ED        |BANGLADESH   |>5%       |         1|      2|  248|
|0-6 months  |MAL-ED        |BANGLADESH   |0%        |         0|     27|  248|
|0-6 months  |MAL-ED        |BANGLADESH   |0%        |         1|      0|  248|
|0-6 months  |MAL-ED        |PERU         |(0%, 5%]  |         0|    122|  284|
|0-6 months  |MAL-ED        |PERU         |(0%, 5%]  |         1|      0|  284|
|0-6 months  |MAL-ED        |PERU         |>5%       |         0|    133|  284|
|0-6 months  |MAL-ED        |PERU         |>5%       |         1|      0|  284|
|0-6 months  |MAL-ED        |PERU         |0%        |         0|     29|  284|
|0-6 months  |MAL-ED        |PERU         |0%        |         1|      0|  284|
|0-6 months  |MAL-ED        |NEPAL        |(0%, 5%]  |         0|    140|  238|
|0-6 months  |MAL-ED        |NEPAL        |(0%, 5%]  |         1|      3|  238|
|0-6 months  |MAL-ED        |NEPAL        |>5%       |         0|     90|  238|
|0-6 months  |MAL-ED        |NEPAL        |>5%       |         1|      4|  238|
|0-6 months  |MAL-ED        |NEPAL        |0%        |         0|      1|  238|
|0-6 months  |MAL-ED        |NEPAL        |0%        |         1|      0|  238|
|0-6 months  |MAL-ED        |BRAZIL       |(0%, 5%]  |         0|     97|  218|
|0-6 months  |MAL-ED        |BRAZIL       |(0%, 5%]  |         1|      1|  218|
|0-6 months  |MAL-ED        |BRAZIL       |>5%       |         0|      3|  218|
|0-6 months  |MAL-ED        |BRAZIL       |>5%       |         1|      0|  218|
|0-6 months  |MAL-ED        |BRAZIL       |0%        |         0|    117|  218|
|0-6 months  |MAL-ED        |BRAZIL       |0%        |         1|      0|  218|
|0-6 months  |MAL-ED        |TANZANIA     |(0%, 5%]  |         0|    168|  253|
|0-6 months  |MAL-ED        |TANZANIA     |(0%, 5%]  |         1|      0|  253|
|0-6 months  |MAL-ED        |TANZANIA     |>5%       |         0|     81|  253|
|0-6 months  |MAL-ED        |TANZANIA     |>5%       |         1|      0|  253|
|0-6 months  |MAL-ED        |TANZANIA     |0%        |         0|      4|  253|
|0-6 months  |MAL-ED        |TANZANIA     |0%        |         1|      0|  253|
|0-6 months  |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |         0|    157|  273|
|0-6 months  |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |         1|      1|  273|
|0-6 months  |MAL-ED        |SOUTH AFRICA |>5%       |         0|      1|  273|
|0-6 months  |MAL-ED        |SOUTH AFRICA |>5%       |         1|      0|  273|
|0-6 months  |MAL-ED        |SOUTH AFRICA |0%        |         0|    113|  273|
|0-6 months  |MAL-ED        |SOUTH AFRICA |0%        |         1|      1|  273|
|0-6 months  |NIH-Birth     |BANGLADESH   |(0%, 5%]  |         0|     86|  166|
|0-6 months  |NIH-Birth     |BANGLADESH   |(0%, 5%]  |         1|      4|  166|
|0-6 months  |NIH-Birth     |BANGLADESH   |>5%       |         0|     57|  166|
|0-6 months  |NIH-Birth     |BANGLADESH   |>5%       |         1|      6|  166|
|0-6 months  |NIH-Birth     |BANGLADESH   |0%        |         0|     12|  166|
|0-6 months  |NIH-Birth     |BANGLADESH   |0%        |         1|      1|  166|
|0-6 months  |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |         0|    128|  250|
|0-6 months  |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |         1|      4|  250|
|0-6 months  |NIH-Crypto    |BANGLADESH   |>5%       |         0|     62|  250|
|0-6 months  |NIH-Crypto    |BANGLADESH   |>5%       |         1|      0|  250|
|0-6 months  |NIH-Crypto    |BANGLADESH   |0%        |         0|     55|  250|
|0-6 months  |NIH-Crypto    |BANGLADESH   |0%        |         1|      1|  250|
|0-6 months  |PROVIDE       |BANGLADESH   |(0%, 5%]  |         0|    388|  638|
|0-6 months  |PROVIDE       |BANGLADESH   |(0%, 5%]  |         1|     10|  638|
|0-6 months  |PROVIDE       |BANGLADESH   |>5%       |         0|    184|  638|
|0-6 months  |PROVIDE       |BANGLADESH   |>5%       |         1|      4|  638|
|0-6 months  |PROVIDE       |BANGLADESH   |0%        |         0|     52|  638|
|0-6 months  |PROVIDE       |BANGLADESH   |0%        |         1|      0|  638|
|6-24 months |CMIN          |BANGLADESH   |(0%, 5%]  |         0|     97|  254|
|6-24 months |CMIN          |BANGLADESH   |(0%, 5%]  |         1|      9|  254|
|6-24 months |CMIN          |BANGLADESH   |>5%       |         0|    117|  254|
|6-24 months |CMIN          |BANGLADESH   |>5%       |         1|     10|  254|
|6-24 months |CMIN          |BANGLADESH   |0%        |         0|     20|  254|
|6-24 months |CMIN          |BANGLADESH   |0%        |         1|      1|  254|
|6-24 months |CONTENT       |PERU         |(0%, 5%]  |         0|    132|  215|
|6-24 months |CONTENT       |PERU         |(0%, 5%]  |         1|      0|  215|
|6-24 months |CONTENT       |PERU         |>5%       |         0|     81|  215|
|6-24 months |CONTENT       |PERU         |>5%       |         1|      0|  215|
|6-24 months |CONTENT       |PERU         |0%        |         0|      2|  215|
|6-24 months |CONTENT       |PERU         |0%        |         1|      0|  215|
|6-24 months |EE            |PAKISTAN     |(0%, 5%]  |         0|    102|  377|
|6-24 months |EE            |PAKISTAN     |(0%, 5%]  |         1|     13|  377|
|6-24 months |EE            |PAKISTAN     |>5%       |         0|      0|  377|
|6-24 months |EE            |PAKISTAN     |>5%       |         1|      0|  377|
|6-24 months |EE            |PAKISTAN     |0%        |         0|    242|  377|
|6-24 months |EE            |PAKISTAN     |0%        |         1|     20|  377|
|6-24 months |Guatemala BSC |GUATEMALA    |(0%, 5%]  |         0|     60|  253|
|6-24 months |Guatemala BSC |GUATEMALA    |(0%, 5%]  |         1|      0|  253|
|6-24 months |Guatemala BSC |GUATEMALA    |>5%       |         0|    161|  253|
|6-24 months |Guatemala BSC |GUATEMALA    |>5%       |         1|      2|  253|
|6-24 months |Guatemala BSC |GUATEMALA    |0%        |         0|     29|  253|
|6-24 months |Guatemala BSC |GUATEMALA    |0%        |         1|      1|  253|
|6-24 months |iLiNS-Zinc    |BURKINA FASO |(0%, 5%]  |         0|    559| 1261|
|6-24 months |iLiNS-Zinc    |BURKINA FASO |(0%, 5%]  |         1|     74| 1261|
|6-24 months |iLiNS-Zinc    |BURKINA FASO |>5%       |         0|    264| 1261|
|6-24 months |iLiNS-Zinc    |BURKINA FASO |>5%       |         1|     38| 1261|
|6-24 months |iLiNS-Zinc    |BURKINA FASO |0%        |         0|    290| 1261|
|6-24 months |iLiNS-Zinc    |BURKINA FASO |0%        |         1|     36| 1261|
|6-24 months |JiVitA-4      |BANGLADESH   |(0%, 5%]  |         0|   4112| 5281|
|6-24 months |JiVitA-4      |BANGLADESH   |(0%, 5%]  |         1|    365| 5281|
|6-24 months |JiVitA-4      |BANGLADESH   |>5%       |         0|    554| 5281|
|6-24 months |JiVitA-4      |BANGLADESH   |>5%       |         1|     46| 5281|
|6-24 months |JiVitA-4      |BANGLADESH   |0%        |         0|    189| 5281|
|6-24 months |JiVitA-4      |BANGLADESH   |0%        |         1|     15| 5281|
|6-24 months |MAL-ED        |INDIA        |(0%, 5%]  |         0|    167|  241|
|6-24 months |MAL-ED        |INDIA        |(0%, 5%]  |         1|     17|  241|
|6-24 months |MAL-ED        |INDIA        |>5%       |         0|     52|  241|
|6-24 months |MAL-ED        |INDIA        |>5%       |         1|      4|  241|
|6-24 months |MAL-ED        |INDIA        |0%        |         0|      1|  241|
|6-24 months |MAL-ED        |INDIA        |0%        |         1|      0|  241|
|6-24 months |MAL-ED        |BANGLADESH   |(0%, 5%]  |         0|    121|  248|
|6-24 months |MAL-ED        |BANGLADESH   |(0%, 5%]  |         1|     10|  248|
|6-24 months |MAL-ED        |BANGLADESH   |>5%       |         0|     87|  248|
|6-24 months |MAL-ED        |BANGLADESH   |>5%       |         1|      3|  248|
|6-24 months |MAL-ED        |BANGLADESH   |0%        |         0|     27|  248|
|6-24 months |MAL-ED        |BANGLADESH   |0%        |         1|      0|  248|
|6-24 months |MAL-ED        |PERU         |(0%, 5%]  |         0|    121|  284|
|6-24 months |MAL-ED        |PERU         |(0%, 5%]  |         1|      1|  284|
|6-24 months |MAL-ED        |PERU         |>5%       |         0|    133|  284|
|6-24 months |MAL-ED        |PERU         |>5%       |         1|      0|  284|
|6-24 months |MAL-ED        |PERU         |0%        |         0|     29|  284|
|6-24 months |MAL-ED        |PERU         |0%        |         1|      0|  284|
|6-24 months |MAL-ED        |NEPAL        |(0%, 5%]  |         0|    141|  238|
|6-24 months |MAL-ED        |NEPAL        |(0%, 5%]  |         1|      2|  238|
|6-24 months |MAL-ED        |NEPAL        |>5%       |         0|     92|  238|
|6-24 months |MAL-ED        |NEPAL        |>5%       |         1|      2|  238|
|6-24 months |MAL-ED        |NEPAL        |0%        |         0|      1|  238|
|6-24 months |MAL-ED        |NEPAL        |0%        |         1|      0|  238|
|6-24 months |MAL-ED        |BRAZIL       |(0%, 5%]  |         0|     96|  218|
|6-24 months |MAL-ED        |BRAZIL       |(0%, 5%]  |         1|      2|  218|
|6-24 months |MAL-ED        |BRAZIL       |>5%       |         0|      3|  218|
|6-24 months |MAL-ED        |BRAZIL       |>5%       |         1|      0|  218|
|6-24 months |MAL-ED        |BRAZIL       |0%        |         0|    117|  218|
|6-24 months |MAL-ED        |BRAZIL       |0%        |         1|      0|  218|
|6-24 months |MAL-ED        |TANZANIA     |(0%, 5%]  |         0|    168|  253|
|6-24 months |MAL-ED        |TANZANIA     |(0%, 5%]  |         1|      0|  253|
|6-24 months |MAL-ED        |TANZANIA     |>5%       |         0|     81|  253|
|6-24 months |MAL-ED        |TANZANIA     |>5%       |         1|      0|  253|
|6-24 months |MAL-ED        |TANZANIA     |0%        |         0|      4|  253|
|6-24 months |MAL-ED        |TANZANIA     |0%        |         1|      0|  253|
|6-24 months |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |         0|    159|  274|
|6-24 months |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |         1|      0|  274|
|6-24 months |MAL-ED        |SOUTH AFRICA |>5%       |         0|      1|  274|
|6-24 months |MAL-ED        |SOUTH AFRICA |>5%       |         1|      0|  274|
|6-24 months |MAL-ED        |SOUTH AFRICA |0%        |         0|    112|  274|
|6-24 months |MAL-ED        |SOUTH AFRICA |0%        |         1|      2|  274|
|6-24 months |NIH-Birth     |BANGLADESH   |(0%, 5%]  |         0|    267|  531|
|6-24 months |NIH-Birth     |BANGLADESH   |(0%, 5%]  |         1|     27|  531|
|6-24 months |NIH-Birth     |BANGLADESH   |>5%       |         0|    181|  531|
|6-24 months |NIH-Birth     |BANGLADESH   |>5%       |         1|     17|  531|
|6-24 months |NIH-Birth     |BANGLADESH   |0%        |         0|     37|  531|
|6-24 months |NIH-Birth     |BANGLADESH   |0%        |         1|      2|  531|
|6-24 months |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |         0|    383|  730|
|6-24 months |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |         1|     18|  730|
|6-24 months |NIH-Crypto    |BANGLADESH   |>5%       |         0|    182|  730|
|6-24 months |NIH-Crypto    |BANGLADESH   |>5%       |         1|      6|  730|
|6-24 months |NIH-Crypto    |BANGLADESH   |0%        |         0|    139|  730|
|6-24 months |NIH-Crypto    |BANGLADESH   |0%        |         1|      2|  730|
|6-24 months |PROVIDE       |BANGLADESH   |(0%, 5%]  |         0|    387|  641|
|6-24 months |PROVIDE       |BANGLADESH   |(0%, 5%]  |         1|     13|  641|
|6-24 months |PROVIDE       |BANGLADESH   |>5%       |         0|    187|  641|
|6-24 months |PROVIDE       |BANGLADESH   |>5%       |         1|      2|  641|
|6-24 months |PROVIDE       |BANGLADESH   |0%        |         0|     52|  641|
|6-24 months |PROVIDE       |BANGLADESH   |0%        |         1|      0|  641|
|6-24 months |SAS-FoodSuppl |INDIA        |(0%, 5%]  |         0|     35|  375|
|6-24 months |SAS-FoodSuppl |INDIA        |(0%, 5%]  |         1|     11|  375|
|6-24 months |SAS-FoodSuppl |INDIA        |>5%       |         0|    218|  375|
|6-24 months |SAS-FoodSuppl |INDIA        |>5%       |         1|     37|  375|
|6-24 months |SAS-FoodSuppl |INDIA        |0%        |         0|     57|  375|
|6-24 months |SAS-FoodSuppl |INDIA        |0%        |         1|     17|  375|


The following strata were considered:

* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
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


