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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid        |country                      |birthlen   | ever_wasted| n_cell|     n|
|:---------------------------|:--------------|:----------------------------|:----------|-----------:|------:|-----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |>=50 cm    |           0|     11|   104|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |>=50 cm    |           1|      5|   104|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |<48 cm     |           0|     22|   104|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |<48 cm     |           1|     26|   104|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |[48-50) cm |           0|     18|   104|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |[48-50) cm |           1|     22|   104|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |>=50 cm    |           0|      1|    17|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |>=50 cm    |           1|      0|    17|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |<48 cm     |           0|      7|    17|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |<48 cm     |           1|      4|    17|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |[48-50) cm |           0|      4|    17|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |[48-50) cm |           1|      1|    17|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |>=50 cm    |           0|    382|   821|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |>=50 cm    |           1|     38|   821|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |<48 cm     |           0|    130|   821|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |<48 cm     |           1|     25|   821|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |[48-50) cm |           0|    219|   821|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |[48-50) cm |           1|     27|   821|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |>=50 cm    |           0|   1185|  6400|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |>=50 cm    |           1|    204|  6400|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |<48 cm     |           0|   2044|  6400|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |<48 cm     |           1|    600|  6400|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |[48-50) cm |           0|   1924|  6400|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |[48-50) cm |           1|    443|  6400|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |>=50 cm    |           0|    848|  3011|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |>=50 cm    |           1|    273|  3011|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |<48 cm     |           0|    454|  3011|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |<48 cm     |           1|    286|  3011|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |[48-50) cm |           0|    795|  3011|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |[48-50) cm |           1|    355|  3011|
|0-24 months (no birth wast) |CONTENT        |PERU                         |>=50 cm    |           0|      1|     2|
|0-24 months (no birth wast) |CONTENT        |PERU                         |>=50 cm    |           1|      0|     2|
|0-24 months (no birth wast) |CONTENT        |PERU                         |<48 cm     |           0|      1|     2|
|0-24 months (no birth wast) |CONTENT        |PERU                         |<48 cm     |           1|      0|     2|
|0-24 months (no birth wast) |CONTENT        |PERU                         |[48-50) cm |           0|      0|     2|
|0-24 months (no birth wast) |CONTENT        |PERU                         |[48-50) cm |           1|      0|     2|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |>=50 cm    |           0|     11|   240|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |>=50 cm    |           1|     11|   240|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |<48 cm     |           0|     69|   240|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |<48 cm     |           1|    103|   240|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |[48-50) cm |           0|     24|   240|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |[48-50) cm |           1|     22|   240|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |>=50 cm    |           0|     61|   659|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |>=50 cm    |           1|     36|   659|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |<48 cm     |           0|    171|   659|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |<48 cm     |           1|    190|   659|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |[48-50) cm |           0|     97|   659|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |[48-50) cm |           1|    104|   659|
|0-24 months (no birth wast) |IRC            |INDIA                        |>=50 cm    |           0|     64|   390|
|0-24 months (no birth wast) |IRC            |INDIA                        |>=50 cm    |           1|     78|   390|
|0-24 months (no birth wast) |IRC            |INDIA                        |<48 cm     |           0|     48|   390|
|0-24 months (no birth wast) |IRC            |INDIA                        |<48 cm     |           1|     63|   390|
|0-24 months (no birth wast) |IRC            |INDIA                        |[48-50) cm |           0|     71|   390|
|0-24 months (no birth wast) |IRC            |INDIA                        |[48-50) cm |           1|     66|   390|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |>=50 cm    |           0|    991| 21905|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |>=50 cm    |           1|    213| 21905|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |<48 cm     |           0|  12910| 21905|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |<48 cm     |           1|   2777| 21905|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |[48-50) cm |           0|   4155| 21905|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |[48-50) cm |           1|    859| 21905|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |>=50 cm    |           0|    951|  4464|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |>=50 cm    |           1|    279|  4464|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |<48 cm     |           0|   1498|  4464|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |<48 cm     |           1|    663|  4464|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |[48-50) cm |           0|    826|  4464|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |[48-50) cm |           1|    247|  4464|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |>=50 cm    |           0|    476|  1547|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |>=50 cm    |           1|    283|  1547|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |<48 cm     |           0|    173|  1547|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |<48 cm     |           1|    120|  1547|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |[48-50) cm |           0|    300|  1547|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |[48-50) cm |           1|    195|  1547|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |>=50 cm    |           0|     27|   229|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |>=50 cm    |           1|      8|   229|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |<48 cm     |           0|     84|   229|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |<48 cm     |           1|     31|   229|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |[48-50) cm |           0|     64|   229|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |[48-50) cm |           1|     15|   229|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |>=50 cm    |           0|     22|    65|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |>=50 cm    |           1|      1|    65|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |<48 cm     |           0|     16|    65|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |<48 cm     |           1|      2|    65|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |[48-50) cm |           0|     23|    65|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |[48-50) cm |           1|      1|    65|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |>=50 cm    |           0|      6|    47|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |>=50 cm    |           1|      3|    47|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |<48 cm     |           0|     13|    47|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |<48 cm     |           1|      9|    47|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |[48-50) cm |           0|      8|    47|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |[48-50) cm |           1|      8|    47|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |>=50 cm    |           0|      6|    27|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |>=50 cm    |           1|      1|    27|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |<48 cm     |           0|      9|    27|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |<48 cm     |           1|      3|    27|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |[48-50) cm |           0|      6|    27|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |[48-50) cm |           1|      2|    27|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |>=50 cm    |           0|     38|   233|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |>=50 cm    |           1|      3|   233|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |<48 cm     |           0|     82|   233|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |<48 cm     |           1|     10|   233|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |[48-50) cm |           0|     94|   233|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |[48-50) cm |           1|      6|   233|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |>=50 cm    |           0|     28|   119|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |>=50 cm    |           1|      6|   119|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |<48 cm     |           0|     30|   119|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |<48 cm     |           1|      4|   119|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |[48-50) cm |           0|     45|   119|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |[48-50) cm |           1|      6|   119|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=50 cm    |           0|     18|   124|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=50 cm    |           1|      2|   124|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<48 cm     |           0|     30|   124|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<48 cm     |           1|     13|   124|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[48-50) cm |           0|     54|   124|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[48-50) cm |           1|      7|   124|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |>=50 cm    |           0|     92|   581|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |>=50 cm    |           1|     24|   581|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |<48 cm     |           0|    160|   581|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |<48 cm     |           1|     81|   581|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |[48-50) cm |           0|    156|   581|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |[48-50) cm |           1|     68|   581|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |>=50 cm    |           0|    149|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |>=50 cm    |           1|     19|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |<48 cm     |           0|    243|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |<48 cm     |           1|     47|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |[48-50) cm |           0|    254|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |[48-50) cm |           1|     42|   754|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |>=50 cm    |           0|  14289| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |>=50 cm    |           1|   1008| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |<48 cm     |           0|    174| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |<48 cm     |           1|     15| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |[48-50) cm |           0|   1268| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |[48-50) cm |           1|    125| 16879|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |>=50 cm    |           0|    149|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |>=50 cm    |           1|     17|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |<48 cm     |           0|    177|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |<48 cm     |           1|     62|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |[48-50) cm |           0|    239|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |[48-50) cm |           1|     43|   687|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |>=50 cm    |           0|      6|    41|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |>=50 cm    |           1|      4|    41|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |<48 cm     |           0|     10|    41|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |<48 cm     |           1|      8|    41|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |[48-50) cm |           0|      8|    41|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |[48-50) cm |           1|      5|    41|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |>=50 cm    |           0|    161|  1489|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |>=50 cm    |           1|     58|  1489|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |<48 cm     |           0|    475|  1489|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |<48 cm     |           1|    320|  1489|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |[48-50) cm |           0|    313|  1489|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |[48-50) cm |           1|    162|  1489|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |>=50 cm    |           0|   3676| 13501|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |>=50 cm    |           1|    312| 13501|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |<48 cm     |           0|   3764| 13501|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |<48 cm     |           1|    521| 13501|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |[48-50) cm |           0|   4684| 13501|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |[48-50) cm |           1|    544| 13501|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |>=50 cm    |           0|     10|   101|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |>=50 cm    |           1|      5|   101|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |<48 cm     |           0|     27|   101|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |<48 cm     |           1|     19|   101|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |[48-50) cm |           0|     19|   101|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |[48-50) cm |           1|     21|   101|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH                   |>=50 cm    |           0|      1|    17|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH                   |>=50 cm    |           1|      0|    17|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH                   |<48 cm     |           0|     10|    17|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH                   |<48 cm     |           1|      1|    17|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH                   |[48-50) cm |           0|      5|    17|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH                   |[48-50) cm |           1|      0|    17|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA                    |>=50 cm    |           0|    399|   793|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA                    |>=50 cm    |           1|      6|   793|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA                    |<48 cm     |           0|    145|   793|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA                    |<48 cm     |           1|      6|   793|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA                    |[48-50) cm |           0|    231|   793|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA                    |[48-50) cm |           1|      6|   793|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |>=50 cm    |           0|   1189|  6052|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |>=50 cm    |           1|    107|  6052|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |<48 cm     |           0|   2294|  6052|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |<48 cm     |           1|    212|  6052|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |[48-50) cm |           0|   2035|  6052|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |[48-50) cm |           1|    215|  6052|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |>=50 cm    |           0|   1006|  2990|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |>=50 cm    |           1|    107|  2990|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |<48 cm     |           0|    670|  2990|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |<48 cm     |           1|     65|  2990|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |[48-50) cm |           0|   1031|  2990|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |[48-50) cm |           1|    111|  2990|
|0-6 months (no birth wast)  |CONTENT        |PERU                         |>=50 cm    |           0|      1|     2|
|0-6 months (no birth wast)  |CONTENT        |PERU                         |>=50 cm    |           1|      0|     2|
|0-6 months (no birth wast)  |CONTENT        |PERU                         |<48 cm     |           0|      1|     2|
|0-6 months (no birth wast)  |CONTENT        |PERU                         |<48 cm     |           1|      0|     2|
|0-6 months (no birth wast)  |CONTENT        |PERU                         |[48-50) cm |           0|      0|     2|
|0-6 months (no birth wast)  |CONTENT        |PERU                         |[48-50) cm |           1|      0|     2|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |>=50 cm    |           0|     15|   238|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |>=50 cm    |           1|      7|   238|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |<48 cm     |           0|    135|   238|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |<48 cm     |           1|     36|   238|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |[48-50) cm |           0|     34|   238|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |[48-50) cm |           1|     11|   238|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |>=50 cm    |           0|     77|   641|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |>=50 cm    |           1|     17|   641|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |<48 cm     |           0|    295|   641|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |<48 cm     |           1|     58|   641|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |[48-50) cm |           0|    146|   641|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |[48-50) cm |           1|     48|   641|
|0-6 months (no birth wast)  |IRC            |INDIA                        |>=50 cm    |           0|     83|   372|
|0-6 months (no birth wast)  |IRC            |INDIA                        |>=50 cm    |           1|     48|   372|
|0-6 months (no birth wast)  |IRC            |INDIA                        |<48 cm     |           0|     75|   372|
|0-6 months (no birth wast)  |IRC            |INDIA                        |<48 cm     |           1|     34|   372|
|0-6 months (no birth wast)  |IRC            |INDIA                        |[48-50) cm |           0|     84|   372|
|0-6 months (no birth wast)  |IRC            |INDIA                        |[48-50) cm |           1|     48|   372|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |>=50 cm    |           0|   1061| 21725|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |>=50 cm    |           1|    130| 21725|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |<48 cm     |           0|  14524| 21725|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |<48 cm     |           1|   1032| 21725|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |[48-50) cm |           0|   4488| 21725|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |[48-50) cm |           1|    490| 21725|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |>=50 cm    |           0|   1174|  4359|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |>=50 cm    |           1|     35|  4359|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |<48 cm     |           0|   2032|  4359|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |<48 cm     |           1|     61|  4359|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |[48-50) cm |           0|   1027|  4359|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |[48-50) cm |           1|     30|  4359|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |>=50 cm    |           0|    667|  1533|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |>=50 cm    |           1|     84|  1533|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |<48 cm     |           0|    254|  1533|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |<48 cm     |           1|     38|  1533|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |[48-50) cm |           0|    430|  1533|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |[48-50) cm |           1|     60|  1533|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |>=50 cm    |           0|     32|   228|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |>=50 cm    |           1|      3|   228|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |<48 cm     |           0|    105|   228|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |<48 cm     |           1|      9|   228|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |[48-50) cm |           0|     75|   228|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |[48-50) cm |           1|      4|   228|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |>=50 cm    |           0|     22|    65|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |>=50 cm    |           1|      1|    65|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |<48 cm     |           0|     18|    65|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |<48 cm     |           1|      0|    65|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |[48-50) cm |           0|     24|    65|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |[48-50) cm |           1|      0|    65|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |>=50 cm    |           0|      7|    47|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |>=50 cm    |           1|      2|    47|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |<48 cm     |           0|     20|    47|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |<48 cm     |           1|      2|    47|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |[48-50) cm |           0|     12|    47|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |[48-50) cm |           1|      4|    47|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |>=50 cm    |           0|      6|    27|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |>=50 cm    |           1|      1|    27|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |<48 cm     |           0|     11|    27|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |<48 cm     |           1|      1|    27|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |[48-50) cm |           0|      8|    27|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |[48-50) cm |           1|      0|    27|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |>=50 cm    |           0|     39|   233|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |>=50 cm    |           1|      2|   233|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |<48 cm     |           0|     90|   233|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |<48 cm     |           1|      2|   233|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |[48-50) cm |           0|     99|   233|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |[48-50) cm |           1|      1|   233|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |>=50 cm    |           0|     30|   118|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |>=50 cm    |           1|      4|   118|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |<48 cm     |           0|     32|   118|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |<48 cm     |           1|      2|   118|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |[48-50) cm |           0|     47|   118|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |[48-50) cm |           1|      3|   118|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=50 cm    |           0|     19|   124|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=50 cm    |           1|      1|   124|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<48 cm     |           0|     42|   124|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<48 cm     |           1|      1|   124|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[48-50) cm |           0|     59|   124|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[48-50) cm |           1|      2|   124|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH                   |>=50 cm    |           0|    108|   564|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH                   |>=50 cm    |           1|      6|   564|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH                   |<48 cm     |           0|    211|   564|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH                   |<48 cm     |           1|     19|   564|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH                   |[48-50) cm |           0|    200|   564|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH                   |[48-50) cm |           1|     20|   564|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |>=50 cm    |           0|    161|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |>=50 cm    |           1|      6|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |<48 cm     |           0|    282|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |<48 cm     |           1|      6|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |[48-50) cm |           0|    286|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |[48-50) cm |           1|      8|   749|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |>=50 cm    |           0|  14212| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |>=50 cm    |           1|    902| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |<48 cm     |           0|    178| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |<48 cm     |           1|     11| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |[48-50) cm |           0|   1281| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |[48-50) cm |           1|    109| 16693|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |>=50 cm    |           0|    157|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |>=50 cm    |           1|      9|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |<48 cm     |           0|    221|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |<48 cm     |           1|     16|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |[48-50) cm |           0|    268|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |[48-50) cm |           1|     12|   683|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN                     |>=50 cm    |           0|      7|    41|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN                     |>=50 cm    |           1|      3|    41|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN                     |<48 cm     |           0|     15|    41|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN                     |<48 cm     |           1|      3|    41|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN                     |[48-50) cm |           0|      9|    41|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN                     |[48-50) cm |           1|      4|    41|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |>=50 cm    |           0|    196|  1463|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |>=50 cm    |           1|     20|  1463|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |<48 cm     |           0|    670|  1463|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |<48 cm     |           1|    108|  1463|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |[48-50) cm |           0|    412|  1463|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |[48-50) cm |           1|     57|  1463|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |>=50 cm    |           0|   3810| 13254|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |>=50 cm    |           1|     99| 13254|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |<48 cm     |           0|   4061| 13254|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |<48 cm     |           1|    132| 13254|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |[48-50) cm |           0|   4956| 13254|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |[48-50) cm |           1|    196| 13254|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ResPak, country: PAKISTAN

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/2da25791-de2f-4459-b1fa-a9603c37756a/c5dbf5c5-129f-4d44-9dda-0cf547dd4fed/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2da25791-de2f-4459-b1fa-a9603c37756a/c5dbf5c5-129f-4d44-9dda-0cf547dd4fed/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2da25791-de2f-4459-b1fa-a9603c37756a/c5dbf5c5-129f-4d44-9dda-0cf547dd4fed/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2da25791-de2f-4459-b1fa-a9603c37756a/c5dbf5c5-129f-4d44-9dda-0cf547dd4fed/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid        |country     |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------------|:-----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA       |>=50 cm            |NA             | 0.3125000| 0.0842832| 0.5407168|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA       |<48 cm             |NA             | 0.5416667| 0.4000278| 0.6833055|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA       |[48-50) cm         |NA             | 0.5500000| 0.3950813| 0.7049187|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA   |>=50 cm            |NA             | 0.0891646| 0.0616080| 0.1167213|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA   |<48 cm             |NA             | 0.1622058| 0.1035770| 0.2208345|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA   |[48-50) cm         |NA             | 0.1095656| 0.0704268| 0.1487043|
|0-24 months (no birth wast) |COHORTS        |INDIA       |>=50 cm            |NA             | 0.1461272| 0.1274475| 0.1648069|
|0-24 months (no birth wast) |COHORTS        |INDIA       |<48 cm             |NA             | 0.2267205| 0.2107091| 0.2427320|
|0-24 months (no birth wast) |COHORTS        |INDIA       |[48-50) cm         |NA             | 0.1869996| 0.1711902| 0.2028090|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES |>=50 cm            |NA             | 0.2431071| 0.2181765| 0.2680377|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES |<48 cm             |NA             | 0.3788562| 0.3440309| 0.4136814|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES |[48-50) cm         |NA             | 0.3094575| 0.2826978| 0.3362172|
|0-24 months (no birth wast) |EE             |PAKISTAN    |>=50 cm            |NA             | 0.5572085| 0.3249810| 0.7894361|
|0-24 months (no birth wast) |EE             |PAKISTAN    |<48 cm             |NA             | 0.5988899| 0.5255405| 0.6722394|
|0-24 months (no birth wast) |EE             |PAKISTAN    |[48-50) cm         |NA             | 0.4995278| 0.3501733| 0.6488824|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL       |>=50 cm            |NA             | 0.3826976| 0.2859659| 0.4794294|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL       |<48 cm             |NA             | 0.5279714| 0.4761711| 0.5797718|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL       |[48-50) cm         |NA             | 0.5153212| 0.4454935| 0.5851489|
|0-24 months (no birth wast) |IRC            |INDIA       |>=50 cm            |NA             | 0.5440610| 0.4615570| 0.6265650|
|0-24 months (no birth wast) |IRC            |INDIA       |<48 cm             |NA             | 0.5614336| 0.4681194| 0.6547478|
|0-24 months (no birth wast) |IRC            |INDIA       |[48-50) cm         |NA             | 0.4790873| 0.3948300| 0.5633445|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH  |>=50 cm            |NA             | 0.1845133| 0.1597973| 0.2092292|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH  |<48 cm             |NA             | 0.1773890| 0.1705949| 0.1841832|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH  |[48-50) cm         |NA             | 0.1692245| 0.1564398| 0.1820093|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH  |>=50 cm            |NA             | 0.2369052| 0.2102762| 0.2635343|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH  |<48 cm             |NA             | 0.3068262| 0.2831292| 0.3305231|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH  |[48-50) cm         |NA             | 0.2287394| 0.1980177| 0.2594611|
|0-24 months (no birth wast) |Keneba         |GAMBIA      |>=50 cm            |NA             | 0.3657862| 0.3315644| 0.4000080|
|0-24 months (no birth wast) |Keneba         |GAMBIA      |<48 cm             |NA             | 0.4213660| 0.3650741| 0.4776579|
|0-24 months (no birth wast) |Keneba         |GAMBIA      |[48-50) cm         |NA             | 0.3947335| 0.3512426| 0.4382244|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH  |>=50 cm            |NA             | 0.2285714| 0.0891520| 0.3679908|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH  |<48 cm             |NA             | 0.2695652| 0.1882874| 0.3508431|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH  |[48-50) cm         |NA             | 0.1898734| 0.1031985| 0.2765483|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH  |>=50 cm            |NA             | 0.2126294| 0.1390457| 0.2862131|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH  |<48 cm             |NA             | 0.3349106| 0.2753008| 0.3945204|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH  |[48-50) cm         |NA             | 0.3048566| 0.2443948| 0.3653184|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH  |>=50 cm            |NA             | 0.1152006| 0.0670138| 0.1633874|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH  |<48 cm             |NA             | 0.1634722| 0.1208120| 0.2061324|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH  |[48-50) cm         |NA             | 0.1416095| 0.1018536| 0.1813655|
|0-24 months (no birth wast) |PROBIT         |BELARUS     |>=50 cm            |NA             | 0.0658164| 0.0539241| 0.0777086|
|0-24 months (no birth wast) |PROBIT         |BELARUS     |<48 cm             |NA             | 0.0765153| 0.0501629| 0.1028676|
|0-24 months (no birth wast) |PROBIT         |BELARUS     |[48-50) cm         |NA             | 0.0901243| 0.0750241| 0.1052245|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH  |>=50 cm            |NA             | 0.0981347| 0.0518443| 0.1444250|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH  |<48 cm             |NA             | 0.2608744| 0.2047947| 0.3169542|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH  |[48-50) cm         |NA             | 0.1541223| 0.1118005| 0.1964441|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA       |>=50 cm            |NA             | 0.2637020| 0.2174764| 0.3099276|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA       |<48 cm             |NA             | 0.4024206| 0.3440764| 0.4607648|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA       |[48-50) cm         |NA             | 0.3397383| 0.2680299| 0.4114467|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE    |>=50 cm            |NA             | 0.0786472| 0.0701438| 0.0871506|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE    |<48 cm             |NA             | 0.1227651| 0.1128077| 0.1327225|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE    |[48-50) cm         |NA             | 0.1031361| 0.0947875| 0.1114848|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA       |>=50 cm            |NA             | 0.3333333| 0.0935843| 0.5730824|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA       |<48 cm             |NA             | 0.4130435| 0.2700452| 0.5560417|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA       |[48-50) cm         |NA             | 0.5250000| 0.3694732| 0.6805268|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA   |>=50 cm            |NA             | 0.0148148| 0.0030414| 0.0265882|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA   |<48 cm             |NA             | 0.0397351| 0.0085594| 0.0709108|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA   |[48-50) cm         |NA             | 0.0253165| 0.0053049| 0.0453280|
|0-6 months (no birth wast)  |COHORTS        |INDIA       |>=50 cm            |NA             | 0.0810716| 0.0661666| 0.0959766|
|0-6 months (no birth wast)  |COHORTS        |INDIA       |<48 cm             |NA             | 0.0845234| 0.0735452| 0.0955016|
|0-6 months (no birth wast)  |COHORTS        |INDIA       |[48-50) cm         |NA             | 0.0949826| 0.0827470| 0.1072183|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES |>=50 cm            |NA             | 0.0955257| 0.0782437| 0.1128076|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES |<48 cm             |NA             | 0.0894010| 0.0687613| 0.1100408|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES |[48-50) cm         |NA             | 0.0974818| 0.0800785| 0.1148850|
|0-6 months (no birth wast)  |EE             |PAKISTAN    |>=50 cm            |NA             | 0.3181818| 0.1231421| 0.5132215|
|0-6 months (no birth wast)  |EE             |PAKISTAN    |<48 cm             |NA             | 0.2105263| 0.1492932| 0.2717594|
|0-6 months (no birth wast)  |EE             |PAKISTAN    |[48-50) cm         |NA             | 0.2444444| 0.1186158| 0.3702731|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL       |>=50 cm            |NA             | 0.1770421| 0.0986740| 0.2554102|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL       |<48 cm             |NA             | 0.1628355| 0.1239756| 0.2016953|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL       |[48-50) cm         |NA             | 0.2484720| 0.1866892| 0.3102548|
|0-6 months (no birth wast)  |IRC            |INDIA       |>=50 cm            |NA             | 0.3708842| 0.2881878| 0.4535806|
|0-6 months (no birth wast)  |IRC            |INDIA       |<48 cm             |NA             | 0.3172765| 0.2302379| 0.4043151|
|0-6 months (no birth wast)  |IRC            |INDIA       |[48-50) cm         |NA             | 0.3720912| 0.2893432| 0.4548393|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH  |>=50 cm            |NA             | 0.1190684| 0.0980005| 0.1401362|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH  |<48 cm             |NA             | 0.0658340| 0.0614136| 0.0702544|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH  |[48-50) cm         |NA             | 0.0987357| 0.0886395| 0.1088319|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH  |>=50 cm            |NA             | 0.0291514| 0.0193716| 0.0389311|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH  |<48 cm             |NA             | 0.0288943| 0.0208432| 0.0369453|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH  |[48-50) cm         |NA             | 0.0301180| 0.0187139| 0.0415220|
|0-6 months (no birth wast)  |Keneba         |GAMBIA      |>=50 cm            |NA             | 0.1118090| 0.0890465| 0.1345715|
|0-6 months (no birth wast)  |Keneba         |GAMBIA      |<48 cm             |NA             | 0.1315661| 0.0928426| 0.1702896|
|0-6 months (no birth wast)  |Keneba         |GAMBIA      |[48-50) cm         |NA             | 0.1208898| 0.0921151| 0.1496646|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH  |>=50 cm            |NA             | 0.0526316| 0.0116052| 0.0936580|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH  |<48 cm             |NA             | 0.0826087| 0.0469997| 0.1182177|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH  |[48-50) cm         |NA             | 0.0909091| 0.0528876| 0.1289306|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH  |>=50 cm            |NA             | 0.0359281| 0.0076825| 0.0641738|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH  |<48 cm             |NA             | 0.0208333| 0.0043270| 0.0373396|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH  |[48-50) cm         |NA             | 0.0272109| 0.0086009| 0.0458208|
|0-6 months (no birth wast)  |PROBIT         |BELARUS     |>=50 cm            |NA             | 0.0596591| 0.0485705| 0.0707476|
|0-6 months (no birth wast)  |PROBIT         |BELARUS     |<48 cm             |NA             | 0.0544709| 0.0336376| 0.0753042|
|0-6 months (no birth wast)  |PROBIT         |BELARUS     |[48-50) cm         |NA             | 0.0789965| 0.0636589| 0.0943340|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH  |>=50 cm            |NA             | 0.0542169| 0.0197442| 0.0886896|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH  |<48 cm             |NA             | 0.0675105| 0.0355437| 0.0994774|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH  |[48-50) cm         |NA             | 0.0428571| 0.0191168| 0.0665975|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA       |>=50 cm            |NA             | 0.0951832| 0.0555614| 0.1348050|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA       |<48 cm             |NA             | 0.1365927| 0.1032717| 0.1699136|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA       |[48-50) cm         |NA             | 0.1233237| 0.0693453| 0.1773020|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE    |>=50 cm            |NA             | 0.0253840| 0.0204176| 0.0303503|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE    |<48 cm             |NA             | 0.0327729| 0.0272066| 0.0383392|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE    |[48-50) cm         |NA             | 0.0375688| 0.0322929| 0.0428447|


### Parameter: E(Y)


|agecat                      |studyid        |country     |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------------|:-----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA       |NA                 |NA             | 0.5096154| 0.4130727| 0.6061580|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA   |NA                 |NA             | 0.1096224| 0.0882390| 0.1310059|
|0-24 months (no birth wast) |COHORTS        |INDIA       |NA                 |NA             | 0.1948438| 0.1851392| 0.2045483|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES |NA                 |NA             | 0.3035536| 0.2871278| 0.3199794|
|0-24 months (no birth wast) |EE             |PAKISTAN    |NA                 |NA             | 0.5666667| 0.5038429| 0.6294904|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL       |NA                 |NA             | 0.5007587| 0.4625551| 0.5389624|
|0-24 months (no birth wast) |IRC            |INDIA       |NA                 |NA             | 0.5307692| 0.4811763| 0.5803621|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH  |NA                 |NA             | 0.1757133| 0.1696451| 0.1817815|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH  |NA                 |NA             | 0.2663530| 0.2512746| 0.2814315|
|0-24 months (no birth wast) |Keneba         |GAMBIA      |NA                 |NA             | 0.3865546| 0.3622809| 0.4108284|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH  |NA                 |NA             | 0.2358079| 0.1807067| 0.2909091|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH  |NA                 |NA             | 0.2977625| 0.2605481| 0.3349769|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH  |NA                 |NA             | 0.1432361| 0.1182149| 0.1682572|
|0-24 months (no birth wast) |PROBIT         |BELARUS     |NA                 |NA             | 0.0680135| 0.0562135| 0.0798135|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH  |NA                 |NA             | 0.1775837| 0.1489858| 0.2061816|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA       |NA                 |NA             | 0.3626595| 0.3120201| 0.4132989|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE    |NA                 |NA             | 0.1019924| 0.0968873| 0.1070976|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA       |NA                 |NA             | 0.4455446| 0.3481293| 0.5429598|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA   |NA                 |NA             | 0.0226986| 0.0123257| 0.0330715|
|0-6 months (no birth wast)  |COHORTS        |INDIA       |NA                 |NA             | 0.0882353| 0.0810887| 0.0953819|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES |NA                 |NA             | 0.0946488| 0.0841546| 0.1051431|
|0-6 months (no birth wast)  |EE             |PAKISTAN    |NA                 |NA             | 0.2268908| 0.1735692| 0.2802123|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL       |NA                 |NA             | 0.1918877| 0.1613794| 0.2223959|
|0-6 months (no birth wast)  |IRC            |INDIA       |NA                 |NA             | 0.3494624| 0.3009450| 0.3979798|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH  |NA                 |NA             | 0.0760414| 0.0718411| 0.0802418|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH  |NA                 |NA             | 0.0289057| 0.0236101| 0.0342013|
|0-6 months (no birth wast)  |Keneba         |GAMBIA      |NA                 |NA             | 0.1187215| 0.1025243| 0.1349187|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH  |NA                 |NA             | 0.0797872| 0.0574049| 0.1021695|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH  |NA                 |NA             | 0.0267023| 0.0151493| 0.0382553|
|0-6 months (no birth wast)  |PROBIT         |BELARUS     |NA                 |NA             | 0.0612233| 0.0502388| 0.0722078|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH  |NA                 |NA             | 0.0541728| 0.0371844| 0.0711612|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA       |NA                 |NA             | 0.1264525| 0.0961151| 0.1567899|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE    |NA                 |NA             | 0.0322167| 0.0292105| 0.0352229|


### Parameter: RR


|agecat                      |studyid        |country     |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:---------------------------|:--------------|:-----------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA       |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA       |<48 cm             |>=50 cm        | 1.7333333| 0.7979976| 3.764979|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA       |[48-50) cm         |>=50 cm        | 1.7600000| 0.8045947| 3.849889|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA   |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA   |<48 cm             |>=50 cm        | 1.8191716| 1.1310654| 2.925901|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA   |[48-50) cm         |>=50 cm        | 1.2288006| 0.7662676| 1.970527|
|0-24 months (no birth wast) |COHORTS        |INDIA       |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |COHORTS        |INDIA       |<48 cm             |>=50 cm        | 1.5515287| 1.3410567| 1.795033|
|0-24 months (no birth wast) |COHORTS        |INDIA       |[48-50) cm         |>=50 cm        | 1.2797045| 1.0981203| 1.491316|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES |<48 cm             |>=50 cm        | 1.5583918| 1.3584286| 1.787790|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES |[48-50) cm         |>=50 cm        | 1.2729263| 1.1136154| 1.455028|
|0-24 months (no birth wast) |EE             |PAKISTAN    |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |EE             |PAKISTAN    |<48 cm             |>=50 cm        | 1.0748040| 0.6963470| 1.658948|
|0-24 months (no birth wast) |EE             |PAKISTAN    |[48-50) cm         |>=50 cm        | 0.8964827| 0.5347897| 1.502799|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL       |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL       |<48 cm             |>=50 cm        | 1.3796045| 1.0515057| 1.810079|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL       |[48-50) cm         |>=50 cm        | 1.3465492| 1.0112484| 1.793026|
|0-24 months (no birth wast) |IRC            |INDIA       |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |IRC            |INDIA       |<48 cm             |>=50 cm        | 1.0319313| 0.8239534| 1.292406|
|0-24 months (no birth wast) |IRC            |INDIA       |[48-50) cm         |>=50 cm        | 0.8805764| 0.6978415| 1.111162|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH  |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH  |<48 cm             |>=50 cm        | 0.9613890| 0.8362463| 1.105259|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH  |[48-50) cm         |>=50 cm        | 0.9171402| 0.7869228| 1.068905|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH  |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH  |<48 cm             |>=50 cm        | 1.2951431| 1.1317841| 1.482081|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH  |[48-50) cm         |>=50 cm        | 0.9655312| 0.8106758| 1.149967|
|0-24 months (no birth wast) |Keneba         |GAMBIA      |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |Keneba         |GAMBIA      |<48 cm             |>=50 cm        | 1.1519461| 0.9792576| 1.355088|
|0-24 months (no birth wast) |Keneba         |GAMBIA      |[48-50) cm         |>=50 cm        | 1.0791371| 0.9342315| 1.246519|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH  |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH  |<48 cm             |>=50 cm        | 1.1793478| 0.5972308| 2.328850|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH  |[48-50) cm         |>=50 cm        | 0.8306962| 0.3877664| 1.779567|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH  |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH  |<48 cm             |>=50 cm        | 1.5750909| 1.0683626| 2.322162|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH  |[48-50) cm         |>=50 cm        | 1.4337462| 0.9626192| 2.135453|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH  |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH  |<48 cm             |>=50 cm        | 1.4190224| 0.8664102| 2.324101|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH  |[48-50) cm         |>=50 cm        | 1.2292432| 0.7425521| 2.034926|
|0-24 months (no birth wast) |PROBIT         |BELARUS     |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |PROBIT         |BELARUS     |<48 cm             |>=50 cm        | 1.1625570| 0.7979985| 1.693661|
|0-24 months (no birth wast) |PROBIT         |BELARUS     |[48-50) cm         |>=50 cm        | 1.3693291| 1.1866549| 1.580124|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH  |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH  |<48 cm             |>=50 cm        | 2.6583314| 1.5815670| 4.468180|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH  |[48-50) cm         |>=50 cm        | 1.5705184| 0.9090396| 2.713334|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA       |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA       |<48 cm             |>=50 cm        | 1.5260432| 1.2770104| 1.823640|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA       |[48-50) cm         |>=50 cm        | 1.2883417| 1.0456177| 1.587410|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE    |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE    |<48 cm             |>=50 cm        | 1.5609598| 1.3636489| 1.786820|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE    |[48-50) cm         |>=50 cm        | 1.3113769| 1.1457363| 1.500964|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA       |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA       |<48 cm             |>=50 cm        | 1.2391304| 0.5577621| 2.752866|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA       |[48-50) cm         |>=50 cm        | 1.5750000| 0.7235318| 3.428495|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA   |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA   |<48 cm             |>=50 cm        | 2.6821192| 0.8779688| 8.193643|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA   |[48-50) cm         |>=50 cm        | 1.7088608| 0.5570751| 5.242031|
|0-6 months (no birth wast)  |COHORTS        |INDIA       |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |COHORTS        |INDIA       |<48 cm             |>=50 cm        | 1.0425772| 0.8324434| 1.305755|
|0-6 months (no birth wast)  |COHORTS        |INDIA       |[48-50) cm         |>=50 cm        | 1.1715890| 0.9360141| 1.466453|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES |<48 cm             |>=50 cm        | 0.9358852| 0.6980598| 1.254737|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES |[48-50) cm         |>=50 cm        | 1.0204777| 0.7915704| 1.315581|
|0-6 months (no birth wast)  |EE             |PAKISTAN    |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |EE             |PAKISTAN    |<48 cm             |>=50 cm        | 0.6616541| 0.3357127| 1.304050|
|0-6 months (no birth wast)  |EE             |PAKISTAN    |[48-50) cm         |>=50 cm        | 0.7682540| 0.3450439| 1.710548|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL       |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL       |<48 cm             |>=50 cm        | 0.9197555| 0.5562557| 1.520794|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL       |[48-50) cm         |>=50 cm        | 1.4034626| 0.8452981| 2.330192|
|0-6 months (no birth wast)  |IRC            |INDIA       |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |IRC            |INDIA       |<48 cm             |>=50 cm        | 0.8554598| 0.6002307| 1.219217|
|0-6 months (no birth wast)  |IRC            |INDIA       |[48-50) cm         |>=50 cm        | 1.0032545| 0.7321309| 1.374781|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH  |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH  |<48 cm             |>=50 cm        | 0.5529092| 0.4592246| 0.665706|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH  |[48-50) cm         |>=50 cm        | 0.8292356| 0.6763077| 1.016744|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH  |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH  |<48 cm             |>=50 cm        | 0.9911811| 0.6363330| 1.543908|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH  |[48-50) cm         |>=50 cm        | 1.0331578| 0.6215379| 1.717377|
|0-6 months (no birth wast)  |Keneba         |GAMBIA      |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |Keneba         |GAMBIA      |<48 cm             |>=50 cm        | 1.1767042| 0.8226938| 1.683048|
|0-6 months (no birth wast)  |Keneba         |GAMBIA      |[48-50) cm         |>=50 cm        | 1.0812170| 0.7905879| 1.478685|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH  |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH  |<48 cm             |>=50 cm        | 1.5695652| 0.6440687| 3.824957|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH  |[48-50) cm         |>=50 cm        | 1.7272727| 0.7131438| 4.183548|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH  |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH  |<48 cm             |>=50 cm        | 0.5798611| 0.1899253| 1.770375|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH  |[48-50) cm         |>=50 cm        | 0.7573696| 0.2671556| 2.147096|
|0-6 months (no birth wast)  |PROBIT         |BELARUS     |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |PROBIT         |BELARUS     |<48 cm             |>=50 cm        | 0.9130364| 0.5945473| 1.402135|
|0-6 months (no birth wast)  |PROBIT         |BELARUS     |[48-50) cm         |>=50 cm        | 1.3241321| 1.1293912| 1.552452|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH  |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH  |<48 cm             |>=50 cm        | 1.2451946| 0.5635598| 2.751278|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH  |[48-50) cm         |>=50 cm        | 0.7904762| 0.3401375| 1.837059|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA       |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA       |<48 cm             |>=50 cm        | 1.4350505| 0.8072065| 2.551230|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA       |[48-50) cm         |>=50 cm        | 1.2956457| 0.6640331| 2.528033|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE    |>=50 cm            |>=50 cm        | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE    |<48 cm             |>=50 cm        | 1.2910859| 0.9964742| 1.672801|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE    |[48-50) cm         |>=50 cm        | 1.4800195| 1.1632534| 1.883044|


### Parameter: PAR


|agecat                      |studyid        |country     |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:---------------------------|:--------------|:-----------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA       |>=50 cm            |NA             |  0.1971154| -0.0159054|  0.4101362|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA   |>=50 cm            |NA             |  0.0204578| -0.0005616|  0.0414771|
|0-24 months (no birth wast) |COHORTS        |INDIA       |>=50 cm            |NA             |  0.0487165|  0.0315692|  0.0658639|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES |>=50 cm            |NA             |  0.0604465|  0.0398465|  0.0810465|
|0-24 months (no birth wast) |EE             |PAKISTAN    |>=50 cm            |NA             |  0.0094581| -0.2125824|  0.2314987|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL       |>=50 cm            |NA             |  0.1180611|  0.0281004|  0.2080218|
|0-24 months (no birth wast) |IRC            |INDIA       |>=50 cm            |NA             | -0.0132918| -0.0793554|  0.0527719|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH  |>=50 cm            |NA             | -0.0088000| -0.0330539|  0.0154540|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH  |>=50 cm            |NA             |  0.0294478|  0.0059272|  0.0529684|
|0-24 months (no birth wast) |Keneba         |GAMBIA      |>=50 cm            |NA             |  0.0207684| -0.0038097|  0.0453465|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH  |>=50 cm            |NA             |  0.0072364| -0.1213413|  0.1358142|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH  |>=50 cm            |NA             |  0.0851331|  0.0172294|  0.1530367|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH  |>=50 cm            |NA             |  0.0280355| -0.0158028|  0.0718738|
|0-24 months (no birth wast) |PROBIT         |BELARUS     |>=50 cm            |NA             |  0.0021971|  0.0008465|  0.0035478|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH  |>=50 cm            |NA             |  0.0794490|  0.0354971|  0.1234010|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA       |>=50 cm            |NA             |  0.0989575|  0.0540231|  0.1438920|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE    |>=50 cm            |NA             |  0.0233452|  0.0157803|  0.0309102|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA       |>=50 cm            |NA             |  0.1122112| -0.1111633|  0.3355858|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA   |>=50 cm            |NA             |  0.0078838| -0.0023448|  0.0181124|
|0-6 months (no birth wast)  |COHORTS        |INDIA       |>=50 cm            |NA             |  0.0071637| -0.0062264|  0.0205537|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES |>=50 cm            |NA             | -0.0008768| -0.0145437|  0.0127901|
|0-6 months (no birth wast)  |EE             |PAKISTAN    |>=50 cm            |NA             | -0.0912911| -0.2752774|  0.0926953|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL       |>=50 cm            |NA             |  0.0148456| -0.0578766|  0.0875678|
|0-6 months (no birth wast)  |IRC            |INDIA       |>=50 cm            |NA             | -0.0214218| -0.0877734|  0.0449297|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH  |>=50 cm            |NA             | -0.0430270| -0.0633409| -0.0227130|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH  |>=50 cm            |NA             | -0.0002456| -0.0086465|  0.0081552|
|0-6 months (no birth wast)  |Keneba         |GAMBIA      |>=50 cm            |NA             |  0.0069124| -0.0097833|  0.0236082|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH  |>=50 cm            |NA             |  0.0271557| -0.0116220|  0.0659333|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH  |>=50 cm            |NA             | -0.0092259| -0.0332159|  0.0147641|
|0-6 months (no birth wast)  |PROBIT         |BELARUS     |>=50 cm            |NA             |  0.0015642|  0.0002965|  0.0028319|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH  |>=50 cm            |NA             | -0.0000441| -0.0300327|  0.0299445|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA       |>=50 cm            |NA             |  0.0312693| -0.0233813|  0.0859199|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE    |>=50 cm            |NA             |  0.0068327|  0.0024153|  0.0112501|


### Parameter: PAF


|agecat                      |studyid        |country     |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:---------------------------|:--------------|:-----------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA       |>=50 cm            |NA             |  0.3867925| -0.2158991|  0.6907445|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA   |>=50 cm            |NA             |  0.1866204| -0.0268096|  0.3556874|
|0-24 months (no birth wast) |COHORTS        |INDIA       |>=50 cm            |NA             |  0.2500288|  0.1573152|  0.3325419|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES |>=50 cm            |NA             |  0.1991295|  0.1286368|  0.2639194|
|0-24 months (no birth wast) |EE             |PAKISTAN    |>=50 cm            |NA             |  0.0166908| -0.4647813|  0.3399036|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL       |>=50 cm            |NA             |  0.2357644|  0.0327523|  0.3961670|
|0-24 months (no birth wast) |IRC            |INDIA       |>=50 cm            |NA             | -0.0250425| -0.1574141|  0.0921900|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH  |>=50 cm            |NA             | -0.0500814| -0.1977031|  0.0793454|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH  |>=50 cm            |NA             |  0.1105594|  0.0181734|  0.1942522|
|0-24 months (no birth wast) |Keneba         |GAMBIA      |>=50 cm            |NA             |  0.0537270| -0.0120689|  0.1152454|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH  |>=50 cm            |NA             |  0.0306878| -0.7012096|  0.4477070|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH  |>=50 cm            |NA             |  0.2859094|  0.0190494|  0.4801722|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH  |>=50 cm            |NA             |  0.1957293| -0.1743461|  0.4491816|
|0-24 months (no birth wast) |PROBIT         |BELARUS     |>=50 cm            |NA             |  0.0323043|  0.0113857|  0.0527802|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH  |>=50 cm            |NA             |  0.4473893|  0.1460665|  0.6423860|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA       |>=50 cm            |NA             |  0.2728662|  0.1560925|  0.3734816|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE    |>=50 cm            |NA             |  0.2288919|  0.1518590|  0.2989281|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA       |>=50 cm            |NA             |  0.2518519| -0.4634357|  0.6175263|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA   |>=50 cm            |NA             |  0.3473251| -0.2471956|  0.6584461|
|0-6 months (no birth wast)  |COHORTS        |INDIA       |>=50 cm            |NA             |  0.0811883| -0.0836525|  0.2209542|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES |>=50 cm            |NA             | -0.0092640| -0.1644972|  0.1252760|
|0-6 months (no birth wast)  |EE             |PAKISTAN    |>=50 cm            |NA             | -0.4023569| -1.4985270|  0.2128943|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL       |>=50 cm            |NA             |  0.0773659| -0.3912777|  0.3881496|
|0-6 months (no birth wast)  |IRC            |INDIA       |>=50 cm            |NA             | -0.0612994| -0.2693084|  0.1126219|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH  |>=50 cm            |NA             | -0.5658357| -0.8563441| -0.3207905|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH  |>=50 cm            |NA             | -0.0084981| -0.3454111|  0.2440464|
|0-6 months (no birth wast)  |Keneba         |GAMBIA      |>=50 cm            |NA             |  0.0582240| -0.0933165|  0.1887601|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH  |>=50 cm            |NA             |  0.3403509| -0.3607389|  0.6802201|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH  |>=50 cm            |NA             | -0.3455090| -1.6009534|  0.3039497|
|0-6 months (no birth wast)  |PROBIT         |BELARUS     |>=50 cm            |NA             |  0.0255492|  0.0039966|  0.0466355|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH  |>=50 cm            |NA             | -0.0008141| -0.7400909|  0.4243813|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA       |>=50 cm            |NA             |  0.2472812| -0.2681419|  0.5532159|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE    |>=50 cm            |NA             |  0.2120861|  0.0640703|  0.3366933|
