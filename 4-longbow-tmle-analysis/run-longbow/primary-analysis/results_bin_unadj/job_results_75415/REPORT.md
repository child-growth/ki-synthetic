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

**Intervention Variable:** mwtkg

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |mwtkg      | ever_stunted| n_cell|     n|
|:-----------|:--------------|:------------|:----------|------------:|------:|-----:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=58 kg    |            0|    662|  3225|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=58 kg    |            1|    220|  3225|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[52-58) kg |            0|    679|  3225|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[52-58) kg |            1|    360|  3225|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<52 kg     |            0|    728|  3225|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<52 kg     |            1|    576|  3225|
|0-24 months |JiVitA-3       |BANGLADESH   |>=58 kg    |            0|    428| 27185|
|0-24 months |JiVitA-3       |BANGLADESH   |>=58 kg    |            1|    278| 27185|
|0-24 months |JiVitA-3       |BANGLADESH   |[52-58) kg |            0|   1075| 27185|
|0-24 months |JiVitA-3       |BANGLADESH   |[52-58) kg |            1|    795| 27185|
|0-24 months |JiVitA-3       |BANGLADESH   |<52 kg     |            0|  12217| 27185|
|0-24 months |JiVitA-3       |BANGLADESH   |<52 kg     |            1|  12392| 27185|
|0-24 months |LCNI-5         |MALAWI       |>=58 kg    |            0|     52|   838|
|0-24 months |LCNI-5         |MALAWI       |>=58 kg    |            1|     57|   838|
|0-24 months |LCNI-5         |MALAWI       |[52-58) kg |            0|     96|   838|
|0-24 months |LCNI-5         |MALAWI       |[52-58) kg |            1|    117|   838|
|0-24 months |LCNI-5         |MALAWI       |<52 kg     |            0|    155|   838|
|0-24 months |LCNI-5         |MALAWI       |<52 kg     |            1|    361|   838|
|0-24 months |MAL-ED         |INDIA        |>=58 kg    |            0|     23|   249|
|0-24 months |MAL-ED         |INDIA        |>=58 kg    |            1|     28|   249|
|0-24 months |MAL-ED         |INDIA        |[52-58) kg |            0|     16|   249|
|0-24 months |MAL-ED         |INDIA        |[52-58) kg |            1|     23|   249|
|0-24 months |MAL-ED         |INDIA        |<52 kg     |            0|     59|   249|
|0-24 months |MAL-ED         |INDIA        |<52 kg     |            1|    100|   249|
|0-24 months |MAL-ED         |BANGLADESH   |>=58 kg    |            0|     28|   263|
|0-24 months |MAL-ED         |BANGLADESH   |>=58 kg    |            1|     22|   263|
|0-24 months |MAL-ED         |BANGLADESH   |[52-58) kg |            0|     25|   263|
|0-24 months |MAL-ED         |BANGLADESH   |[52-58) kg |            1|     33|   263|
|0-24 months |MAL-ED         |BANGLADESH   |<52 kg     |            0|     50|   263|
|0-24 months |MAL-ED         |BANGLADESH   |<52 kg     |            1|    105|   263|
|0-24 months |MAL-ED         |PERU         |>=58 kg    |            0|     55|   299|
|0-24 months |MAL-ED         |PERU         |>=58 kg    |            1|     80|   299|
|0-24 months |MAL-ED         |PERU         |[52-58) kg |            0|     21|   299|
|0-24 months |MAL-ED         |PERU         |[52-58) kg |            1|     51|   299|
|0-24 months |MAL-ED         |PERU         |<52 kg     |            0|     38|   299|
|0-24 months |MAL-ED         |PERU         |<52 kg     |            1|     54|   299|
|0-24 months |MAL-ED         |NEPAL        |>=58 kg    |            0|     65|   234|
|0-24 months |MAL-ED         |NEPAL        |>=58 kg    |            1|     28|   234|
|0-24 months |MAL-ED         |NEPAL        |[52-58) kg |            0|     50|   234|
|0-24 months |MAL-ED         |NEPAL        |[52-58) kg |            1|     19|   234|
|0-24 months |MAL-ED         |NEPAL        |<52 kg     |            0|     38|   234|
|0-24 months |MAL-ED         |NEPAL        |<52 kg     |            1|     34|   234|
|0-24 months |MAL-ED         |BRAZIL       |>=58 kg    |            0|    102|   233|
|0-24 months |MAL-ED         |BRAZIL       |>=58 kg    |            1|     35|   233|
|0-24 months |MAL-ED         |BRAZIL       |[52-58) kg |            0|     25|   233|
|0-24 months |MAL-ED         |BRAZIL       |[52-58) kg |            1|      9|   233|
|0-24 months |MAL-ED         |BRAZIL       |<52 kg     |            0|     43|   233|
|0-24 months |MAL-ED         |BRAZIL       |<52 kg     |            1|     19|   233|
|0-24 months |MAL-ED         |TANZANIA     |>=58 kg    |            0|     16|   252|
|0-24 months |MAL-ED         |TANZANIA     |>=58 kg    |            1|     86|   252|
|0-24 months |MAL-ED         |TANZANIA     |[52-58) kg |            0|      7|   252|
|0-24 months |MAL-ED         |TANZANIA     |[52-58) kg |            1|     54|   252|
|0-24 months |MAL-ED         |TANZANIA     |<52 kg     |            0|     13|   252|
|0-24 months |MAL-ED         |TANZANIA     |<52 kg     |            1|     76|   252|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=58 kg    |            0|     95|   290|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=58 kg    |            1|    117|   290|
|0-24 months |MAL-ED         |SOUTH AFRICA |[52-58) kg |            0|     14|   290|
|0-24 months |MAL-ED         |SOUTH AFRICA |[52-58) kg |            1|     22|   290|
|0-24 months |MAL-ED         |SOUTH AFRICA |<52 kg     |            0|     17|   290|
|0-24 months |MAL-ED         |SOUTH AFRICA |<52 kg     |            1|     25|   290|
|0-24 months |NIH-Birth      |BANGLADESH   |>=58 kg    |            0|     44|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |>=58 kg    |            1|     43|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |[52-58) kg |            0|     32|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |[52-58) kg |            1|     53|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |<52 kg     |            0|    135|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |<52 kg     |            1|    322|   629|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=58 kg    |            0|    147|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=58 kg    |            1|     86|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |[52-58) kg |            0|     91|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |[52-58) kg |            1|     78|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |<52 kg     |            0|    158|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |<52 kg     |            1|    197|   757|
|0-24 months |PROBIT         |BELARUS      |>=58 kg    |            0|   9086| 13860|
|0-24 months |PROBIT         |BELARUS      |>=58 kg    |            1|   1249| 13860|
|0-24 months |PROBIT         |BELARUS      |[52-58) kg |            0|   2029| 13860|
|0-24 months |PROBIT         |BELARUS      |[52-58) kg |            1|    324| 13860|
|0-24 months |PROBIT         |BELARUS      |<52 kg     |            0|    956| 13860|
|0-24 months |PROBIT         |BELARUS      |<52 kg     |            1|    216| 13860|
|0-24 months |PROVIDE        |BANGLADESH   |>=58 kg    |            0|    111|   689|
|0-24 months |PROVIDE        |BANGLADESH   |>=58 kg    |            1|     38|   689|
|0-24 months |PROVIDE        |BANGLADESH   |[52-58) kg |            0|     88|   689|
|0-24 months |PROVIDE        |BANGLADESH   |[52-58) kg |            1|     50|   689|
|0-24 months |PROVIDE        |BANGLADESH   |<52 kg     |            0|    185|   689|
|0-24 months |PROVIDE        |BANGLADESH   |<52 kg     |            1|    217|   689|
|0-24 months |SAS-CompFeed   |INDIA        |>=58 kg    |            0|     88|  1533|
|0-24 months |SAS-CompFeed   |INDIA        |>=58 kg    |            1|     63|  1533|
|0-24 months |SAS-CompFeed   |INDIA        |[52-58) kg |            0|     99|  1533|
|0-24 months |SAS-CompFeed   |INDIA        |[52-58) kg |            1|    138|  1533|
|0-24 months |SAS-CompFeed   |INDIA        |<52 kg     |            0|    286|  1533|
|0-24 months |SAS-CompFeed   |INDIA        |<52 kg     |            1|    859|  1533|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=58 kg    |            0|   1000|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=58 kg    |            1|    433|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA     |[52-58) kg |            0|    297|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA     |[52-58) kg |            1|    184|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA     |<52 kg     |            0|    262|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA     |<52 kg     |            1|    207|  2383|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=58 kg    |            0|   3443| 11064|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=58 kg    |            1|   2170| 11064|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[52-58) kg |            0|   1533| 11064|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[52-58) kg |            1|   1452| 11064|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<52 kg     |            0|   1057| 11064|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<52 kg     |            1|   1409| 11064|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=58 kg    |            0|    479| 27119|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=58 kg    |            1|    224| 27119|
|0-6 months  |JiVitA-3       |BANGLADESH   |[52-58) kg |            0|   1211| 27119|
|0-6 months  |JiVitA-3       |BANGLADESH   |[52-58) kg |            1|    655| 27119|
|0-6 months  |JiVitA-3       |BANGLADESH   |<52 kg     |            0|  14232| 27119|
|0-6 months  |JiVitA-3       |BANGLADESH   |<52 kg     |            1|  10318| 27119|
|0-6 months  |LCNI-5         |MALAWI       |>=58 kg    |            0|     25|   271|
|0-6 months  |LCNI-5         |MALAWI       |>=58 kg    |            1|     10|   271|
|0-6 months  |LCNI-5         |MALAWI       |[52-58) kg |            0|     52|   271|
|0-6 months  |LCNI-5         |MALAWI       |[52-58) kg |            1|     16|   271|
|0-6 months  |LCNI-5         |MALAWI       |<52 kg     |            0|     97|   271|
|0-6 months  |LCNI-5         |MALAWI       |<52 kg     |            1|     71|   271|
|0-6 months  |MAL-ED         |INDIA        |>=58 kg    |            0|     36|   249|
|0-6 months  |MAL-ED         |INDIA        |>=58 kg    |            1|     15|   249|
|0-6 months  |MAL-ED         |INDIA        |[52-58) kg |            0|     23|   249|
|0-6 months  |MAL-ED         |INDIA        |[52-58) kg |            1|     16|   249|
|0-6 months  |MAL-ED         |INDIA        |<52 kg     |            0|    103|   249|
|0-6 months  |MAL-ED         |INDIA        |<52 kg     |            1|     56|   249|
|0-6 months  |MAL-ED         |BANGLADESH   |>=58 kg    |            0|     38|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |>=58 kg    |            1|     12|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |[52-58) kg |            0|     40|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |[52-58) kg |            1|     18|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |<52 kg     |            0|     91|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |<52 kg     |            1|     64|   263|
|0-6 months  |MAL-ED         |PERU         |>=58 kg    |            0|     80|   299|
|0-6 months  |MAL-ED         |PERU         |>=58 kg    |            1|     55|   299|
|0-6 months  |MAL-ED         |PERU         |[52-58) kg |            0|     41|   299|
|0-6 months  |MAL-ED         |PERU         |[52-58) kg |            1|     31|   299|
|0-6 months  |MAL-ED         |PERU         |<52 kg     |            0|     51|   299|
|0-6 months  |MAL-ED         |PERU         |<52 kg     |            1|     41|   299|
|0-6 months  |MAL-ED         |NEPAL        |>=58 kg    |            0|     76|   234|
|0-6 months  |MAL-ED         |NEPAL        |>=58 kg    |            1|     17|   234|
|0-6 months  |MAL-ED         |NEPAL        |[52-58) kg |            0|     62|   234|
|0-6 months  |MAL-ED         |NEPAL        |[52-58) kg |            1|      7|   234|
|0-6 months  |MAL-ED         |NEPAL        |<52 kg     |            0|     55|   234|
|0-6 months  |MAL-ED         |NEPAL        |<52 kg     |            1|     17|   234|
|0-6 months  |MAL-ED         |BRAZIL       |>=58 kg    |            0|    107|   233|
|0-6 months  |MAL-ED         |BRAZIL       |>=58 kg    |            1|     30|   233|
|0-6 months  |MAL-ED         |BRAZIL       |[52-58) kg |            0|     27|   233|
|0-6 months  |MAL-ED         |BRAZIL       |[52-58) kg |            1|      7|   233|
|0-6 months  |MAL-ED         |BRAZIL       |<52 kg     |            0|     47|   233|
|0-6 months  |MAL-ED         |BRAZIL       |<52 kg     |            1|     15|   233|
|0-6 months  |MAL-ED         |TANZANIA     |>=58 kg    |            0|     63|   252|
|0-6 months  |MAL-ED         |TANZANIA     |>=58 kg    |            1|     39|   252|
|0-6 months  |MAL-ED         |TANZANIA     |[52-58) kg |            0|     28|   252|
|0-6 months  |MAL-ED         |TANZANIA     |[52-58) kg |            1|     33|   252|
|0-6 months  |MAL-ED         |TANZANIA     |<52 kg     |            0|     54|   252|
|0-6 months  |MAL-ED         |TANZANIA     |<52 kg     |            1|     35|   252|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=58 kg    |            0|    134|   290|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=58 kg    |            1|     78|   290|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[52-58) kg |            0|     22|   290|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[52-58) kg |            1|     14|   290|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<52 kg     |            0|     27|   290|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<52 kg     |            1|     15|   290|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=58 kg    |            0|     65|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=58 kg    |            1|     22|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |[52-58) kg |            0|     66|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |[52-58) kg |            1|     19|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |<52 kg     |            0|    278|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |<52 kg     |            1|    179|   629|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=58 kg    |            0|    181|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=58 kg    |            1|     52|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[52-58) kg |            0|    119|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[52-58) kg |            1|     50|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<52 kg     |            0|    229|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<52 kg     |            1|    126|   757|
|0-6 months  |PROBIT         |BELARUS      |>=58 kg    |            0|   9701| 13860|
|0-6 months  |PROBIT         |BELARUS      |>=58 kg    |            1|    634| 13860|
|0-6 months  |PROBIT         |BELARUS      |[52-58) kg |            0|   2187| 13860|
|0-6 months  |PROBIT         |BELARUS      |[52-58) kg |            1|    166| 13860|
|0-6 months  |PROBIT         |BELARUS      |<52 kg     |            0|   1056| 13860|
|0-6 months  |PROBIT         |BELARUS      |<52 kg     |            1|    116| 13860|
|0-6 months  |PROVIDE        |BANGLADESH   |>=58 kg    |            0|    130|   689|
|0-6 months  |PROVIDE        |BANGLADESH   |>=58 kg    |            1|     19|   689|
|0-6 months  |PROVIDE        |BANGLADESH   |[52-58) kg |            0|    107|   689|
|0-6 months  |PROVIDE        |BANGLADESH   |[52-58) kg |            1|     31|   689|
|0-6 months  |PROVIDE        |BANGLADESH   |<52 kg     |            0|    284|   689|
|0-6 months  |PROVIDE        |BANGLADESH   |<52 kg     |            1|    118|   689|
|0-6 months  |SAS-CompFeed   |INDIA        |>=58 kg    |            0|    113|  1530|
|0-6 months  |SAS-CompFeed   |INDIA        |>=58 kg    |            1|     38|  1530|
|0-6 months  |SAS-CompFeed   |INDIA        |[52-58) kg |            0|    155|  1530|
|0-6 months  |SAS-CompFeed   |INDIA        |[52-58) kg |            1|     81|  1530|
|0-6 months  |SAS-CompFeed   |INDIA        |<52 kg     |            0|    611|  1530|
|0-6 months  |SAS-CompFeed   |INDIA        |<52 kg     |            1|    532|  1530|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=58 kg    |            0|   1206|  2383|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=58 kg    |            1|    227|  2383|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[52-58) kg |            0|    374|  2383|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[52-58) kg |            1|    107|  2383|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<52 kg     |            0|    340|  2383|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<52 kg     |            1|    129|  2383|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=58 kg    |            0|   4317| 11050|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=58 kg    |            1|   1290| 11050|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[52-58) kg |            0|   2081| 11050|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[52-58) kg |            1|    899| 11050|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<52 kg     |            0|   1570| 11050|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<52 kg     |            1|    893| 11050|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |>=58 kg    |            0|    662|  3225|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |>=58 kg    |            1|    220|  3225|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |[52-58) kg |            0|    679|  3225|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |[52-58) kg |            1|    360|  3225|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |<52 kg     |            0|    728|  3225|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |<52 kg     |            1|    576|  3225|
|6-24 months |JiVitA-3       |BANGLADESH   |>=58 kg    |            0|    255| 10483|
|6-24 months |JiVitA-3       |BANGLADESH   |>=58 kg    |            1|     54| 10483|
|6-24 months |JiVitA-3       |BANGLADESH   |[52-58) kg |            0|    667| 10483|
|6-24 months |JiVitA-3       |BANGLADESH   |[52-58) kg |            1|    140| 10483|
|6-24 months |JiVitA-3       |BANGLADESH   |<52 kg     |            0|   7293| 10483|
|6-24 months |JiVitA-3       |BANGLADESH   |<52 kg     |            1|   2074| 10483|
|6-24 months |LCNI-5         |MALAWI       |>=58 kg    |            0|     52|   729|
|6-24 months |LCNI-5         |MALAWI       |>=58 kg    |            1|     47|   729|
|6-24 months |LCNI-5         |MALAWI       |[52-58) kg |            0|     90|   729|
|6-24 months |LCNI-5         |MALAWI       |[52-58) kg |            1|    101|   729|
|6-24 months |LCNI-5         |MALAWI       |<52 kg     |            0|    149|   729|
|6-24 months |LCNI-5         |MALAWI       |<52 kg     |            1|    290|   729|
|6-24 months |MAL-ED         |INDIA        |>=58 kg    |            0|     19|   152|
|6-24 months |MAL-ED         |INDIA        |>=58 kg    |            1|     13|   152|
|6-24 months |MAL-ED         |INDIA        |[52-58) kg |            0|     16|   152|
|6-24 months |MAL-ED         |INDIA        |[52-58) kg |            1|      7|   152|
|6-24 months |MAL-ED         |INDIA        |<52 kg     |            0|     53|   152|
|6-24 months |MAL-ED         |INDIA        |<52 kg     |            1|     44|   152|
|6-24 months |MAL-ED         |BANGLADESH   |>=58 kg    |            0|     23|   157|
|6-24 months |MAL-ED         |BANGLADESH   |>=58 kg    |            1|     10|   157|
|6-24 months |MAL-ED         |BANGLADESH   |[52-58) kg |            0|     23|   157|
|6-24 months |MAL-ED         |BANGLADESH   |[52-58) kg |            1|     15|   157|
|6-24 months |MAL-ED         |BANGLADESH   |<52 kg     |            0|     45|   157|
|6-24 months |MAL-ED         |BANGLADESH   |<52 kg     |            1|     41|   157|
|6-24 months |MAL-ED         |PERU         |>=58 kg    |            0|     45|   148|
|6-24 months |MAL-ED         |PERU         |>=58 kg    |            1|     25|   148|
|6-24 months |MAL-ED         |PERU         |[52-58) kg |            0|     15|   148|
|6-24 months |MAL-ED         |PERU         |[52-58) kg |            1|     20|   148|
|6-24 months |MAL-ED         |PERU         |<52 kg     |            0|     30|   148|
|6-24 months |MAL-ED         |PERU         |<52 kg     |            1|     13|   148|
|6-24 months |MAL-ED         |NEPAL        |>=58 kg    |            0|     65|   191|
|6-24 months |MAL-ED         |NEPAL        |>=58 kg    |            1|     11|   191|
|6-24 months |MAL-ED         |NEPAL        |[52-58) kg |            0|     49|   191|
|6-24 months |MAL-ED         |NEPAL        |[52-58) kg |            1|     12|   191|
|6-24 months |MAL-ED         |NEPAL        |<52 kg     |            0|     37|   191|
|6-24 months |MAL-ED         |NEPAL        |<52 kg     |            1|     17|   191|
|6-24 months |MAL-ED         |BRAZIL       |>=58 kg    |            0|     93|   163|
|6-24 months |MAL-ED         |BRAZIL       |>=58 kg    |            1|      5|   163|
|6-24 months |MAL-ED         |BRAZIL       |[52-58) kg |            0|     23|   163|
|6-24 months |MAL-ED         |BRAZIL       |[52-58) kg |            1|      2|   163|
|6-24 months |MAL-ED         |BRAZIL       |<52 kg     |            0|     36|   163|
|6-24 months |MAL-ED         |BRAZIL       |<52 kg     |            1|      4|   163|
|6-24 months |MAL-ED         |TANZANIA     |>=58 kg    |            0|     13|   138|
|6-24 months |MAL-ED         |TANZANIA     |>=58 kg    |            1|     47|   138|
|6-24 months |MAL-ED         |TANZANIA     |[52-58) kg |            0|      7|   138|
|6-24 months |MAL-ED         |TANZANIA     |[52-58) kg |            1|     21|   138|
|6-24 months |MAL-ED         |TANZANIA     |<52 kg     |            0|      9|   138|
|6-24 months |MAL-ED         |TANZANIA     |<52 kg     |            1|     41|   138|
|6-24 months |MAL-ED         |SOUTH AFRICA |>=58 kg    |            0|     79|   154|
|6-24 months |MAL-ED         |SOUTH AFRICA |>=58 kg    |            1|     39|   154|
|6-24 months |MAL-ED         |SOUTH AFRICA |[52-58) kg |            0|     11|   154|
|6-24 months |MAL-ED         |SOUTH AFRICA |[52-58) kg |            1|      8|   154|
|6-24 months |MAL-ED         |SOUTH AFRICA |<52 kg     |            0|      7|   154|
|6-24 months |MAL-ED         |SOUTH AFRICA |<52 kg     |            1|     10|   154|
|6-24 months |NIH-Birth      |BANGLADESH   |>=58 kg    |            0|     34|   345|
|6-24 months |NIH-Birth      |BANGLADESH   |>=58 kg    |            1|     21|   345|
|6-24 months |NIH-Birth      |BANGLADESH   |[52-58) kg |            0|     26|   345|
|6-24 months |NIH-Birth      |BANGLADESH   |[52-58) kg |            1|     34|   345|
|6-24 months |NIH-Birth      |BANGLADESH   |<52 kg     |            0|     87|   345|
|6-24 months |NIH-Birth      |BANGLADESH   |<52 kg     |            1|    143|   345|
|6-24 months |NIH-Crypto     |BANGLADESH   |>=58 kg    |            0|    140|   506|
|6-24 months |NIH-Crypto     |BANGLADESH   |>=58 kg    |            1|     34|   506|
|6-24 months |NIH-Crypto     |BANGLADESH   |[52-58) kg |            0|     84|   506|
|6-24 months |NIH-Crypto     |BANGLADESH   |[52-58) kg |            1|     28|   506|
|6-24 months |NIH-Crypto     |BANGLADESH   |<52 kg     |            0|    149|   506|
|6-24 months |NIH-Crypto     |BANGLADESH   |<52 kg     |            1|     71|   506|
|6-24 months |PROBIT         |BELARUS      |>=58 kg    |            0|   9074| 12927|
|6-24 months |PROBIT         |BELARUS      |>=58 kg    |            1|    615| 12927|
|6-24 months |PROBIT         |BELARUS      |[52-58) kg |            0|   2026| 12927|
|6-24 months |PROBIT         |BELARUS      |[52-58) kg |            1|    158| 12927|
|6-24 months |PROBIT         |BELARUS      |<52 kg     |            0|    954| 12927|
|6-24 months |PROBIT         |BELARUS      |<52 kg     |            1|    100| 12927|
|6-24 months |PROVIDE        |BANGLADESH   |>=58 kg    |            0|     92|   456|
|6-24 months |PROVIDE        |BANGLADESH   |>=58 kg    |            1|     19|   456|
|6-24 months |PROVIDE        |BANGLADESH   |[52-58) kg |            0|     74|   456|
|6-24 months |PROVIDE        |BANGLADESH   |[52-58) kg |            1|     19|   456|
|6-24 months |PROVIDE        |BANGLADESH   |<52 kg     |            0|    153|   456|
|6-24 months |PROVIDE        |BANGLADESH   |<52 kg     |            1|     99|   456|
|6-24 months |SAS-CompFeed   |INDIA        |>=58 kg    |            0|     74|   813|
|6-24 months |SAS-CompFeed   |INDIA        |>=58 kg    |            1|     25|   813|
|6-24 months |SAS-CompFeed   |INDIA        |[52-58) kg |            0|     87|   813|
|6-24 months |SAS-CompFeed   |INDIA        |[52-58) kg |            1|     57|   813|
|6-24 months |SAS-CompFeed   |INDIA        |<52 kg     |            0|    243|   813|
|6-24 months |SAS-CompFeed   |INDIA        |<52 kg     |            1|    327|   813|
|6-24 months |TanzaniaChild2 |TANZANIA     |>=58 kg    |            0|    807|  1593|
|6-24 months |TanzaniaChild2 |TANZANIA     |>=58 kg    |            1|    206|  1593|
|6-24 months |TanzaniaChild2 |TANZANIA     |[52-58) kg |            0|    235|  1593|
|6-24 months |TanzaniaChild2 |TANZANIA     |[52-58) kg |            1|     77|  1593|
|6-24 months |TanzaniaChild2 |TANZANIA     |<52 kg     |            0|    190|  1593|
|6-24 months |TanzaniaChild2 |TANZANIA     |<52 kg     |            1|     78|  1593|
|6-24 months |ZVITAMBO       |ZIMBABWE     |>=58 kg    |            0|   3112|  7351|
|6-24 months |ZVITAMBO       |ZIMBABWE     |>=58 kg    |            1|    880|  7351|
|6-24 months |ZVITAMBO       |ZIMBABWE     |[52-58) kg |            0|   1367|  7351|
|6-24 months |ZVITAMBO       |ZIMBABWE     |[52-58) kg |            1|    553|  7351|
|6-24 months |ZVITAMBO       |ZIMBABWE     |<52 kg     |            0|    923|  7351|
|6-24 months |ZVITAMBO       |ZIMBABWE     |<52 kg     |            1|    516|  7351|


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

* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


