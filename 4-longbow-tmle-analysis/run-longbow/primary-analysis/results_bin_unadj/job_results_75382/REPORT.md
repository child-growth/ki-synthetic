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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** mhtcm

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |mhtcm        | sstunted| n_cell|     n|
|:---------|:--------------|:------------|:------------|--------:|------:|-----:|
|Birth     |COHORTS        |INDIA        |>=155 cm     |        0|   4724|  6640|
|Birth     |COHORTS        |INDIA        |>=155 cm     |        1|    153|  6640|
|Birth     |COHORTS        |INDIA        |[151-155) cm |        0|    629|  6640|
|Birth     |COHORTS        |INDIA        |[151-155) cm |        1|     18|  6640|
|Birth     |COHORTS        |INDIA        |<151 cm      |        0|   1081|  6640|
|Birth     |COHORTS        |INDIA        |<151 cm      |        1|     35|  6640|
|Birth     |COHORTS        |GUATEMALA    |>=155 cm     |        0|     90|   826|
|Birth     |COHORTS        |GUATEMALA    |>=155 cm     |        1|      0|   826|
|Birth     |COHORTS        |GUATEMALA    |[151-155) cm |        0|    159|   826|
|Birth     |COHORTS        |GUATEMALA    |[151-155) cm |        1|      2|   826|
|Birth     |COHORTS        |GUATEMALA    |<151 cm      |        0|    566|   826|
|Birth     |COHORTS        |GUATEMALA    |<151 cm      |        1|      9|   826|
|Birth     |COHORTS        |PHILIPPINES  |>=155 cm     |        0|    690|  3049|
|Birth     |COHORTS        |PHILIPPINES  |>=155 cm     |        1|      3|  3049|
|Birth     |COHORTS        |PHILIPPINES  |[151-155) cm |        0|    724|  3049|
|Birth     |COHORTS        |PHILIPPINES  |[151-155) cm |        1|     12|  3049|
|Birth     |COHORTS        |PHILIPPINES  |<151 cm      |        0|   1589|  3049|
|Birth     |COHORTS        |PHILIPPINES  |<151 cm      |        1|     31|  3049|
|Birth     |JiVitA-3       |BANGLADESH   |>=155 cm     |        0|   3362| 22249|
|Birth     |JiVitA-3       |BANGLADESH   |>=155 cm     |        1|    391| 22249|
|Birth     |JiVitA-3       |BANGLADESH   |[151-155) cm |        0|   4871| 22249|
|Birth     |JiVitA-3       |BANGLADESH   |[151-155) cm |        1|    522| 22249|
|Birth     |JiVitA-3       |BANGLADESH   |<151 cm      |        0|  11590| 22249|
|Birth     |JiVitA-3       |BANGLADESH   |<151 cm      |        1|   1513| 22249|
|Birth     |Keneba         |GAMBIA       |>=155 cm     |        0|   1036|  1360|
|Birth     |Keneba         |GAMBIA       |>=155 cm     |        1|     20|  1360|
|Birth     |Keneba         |GAMBIA       |[151-155) cm |        0|    183|  1360|
|Birth     |Keneba         |GAMBIA       |[151-155) cm |        1|      4|  1360|
|Birth     |Keneba         |GAMBIA       |<151 cm      |        0|    114|  1360|
|Birth     |Keneba         |GAMBIA       |<151 cm      |        1|      3|  1360|
|Birth     |MAL-ED         |INDIA        |>=155 cm     |        0|     13|    47|
|Birth     |MAL-ED         |INDIA        |>=155 cm     |        1|      0|    47|
|Birth     |MAL-ED         |INDIA        |[151-155) cm |        0|     13|    47|
|Birth     |MAL-ED         |INDIA        |[151-155) cm |        1|      1|    47|
|Birth     |MAL-ED         |INDIA        |<151 cm      |        0|     19|    47|
|Birth     |MAL-ED         |INDIA        |<151 cm      |        1|      1|    47|
|Birth     |MAL-ED         |BANGLADESH   |>=155 cm     |        0|     33|   226|
|Birth     |MAL-ED         |BANGLADESH   |>=155 cm     |        1|      0|   226|
|Birth     |MAL-ED         |BANGLADESH   |[151-155) cm |        0|     45|   226|
|Birth     |MAL-ED         |BANGLADESH   |[151-155) cm |        1|      3|   226|
|Birth     |MAL-ED         |BANGLADESH   |<151 cm      |        0|    139|   226|
|Birth     |MAL-ED         |BANGLADESH   |<151 cm      |        1|      6|   226|
|Birth     |MAL-ED         |PERU         |>=155 cm     |        0|     56|   229|
|Birth     |MAL-ED         |PERU         |>=155 cm     |        1|      0|   229|
|Birth     |MAL-ED         |PERU         |[151-155) cm |        0|     44|   229|
|Birth     |MAL-ED         |PERU         |[151-155) cm |        1|      1|   229|
|Birth     |MAL-ED         |PERU         |<151 cm      |        0|    126|   229|
|Birth     |MAL-ED         |PERU         |<151 cm      |        1|      2|   229|
|Birth     |MAL-ED         |NEPAL        |>=155 cm     |        0|      4|    27|
|Birth     |MAL-ED         |NEPAL        |>=155 cm     |        1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |[151-155) cm |        0|      7|    27|
|Birth     |MAL-ED         |NEPAL        |[151-155) cm |        1|      1|    27|
|Birth     |MAL-ED         |NEPAL        |<151 cm      |        0|     15|    27|
|Birth     |MAL-ED         |NEPAL        |<151 cm      |        1|      0|    27|
|Birth     |MAL-ED         |BRAZIL       |>=155 cm     |        0|     28|    65|
|Birth     |MAL-ED         |BRAZIL       |>=155 cm     |        1|      1|    65|
|Birth     |MAL-ED         |BRAZIL       |[151-155) cm |        0|     12|    65|
|Birth     |MAL-ED         |BRAZIL       |[151-155) cm |        1|      1|    65|
|Birth     |MAL-ED         |BRAZIL       |<151 cm      |        0|     22|    65|
|Birth     |MAL-ED         |BRAZIL       |<151 cm      |        1|      1|    65|
|Birth     |MAL-ED         |TANZANIA     |>=155 cm     |        0|     67|   122|
|Birth     |MAL-ED         |TANZANIA     |>=155 cm     |        1|      6|   122|
|Birth     |MAL-ED         |TANZANIA     |[151-155) cm |        0|     16|   122|
|Birth     |MAL-ED         |TANZANIA     |[151-155) cm |        1|      1|   122|
|Birth     |MAL-ED         |TANZANIA     |<151 cm      |        0|     30|   122|
|Birth     |MAL-ED         |TANZANIA     |<151 cm      |        1|      2|   122|
|Birth     |MAL-ED         |SOUTH AFRICA |>=155 cm     |        0|     85|   112|
|Birth     |MAL-ED         |SOUTH AFRICA |>=155 cm     |        1|      2|   112|
|Birth     |MAL-ED         |SOUTH AFRICA |[151-155) cm |        0|     14|   112|
|Birth     |MAL-ED         |SOUTH AFRICA |[151-155) cm |        1|      0|   112|
|Birth     |MAL-ED         |SOUTH AFRICA |<151 cm      |        0|     11|   112|
|Birth     |MAL-ED         |SOUTH AFRICA |<151 cm      |        1|      0|   112|
|Birth     |NIH-Birth      |BANGLADESH   |>=155 cm     |        0|    106|   608|
|Birth     |NIH-Birth      |BANGLADESH   |>=155 cm     |        1|      4|   608|
|Birth     |NIH-Birth      |BANGLADESH   |[151-155) cm |        0|    137|   608|
|Birth     |NIH-Birth      |BANGLADESH   |[151-155) cm |        1|      3|   608|
|Birth     |NIH-Birth      |BANGLADESH   |<151 cm      |        0|    346|   608|
|Birth     |NIH-Birth      |BANGLADESH   |<151 cm      |        1|     12|   608|
|Birth     |NIH-Crypto     |BANGLADESH   |>=155 cm     |        0|    142|   731|
|Birth     |NIH-Crypto     |BANGLADESH   |>=155 cm     |        1|      3|   731|
|Birth     |NIH-Crypto     |BANGLADESH   |[151-155) cm |        0|    177|   731|
|Birth     |NIH-Crypto     |BANGLADESH   |[151-155) cm |        1|      3|   731|
|Birth     |NIH-Crypto     |BANGLADESH   |<151 cm      |        0|    402|   731|
|Birth     |NIH-Crypto     |BANGLADESH   |<151 cm      |        1|      4|   731|
|Birth     |PROBIT         |BELARUS      |>=155 cm     |        0|  13169| 13719|
|Birth     |PROBIT         |BELARUS      |>=155 cm     |        1|      5| 13719|
|Birth     |PROBIT         |BELARUS      |[151-155) cm |        0|    399| 13719|
|Birth     |PROBIT         |BELARUS      |[151-155) cm |        1|      0| 13719|
|Birth     |PROBIT         |BELARUS      |<151 cm      |        0|    146| 13719|
|Birth     |PROBIT         |BELARUS      |<151 cm      |        1|      0| 13719|
|Birth     |PROVIDE        |BANGLADESH   |>=155 cm     |        0|    101|   516|
|Birth     |PROVIDE        |BANGLADESH   |>=155 cm     |        1|      2|   516|
|Birth     |PROVIDE        |BANGLADESH   |[151-155) cm |        0|    141|   516|
|Birth     |PROVIDE        |BANGLADESH   |[151-155) cm |        1|      1|   516|
|Birth     |PROVIDE        |BANGLADESH   |<151 cm      |        0|    270|   516|
|Birth     |PROVIDE        |BANGLADESH   |<151 cm      |        1|      1|   516|
|Birth     |SAS-CompFeed   |INDIA        |>=155 cm     |        0|    466|  1230|
|Birth     |SAS-CompFeed   |INDIA        |>=155 cm     |        1|     36|  1230|
|Birth     |SAS-CompFeed   |INDIA        |[151-155) cm |        0|    231|  1230|
|Birth     |SAS-CompFeed   |INDIA        |[151-155) cm |        1|     19|  1230|
|Birth     |SAS-CompFeed   |INDIA        |<151 cm      |        0|    442|  1230|
|Birth     |SAS-CompFeed   |INDIA        |<151 cm      |        1|     36|  1230|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=155 cm     |        0|   7329|  9512|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=155 cm     |        1|    224|  9512|
|Birth     |ZVITAMBO       |ZIMBABWE     |[151-155) cm |        0|   1370|  9512|
|Birth     |ZVITAMBO       |ZIMBABWE     |[151-155) cm |        1|     32|  9512|
|Birth     |ZVITAMBO       |ZIMBABWE     |<151 cm      |        0|    537|  9512|
|Birth     |ZVITAMBO       |ZIMBABWE     |<151 cm      |        1|     20|  9512|
|6 months  |COHORTS        |INDIA        |>=155 cm     |        0|   4835|  6860|
|6 months  |COHORTS        |INDIA        |>=155 cm     |        1|    226|  6860|
|6 months  |COHORTS        |INDIA        |[151-155) cm |        0|    628|  6860|
|6 months  |COHORTS        |INDIA        |[151-155) cm |        1|     17|  6860|
|6 months  |COHORTS        |INDIA        |<151 cm      |        0|   1086|  6860|
|6 months  |COHORTS        |INDIA        |<151 cm      |        1|     68|  6860|
|6 months  |COHORTS        |GUATEMALA    |>=155 cm     |        0|     95|   926|
|6 months  |COHORTS        |GUATEMALA    |>=155 cm     |        1|      5|   926|
|6 months  |COHORTS        |GUATEMALA    |[151-155) cm |        0|    158|   926|
|6 months  |COHORTS        |GUATEMALA    |[151-155) cm |        1|     13|   926|
|6 months  |COHORTS        |GUATEMALA    |<151 cm      |        0|    553|   926|
|6 months  |COHORTS        |GUATEMALA    |<151 cm      |        1|    102|   926|
|6 months  |COHORTS        |PHILIPPINES  |>=155 cm     |        0|    607|  2707|
|6 months  |COHORTS        |PHILIPPINES  |>=155 cm     |        1|     12|  2707|
|6 months  |COHORTS        |PHILIPPINES  |[151-155) cm |        0|    631|  2707|
|6 months  |COHORTS        |PHILIPPINES  |[151-155) cm |        1|     26|  2707|
|6 months  |COHORTS        |PHILIPPINES  |<151 cm      |        0|   1337|  2707|
|6 months  |COHORTS        |PHILIPPINES  |<151 cm      |        1|     94|  2707|
|6 months  |Guatemala BSC  |GUATEMALA    |>=155 cm     |        0|     47|   239|
|6 months  |Guatemala BSC  |GUATEMALA    |>=155 cm     |        1|      2|   239|
|6 months  |Guatemala BSC  |GUATEMALA    |[151-155) cm |        0|     39|   239|
|6 months  |Guatemala BSC  |GUATEMALA    |[151-155) cm |        1|      4|   239|
|6 months  |Guatemala BSC  |GUATEMALA    |<151 cm      |        0|    131|   239|
|6 months  |Guatemala BSC  |GUATEMALA    |<151 cm      |        1|     16|   239|
|6 months  |JiVitA-3       |BANGLADESH   |>=155 cm     |        0|   2741| 16695|
|6 months  |JiVitA-3       |BANGLADESH   |>=155 cm     |        1|    159| 16695|
|6 months  |JiVitA-3       |BANGLADESH   |[151-155) cm |        0|   3929| 16695|
|6 months  |JiVitA-3       |BANGLADESH   |[151-155) cm |        1|    226| 16695|
|6 months  |JiVitA-3       |BANGLADESH   |<151 cm      |        0|   9013| 16695|
|6 months  |JiVitA-3       |BANGLADESH   |<151 cm      |        1|    627| 16695|
|6 months  |Keneba         |GAMBIA       |>=155 cm     |        0|   1343|  1803|
|6 months  |Keneba         |GAMBIA       |>=155 cm     |        1|     51|  1803|
|6 months  |Keneba         |GAMBIA       |[151-155) cm |        0|    241|  1803|
|6 months  |Keneba         |GAMBIA       |[151-155) cm |        1|      7|  1803|
|6 months  |Keneba         |GAMBIA       |<151 cm      |        0|    156|  1803|
|6 months  |Keneba         |GAMBIA       |<151 cm      |        1|      5|  1803|
|6 months  |LCNI-5         |MALAWI       |>=155 cm     |        0|    449|   835|
|6 months  |LCNI-5         |MALAWI       |>=155 cm     |        1|     43|   835|
|6 months  |LCNI-5         |MALAWI       |[151-155) cm |        0|    162|   835|
|6 months  |LCNI-5         |MALAWI       |[151-155) cm |        1|     10|   835|
|6 months  |LCNI-5         |MALAWI       |<151 cm      |        0|    154|   835|
|6 months  |LCNI-5         |MALAWI       |<151 cm      |        1|     17|   835|
|6 months  |MAL-ED         |INDIA        |>=155 cm     |        0|     57|   233|
|6 months  |MAL-ED         |INDIA        |>=155 cm     |        1|      3|   233|
|6 months  |MAL-ED         |INDIA        |[151-155) cm |        0|     54|   233|
|6 months  |MAL-ED         |INDIA        |[151-155) cm |        1|      1|   233|
|6 months  |MAL-ED         |INDIA        |<151 cm      |        0|    113|   233|
|6 months  |MAL-ED         |INDIA        |<151 cm      |        1|      5|   233|
|6 months  |MAL-ED         |BANGLADESH   |>=155 cm     |        0|     35|   238|
|6 months  |MAL-ED         |BANGLADESH   |>=155 cm     |        1|      0|   238|
|6 months  |MAL-ED         |BANGLADESH   |[151-155) cm |        0|     52|   238|
|6 months  |MAL-ED         |BANGLADESH   |[151-155) cm |        1|      2|   238|
|6 months  |MAL-ED         |BANGLADESH   |<151 cm      |        0|    143|   238|
|6 months  |MAL-ED         |BANGLADESH   |<151 cm      |        1|      6|   238|
|6 months  |MAL-ED         |PERU         |>=155 cm     |        0|     64|   269|
|6 months  |MAL-ED         |PERU         |>=155 cm     |        1|      2|   269|
|6 months  |MAL-ED         |PERU         |[151-155) cm |        0|     52|   269|
|6 months  |MAL-ED         |PERU         |[151-155) cm |        1|      1|   269|
|6 months  |MAL-ED         |PERU         |<151 cm      |        0|    144|   269|
|6 months  |MAL-ED         |PERU         |<151 cm      |        1|      6|   269|
|6 months  |MAL-ED         |NEPAL        |>=155 cm     |        0|     44|   236|
|6 months  |MAL-ED         |NEPAL        |>=155 cm     |        1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |[151-155) cm |        0|     58|   236|
|6 months  |MAL-ED         |NEPAL        |[151-155) cm |        1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |<151 cm      |        0|    133|   236|
|6 months  |MAL-ED         |NEPAL        |<151 cm      |        1|      1|   236|
|6 months  |MAL-ED         |BRAZIL       |>=155 cm     |        0|     97|   208|
|6 months  |MAL-ED         |BRAZIL       |>=155 cm     |        1|      0|   208|
|6 months  |MAL-ED         |BRAZIL       |[151-155) cm |        0|     43|   208|
|6 months  |MAL-ED         |BRAZIL       |[151-155) cm |        1|      0|   208|
|6 months  |MAL-ED         |BRAZIL       |<151 cm      |        0|     68|   208|
|6 months  |MAL-ED         |BRAZIL       |<151 cm      |        1|      0|   208|
|6 months  |MAL-ED         |TANZANIA     |>=155 cm     |        0|    135|   243|
|6 months  |MAL-ED         |TANZANIA     |>=155 cm     |        1|      8|   243|
|6 months  |MAL-ED         |TANZANIA     |[151-155) cm |        0|     38|   243|
|6 months  |MAL-ED         |TANZANIA     |[151-155) cm |        1|      5|   243|
|6 months  |MAL-ED         |TANZANIA     |<151 cm      |        0|     56|   243|
|6 months  |MAL-ED         |TANZANIA     |<151 cm      |        1|      1|   243|
|6 months  |MAL-ED         |SOUTH AFRICA |>=155 cm     |        0|    177|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |>=155 cm     |        1|      3|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |[151-155) cm |        0|     33|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |[151-155) cm |        1|      2|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |<151 cm      |        0|     30|   246|
|6 months  |MAL-ED         |SOUTH AFRICA |<151 cm      |        1|      1|   246|
|6 months  |NIH-Birth      |BANGLADESH   |>=155 cm     |        0|     90|   537|
|6 months  |NIH-Birth      |BANGLADESH   |>=155 cm     |        1|      2|   537|
|6 months  |NIH-Birth      |BANGLADESH   |[151-155) cm |        0|    125|   537|
|6 months  |NIH-Birth      |BANGLADESH   |[151-155) cm |        1|      4|   537|
|6 months  |NIH-Birth      |BANGLADESH   |<151 cm      |        0|    287|   537|
|6 months  |NIH-Birth      |BANGLADESH   |<151 cm      |        1|     29|   537|
|6 months  |NIH-Crypto     |BANGLADESH   |>=155 cm     |        0|    141|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |>=155 cm     |        1|      2|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |[151-155) cm |        0|    168|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |[151-155) cm |        1|      4|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |<151 cm      |        0|    382|   714|
|6 months  |NIH-Crypto     |BANGLADESH   |<151 cm      |        1|     17|   714|
|6 months  |PROBIT         |BELARUS      |>=155 cm     |        0|  12425| 13083|
|6 months  |PROBIT         |BELARUS      |>=155 cm     |        1|    130| 13083|
|6 months  |PROBIT         |BELARUS      |[151-155) cm |        0|    380| 13083|
|6 months  |PROBIT         |BELARUS      |[151-155) cm |        1|      5| 13083|
|6 months  |PROBIT         |BELARUS      |<151 cm      |        0|    142| 13083|
|6 months  |PROBIT         |BELARUS      |<151 cm      |        1|      1| 13083|
|6 months  |PROVIDE        |BANGLADESH   |>=155 cm     |        0|    110|   587|
|6 months  |PROVIDE        |BANGLADESH   |>=155 cm     |        1|      3|   587|
|6 months  |PROVIDE        |BANGLADESH   |[151-155) cm |        0|    158|   587|
|6 months  |PROVIDE        |BANGLADESH   |[151-155) cm |        1|      1|   587|
|6 months  |PROVIDE        |BANGLADESH   |<151 cm      |        0|    306|   587|
|6 months  |PROVIDE        |BANGLADESH   |<151 cm      |        1|      9|   587|
|6 months  |SAS-CompFeed   |INDIA        |>=155 cm     |        0|    507|  1317|
|6 months  |SAS-CompFeed   |INDIA        |>=155 cm     |        1|     37|  1317|
|6 months  |SAS-CompFeed   |INDIA        |[151-155) cm |        0|    243|  1317|
|6 months  |SAS-CompFeed   |INDIA        |[151-155) cm |        1|     33|  1317|
|6 months  |SAS-CompFeed   |INDIA        |<151 cm      |        0|    439|  1317|
|6 months  |SAS-CompFeed   |INDIA        |<151 cm      |        1|     58|  1317|
|6 months  |SAS-FoodSuppl  |INDIA        |>=155 cm     |        0|     61|   378|
|6 months  |SAS-FoodSuppl  |INDIA        |>=155 cm     |        1|      9|   378|
|6 months  |SAS-FoodSuppl  |INDIA        |[151-155) cm |        0|     89|   378|
|6 months  |SAS-FoodSuppl  |INDIA        |[151-155) cm |        1|     12|   378|
|6 months  |SAS-FoodSuppl  |INDIA        |<151 cm      |        0|    174|   378|
|6 months  |SAS-FoodSuppl  |INDIA        |<151 cm      |        1|     33|   378|
|6 months  |TanzaniaChild2 |TANZANIA     |>=155 cm     |        0|   1274|  2010|
|6 months  |TanzaniaChild2 |TANZANIA     |>=155 cm     |        1|     13|  2010|
|6 months  |TanzaniaChild2 |TANZANIA     |[151-155) cm |        0|    427|  2010|
|6 months  |TanzaniaChild2 |TANZANIA     |[151-155) cm |        1|      3|  2010|
|6 months  |TanzaniaChild2 |TANZANIA     |<151 cm      |        0|    290|  2010|
|6 months  |TanzaniaChild2 |TANZANIA     |<151 cm      |        1|      3|  2010|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=155 cm     |        0|   5529|  7249|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=155 cm     |        1|    201|  7249|
|6 months  |ZVITAMBO       |ZIMBABWE     |[151-155) cm |        0|   1046|  7249|
|6 months  |ZVITAMBO       |ZIMBABWE     |[151-155) cm |        1|     51|  7249|
|6 months  |ZVITAMBO       |ZIMBABWE     |<151 cm      |        0|    399|  7249|
|6 months  |ZVITAMBO       |ZIMBABWE     |<151 cm      |        1|     23|  7249|
|24 months |COHORTS        |INDIA        |>=155 cm     |        0|   2959|  5337|
|24 months |COHORTS        |INDIA        |>=155 cm     |        1|    815|  5337|
|24 months |COHORTS        |INDIA        |[151-155) cm |        0|    440|  5337|
|24 months |COHORTS        |INDIA        |[151-155) cm |        1|    126|  5337|
|24 months |COHORTS        |INDIA        |<151 cm      |        0|    719|  5337|
|24 months |COHORTS        |INDIA        |<151 cm      |        1|    278|  5337|
|24 months |COHORTS        |GUATEMALA    |>=155 cm     |        0|     75|   979|
|24 months |COHORTS        |GUATEMALA    |>=155 cm     |        1|     33|   979|
|24 months |COHORTS        |GUATEMALA    |[151-155) cm |        0|     91|   979|
|24 months |COHORTS        |GUATEMALA    |[151-155) cm |        1|     87|   979|
|24 months |COHORTS        |GUATEMALA    |<151 cm      |        0|    332|   979|
|24 months |COHORTS        |GUATEMALA    |<151 cm      |        1|    361|   979|
|24 months |COHORTS        |PHILIPPINES  |>=155 cm     |        0|    461|  2444|
|24 months |COHORTS        |PHILIPPINES  |>=155 cm     |        1|     97|  2444|
|24 months |COHORTS        |PHILIPPINES  |[151-155) cm |        0|    460|  2444|
|24 months |COHORTS        |PHILIPPINES  |[151-155) cm |        1|    128|  2444|
|24 months |COHORTS        |PHILIPPINES  |<151 cm      |        0|    817|  2444|
|24 months |COHORTS        |PHILIPPINES  |<151 cm      |        1|    481|  2444|
|24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |        0|   1252|  8576|
|24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |        1|    195|  8576|
|24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |        0|   1854|  8576|
|24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |        1|    275|  8576|
|24 months |JiVitA-3       |BANGLADESH   |<151 cm      |        0|   4132|  8576|
|24 months |JiVitA-3       |BANGLADESH   |<151 cm      |        1|    868|  8576|
|24 months |Keneba         |GAMBIA       |>=155 cm     |        0|   1078|  1509|
|24 months |Keneba         |GAMBIA       |>=155 cm     |        1|     98|  1509|
|24 months |Keneba         |GAMBIA       |[151-155) cm |        0|    192|  1509|
|24 months |Keneba         |GAMBIA       |[151-155) cm |        1|     19|  1509|
|24 months |Keneba         |GAMBIA       |<151 cm      |        0|    110|  1509|
|24 months |Keneba         |GAMBIA       |<151 cm      |        1|     12|  1509|
|24 months |LCNI-5         |MALAWI       |>=155 cm     |        0|    304|   577|
|24 months |LCNI-5         |MALAWI       |>=155 cm     |        1|     39|   577|
|24 months |LCNI-5         |MALAWI       |[151-155) cm |        0|    104|   577|
|24 months |LCNI-5         |MALAWI       |[151-155) cm |        1|     13|   577|
|24 months |LCNI-5         |MALAWI       |<151 cm      |        0|    100|   577|
|24 months |LCNI-5         |MALAWI       |<151 cm      |        1|     17|   577|
|24 months |MAL-ED         |INDIA        |>=155 cm     |        0|     49|   224|
|24 months |MAL-ED         |INDIA        |>=155 cm     |        1|      8|   224|
|24 months |MAL-ED         |INDIA        |[151-155) cm |        0|     42|   224|
|24 months |MAL-ED         |INDIA        |[151-155) cm |        1|      9|   224|
|24 months |MAL-ED         |INDIA        |<151 cm      |        0|    103|   224|
|24 months |MAL-ED         |INDIA        |<151 cm      |        1|     13|   224|
|24 months |MAL-ED         |BANGLADESH   |>=155 cm     |        0|     29|   209|
|24 months |MAL-ED         |BANGLADESH   |>=155 cm     |        1|      2|   209|
|24 months |MAL-ED         |BANGLADESH   |[151-155) cm |        0|     40|   209|
|24 months |MAL-ED         |BANGLADESH   |[151-155) cm |        1|     10|   209|
|24 months |MAL-ED         |BANGLADESH   |<151 cm      |        0|    114|   209|
|24 months |MAL-ED         |BANGLADESH   |<151 cm      |        1|     14|   209|
|24 months |MAL-ED         |PERU         |>=155 cm     |        0|     49|   197|
|24 months |MAL-ED         |PERU         |>=155 cm     |        1|      2|   197|
|24 months |MAL-ED         |PERU         |[151-155) cm |        0|     39|   197|
|24 months |MAL-ED         |PERU         |[151-155) cm |        1|      2|   197|
|24 months |MAL-ED         |PERU         |<151 cm      |        0|     96|   197|
|24 months |MAL-ED         |PERU         |<151 cm      |        1|      9|   197|
|24 months |MAL-ED         |NEPAL        |>=155 cm     |        0|     40|   228|
|24 months |MAL-ED         |NEPAL        |>=155 cm     |        1|      2|   228|
|24 months |MAL-ED         |NEPAL        |[151-155) cm |        0|     56|   228|
|24 months |MAL-ED         |NEPAL        |[151-155) cm |        1|      0|   228|
|24 months |MAL-ED         |NEPAL        |<151 cm      |        0|    125|   228|
|24 months |MAL-ED         |NEPAL        |<151 cm      |        1|      5|   228|
|24 months |MAL-ED         |BRAZIL       |>=155 cm     |        0|     76|   168|
|24 months |MAL-ED         |BRAZIL       |>=155 cm     |        1|      0|   168|
|24 months |MAL-ED         |BRAZIL       |[151-155) cm |        0|     35|   168|
|24 months |MAL-ED         |BRAZIL       |[151-155) cm |        1|      1|   168|
|24 months |MAL-ED         |BRAZIL       |<151 cm      |        0|     56|   168|
|24 months |MAL-ED         |BRAZIL       |<151 cm      |        1|      0|   168|
|24 months |MAL-ED         |TANZANIA     |>=155 cm     |        0|     90|   211|
|24 months |MAL-ED         |TANZANIA     |>=155 cm     |        1|     37|   211|
|24 months |MAL-ED         |TANZANIA     |[151-155) cm |        0|     22|   211|
|24 months |MAL-ED         |TANZANIA     |[151-155) cm |        1|     14|   211|
|24 months |MAL-ED         |TANZANIA     |<151 cm      |        0|     29|   211|
|24 months |MAL-ED         |TANZANIA     |<151 cm      |        1|     19|   211|
|24 months |MAL-ED         |SOUTH AFRICA |>=155 cm     |        0|    155|   232|
|24 months |MAL-ED         |SOUTH AFRICA |>=155 cm     |        1|     16|   232|
|24 months |MAL-ED         |SOUTH AFRICA |[151-155) cm |        0|     29|   232|
|24 months |MAL-ED         |SOUTH AFRICA |[151-155) cm |        1|      4|   232|
|24 months |MAL-ED         |SOUTH AFRICA |<151 cm      |        0|     23|   232|
|24 months |MAL-ED         |SOUTH AFRICA |<151 cm      |        1|      5|   232|
|24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |        0|     69|   429|
|24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |        1|      6|   429|
|24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |        0|     78|   429|
|24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |        1|     19|   429|
|24 months |NIH-Birth      |BANGLADESH   |<151 cm      |        0|    187|   429|
|24 months |NIH-Birth      |BANGLADESH   |<151 cm      |        1|     70|   429|
|24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |        0|    101|   513|
|24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |        1|      2|   513|
|24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |        0|    127|   513|
|24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |        1|      3|   513|
|24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |        0|    249|   513|
|24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |        1|     31|   513|
|24 months |PROBIT         |BELARUS      |>=155 cm     |        0|   3772|  4000|
|24 months |PROBIT         |BELARUS      |>=155 cm     |        1|     62|  4000|
|24 months |PROBIT         |BELARUS      |[151-155) cm |        0|    120|  4000|
|24 months |PROBIT         |BELARUS      |[151-155) cm |        1|      1|  4000|
|24 months |PROBIT         |BELARUS      |<151 cm      |        0|     44|  4000|
|24 months |PROBIT         |BELARUS      |<151 cm      |        1|      1|  4000|
|24 months |PROVIDE        |BANGLADESH   |>=155 cm     |        0|     97|   562|
|24 months |PROVIDE        |BANGLADESH   |>=155 cm     |        1|      9|   562|
|24 months |PROVIDE        |BANGLADESH   |[151-155) cm |        0|    145|   562|
|24 months |PROVIDE        |BANGLADESH   |[151-155) cm |        1|     10|   562|
|24 months |PROVIDE        |BANGLADESH   |<151 cm      |        0|    271|   562|
|24 months |PROVIDE        |BANGLADESH   |<151 cm      |        1|     30|   562|
|24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |        0|      4|     6|
|24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |        1|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |        0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |        1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |        0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |        1|      0|     6|
|24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |        0|    943|  1371|
|24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |        1|    117|  1371|
|24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |        0|    211|  1371|
|24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |        1|     23|  1371|
|24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |        0|     68|  1371|
|24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |        1|      9|  1371|


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


