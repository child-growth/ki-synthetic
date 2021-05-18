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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** birthlen

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |birthlen   | wast_rec90d| n_cell|    n|
|:-----------|:--------------|:------------|:----------|-----------:|------:|----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |>=50 cm    |           0|      3|   88|
|0-24 months |CMC-V-BCS-2002 |INDIA        |>=50 cm    |           1|      3|   88|
|0-24 months |CMC-V-BCS-2002 |INDIA        |<48 cm     |           0|     19|   88|
|0-24 months |CMC-V-BCS-2002 |INDIA        |<48 cm     |           1|     27|   88|
|0-24 months |CMC-V-BCS-2002 |INDIA        |[48-50) cm |           0|      9|   88|
|0-24 months |CMC-V-BCS-2002 |INDIA        |[48-50) cm |           1|     27|   88|
|0-24 months |CMIN           |BANGLADESH   |>=50 cm    |           0|      1|   12|
|0-24 months |CMIN           |BANGLADESH   |>=50 cm    |           1|      0|   12|
|0-24 months |CMIN           |BANGLADESH   |<48 cm     |           0|      4|   12|
|0-24 months |CMIN           |BANGLADESH   |<48 cm     |           1|      4|   12|
|0-24 months |CMIN           |BANGLADESH   |[48-50) cm |           0|      0|   12|
|0-24 months |CMIN           |BANGLADESH   |[48-50) cm |           1|      3|   12|
|0-24 months |COHORTS        |INDIA        |>=50 cm    |           0|    338| 2497|
|0-24 months |COHORTS        |INDIA        |>=50 cm    |           1|    186| 2497|
|0-24 months |COHORTS        |INDIA        |<48 cm     |           0|    862| 2497|
|0-24 months |COHORTS        |INDIA        |<48 cm     |           1|    211| 2497|
|0-24 months |COHORTS        |INDIA        |[48-50) cm |           0|    653| 2497|
|0-24 months |COHORTS        |INDIA        |[48-50) cm |           1|    247| 2497|
|0-24 months |COHORTS        |GUATEMALA    |>=50 cm    |           0|     59|  295|
|0-24 months |COHORTS        |GUATEMALA    |>=50 cm    |           1|    118|  295|
|0-24 months |COHORTS        |GUATEMALA    |<48 cm     |           0|     33|  295|
|0-24 months |COHORTS        |GUATEMALA    |<48 cm     |           1|     11|  295|
|0-24 months |COHORTS        |GUATEMALA    |[48-50) cm |           0|     35|  295|
|0-24 months |COHORTS        |GUATEMALA    |[48-50) cm |           1|     39|  295|
|0-24 months |COHORTS        |PHILIPPINES  |>=50 cm    |           0|    190| 1686|
|0-24 months |COHORTS        |PHILIPPINES  |>=50 cm    |           1|    423| 1686|
|0-24 months |COHORTS        |PHILIPPINES  |<48 cm     |           0|    218| 1686|
|0-24 months |COHORTS        |PHILIPPINES  |<48 cm     |           1|    259| 1686|
|0-24 months |COHORTS        |PHILIPPINES  |[48-50) cm |           0|    255| 1686|
|0-24 months |COHORTS        |PHILIPPINES  |[48-50) cm |           1|    341| 1686|
|0-24 months |EE             |PAKISTAN     |>=50 cm    |           0|      7|  220|
|0-24 months |EE             |PAKISTAN     |>=50 cm    |           1|     12|  220|
|0-24 months |EE             |PAKISTAN     |<48 cm     |           0|     85|  220|
|0-24 months |EE             |PAKISTAN     |<48 cm     |           1|     80|  220|
|0-24 months |EE             |PAKISTAN     |[48-50) cm |           0|     14|  220|
|0-24 months |EE             |PAKISTAN     |[48-50) cm |           1|     22|  220|
|0-24 months |GMS-Nepal      |NEPAL        |>=50 cm    |           0|     30|  641|
|0-24 months |GMS-Nepal      |NEPAL        |>=50 cm    |           1|     55|  641|
|0-24 months |GMS-Nepal      |NEPAL        |<48 cm     |           0|    168|  641|
|0-24 months |GMS-Nepal      |NEPAL        |<48 cm     |           1|    182|  641|
|0-24 months |GMS-Nepal      |NEPAL        |[48-50) cm |           0|     96|  641|
|0-24 months |GMS-Nepal      |NEPAL        |[48-50) cm |           1|    110|  641|
|0-24 months |JiVitA-3       |BANGLADESH   |>=50 cm    |           0|    192| 6353|
|0-24 months |JiVitA-3       |BANGLADESH   |>=50 cm    |           1|    223| 6353|
|0-24 months |JiVitA-3       |BANGLADESH   |<48 cm     |           0|   2692| 6353|
|0-24 months |JiVitA-3       |BANGLADESH   |<48 cm     |           1|   1754| 6353|
|0-24 months |JiVitA-3       |BANGLADESH   |[48-50) cm |           0|    768| 6353|
|0-24 months |JiVitA-3       |BANGLADESH   |[48-50) cm |           1|    724| 6353|
|0-24 months |JiVitA-4       |BANGLADESH   |>=50 cm    |           0|    286| 1770|
|0-24 months |JiVitA-4       |BANGLADESH   |>=50 cm    |           1|    125| 1770|
|0-24 months |JiVitA-4       |BANGLADESH   |<48 cm     |           0|    715| 1770|
|0-24 months |JiVitA-4       |BANGLADESH   |<48 cm     |           1|    249| 1770|
|0-24 months |JiVitA-4       |BANGLADESH   |[48-50) cm |           0|    274| 1770|
|0-24 months |JiVitA-4       |BANGLADESH   |[48-50) cm |           1|    121| 1770|
|0-24 months |Keneba         |GAMBIA       |>=50 cm    |           0|    181| 1225|
|0-24 months |Keneba         |GAMBIA       |>=50 cm    |           1|    472| 1225|
|0-24 months |Keneba         |GAMBIA       |<48 cm     |           0|     92| 1225|
|0-24 months |Keneba         |GAMBIA       |<48 cm     |           1|    115| 1225|
|0-24 months |Keneba         |GAMBIA       |[48-50) cm |           0|    143| 1225|
|0-24 months |Keneba         |GAMBIA       |[48-50) cm |           1|    222| 1225|
|0-24 months |MAL-ED         |INDIA        |>=50 cm    |           0|      1|   40|
|0-24 months |MAL-ED         |INDIA        |>=50 cm    |           1|      4|   40|
|0-24 months |MAL-ED         |INDIA        |<48 cm     |           0|      8|   40|
|0-24 months |MAL-ED         |INDIA        |<48 cm     |           1|     12|   40|
|0-24 months |MAL-ED         |INDIA        |[48-50) cm |           0|      6|   40|
|0-24 months |MAL-ED         |INDIA        |[48-50) cm |           1|      9|   40|
|0-24 months |MAL-ED         |BANGLADESH   |>=50 cm    |           0|      6|  113|
|0-24 months |MAL-ED         |BANGLADESH   |>=50 cm    |           1|     12|  113|
|0-24 months |MAL-ED         |BANGLADESH   |<48 cm     |           0|     21|  113|
|0-24 months |MAL-ED         |BANGLADESH   |<48 cm     |           1|     39|  113|
|0-24 months |MAL-ED         |BANGLADESH   |[48-50) cm |           0|     14|  113|
|0-24 months |MAL-ED         |BANGLADESH   |[48-50) cm |           1|     21|  113|
|0-24 months |MAL-ED         |PERU         |>=50 cm    |           0|      0|   32|
|0-24 months |MAL-ED         |PERU         |>=50 cm    |           1|      6|   32|
|0-24 months |MAL-ED         |PERU         |<48 cm     |           0|      4|   32|
|0-24 months |MAL-ED         |PERU         |<48 cm     |           1|     14|   32|
|0-24 months |MAL-ED         |PERU         |[48-50) cm |           0|      1|   32|
|0-24 months |MAL-ED         |PERU         |[48-50) cm |           1|      7|   32|
|0-24 months |MAL-ED         |NEPAL        |>=50 cm    |           0|      1|   13|
|0-24 months |MAL-ED         |NEPAL        |>=50 cm    |           1|      2|   13|
|0-24 months |MAL-ED         |NEPAL        |<48 cm     |           0|      1|   13|
|0-24 months |MAL-ED         |NEPAL        |<48 cm     |           1|      6|   13|
|0-24 months |MAL-ED         |NEPAL        |[48-50) cm |           0|      0|   13|
|0-24 months |MAL-ED         |NEPAL        |[48-50) cm |           1|      3|   13|
|0-24 months |MAL-ED         |BRAZIL       |>=50 cm    |           0|      0|    8|
|0-24 months |MAL-ED         |BRAZIL       |>=50 cm    |           1|      1|    8|
|0-24 months |MAL-ED         |BRAZIL       |<48 cm     |           0|      1|    8|
|0-24 months |MAL-ED         |BRAZIL       |<48 cm     |           1|      3|    8|
|0-24 months |MAL-ED         |BRAZIL       |[48-50) cm |           0|      1|    8|
|0-24 months |MAL-ED         |BRAZIL       |[48-50) cm |           1|      2|    8|
|0-24 months |MAL-ED         |TANZANIA     |>=50 cm    |           0|      0|   28|
|0-24 months |MAL-ED         |TANZANIA     |>=50 cm    |           1|      2|   28|
|0-24 months |MAL-ED         |TANZANIA     |<48 cm     |           0|      2|   28|
|0-24 months |MAL-ED         |TANZANIA     |<48 cm     |           1|     15|   28|
|0-24 months |MAL-ED         |TANZANIA     |[48-50) cm |           0|      2|   28|
|0-24 months |MAL-ED         |TANZANIA     |[48-50) cm |           1|      7|   28|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=50 cm    |           0|      1|   37|
|0-24 months |MAL-ED         |SOUTH AFRICA |>=50 cm    |           1|     11|   37|
|0-24 months |MAL-ED         |SOUTH AFRICA |<48 cm     |           0|      2|   37|
|0-24 months |MAL-ED         |SOUTH AFRICA |<48 cm     |           1|      6|   37|
|0-24 months |MAL-ED         |SOUTH AFRICA |[48-50) cm |           0|      7|   37|
|0-24 months |MAL-ED         |SOUTH AFRICA |[48-50) cm |           1|     10|   37|
|0-24 months |NIH-Birth      |BANGLADESH   |>=50 cm    |           0|     26|  408|
|0-24 months |NIH-Birth      |BANGLADESH   |>=50 cm    |           1|     46|  408|
|0-24 months |NIH-Birth      |BANGLADESH   |<48 cm     |           0|    101|  408|
|0-24 months |NIH-Birth      |BANGLADESH   |<48 cm     |           1|     86|  408|
|0-24 months |NIH-Birth      |BANGLADESH   |[48-50) cm |           0|     70|  408|
|0-24 months |NIH-Birth      |BANGLADESH   |[48-50) cm |           1|     79|  408|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=50 cm    |           0|     14|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |>=50 cm    |           1|     53|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |<48 cm     |           0|     59|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |<48 cm     |           1|     62|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |[48-50) cm |           0|     44|  310|
|0-24 months |NIH-Crypto     |BANGLADESH   |[48-50) cm |           1|     78|  310|
|0-24 months |PROBIT         |BELARUS      |>=50 cm    |           0|    480| 4408|
|0-24 months |PROBIT         |BELARUS      |>=50 cm    |           1|   3683| 4408|
|0-24 months |PROBIT         |BELARUS      |<48 cm     |           0|      6| 4408|
|0-24 months |PROBIT         |BELARUS      |<48 cm     |           1|     13| 4408|
|0-24 months |PROBIT         |BELARUS      |[48-50) cm |           0|     40| 4408|
|0-24 months |PROBIT         |BELARUS      |[48-50) cm |           1|    186| 4408|
|0-24 months |PROVIDE        |BANGLADESH   |>=50 cm    |           0|     19|  308|
|0-24 months |PROVIDE        |BANGLADESH   |>=50 cm    |           1|     41|  308|
|0-24 months |PROVIDE        |BANGLADESH   |<48 cm     |           0|     63|  308|
|0-24 months |PROVIDE        |BANGLADESH   |<48 cm     |           1|     80|  308|
|0-24 months |PROVIDE        |BANGLADESH   |[48-50) cm |           0|     47|  308|
|0-24 months |PROVIDE        |BANGLADESH   |[48-50) cm |           1|     58|  308|
|0-24 months |ResPak         |PAKISTAN     |>=50 cm    |           0|      2|   23|
|0-24 months |ResPak         |PAKISTAN     |>=50 cm    |           1|      4|   23|
|0-24 months |ResPak         |PAKISTAN     |<48 cm     |           0|      6|   23|
|0-24 months |ResPak         |PAKISTAN     |<48 cm     |           1|      5|   23|
|0-24 months |ResPak         |PAKISTAN     |[48-50) cm |           0|      3|   23|
|0-24 months |ResPak         |PAKISTAN     |[48-50) cm |           1|      3|   23|
|0-24 months |SAS-CompFeed   |INDIA        |>=50 cm    |           0|     49|  809|
|0-24 months |SAS-CompFeed   |INDIA        |>=50 cm    |           1|     42|  809|
|0-24 months |SAS-CompFeed   |INDIA        |<48 cm     |           0|    309|  809|
|0-24 months |SAS-CompFeed   |INDIA        |<48 cm     |           1|    166|  809|
|0-24 months |SAS-CompFeed   |INDIA        |[48-50) cm |           0|    141|  809|
|0-24 months |SAS-CompFeed   |INDIA        |[48-50) cm |           1|    102|  809|
|0-24 months |Vellore Crypto |INDIA        |>=50 cm    |           0|     62|  387|
|0-24 months |Vellore Crypto |INDIA        |>=50 cm    |           1|    100|  387|
|0-24 months |Vellore Crypto |INDIA        |<48 cm     |           0|     50|  387|
|0-24 months |Vellore Crypto |INDIA        |<48 cm     |           1|     57|  387|
|0-24 months |Vellore Crypto |INDIA        |[48-50) cm |           0|     47|  387|
|0-24 months |Vellore Crypto |INDIA        |[48-50) cm |           1|     71|  387|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=50 cm    |           0|    447| 3595|
|0-24 months |ZVITAMBO       |ZIMBABWE     |>=50 cm    |           1|    879| 3595|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<48 cm     |           0|    581| 3595|
|0-24 months |ZVITAMBO       |ZIMBABWE     |<48 cm     |           1|    377| 3595|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[48-50) cm |           0|    607| 3595|
|0-24 months |ZVITAMBO       |ZIMBABWE     |[48-50) cm |           1|    704| 3595|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |>=50 cm    |           0|      3|   63|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |>=50 cm    |           1|      3|   63|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |<48 cm     |           0|     11|   63|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |<48 cm     |           1|     20|   63|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |[48-50) cm |           0|      6|   63|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |[48-50) cm |           1|     20|   63|
|0-6 months  |CMIN           |BANGLADESH   |>=50 cm    |           0|      1|    5|
|0-6 months  |CMIN           |BANGLADESH   |>=50 cm    |           1|      0|    5|
|0-6 months  |CMIN           |BANGLADESH   |<48 cm     |           0|      2|    5|
|0-6 months  |CMIN           |BANGLADESH   |<48 cm     |           1|      2|    5|
|0-6 months  |CMIN           |BANGLADESH   |[48-50) cm |           0|      0|    5|
|0-6 months  |CMIN           |BANGLADESH   |[48-50) cm |           1|      0|    5|
|0-6 months  |COHORTS        |INDIA        |>=50 cm    |           0|    230| 1718|
|0-6 months  |COHORTS        |INDIA        |>=50 cm    |           1|    186| 1718|
|0-6 months  |COHORTS        |INDIA        |<48 cm     |           0|    442| 1718|
|0-6 months  |COHORTS        |INDIA        |<48 cm     |           1|    211| 1718|
|0-6 months  |COHORTS        |INDIA        |[48-50) cm |           0|    402| 1718|
|0-6 months  |COHORTS        |INDIA        |[48-50) cm |           1|    247| 1718|
|0-6 months  |COHORTS        |GUATEMALA    |>=50 cm    |           0|     28|  212|
|0-6 months  |COHORTS        |GUATEMALA    |>=50 cm    |           1|    114|  212|
|0-6 months  |COHORTS        |GUATEMALA    |<48 cm     |           0|     11|  212|
|0-6 months  |COHORTS        |GUATEMALA    |<48 cm     |           1|      9|  212|
|0-6 months  |COHORTS        |GUATEMALA    |[48-50) cm |           0|     13|  212|
|0-6 months  |COHORTS        |GUATEMALA    |[48-50) cm |           1|     37|  212|
|0-6 months  |COHORTS        |PHILIPPINES  |>=50 cm    |           0|     82|  751|
|0-6 months  |COHORTS        |PHILIPPINES  |>=50 cm    |           1|    276|  751|
|0-6 months  |COHORTS        |PHILIPPINES  |<48 cm     |           0|     45|  751|
|0-6 months  |COHORTS        |PHILIPPINES  |<48 cm     |           1|    109|  751|
|0-6 months  |COHORTS        |PHILIPPINES  |[48-50) cm |           0|     71|  751|
|0-6 months  |COHORTS        |PHILIPPINES  |[48-50) cm |           1|    168|  751|
|0-6 months  |EE             |PAKISTAN     |>=50 cm    |           0|      4|   84|
|0-6 months  |EE             |PAKISTAN     |>=50 cm    |           1|      8|   84|
|0-6 months  |EE             |PAKISTAN     |<48 cm     |           0|     25|   84|
|0-6 months  |EE             |PAKISTAN     |<48 cm     |           1|     29|   84|
|0-6 months  |EE             |PAKISTAN     |[48-50) cm |           0|      7|   84|
|0-6 months  |EE             |PAKISTAN     |[48-50) cm |           1|     11|   84|
|0-6 months  |GMS-Nepal      |NEPAL        |>=50 cm    |           0|     15|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |>=50 cm    |           1|     29|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |<48 cm     |           0|     53|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |<48 cm     |           1|     73|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |[48-50) cm |           0|     36|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |[48-50) cm |           1|     57|  263|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=50 cm    |           0|     94| 3961|
|0-6 months  |JiVitA-3       |BANGLADESH   |>=50 cm    |           1|    223| 3961|
|0-6 months  |JiVitA-3       |BANGLADESH   |<48 cm     |           0|    827| 3961|
|0-6 months  |JiVitA-3       |BANGLADESH   |<48 cm     |           1|   1754| 3961|
|0-6 months  |JiVitA-3       |BANGLADESH   |[48-50) cm |           0|    339| 3961|
|0-6 months  |JiVitA-3       |BANGLADESH   |[48-50) cm |           1|    724| 3961|
|0-6 months  |JiVitA-4       |BANGLADESH   |>=50 cm    |           0|     41|  504|
|0-6 months  |JiVitA-4       |BANGLADESH   |>=50 cm    |           1|     85|  504|
|0-6 months  |JiVitA-4       |BANGLADESH   |<48 cm     |           0|    109|  504|
|0-6 months  |JiVitA-4       |BANGLADESH   |<48 cm     |           1|    137|  504|
|0-6 months  |JiVitA-4       |BANGLADESH   |[48-50) cm |           0|     45|  504|
|0-6 months  |JiVitA-4       |BANGLADESH   |[48-50) cm |           1|     87|  504|
|0-6 months  |Keneba         |GAMBIA       |>=50 cm    |           0|     43|  563|
|0-6 months  |Keneba         |GAMBIA       |>=50 cm    |           1|    292|  563|
|0-6 months  |Keneba         |GAMBIA       |<48 cm     |           0|     17|  563|
|0-6 months  |Keneba         |GAMBIA       |<48 cm     |           1|     61|  563|
|0-6 months  |Keneba         |GAMBIA       |[48-50) cm |           0|     38|  563|
|0-6 months  |Keneba         |GAMBIA       |[48-50) cm |           1|    112|  563|
|0-6 months  |MAL-ED         |INDIA        |>=50 cm    |           0|      1|   14|
|0-6 months  |MAL-ED         |INDIA        |>=50 cm    |           1|      2|   14|
|0-6 months  |MAL-ED         |INDIA        |<48 cm     |           0|      0|   14|
|0-6 months  |MAL-ED         |INDIA        |<48 cm     |           1|      5|   14|
|0-6 months  |MAL-ED         |INDIA        |[48-50) cm |           0|      2|   14|
|0-6 months  |MAL-ED         |INDIA        |[48-50) cm |           1|      4|   14|
|0-6 months  |MAL-ED         |BANGLADESH   |>=50 cm    |           0|      3|   54|
|0-6 months  |MAL-ED         |BANGLADESH   |>=50 cm    |           1|      9|   54|
|0-6 months  |MAL-ED         |BANGLADESH   |<48 cm     |           0|      6|   54|
|0-6 months  |MAL-ED         |BANGLADESH   |<48 cm     |           1|     21|   54|
|0-6 months  |MAL-ED         |BANGLADESH   |[48-50) cm |           0|      3|   54|
|0-6 months  |MAL-ED         |BANGLADESH   |[48-50) cm |           1|     12|   54|
|0-6 months  |MAL-ED         |PERU         |>=50 cm    |           0|      0|   10|
|0-6 months  |MAL-ED         |PERU         |>=50 cm    |           1|      3|   10|
|0-6 months  |MAL-ED         |PERU         |<48 cm     |           0|      0|   10|
|0-6 months  |MAL-ED         |PERU         |<48 cm     |           1|      4|   10|
|0-6 months  |MAL-ED         |PERU         |[48-50) cm |           0|      0|   10|
|0-6 months  |MAL-ED         |PERU         |[48-50) cm |           1|      3|   10|
|0-6 months  |MAL-ED         |NEPAL        |>=50 cm    |           0|      1|    4|
|0-6 months  |MAL-ED         |NEPAL        |>=50 cm    |           1|      0|    4|
|0-6 months  |MAL-ED         |NEPAL        |<48 cm     |           0|      0|    4|
|0-6 months  |MAL-ED         |NEPAL        |<48 cm     |           1|      3|    4|
|0-6 months  |MAL-ED         |NEPAL        |[48-50) cm |           0|      0|    4|
|0-6 months  |MAL-ED         |NEPAL        |[48-50) cm |           1|      0|    4|
|0-6 months  |MAL-ED         |BRAZIL       |>=50 cm    |           0|      0|    3|
|0-6 months  |MAL-ED         |BRAZIL       |>=50 cm    |           1|      1|    3|
|0-6 months  |MAL-ED         |BRAZIL       |<48 cm     |           0|      0|    3|
|0-6 months  |MAL-ED         |BRAZIL       |<48 cm     |           1|      1|    3|
|0-6 months  |MAL-ED         |BRAZIL       |[48-50) cm |           0|      0|    3|
|0-6 months  |MAL-ED         |BRAZIL       |[48-50) cm |           1|      1|    3|
|0-6 months  |MAL-ED         |TANZANIA     |>=50 cm    |           0|      0|    5|
|0-6 months  |MAL-ED         |TANZANIA     |>=50 cm    |           1|      1|    5|
|0-6 months  |MAL-ED         |TANZANIA     |<48 cm     |           0|      0|    5|
|0-6 months  |MAL-ED         |TANZANIA     |<48 cm     |           1|      2|    5|
|0-6 months  |MAL-ED         |TANZANIA     |[48-50) cm |           0|      0|    5|
|0-6 months  |MAL-ED         |TANZANIA     |[48-50) cm |           1|      2|    5|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=50 cm    |           0|      1|   21|
|0-6 months  |MAL-ED         |SOUTH AFRICA |>=50 cm    |           1|      8|   21|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<48 cm     |           0|      1|   21|
|0-6 months  |MAL-ED         |SOUTH AFRICA |<48 cm     |           1|      2|   21|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[48-50) cm |           0|      4|   21|
|0-6 months  |MAL-ED         |SOUTH AFRICA |[48-50) cm |           1|      5|   21|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=50 cm    |           0|     12|  217|
|0-6 months  |NIH-Birth      |BANGLADESH   |>=50 cm    |           1|     35|  217|
|0-6 months  |NIH-Birth      |BANGLADESH   |<48 cm     |           0|     29|  217|
|0-6 months  |NIH-Birth      |BANGLADESH   |<48 cm     |           1|     62|  217|
|0-6 months  |NIH-Birth      |BANGLADESH   |[48-50) cm |           0|     21|  217|
|0-6 months  |NIH-Birth      |BANGLADESH   |[48-50) cm |           1|     58|  217|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=50 cm    |           0|      3|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |>=50 cm    |           1|     48|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<48 cm     |           0|      9|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |<48 cm     |           1|     58|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[48-50) cm |           0|      9|  197|
|0-6 months  |NIH-Crypto     |BANGLADESH   |[48-50) cm |           1|     70|  197|
|0-6 months  |PROBIT         |BELARUS      |>=50 cm    |           0|    391| 4267|
|0-6 months  |PROBIT         |BELARUS      |>=50 cm    |           1|   3651| 4267|
|0-6 months  |PROBIT         |BELARUS      |<48 cm     |           0|      3| 4267|
|0-6 months  |PROBIT         |BELARUS      |<48 cm     |           1|     12| 4267|
|0-6 months  |PROBIT         |BELARUS      |[48-50) cm |           0|     29| 4267|
|0-6 months  |PROBIT         |BELARUS      |[48-50) cm |           1|    181| 4267|
|0-6 months  |PROVIDE        |BANGLADESH   |>=50 cm    |           0|      8|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |>=50 cm    |           1|     38|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |<48 cm     |           0|     20|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |<48 cm     |           1|     58|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |[48-50) cm |           0|     12|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |[48-50) cm |           1|     49|  185|
|0-6 months  |ResPak         |PAKISTAN     |>=50 cm    |           0|      1|   14|
|0-6 months  |ResPak         |PAKISTAN     |>=50 cm    |           1|      4|   14|
|0-6 months  |ResPak         |PAKISTAN     |<48 cm     |           0|      2|   14|
|0-6 months  |ResPak         |PAKISTAN     |<48 cm     |           1|      3|   14|
|0-6 months  |ResPak         |PAKISTAN     |[48-50) cm |           0|      1|   14|
|0-6 months  |ResPak         |PAKISTAN     |[48-50) cm |           1|      3|   14|
|0-6 months  |SAS-CompFeed   |INDIA        |>=50 cm    |           0|     20|  340|
|0-6 months  |SAS-CompFeed   |INDIA        |>=50 cm    |           1|     24|  340|
|0-6 months  |SAS-CompFeed   |INDIA        |<48 cm     |           0|    102|  340|
|0-6 months  |SAS-CompFeed   |INDIA        |<48 cm     |           1|     93|  340|
|0-6 months  |SAS-CompFeed   |INDIA        |[48-50) cm |           0|     43|  340|
|0-6 months  |SAS-CompFeed   |INDIA        |[48-50) cm |           1|     58|  340|
|0-6 months  |Vellore Crypto |INDIA        |>=50 cm    |           0|     38|  236|
|0-6 months  |Vellore Crypto |INDIA        |>=50 cm    |           1|     76|  236|
|0-6 months  |Vellore Crypto |INDIA        |<48 cm     |           0|     21|  236|
|0-6 months  |Vellore Crypto |INDIA        |<48 cm     |           1|     31|  236|
|0-6 months  |Vellore Crypto |INDIA        |[48-50) cm |           0|     26|  236|
|0-6 months  |Vellore Crypto |INDIA        |[48-50) cm |           1|     44|  236|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=50 cm    |           0|    228| 2516|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |>=50 cm    |           1|    864| 2516|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<48 cm     |           0|    170| 2516|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |<48 cm     |           1|    349| 2516|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[48-50) cm |           0|    238| 2516|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |[48-50) cm |           1|    667| 2516|
|6-24 months |CMC-V-BCS-2002 |INDIA        |>=50 cm    |           0|      0|   25|
|6-24 months |CMC-V-BCS-2002 |INDIA        |>=50 cm    |           1|      0|   25|
|6-24 months |CMC-V-BCS-2002 |INDIA        |<48 cm     |           0|      8|   25|
|6-24 months |CMC-V-BCS-2002 |INDIA        |<48 cm     |           1|      7|   25|
|6-24 months |CMC-V-BCS-2002 |INDIA        |[48-50) cm |           0|      3|   25|
|6-24 months |CMC-V-BCS-2002 |INDIA        |[48-50) cm |           1|      7|   25|
|6-24 months |CMIN           |BANGLADESH   |>=50 cm    |           0|      0|    7|
|6-24 months |CMIN           |BANGLADESH   |>=50 cm    |           1|      0|    7|
|6-24 months |CMIN           |BANGLADESH   |<48 cm     |           0|      2|    7|
|6-24 months |CMIN           |BANGLADESH   |<48 cm     |           1|      2|    7|
|6-24 months |CMIN           |BANGLADESH   |[48-50) cm |           0|      0|    7|
|6-24 months |CMIN           |BANGLADESH   |[48-50) cm |           1|      3|    7|
|6-24 months |COHORTS        |INDIA        |>=50 cm    |           0|    108|  779|
|6-24 months |COHORTS        |INDIA        |>=50 cm    |           1|      0|  779|
|6-24 months |COHORTS        |INDIA        |<48 cm     |           0|    420|  779|
|6-24 months |COHORTS        |INDIA        |<48 cm     |           1|      0|  779|
|6-24 months |COHORTS        |INDIA        |[48-50) cm |           0|    251|  779|
|6-24 months |COHORTS        |INDIA        |[48-50) cm |           1|      0|  779|
|6-24 months |COHORTS        |GUATEMALA    |>=50 cm    |           0|     31|   83|
|6-24 months |COHORTS        |GUATEMALA    |>=50 cm    |           1|      4|   83|
|6-24 months |COHORTS        |GUATEMALA    |<48 cm     |           0|     22|   83|
|6-24 months |COHORTS        |GUATEMALA    |<48 cm     |           1|      2|   83|
|6-24 months |COHORTS        |GUATEMALA    |[48-50) cm |           0|     22|   83|
|6-24 months |COHORTS        |GUATEMALA    |[48-50) cm |           1|      2|   83|
|6-24 months |COHORTS        |PHILIPPINES  |>=50 cm    |           0|    108|  935|
|6-24 months |COHORTS        |PHILIPPINES  |>=50 cm    |           1|    147|  935|
|6-24 months |COHORTS        |PHILIPPINES  |<48 cm     |           0|    173|  935|
|6-24 months |COHORTS        |PHILIPPINES  |<48 cm     |           1|    150|  935|
|6-24 months |COHORTS        |PHILIPPINES  |[48-50) cm |           0|    184|  935|
|6-24 months |COHORTS        |PHILIPPINES  |[48-50) cm |           1|    173|  935|
|6-24 months |EE             |PAKISTAN     |>=50 cm    |           0|      3|  136|
|6-24 months |EE             |PAKISTAN     |>=50 cm    |           1|      4|  136|
|6-24 months |EE             |PAKISTAN     |<48 cm     |           0|     60|  136|
|6-24 months |EE             |PAKISTAN     |<48 cm     |           1|     51|  136|
|6-24 months |EE             |PAKISTAN     |[48-50) cm |           0|      7|  136|
|6-24 months |EE             |PAKISTAN     |[48-50) cm |           1|     11|  136|
|6-24 months |GMS-Nepal      |NEPAL        |>=50 cm    |           0|     15|  378|
|6-24 months |GMS-Nepal      |NEPAL        |>=50 cm    |           1|     26|  378|
|6-24 months |GMS-Nepal      |NEPAL        |<48 cm     |           0|    115|  378|
|6-24 months |GMS-Nepal      |NEPAL        |<48 cm     |           1|    109|  378|
|6-24 months |GMS-Nepal      |NEPAL        |[48-50) cm |           0|     60|  378|
|6-24 months |GMS-Nepal      |NEPAL        |[48-50) cm |           1|     53|  378|
|6-24 months |JiVitA-3       |BANGLADESH   |>=50 cm    |           0|     98| 2392|
|6-24 months |JiVitA-3       |BANGLADESH   |>=50 cm    |           1|      0| 2392|
|6-24 months |JiVitA-3       |BANGLADESH   |<48 cm     |           0|   1865| 2392|
|6-24 months |JiVitA-3       |BANGLADESH   |<48 cm     |           1|      0| 2392|
|6-24 months |JiVitA-3       |BANGLADESH   |[48-50) cm |           0|    429| 2392|
|6-24 months |JiVitA-3       |BANGLADESH   |[48-50) cm |           1|      0| 2392|
|6-24 months |JiVitA-4       |BANGLADESH   |>=50 cm    |           0|    245| 1266|
|6-24 months |JiVitA-4       |BANGLADESH   |>=50 cm    |           1|     40| 1266|
|6-24 months |JiVitA-4       |BANGLADESH   |<48 cm     |           0|    606| 1266|
|6-24 months |JiVitA-4       |BANGLADESH   |<48 cm     |           1|    112| 1266|
|6-24 months |JiVitA-4       |BANGLADESH   |[48-50) cm |           0|    229| 1266|
|6-24 months |JiVitA-4       |BANGLADESH   |[48-50) cm |           1|     34| 1266|
|6-24 months |Keneba         |GAMBIA       |>=50 cm    |           0|    138|  662|
|6-24 months |Keneba         |GAMBIA       |>=50 cm    |           1|    180|  662|
|6-24 months |Keneba         |GAMBIA       |<48 cm     |           0|     75|  662|
|6-24 months |Keneba         |GAMBIA       |<48 cm     |           1|     54|  662|
|6-24 months |Keneba         |GAMBIA       |[48-50) cm |           0|    105|  662|
|6-24 months |Keneba         |GAMBIA       |[48-50) cm |           1|    110|  662|
|6-24 months |MAL-ED         |INDIA        |>=50 cm    |           0|      0|   26|
|6-24 months |MAL-ED         |INDIA        |>=50 cm    |           1|      2|   26|
|6-24 months |MAL-ED         |INDIA        |<48 cm     |           0|      8|   26|
|6-24 months |MAL-ED         |INDIA        |<48 cm     |           1|      7|   26|
|6-24 months |MAL-ED         |INDIA        |[48-50) cm |           0|      4|   26|
|6-24 months |MAL-ED         |INDIA        |[48-50) cm |           1|      5|   26|
|6-24 months |MAL-ED         |BANGLADESH   |>=50 cm    |           0|      3|   59|
|6-24 months |MAL-ED         |BANGLADESH   |>=50 cm    |           1|      3|   59|
|6-24 months |MAL-ED         |BANGLADESH   |<48 cm     |           0|     15|   59|
|6-24 months |MAL-ED         |BANGLADESH   |<48 cm     |           1|     18|   59|
|6-24 months |MAL-ED         |BANGLADESH   |[48-50) cm |           0|     11|   59|
|6-24 months |MAL-ED         |BANGLADESH   |[48-50) cm |           1|      9|   59|
|6-24 months |MAL-ED         |PERU         |>=50 cm    |           0|      0|   22|
|6-24 months |MAL-ED         |PERU         |>=50 cm    |           1|      3|   22|
|6-24 months |MAL-ED         |PERU         |<48 cm     |           0|      4|   22|
|6-24 months |MAL-ED         |PERU         |<48 cm     |           1|     10|   22|
|6-24 months |MAL-ED         |PERU         |[48-50) cm |           0|      1|   22|
|6-24 months |MAL-ED         |PERU         |[48-50) cm |           1|      4|   22|
|6-24 months |MAL-ED         |NEPAL        |>=50 cm    |           0|      0|    9|
|6-24 months |MAL-ED         |NEPAL        |>=50 cm    |           1|      2|    9|
|6-24 months |MAL-ED         |NEPAL        |<48 cm     |           0|      1|    9|
|6-24 months |MAL-ED         |NEPAL        |<48 cm     |           1|      3|    9|
|6-24 months |MAL-ED         |NEPAL        |[48-50) cm |           0|      0|    9|
|6-24 months |MAL-ED         |NEPAL        |[48-50) cm |           1|      3|    9|
|6-24 months |MAL-ED         |BRAZIL       |>=50 cm    |           0|      0|    5|
|6-24 months |MAL-ED         |BRAZIL       |>=50 cm    |           1|      0|    5|
|6-24 months |MAL-ED         |BRAZIL       |<48 cm     |           0|      1|    5|
|6-24 months |MAL-ED         |BRAZIL       |<48 cm     |           1|      2|    5|
|6-24 months |MAL-ED         |BRAZIL       |[48-50) cm |           0|      1|    5|
|6-24 months |MAL-ED         |BRAZIL       |[48-50) cm |           1|      1|    5|
|6-24 months |MAL-ED         |TANZANIA     |>=50 cm    |           0|      0|   23|
|6-24 months |MAL-ED         |TANZANIA     |>=50 cm    |           1|      1|   23|
|6-24 months |MAL-ED         |TANZANIA     |<48 cm     |           0|      2|   23|
|6-24 months |MAL-ED         |TANZANIA     |<48 cm     |           1|     13|   23|
|6-24 months |MAL-ED         |TANZANIA     |[48-50) cm |           0|      2|   23|
|6-24 months |MAL-ED         |TANZANIA     |[48-50) cm |           1|      5|   23|
|6-24 months |MAL-ED         |SOUTH AFRICA |>=50 cm    |           0|      0|   16|
|6-24 months |MAL-ED         |SOUTH AFRICA |>=50 cm    |           1|      3|   16|
|6-24 months |MAL-ED         |SOUTH AFRICA |<48 cm     |           0|      1|   16|
|6-24 months |MAL-ED         |SOUTH AFRICA |<48 cm     |           1|      4|   16|
|6-24 months |MAL-ED         |SOUTH AFRICA |[48-50) cm |           0|      3|   16|
|6-24 months |MAL-ED         |SOUTH AFRICA |[48-50) cm |           1|      5|   16|
|6-24 months |NIH-Birth      |BANGLADESH   |>=50 cm    |           0|     14|  191|
|6-24 months |NIH-Birth      |BANGLADESH   |>=50 cm    |           1|     11|  191|
|6-24 months |NIH-Birth      |BANGLADESH   |<48 cm     |           0|     72|  191|
|6-24 months |NIH-Birth      |BANGLADESH   |<48 cm     |           1|     24|  191|
|6-24 months |NIH-Birth      |BANGLADESH   |[48-50) cm |           0|     49|  191|
|6-24 months |NIH-Birth      |BANGLADESH   |[48-50) cm |           1|     21|  191|
|6-24 months |NIH-Crypto     |BANGLADESH   |>=50 cm    |           0|     11|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |>=50 cm    |           1|      5|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |<48 cm     |           0|     50|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |<48 cm     |           1|      4|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |[48-50) cm |           0|     35|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |[48-50) cm |           1|      8|  113|
|6-24 months |PROBIT         |BELARUS      |>=50 cm    |           0|     89|  141|
|6-24 months |PROBIT         |BELARUS      |>=50 cm    |           1|     32|  141|
|6-24 months |PROBIT         |BELARUS      |<48 cm     |           0|      3|  141|
|6-24 months |PROBIT         |BELARUS      |<48 cm     |           1|      1|  141|
|6-24 months |PROBIT         |BELARUS      |[48-50) cm |           0|     11|  141|
|6-24 months |PROBIT         |BELARUS      |[48-50) cm |           1|      5|  141|
|6-24 months |PROVIDE        |BANGLADESH   |>=50 cm    |           0|     11|  123|
|6-24 months |PROVIDE        |BANGLADESH   |>=50 cm    |           1|      3|  123|
|6-24 months |PROVIDE        |BANGLADESH   |<48 cm     |           0|     43|  123|
|6-24 months |PROVIDE        |BANGLADESH   |<48 cm     |           1|     22|  123|
|6-24 months |PROVIDE        |BANGLADESH   |[48-50) cm |           0|     35|  123|
|6-24 months |PROVIDE        |BANGLADESH   |[48-50) cm |           1|      9|  123|
|6-24 months |ResPak         |PAKISTAN     |>=50 cm    |           0|      1|    9|
|6-24 months |ResPak         |PAKISTAN     |>=50 cm    |           1|      0|    9|
|6-24 months |ResPak         |PAKISTAN     |<48 cm     |           0|      4|    9|
|6-24 months |ResPak         |PAKISTAN     |<48 cm     |           1|      2|    9|
|6-24 months |ResPak         |PAKISTAN     |[48-50) cm |           0|      2|    9|
|6-24 months |ResPak         |PAKISTAN     |[48-50) cm |           1|      0|    9|
|6-24 months |SAS-CompFeed   |INDIA        |>=50 cm    |           0|     29|  469|
|6-24 months |SAS-CompFeed   |INDIA        |>=50 cm    |           1|     18|  469|
|6-24 months |SAS-CompFeed   |INDIA        |<48 cm     |           0|    207|  469|
|6-24 months |SAS-CompFeed   |INDIA        |<48 cm     |           1|     73|  469|
|6-24 months |SAS-CompFeed   |INDIA        |[48-50) cm |           0|     98|  469|
|6-24 months |SAS-CompFeed   |INDIA        |[48-50) cm |           1|     44|  469|
|6-24 months |Vellore Crypto |INDIA        |>=50 cm    |           0|     24|  151|
|6-24 months |Vellore Crypto |INDIA        |>=50 cm    |           1|     24|  151|
|6-24 months |Vellore Crypto |INDIA        |<48 cm     |           0|     29|  151|
|6-24 months |Vellore Crypto |INDIA        |<48 cm     |           1|     26|  151|
|6-24 months |Vellore Crypto |INDIA        |[48-50) cm |           0|     21|  151|
|6-24 months |Vellore Crypto |INDIA        |[48-50) cm |           1|     27|  151|
|6-24 months |ZVITAMBO       |ZIMBABWE     |>=50 cm    |           0|    219| 1079|
|6-24 months |ZVITAMBO       |ZIMBABWE     |>=50 cm    |           1|     15| 1079|
|6-24 months |ZVITAMBO       |ZIMBABWE     |<48 cm     |           0|    411| 1079|
|6-24 months |ZVITAMBO       |ZIMBABWE     |<48 cm     |           1|     28| 1079|
|6-24 months |ZVITAMBO       |ZIMBABWE     |[48-50) cm |           0|    369| 1079|
|6-24 months |ZVITAMBO       |ZIMBABWE     |[48-50) cm |           1|     37| 1079|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
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
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
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
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
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
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


