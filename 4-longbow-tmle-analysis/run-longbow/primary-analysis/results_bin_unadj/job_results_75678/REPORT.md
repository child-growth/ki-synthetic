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

**Intervention Variable:** birthlen

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid        |country      |birthlen   | ever_swasted| n_cell|     n|
|:---------------------------|:--------------|:------------|:----------|------------:|------:|-----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |>=50 cm    |            0|     13|   104|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |>=50 cm    |            1|      3|   104|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |<48 cm     |            0|     36|   104|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |<48 cm     |            1|     12|   104|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |[48-50) cm |            0|     34|   104|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |[48-50) cm |            1|      6|   104|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |>=50 cm    |            0|      1|    17|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |>=50 cm    |            1|      0|    17|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |<48 cm     |            0|     11|    17|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |<48 cm     |            1|      0|    17|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |[48-50) cm |            0|      5|    17|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |[48-50) cm |            1|      0|    17|
|0-24 months (no birth wast) |COHORTS        |INDIA        |>=50 cm    |            0|   1349|  6400|
|0-24 months (no birth wast) |COHORTS        |INDIA        |>=50 cm    |            1|     40|  6400|
|0-24 months (no birth wast) |COHORTS        |INDIA        |<48 cm     |            0|   2473|  6400|
|0-24 months (no birth wast) |COHORTS        |INDIA        |<48 cm     |            1|    171|  6400|
|0-24 months (no birth wast) |COHORTS        |INDIA        |[48-50) cm |            0|   2249|  6400|
|0-24 months (no birth wast) |COHORTS        |INDIA        |[48-50) cm |            1|    118|  6400|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA    |>=50 cm    |            0|    418|   821|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA    |>=50 cm    |            1|      2|   821|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA    |<48 cm     |            0|    149|   821|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA    |<48 cm     |            1|      6|   821|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA    |[48-50) cm |            0|    243|   821|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA    |[48-50) cm |            1|      3|   821|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES  |>=50 cm    |            0|   1044|  3011|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES  |>=50 cm    |            1|     77|  3011|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES  |<48 cm     |            0|    674|  3011|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES  |<48 cm     |            1|     66|  3011|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES  |[48-50) cm |            0|   1044|  3011|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES  |[48-50) cm |            1|    106|  3011|
|0-24 months (no birth wast) |CONTENT        |PERU         |>=50 cm    |            0|      1|     2|
|0-24 months (no birth wast) |CONTENT        |PERU         |>=50 cm    |            1|      0|     2|
|0-24 months (no birth wast) |CONTENT        |PERU         |<48 cm     |            0|      1|     2|
|0-24 months (no birth wast) |CONTENT        |PERU         |<48 cm     |            1|      0|     2|
|0-24 months (no birth wast) |CONTENT        |PERU         |[48-50) cm |            0|      0|     2|
|0-24 months (no birth wast) |CONTENT        |PERU         |[48-50) cm |            1|      0|     2|
|0-24 months (no birth wast) |EE             |PAKISTAN     |>=50 cm    |            0|     17|   240|
|0-24 months (no birth wast) |EE             |PAKISTAN     |>=50 cm    |            1|      5|   240|
|0-24 months (no birth wast) |EE             |PAKISTAN     |<48 cm     |            0|    136|   240|
|0-24 months (no birth wast) |EE             |PAKISTAN     |<48 cm     |            1|     36|   240|
|0-24 months (no birth wast) |EE             |PAKISTAN     |[48-50) cm |            0|     43|   240|
|0-24 months (no birth wast) |EE             |PAKISTAN     |[48-50) cm |            1|      3|   240|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |>=50 cm    |            0|     83|   659|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |>=50 cm    |            1|     14|   659|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |<48 cm     |            0|    289|   659|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |<48 cm     |            1|     72|   659|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |[48-50) cm |            0|    156|   659|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |[48-50) cm |            1|     45|   659|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |>=50 cm    |            0|   1161| 21905|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |>=50 cm    |            1|     43| 21905|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |<48 cm     |            0|  15086| 21905|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |<48 cm     |            1|    601| 21905|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |[48-50) cm |            0|   4830| 21905|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |[48-50) cm |            1|    184| 21905|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |>=50 cm    |            0|   1183|  4464|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |>=50 cm    |            1|     47|  4464|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |<48 cm     |            0|   2036|  4464|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |<48 cm     |            1|    125|  4464|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |[48-50) cm |            0|   1037|  4464|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |[48-50) cm |            1|     36|  4464|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |>=50 cm    |            0|    658|  1547|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |>=50 cm    |            1|    101|  1547|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |<48 cm     |            0|    247|  1547|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |<48 cm     |            1|     46|  1547|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |[48-50) cm |            0|    416|  1547|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |[48-50) cm |            1|     79|  1547|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |>=50 cm    |            0|      8|    47|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |>=50 cm    |            1|      1|    47|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |<48 cm     |            0|     21|    47|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |<48 cm     |            1|      1|    47|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |[48-50) cm |            0|     14|    47|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |[48-50) cm |            1|      2|    47|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |>=50 cm    |            0|     32|   229|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |>=50 cm    |            1|      3|   229|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |<48 cm     |            0|    110|   229|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |<48 cm     |            1|      5|   229|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |[48-50) cm |            0|     75|   229|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |[48-50) cm |            1|      4|   229|
|0-24 months (no birth wast) |MAL-ED         |PERU         |>=50 cm    |            0|     40|   233|
|0-24 months (no birth wast) |MAL-ED         |PERU         |>=50 cm    |            1|      1|   233|
|0-24 months (no birth wast) |MAL-ED         |PERU         |<48 cm     |            0|     90|   233|
|0-24 months (no birth wast) |MAL-ED         |PERU         |<48 cm     |            1|      2|   233|
|0-24 months (no birth wast) |MAL-ED         |PERU         |[48-50) cm |            0|     99|   233|
|0-24 months (no birth wast) |MAL-ED         |PERU         |[48-50) cm |            1|      1|   233|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |>=50 cm    |            0|      7|    27|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |>=50 cm    |            1|      0|    27|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |<48 cm     |            0|     12|    27|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |<48 cm     |            1|      0|    27|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |[48-50) cm |            0|      8|    27|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |[48-50) cm |            1|      0|    27|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |>=50 cm    |            0|     22|    65|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |>=50 cm    |            1|      1|    65|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |<48 cm     |            0|     18|    65|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |<48 cm     |            1|      0|    65|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |[48-50) cm |            0|     24|    65|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |[48-50) cm |            1|      0|    65|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |>=50 cm    |            0|     20|   124|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |>=50 cm    |            1|      0|   124|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |<48 cm     |            0|     40|   124|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |<48 cm     |            1|      3|   124|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |[48-50) cm |            0|     59|   124|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |[48-50) cm |            1|      2|   124|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |>=50 cm    |            0|     33|   119|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |>=50 cm    |            1|      1|   119|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |<48 cm     |            0|     31|   119|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |<48 cm     |            1|      3|   119|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |[48-50) cm |            0|     46|   119|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |[48-50) cm |            1|      5|   119|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |>=50 cm    |            0|    109|   581|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |>=50 cm    |            1|      7|   581|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |<48 cm     |            0|    215|   581|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |<48 cm     |            1|     26|   581|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |[48-50) cm |            0|    204|   581|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |[48-50) cm |            1|     20|   581|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |>=50 cm    |            0|    168|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |>=50 cm    |            1|      0|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |<48 cm     |            0|    280|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |<48 cm     |            1|     10|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |[48-50) cm |            0|    286|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |[48-50) cm |            1|     10|   754|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |>=50 cm    |            0|  15120| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |>=50 cm    |            1|    177| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |<48 cm     |            0|    186| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |<48 cm     |            1|      3| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |[48-50) cm |            0|   1369| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |[48-50) cm |            1|     24| 16879|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |>=50 cm    |            0|    164|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |>=50 cm    |            1|      2|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |<48 cm     |            0|    230|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |<48 cm     |            1|      9|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |[48-50) cm |            0|    274|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |[48-50) cm |            1|      8|   687|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |>=50 cm    |            0|      9|    41|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |>=50 cm    |            1|      1|    41|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |<48 cm     |            0|     17|    41|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |<48 cm     |            1|      1|    41|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |[48-50) cm |            0|     12|    41|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |[48-50) cm |            1|      1|    41|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |>=50 cm    |            0|    204|  1489|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |>=50 cm    |            1|     15|  1489|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |<48 cm     |            0|    678|  1489|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |<48 cm     |            1|    117|  1489|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |[48-50) cm |            0|    437|  1489|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |[48-50) cm |            1|     38|  1489|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |>=50 cm    |            0|    114|   390|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |>=50 cm    |            1|     28|   390|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |<48 cm     |            0|     91|   390|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |<48 cm     |            1|     20|   390|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |[48-50) cm |            0|    110|   390|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |[48-50) cm |            1|     27|   390|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |>=50 cm    |            0|   3885| 13501|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |>=50 cm    |            1|    103| 13501|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |<48 cm     |            0|   4106| 13501|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |<48 cm     |            1|    179| 13501|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |[48-50) cm |            0|   5034| 13501|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |[48-50) cm |            1|    194| 13501|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |>=50 cm    |            0|     12|   101|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |>=50 cm    |            1|      3|   101|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |<48 cm     |            0|     38|   101|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |<48 cm     |            1|      8|   101|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |[48-50) cm |            0|     35|   101|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |[48-50) cm |            1|      5|   101|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |>=50 cm    |            0|      1|    17|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |>=50 cm    |            1|      0|    17|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |<48 cm     |            0|     11|    17|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |<48 cm     |            1|      0|    17|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |[48-50) cm |            0|      5|    17|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |[48-50) cm |            1|      0|    17|
|0-6 months (no birth wast)  |COHORTS        |INDIA        |>=50 cm    |            0|   1279|  6052|
|0-6 months (no birth wast)  |COHORTS        |INDIA        |>=50 cm    |            1|     17|  6052|
|0-6 months (no birth wast)  |COHORTS        |INDIA        |<48 cm     |            0|   2457|  6052|
|0-6 months (no birth wast)  |COHORTS        |INDIA        |<48 cm     |            1|     49|  6052|
|0-6 months (no birth wast)  |COHORTS        |INDIA        |[48-50) cm |            0|   2198|  6052|
|0-6 months (no birth wast)  |COHORTS        |INDIA        |[48-50) cm |            1|     52|  6052|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA    |>=50 cm    |            0|    405|   793|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA    |>=50 cm    |            1|      0|   793|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA    |<48 cm     |            0|    150|   793|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA    |<48 cm     |            1|      1|   793|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA    |[48-50) cm |            0|    236|   793|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA    |[48-50) cm |            1|      1|   793|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES  |>=50 cm    |            0|   1086|  2990|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES  |>=50 cm    |            1|     27|  2990|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES  |<48 cm     |            0|    723|  2990|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES  |<48 cm     |            1|     12|  2990|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES  |[48-50) cm |            0|   1115|  2990|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES  |[48-50) cm |            1|     27|  2990|
|0-6 months (no birth wast)  |CONTENT        |PERU         |>=50 cm    |            0|      1|     2|
|0-6 months (no birth wast)  |CONTENT        |PERU         |>=50 cm    |            1|      0|     2|
|0-6 months (no birth wast)  |CONTENT        |PERU         |<48 cm     |            0|      1|     2|
|0-6 months (no birth wast)  |CONTENT        |PERU         |<48 cm     |            1|      0|     2|
|0-6 months (no birth wast)  |CONTENT        |PERU         |[48-50) cm |            0|      0|     2|
|0-6 months (no birth wast)  |CONTENT        |PERU         |[48-50) cm |            1|      0|     2|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |>=50 cm    |            0|     20|   238|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |>=50 cm    |            1|      2|   238|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |<48 cm     |            0|    163|   238|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |<48 cm     |            1|      8|   238|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |[48-50) cm |            0|     45|   238|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |[48-50) cm |            1|      0|   238|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |>=50 cm    |            0|     90|   641|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |>=50 cm    |            1|      4|   641|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |<48 cm     |            0|    338|   641|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |<48 cm     |            1|     15|   641|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |[48-50) cm |            0|    182|   641|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |[48-50) cm |            1|     12|   641|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |>=50 cm    |            0|   1165| 21725|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |>=50 cm    |            1|     26| 21725|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |<48 cm     |            0|  15306| 21725|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |<48 cm     |            1|    250| 21725|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |[48-50) cm |            0|   4869| 21725|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |[48-50) cm |            1|    109| 21725|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |>=50 cm    |            0|   1205|  4359|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |>=50 cm    |            1|      4|  4359|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |<48 cm     |            0|   2082|  4359|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |<48 cm     |            1|     11|  4359|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |[48-50) cm |            0|   1051|  4359|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |[48-50) cm |            1|      6|  4359|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |>=50 cm    |            0|    726|  1533|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |>=50 cm    |            1|     25|  1533|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |<48 cm     |            0|    278|  1533|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |<48 cm     |            1|     14|  1533|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |[48-50) cm |            0|    463|  1533|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |[48-50) cm |            1|     27|  1533|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |>=50 cm    |            0|      9|    47|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |>=50 cm    |            1|      0|    47|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |<48 cm     |            0|     22|    47|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |<48 cm     |            1|      0|    47|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |[48-50) cm |            0|     14|    47|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |[48-50) cm |            1|      2|    47|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |>=50 cm    |            0|     32|   228|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |>=50 cm    |            1|      3|   228|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |<48 cm     |            0|    113|   228|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |<48 cm     |            1|      1|   228|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |[48-50) cm |            0|     76|   228|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |[48-50) cm |            1|      3|   228|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |>=50 cm    |            0|     40|   233|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |>=50 cm    |            1|      1|   233|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |<48 cm     |            0|     92|   233|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |<48 cm     |            1|      0|   233|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |[48-50) cm |            0|    100|   233|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |[48-50) cm |            1|      0|   233|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |>=50 cm    |            0|      7|    27|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |>=50 cm    |            1|      0|    27|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |<48 cm     |            0|     12|    27|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |<48 cm     |            1|      0|    27|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |[48-50) cm |            0|      8|    27|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |[48-50) cm |            1|      0|    27|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |>=50 cm    |            0|     22|    65|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |>=50 cm    |            1|      1|    65|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |<48 cm     |            0|     18|    65|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |<48 cm     |            1|      0|    65|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |[48-50) cm |            0|     24|    65|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |[48-50) cm |            1|      0|    65|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |>=50 cm    |            0|     20|   124|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |>=50 cm    |            1|      0|   124|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |<48 cm     |            0|     42|   124|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |<48 cm     |            1|      1|   124|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |[48-50) cm |            0|     60|   124|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |[48-50) cm |            1|      1|   124|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |>=50 cm    |            0|     33|   118|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |>=50 cm    |            1|      1|   118|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |<48 cm     |            0|     33|   118|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |<48 cm     |            1|      1|   118|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |[48-50) cm |            0|     50|   118|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |[48-50) cm |            1|      0|   118|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |>=50 cm    |            0|    113|   564|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |>=50 cm    |            1|      1|   564|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |<48 cm     |            0|    229|   564|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |<48 cm     |            1|      1|   564|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |[48-50) cm |            0|    214|   564|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |[48-50) cm |            1|      6|   564|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |>=50 cm    |            0|    167|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |>=50 cm    |            1|      0|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |<48 cm     |            0|    288|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |<48 cm     |            1|      0|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |[48-50) cm |            0|    293|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |[48-50) cm |            1|      1|   749|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |>=50 cm    |            0|  14949| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |>=50 cm    |            1|    165| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |<48 cm     |            0|    186| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |<48 cm     |            1|      3| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |[48-50) cm |            0|   1366| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |[48-50) cm |            1|     24| 16693|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |>=50 cm    |            0|    165|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |>=50 cm    |            1|      1|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |<48 cm     |            0|    235|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |<48 cm     |            1|      2|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |[48-50) cm |            0|    277|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |[48-50) cm |            1|      3|   683|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |>=50 cm    |            0|      9|    41|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |>=50 cm    |            1|      1|    41|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |<48 cm     |            0|     18|    41|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |<48 cm     |            1|      0|    41|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |[48-50) cm |            0|     12|    41|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |[48-50) cm |            1|      1|    41|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |>=50 cm    |            0|    214|  1463|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |>=50 cm    |            1|      2|  1463|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |<48 cm     |            0|    745|  1463|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |<48 cm     |            1|     33|  1463|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |[48-50) cm |            0|    458|  1463|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |[48-50) cm |            1|     11|  1463|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |>=50 cm    |            0|    111|   372|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |>=50 cm    |            1|     20|   372|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |<48 cm     |            0|     97|   372|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |<48 cm     |            1|     12|   372|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |[48-50) cm |            0|    107|   372|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |[48-50) cm |            1|     25|   372|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |>=50 cm    |            0|   3875| 13254|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |>=50 cm    |            1|     34| 13254|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |<48 cm     |            0|   4150| 13254|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |<48 cm     |            1|     43| 13254|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |[48-50) cm |            0|   5097| 13254|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |[48-50) cm |            1|     55| 13254|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |>=50 cm    |            0|     16|   106|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |>=50 cm    |            1|      0|   106|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |<48 cm     |            0|     45|   106|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |<48 cm     |            1|      5|   106|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |[48-50) cm |            0|     39|   106|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |[48-50) cm |            1|      1|   106|
|6-24 months                 |CMIN           |BANGLADESH   |>=50 cm    |            0|      0|    12|
|6-24 months                 |CMIN           |BANGLADESH   |>=50 cm    |            1|      0|    12|
|6-24 months                 |CMIN           |BANGLADESH   |<48 cm     |            0|      7|    12|
|6-24 months                 |CMIN           |BANGLADESH   |<48 cm     |            1|      0|    12|
|6-24 months                 |CMIN           |BANGLADESH   |[48-50) cm |            0|      5|    12|
|6-24 months                 |CMIN           |BANGLADESH   |[48-50) cm |            1|      0|    12|
|6-24 months                 |COHORTS        |INDIA        |>=50 cm    |            0|   1319|  6169|
|6-24 months                 |COHORTS        |INDIA        |>=50 cm    |            1|     23|  6169|
|6-24 months                 |COHORTS        |INDIA        |<48 cm     |            0|   2407|  6169|
|6-24 months                 |COHORTS        |INDIA        |<48 cm     |            1|    139|  6169|
|6-24 months                 |COHORTS        |INDIA        |[48-50) cm |            0|   2210|  6169|
|6-24 months                 |COHORTS        |INDIA        |[48-50) cm |            1|     71|  6169|
|6-24 months                 |COHORTS        |GUATEMALA    |>=50 cm    |            0|    360|   727|
|6-24 months                 |COHORTS        |GUATEMALA    |>=50 cm    |            1|      2|   727|
|6-24 months                 |COHORTS        |GUATEMALA    |<48 cm     |            0|    136|   727|
|6-24 months                 |COHORTS        |GUATEMALA    |<48 cm     |            1|      6|   727|
|6-24 months                 |COHORTS        |GUATEMALA    |[48-50) cm |            0|    221|   727|
|6-24 months                 |COHORTS        |GUATEMALA    |[48-50) cm |            1|      2|   727|
|6-24 months                 |COHORTS        |PHILIPPINES  |>=50 cm    |            0|    986|  2802|
|6-24 months                 |COHORTS        |PHILIPPINES  |>=50 cm    |            1|     51|  2802|
|6-24 months                 |COHORTS        |PHILIPPINES  |<48 cm     |            0|    644|  2802|
|6-24 months                 |COHORTS        |PHILIPPINES  |<48 cm     |            1|     55|  2802|
|6-24 months                 |COHORTS        |PHILIPPINES  |[48-50) cm |            0|    984|  2802|
|6-24 months                 |COHORTS        |PHILIPPINES  |[48-50) cm |            1|     82|  2802|
|6-24 months                 |CONTENT        |PERU         |>=50 cm    |            0|      1|     2|
|6-24 months                 |CONTENT        |PERU         |>=50 cm    |            1|      0|     2|
|6-24 months                 |CONTENT        |PERU         |<48 cm     |            0|      1|     2|
|6-24 months                 |CONTENT        |PERU         |<48 cm     |            1|      0|     2|
|6-24 months                 |CONTENT        |PERU         |[48-50) cm |            0|      0|     2|
|6-24 months                 |CONTENT        |PERU         |[48-50) cm |            1|      0|     2|
|6-24 months                 |EE             |PAKISTAN     |>=50 cm    |            0|     19|   237|
|6-24 months                 |EE             |PAKISTAN     |>=50 cm    |            1|      3|   237|
|6-24 months                 |EE             |PAKISTAN     |<48 cm     |            0|    140|   237|
|6-24 months                 |EE             |PAKISTAN     |<48 cm     |            1|     30|   237|
|6-24 months                 |EE             |PAKISTAN     |[48-50) cm |            0|     42|   237|
|6-24 months                 |EE             |PAKISTAN     |[48-50) cm |            1|      3|   237|
|6-24 months                 |GMS-Nepal      |NEPAL        |>=50 cm    |            0|     78|   589|
|6-24 months                 |GMS-Nepal      |NEPAL        |>=50 cm    |            1|     11|   589|
|6-24 months                 |GMS-Nepal      |NEPAL        |<48 cm     |            0|    258|   589|
|6-24 months                 |GMS-Nepal      |NEPAL        |<48 cm     |            1|     63|   589|
|6-24 months                 |GMS-Nepal      |NEPAL        |[48-50) cm |            0|    141|   589|
|6-24 months                 |GMS-Nepal      |NEPAL        |[48-50) cm |            1|     38|   589|
|6-24 months                 |JiVitA-3       |BANGLADESH   |>=50 cm    |            0|    809| 14310|
|6-24 months                 |JiVitA-3       |BANGLADESH   |>=50 cm    |            1|     18| 14310|
|6-24 months                 |JiVitA-3       |BANGLADESH   |<48 cm     |            0|   9750| 14310|
|6-24 months                 |JiVitA-3       |BANGLADESH   |<48 cm     |            1|    375| 14310|
|6-24 months                 |JiVitA-3       |BANGLADESH   |[48-50) cm |            0|   3277| 14310|
|6-24 months                 |JiVitA-3       |BANGLADESH   |[48-50) cm |            1|     81| 14310|
|6-24 months                 |JiVitA-4       |BANGLADESH   |>=50 cm    |            0|   1180|  4474|
|6-24 months                 |JiVitA-4       |BANGLADESH   |>=50 cm    |            1|     45|  4474|
|6-24 months                 |JiVitA-4       |BANGLADESH   |<48 cm     |            0|   2051|  4474|
|6-24 months                 |JiVitA-4       |BANGLADESH   |<48 cm     |            1|    121|  4474|
|6-24 months                 |JiVitA-4       |BANGLADESH   |[48-50) cm |            0|   1045|  4474|
|6-24 months                 |JiVitA-4       |BANGLADESH   |[48-50) cm |            1|     32|  4474|
|6-24 months                 |Keneba         |GAMBIA       |>=50 cm    |            0|    664|  1487|
|6-24 months                 |Keneba         |GAMBIA       |>=50 cm    |            1|     79|  1487|
|6-24 months                 |Keneba         |GAMBIA       |<48 cm     |            0|    235|  1487|
|6-24 months                 |Keneba         |GAMBIA       |<48 cm     |            1|     33|  1487|
|6-24 months                 |Keneba         |GAMBIA       |[48-50) cm |            0|    420|  1487|
|6-24 months                 |Keneba         |GAMBIA       |[48-50) cm |            1|     56|  1487|
|6-24 months                 |MAL-ED         |INDIA        |>=50 cm    |            0|      7|    41|
|6-24 months                 |MAL-ED         |INDIA        |>=50 cm    |            1|      1|    41|
|6-24 months                 |MAL-ED         |INDIA        |<48 cm     |            0|     19|    41|
|6-24 months                 |MAL-ED         |INDIA        |<48 cm     |            1|      1|    41|
|6-24 months                 |MAL-ED         |INDIA        |[48-50) cm |            0|     13|    41|
|6-24 months                 |MAL-ED         |INDIA        |[48-50) cm |            1|      0|    41|
|6-24 months                 |MAL-ED         |BANGLADESH   |>=50 cm    |            0|     35|   212|
|6-24 months                 |MAL-ED         |BANGLADESH   |>=50 cm    |            1|      0|   212|
|6-24 months                 |MAL-ED         |BANGLADESH   |<48 cm     |            0|     98|   212|
|6-24 months                 |MAL-ED         |BANGLADESH   |<48 cm     |            1|      4|   212|
|6-24 months                 |MAL-ED         |BANGLADESH   |[48-50) cm |            0|     74|   212|
|6-24 months                 |MAL-ED         |BANGLADESH   |[48-50) cm |            1|      1|   212|
|6-24 months                 |MAL-ED         |PERU         |>=50 cm    |            0|     38|   213|
|6-24 months                 |MAL-ED         |PERU         |>=50 cm    |            1|      0|   213|
|6-24 months                 |MAL-ED         |PERU         |<48 cm     |            0|     86|   213|
|6-24 months                 |MAL-ED         |PERU         |<48 cm     |            1|      2|   213|
|6-24 months                 |MAL-ED         |PERU         |[48-50) cm |            0|     86|   213|
|6-24 months                 |MAL-ED         |PERU         |[48-50) cm |            1|      1|   213|
|6-24 months                 |MAL-ED         |NEPAL        |>=50 cm    |            0|      7|    26|
|6-24 months                 |MAL-ED         |NEPAL        |>=50 cm    |            1|      0|    26|
|6-24 months                 |MAL-ED         |NEPAL        |<48 cm     |            0|     11|    26|
|6-24 months                 |MAL-ED         |NEPAL        |<48 cm     |            1|      0|    26|
|6-24 months                 |MAL-ED         |NEPAL        |[48-50) cm |            0|      8|    26|
|6-24 months                 |MAL-ED         |NEPAL        |[48-50) cm |            1|      0|    26|
|6-24 months                 |MAL-ED         |BRAZIL       |>=50 cm    |            0|     20|    58|
|6-24 months                 |MAL-ED         |BRAZIL       |>=50 cm    |            1|      0|    58|
|6-24 months                 |MAL-ED         |BRAZIL       |<48 cm     |            0|     16|    58|
|6-24 months                 |MAL-ED         |BRAZIL       |<48 cm     |            1|      0|    58|
|6-24 months                 |MAL-ED         |BRAZIL       |[48-50) cm |            0|     22|    58|
|6-24 months                 |MAL-ED         |BRAZIL       |[48-50) cm |            1|      0|    58|
|6-24 months                 |MAL-ED         |TANZANIA     |>=50 cm    |            0|     20|   120|
|6-24 months                 |MAL-ED         |TANZANIA     |>=50 cm    |            1|      0|   120|
|6-24 months                 |MAL-ED         |TANZANIA     |<48 cm     |            0|     39|   120|
|6-24 months                 |MAL-ED         |TANZANIA     |<48 cm     |            1|      2|   120|
|6-24 months                 |MAL-ED         |TANZANIA     |[48-50) cm |            0|     58|   120|
|6-24 months                 |MAL-ED         |TANZANIA     |[48-50) cm |            1|      1|   120|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |>=50 cm    |            0|     30|    97|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |>=50 cm    |            1|      0|    97|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |<48 cm     |            0|     24|    97|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |<48 cm     |            1|      2|    97|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |[48-50) cm |            0|     35|    97|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |[48-50) cm |            1|      6|    97|
|6-24 months                 |NIH-Birth      |BANGLADESH   |>=50 cm    |            0|    100|   522|
|6-24 months                 |NIH-Birth      |BANGLADESH   |>=50 cm    |            1|      7|   522|
|6-24 months                 |NIH-Birth      |BANGLADESH   |<48 cm     |            0|    187|   522|
|6-24 months                 |NIH-Birth      |BANGLADESH   |<48 cm     |            1|     26|   522|
|6-24 months                 |NIH-Birth      |BANGLADESH   |[48-50) cm |            0|    187|   522|
|6-24 months                 |NIH-Birth      |BANGLADESH   |[48-50) cm |            1|     15|   522|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |>=50 cm    |            0|    165|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |>=50 cm    |            1|      0|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |<48 cm     |            0|    270|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |<48 cm     |            1|     10|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |[48-50) cm |            0|    275|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |[48-50) cm |            1|     10|   730|
|6-24 months                 |PROBIT         |BELARUS      |>=50 cm    |            0|  15040| 16598|
|6-24 months                 |PROBIT         |BELARUS      |>=50 cm    |            1|     12| 16598|
|6-24 months                 |PROBIT         |BELARUS      |<48 cm     |            0|    179| 16598|
|6-24 months                 |PROBIT         |BELARUS      |<48 cm     |            1|      0| 16598|
|6-24 months                 |PROBIT         |BELARUS      |[48-50) cm |            0|   1367| 16598|
|6-24 months                 |PROBIT         |BELARUS      |[48-50) cm |            1|      0| 16598|
|6-24 months                 |PROVIDE        |BANGLADESH   |>=50 cm    |            0|    148|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |>=50 cm    |            1|      1|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |<48 cm     |            0|    213|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |<48 cm     |            1|      7|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |[48-50) cm |            0|    241|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |[48-50) cm |            1|      5|   615|
|6-24 months                 |ResPak         |PAKISTAN     |>=50 cm    |            0|      9|    32|
|6-24 months                 |ResPak         |PAKISTAN     |>=50 cm    |            1|      0|    32|
|6-24 months                 |ResPak         |PAKISTAN     |<48 cm     |            0|     13|    32|
|6-24 months                 |ResPak         |PAKISTAN     |<48 cm     |            1|      1|    32|
|6-24 months                 |ResPak         |PAKISTAN     |[48-50) cm |            0|      9|    32|
|6-24 months                 |ResPak         |PAKISTAN     |[48-50) cm |            1|      0|    32|
|6-24 months                 |SAS-CompFeed   |INDIA        |>=50 cm    |            0|    196|  1376|
|6-24 months                 |SAS-CompFeed   |INDIA        |>=50 cm    |            1|     14|  1376|
|6-24 months                 |SAS-CompFeed   |INDIA        |<48 cm     |            0|    638|  1376|
|6-24 months                 |SAS-CompFeed   |INDIA        |<48 cm     |            1|     89|  1376|
|6-24 months                 |SAS-CompFeed   |INDIA        |[48-50) cm |            0|    411|  1376|
|6-24 months                 |SAS-CompFeed   |INDIA        |[48-50) cm |            1|     28|  1376|
|6-24 months                 |Vellore Crypto |INDIA        |>=50 cm    |            0|    133|   391|
|6-24 months                 |Vellore Crypto |INDIA        |>=50 cm    |            1|      9|   391|
|6-24 months                 |Vellore Crypto |INDIA        |<48 cm     |            0|    102|   391|
|6-24 months                 |Vellore Crypto |INDIA        |<48 cm     |            1|      9|   391|
|6-24 months                 |Vellore Crypto |INDIA        |[48-50) cm |            0|    133|   391|
|6-24 months                 |Vellore Crypto |INDIA        |[48-50) cm |            1|      5|   391|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |>=50 cm    |            0|   3001| 10690|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |>=50 cm    |            1|     71| 10690|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |<48 cm     |            0|   3285| 10690|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |<48 cm     |            1|    139| 10690|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |[48-50) cm |            0|   4050| 10690|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |[48-50) cm |            1|    144| 10690|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: Vellore Crypto, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: CONTENT, country: PERU
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

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
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


