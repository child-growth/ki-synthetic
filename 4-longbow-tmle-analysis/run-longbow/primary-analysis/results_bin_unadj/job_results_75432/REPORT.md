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

**Intervention Variable:** mwtkg

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |mwtkg      | ever_sstunted| n_cell|     n|
|:-----------|:--------------|:------------|:----------|-------------:|------:|-----:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=58 kg    |             0|    820|  3225|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |>=58 kg    |             1|     62|  3225|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[52-58) kg |             0|    938|  3225|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |[52-58) kg |             1|    101|  3225|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<52 kg     |             0|   1123|  3225|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |<52 kg     |             1|    181|  3225|
|0-24 months |JiVitA-3       |BANGLADESH   |>=58 kg    |             0|    610| 27185|
|0-24 months |JiVitA-3       |BANGLADESH   |>=58 kg    |             1|     96| 27185|
|0-24 months |JiVitA-3       |BANGLADESH   |[52-58) kg |             0|   1571| 27185|
|0-24 months |JiVitA-3       |BANGLADESH   |[52-58) kg |             1|    299| 27185|
|0-24 months |JiVitA-3       |BANGLADESH   |<52 kg     |             0|  19991| 27185|
|0-24 months |JiVitA-3       |BANGLADESH   |<52 kg     |             1|   4618| 27185|
|0-24 months |LCNI-5         |MALAWI       |>=58 kg    |             0|     95|   838|
|0-24 months |LCNI-5         |MALAWI       |>=58 kg    |             1|     14|   838|
|0-24 months |LCNI-5         |MALAWI       |[52-58) kg |             0|    182|   838|
|0-24 months |LCNI-5         |MALAWI       |[52-58) kg |             1|     31|   838|
|0-24 months |LCNI-5         |MALAWI       |<52 kg     |             0|    384|   838|
|0-24 months |LCNI-5         |MALAWI       |<52 kg     |             1|    132|   838|
|0-24 months |MAL-ED         |INDIA        |>=58 kg    |             0|     43|   249|
|0-24 months |MAL-ED         |INDIA        |>=58 kg    |             1|      8|   249|
|0-24 months |MAL-ED         |INDIA        |[52-58) kg |             0|     25|   249|
|0-24 months |MAL-ED         |INDIA        |[52-58) kg |             1|     14|   249|
|0-24 months |MAL-ED         |INDIA        |<52 kg     |             0|    122|   249|
|0-24 months |MAL-ED         |INDIA        |<52 kg     |             1|     37|   249|
|0-24 months |MAL-ED         |BANGLADESH   |>=58 kg    |             0|     45|   263|
|0-24 months |MAL-ED         |BANGLADESH   |>=58 kg    |             1|      5|   263|
|0-24 months |MAL-ED         |BANGLADESH   |[52-58) kg |             0|     48|   263|
|0-24 months |MAL-ED         |BANGLADESH   |[52-58) kg |             1|     10|   263|
|0-24 months |MAL-ED         |BANGLADESH   |<52 kg     |             0|    112|   263|
|0-24 months |MAL-ED         |BANGLADESH   |<52 kg     |             1|     43|   263|
|0-24 months |MAL-ED         |PERU         |>=58 kg    |             0|    110|   299|
|0-24 months |MAL-ED         |PERU         |>=58 kg    |             1|     25|   299|
|0-24 months |MAL-ED         |PERU         |[52-58) kg |             0|     57|   299|
|0-24 months |MAL-ED         |PERU         |[52-58) kg |             1|     15|   299|
|0-24 months |MAL-ED         |PERU         |<52 kg     |             0|     70|   299|
|0-24 months |MAL-ED         |PERU         |<52 kg     |             1|     22|   299|
|0-24 months |MAL-ED         |NEPAL        |>=58 kg    |             0|     86|   234|
|0-24 months |MAL-ED         |NEPAL        |>=58 kg    |             1|      7|   234|
|0-24 months |MAL-ED         |NEPAL        |[52-58) kg |             0|     67|   234|
|0-24 months |MAL-ED         |NEPAL        |[52-58) kg |             1|      2|   234|
|0-24 months |MAL-ED         |NEPAL        |<52 kg     |             0|     60|   234|
|0-24 months |MAL-ED         |NEPAL        |<52 kg     |             1|     12|   234|
|0-24 months |MAL-ED         |BRAZIL       |>=58 kg    |             0|    128|   233|
|0-24 months |MAL-ED         |BRAZIL       |>=58 kg    |             1|      9|   233|
|0-24 months |MAL-ED         |BRAZIL       |[52-58) kg |             0|     28|   233|
|0-24 months |MAL-ED         |BRAZIL       |[52-58) kg |             1|      6|   233|
|0-24 months |MAL-ED         |BRAZIL       |<52 kg     |             0|     55|   233|
|0-24 months |MAL-ED         |BRAZIL       |<52 kg     |             1|      7|   233|
|0-24 months |MAL-ED         |TANZANIA     |>=58 kg    |             0|     51|   252|
|0-24 months |MAL-ED         |TANZANIA     |>=58 kg    |             1|     51|   252|
|0-24 months |MAL-ED         |TANZANIA     |[52-58) kg |             0|     29|   252|
|0-24 months |MAL-ED         |TANZANIA     |[52-58) kg |             1|     32|   252|
|0-24 months |MAL-ED         |TANZANIA     |<52 kg     |             0|     39|   252|
|0-24 months |MAL-ED         |TANZANIA     |<52 kg     |             1|     50|   252|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=58 kg    |             0|    163|   290|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=58 kg    |             1|     49|   290|
|0-24 months |MAL-ED         |SOUTH AFRICA |[52-58) kg |             0|     27|   290|
|0-24 months |MAL-ED         |SOUTH AFRICA |[52-58) kg |             1|      9|   290|
|0-24 months |MAL-ED         |SOUTH AFRICA |<52 kg     |             0|     32|   290|
|0-24 months |MAL-ED         |SOUTH AFRICA |<52 kg     |             1|     10|   290|
|0-24 months |NIH-Birth      |BANGLADESH   |>=58 kg    |             0|     67|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |>=58 kg    |             1|     20|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |[52-58) kg |             0|     68|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |[52-58) kg |             1|     17|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |<52 kg     |             0|    298|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |<52 kg     |             1|    159|   629|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=58 kg    |             0|    217|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=58 kg    |             1|     16|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |[52-58) kg |             0|    147|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |[52-58) kg |             1|     22|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |<52 kg     |             0|    294|   757|
|0-24 months |NIH-Crypto     |BANGLADESH   |<52 kg     |             1|     61|   757|
|0-24 months |PROBIT         |BELARUS      |>=58 kg    |             0|  10066| 13860|
|0-24 months |PROBIT         |BELARUS      |>=58 kg    |             1|    269| 13860|
|0-24 months |PROBIT         |BELARUS      |[52-58) kg |             0|   2284| 13860|
|0-24 months |PROBIT         |BELARUS      |[52-58) kg |             1|     69| 13860|
|0-24 months |PROBIT         |BELARUS      |<52 kg     |             0|   1130| 13860|
|0-24 months |PROBIT         |BELARUS      |<52 kg     |             1|     42| 13860|
|0-24 months |PROVIDE        |BANGLADESH   |>=58 kg    |             0|    140|   689|
|0-24 months |PROVIDE        |BANGLADESH   |>=58 kg    |             1|      9|   689|
|0-24 months |PROVIDE        |BANGLADESH   |[52-58) kg |             0|    127|   689|
|0-24 months |PROVIDE        |BANGLADESH   |[52-58) kg |             1|     11|   689|
|0-24 months |PROVIDE        |BANGLADESH   |<52 kg     |             0|    327|   689|
|0-24 months |PROVIDE        |BANGLADESH   |<52 kg     |             1|     75|   689|
|0-24 months |SAS-CompFeed   |INDIA        |>=58 kg    |             0|    129|  1533|
|0-24 months |SAS-CompFeed   |INDIA        |>=58 kg    |             1|     22|  1533|
|0-24 months |SAS-CompFeed   |INDIA        |[52-58) kg |             0|    183|  1533|
|0-24 months |SAS-CompFeed   |INDIA        |[52-58) kg |             1|     54|  1533|
|0-24 months |SAS-CompFeed   |INDIA        |<52 kg     |             0|    714|  1533|
|0-24 months |SAS-CompFeed   |INDIA        |<52 kg     |             1|    431|  1533|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=58 kg    |             0|   1312|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA     |>=58 kg    |             1|    121|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA     |[52-58) kg |             0|    431|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA     |[52-58) kg |             1|     50|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA     |<52 kg     |             0|    404|  2383|
|0-24 months |TanzaniaChild2 |TANZANIA     |<52 kg     |             1|     65|  2383|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=58 kg    |             0|   4801| 11064|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=58 kg    |             1|    812| 11064|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[52-58) kg |             0|   2401| 11064|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[52-58) kg |             1|    584| 11064|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<52 kg     |             0|   1850| 11064|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<52 kg     |             1|    616| 11064|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=58 kg    |             0|    631| 27119|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=58 kg    |             1|     72| 27119|
|0-6 months  |JiVitA-3       |BANGLADESH   |[52-58) kg |             0|   1626| 27119|
|0-6 months  |JiVitA-3       |BANGLADESH   |[52-58) kg |             1|    240| 27119|
|0-6 months  |JiVitA-3       |BANGLADESH   |<52 kg     |             0|  20867| 27119|
|0-6 months  |JiVitA-3       |BANGLADESH   |<52 kg     |             1|   3683| 27119|
|0-6 months  |LCNI-5         |MALAWI       |>=58 kg    |             0|     32|   271|
|0-6 months  |LCNI-5         |MALAWI       |>=58 kg    |             1|      3|   271|
|0-6 months  |LCNI-5         |MALAWI       |[52-58) kg |             0|     67|   271|
|0-6 months  |LCNI-5         |MALAWI       |[52-58) kg |             1|      1|   271|
|0-6 months  |LCNI-5         |MALAWI       |<52 kg     |             0|    152|   271|
|0-6 months  |LCNI-5         |MALAWI       |<52 kg     |             1|     16|   271|
|0-6 months  |MAL-ED         |INDIA        |>=58 kg    |             0|     49|   249|
|0-6 months  |MAL-ED         |INDIA        |>=58 kg    |             1|      2|   249|
|0-6 months  |MAL-ED         |INDIA        |[52-58) kg |             0|     35|   249|
|0-6 months  |MAL-ED         |INDIA        |[52-58) kg |             1|      4|   249|
|0-6 months  |MAL-ED         |INDIA        |<52 kg     |             0|    144|   249|
|0-6 months  |MAL-ED         |INDIA        |<52 kg     |             1|     15|   249|
|0-6 months  |MAL-ED         |BANGLADESH   |>=58 kg    |             0|     49|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |>=58 kg    |             1|      1|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |[52-58) kg |             0|     53|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |[52-58) kg |             1|      5|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |<52 kg     |             0|    140|   263|
|0-6 months  |MAL-ED         |BANGLADESH   |<52 kg     |             1|     15|   263|
|0-6 months  |MAL-ED         |PERU         |>=58 kg    |             0|    120|   299|
|0-6 months  |MAL-ED         |PERU         |>=58 kg    |             1|     15|   299|
|0-6 months  |MAL-ED         |PERU         |[52-58) kg |             0|     63|   299|
|0-6 months  |MAL-ED         |PERU         |[52-58) kg |             1|      9|   299|
|0-6 months  |MAL-ED         |PERU         |<52 kg     |             0|     78|   299|
|0-6 months  |MAL-ED         |PERU         |<52 kg     |             1|     14|   299|
|0-6 months  |MAL-ED         |NEPAL        |>=58 kg    |             0|     89|   234|
|0-6 months  |MAL-ED         |NEPAL        |>=58 kg    |             1|      4|   234|
|0-6 months  |MAL-ED         |NEPAL        |[52-58) kg |             0|     68|   234|
|0-6 months  |MAL-ED         |NEPAL        |[52-58) kg |             1|      1|   234|
|0-6 months  |MAL-ED         |NEPAL        |<52 kg     |             0|     67|   234|
|0-6 months  |MAL-ED         |NEPAL        |<52 kg     |             1|      5|   234|
|0-6 months  |MAL-ED         |BRAZIL       |>=58 kg    |             0|    130|   233|
|0-6 months  |MAL-ED         |BRAZIL       |>=58 kg    |             1|      7|   233|
|0-6 months  |MAL-ED         |BRAZIL       |[52-58) kg |             0|     30|   233|
|0-6 months  |MAL-ED         |BRAZIL       |[52-58) kg |             1|      4|   233|
|0-6 months  |MAL-ED         |BRAZIL       |<52 kg     |             0|     56|   233|
|0-6 months  |MAL-ED         |BRAZIL       |<52 kg     |             1|      6|   233|
|0-6 months  |MAL-ED         |TANZANIA     |>=58 kg    |             0|     88|   252|
|0-6 months  |MAL-ED         |TANZANIA     |>=58 kg    |             1|     14|   252|
|0-6 months  |MAL-ED         |TANZANIA     |[52-58) kg |             0|     50|   252|
|0-6 months  |MAL-ED         |TANZANIA     |[52-58) kg |             1|     11|   252|
|0-6 months  |MAL-ED         |TANZANIA     |<52 kg     |             0|     76|   252|
|0-6 months  |MAL-ED         |TANZANIA     |<52 kg     |             1|     13|   252|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=58 kg    |             0|    190|   290|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=58 kg    |             1|     22|   290|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[52-58) kg |             0|     34|   290|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[52-58) kg |             1|      2|   290|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<52 kg     |             0|     39|   290|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<52 kg     |             1|      3|   290|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=58 kg    |             0|     80|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=58 kg    |             1|      7|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |[52-58) kg |             0|     80|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |[52-58) kg |             1|      5|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |<52 kg     |             0|    410|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |<52 kg     |             1|     47|   629|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=58 kg    |             0|    226|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=58 kg    |             1|      7|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[52-58) kg |             0|    156|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[52-58) kg |             1|     13|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<52 kg     |             0|    328|   757|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<52 kg     |             1|     27|   757|
|0-6 months  |PROBIT         |BELARUS      |>=58 kg    |             0|  10233| 13860|
|0-6 months  |PROBIT         |BELARUS      |>=58 kg    |             1|    102| 13860|
|0-6 months  |PROBIT         |BELARUS      |[52-58) kg |             0|   2329| 13860|
|0-6 months  |PROBIT         |BELARUS      |[52-58) kg |             1|     24| 13860|
|0-6 months  |PROBIT         |BELARUS      |<52 kg     |             0|   1159| 13860|
|0-6 months  |PROBIT         |BELARUS      |<52 kg     |             1|     13| 13860|
|0-6 months  |PROVIDE        |BANGLADESH   |>=58 kg    |             0|    145|   689|
|0-6 months  |PROVIDE        |BANGLADESH   |>=58 kg    |             1|      4|   689|
|0-6 months  |PROVIDE        |BANGLADESH   |[52-58) kg |             0|    132|   689|
|0-6 months  |PROVIDE        |BANGLADESH   |[52-58) kg |             1|      6|   689|
|0-6 months  |PROVIDE        |BANGLADESH   |<52 kg     |             0|    381|   689|
|0-6 months  |PROVIDE        |BANGLADESH   |<52 kg     |             1|     21|   689|
|0-6 months  |SAS-CompFeed   |INDIA        |>=58 kg    |             0|    143|  1530|
|0-6 months  |SAS-CompFeed   |INDIA        |>=58 kg    |             1|      8|  1530|
|0-6 months  |SAS-CompFeed   |INDIA        |[52-58) kg |             0|    213|  1530|
|0-6 months  |SAS-CompFeed   |INDIA        |[52-58) kg |             1|     23|  1530|
|0-6 months  |SAS-CompFeed   |INDIA        |<52 kg     |             0|    945|  1530|
|0-6 months  |SAS-CompFeed   |INDIA        |<52 kg     |             1|    198|  1530|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=58 kg    |             0|   1385|  2383|
|0-6 months  |TanzaniaChild2 |TANZANIA     |>=58 kg    |             1|     48|  2383|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[52-58) kg |             0|    457|  2383|
|0-6 months  |TanzaniaChild2 |TANZANIA     |[52-58) kg |             1|     24|  2383|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<52 kg     |             0|    438|  2383|
|0-6 months  |TanzaniaChild2 |TANZANIA     |<52 kg     |             1|     31|  2383|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=58 kg    |             0|   5170| 11050|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=58 kg    |             1|    437| 11050|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[52-58) kg |             0|   2674| 11050|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[52-58) kg |             1|    306| 11050|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<52 kg     |             0|   2132| 11050|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<52 kg     |             1|    331| 11050|


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


