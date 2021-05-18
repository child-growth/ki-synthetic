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

**Outcome Variable:** ever_swasted

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

|agecat      |studyid        |country      |mwtkg      | ever_swasted| n_cell|     n|
|:-----------|:--------------|:------------|:----------|------------:|------:|-----:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=58 kg    |            0|    852|  3226|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=58 kg    |            1|     30|  3226|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[52-58) kg |            0|    992|  3226|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[52-58) kg |            1|     48|  3226|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<52 kg     |            0|   1222|  3226|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<52 kg     |            1|     82|  3226|
|0-24 months |JiVitA-3       |BANGLADESH   |>=58 kg    |            0|    667| 26915|
|0-24 months |JiVitA-3       |BANGLADESH   |>=58 kg    |            1|     31| 26915|
|0-24 months |JiVitA-3       |BANGLADESH   |[52-58) kg |            0|   1733| 26915|
|0-24 months |JiVitA-3       |BANGLADESH   |[52-58) kg |            1|    117| 26915|
|0-24 months |JiVitA-3       |BANGLADESH   |<52 kg     |            0|  22870| 26915|
|0-24 months |JiVitA-3       |BANGLADESH   |<52 kg     |            1|   1497| 26915|
|0-24 months |LCNI-5         |MALAWI       |>=58 kg    |            0|    108|   838|
|0-24 months |LCNI-5         |MALAWI       |>=58 kg    |            1|      1|   838|
|0-24 months |LCNI-5         |MALAWI       |[52-58) kg |            0|    210|   838|
|0-24 months |LCNI-5         |MALAWI       |[52-58) kg |            1|      3|   838|
|0-24 months |LCNI-5         |MALAWI       |<52 kg     |            0|    512|   838|
|0-24 months |LCNI-5         |MALAWI       |<52 kg     |            1|      4|   838|
|0-24 months |MAL-ED         |INDIA        |>=58 kg    |            0|     46|   249|
|0-24 months |MAL-ED         |INDIA        |>=58 kg    |            1|      5|   249|
|0-24 months |MAL-ED         |INDIA        |[52-58) kg |            0|     37|   249|
|0-24 months |MAL-ED         |INDIA        |[52-58) kg |            1|      2|   249|
|0-24 months |MAL-ED         |INDIA        |<52 kg     |            0|    140|   249|
|0-24 months |MAL-ED         |INDIA        |<52 kg     |            1|     19|   249|
|0-24 months |MAL-ED         |BANGLADESH   |>=58 kg    |            0|     46|   262|
|0-24 months |MAL-ED         |BANGLADESH   |>=58 kg    |            1|      4|   262|
|0-24 months |MAL-ED         |BANGLADESH   |[52-58) kg |            0|     57|   262|
|0-24 months |MAL-ED         |BANGLADESH   |[52-58) kg |            1|      1|   262|
|0-24 months |MAL-ED         |BANGLADESH   |<52 kg     |            0|    139|   262|
|0-24 months |MAL-ED         |BANGLADESH   |<52 kg     |            1|     15|   262|
|0-24 months |MAL-ED         |PERU         |>=58 kg    |            0|    133|   298|
|0-24 months |MAL-ED         |PERU         |>=58 kg    |            1|      1|   298|
|0-24 months |MAL-ED         |PERU         |[52-58) kg |            0|     71|   298|
|0-24 months |MAL-ED         |PERU         |[52-58) kg |            1|      1|   298|
|0-24 months |MAL-ED         |PERU         |<52 kg     |            0|     90|   298|
|0-24 months |MAL-ED         |PERU         |<52 kg     |            1|      2|   298|
|0-24 months |MAL-ED         |NEPAL        |>=58 kg    |            0|     90|   234|
|0-24 months |MAL-ED         |NEPAL        |>=58 kg    |            1|      3|   234|
|0-24 months |MAL-ED         |NEPAL        |[52-58) kg |            0|     69|   234|
|0-24 months |MAL-ED         |NEPAL        |[52-58) kg |            1|      0|   234|
|0-24 months |MAL-ED         |NEPAL        |<52 kg     |            0|     68|   234|
|0-24 months |MAL-ED         |NEPAL        |<52 kg     |            1|      4|   234|
|0-24 months |MAL-ED         |BRAZIL       |>=58 kg    |            0|    134|   233|
|0-24 months |MAL-ED         |BRAZIL       |>=58 kg    |            1|      3|   233|
|0-24 months |MAL-ED         |BRAZIL       |[52-58) kg |            0|     34|   233|
|0-24 months |MAL-ED         |BRAZIL       |[52-58) kg |            1|      0|   233|
|0-24 months |MAL-ED         |BRAZIL       |<52 kg     |            0|     61|   233|
|0-24 months |MAL-ED         |BRAZIL       |<52 kg     |            1|      1|   233|
|0-24 months |MAL-ED         |TANZANIA     |>=58 kg    |            0|     98|   251|
|0-24 months |MAL-ED         |TANZANIA     |>=58 kg    |            1|      4|   251|
|0-24 months |MAL-ED         |TANZANIA     |[52-58) kg |            0|     60|   251|
|0-24 months |MAL-ED         |TANZANIA     |[52-58) kg |            1|      1|   251|
|0-24 months |MAL-ED         |TANZANIA     |<52 kg     |            0|     84|   251|
|0-24 months |MAL-ED         |TANZANIA     |<52 kg     |            1|      4|   251|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=58 kg    |            0|    202|   288|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=58 kg    |            1|      9|   288|
|0-24 months |MAL-ED         |SOUTH AFRICA |[52-58) kg |            0|     32|   288|
|0-24 months |MAL-ED         |SOUTH AFRICA |[52-58) kg |            1|      4|   288|
|0-24 months |MAL-ED         |SOUTH AFRICA |<52 kg     |            0|     40|   288|
|0-24 months |MAL-ED         |SOUTH AFRICA |<52 kg     |            1|      1|   288|
|0-24 months |NIH-Birth      |BANGLADESH   |>=58 kg    |            0|     80|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |>=58 kg    |            1|      7|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |[52-58) kg |            0|     69|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |[52-58) kg |            1|     16|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |<52 kg     |            0|    376|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |<52 kg     |            1|     76|   624|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=58 kg    |            0|    218|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=58 kg    |            1|     15|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |[52-58) kg |            0|    157|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |[52-58) kg |            1|     12|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |<52 kg     |            0|    317|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |<52 kg     |            1|     38|   757|
|0-24 months |PROBIT         |BELARUS      |>=58 kg    |            0|   9419| 13860|
|0-24 months |PROBIT         |BELARUS      |>=58 kg    |            1|    916| 13860|
|0-24 months |PROBIT         |BELARUS      |[52-58) kg |            0|   2166| 13860|
|0-24 months |PROBIT         |BELARUS      |[52-58) kg |            1|    187| 13860|
|0-24 months |PROBIT         |BELARUS      |<52 kg     |            0|   1063| 13860|
|0-24 months |PROBIT         |BELARUS      |<52 kg     |            1|    109| 13860|
|0-24 months |PROVIDE        |BANGLADESH   |>=58 kg    |            0|    141|   689|
|0-24 months |PROVIDE        |BANGLADESH   |>=58 kg    |            1|      8|   689|
|0-24 months |PROVIDE        |BANGLADESH   |[52-58) kg |            0|    132|   689|
|0-24 months |PROVIDE        |BANGLADESH   |[52-58) kg |            1|      6|   689|
|0-24 months |PROVIDE        |BANGLADESH   |<52 kg     |            0|    374|   689|
|0-24 months |PROVIDE        |BANGLADESH   |<52 kg     |            1|     28|   689|
|0-24 months |SAS-CompFeed   |INDIA        |>=58 kg    |            0|    137|  1513|
|0-24 months |SAS-CompFeed   |INDIA        |>=58 kg    |            1|     14|  1513|
|0-24 months |SAS-CompFeed   |INDIA        |[52-58) kg |            0|    216|  1513|
|0-24 months |SAS-CompFeed   |INDIA        |[52-58) kg |            1|     20|  1513|
|0-24 months |SAS-CompFeed   |INDIA        |<52 kg     |            0|    937|  1513|
|0-24 months |SAS-CompFeed   |INDIA        |<52 kg     |            1|    189|  1513|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=58 kg    |            0|   1344|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=58 kg    |            1|     89|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA     |[52-58) kg |            0|    451|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA     |[52-58) kg |            1|     30|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA     |<52 kg     |            0|    430|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA     |<52 kg     |            1|     39|  2383|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=58 kg    |            0|   5117| 11034|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=58 kg    |            1|    480| 11034|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[52-58) kg |            0|   2705| 11034|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[52-58) kg |            1|    275| 11034|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<52 kg     |            0|   2170| 11034|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<52 kg     |            1|    287| 11034|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=58 kg    |            0|    672| 26818|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=58 kg    |            1|     22| 26818|
|0-6 months  |JiVitA-3       |BANGLADESH   |[52-58) kg |            0|   1766| 26818|
|0-6 months  |JiVitA-3       |BANGLADESH   |[52-58) kg |            1|     79| 26818|
|0-6 months  |JiVitA-3       |BANGLADESH   |<52 kg     |            0|  23269| 26818|
|0-6 months  |JiVitA-3       |BANGLADESH   |<52 kg     |            1|   1010| 26818|
|0-6 months  |LCNI-5         |MALAWI       |>=58 kg    |            0|     35|   271|
|0-6 months  |LCNI-5         |MALAWI       |>=58 kg    |            1|      0|   271|
|0-6 months  |LCNI-5         |MALAWI       |[52-58) kg |            0|     68|   271|
|0-6 months  |LCNI-5         |MALAWI       |[52-58) kg |            1|      0|   271|
|0-6 months  |LCNI-5         |MALAWI       |<52 kg     |            0|    168|   271|
|0-6 months  |LCNI-5         |MALAWI       |<52 kg     |            1|      0|   271|
|0-6 months  |MAL-ED         |INDIA        |>=58 kg    |            0|     46|   249|
|0-6 months  |MAL-ED         |INDIA        |>=58 kg    |            1|      5|   249|
|0-6 months  |MAL-ED         |INDIA        |[52-58) kg |            0|     38|   249|
|0-6 months  |MAL-ED         |INDIA        |[52-58) kg |            1|      1|   249|
|0-6 months  |MAL-ED         |INDIA        |<52 kg     |            0|    144|   249|
|0-6 months  |MAL-ED         |INDIA        |<52 kg     |            1|     15|   249|
|0-6 months  |MAL-ED         |BANGLADESH   |>=58 kg    |            0|     46|   262|
|0-6 months  |MAL-ED         |BANGLADESH   |>=58 kg    |            1|      4|   262|
|0-6 months  |MAL-ED         |BANGLADESH   |[52-58) kg |            0|     57|   262|
|0-6 months  |MAL-ED         |BANGLADESH   |[52-58) kg |            1|      1|   262|
|0-6 months  |MAL-ED         |BANGLADESH   |<52 kg     |            0|    144|   262|
|0-6 months  |MAL-ED         |BANGLADESH   |<52 kg     |            1|     10|   262|
|0-6 months  |MAL-ED         |PERU         |>=58 kg    |            0|    133|   298|
|0-6 months  |MAL-ED         |PERU         |>=58 kg    |            1|      1|   298|
|0-6 months  |MAL-ED         |PERU         |[52-58) kg |            0|     72|   298|
|0-6 months  |MAL-ED         |PERU         |[52-58) kg |            1|      0|   298|
|0-6 months  |MAL-ED         |PERU         |<52 kg     |            0|     92|   298|
|0-6 months  |MAL-ED         |PERU         |<52 kg     |            1|      0|   298|
|0-6 months  |MAL-ED         |NEPAL        |>=58 kg    |            0|     91|   234|
|0-6 months  |MAL-ED         |NEPAL        |>=58 kg    |            1|      2|   234|
|0-6 months  |MAL-ED         |NEPAL        |[52-58) kg |            0|     69|   234|
|0-6 months  |MAL-ED         |NEPAL        |[52-58) kg |            1|      0|   234|
|0-6 months  |MAL-ED         |NEPAL        |<52 kg     |            0|     69|   234|
|0-6 months  |MAL-ED         |NEPAL        |<52 kg     |            1|      3|   234|
|0-6 months  |MAL-ED         |BRAZIL       |>=58 kg    |            0|    134|   233|
|0-6 months  |MAL-ED         |BRAZIL       |>=58 kg    |            1|      3|   233|
|0-6 months  |MAL-ED         |BRAZIL       |[52-58) kg |            0|     34|   233|
|0-6 months  |MAL-ED         |BRAZIL       |[52-58) kg |            1|      0|   233|
|0-6 months  |MAL-ED         |BRAZIL       |<52 kg     |            0|     62|   233|
|0-6 months  |MAL-ED         |BRAZIL       |<52 kg     |            1|      0|   233|
|0-6 months  |MAL-ED         |TANZANIA     |>=58 kg    |            0|     99|   251|
|0-6 months  |MAL-ED         |TANZANIA     |>=58 kg    |            1|      3|   251|
|0-6 months  |MAL-ED         |TANZANIA     |[52-58) kg |            0|     61|   251|
|0-6 months  |MAL-ED         |TANZANIA     |[52-58) kg |            1|      0|   251|
|0-6 months  |MAL-ED         |TANZANIA     |<52 kg     |            0|     87|   251|
|0-6 months  |MAL-ED         |TANZANIA     |<52 kg     |            1|      1|   251|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=58 kg    |            0|    209|   288|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=58 kg    |            1|      2|   288|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[52-58) kg |            0|     33|   288|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[52-58) kg |            1|      3|   288|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<52 kg     |            0|     41|   288|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<52 kg     |            1|      0|   288|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=58 kg    |            0|     83|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=58 kg    |            1|      4|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |[52-58) kg |            0|     75|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |[52-58) kg |            1|     10|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |<52 kg     |            0|    408|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |<52 kg     |            1|     42|   622|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=58 kg    |            0|    221|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=58 kg    |            1|     12|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[52-58) kg |            0|    163|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[52-58) kg |            1|      6|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<52 kg     |            0|    324|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<52 kg     |            1|     31|   757|
|0-6 months  |PROBIT         |BELARUS      |>=58 kg    |            0|   9427| 13860|
|0-6 months  |PROBIT         |BELARUS      |>=58 kg    |            1|    908| 13860|
|0-6 months  |PROBIT         |BELARUS      |[52-58) kg |            0|   2167| 13860|
|0-6 months  |PROBIT         |BELARUS      |[52-58) kg |            1|    186| 13860|
|0-6 months  |PROBIT         |BELARUS      |<52 kg     |            0|   1065| 13860|
|0-6 months  |PROBIT         |BELARUS      |<52 kg     |            1|    107| 13860|
|0-6 months  |PROVIDE        |BANGLADESH   |>=58 kg    |            0|    142|   689|
|0-6 months  |PROVIDE        |BANGLADESH   |>=58 kg    |            1|      7|   689|
|0-6 months  |PROVIDE        |BANGLADESH   |[52-58) kg |            0|    133|   689|
|0-6 months  |PROVIDE        |BANGLADESH   |[52-58) kg |            1|      5|   689|
|0-6 months  |PROVIDE        |BANGLADESH   |<52 kg     |            0|    385|   689|
|0-6 months  |PROVIDE        |BANGLADESH   |<52 kg     |            1|     17|   689|
|0-6 months  |SAS-CompFeed   |INDIA        |>=58 kg    |            0|    144|  1505|
|0-6 months  |SAS-CompFeed   |INDIA        |>=58 kg    |            1|      7|  1505|
|0-6 months  |SAS-CompFeed   |INDIA        |[52-58) kg |            0|    221|  1505|
|0-6 months  |SAS-CompFeed   |INDIA        |[52-58) kg |            1|     12|  1505|
|0-6 months  |SAS-CompFeed   |INDIA        |<52 kg     |            0|   1040|  1505|
|0-6 months  |SAS-CompFeed   |INDIA        |<52 kg     |            1|     81|  1505|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=58 kg    |            0|   1388|  2383|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=58 kg    |            1|     45|  2383|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[52-58) kg |            0|    464|  2383|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[52-58) kg |            1|     17|  2383|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<52 kg     |            0|    452|  2383|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<52 kg     |            1|     17|  2383|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=58 kg    |            0|   5225| 10984|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=58 kg    |            1|    355| 10984|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[52-58) kg |            0|   2777| 10984|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[52-58) kg |            1|    192| 10984|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<52 kg     |            0|   2250| 10984|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<52 kg     |            1|    185| 10984|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |>=58 kg    |            0|    852|  3226|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |>=58 kg    |            1|     30|  3226|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |[52-58) kg |            0|    992|  3226|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |[52-58) kg |            1|     48|  3226|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |<52 kg     |            0|   1222|  3226|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |<52 kg     |            1|     82|  3226|
|6-24 months |JiVitA-3       |BANGLADESH   |>=58 kg    |            0|    443| 17282|
|6-24 months |JiVitA-3       |BANGLADESH   |>=58 kg    |            1|      9| 17282|
|6-24 months |JiVitA-3       |BANGLADESH   |[52-58) kg |            0|   1173| 17282|
|6-24 months |JiVitA-3       |BANGLADESH   |[52-58) kg |            1|     39| 17282|
|6-24 months |JiVitA-3       |BANGLADESH   |<52 kg     |            0|  15113| 17282|
|6-24 months |JiVitA-3       |BANGLADESH   |<52 kg     |            1|    505| 17282|
|6-24 months |LCNI-5         |MALAWI       |>=58 kg    |            0|    108|   825|
|6-24 months |LCNI-5         |MALAWI       |>=58 kg    |            1|      1|   825|
|6-24 months |LCNI-5         |MALAWI       |[52-58) kg |            0|    204|   825|
|6-24 months |LCNI-5         |MALAWI       |[52-58) kg |            1|      3|   825|
|6-24 months |LCNI-5         |MALAWI       |<52 kg     |            0|    505|   825|
|6-24 months |LCNI-5         |MALAWI       |<52 kg     |            1|      4|   825|
|6-24 months |MAL-ED         |INDIA        |>=58 kg    |            0|     44|   233|
|6-24 months |MAL-ED         |INDIA        |>=58 kg    |            1|      0|   233|
|6-24 months |MAL-ED         |INDIA        |[52-58) kg |            0|     37|   233|
|6-24 months |MAL-ED         |INDIA        |[52-58) kg |            1|      1|   233|
|6-24 months |MAL-ED         |INDIA        |<52 kg     |            0|    146|   233|
|6-24 months |MAL-ED         |INDIA        |<52 kg     |            1|      5|   233|
|6-24 months |MAL-ED         |BANGLADESH   |>=58 kg    |            0|     44|   239|
|6-24 months |MAL-ED         |BANGLADESH   |>=58 kg    |            1|      0|   239|
|6-24 months |MAL-ED         |BANGLADESH   |[52-58) kg |            0|     52|   239|
|6-24 months |MAL-ED         |BANGLADESH   |[52-58) kg |            1|      0|   239|
|6-24 months |MAL-ED         |BANGLADESH   |<52 kg     |            0|    138|   239|
|6-24 months |MAL-ED         |BANGLADESH   |<52 kg     |            1|      5|   239|
|6-24 months |MAL-ED         |PERU         |>=58 kg    |            0|    123|   267|
|6-24 months |MAL-ED         |PERU         |>=58 kg    |            1|      0|   267|
|6-24 months |MAL-ED         |PERU         |[52-58) kg |            0|     63|   267|
|6-24 months |MAL-ED         |PERU         |[52-58) kg |            1|      1|   267|
|6-24 months |MAL-ED         |PERU         |<52 kg     |            0|     78|   267|
|6-24 months |MAL-ED         |PERU         |<52 kg     |            1|      2|   267|
|6-24 months |MAL-ED         |NEPAL        |>=58 kg    |            0|     90|   230|
|6-24 months |MAL-ED         |NEPAL        |>=58 kg    |            1|      1|   230|
|6-24 months |MAL-ED         |NEPAL        |[52-58) kg |            0|     68|   230|
|6-24 months |MAL-ED         |NEPAL        |[52-58) kg |            1|      0|   230|
|6-24 months |MAL-ED         |NEPAL        |<52 kg     |            0|     70|   230|
|6-24 months |MAL-ED         |NEPAL        |<52 kg     |            1|      1|   230|
|6-24 months |MAL-ED         |BRAZIL       |>=58 kg    |            0|    125|   207|
|6-24 months |MAL-ED         |BRAZIL       |>=58 kg    |            1|      0|   207|
|6-24 months |MAL-ED         |BRAZIL       |[52-58) kg |            0|     31|   207|
|6-24 months |MAL-ED         |BRAZIL       |[52-58) kg |            1|      0|   207|
|6-24 months |MAL-ED         |BRAZIL       |<52 kg     |            0|     50|   207|
|6-24 months |MAL-ED         |BRAZIL       |<52 kg     |            1|      1|   207|
|6-24 months |MAL-ED         |TANZANIA     |>=58 kg    |            0|     96|   237|
|6-24 months |MAL-ED         |TANZANIA     |>=58 kg    |            1|      1|   237|
|6-24 months |MAL-ED         |TANZANIA     |[52-58) kg |            0|     57|   237|
|6-24 months |MAL-ED         |TANZANIA     |[52-58) kg |            1|      1|   237|
|6-24 months |MAL-ED         |TANZANIA     |<52 kg     |            0|     79|   237|
|6-24 months |MAL-ED         |TANZANIA     |<52 kg     |            1|      3|   237|
|6-24 months |MAL-ED         |SOUTH AFRICA |>=58 kg    |            0|    182|   250|
|6-24 months |MAL-ED         |SOUTH AFRICA |>=58 kg    |            1|      7|   250|
|6-24 months |MAL-ED         |SOUTH AFRICA |[52-58) kg |            0|     29|   250|
|6-24 months |MAL-ED         |SOUTH AFRICA |[52-58) kg |            1|      1|   250|
|6-24 months |MAL-ED         |SOUTH AFRICA |<52 kg     |            0|     30|   250|
|6-24 months |MAL-ED         |SOUTH AFRICA |<52 kg     |            1|      1|   250|
|6-24 months |NIH-Birth      |BANGLADESH   |>=58 kg    |            0|     73|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |>=58 kg    |            1|      3|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |[52-58) kg |            0|     69|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |[52-58) kg |            1|      6|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |<52 kg     |            0|    352|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |<52 kg     |            1|     39|   542|
|6-24 months |NIH-Crypto     |BANGLADESH   |>=58 kg    |            0|    221|   729|
|6-24 months |NIH-Crypto     |BANGLADESH   |>=58 kg    |            1|      4|   729|
|6-24 months |NIH-Crypto     |BANGLADESH   |[52-58) kg |            0|    155|   729|
|6-24 months |NIH-Crypto     |BANGLADESH   |[52-58) kg |            1|      6|   729|
|6-24 months |NIH-Crypto     |BANGLADESH   |<52 kg     |            0|    333|   729|
|6-24 months |NIH-Crypto     |BANGLADESH   |<52 kg     |            1|     10|   729|
|6-24 months |PROBIT         |BELARUS      |>=58 kg    |            0|  10314| 13842|
|6-24 months |PROBIT         |BELARUS      |>=58 kg    |            1|      8| 13842|
|6-24 months |PROBIT         |BELARUS      |[52-58) kg |            0|   2349| 13842|
|6-24 months |PROBIT         |BELARUS      |[52-58) kg |            1|      1| 13842|
|6-24 months |PROBIT         |BELARUS      |<52 kg     |            0|   1168| 13842|
|6-24 months |PROBIT         |BELARUS      |<52 kg     |            1|      2| 13842|
|6-24 months |PROVIDE        |BANGLADESH   |>=58 kg    |            0|    128|   615|
|6-24 months |PROVIDE        |BANGLADESH   |>=58 kg    |            1|      1|   615|
|6-24 months |PROVIDE        |BANGLADESH   |[52-58) kg |            0|    121|   615|
|6-24 months |PROVIDE        |BANGLADESH   |[52-58) kg |            1|      1|   615|
|6-24 months |PROVIDE        |BANGLADESH   |<52 kg     |            0|    353|   615|
|6-24 months |PROVIDE        |BANGLADESH   |<52 kg     |            1|     11|   615|
|6-24 months |SAS-CompFeed   |INDIA        |>=58 kg    |            0|    128|  1389|
|6-24 months |SAS-CompFeed   |INDIA        |>=58 kg    |            1|      7|  1389|
|6-24 months |SAS-CompFeed   |INDIA        |[52-58) kg |            0|    210|  1389|
|6-24 months |SAS-CompFeed   |INDIA        |[52-58) kg |            1|      9|  1389|
|6-24 months |SAS-CompFeed   |INDIA        |<52 kg     |            0|    917|  1389|
|6-24 months |SAS-CompFeed   |INDIA        |<52 kg     |            1|    118|  1389|
|6-24 months |TanzaniaChild2 |TANZANIA     |>=58 kg    |            0|   1175|  2007|
|6-24 months |TanzaniaChild2 |TANZANIA     |>=58 kg    |            1|     46|  2007|
|6-24 months |TanzaniaChild2 |TANZANIA     |[52-58) kg |            0|    397|  2007|
|6-24 months |TanzaniaChild2 |TANZANIA     |[52-58) kg |            1|     13|  2007|
|6-24 months |TanzaniaChild2 |TANZANIA     |<52 kg     |            0|    352|  2007|
|6-24 months |TanzaniaChild2 |TANZANIA     |<52 kg     |            1|     24|  2007|
|6-24 months |ZVITAMBO       |ZIMBABWE     |>=58 kg    |            0|   4737|  9680|
|6-24 months |ZVITAMBO       |ZIMBABWE     |>=58 kg    |            1|    133|  9680|
|6-24 months |ZVITAMBO       |ZIMBABWE     |[52-58) kg |            0|   2540|  9680|
|6-24 months |ZVITAMBO       |ZIMBABWE     |[52-58) kg |            1|     88|  9680|
|6-24 months |ZVITAMBO       |ZIMBABWE     |<52 kg     |            0|   2072|  9680|
|6-24 months |ZVITAMBO       |ZIMBABWE     |<52 kg     |            1|    110|  9680|


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
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
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





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


