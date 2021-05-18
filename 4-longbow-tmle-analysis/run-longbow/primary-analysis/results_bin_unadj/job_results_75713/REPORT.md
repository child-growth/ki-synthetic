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

**Intervention Variable:** mwtkg

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |mwtkg      | pers_wast| n_cell|     n|
|:-----------|:--------------|:------------|:----------|---------:|------:|-----:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=58 kg    |         0|    427|  1645|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=58 kg    |         1|     32|  1645|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[52-58) kg |         0|    457|  1645|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[52-58) kg |         1|     58|  1645|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<52 kg     |         0|    566|  1645|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<52 kg     |         1|    105|  1645|
|0-24 months |JiVitA-3       |BANGLADESH   |>=58 kg    |         0|    388| 15789|
|0-24 months |JiVitA-3       |BANGLADESH   |>=58 kg    |         1|     18| 15789|
|0-24 months |JiVitA-3       |BANGLADESH   |[52-58) kg |         0|   1061| 15789|
|0-24 months |JiVitA-3       |BANGLADESH   |[52-58) kg |         1|     60| 15789|
|0-24 months |JiVitA-3       |BANGLADESH   |<52 kg     |         0|  13443| 15789|
|0-24 months |JiVitA-3       |BANGLADESH   |<52 kg     |         1|    819| 15789|
|0-24 months |LCNI-5         |MALAWI       |>=58 kg    |         0|     92|   718|
|0-24 months |LCNI-5         |MALAWI       |>=58 kg    |         1|      1|   718|
|0-24 months |LCNI-5         |MALAWI       |[52-58) kg |         0|    183|   718|
|0-24 months |LCNI-5         |MALAWI       |[52-58) kg |         1|      2|   718|
|0-24 months |LCNI-5         |MALAWI       |<52 kg     |         0|    437|   718|
|0-24 months |LCNI-5         |MALAWI       |<52 kg     |         1|      3|   718|
|0-24 months |MAL-ED         |INDIA        |>=58 kg    |         0|     44|   239|
|0-24 months |MAL-ED         |INDIA        |>=58 kg    |         1|      2|   239|
|0-24 months |MAL-ED         |INDIA        |[52-58) kg |         0|     37|   239|
|0-24 months |MAL-ED         |INDIA        |[52-58) kg |         1|      2|   239|
|0-24 months |MAL-ED         |INDIA        |<52 kg     |         0|    137|   239|
|0-24 months |MAL-ED         |INDIA        |<52 kg     |         1|     17|   239|
|0-24 months |MAL-ED         |BANGLADESH   |>=58 kg    |         0|     44|   247|
|0-24 months |MAL-ED         |BANGLADESH   |>=58 kg    |         1|      2|   247|
|0-24 months |MAL-ED         |BANGLADESH   |[52-58) kg |         0|     53|   247|
|0-24 months |MAL-ED         |BANGLADESH   |[52-58) kg |         1|      2|   247|
|0-24 months |MAL-ED         |BANGLADESH   |<52 kg     |         0|    138|   247|
|0-24 months |MAL-ED         |BANGLADESH   |<52 kg     |         1|      8|   247|
|0-24 months |MAL-ED         |PERU         |>=58 kg    |         0|    126|   281|
|0-24 months |MAL-ED         |PERU         |>=58 kg    |         1|      0|   281|
|0-24 months |MAL-ED         |PERU         |[52-58) kg |         0|     68|   281|
|0-24 months |MAL-ED         |PERU         |[52-58) kg |         1|      0|   281|
|0-24 months |MAL-ED         |PERU         |<52 kg     |         0|     86|   281|
|0-24 months |MAL-ED         |PERU         |<52 kg     |         1|      1|   281|
|0-24 months |MAL-ED         |NEPAL        |>=58 kg    |         0|     92|   233|
|0-24 months |MAL-ED         |NEPAL        |>=58 kg    |         1|      0|   233|
|0-24 months |MAL-ED         |NEPAL        |[52-58) kg |         0|     68|   233|
|0-24 months |MAL-ED         |NEPAL        |[52-58) kg |         1|      1|   233|
|0-24 months |MAL-ED         |NEPAL        |<52 kg     |         0|     70|   233|
|0-24 months |MAL-ED         |NEPAL        |<52 kg     |         1|      2|   233|
|0-24 months |MAL-ED         |BRAZIL       |>=58 kg    |         0|    131|   218|
|0-24 months |MAL-ED         |BRAZIL       |>=58 kg    |         1|      1|   218|
|0-24 months |MAL-ED         |BRAZIL       |[52-58) kg |         0|     31|   218|
|0-24 months |MAL-ED         |BRAZIL       |[52-58) kg |         1|      1|   218|
|0-24 months |MAL-ED         |BRAZIL       |<52 kg     |         0|     54|   218|
|0-24 months |MAL-ED         |BRAZIL       |<52 kg     |         1|      0|   218|
|0-24 months |MAL-ED         |TANZANIA     |>=58 kg    |         0|     99|   245|
|0-24 months |MAL-ED         |TANZANIA     |>=58 kg    |         1|      0|   245|
|0-24 months |MAL-ED         |TANZANIA     |[52-58) kg |         0|     60|   245|
|0-24 months |MAL-ED         |TANZANIA     |[52-58) kg |         1|      0|   245|
|0-24 months |MAL-ED         |TANZANIA     |<52 kg     |         0|     86|   245|
|0-24 months |MAL-ED         |TANZANIA     |<52 kg     |         1|      0|   245|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=58 kg    |         0|    198|   266|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=58 kg    |         1|      1|   266|
|0-24 months |MAL-ED         |SOUTH AFRICA |[52-58) kg |         0|     33|   266|
|0-24 months |MAL-ED         |SOUTH AFRICA |[52-58) kg |         1|      0|   266|
|0-24 months |MAL-ED         |SOUTH AFRICA |<52 kg     |         0|     33|   266|
|0-24 months |MAL-ED         |SOUTH AFRICA |<52 kg     |         1|      1|   266|
|0-24 months |NIH-Birth      |BANGLADESH   |>=58 kg    |         0|     71|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |>=58 kg    |         1|      2|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |[52-58) kg |         0|     73|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |[52-58) kg |         1|      2|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |<52 kg     |         0|    343|   534|
|0-24 months |NIH-Birth      |BANGLADESH   |<52 kg     |         1|     43|   534|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=58 kg    |         0|    221|   729|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=58 kg    |         1|      4|   729|
|0-24 months |NIH-Crypto     |BANGLADESH   |[52-58) kg |         0|    157|   729|
|0-24 months |NIH-Crypto     |BANGLADESH   |[52-58) kg |         1|      4|   729|
|0-24 months |NIH-Crypto     |BANGLADESH   |<52 kg     |         0|    325|   729|
|0-24 months |NIH-Crypto     |BANGLADESH   |<52 kg     |         1|     18|   729|
|0-24 months |PROBIT         |BELARUS      |>=58 kg    |         0|  10233| 13835|
|0-24 months |PROBIT         |BELARUS      |>=58 kg    |         1|     84| 13835|
|0-24 months |PROBIT         |BELARUS      |[52-58) kg |         0|   2341| 13835|
|0-24 months |PROBIT         |BELARUS      |[52-58) kg |         1|      8| 13835|
|0-24 months |PROBIT         |BELARUS      |<52 kg     |         0|   1165| 13835|
|0-24 months |PROBIT         |BELARUS      |<52 kg     |         1|      4| 13835|
|0-24 months |PROVIDE        |BANGLADESH   |>=58 kg    |         0|    132|   640|
|0-24 months |PROVIDE        |BANGLADESH   |>=58 kg    |         1|      0|   640|
|0-24 months |PROVIDE        |BANGLADESH   |[52-58) kg |         0|    125|   640|
|0-24 months |PROVIDE        |BANGLADESH   |[52-58) kg |         1|      1|   640|
|0-24 months |PROVIDE        |BANGLADESH   |<52 kg     |         0|    368|   640|
|0-24 months |PROVIDE        |BANGLADESH   |<52 kg     |         1|     14|   640|
|0-24 months |SAS-CompFeed   |INDIA        |>=58 kg    |         0|    130|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |>=58 kg    |         1|      3|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |[52-58) kg |         0|    203|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |[52-58) kg |         1|     12|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |<52 kg     |         0|    919|  1366|
|0-24 months |SAS-CompFeed   |INDIA        |<52 kg     |         1|     99|  1366|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=58 kg    |         0|   1269|  2155|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=58 kg    |         1|     33|  2155|
|0-24 months |TanzaniaChild2 |TANZANIA     |[52-58) kg |         0|    424|  2155|
|0-24 months |TanzaniaChild2 |TANZANIA     |[52-58) kg |         1|     12|  2155|
|0-24 months |TanzaniaChild2 |TANZANIA     |<52 kg     |         0|    404|  2155|
|0-24 months |TanzaniaChild2 |TANZANIA     |<52 kg     |         1|     13|  2155|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=58 kg    |         0|   4547|  9070|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=58 kg    |         1|     54|  9070|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[52-58) kg |         0|   2405|  9070|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[52-58) kg |         1|     38|  9070|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<52 kg     |         0|   1960|  9070|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<52 kg     |         1|     66|  9070|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=58 kg    |         0|      1|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=58 kg    |         1|      0|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |[52-58) kg |         0|      5|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |[52-58) kg |         1|      0|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |<52 kg     |         0|     42|    50|
|0-6 months  |JiVitA-3       |BANGLADESH   |<52 kg     |         1|      2|    50|
|0-6 months  |MAL-ED         |INDIA        |>=58 kg    |         0|     42|   238|
|0-6 months  |MAL-ED         |INDIA        |>=58 kg    |         1|      3|   238|
|0-6 months  |MAL-ED         |INDIA        |[52-58) kg |         0|     38|   238|
|0-6 months  |MAL-ED         |INDIA        |[52-58) kg |         1|      1|   238|
|0-6 months  |MAL-ED         |INDIA        |<52 kg     |         0|    139|   238|
|0-6 months  |MAL-ED         |INDIA        |<52 kg     |         1|     15|   238|
|0-6 months  |MAL-ED         |BANGLADESH   |>=58 kg    |         0|     44|   247|
|0-6 months  |MAL-ED         |BANGLADESH   |>=58 kg    |         1|      2|   247|
|0-6 months  |MAL-ED         |BANGLADESH   |[52-58) kg |         0|     55|   247|
|0-6 months  |MAL-ED         |BANGLADESH   |[52-58) kg |         1|      0|   247|
|0-6 months  |MAL-ED         |BANGLADESH   |<52 kg     |         0|    142|   247|
|0-6 months  |MAL-ED         |BANGLADESH   |<52 kg     |         1|      4|   247|
|0-6 months  |MAL-ED         |PERU         |>=58 kg    |         0|    126|   281|
|0-6 months  |MAL-ED         |PERU         |>=58 kg    |         1|      0|   281|
|0-6 months  |MAL-ED         |PERU         |[52-58) kg |         0|     68|   281|
|0-6 months  |MAL-ED         |PERU         |[52-58) kg |         1|      0|   281|
|0-6 months  |MAL-ED         |PERU         |<52 kg     |         0|     87|   281|
|0-6 months  |MAL-ED         |PERU         |<52 kg     |         1|      0|   281|
|0-6 months  |MAL-ED         |NEPAL        |>=58 kg    |         0|     91|   233|
|0-6 months  |MAL-ED         |NEPAL        |>=58 kg    |         1|      1|   233|
|0-6 months  |MAL-ED         |NEPAL        |[52-58) kg |         0|     67|   233|
|0-6 months  |MAL-ED         |NEPAL        |[52-58) kg |         1|      2|   233|
|0-6 months  |MAL-ED         |NEPAL        |<52 kg     |         0|     69|   233|
|0-6 months  |MAL-ED         |NEPAL        |<52 kg     |         1|      3|   233|
|0-6 months  |MAL-ED         |BRAZIL       |>=58 kg    |         0|    131|   218|
|0-6 months  |MAL-ED         |BRAZIL       |>=58 kg    |         1|      1|   218|
|0-6 months  |MAL-ED         |BRAZIL       |[52-58) kg |         0|     32|   218|
|0-6 months  |MAL-ED         |BRAZIL       |[52-58) kg |         1|      0|   218|
|0-6 months  |MAL-ED         |BRAZIL       |<52 kg     |         0|     54|   218|
|0-6 months  |MAL-ED         |BRAZIL       |<52 kg     |         1|      0|   218|
|0-6 months  |MAL-ED         |TANZANIA     |>=58 kg    |         0|     99|   245|
|0-6 months  |MAL-ED         |TANZANIA     |>=58 kg    |         1|      0|   245|
|0-6 months  |MAL-ED         |TANZANIA     |[52-58) kg |         0|     60|   245|
|0-6 months  |MAL-ED         |TANZANIA     |[52-58) kg |         1|      0|   245|
|0-6 months  |MAL-ED         |TANZANIA     |<52 kg     |         0|     86|   245|
|0-6 months  |MAL-ED         |TANZANIA     |<52 kg     |         1|      0|   245|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=58 kg    |         0|    197|   265|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=58 kg    |         1|      1|   265|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[52-58) kg |         0|     32|   265|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[52-58) kg |         1|      1|   265|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<52 kg     |         0|     34|   265|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<52 kg     |         1|      0|   265|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=58 kg    |         0|     15|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=58 kg    |         1|      2|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |[52-58) kg |         0|     19|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |[52-58) kg |         1|      1|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |<52 kg     |         0|    124|   169|
|0-6 months  |NIH-Birth      |BANGLADESH   |<52 kg     |         1|      8|   169|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=58 kg    |         0|     75|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=58 kg    |         1|      1|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[52-58) kg |         0|     60|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[52-58) kg |         1|      2|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<52 kg     |         0|    110|   250|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<52 kg     |         1|      2|   250|
|0-6 months  |PROBIT         |BELARUS      |>=58 kg    |         0|   9035| 13198|
|0-6 months  |PROBIT         |BELARUS      |>=58 kg    |         1|    822| 13198|
|0-6 months  |PROBIT         |BELARUS      |[52-58) kg |         0|   2063| 13198|
|0-6 months  |PROBIT         |BELARUS      |[52-58) kg |         1|    172| 13198|
|0-6 months  |PROBIT         |BELARUS      |<52 kg     |         0|   1025| 13198|
|0-6 months  |PROBIT         |BELARUS      |<52 kg     |         1|     81| 13198|
|0-6 months  |PROVIDE        |BANGLADESH   |>=58 kg    |         0|    128|   637|
|0-6 months  |PROVIDE        |BANGLADESH   |>=58 kg    |         1|      3|   637|
|0-6 months  |PROVIDE        |BANGLADESH   |[52-58) kg |         0|    123|   637|
|0-6 months  |PROVIDE        |BANGLADESH   |[52-58) kg |         1|      2|   637|
|0-6 months  |PROVIDE        |BANGLADESH   |<52 kg     |         0|    372|   637|
|0-6 months  |PROVIDE        |BANGLADESH   |<52 kg     |         1|      9|   637|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=58 kg    |         0|   1224|  2050|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=58 kg    |         1|     26|  2050|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[52-58) kg |         0|    395|  2050|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[52-58) kg |         1|     18|  2050|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<52 kg     |         0|    379|  2050|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<52 kg     |         1|      8|  2050|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=58 kg    |         0|    318|   627|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=58 kg    |         1|      8|   627|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[52-58) kg |         0|    167|   627|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[52-58) kg |         1|      3|   627|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<52 kg     |         0|    128|   627|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<52 kg     |         1|      3|   627|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |>=58 kg    |         0|    427|  1645|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |>=58 kg    |         1|     32|  1645|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |[52-58) kg |         0|    457|  1645|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |[52-58) kg |         1|     58|  1645|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |<52 kg     |         0|    566|  1645|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |<52 kg     |         1|    105|  1645|
|6-24 months |JiVitA-3       |BANGLADESH   |>=58 kg    |         0|    388| 15789|
|6-24 months |JiVitA-3       |BANGLADESH   |>=58 kg    |         1|     18| 15789|
|6-24 months |JiVitA-3       |BANGLADESH   |[52-58) kg |         0|   1061| 15789|
|6-24 months |JiVitA-3       |BANGLADESH   |[52-58) kg |         1|     60| 15789|
|6-24 months |JiVitA-3       |BANGLADESH   |<52 kg     |         0|  13443| 15789|
|6-24 months |JiVitA-3       |BANGLADESH   |<52 kg     |         1|    819| 15789|
|6-24 months |LCNI-5         |MALAWI       |>=58 kg    |         0|     92|   718|
|6-24 months |LCNI-5         |MALAWI       |>=58 kg    |         1|      1|   718|
|6-24 months |LCNI-5         |MALAWI       |[52-58) kg |         0|    183|   718|
|6-24 months |LCNI-5         |MALAWI       |[52-58) kg |         1|      2|   718|
|6-24 months |LCNI-5         |MALAWI       |<52 kg     |         0|    437|   718|
|6-24 months |LCNI-5         |MALAWI       |<52 kg     |         1|      3|   718|
|6-24 months |MAL-ED         |INDIA        |>=58 kg    |         0|     44|   239|
|6-24 months |MAL-ED         |INDIA        |>=58 kg    |         1|      2|   239|
|6-24 months |MAL-ED         |INDIA        |[52-58) kg |         0|     37|   239|
|6-24 months |MAL-ED         |INDIA        |[52-58) kg |         1|      2|   239|
|6-24 months |MAL-ED         |INDIA        |<52 kg     |         0|    137|   239|
|6-24 months |MAL-ED         |INDIA        |<52 kg     |         1|     17|   239|
|6-24 months |MAL-ED         |BANGLADESH   |>=58 kg    |         0|     44|   247|
|6-24 months |MAL-ED         |BANGLADESH   |>=58 kg    |         1|      2|   247|
|6-24 months |MAL-ED         |BANGLADESH   |[52-58) kg |         0|     53|   247|
|6-24 months |MAL-ED         |BANGLADESH   |[52-58) kg |         1|      2|   247|
|6-24 months |MAL-ED         |BANGLADESH   |<52 kg     |         0|    138|   247|
|6-24 months |MAL-ED         |BANGLADESH   |<52 kg     |         1|      8|   247|
|6-24 months |MAL-ED         |PERU         |>=58 kg    |         0|    126|   281|
|6-24 months |MAL-ED         |PERU         |>=58 kg    |         1|      0|   281|
|6-24 months |MAL-ED         |PERU         |[52-58) kg |         0|     68|   281|
|6-24 months |MAL-ED         |PERU         |[52-58) kg |         1|      0|   281|
|6-24 months |MAL-ED         |PERU         |<52 kg     |         0|     86|   281|
|6-24 months |MAL-ED         |PERU         |<52 kg     |         1|      1|   281|
|6-24 months |MAL-ED         |NEPAL        |>=58 kg    |         0|     92|   233|
|6-24 months |MAL-ED         |NEPAL        |>=58 kg    |         1|      0|   233|
|6-24 months |MAL-ED         |NEPAL        |[52-58) kg |         0|     68|   233|
|6-24 months |MAL-ED         |NEPAL        |[52-58) kg |         1|      1|   233|
|6-24 months |MAL-ED         |NEPAL        |<52 kg     |         0|     70|   233|
|6-24 months |MAL-ED         |NEPAL        |<52 kg     |         1|      2|   233|
|6-24 months |MAL-ED         |BRAZIL       |>=58 kg    |         0|    131|   218|
|6-24 months |MAL-ED         |BRAZIL       |>=58 kg    |         1|      1|   218|
|6-24 months |MAL-ED         |BRAZIL       |[52-58) kg |         0|     31|   218|
|6-24 months |MAL-ED         |BRAZIL       |[52-58) kg |         1|      1|   218|
|6-24 months |MAL-ED         |BRAZIL       |<52 kg     |         0|     54|   218|
|6-24 months |MAL-ED         |BRAZIL       |<52 kg     |         1|      0|   218|
|6-24 months |MAL-ED         |TANZANIA     |>=58 kg    |         0|     99|   245|
|6-24 months |MAL-ED         |TANZANIA     |>=58 kg    |         1|      0|   245|
|6-24 months |MAL-ED         |TANZANIA     |[52-58) kg |         0|     60|   245|
|6-24 months |MAL-ED         |TANZANIA     |[52-58) kg |         1|      0|   245|
|6-24 months |MAL-ED         |TANZANIA     |<52 kg     |         0|     86|   245|
|6-24 months |MAL-ED         |TANZANIA     |<52 kg     |         1|      0|   245|
|6-24 months |MAL-ED         |SOUTH AFRICA |>=58 kg    |         0|    198|   266|
|6-24 months |MAL-ED         |SOUTH AFRICA |>=58 kg    |         1|      1|   266|
|6-24 months |MAL-ED         |SOUTH AFRICA |[52-58) kg |         0|     33|   266|
|6-24 months |MAL-ED         |SOUTH AFRICA |[52-58) kg |         1|      0|   266|
|6-24 months |MAL-ED         |SOUTH AFRICA |<52 kg     |         0|     33|   266|
|6-24 months |MAL-ED         |SOUTH AFRICA |<52 kg     |         1|      1|   266|
|6-24 months |NIH-Birth      |BANGLADESH   |>=58 kg    |         0|     71|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |>=58 kg    |         1|      2|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |[52-58) kg |         0|     73|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |[52-58) kg |         1|      2|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |<52 kg     |         0|    343|   534|
|6-24 months |NIH-Birth      |BANGLADESH   |<52 kg     |         1|     43|   534|
|6-24 months |NIH-Crypto     |BANGLADESH   |>=58 kg    |         0|    221|   729|
|6-24 months |NIH-Crypto     |BANGLADESH   |>=58 kg    |         1|      4|   729|
|6-24 months |NIH-Crypto     |BANGLADESH   |[52-58) kg |         0|    157|   729|
|6-24 months |NIH-Crypto     |BANGLADESH   |[52-58) kg |         1|      4|   729|
|6-24 months |NIH-Crypto     |BANGLADESH   |<52 kg     |         0|    325|   729|
|6-24 months |NIH-Crypto     |BANGLADESH   |<52 kg     |         1|     18|   729|
|6-24 months |PROBIT         |BELARUS      |>=58 kg    |         0|  10233| 13835|
|6-24 months |PROBIT         |BELARUS      |>=58 kg    |         1|     84| 13835|
|6-24 months |PROBIT         |BELARUS      |[52-58) kg |         0|   2341| 13835|
|6-24 months |PROBIT         |BELARUS      |[52-58) kg |         1|      8| 13835|
|6-24 months |PROBIT         |BELARUS      |<52 kg     |         0|   1165| 13835|
|6-24 months |PROBIT         |BELARUS      |<52 kg     |         1|      4| 13835|
|6-24 months |PROVIDE        |BANGLADESH   |>=58 kg    |         0|    132|   640|
|6-24 months |PROVIDE        |BANGLADESH   |>=58 kg    |         1|      0|   640|
|6-24 months |PROVIDE        |BANGLADESH   |[52-58) kg |         0|    125|   640|
|6-24 months |PROVIDE        |BANGLADESH   |[52-58) kg |         1|      1|   640|
|6-24 months |PROVIDE        |BANGLADESH   |<52 kg     |         0|    368|   640|
|6-24 months |PROVIDE        |BANGLADESH   |<52 kg     |         1|     14|   640|
|6-24 months |SAS-CompFeed   |INDIA        |>=58 kg    |         0|    130|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |>=58 kg    |         1|      3|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |[52-58) kg |         0|    203|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |[52-58) kg |         1|     12|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |<52 kg     |         0|    919|  1366|
|6-24 months |SAS-CompFeed   |INDIA        |<52 kg     |         1|     99|  1366|
|6-24 months |TanzaniaChild2 |TANZANIA     |>=58 kg    |         0|   1269|  2155|
|6-24 months |TanzaniaChild2 |TANZANIA     |>=58 kg    |         1|     33|  2155|
|6-24 months |TanzaniaChild2 |TANZANIA     |[52-58) kg |         0|    424|  2155|
|6-24 months |TanzaniaChild2 |TANZANIA     |[52-58) kg |         1|     12|  2155|
|6-24 months |TanzaniaChild2 |TANZANIA     |<52 kg     |         0|    404|  2155|
|6-24 months |TanzaniaChild2 |TANZANIA     |<52 kg     |         1|     13|  2155|
|6-24 months |ZVITAMBO       |ZIMBABWE     |>=58 kg    |         0|   4547|  9070|
|6-24 months |ZVITAMBO       |ZIMBABWE     |>=58 kg    |         1|     54|  9070|
|6-24 months |ZVITAMBO       |ZIMBABWE     |[52-58) kg |         0|   2405|  9070|
|6-24 months |ZVITAMBO       |ZIMBABWE     |[52-58) kg |         1|     38|  9070|
|6-24 months |ZVITAMBO       |ZIMBABWE     |<52 kg     |         0|   1960|  9070|
|6-24 months |ZVITAMBO       |ZIMBABWE     |<52 kg     |         1|     66|  9070|


The following strata were considered:

* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


