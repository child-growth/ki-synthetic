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

**Outcome Variable:** ever_wasted

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

|agecat      |studyid        |country      |mwtkg      | ever_wasted| n_cell|     n|
|:-----------|:--------------|:------------|:----------|-----------:|------:|-----:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=58 kg    |           0|    714|  3226|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=58 kg    |           1|    168|  3226|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[52-58) kg |           0|    820|  3226|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[52-58) kg |           1|    220|  3226|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<52 kg     |           0|    951|  3226|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<52 kg     |           1|    353|  3226|
|0-24 months |JiVitA-3       |BANGLADESH   |>=58 kg    |           0|    529| 26915|
|0-24 months |JiVitA-3       |BANGLADESH   |>=58 kg    |           1|    169| 26915|
|0-24 months |JiVitA-3       |BANGLADESH   |[52-58) kg |           0|   1377| 26915|
|0-24 months |JiVitA-3       |BANGLADESH   |[52-58) kg |           1|    473| 26915|
|0-24 months |JiVitA-3       |BANGLADESH   |<52 kg     |           0|  18063| 26915|
|0-24 months |JiVitA-3       |BANGLADESH   |<52 kg     |           1|   6304| 26915|
|0-24 months |LCNI-5         |MALAWI       |>=58 kg    |           0|    104|   838|
|0-24 months |LCNI-5         |MALAWI       |>=58 kg    |           1|      5|   838|
|0-24 months |LCNI-5         |MALAWI       |[52-58) kg |           0|    198|   838|
|0-24 months |LCNI-5         |MALAWI       |[52-58) kg |           1|     15|   838|
|0-24 months |LCNI-5         |MALAWI       |<52 kg     |           0|    469|   838|
|0-24 months |LCNI-5         |MALAWI       |<52 kg     |           1|     47|   838|
|0-24 months |MAL-ED         |INDIA        |>=58 kg    |           0|     33|   249|
|0-24 months |MAL-ED         |INDIA        |>=58 kg    |           1|     18|   249|
|0-24 months |MAL-ED         |INDIA        |[52-58) kg |           0|     25|   249|
|0-24 months |MAL-ED         |INDIA        |[52-58) kg |           1|     14|   249|
|0-24 months |MAL-ED         |INDIA        |<52 kg     |           0|     72|   249|
|0-24 months |MAL-ED         |INDIA        |<52 kg     |           1|     87|   249|
|0-24 months |MAL-ED         |BANGLADESH   |>=58 kg    |           0|     39|   262|
|0-24 months |MAL-ED         |BANGLADESH   |>=58 kg    |           1|     11|   262|
|0-24 months |MAL-ED         |BANGLADESH   |[52-58) kg |           0|     43|   262|
|0-24 months |MAL-ED         |BANGLADESH   |[52-58) kg |           1|     15|   262|
|0-24 months |MAL-ED         |BANGLADESH   |<52 kg     |           0|     94|   262|
|0-24 months |MAL-ED         |BANGLADESH   |<52 kg     |           1|     60|   262|
|0-24 months |MAL-ED         |PERU         |>=58 kg    |           0|    125|   298|
|0-24 months |MAL-ED         |PERU         |>=58 kg    |           1|      9|   298|
|0-24 months |MAL-ED         |PERU         |[52-58) kg |           0|     65|   298|
|0-24 months |MAL-ED         |PERU         |[52-58) kg |           1|      7|   298|
|0-24 months |MAL-ED         |PERU         |<52 kg     |           0|     82|   298|
|0-24 months |MAL-ED         |PERU         |<52 kg     |           1|     10|   298|
|0-24 months |MAL-ED         |NEPAL        |>=58 kg    |           0|     74|   234|
|0-24 months |MAL-ED         |NEPAL        |>=58 kg    |           1|     19|   234|
|0-24 months |MAL-ED         |NEPAL        |[52-58) kg |           0|     52|   234|
|0-24 months |MAL-ED         |NEPAL        |[52-58) kg |           1|     17|   234|
|0-24 months |MAL-ED         |NEPAL        |<52 kg     |           0|     37|   234|
|0-24 months |MAL-ED         |NEPAL        |<52 kg     |           1|     35|   234|
|0-24 months |MAL-ED         |BRAZIL       |>=58 kg    |           0|    126|   233|
|0-24 months |MAL-ED         |BRAZIL       |>=58 kg    |           1|     11|   233|
|0-24 months |MAL-ED         |BRAZIL       |[52-58) kg |           0|     29|   233|
|0-24 months |MAL-ED         |BRAZIL       |[52-58) kg |           1|      5|   233|
|0-24 months |MAL-ED         |BRAZIL       |<52 kg     |           0|     58|   233|
|0-24 months |MAL-ED         |BRAZIL       |<52 kg     |           1|      4|   233|
|0-24 months |MAL-ED         |TANZANIA     |>=58 kg    |           0|     92|   251|
|0-24 months |MAL-ED         |TANZANIA     |>=58 kg    |           1|     10|   251|
|0-24 months |MAL-ED         |TANZANIA     |[52-58) kg |           0|     55|   251|
|0-24 months |MAL-ED         |TANZANIA     |[52-58) kg |           1|      6|   251|
|0-24 months |MAL-ED         |TANZANIA     |<52 kg     |           0|     68|   251|
|0-24 months |MAL-ED         |TANZANIA     |<52 kg     |           1|     20|   251|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=58 kg    |           0|    172|   288|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=58 kg    |           1|     39|   288|
|0-24 months |MAL-ED         |SOUTH AFRICA |[52-58) kg |           0|     23|   288|
|0-24 months |MAL-ED         |SOUTH AFRICA |[52-58) kg |           1|     13|   288|
|0-24 months |MAL-ED         |SOUTH AFRICA |<52 kg     |           0|     35|   288|
|0-24 months |MAL-ED         |SOUTH AFRICA |<52 kg     |           1|      6|   288|
|0-24 months |NIH-Birth      |BANGLADESH   |>=58 kg    |           0|     52|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |>=58 kg    |           1|     35|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |[52-58) kg |           0|     47|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |[52-58) kg |           1|     38|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |<52 kg     |           0|    227|   624|
|0-24 months |NIH-Birth      |BANGLADESH   |<52 kg     |           1|    225|   624|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=58 kg    |           0|    168|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=58 kg    |           1|     65|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |[52-58) kg |           0|    122|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |[52-58) kg |           1|     47|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |<52 kg     |           0|    218|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |<52 kg     |           1|    137|   757|
|0-24 months |PROBIT         |BELARUS      |>=58 kg    |           0|   7485| 13860|
|0-24 months |PROBIT         |BELARUS      |>=58 kg    |           1|   2850| 13860|
|0-24 months |PROBIT         |BELARUS      |[52-58) kg |           0|   1672| 13860|
|0-24 months |PROBIT         |BELARUS      |[52-58) kg |           1|    681| 13860|
|0-24 months |PROBIT         |BELARUS      |<52 kg     |           0|    820| 13860|
|0-24 months |PROBIT         |BELARUS      |<52 kg     |           1|    352| 13860|
|0-24 months |PROVIDE        |BANGLADESH   |>=58 kg    |           0|    106|   689|
|0-24 months |PROVIDE        |BANGLADESH   |>=58 kg    |           1|     43|   689|
|0-24 months |PROVIDE        |BANGLADESH   |[52-58) kg |           0|     98|   689|
|0-24 months |PROVIDE        |BANGLADESH   |[52-58) kg |           1|     40|   689|
|0-24 months |PROVIDE        |BANGLADESH   |<52 kg     |           0|    241|   689|
|0-24 months |PROVIDE        |BANGLADESH   |<52 kg     |           1|    161|   689|
|0-24 months |SAS-CompFeed   |INDIA        |>=58 kg    |           0|    111|  1513|
|0-24 months |SAS-CompFeed   |INDIA        |>=58 kg    |           1|     40|  1513|
|0-24 months |SAS-CompFeed   |INDIA        |[52-58) kg |           0|    155|  1513|
|0-24 months |SAS-CompFeed   |INDIA        |[52-58) kg |           1|     81|  1513|
|0-24 months |SAS-CompFeed   |INDIA        |<52 kg     |           0|    619|  1513|
|0-24 months |SAS-CompFeed   |INDIA        |<52 kg     |           1|    507|  1513|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=58 kg    |           0|   1109|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=58 kg    |           1|    324|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA     |[52-58) kg |           0|    353|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA     |[52-58) kg |           1|    128|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA     |<52 kg     |           0|    357|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA     |<52 kg     |           1|    112|  2383|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=58 kg    |           0|   4351| 11034|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=58 kg    |           1|   1246| 11034|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[52-58) kg |           0|   2242| 11034|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[52-58) kg |           1|    738| 11034|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<52 kg     |           0|   1736| 11034|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<52 kg     |           1|    721| 11034|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=58 kg    |           0|    579| 26818|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=58 kg    |           1|    115| 26818|
|0-6 months  |JiVitA-3       |BANGLADESH   |[52-58) kg |           0|   1519| 26818|
|0-6 months  |JiVitA-3       |BANGLADESH   |[52-58) kg |           1|    326| 26818|
|0-6 months  |JiVitA-3       |BANGLADESH   |<52 kg     |           0|  19994| 26818|
|0-6 months  |JiVitA-3       |BANGLADESH   |<52 kg     |           1|   4285| 26818|
|0-6 months  |LCNI-5         |MALAWI       |>=58 kg    |           0|     35|   271|
|0-6 months  |LCNI-5         |MALAWI       |>=58 kg    |           1|      0|   271|
|0-6 months  |LCNI-5         |MALAWI       |[52-58) kg |           0|     67|   271|
|0-6 months  |LCNI-5         |MALAWI       |[52-58) kg |           1|      1|   271|
|0-6 months  |LCNI-5         |MALAWI       |<52 kg     |           0|    165|   271|
|0-6 months  |LCNI-5         |MALAWI       |<52 kg     |           1|      3|   271|
|0-6 months  |MAL-ED         |INDIA        |>=58 kg    |           0|     34|   249|
|0-6 months  |MAL-ED         |INDIA        |>=58 kg    |           1|     17|   249|
|0-6 months  |MAL-ED         |INDIA        |[52-58) kg |           0|     28|   249|
|0-6 months  |MAL-ED         |INDIA        |[52-58) kg |           1|     11|   249|
|0-6 months  |MAL-ED         |INDIA        |<52 kg     |           0|    106|   249|
|0-6 months  |MAL-ED         |INDIA        |<52 kg     |           1|     53|   249|
|0-6 months  |MAL-ED         |BANGLADESH   |>=58 kg    |           0|     41|   262|
|0-6 months  |MAL-ED         |BANGLADESH   |>=58 kg    |           1|      9|   262|
|0-6 months  |MAL-ED         |BANGLADESH   |[52-58) kg |           0|     46|   262|
|0-6 months  |MAL-ED         |BANGLADESH   |[52-58) kg |           1|     12|   262|
|0-6 months  |MAL-ED         |BANGLADESH   |<52 kg     |           0|    116|   262|
|0-6 months  |MAL-ED         |BANGLADESH   |<52 kg     |           1|     38|   262|
|0-6 months  |MAL-ED         |PERU         |>=58 kg    |           0|    129|   298|
|0-6 months  |MAL-ED         |PERU         |>=58 kg    |           1|      5|   298|
|0-6 months  |MAL-ED         |PERU         |[52-58) kg |           0|     70|   298|
|0-6 months  |MAL-ED         |PERU         |[52-58) kg |           1|      2|   298|
|0-6 months  |MAL-ED         |PERU         |<52 kg     |           0|     88|   298|
|0-6 months  |MAL-ED         |PERU         |<52 kg     |           1|      4|   298|
|0-6 months  |MAL-ED         |NEPAL        |>=58 kg    |           0|     83|   234|
|0-6 months  |MAL-ED         |NEPAL        |>=58 kg    |           1|     10|   234|
|0-6 months  |MAL-ED         |NEPAL        |[52-58) kg |           0|     56|   234|
|0-6 months  |MAL-ED         |NEPAL        |[52-58) kg |           1|     13|   234|
|0-6 months  |MAL-ED         |NEPAL        |<52 kg     |           0|     49|   234|
|0-6 months  |MAL-ED         |NEPAL        |<52 kg     |           1|     23|   234|
|0-6 months  |MAL-ED         |BRAZIL       |>=58 kg    |           0|    127|   233|
|0-6 months  |MAL-ED         |BRAZIL       |>=58 kg    |           1|     10|   233|
|0-6 months  |MAL-ED         |BRAZIL       |[52-58) kg |           0|     31|   233|
|0-6 months  |MAL-ED         |BRAZIL       |[52-58) kg |           1|      3|   233|
|0-6 months  |MAL-ED         |BRAZIL       |<52 kg     |           0|     60|   233|
|0-6 months  |MAL-ED         |BRAZIL       |<52 kg     |           1|      2|   233|
|0-6 months  |MAL-ED         |TANZANIA     |>=58 kg    |           0|     95|   251|
|0-6 months  |MAL-ED         |TANZANIA     |>=58 kg    |           1|      7|   251|
|0-6 months  |MAL-ED         |TANZANIA     |[52-58) kg |           0|     59|   251|
|0-6 months  |MAL-ED         |TANZANIA     |[52-58) kg |           1|      2|   251|
|0-6 months  |MAL-ED         |TANZANIA     |<52 kg     |           0|     84|   251|
|0-6 months  |MAL-ED         |TANZANIA     |<52 kg     |           1|      4|   251|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=58 kg    |           0|    192|   288|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=58 kg    |           1|     19|   288|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[52-58) kg |           0|     28|   288|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[52-58) kg |           1|      8|   288|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<52 kg     |           0|     37|   288|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<52 kg     |           1|      4|   288|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=58 kg    |           0|     64|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=58 kg    |           1|     23|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |[52-58) kg |           0|     59|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |[52-58) kg |           1|     26|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |<52 kg     |           0|    277|   622|
|0-6 months  |NIH-Birth      |BANGLADESH   |<52 kg     |           1|    173|   622|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=58 kg    |           0|    179|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=58 kg    |           1|     54|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[52-58) kg |           0|    134|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[52-58) kg |           1|     35|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<52 kg     |           0|    250|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<52 kg     |           1|    105|   757|
|0-6 months  |PROBIT         |BELARUS      |>=58 kg    |           0|   7542| 13860|
|0-6 months  |PROBIT         |BELARUS      |>=58 kg    |           1|   2793| 13860|
|0-6 months  |PROBIT         |BELARUS      |[52-58) kg |           0|   1688| 13860|
|0-6 months  |PROBIT         |BELARUS      |[52-58) kg |           1|    665| 13860|
|0-6 months  |PROBIT         |BELARUS      |<52 kg     |           0|    828| 13860|
|0-6 months  |PROBIT         |BELARUS      |<52 kg     |           1|    344| 13860|
|0-6 months  |PROVIDE        |BANGLADESH   |>=58 kg    |           0|    113|   689|
|0-6 months  |PROVIDE        |BANGLADESH   |>=58 kg    |           1|     36|   689|
|0-6 months  |PROVIDE        |BANGLADESH   |[52-58) kg |           0|    109|   689|
|0-6 months  |PROVIDE        |BANGLADESH   |[52-58) kg |           1|     29|   689|
|0-6 months  |PROVIDE        |BANGLADESH   |<52 kg     |           0|    288|   689|
|0-6 months  |PROVIDE        |BANGLADESH   |<52 kg     |           1|    114|   689|
|0-6 months  |SAS-CompFeed   |INDIA        |>=58 kg    |           0|    130|  1505|
|0-6 months  |SAS-CompFeed   |INDIA        |>=58 kg    |           1|     21|  1505|
|0-6 months  |SAS-CompFeed   |INDIA        |[52-58) kg |           0|    184|  1505|
|0-6 months  |SAS-CompFeed   |INDIA        |[52-58) kg |           1|     49|  1505|
|0-6 months  |SAS-CompFeed   |INDIA        |<52 kg     |           0|    860|  1505|
|0-6 months  |SAS-CompFeed   |INDIA        |<52 kg     |           1|    261|  1505|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=58 kg    |           0|   1241|  2383|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=58 kg    |           1|    192|  2383|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[52-58) kg |           0|    406|  2383|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[52-58) kg |           1|     75|  2383|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<52 kg     |           0|    403|  2383|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<52 kg     |           1|     66|  2383|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=58 kg    |           0|   4644| 10984|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=58 kg    |           1|    936| 10984|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[52-58) kg |           0|   2437| 10984|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[52-58) kg |           1|    532| 10984|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<52 kg     |           0|   1927| 10984|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<52 kg     |           1|    508| 10984|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |>=58 kg    |           0|    714|  3226|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |>=58 kg    |           1|    168|  3226|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |[52-58) kg |           0|    820|  3226|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |[52-58) kg |           1|    220|  3226|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |<52 kg     |           0|    951|  3226|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |<52 kg     |           1|    353|  3226|
|6-24 months |JiVitA-3       |BANGLADESH   |>=58 kg    |           0|    382| 17282|
|6-24 months |JiVitA-3       |BANGLADESH   |>=58 kg    |           1|     70| 17282|
|6-24 months |JiVitA-3       |BANGLADESH   |[52-58) kg |           0|   1027| 17282|
|6-24 months |JiVitA-3       |BANGLADESH   |[52-58) kg |           1|    185| 17282|
|6-24 months |JiVitA-3       |BANGLADESH   |<52 kg     |           0|  13040| 17282|
|6-24 months |JiVitA-3       |BANGLADESH   |<52 kg     |           1|   2578| 17282|
|6-24 months |LCNI-5         |MALAWI       |>=58 kg    |           0|    104|   825|
|6-24 months |LCNI-5         |MALAWI       |>=58 kg    |           1|      5|   825|
|6-24 months |LCNI-5         |MALAWI       |[52-58) kg |           0|    193|   825|
|6-24 months |LCNI-5         |MALAWI       |[52-58) kg |           1|     14|   825|
|6-24 months |LCNI-5         |MALAWI       |<52 kg     |           0|    464|   825|
|6-24 months |LCNI-5         |MALAWI       |<52 kg     |           1|     45|   825|
|6-24 months |MAL-ED         |INDIA        |>=58 kg    |           0|     39|   233|
|6-24 months |MAL-ED         |INDIA        |>=58 kg    |           1|      5|   233|
|6-24 months |MAL-ED         |INDIA        |[52-58) kg |           0|     32|   233|
|6-24 months |MAL-ED         |INDIA        |[52-58) kg |           1|      6|   233|
|6-24 months |MAL-ED         |INDIA        |<52 kg     |           0|     99|   233|
|6-24 months |MAL-ED         |INDIA        |<52 kg     |           1|     52|   233|
|6-24 months |MAL-ED         |BANGLADESH   |>=58 kg    |           0|     40|   239|
|6-24 months |MAL-ED         |BANGLADESH   |>=58 kg    |           1|      4|   239|
|6-24 months |MAL-ED         |BANGLADESH   |[52-58) kg |           0|     46|   239|
|6-24 months |MAL-ED         |BANGLADESH   |[52-58) kg |           1|      6|   239|
|6-24 months |MAL-ED         |BANGLADESH   |<52 kg     |           0|    110|   239|
|6-24 months |MAL-ED         |BANGLADESH   |<52 kg     |           1|     33|   239|
|6-24 months |MAL-ED         |PERU         |>=58 kg    |           0|    118|   267|
|6-24 months |MAL-ED         |PERU         |>=58 kg    |           1|      5|   267|
|6-24 months |MAL-ED         |PERU         |[52-58) kg |           0|     59|   267|
|6-24 months |MAL-ED         |PERU         |[52-58) kg |           1|      5|   267|
|6-24 months |MAL-ED         |PERU         |<52 kg     |           0|     73|   267|
|6-24 months |MAL-ED         |PERU         |<52 kg     |           1|      7|   267|
|6-24 months |MAL-ED         |NEPAL        |>=58 kg    |           0|     80|   230|
|6-24 months |MAL-ED         |NEPAL        |>=58 kg    |           1|     11|   230|
|6-24 months |MAL-ED         |NEPAL        |[52-58) kg |           0|     60|   230|
|6-24 months |MAL-ED         |NEPAL        |[52-58) kg |           1|      8|   230|
|6-24 months |MAL-ED         |NEPAL        |<52 kg     |           0|     56|   230|
|6-24 months |MAL-ED         |NEPAL        |<52 kg     |           1|     15|   230|
|6-24 months |MAL-ED         |BRAZIL       |>=58 kg    |           0|    124|   207|
|6-24 months |MAL-ED         |BRAZIL       |>=58 kg    |           1|      1|   207|
|6-24 months |MAL-ED         |BRAZIL       |[52-58) kg |           0|     29|   207|
|6-24 months |MAL-ED         |BRAZIL       |[52-58) kg |           1|      2|   207|
|6-24 months |MAL-ED         |BRAZIL       |<52 kg     |           0|     48|   207|
|6-24 months |MAL-ED         |BRAZIL       |<52 kg     |           1|      3|   207|
|6-24 months |MAL-ED         |TANZANIA     |>=58 kg    |           0|     92|   237|
|6-24 months |MAL-ED         |TANZANIA     |>=58 kg    |           1|      5|   237|
|6-24 months |MAL-ED         |TANZANIA     |[52-58) kg |           0|     52|   237|
|6-24 months |MAL-ED         |TANZANIA     |[52-58) kg |           1|      6|   237|
|6-24 months |MAL-ED         |TANZANIA     |<52 kg     |           0|     65|   237|
|6-24 months |MAL-ED         |TANZANIA     |<52 kg     |           1|     17|   237|
|6-24 months |MAL-ED         |SOUTH AFRICA |>=58 kg    |           0|    164|   250|
|6-24 months |MAL-ED         |SOUTH AFRICA |>=58 kg    |           1|     25|   250|
|6-24 months |MAL-ED         |SOUTH AFRICA |[52-58) kg |           0|     24|   250|
|6-24 months |MAL-ED         |SOUTH AFRICA |[52-58) kg |           1|      6|   250|
|6-24 months |MAL-ED         |SOUTH AFRICA |<52 kg     |           0|     27|   250|
|6-24 months |MAL-ED         |SOUTH AFRICA |<52 kg     |           1|      4|   250|
|6-24 months |NIH-Birth      |BANGLADESH   |>=58 kg    |           0|     58|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |>=58 kg    |           1|     18|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |[52-58) kg |           0|     59|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |[52-58) kg |           1|     16|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |<52 kg     |           0|    266|   542|
|6-24 months |NIH-Birth      |BANGLADESH   |<52 kg     |           1|    125|   542|
|6-24 months |NIH-Crypto     |BANGLADESH   |>=58 kg    |           0|    206|   729|
|6-24 months |NIH-Crypto     |BANGLADESH   |>=58 kg    |           1|     19|   729|
|6-24 months |NIH-Crypto     |BANGLADESH   |[52-58) kg |           0|    142|   729|
|6-24 months |NIH-Crypto     |BANGLADESH   |[52-58) kg |           1|     19|   729|
|6-24 months |NIH-Crypto     |BANGLADESH   |<52 kg     |           0|    285|   729|
|6-24 months |NIH-Crypto     |BANGLADESH   |<52 kg     |           1|     58|   729|
|6-24 months |PROBIT         |BELARUS      |>=58 kg    |           0|  10233| 13842|
|6-24 months |PROBIT         |BELARUS      |>=58 kg    |           1|     89| 13842|
|6-24 months |PROBIT         |BELARUS      |[52-58) kg |           0|   2325| 13842|
|6-24 months |PROBIT         |BELARUS      |[52-58) kg |           1|     25| 13842|
|6-24 months |PROBIT         |BELARUS      |<52 kg     |           0|   1158| 13842|
|6-24 months |PROBIT         |BELARUS      |<52 kg     |           1|     12| 13842|
|6-24 months |PROVIDE        |BANGLADESH   |>=58 kg    |           0|    117|   615|
|6-24 months |PROVIDE        |BANGLADESH   |>=58 kg    |           1|     12|   615|
|6-24 months |PROVIDE        |BANGLADESH   |[52-58) kg |           0|    108|   615|
|6-24 months |PROVIDE        |BANGLADESH   |[52-58) kg |           1|     14|   615|
|6-24 months |PROVIDE        |BANGLADESH   |<52 kg     |           0|    291|   615|
|6-24 months |PROVIDE        |BANGLADESH   |<52 kg     |           1|     73|   615|
|6-24 months |SAS-CompFeed   |INDIA        |>=58 kg    |           0|    112|  1389|
|6-24 months |SAS-CompFeed   |INDIA        |>=58 kg    |           1|     23|  1389|
|6-24 months |SAS-CompFeed   |INDIA        |[52-58) kg |           0|    171|  1389|
|6-24 months |SAS-CompFeed   |INDIA        |[52-58) kg |           1|     48|  1389|
|6-24 months |SAS-CompFeed   |INDIA        |<52 kg     |           0|    681|  1389|
|6-24 months |SAS-CompFeed   |INDIA        |<52 kg     |           1|    354|  1389|
|6-24 months |TanzaniaChild2 |TANZANIA     |>=58 kg    |           0|   1037|  2007|
|6-24 months |TanzaniaChild2 |TANZANIA     |>=58 kg    |           1|    184|  2007|
|6-24 months |TanzaniaChild2 |TANZANIA     |[52-58) kg |           0|    342|  2007|
|6-24 months |TanzaniaChild2 |TANZANIA     |[52-58) kg |           1|     68|  2007|
|6-24 months |TanzaniaChild2 |TANZANIA     |<52 kg     |           0|    306|  2007|
|6-24 months |TanzaniaChild2 |TANZANIA     |<52 kg     |           1|     70|  2007|
|6-24 months |ZVITAMBO       |ZIMBABWE     |>=58 kg    |           0|   4477|  9680|
|6-24 months |ZVITAMBO       |ZIMBABWE     |>=58 kg    |           1|    393|  9680|
|6-24 months |ZVITAMBO       |ZIMBABWE     |[52-58) kg |           0|   2355|  9680|
|6-24 months |ZVITAMBO       |ZIMBABWE     |[52-58) kg |           1|    273|  9680|
|6-24 months |ZVITAMBO       |ZIMBABWE     |<52 kg     |           0|   1890|  9680|
|6-24 months |ZVITAMBO       |ZIMBABWE     |<52 kg     |           1|    292|  9680|


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

* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


