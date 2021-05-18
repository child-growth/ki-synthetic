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

**Intervention Variable:** birthlen

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid        |country      |birthlen   | ever_wasted| n_cell|     n|
|:---------------------------|:--------------|:------------|:----------|-----------:|------:|-----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |>=50 cm    |           0|     11|   104|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |>=50 cm    |           1|      5|   104|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |<48 cm     |           0|     22|   104|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |<48 cm     |           1|     26|   104|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |[48-50) cm |           0|     18|   104|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |[48-50) cm |           1|     22|   104|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |>=50 cm    |           0|      1|    17|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |>=50 cm    |           1|      0|    17|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |<48 cm     |           0|      7|    17|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |<48 cm     |           1|      4|    17|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |[48-50) cm |           0|      4|    17|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |[48-50) cm |           1|      1|    17|
|0-24 months (no birth wast) |COHORTS        |INDIA        |>=50 cm    |           0|   1185|  6400|
|0-24 months (no birth wast) |COHORTS        |INDIA        |>=50 cm    |           1|    204|  6400|
|0-24 months (no birth wast) |COHORTS        |INDIA        |<48 cm     |           0|   2044|  6400|
|0-24 months (no birth wast) |COHORTS        |INDIA        |<48 cm     |           1|    600|  6400|
|0-24 months (no birth wast) |COHORTS        |INDIA        |[48-50) cm |           0|   1924|  6400|
|0-24 months (no birth wast) |COHORTS        |INDIA        |[48-50) cm |           1|    443|  6400|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA    |>=50 cm    |           0|    382|   821|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA    |>=50 cm    |           1|     38|   821|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA    |<48 cm     |           0|    130|   821|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA    |<48 cm     |           1|     25|   821|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA    |[48-50) cm |           0|    219|   821|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA    |[48-50) cm |           1|     27|   821|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES  |>=50 cm    |           0|    848|  3011|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES  |>=50 cm    |           1|    273|  3011|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES  |<48 cm     |           0|    454|  3011|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES  |<48 cm     |           1|    286|  3011|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES  |[48-50) cm |           0|    795|  3011|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES  |[48-50) cm |           1|    355|  3011|
|0-24 months (no birth wast) |CONTENT        |PERU         |>=50 cm    |           0|      1|     2|
|0-24 months (no birth wast) |CONTENT        |PERU         |>=50 cm    |           1|      0|     2|
|0-24 months (no birth wast) |CONTENT        |PERU         |<48 cm     |           0|      1|     2|
|0-24 months (no birth wast) |CONTENT        |PERU         |<48 cm     |           1|      0|     2|
|0-24 months (no birth wast) |CONTENT        |PERU         |[48-50) cm |           0|      0|     2|
|0-24 months (no birth wast) |CONTENT        |PERU         |[48-50) cm |           1|      0|     2|
|0-24 months (no birth wast) |EE             |PAKISTAN     |>=50 cm    |           0|     11|   240|
|0-24 months (no birth wast) |EE             |PAKISTAN     |>=50 cm    |           1|     11|   240|
|0-24 months (no birth wast) |EE             |PAKISTAN     |<48 cm     |           0|     69|   240|
|0-24 months (no birth wast) |EE             |PAKISTAN     |<48 cm     |           1|    103|   240|
|0-24 months (no birth wast) |EE             |PAKISTAN     |[48-50) cm |           0|     24|   240|
|0-24 months (no birth wast) |EE             |PAKISTAN     |[48-50) cm |           1|     22|   240|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |>=50 cm    |           0|     61|   659|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |>=50 cm    |           1|     36|   659|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |<48 cm     |           0|    171|   659|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |<48 cm     |           1|    190|   659|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |[48-50) cm |           0|     97|   659|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |[48-50) cm |           1|    104|   659|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |>=50 cm    |           0|    991| 21905|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |>=50 cm    |           1|    213| 21905|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |<48 cm     |           0|  12910| 21905|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |<48 cm     |           1|   2777| 21905|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |[48-50) cm |           0|   4155| 21905|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |[48-50) cm |           1|    859| 21905|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |>=50 cm    |           0|    951|  4464|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |>=50 cm    |           1|    279|  4464|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |<48 cm     |           0|   1498|  4464|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |<48 cm     |           1|    663|  4464|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |[48-50) cm |           0|    826|  4464|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |[48-50) cm |           1|    247|  4464|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |>=50 cm    |           0|    476|  1547|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |>=50 cm    |           1|    283|  1547|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |<48 cm     |           0|    173|  1547|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |<48 cm     |           1|    120|  1547|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |[48-50) cm |           0|    300|  1547|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |[48-50) cm |           1|    195|  1547|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |>=50 cm    |           0|      6|    47|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |>=50 cm    |           1|      3|    47|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |<48 cm     |           0|     13|    47|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |<48 cm     |           1|      9|    47|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |[48-50) cm |           0|      8|    47|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |[48-50) cm |           1|      8|    47|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |>=50 cm    |           0|     27|   229|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |>=50 cm    |           1|      8|   229|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |<48 cm     |           0|     84|   229|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |<48 cm     |           1|     31|   229|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |[48-50) cm |           0|     64|   229|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |[48-50) cm |           1|     15|   229|
|0-24 months (no birth wast) |MAL-ED         |PERU         |>=50 cm    |           0|     38|   233|
|0-24 months (no birth wast) |MAL-ED         |PERU         |>=50 cm    |           1|      3|   233|
|0-24 months (no birth wast) |MAL-ED         |PERU         |<48 cm     |           0|     82|   233|
|0-24 months (no birth wast) |MAL-ED         |PERU         |<48 cm     |           1|     10|   233|
|0-24 months (no birth wast) |MAL-ED         |PERU         |[48-50) cm |           0|     94|   233|
|0-24 months (no birth wast) |MAL-ED         |PERU         |[48-50) cm |           1|      6|   233|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |>=50 cm    |           0|      6|    27|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |>=50 cm    |           1|      1|    27|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |<48 cm     |           0|      9|    27|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |<48 cm     |           1|      3|    27|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |[48-50) cm |           0|      6|    27|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |[48-50) cm |           1|      2|    27|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |>=50 cm    |           0|     22|    65|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |>=50 cm    |           1|      1|    65|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |<48 cm     |           0|     16|    65|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |<48 cm     |           1|      2|    65|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |[48-50) cm |           0|     23|    65|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |[48-50) cm |           1|      1|    65|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |>=50 cm    |           0|     18|   124|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |>=50 cm    |           1|      2|   124|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |<48 cm     |           0|     30|   124|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |<48 cm     |           1|     13|   124|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |[48-50) cm |           0|     54|   124|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |[48-50) cm |           1|      7|   124|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |>=50 cm    |           0|     28|   119|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |>=50 cm    |           1|      6|   119|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |<48 cm     |           0|     30|   119|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |<48 cm     |           1|      4|   119|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |[48-50) cm |           0|     45|   119|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |[48-50) cm |           1|      6|   119|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |>=50 cm    |           0|     92|   581|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |>=50 cm    |           1|     24|   581|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |<48 cm     |           0|    160|   581|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |<48 cm     |           1|     81|   581|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |[48-50) cm |           0|    156|   581|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |[48-50) cm |           1|     68|   581|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |>=50 cm    |           0|    149|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |>=50 cm    |           1|     19|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |<48 cm     |           0|    243|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |<48 cm     |           1|     47|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |[48-50) cm |           0|    254|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |[48-50) cm |           1|     42|   754|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |>=50 cm    |           0|  14289| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |>=50 cm    |           1|   1008| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |<48 cm     |           0|    174| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |<48 cm     |           1|     15| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |[48-50) cm |           0|   1268| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |[48-50) cm |           1|    125| 16879|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |>=50 cm    |           0|    149|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |>=50 cm    |           1|     17|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |<48 cm     |           0|    177|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |<48 cm     |           1|     62|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |[48-50) cm |           0|    239|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |[48-50) cm |           1|     43|   687|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |>=50 cm    |           0|      6|    41|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |>=50 cm    |           1|      4|    41|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |<48 cm     |           0|     10|    41|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |<48 cm     |           1|      8|    41|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |[48-50) cm |           0|      8|    41|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |[48-50) cm |           1|      5|    41|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |>=50 cm    |           0|    161|  1489|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |>=50 cm    |           1|     58|  1489|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |<48 cm     |           0|    475|  1489|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |<48 cm     |           1|    320|  1489|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |[48-50) cm |           0|    313|  1489|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |[48-50) cm |           1|    162|  1489|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |>=50 cm    |           0|     64|   390|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |>=50 cm    |           1|     78|   390|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |<48 cm     |           0|     48|   390|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |<48 cm     |           1|     63|   390|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |[48-50) cm |           0|     71|   390|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |[48-50) cm |           1|     66|   390|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |>=50 cm    |           0|   3676| 13501|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |>=50 cm    |           1|    312| 13501|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |<48 cm     |           0|   3764| 13501|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |<48 cm     |           1|    521| 13501|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |[48-50) cm |           0|   4684| 13501|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |[48-50) cm |           1|    544| 13501|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |>=50 cm    |           0|     10|   101|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |>=50 cm    |           1|      5|   101|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |<48 cm     |           0|     27|   101|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |<48 cm     |           1|     19|   101|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |[48-50) cm |           0|     19|   101|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |[48-50) cm |           1|     21|   101|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |>=50 cm    |           0|      1|    17|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |>=50 cm    |           1|      0|    17|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |<48 cm     |           0|     10|    17|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |<48 cm     |           1|      1|    17|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |[48-50) cm |           0|      5|    17|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |[48-50) cm |           1|      0|    17|
|0-6 months (no birth wast)  |COHORTS        |INDIA        |>=50 cm    |           0|   1189|  6052|
|0-6 months (no birth wast)  |COHORTS        |INDIA        |>=50 cm    |           1|    107|  6052|
|0-6 months (no birth wast)  |COHORTS        |INDIA        |<48 cm     |           0|   2294|  6052|
|0-6 months (no birth wast)  |COHORTS        |INDIA        |<48 cm     |           1|    212|  6052|
|0-6 months (no birth wast)  |COHORTS        |INDIA        |[48-50) cm |           0|   2035|  6052|
|0-6 months (no birth wast)  |COHORTS        |INDIA        |[48-50) cm |           1|    215|  6052|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA    |>=50 cm    |           0|    399|   793|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA    |>=50 cm    |           1|      6|   793|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA    |<48 cm     |           0|    145|   793|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA    |<48 cm     |           1|      6|   793|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA    |[48-50) cm |           0|    231|   793|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA    |[48-50) cm |           1|      6|   793|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES  |>=50 cm    |           0|   1006|  2990|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES  |>=50 cm    |           1|    107|  2990|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES  |<48 cm     |           0|    670|  2990|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES  |<48 cm     |           1|     65|  2990|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES  |[48-50) cm |           0|   1031|  2990|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES  |[48-50) cm |           1|    111|  2990|
|0-6 months (no birth wast)  |CONTENT        |PERU         |>=50 cm    |           0|      1|     2|
|0-6 months (no birth wast)  |CONTENT        |PERU         |>=50 cm    |           1|      0|     2|
|0-6 months (no birth wast)  |CONTENT        |PERU         |<48 cm     |           0|      1|     2|
|0-6 months (no birth wast)  |CONTENT        |PERU         |<48 cm     |           1|      0|     2|
|0-6 months (no birth wast)  |CONTENT        |PERU         |[48-50) cm |           0|      0|     2|
|0-6 months (no birth wast)  |CONTENT        |PERU         |[48-50) cm |           1|      0|     2|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |>=50 cm    |           0|     15|   238|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |>=50 cm    |           1|      7|   238|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |<48 cm     |           0|    135|   238|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |<48 cm     |           1|     36|   238|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |[48-50) cm |           0|     34|   238|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |[48-50) cm |           1|     11|   238|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |>=50 cm    |           0|     77|   641|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |>=50 cm    |           1|     17|   641|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |<48 cm     |           0|    295|   641|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |<48 cm     |           1|     58|   641|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |[48-50) cm |           0|    146|   641|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |[48-50) cm |           1|     48|   641|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |>=50 cm    |           0|   1061| 21725|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |>=50 cm    |           1|    130| 21725|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |<48 cm     |           0|  14524| 21725|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |<48 cm     |           1|   1032| 21725|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |[48-50) cm |           0|   4488| 21725|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |[48-50) cm |           1|    490| 21725|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |>=50 cm    |           0|   1174|  4359|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |>=50 cm    |           1|     35|  4359|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |<48 cm     |           0|   2032|  4359|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |<48 cm     |           1|     61|  4359|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |[48-50) cm |           0|   1027|  4359|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |[48-50) cm |           1|     30|  4359|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |>=50 cm    |           0|    667|  1533|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |>=50 cm    |           1|     84|  1533|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |<48 cm     |           0|    254|  1533|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |<48 cm     |           1|     38|  1533|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |[48-50) cm |           0|    430|  1533|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |[48-50) cm |           1|     60|  1533|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |>=50 cm    |           0|      7|    47|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |>=50 cm    |           1|      2|    47|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |<48 cm     |           0|     20|    47|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |<48 cm     |           1|      2|    47|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |[48-50) cm |           0|     12|    47|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |[48-50) cm |           1|      4|    47|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |>=50 cm    |           0|     32|   228|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |>=50 cm    |           1|      3|   228|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |<48 cm     |           0|    105|   228|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |<48 cm     |           1|      9|   228|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |[48-50) cm |           0|     75|   228|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |[48-50) cm |           1|      4|   228|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |>=50 cm    |           0|     39|   233|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |>=50 cm    |           1|      2|   233|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |<48 cm     |           0|     90|   233|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |<48 cm     |           1|      2|   233|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |[48-50) cm |           0|     99|   233|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |[48-50) cm |           1|      1|   233|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |>=50 cm    |           0|      6|    27|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |>=50 cm    |           1|      1|    27|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |<48 cm     |           0|     11|    27|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |<48 cm     |           1|      1|    27|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |[48-50) cm |           0|      8|    27|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |[48-50) cm |           1|      0|    27|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |>=50 cm    |           0|     22|    65|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |>=50 cm    |           1|      1|    65|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |<48 cm     |           0|     18|    65|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |<48 cm     |           1|      0|    65|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |[48-50) cm |           0|     24|    65|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |[48-50) cm |           1|      0|    65|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |>=50 cm    |           0|     19|   124|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |>=50 cm    |           1|      1|   124|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |<48 cm     |           0|     42|   124|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |<48 cm     |           1|      1|   124|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |[48-50) cm |           0|     59|   124|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |[48-50) cm |           1|      2|   124|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |>=50 cm    |           0|     30|   118|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |>=50 cm    |           1|      4|   118|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |<48 cm     |           0|     32|   118|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |<48 cm     |           1|      2|   118|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |[48-50) cm |           0|     47|   118|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |[48-50) cm |           1|      3|   118|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |>=50 cm    |           0|    108|   564|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |>=50 cm    |           1|      6|   564|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |<48 cm     |           0|    211|   564|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |<48 cm     |           1|     19|   564|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |[48-50) cm |           0|    200|   564|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |[48-50) cm |           1|     20|   564|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |>=50 cm    |           0|    161|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |>=50 cm    |           1|      6|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |<48 cm     |           0|    282|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |<48 cm     |           1|      6|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |[48-50) cm |           0|    286|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |[48-50) cm |           1|      8|   749|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |>=50 cm    |           0|  14212| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |>=50 cm    |           1|    902| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |<48 cm     |           0|    178| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |<48 cm     |           1|     11| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |[48-50) cm |           0|   1281| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |[48-50) cm |           1|    109| 16693|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |>=50 cm    |           0|    157|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |>=50 cm    |           1|      9|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |<48 cm     |           0|    221|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |<48 cm     |           1|     16|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |[48-50) cm |           0|    268|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |[48-50) cm |           1|     12|   683|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |>=50 cm    |           0|      7|    41|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |>=50 cm    |           1|      3|    41|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |<48 cm     |           0|     15|    41|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |<48 cm     |           1|      3|    41|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |[48-50) cm |           0|      9|    41|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |[48-50) cm |           1|      4|    41|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |>=50 cm    |           0|    196|  1463|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |>=50 cm    |           1|     20|  1463|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |<48 cm     |           0|    670|  1463|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |<48 cm     |           1|    108|  1463|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |[48-50) cm |           0|    412|  1463|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |[48-50) cm |           1|     57|  1463|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |>=50 cm    |           0|     83|   372|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |>=50 cm    |           1|     48|   372|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |<48 cm     |           0|     75|   372|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |<48 cm     |           1|     34|   372|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |[48-50) cm |           0|     84|   372|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |[48-50) cm |           1|     48|   372|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |>=50 cm    |           0|   3810| 13254|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |>=50 cm    |           1|     99| 13254|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |<48 cm     |           0|   4061| 13254|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |<48 cm     |           1|    132| 13254|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |[48-50) cm |           0|   4956| 13254|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |[48-50) cm |           1|    196| 13254|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |>=50 cm    |           0|     16|   106|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |>=50 cm    |           1|      0|   106|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |<48 cm     |           0|     38|   106|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |<48 cm     |           1|     12|   106|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |[48-50) cm |           0|     32|   106|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |[48-50) cm |           1|      8|   106|
|6-24 months                 |CMIN           |BANGLADESH   |>=50 cm    |           0|      0|    12|
|6-24 months                 |CMIN           |BANGLADESH   |>=50 cm    |           1|      0|    12|
|6-24 months                 |CMIN           |BANGLADESH   |<48 cm     |           0|      4|    12|
|6-24 months                 |CMIN           |BANGLADESH   |<48 cm     |           1|      3|    12|
|6-24 months                 |CMIN           |BANGLADESH   |[48-50) cm |           0|      4|    12|
|6-24 months                 |CMIN           |BANGLADESH   |[48-50) cm |           1|      1|    12|
|6-24 months                 |COHORTS        |INDIA        |>=50 cm    |           0|   1235|  6169|
|6-24 months                 |COHORTS        |INDIA        |>=50 cm    |           1|    107|  6169|
|6-24 months                 |COHORTS        |INDIA        |<48 cm     |           0|   2132|  6169|
|6-24 months                 |COHORTS        |INDIA        |<48 cm     |           1|    414|  6169|
|6-24 months                 |COHORTS        |INDIA        |[48-50) cm |           0|   2039|  6169|
|6-24 months                 |COHORTS        |INDIA        |[48-50) cm |           1|    242|  6169|
|6-24 months                 |COHORTS        |GUATEMALA    |>=50 cm    |           0|    327|   727|
|6-24 months                 |COHORTS        |GUATEMALA    |>=50 cm    |           1|     35|   727|
|6-24 months                 |COHORTS        |GUATEMALA    |<48 cm     |           0|    123|   727|
|6-24 months                 |COHORTS        |GUATEMALA    |<48 cm     |           1|     19|   727|
|6-24 months                 |COHORTS        |GUATEMALA    |[48-50) cm |           0|    200|   727|
|6-24 months                 |COHORTS        |GUATEMALA    |[48-50) cm |           1|     23|   727|
|6-24 months                 |COHORTS        |PHILIPPINES  |>=50 cm    |           0|    829|  2802|
|6-24 months                 |COHORTS        |PHILIPPINES  |>=50 cm    |           1|    208|  2802|
|6-24 months                 |COHORTS        |PHILIPPINES  |<48 cm     |           0|    443|  2802|
|6-24 months                 |COHORTS        |PHILIPPINES  |<48 cm     |           1|    256|  2802|
|6-24 months                 |COHORTS        |PHILIPPINES  |[48-50) cm |           0|    783|  2802|
|6-24 months                 |COHORTS        |PHILIPPINES  |[48-50) cm |           1|    283|  2802|
|6-24 months                 |CONTENT        |PERU         |>=50 cm    |           0|      1|     2|
|6-24 months                 |CONTENT        |PERU         |>=50 cm    |           1|      0|     2|
|6-24 months                 |CONTENT        |PERU         |<48 cm     |           0|      1|     2|
|6-24 months                 |CONTENT        |PERU         |<48 cm     |           1|      0|     2|
|6-24 months                 |CONTENT        |PERU         |[48-50) cm |           0|      0|     2|
|6-24 months                 |CONTENT        |PERU         |[48-50) cm |           1|      0|     2|
|6-24 months                 |EE             |PAKISTAN     |>=50 cm    |           0|     15|   237|
|6-24 months                 |EE             |PAKISTAN     |>=50 cm    |           1|      7|   237|
|6-24 months                 |EE             |PAKISTAN     |<48 cm     |           0|     82|   237|
|6-24 months                 |EE             |PAKISTAN     |<48 cm     |           1|     88|   237|
|6-24 months                 |EE             |PAKISTAN     |[48-50) cm |           0|     30|   237|
|6-24 months                 |EE             |PAKISTAN     |[48-50) cm |           1|     15|   237|
|6-24 months                 |GMS-Nepal      |NEPAL        |>=50 cm    |           0|     62|   589|
|6-24 months                 |GMS-Nepal      |NEPAL        |>=50 cm    |           1|     27|   589|
|6-24 months                 |GMS-Nepal      |NEPAL        |<48 cm     |           0|    157|   589|
|6-24 months                 |GMS-Nepal      |NEPAL        |<48 cm     |           1|    164|   589|
|6-24 months                 |GMS-Nepal      |NEPAL        |[48-50) cm |           0|     92|   589|
|6-24 months                 |GMS-Nepal      |NEPAL        |[48-50) cm |           1|     87|   589|
|6-24 months                 |JiVitA-3       |BANGLADESH   |>=50 cm    |           0|    729| 14310|
|6-24 months                 |JiVitA-3       |BANGLADESH   |>=50 cm    |           1|     98| 14310|
|6-24 months                 |JiVitA-3       |BANGLADESH   |<48 cm     |           0|   8260| 14310|
|6-24 months                 |JiVitA-3       |BANGLADESH   |<48 cm     |           1|   1865| 14310|
|6-24 months                 |JiVitA-3       |BANGLADESH   |[48-50) cm |           0|   2929| 14310|
|6-24 months                 |JiVitA-3       |BANGLADESH   |[48-50) cm |           1|    429| 14310|
|6-24 months                 |JiVitA-4       |BANGLADESH   |>=50 cm    |           0|    965|  4474|
|6-24 months                 |JiVitA-4       |BANGLADESH   |>=50 cm    |           1|    260|  4474|
|6-24 months                 |JiVitA-4       |BANGLADESH   |<48 cm     |           0|   1537|  4474|
|6-24 months                 |JiVitA-4       |BANGLADESH   |<48 cm     |           1|    635|  4474|
|6-24 months                 |JiVitA-4       |BANGLADESH   |[48-50) cm |           0|    849|  4474|
|6-24 months                 |JiVitA-4       |BANGLADESH   |[48-50) cm |           1|    228|  4474|
|6-24 months                 |Keneba         |GAMBIA       |>=50 cm    |           0|    501|  1487|
|6-24 months                 |Keneba         |GAMBIA       |>=50 cm    |           1|    242|  1487|
|6-24 months                 |Keneba         |GAMBIA       |<48 cm     |           0|    173|  1487|
|6-24 months                 |Keneba         |GAMBIA       |<48 cm     |           1|     95|  1487|
|6-24 months                 |Keneba         |GAMBIA       |[48-50) cm |           0|    313|  1487|
|6-24 months                 |Keneba         |GAMBIA       |[48-50) cm |           1|    163|  1487|
|6-24 months                 |MAL-ED         |INDIA        |>=50 cm    |           0|      6|    41|
|6-24 months                 |MAL-ED         |INDIA        |>=50 cm    |           1|      2|    41|
|6-24 months                 |MAL-ED         |INDIA        |<48 cm     |           0|     11|    41|
|6-24 months                 |MAL-ED         |INDIA        |<48 cm     |           1|      9|    41|
|6-24 months                 |MAL-ED         |INDIA        |[48-50) cm |           0|      7|    41|
|6-24 months                 |MAL-ED         |INDIA        |[48-50) cm |           1|      6|    41|
|6-24 months                 |MAL-ED         |BANGLADESH   |>=50 cm    |           0|     30|   212|
|6-24 months                 |MAL-ED         |BANGLADESH   |>=50 cm    |           1|      5|   212|
|6-24 months                 |MAL-ED         |BANGLADESH   |<48 cm     |           0|     80|   212|
|6-24 months                 |MAL-ED         |BANGLADESH   |<48 cm     |           1|     22|   212|
|6-24 months                 |MAL-ED         |BANGLADESH   |[48-50) cm |           0|     61|   212|
|6-24 months                 |MAL-ED         |BANGLADESH   |[48-50) cm |           1|     14|   212|
|6-24 months                 |MAL-ED         |PERU         |>=50 cm    |           0|     36|   213|
|6-24 months                 |MAL-ED         |PERU         |>=50 cm    |           1|      2|   213|
|6-24 months                 |MAL-ED         |PERU         |<48 cm     |           0|     79|   213|
|6-24 months                 |MAL-ED         |PERU         |<48 cm     |           1|      9|   213|
|6-24 months                 |MAL-ED         |PERU         |[48-50) cm |           0|     82|   213|
|6-24 months                 |MAL-ED         |PERU         |[48-50) cm |           1|      5|   213|
|6-24 months                 |MAL-ED         |NEPAL        |>=50 cm    |           0|      6|    26|
|6-24 months                 |MAL-ED         |NEPAL        |>=50 cm    |           1|      1|    26|
|6-24 months                 |MAL-ED         |NEPAL        |<48 cm     |           0|      8|    26|
|6-24 months                 |MAL-ED         |NEPAL        |<48 cm     |           1|      3|    26|
|6-24 months                 |MAL-ED         |NEPAL        |[48-50) cm |           0|      6|    26|
|6-24 months                 |MAL-ED         |NEPAL        |[48-50) cm |           1|      2|    26|
|6-24 months                 |MAL-ED         |BRAZIL       |>=50 cm    |           0|     20|    58|
|6-24 months                 |MAL-ED         |BRAZIL       |>=50 cm    |           1|      0|    58|
|6-24 months                 |MAL-ED         |BRAZIL       |<48 cm     |           0|     14|    58|
|6-24 months                 |MAL-ED         |BRAZIL       |<48 cm     |           1|      2|    58|
|6-24 months                 |MAL-ED         |BRAZIL       |[48-50) cm |           0|     21|    58|
|6-24 months                 |MAL-ED         |BRAZIL       |[48-50) cm |           1|      1|    58|
|6-24 months                 |MAL-ED         |TANZANIA     |>=50 cm    |           0|     19|   120|
|6-24 months                 |MAL-ED         |TANZANIA     |>=50 cm    |           1|      1|   120|
|6-24 months                 |MAL-ED         |TANZANIA     |<48 cm     |           0|     29|   120|
|6-24 months                 |MAL-ED         |TANZANIA     |<48 cm     |           1|     12|   120|
|6-24 months                 |MAL-ED         |TANZANIA     |[48-50) cm |           0|     53|   120|
|6-24 months                 |MAL-ED         |TANZANIA     |[48-50) cm |           1|      6|   120|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |>=50 cm    |           0|     27|    97|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |>=50 cm    |           1|      3|    97|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |<48 cm     |           0|     23|    97|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |<48 cm     |           1|      3|    97|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |[48-50) cm |           0|     36|    97|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |[48-50) cm |           1|      5|    97|
|6-24 months                 |NIH-Birth      |BANGLADESH   |>=50 cm    |           0|     86|   522|
|6-24 months                 |NIH-Birth      |BANGLADESH   |>=50 cm    |           1|     21|   522|
|6-24 months                 |NIH-Birth      |BANGLADESH   |<48 cm     |           0|    138|   522|
|6-24 months                 |NIH-Birth      |BANGLADESH   |<48 cm     |           1|     75|   522|
|6-24 months                 |NIH-Birth      |BANGLADESH   |[48-50) cm |           0|    144|   522|
|6-24 months                 |NIH-Birth      |BANGLADESH   |[48-50) cm |           1|     58|   522|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |>=50 cm    |           0|    151|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |>=50 cm    |           1|     14|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |<48 cm     |           0|    236|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |<48 cm     |           1|     44|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |[48-50) cm |           0|    247|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |[48-50) cm |           1|     38|   730|
|6-24 months                 |PROBIT         |BELARUS      |>=50 cm    |           0|  14933| 16598|
|6-24 months                 |PROBIT         |BELARUS      |>=50 cm    |           1|    119| 16598|
|6-24 months                 |PROBIT         |BELARUS      |<48 cm     |           0|    175| 16598|
|6-24 months                 |PROBIT         |BELARUS      |<48 cm     |           1|      4| 16598|
|6-24 months                 |PROBIT         |BELARUS      |[48-50) cm |           0|   1351| 16598|
|6-24 months                 |PROBIT         |BELARUS      |[48-50) cm |           1|     16| 16598|
|6-24 months                 |PROVIDE        |BANGLADESH   |>=50 cm    |           0|    139|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |>=50 cm    |           1|     10|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |<48 cm     |           0|    165|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |<48 cm     |           1|     55|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |[48-50) cm |           0|    212|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |[48-50) cm |           1|     34|   615|
|6-24 months                 |ResPak         |PAKISTAN     |>=50 cm    |           0|      8|    32|
|6-24 months                 |ResPak         |PAKISTAN     |>=50 cm    |           1|      1|    32|
|6-24 months                 |ResPak         |PAKISTAN     |<48 cm     |           0|      9|    32|
|6-24 months                 |ResPak         |PAKISTAN     |<48 cm     |           1|      5|    32|
|6-24 months                 |ResPak         |PAKISTAN     |[48-50) cm |           0|      7|    32|
|6-24 months                 |ResPak         |PAKISTAN     |[48-50) cm |           1|      2|    32|
|6-24 months                 |SAS-CompFeed   |INDIA        |>=50 cm    |           0|    166|  1376|
|6-24 months                 |SAS-CompFeed   |INDIA        |>=50 cm    |           1|     44|  1376|
|6-24 months                 |SAS-CompFeed   |INDIA        |<48 cm     |           0|    476|  1376|
|6-24 months                 |SAS-CompFeed   |INDIA        |<48 cm     |           1|    251|  1376|
|6-24 months                 |SAS-CompFeed   |INDIA        |[48-50) cm |           0|    313|  1376|
|6-24 months                 |SAS-CompFeed   |INDIA        |[48-50) cm |           1|    126|  1376|
|6-24 months                 |Vellore Crypto |INDIA        |>=50 cm    |           0|     98|   391|
|6-24 months                 |Vellore Crypto |INDIA        |>=50 cm    |           1|     44|   391|
|6-24 months                 |Vellore Crypto |INDIA        |<48 cm     |           0|     70|   391|
|6-24 months                 |Vellore Crypto |INDIA        |<48 cm     |           1|     41|   391|
|6-24 months                 |Vellore Crypto |INDIA        |[48-50) cm |           0|    100|   391|
|6-24 months                 |Vellore Crypto |INDIA        |[48-50) cm |           1|     38|   391|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |>=50 cm    |           0|   2848| 10690|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |>=50 cm    |           1|    224| 10690|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |<48 cm     |           0|   3007| 10690|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |<48 cm     |           1|    417| 10690|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |[48-50) cm |           0|   3812| 10690|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |[48-50) cm |           1|    382| 10690|


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

* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
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


