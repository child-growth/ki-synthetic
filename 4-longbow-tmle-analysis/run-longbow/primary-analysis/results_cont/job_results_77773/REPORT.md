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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** mhtcm

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* delta_arm
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* syntype
* agecat
* studyid
* country

## Data Summary

|syntype |agecat    |studyid        |country      |mhtcm        | n_cell|     n|
|:-------|:---------|:--------------|:------------|:------------|------:|-----:|
|BC      |Birth     |COHORTS        |INDIA        |>=155 cm     |   4877|  6640|
|BC      |Birth     |COHORTS        |INDIA        |[151-155) cm |    647|  6640|
|BC      |Birth     |COHORTS        |INDIA        |<151 cm      |   1116|  6640|
|BC      |Birth     |COHORTS        |GUATEMALA    |>=155 cm     |     90|   826|
|BC      |Birth     |COHORTS        |GUATEMALA    |[151-155) cm |    161|   826|
|BC      |Birth     |COHORTS        |GUATEMALA    |<151 cm      |    575|   826|
|BC      |Birth     |COHORTS        |PHILIPPINES  |>=155 cm     |    693|  3049|
|BC      |Birth     |COHORTS        |PHILIPPINES  |[151-155) cm |    736|  3049|
|BC      |Birth     |COHORTS        |PHILIPPINES  |<151 cm      |   1620|  3049|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |>=155 cm     |   3753| 22249|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |[151-155) cm |   5393| 22249|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |<151 cm      |  13103| 22249|
|BC      |Birth     |Keneba         |GAMBIA       |>=155 cm     |   1056|  1360|
|BC      |Birth     |Keneba         |GAMBIA       |[151-155) cm |    187|  1360|
|BC      |Birth     |Keneba         |GAMBIA       |<151 cm      |    117|  1360|
|BC      |Birth     |MAL-ED         |INDIA        |>=155 cm     |     13|    47|
|BC      |Birth     |MAL-ED         |INDIA        |[151-155) cm |     14|    47|
|BC      |Birth     |MAL-ED         |INDIA        |<151 cm      |     20|    47|
|BC      |Birth     |MAL-ED         |BANGLADESH   |>=155 cm     |     33|   226|
|BC      |Birth     |MAL-ED         |BANGLADESH   |[151-155) cm |     48|   226|
|BC      |Birth     |MAL-ED         |BANGLADESH   |<151 cm      |    145|   226|
|BC      |Birth     |MAL-ED         |PERU         |>=155 cm     |     56|   229|
|BC      |Birth     |MAL-ED         |PERU         |[151-155) cm |     45|   229|
|BC      |Birth     |MAL-ED         |PERU         |<151 cm      |    128|   229|
|BC      |Birth     |MAL-ED         |NEPAL        |>=155 cm     |      4|    27|
|BC      |Birth     |MAL-ED         |NEPAL        |[151-155) cm |      8|    27|
|BC      |Birth     |MAL-ED         |NEPAL        |<151 cm      |     15|    27|
|BC      |Birth     |MAL-ED         |BRAZIL       |>=155 cm     |     29|    65|
|BC      |Birth     |MAL-ED         |BRAZIL       |[151-155) cm |     13|    65|
|BC      |Birth     |MAL-ED         |BRAZIL       |<151 cm      |     23|    65|
|BC      |Birth     |MAL-ED         |TANZANIA     |>=155 cm     |     73|   122|
|BC      |Birth     |MAL-ED         |TANZANIA     |[151-155) cm |     17|   122|
|BC      |Birth     |MAL-ED         |TANZANIA     |<151 cm      |     32|   122|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |>=155 cm     |     87|   112|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |[151-155) cm |     14|   112|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |<151 cm      |     11|   112|
|BC      |Birth     |NIH-Birth      |BANGLADESH   |>=155 cm     |    110|   608|
|BC      |Birth     |NIH-Birth      |BANGLADESH   |[151-155) cm |    140|   608|
|BC      |Birth     |NIH-Birth      |BANGLADESH   |<151 cm      |    358|   608|
|BC      |Birth     |NIH-Crypto     |BANGLADESH   |>=155 cm     |    145|   731|
|BC      |Birth     |NIH-Crypto     |BANGLADESH   |[151-155) cm |    180|   731|
|BC      |Birth     |NIH-Crypto     |BANGLADESH   |<151 cm      |    406|   731|
|BC      |Birth     |PROBIT         |BELARUS      |>=155 cm     |  13174| 13719|
|BC      |Birth     |PROBIT         |BELARUS      |[151-155) cm |    399| 13719|
|BC      |Birth     |PROBIT         |BELARUS      |<151 cm      |    146| 13719|
|BC      |Birth     |PROVIDE        |BANGLADESH   |>=155 cm     |    103|   516|
|BC      |Birth     |PROVIDE        |BANGLADESH   |[151-155) cm |    142|   516|
|BC      |Birth     |PROVIDE        |BANGLADESH   |<151 cm      |    271|   516|
|BC      |Birth     |SAS-CompFeed   |INDIA        |>=155 cm     |    502|  1230|
|BC      |Birth     |SAS-CompFeed   |INDIA        |[151-155) cm |    250|  1230|
|BC      |Birth     |SAS-CompFeed   |INDIA        |<151 cm      |    478|  1230|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE     |>=155 cm     |   7553|  9512|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE     |[151-155) cm |   1402|  9512|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE     |<151 cm      |    557|  9512|
|BC      |6 months  |COHORTS        |INDIA        |>=155 cm     |   5061|  6860|
|BC      |6 months  |COHORTS        |INDIA        |[151-155) cm |    645|  6860|
|BC      |6 months  |COHORTS        |INDIA        |<151 cm      |   1154|  6860|
|BC      |6 months  |COHORTS        |GUATEMALA    |>=155 cm     |    100|   926|
|BC      |6 months  |COHORTS        |GUATEMALA    |[151-155) cm |    171|   926|
|BC      |6 months  |COHORTS        |GUATEMALA    |<151 cm      |    655|   926|
|BC      |6 months  |COHORTS        |PHILIPPINES  |>=155 cm     |    619|  2707|
|BC      |6 months  |COHORTS        |PHILIPPINES  |[151-155) cm |    657|  2707|
|BC      |6 months  |COHORTS        |PHILIPPINES  |<151 cm      |   1431|  2707|
|BC      |6 months  |Guatemala BSC  |GUATEMALA    |>=155 cm     |     49|   239|
|BC      |6 months  |Guatemala BSC  |GUATEMALA    |[151-155) cm |     43|   239|
|BC      |6 months  |Guatemala BSC  |GUATEMALA    |<151 cm      |    147|   239|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |>=155 cm     |   2900| 16695|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |[151-155) cm |   4155| 16695|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |<151 cm      |   9640| 16695|
|BC      |6 months  |Keneba         |GAMBIA       |>=155 cm     |   1394|  1803|
|BC      |6 months  |Keneba         |GAMBIA       |[151-155) cm |    248|  1803|
|BC      |6 months  |Keneba         |GAMBIA       |<151 cm      |    161|  1803|
|BC      |6 months  |LCNI-5         |MALAWI       |>=155 cm     |    492|   835|
|BC      |6 months  |LCNI-5         |MALAWI       |[151-155) cm |    172|   835|
|BC      |6 months  |LCNI-5         |MALAWI       |<151 cm      |    171|   835|
|BC      |6 months  |MAL-ED         |INDIA        |>=155 cm     |     60|   233|
|BC      |6 months  |MAL-ED         |INDIA        |[151-155) cm |     55|   233|
|BC      |6 months  |MAL-ED         |INDIA        |<151 cm      |    118|   233|
|BC      |6 months  |MAL-ED         |BANGLADESH   |>=155 cm     |     35|   238|
|BC      |6 months  |MAL-ED         |BANGLADESH   |[151-155) cm |     54|   238|
|BC      |6 months  |MAL-ED         |BANGLADESH   |<151 cm      |    149|   238|
|BC      |6 months  |MAL-ED         |PERU         |>=155 cm     |     66|   269|
|BC      |6 months  |MAL-ED         |PERU         |[151-155) cm |     53|   269|
|BC      |6 months  |MAL-ED         |PERU         |<151 cm      |    150|   269|
|BC      |6 months  |MAL-ED         |NEPAL        |>=155 cm     |     44|   236|
|BC      |6 months  |MAL-ED         |NEPAL        |[151-155) cm |     58|   236|
|BC      |6 months  |MAL-ED         |NEPAL        |<151 cm      |    134|   236|
|BC      |6 months  |MAL-ED         |BRAZIL       |>=155 cm     |     97|   208|
|BC      |6 months  |MAL-ED         |BRAZIL       |[151-155) cm |     43|   208|
|BC      |6 months  |MAL-ED         |BRAZIL       |<151 cm      |     68|   208|
|BC      |6 months  |MAL-ED         |TANZANIA     |>=155 cm     |    143|   243|
|BC      |6 months  |MAL-ED         |TANZANIA     |[151-155) cm |     43|   243|
|BC      |6 months  |MAL-ED         |TANZANIA     |<151 cm      |     57|   243|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |>=155 cm     |    180|   246|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |[151-155) cm |     35|   246|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |<151 cm      |     31|   246|
|BC      |6 months  |NIH-Birth      |BANGLADESH   |>=155 cm     |     92|   537|
|BC      |6 months  |NIH-Birth      |BANGLADESH   |[151-155) cm |    129|   537|
|BC      |6 months  |NIH-Birth      |BANGLADESH   |<151 cm      |    316|   537|
|BC      |6 months  |NIH-Crypto     |BANGLADESH   |>=155 cm     |    143|   714|
|BC      |6 months  |NIH-Crypto     |BANGLADESH   |[151-155) cm |    172|   714|
|BC      |6 months  |NIH-Crypto     |BANGLADESH   |<151 cm      |    399|   714|
|BC      |6 months  |PROBIT         |BELARUS      |>=155 cm     |  12555| 13083|
|BC      |6 months  |PROBIT         |BELARUS      |[151-155) cm |    385| 13083|
|BC      |6 months  |PROBIT         |BELARUS      |<151 cm      |    143| 13083|
|BC      |6 months  |PROVIDE        |BANGLADESH   |>=155 cm     |    113|   587|
|BC      |6 months  |PROVIDE        |BANGLADESH   |[151-155) cm |    159|   587|
|BC      |6 months  |PROVIDE        |BANGLADESH   |<151 cm      |    315|   587|
|BC      |6 months  |SAS-CompFeed   |INDIA        |>=155 cm     |    544|  1317|
|BC      |6 months  |SAS-CompFeed   |INDIA        |[151-155) cm |    276|  1317|
|BC      |6 months  |SAS-CompFeed   |INDIA        |<151 cm      |    497|  1317|
|BC      |6 months  |SAS-FoodSuppl  |INDIA        |>=155 cm     |     70|   378|
|BC      |6 months  |SAS-FoodSuppl  |INDIA        |[151-155) cm |    101|   378|
|BC      |6 months  |SAS-FoodSuppl  |INDIA        |<151 cm      |    207|   378|
|BC      |6 months  |TanzaniaChild2 |TANZANIA     |>=155 cm     |   1287|  2010|
|BC      |6 months  |TanzaniaChild2 |TANZANIA     |[151-155) cm |    430|  2010|
|BC      |6 months  |TanzaniaChild2 |TANZANIA     |<151 cm      |    293|  2010|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE     |>=155 cm     |   5730|  7249|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE     |[151-155) cm |   1097|  7249|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE     |<151 cm      |    422|  7249|
|BC      |24 months |COHORTS        |INDIA        |>=155 cm     |   3774|  5337|
|BC      |24 months |COHORTS        |INDIA        |[151-155) cm |    566|  5337|
|BC      |24 months |COHORTS        |INDIA        |<151 cm      |    997|  5337|
|BC      |24 months |COHORTS        |GUATEMALA    |>=155 cm     |    108|   979|
|BC      |24 months |COHORTS        |GUATEMALA    |[151-155) cm |    178|   979|
|BC      |24 months |COHORTS        |GUATEMALA    |<151 cm      |    693|   979|
|BC      |24 months |COHORTS        |PHILIPPINES  |>=155 cm     |    558|  2444|
|BC      |24 months |COHORTS        |PHILIPPINES  |[151-155) cm |    588|  2444|
|BC      |24 months |COHORTS        |PHILIPPINES  |<151 cm      |   1298|  2444|
|BC      |24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |   1447|  8576|
|BC      |24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |   2129|  8576|
|BC      |24 months |JiVitA-3       |BANGLADESH   |<151 cm      |   5000|  8576|
|BC      |24 months |Keneba         |GAMBIA       |>=155 cm     |   1176|  1509|
|BC      |24 months |Keneba         |GAMBIA       |[151-155) cm |    211|  1509|
|BC      |24 months |Keneba         |GAMBIA       |<151 cm      |    122|  1509|
|BC      |24 months |LCNI-5         |MALAWI       |>=155 cm     |    343|   577|
|BC      |24 months |LCNI-5         |MALAWI       |[151-155) cm |    117|   577|
|BC      |24 months |LCNI-5         |MALAWI       |<151 cm      |    117|   577|
|BC      |24 months |MAL-ED         |INDIA        |>=155 cm     |     57|   224|
|BC      |24 months |MAL-ED         |INDIA        |[151-155) cm |     51|   224|
|BC      |24 months |MAL-ED         |INDIA        |<151 cm      |    116|   224|
|BC      |24 months |MAL-ED         |BANGLADESH   |>=155 cm     |     31|   209|
|BC      |24 months |MAL-ED         |BANGLADESH   |[151-155) cm |     50|   209|
|BC      |24 months |MAL-ED         |BANGLADESH   |<151 cm      |    128|   209|
|BC      |24 months |MAL-ED         |PERU         |>=155 cm     |     51|   197|
|BC      |24 months |MAL-ED         |PERU         |[151-155) cm |     41|   197|
|BC      |24 months |MAL-ED         |PERU         |<151 cm      |    105|   197|
|BC      |24 months |MAL-ED         |NEPAL        |>=155 cm     |     42|   228|
|BC      |24 months |MAL-ED         |NEPAL        |[151-155) cm |     56|   228|
|BC      |24 months |MAL-ED         |NEPAL        |<151 cm      |    130|   228|
|BC      |24 months |MAL-ED         |BRAZIL       |>=155 cm     |     76|   168|
|BC      |24 months |MAL-ED         |BRAZIL       |[151-155) cm |     36|   168|
|BC      |24 months |MAL-ED         |BRAZIL       |<151 cm      |     56|   168|
|BC      |24 months |MAL-ED         |TANZANIA     |>=155 cm     |    127|   211|
|BC      |24 months |MAL-ED         |TANZANIA     |[151-155) cm |     36|   211|
|BC      |24 months |MAL-ED         |TANZANIA     |<151 cm      |     48|   211|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |>=155 cm     |    171|   232|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |[151-155) cm |     33|   232|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |<151 cm      |     28|   232|
|BC      |24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |     75|   429|
|BC      |24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |     97|   429|
|BC      |24 months |NIH-Birth      |BANGLADESH   |<151 cm      |    257|   429|
|BC      |24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |    103|   513|
|BC      |24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |    130|   513|
|BC      |24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |    280|   513|
|BC      |24 months |PROBIT         |BELARUS      |>=155 cm     |   3834|  4000|
|BC      |24 months |PROBIT         |BELARUS      |[151-155) cm |    121|  4000|
|BC      |24 months |PROBIT         |BELARUS      |<151 cm      |     45|  4000|
|BC      |24 months |PROVIDE        |BANGLADESH   |>=155 cm     |    106|   562|
|BC      |24 months |PROVIDE        |BANGLADESH   |[151-155) cm |    155|   562|
|BC      |24 months |PROVIDE        |BANGLADESH   |<151 cm      |    301|   562|
|BC      |24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |      5|     6|
|BC      |24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |      0|     6|
|BC      |24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |      1|     6|
|BC      |24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |   1060|  1371|
|BC      |24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |    234|  1371|
|BC      |24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |     77|  1371|
|FULL    |Birth     |COHORTS        |INDIA        |>=155 cm     |   4087|  6640|
|FULL    |Birth     |COHORTS        |INDIA        |[151-155) cm |    998|  6640|
|FULL    |Birth     |COHORTS        |INDIA        |<151 cm      |   1555|  6640|
|FULL    |Birth     |COHORTS        |GUATEMALA    |>=155 cm     |    372|   724|
|FULL    |Birth     |COHORTS        |GUATEMALA    |[151-155) cm |    164|   724|
|FULL    |Birth     |COHORTS        |GUATEMALA    |<151 cm      |    188|   724|
|FULL    |Birth     |COHORTS        |PHILIPPINES  |>=155 cm     |    793|  3042|
|FULL    |Birth     |COHORTS        |PHILIPPINES  |[151-155) cm |    725|  3042|
|FULL    |Birth     |COHORTS        |PHILIPPINES  |<151 cm      |   1524|  3042|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |>=155 cm     |   3796| 22330|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |[151-155) cm |   5232| 22330|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |<151 cm      |  13302| 22330|
|FULL    |Birth     |Keneba         |GAMBIA       |>=155 cm     |   1040|  1349|
|FULL    |Birth     |Keneba         |GAMBIA       |[151-155) cm |    187|  1349|
|FULL    |Birth     |Keneba         |GAMBIA       |<151 cm      |    122|  1349|
|FULL    |Birth     |MAL-ED         |INDIA        |>=155 cm     |     12|    47|
|FULL    |Birth     |MAL-ED         |INDIA        |[151-155) cm |     14|    47|
|FULL    |Birth     |MAL-ED         |INDIA        |<151 cm      |     21|    47|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |>=155 cm     |     30|   231|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |[151-155) cm |     47|   231|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |<151 cm      |    154|   231|
|FULL    |Birth     |MAL-ED         |PERU         |>=155 cm     |     49|   231|
|FULL    |Birth     |MAL-ED         |PERU         |[151-155) cm |     52|   231|
|FULL    |Birth     |MAL-ED         |PERU         |<151 cm      |    130|   231|
|FULL    |Birth     |MAL-ED         |NEPAL        |>=155 cm     |      3|    27|
|FULL    |Birth     |MAL-ED         |NEPAL        |[151-155) cm |     12|    27|
|FULL    |Birth     |MAL-ED         |NEPAL        |<151 cm      |     12|    27|
|FULL    |Birth     |MAL-ED         |BRAZIL       |>=155 cm     |     36|    64|
|FULL    |Birth     |MAL-ED         |BRAZIL       |[151-155) cm |     14|    64|
|FULL    |Birth     |MAL-ED         |BRAZIL       |<151 cm      |     14|    64|
|FULL    |Birth     |MAL-ED         |TANZANIA     |>=155 cm     |     69|   124|
|FULL    |Birth     |MAL-ED         |TANZANIA     |[151-155) cm |     21|   124|
|FULL    |Birth     |MAL-ED         |TANZANIA     |<151 cm      |     34|   124|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |>=155 cm     |     86|   110|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |[151-155) cm |     13|   110|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |<151 cm      |     11|   110|
|FULL    |Birth     |NIH-Birth      |BANGLADESH   |>=155 cm     |    108|   608|
|FULL    |Birth     |NIH-Birth      |BANGLADESH   |[151-155) cm |    136|   608|
|FULL    |Birth     |NIH-Birth      |BANGLADESH   |<151 cm      |    364|   608|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH   |>=155 cm     |    133|   730|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH   |[151-155) cm |    201|   730|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH   |<151 cm      |    396|   730|
|FULL    |Birth     |PROBIT         |BELARUS      |>=155 cm     |  12564| 13014|
|FULL    |Birth     |PROBIT         |BELARUS      |[151-155) cm |    347| 13014|
|FULL    |Birth     |PROBIT         |BELARUS      |<151 cm      |    103| 13014|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |>=155 cm     |     88|   514|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |[151-155) cm |    117|   514|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |<151 cm      |    309|   514|
|FULL    |Birth     |SAS-CompFeed   |INDIA        |>=155 cm     |    488|  1222|
|FULL    |Birth     |SAS-CompFeed   |INDIA        |[151-155) cm |    299|  1222|
|FULL    |Birth     |SAS-CompFeed   |INDIA        |<151 cm      |    435|  1222|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE     |>=155 cm     |   7740|  9669|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE     |[151-155) cm |   1383|  9669|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE     |<151 cm      |    546|  9669|
|FULL    |6 months  |COHORTS        |INDIA        |>=155 cm     |   4241|  6860|
|FULL    |6 months  |COHORTS        |INDIA        |[151-155) cm |   1017|  6860|
|FULL    |6 months  |COHORTS        |INDIA        |<151 cm      |   1602|  6860|
|FULL    |6 months  |COHORTS        |GUATEMALA    |>=155 cm     |    455|   821|
|FULL    |6 months  |COHORTS        |GUATEMALA    |[151-155) cm |    179|   821|
|FULL    |6 months  |COHORTS        |GUATEMALA    |<151 cm      |    187|   821|
|FULL    |6 months  |COHORTS        |PHILIPPINES  |>=155 cm     |    706|  2702|
|FULL    |6 months  |COHORTS        |PHILIPPINES  |[151-155) cm |    641|  2702|
|FULL    |6 months  |COHORTS        |PHILIPPINES  |<151 cm      |   1355|  2702|
|FULL    |6 months  |Guatemala BSC  |GUATEMALA    |>=155 cm     |     41|   231|
|FULL    |6 months  |Guatemala BSC  |GUATEMALA    |[151-155) cm |     41|   231|
|FULL    |6 months  |Guatemala BSC  |GUATEMALA    |<151 cm      |    149|   231|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |>=155 cm     |   2946| 16733|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |[151-155) cm |   4061| 16733|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |<151 cm      |   9726| 16733|
|FULL    |6 months  |Keneba         |GAMBIA       |>=155 cm     |   1415|  1816|
|FULL    |6 months  |Keneba         |GAMBIA       |[151-155) cm |    251|  1816|
|FULL    |6 months  |Keneba         |GAMBIA       |<151 cm      |    150|  1816|
|FULL    |6 months  |LCNI-5         |MALAWI       |>=155 cm     |    537|   834|
|FULL    |6 months  |LCNI-5         |MALAWI       |[151-155) cm |    153|   834|
|FULL    |6 months  |LCNI-5         |MALAWI       |<151 cm      |    144|   834|
|FULL    |6 months  |MAL-ED         |INDIA        |>=155 cm     |     65|   236|
|FULL    |6 months  |MAL-ED         |INDIA        |[151-155) cm |     69|   236|
|FULL    |6 months  |MAL-ED         |INDIA        |<151 cm      |    102|   236|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |>=155 cm     |     35|   239|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |[151-155) cm |     44|   239|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |<151 cm      |    160|   239|
|FULL    |6 months  |MAL-ED         |PERU         |>=155 cm     |     51|   270|
|FULL    |6 months  |MAL-ED         |PERU         |[151-155) cm |     65|   270|
|FULL    |6 months  |MAL-ED         |PERU         |<151 cm      |    154|   270|
|FULL    |6 months  |MAL-ED         |NEPAL        |>=155 cm     |     48|   236|
|FULL    |6 months  |MAL-ED         |NEPAL        |[151-155) cm |     61|   236|
|FULL    |6 months  |MAL-ED         |NEPAL        |<151 cm      |    127|   236|
|FULL    |6 months  |MAL-ED         |BRAZIL       |>=155 cm     |    117|   204|
|FULL    |6 months  |MAL-ED         |BRAZIL       |[151-155) cm |     36|   204|
|FULL    |6 months  |MAL-ED         |BRAZIL       |<151 cm      |     51|   204|
|FULL    |6 months  |MAL-ED         |TANZANIA     |>=155 cm     |    144|   246|
|FULL    |6 months  |MAL-ED         |TANZANIA     |[151-155) cm |     40|   246|
|FULL    |6 months  |MAL-ED         |TANZANIA     |<151 cm      |     62|   246|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |>=155 cm     |    179|   235|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |[151-155) cm |     24|   235|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |<151 cm      |     32|   235|
|FULL    |6 months  |NIH-Birth      |BANGLADESH   |>=155 cm     |     91|   537|
|FULL    |6 months  |NIH-Birth      |BANGLADESH   |[151-155) cm |    123|   537|
|FULL    |6 months  |NIH-Birth      |BANGLADESH   |<151 cm      |    323|   537|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH   |>=155 cm     |    131|   714|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH   |[151-155) cm |    196|   714|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH   |<151 cm      |    387|   714|
|FULL    |6 months  |PROBIT         |BELARUS      |>=155 cm     |  12498| 12991|
|FULL    |6 months  |PROBIT         |BELARUS      |[151-155) cm |    383| 12991|
|FULL    |6 months  |PROBIT         |BELARUS      |<151 cm      |    110| 12991|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |>=155 cm     |    103|   578|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |[151-155) cm |    131|   578|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |<151 cm      |    344|   578|
|FULL    |6 months  |SAS-CompFeed   |INDIA        |>=155 cm     |    523|  1306|
|FULL    |6 months  |SAS-CompFeed   |INDIA        |[151-155) cm |    322|  1306|
|FULL    |6 months  |SAS-CompFeed   |INDIA        |<151 cm      |    461|  1306|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA        |>=155 cm     |     85|   379|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA        |[151-155) cm |     89|   379|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA        |<151 cm      |    205|   379|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA     |>=155 cm     |   1334|  1999|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA     |[151-155) cm |    469|  1999|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA     |<151 cm      |    196|  1999|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE     |>=155 cm     |   5646|  6957|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE     |[151-155) cm |    937|  6957|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE     |<151 cm      |    374|  6957|
|FULL    |24 months |COHORTS        |INDIA        |>=155 cm     |   3159|  5337|
|FULL    |24 months |COHORTS        |INDIA        |[151-155) cm |    850|  5337|
|FULL    |24 months |COHORTS        |INDIA        |<151 cm      |   1328|  5337|
|FULL    |24 months |COHORTS        |GUATEMALA    |>=155 cm     |    511|   903|
|FULL    |24 months |COHORTS        |GUATEMALA    |[151-155) cm |    174|   903|
|FULL    |24 months |COHORTS        |GUATEMALA    |<151 cm      |    218|   903|
|FULL    |24 months |COHORTS        |PHILIPPINES  |>=155 cm     |    634|  2440|
|FULL    |24 months |COHORTS        |PHILIPPINES  |[151-155) cm |    569|  2440|
|FULL    |24 months |COHORTS        |PHILIPPINES  |<151 cm      |   1237|  2440|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |   1523|  8584|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |   2070|  8584|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |<151 cm      |   4991|  8584|
|FULL    |24 months |Keneba         |GAMBIA       |>=155 cm     |   1185|  1521|
|FULL    |24 months |Keneba         |GAMBIA       |[151-155) cm |    195|  1521|
|FULL    |24 months |Keneba         |GAMBIA       |<151 cm      |    141|  1521|
|FULL    |24 months |LCNI-5         |MALAWI       |>=155 cm     |    364|   576|
|FULL    |24 months |LCNI-5         |MALAWI       |[151-155) cm |    115|   576|
|FULL    |24 months |LCNI-5         |MALAWI       |<151 cm      |     97|   576|
|FULL    |24 months |MAL-ED         |INDIA        |>=155 cm     |     62|   227|
|FULL    |24 months |MAL-ED         |INDIA        |[151-155) cm |     66|   227|
|FULL    |24 months |MAL-ED         |INDIA        |<151 cm      |     99|   227|
|FULL    |24 months |MAL-ED         |BANGLADESH   |>=155 cm     |     29|   211|
|FULL    |24 months |MAL-ED         |BANGLADESH   |[151-155) cm |     39|   211|
|FULL    |24 months |MAL-ED         |BANGLADESH   |<151 cm      |    143|   211|
|FULL    |24 months |MAL-ED         |PERU         |>=155 cm     |     39|   198|
|FULL    |24 months |MAL-ED         |PERU         |[151-155) cm |     45|   198|
|FULL    |24 months |MAL-ED         |PERU         |<151 cm      |    114|   198|
|FULL    |24 months |MAL-ED         |NEPAL        |>=155 cm     |     46|   228|
|FULL    |24 months |MAL-ED         |NEPAL        |[151-155) cm |     59|   228|
|FULL    |24 months |MAL-ED         |NEPAL        |<151 cm      |    123|   228|
|FULL    |24 months |MAL-ED         |BRAZIL       |>=155 cm     |     94|   165|
|FULL    |24 months |MAL-ED         |BRAZIL       |[151-155) cm |     28|   165|
|FULL    |24 months |MAL-ED         |BRAZIL       |<151 cm      |     43|   165|
|FULL    |24 months |MAL-ED         |TANZANIA     |>=155 cm     |    124|   214|
|FULL    |24 months |MAL-ED         |TANZANIA     |[151-155) cm |     34|   214|
|FULL    |24 months |MAL-ED         |TANZANIA     |<151 cm      |     56|   214|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |>=155 cm     |    166|   221|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |[151-155) cm |     24|   221|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |<151 cm      |     31|   221|
|FULL    |24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |     73|   429|
|FULL    |24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |     95|   429|
|FULL    |24 months |NIH-Birth      |BANGLADESH   |<151 cm      |    261|   429|
|FULL    |24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |    102|   513|
|FULL    |24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |    139|   513|
|FULL    |24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |    272|   513|
|FULL    |24 months |PROBIT         |BELARUS      |>=155 cm     |   3656|  3798|
|FULL    |24 months |PROBIT         |BELARUS      |[151-155) cm |    115|  3798|
|FULL    |24 months |PROBIT         |BELARUS      |<151 cm      |     27|  3798|
|FULL    |24 months |PROVIDE        |BANGLADESH   |>=155 cm     |    106|   551|
|FULL    |24 months |PROVIDE        |BANGLADESH   |[151-155) cm |    127|   551|
|FULL    |24 months |PROVIDE        |BANGLADESH   |<151 cm      |    318|   551|
|FULL    |24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |      6|     6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |      0|     6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |      0|     6|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |   1040|  1304|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |    180|  1304|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |     84|  1304|
|QI      |Birth     |COHORTS        |INDIA        |>=155 cm     |    638|  2004|
|QI      |Birth     |COHORTS        |INDIA        |[151-155) cm |    511|  2004|
|QI      |Birth     |COHORTS        |INDIA        |<151 cm      |    855|  2004|
|QI      |Birth     |COHORTS        |GUATEMALA    |>=155 cm     |    104|   555|
|QI      |Birth     |COHORTS        |GUATEMALA    |[151-155) cm |    123|   555|
|QI      |Birth     |COHORTS        |GUATEMALA    |<151 cm      |    328|   555|
|QI      |Birth     |COHORTS        |PHILIPPINES  |>=155 cm     |    767|  3074|
|QI      |Birth     |COHORTS        |PHILIPPINES  |[151-155) cm |    795|  3074|
|QI      |Birth     |COHORTS        |PHILIPPINES  |<151 cm      |   1512|  3074|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |>=155 cm     |   1828| 11244|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |[151-155) cm |   2607| 11244|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |<151 cm      |   6809| 11244|
|QI      |Birth     |Keneba         |GAMBIA       |>=155 cm     |   1559|  2040|
|QI      |Birth     |Keneba         |GAMBIA       |[151-155) cm |    303|  2040|
|QI      |Birth     |Keneba         |GAMBIA       |<151 cm      |    178|  2040|
|QI      |Birth     |MAL-ED         |INDIA        |>=155 cm     |     82|   244|
|QI      |Birth     |MAL-ED         |INDIA        |[151-155) cm |     61|   244|
|QI      |Birth     |MAL-ED         |INDIA        |<151 cm      |    101|   244|
|QI      |Birth     |MAL-ED         |BANGLADESH   |>=155 cm     |     32|   259|
|QI      |Birth     |MAL-ED         |BANGLADESH   |[151-155) cm |     69|   259|
|QI      |Birth     |MAL-ED         |BANGLADESH   |<151 cm      |    158|   259|
|QI      |Birth     |MAL-ED         |PERU         |>=155 cm     |     66|   291|
|QI      |Birth     |MAL-ED         |PERU         |[151-155) cm |     63|   291|
|QI      |Birth     |MAL-ED         |PERU         |<151 cm      |    162|   291|
|QI      |Birth     |MAL-ED         |NEPAL        |>=155 cm     |     51|   234|
|QI      |Birth     |MAL-ED         |NEPAL        |[151-155) cm |     62|   234|
|QI      |Birth     |MAL-ED         |NEPAL        |<151 cm      |    121|   234|
|QI      |Birth     |MAL-ED         |BRAZIL       |>=155 cm     |    111|   228|
|QI      |Birth     |MAL-ED         |BRAZIL       |[151-155) cm |     40|   228|
|QI      |Birth     |MAL-ED         |BRAZIL       |<151 cm      |     77|   228|
|QI      |Birth     |MAL-ED         |TANZANIA     |>=155 cm     |    128|   208|
|QI      |Birth     |MAL-ED         |TANZANIA     |[151-155) cm |     43|   208|
|QI      |Birth     |MAL-ED         |TANZANIA     |<151 cm      |     37|   208|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |>=155 cm     |    203|   277|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |[151-155) cm |     36|   277|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |<151 cm      |     38|   277|
|QI      |Birth     |NIH-Birth      |BANGLADESH   |>=155 cm     |    115|   612|
|QI      |Birth     |NIH-Birth      |BANGLADESH   |[151-155) cm |    130|   612|
|QI      |Birth     |NIH-Birth      |BANGLADESH   |<151 cm      |    367|   612|
|QI      |Birth     |NIH-Crypto     |BANGLADESH   |>=155 cm     |    112|   749|
|QI      |Birth     |NIH-Crypto     |BANGLADESH   |[151-155) cm |    181|   749|
|QI      |Birth     |NIH-Crypto     |BANGLADESH   |<151 cm      |    456|   749|
|QI      |Birth     |PROBIT         |BELARUS      |>=155 cm     |   6353|  6643|
|QI      |Birth     |PROBIT         |BELARUS      |[151-155) cm |    221|  6643|
|QI      |Birth     |PROBIT         |BELARUS      |<151 cm      |     69|  6643|
|QI      |Birth     |PROVIDE        |BANGLADESH   |>=155 cm     |    112|   515|
|QI      |Birth     |PROVIDE        |BANGLADESH   |[151-155) cm |    115|   515|
|QI      |Birth     |PROVIDE        |BANGLADESH   |<151 cm      |    288|   515|
|QI      |Birth     |SAS-CompFeed   |INDIA        |>=155 cm     |    157|   386|
|QI      |Birth     |SAS-CompFeed   |INDIA        |[151-155) cm |     96|   386|
|QI      |Birth     |SAS-CompFeed   |INDIA        |<151 cm      |    133|   386|
|QI      |Birth     |TanzaniaChild2 |TANZANIA     |>=155 cm     |   1539|  2333|
|QI      |Birth     |TanzaniaChild2 |TANZANIA     |[151-155) cm |    459|  2333|
|QI      |Birth     |TanzaniaChild2 |TANZANIA     |<151 cm      |    335|  2333|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE     |>=155 cm     |   7193|  9033|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE     |[151-155) cm |   1343|  9033|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE     |<151 cm      |    497|  9033|
|QI      |6 months  |COHORTS        |INDIA        |>=155 cm     |    410|  1330|
|QI      |6 months  |COHORTS        |INDIA        |[151-155) cm |    345|  1330|
|QI      |6 months  |COHORTS        |INDIA        |<151 cm      |    575|  1330|
|QI      |6 months  |COHORTS        |GUATEMALA    |>=155 cm     |     66|   394|
|QI      |6 months  |COHORTS        |GUATEMALA    |[151-155) cm |     96|   394|
|QI      |6 months  |COHORTS        |GUATEMALA    |<151 cm      |    232|   394|
|QI      |6 months  |COHORTS        |PHILIPPINES  |>=155 cm     |    602|  2412|
|QI      |6 months  |COHORTS        |PHILIPPINES  |[151-155) cm |    640|  2412|
|QI      |6 months  |COHORTS        |PHILIPPINES  |<151 cm      |   1170|  2412|
|QI      |6 months  |Guatemala BSC  |GUATEMALA    |>=155 cm     |     33|   207|
|QI      |6 months  |Guatemala BSC  |GUATEMALA    |[151-155) cm |     53|   207|
|QI      |6 months  |Guatemala BSC  |GUATEMALA    |<151 cm      |    121|   207|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |>=155 cm     |    805|  4828|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |[151-155) cm |   1165|  4828|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |<151 cm      |   2858|  4828|
|QI      |6 months  |Keneba         |GAMBIA       |>=155 cm     |   1514|  1978|
|QI      |6 months  |Keneba         |GAMBIA       |[151-155) cm |    292|  1978|
|QI      |6 months  |Keneba         |GAMBIA       |<151 cm      |    172|  1978|
|QI      |6 months  |LCNI-5         |MALAWI       |>=155 cm     |    507|   839|
|QI      |6 months  |LCNI-5         |MALAWI       |[151-155) cm |    181|   839|
|QI      |6 months  |LCNI-5         |MALAWI       |<151 cm      |    151|   839|
|QI      |6 months  |MAL-ED         |INDIA        |>=155 cm     |     78|   236|
|QI      |6 months  |MAL-ED         |INDIA        |[151-155) cm |     57|   236|
|QI      |6 months  |MAL-ED         |INDIA        |<151 cm      |    101|   236|
|QI      |6 months  |MAL-ED         |BANGLADESH   |>=155 cm     |     32|   248|
|QI      |6 months  |MAL-ED         |BANGLADESH   |[151-155) cm |     67|   248|
|QI      |6 months  |MAL-ED         |BANGLADESH   |<151 cm      |    149|   248|
|QI      |6 months  |MAL-ED         |PERU         |>=155 cm     |     63|   261|
|QI      |6 months  |MAL-ED         |PERU         |[151-155) cm |     59|   261|
|QI      |6 months  |MAL-ED         |PERU         |<151 cm      |    139|   261|
|QI      |6 months  |MAL-ED         |NEPAL        |>=155 cm     |     46|   220|
|QI      |6 months  |MAL-ED         |NEPAL        |[151-155) cm |     59|   220|
|QI      |6 months  |MAL-ED         |NEPAL        |<151 cm      |    115|   220|
|QI      |6 months  |MAL-ED         |BRAZIL       |>=155 cm     |    102|   211|
|QI      |6 months  |MAL-ED         |BRAZIL       |[151-155) cm |     36|   211|
|QI      |6 months  |MAL-ED         |BRAZIL       |<151 cm      |     73|   211|
|QI      |6 months  |MAL-ED         |TANZANIA     |>=155 cm     |    150|   243|
|QI      |6 months  |MAL-ED         |TANZANIA     |[151-155) cm |     47|   243|
|QI      |6 months  |MAL-ED         |TANZANIA     |<151 cm      |     46|   243|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |>=155 cm     |    190|   258|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |[151-155) cm |     34|   258|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |<151 cm      |     34|   258|
|QI      |6 months  |NIH-Birth      |BANGLADESH   |>=155 cm     |     72|   391|
|QI      |6 months  |NIH-Birth      |BANGLADESH   |[151-155) cm |     85|   391|
|QI      |6 months  |NIH-Birth      |BANGLADESH   |<151 cm      |    234|   391|
|QI      |6 months  |NIH-Crypto     |BANGLADESH   |>=155 cm     |     76|   533|
|QI      |6 months  |NIH-Crypto     |BANGLADESH   |[151-155) cm |    132|   533|
|QI      |6 months  |NIH-Crypto     |BANGLADESH   |<151 cm      |    325|   533|
|QI      |6 months  |PROBIT         |BELARUS      |>=155 cm     |   4082|  4231|
|QI      |6 months  |PROBIT         |BELARUS      |[151-155) cm |    114|  4231|
|QI      |6 months  |PROBIT         |BELARUS      |<151 cm      |     35|  4231|
|QI      |6 months  |PROVIDE        |BANGLADESH   |>=155 cm     |    126|   592|
|QI      |6 months  |PROVIDE        |BANGLADESH   |[151-155) cm |    131|   592|
|QI      |6 months  |PROVIDE        |BANGLADESH   |<151 cm      |    335|   592|
|QI      |6 months  |SAS-CompFeed   |INDIA        |>=155 cm     |    108|   269|
|QI      |6 months  |SAS-CompFeed   |INDIA        |[151-155) cm |     67|   269|
|QI      |6 months  |SAS-CompFeed   |INDIA        |<151 cm      |     94|   269|
|QI      |6 months  |SAS-FoodSuppl  |INDIA        |>=155 cm     |     51|   253|
|QI      |6 months  |SAS-FoodSuppl  |INDIA        |[151-155) cm |     61|   253|
|QI      |6 months  |SAS-FoodSuppl  |INDIA        |<151 cm      |    141|   253|
|QI      |6 months  |TanzaniaChild2 |TANZANIA     |>=155 cm     |   1249|  1907|
|QI      |6 months  |TanzaniaChild2 |TANZANIA     |[151-155) cm |    378|  1907|
|QI      |6 months  |TanzaniaChild2 |TANZANIA     |<151 cm      |    280|  1907|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE     |>=155 cm     |   3944|  4982|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE     |[151-155) cm |    750|  4982|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE     |<151 cm      |    288|  4982|
|QI      |24 months |COHORTS        |GUATEMALA    |>=155 cm     |      5|    28|
|QI      |24 months |COHORTS        |GUATEMALA    |[151-155) cm |      7|    28|
|QI      |24 months |COHORTS        |GUATEMALA    |<151 cm      |     16|    28|
|QI      |24 months |COHORTS        |PHILIPPINES  |>=155 cm     |     74|   295|
|QI      |24 months |COHORTS        |PHILIPPINES  |[151-155) cm |     76|   295|
|QI      |24 months |COHORTS        |PHILIPPINES  |<151 cm      |    145|   295|
|QI      |24 months |Guatemala BSC  |GUATEMALA    |>=155 cm     |      0|     3|
|QI      |24 months |Guatemala BSC  |GUATEMALA    |[151-155) cm |      0|     3|
|QI      |24 months |Guatemala BSC  |GUATEMALA    |<151 cm      |      3|     3|
|QI      |24 months |iLiNS-Zinc     |BURKINA FASO |>=155 cm     |     17|    19|
|QI      |24 months |iLiNS-Zinc     |BURKINA FASO |[151-155) cm |      1|    19|
|QI      |24 months |iLiNS-Zinc     |BURKINA FASO |<151 cm      |      1|    19|
|QI      |24 months |JiVitA-3       |BANGLADESH   |>=155 cm     |      1|     6|
|QI      |24 months |JiVitA-3       |BANGLADESH   |[151-155) cm |      0|     6|
|QI      |24 months |JiVitA-3       |BANGLADESH   |<151 cm      |      5|     6|
|QI      |24 months |Keneba         |GAMBIA       |>=155 cm     |    283|   377|
|QI      |24 months |Keneba         |GAMBIA       |[151-155) cm |     62|   377|
|QI      |24 months |Keneba         |GAMBIA       |<151 cm      |     32|   377|
|QI      |24 months |LCNI-5         |MALAWI       |>=155 cm     |     48|    83|
|QI      |24 months |LCNI-5         |MALAWI       |[151-155) cm |     18|    83|
|QI      |24 months |LCNI-5         |MALAWI       |<151 cm      |     17|    83|
|QI      |24 months |MAL-ED         |INDIA        |>=155 cm     |     36|   102|
|QI      |24 months |MAL-ED         |INDIA        |[151-155) cm |     20|   102|
|QI      |24 months |MAL-ED         |INDIA        |<151 cm      |     46|   102|
|QI      |24 months |MAL-ED         |BANGLADESH   |>=155 cm     |     12|    97|
|QI      |24 months |MAL-ED         |BANGLADESH   |[151-155) cm |     25|    97|
|QI      |24 months |MAL-ED         |BANGLADESH   |<151 cm      |     60|    97|
|QI      |24 months |MAL-ED         |PERU         |>=155 cm     |     19|    66|
|QI      |24 months |MAL-ED         |PERU         |[151-155) cm |     10|    66|
|QI      |24 months |MAL-ED         |PERU         |<151 cm      |     37|    66|
|QI      |24 months |MAL-ED         |NEPAL        |>=155 cm     |     17|    99|
|QI      |24 months |MAL-ED         |NEPAL        |[151-155) cm |     28|    99|
|QI      |24 months |MAL-ED         |NEPAL        |<151 cm      |     54|    99|
|QI      |24 months |MAL-ED         |BRAZIL       |>=155 cm     |     36|    71|
|QI      |24 months |MAL-ED         |BRAZIL       |[151-155) cm |     12|    71|
|QI      |24 months |MAL-ED         |BRAZIL       |<151 cm      |     23|    71|
|QI      |24 months |MAL-ED         |TANZANIA     |>=155 cm     |     45|    80|
|QI      |24 months |MAL-ED         |TANZANIA     |[151-155) cm |     19|    80|
|QI      |24 months |MAL-ED         |TANZANIA     |<151 cm      |     16|    80|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |>=155 cm     |     66|    89|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |[151-155) cm |     13|    89|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |<151 cm      |     10|    89|
|QI      |24 months |NIH-Birth      |BANGLADESH   |>=155 cm     |      5|    32|
|QI      |24 months |NIH-Birth      |BANGLADESH   |[151-155) cm |      8|    32|
|QI      |24 months |NIH-Birth      |BANGLADESH   |<151 cm      |     19|    32|
|QI      |24 months |NIH-Crypto     |BANGLADESH   |>=155 cm     |      5|    47|
|QI      |24 months |NIH-Crypto     |BANGLADESH   |[151-155) cm |      8|    47|
|QI      |24 months |NIH-Crypto     |BANGLADESH   |<151 cm      |     34|    47|
|QI      |24 months |PROBIT         |BELARUS      |>=155 cm     |    133|   138|
|QI      |24 months |PROBIT         |BELARUS      |[151-155) cm |      3|   138|
|QI      |24 months |PROBIT         |BELARUS      |<151 cm      |      2|   138|
|QI      |24 months |PROVIDE        |BANGLADESH   |>=155 cm     |     12|    53|
|QI      |24 months |PROVIDE        |BANGLADESH   |[151-155) cm |      8|    53|
|QI      |24 months |PROVIDE        |BANGLADESH   |<151 cm      |     33|    53|
|QI      |24 months |SAS-CompFeed   |INDIA        |>=155 cm     |      1|     3|
|QI      |24 months |SAS-CompFeed   |INDIA        |[151-155) cm |      1|     3|
|QI      |24 months |SAS-CompFeed   |INDIA        |<151 cm      |      1|     3|
|QI      |24 months |SAS-FoodSuppl  |INDIA        |>=155 cm     |      1|     6|
|QI      |24 months |SAS-FoodSuppl  |INDIA        |[151-155) cm |      0|     6|
|QI      |24 months |SAS-FoodSuppl  |INDIA        |<151 cm      |      5|     6|
|QI      |24 months |TanzaniaChild2 |TANZANIA     |>=155 cm     |     40|    54|
|QI      |24 months |TanzaniaChild2 |TANZANIA     |[151-155) cm |     13|    54|
|QI      |24 months |TanzaniaChild2 |TANZANIA     |<151 cm      |      1|    54|
|QI      |24 months |ZVITAMBO       |ZIMBABWE     |>=155 cm     |    102|   134|
|QI      |24 months |ZVITAMBO       |ZIMBABWE     |[151-155) cm |     14|   134|
|QI      |24 months |ZVITAMBO       |ZIMBABWE     |<151 cm      |     18|   134|


The following strata were considered:

* syntype: BC, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: 24 months, studyid: COHORTS, country: INDIA
* syntype: BC, agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* syntype: BC, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: Keneba, country: GAMBIA
* syntype: BC, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: BC, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: BC, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: 6 months, studyid: COHORTS, country: INDIA
* syntype: BC, agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* syntype: BC, agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* syntype: BC, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: Keneba, country: GAMBIA
* syntype: BC, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: BC, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: BC, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: BC, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: BC, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: Birth, studyid: COHORTS, country: INDIA
* syntype: BC, agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* syntype: BC, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: Keneba, country: GAMBIA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: BC, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: 24 months, studyid: COHORTS, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* syntype: FULL, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: Keneba, country: GAMBIA
* syntype: FULL, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: 6 months, studyid: COHORTS, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* syntype: FULL, agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* syntype: FULL, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: Keneba, country: GAMBIA
* syntype: FULL, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: Birth, studyid: COHORTS, country: INDIA
* syntype: FULL, agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* syntype: FULL, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: Keneba, country: GAMBIA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: FULL, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: 24 months, studyid: Guatemala BSC, country: GUATEMALA
* syntype: QI, agecat: 24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* syntype: QI, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: Keneba, country: GAMBIA
* syntype: QI, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 24 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: QI, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: INDIA
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* syntype: QI, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: Keneba, country: GAMBIA
* syntype: QI, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: QI, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: Birth, studyid: COHORTS, country: INDIA
* syntype: QI, agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: Keneba, country: GAMBIA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: Birth, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* syntype: BC, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: Guatemala BSC, country: GUATEMALA
* syntype: QI, agecat: 24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* syntype: QI, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: 24 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 24 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: QI, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA





```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


