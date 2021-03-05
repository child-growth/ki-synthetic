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

|agecat                     |studyid        |country                      |birthlen   | ever_stunted| n_cell|     n|
|:--------------------------|:--------------|:----------------------------|:----------|------------:|------:|-----:|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |>=50 cm    |            0|      4|    86|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |>=50 cm    |            1|     12|    86|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |<48 cm     |            0|      2|    86|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |<48 cm     |            1|     28|    86|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |[48-50) cm |            0|      5|    86|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |[48-50) cm |            1|     35|    86|
|0-24 months (no birth st.) |CMIN           |BANGLADESH                   |>=50 cm    |            0|      2|    17|
|0-24 months (no birth st.) |CMIN           |BANGLADESH                   |>=50 cm    |            1|      0|    17|
|0-24 months (no birth st.) |CMIN           |BANGLADESH                   |<48 cm     |            0|      7|    17|
|0-24 months (no birth st.) |CMIN           |BANGLADESH                   |<48 cm     |            1|      3|    17|
|0-24 months (no birth st.) |CMIN           |BANGLADESH                   |[48-50) cm |            0|      1|    17|
|0-24 months (no birth st.) |CMIN           |BANGLADESH                   |[48-50) cm |            1|      4|    17|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA                    |>=50 cm    |            0|    174|   802|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA                    |>=50 cm    |            1|    263|   802|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA                    |<48 cm     |            0|     13|   802|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA                    |<48 cm     |            1|    100|   802|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA                    |[48-50) cm |            0|     47|   802|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA                    |[48-50) cm |            1|    205|   802|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |>=50 cm    |            0|   1267|  5848|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |>=50 cm    |            1|    159|  5848|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |<48 cm     |            0|   1082|  5848|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |<48 cm     |            1|    900|  5848|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |[48-50) cm |            0|   1822|  5848|
|0-24 months (no birth st.) |COHORTS        |INDIA                        |[48-50) cm |            1|    618|  5848|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES                  |>=50 cm    |            0|    538|  2863|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES                  |>=50 cm    |            1|    591|  2863|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES                  |<48 cm     |            0|     88|  2863|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES                  |<48 cm     |            1|    487|  2863|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES                  |[48-50) cm |            0|    327|  2863|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES                  |[48-50) cm |            1|    832|  2863|
|0-24 months (no birth st.) |CONTENT        |PERU                         |>=50 cm    |            0|      1|     2|
|0-24 months (no birth st.) |CONTENT        |PERU                         |>=50 cm    |            1|      0|     2|
|0-24 months (no birth st.) |CONTENT        |PERU                         |<48 cm     |            0|      0|     2|
|0-24 months (no birth st.) |CONTENT        |PERU                         |<48 cm     |            1|      1|     2|
|0-24 months (no birth st.) |CONTENT        |PERU                         |[48-50) cm |            0|      0|     2|
|0-24 months (no birth st.) |CONTENT        |PERU                         |[48-50) cm |            1|      0|     2|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |>=50 cm    |            0|      7|   140|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |>=50 cm    |            1|     15|   140|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |<48 cm     |            0|      8|   140|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |<48 cm     |            1|     64|   140|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |[48-50) cm |            0|      9|   140|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |[48-50) cm |            1|     37|   140|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |>=50 cm    |            0|     68|   575|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |>=50 cm    |            1|     36|   575|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |<48 cm     |            0|     81|   575|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |<48 cm     |            1|    182|   575|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |[48-50) cm |            0|    103|   575|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |[48-50) cm |            1|    105|   575|
|0-24 months (no birth st.) |IRC            |INDIA                        |>=50 cm    |            0|     70|   345|
|0-24 months (no birth st.) |IRC            |INDIA                        |>=50 cm    |            1|     72|   345|
|0-24 months (no birth st.) |IRC            |INDIA                        |<48 cm     |            0|     19|   345|
|0-24 months (no birth st.) |IRC            |INDIA                        |<48 cm     |            1|     46|   345|
|0-24 months (no birth st.) |IRC            |INDIA                        |[48-50) cm |            0|     52|   345|
|0-24 months (no birth st.) |IRC            |INDIA                        |[48-50) cm |            1|     86|   345|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |>=50 cm    |            0|   1161| 15071|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |>=50 cm    |            1|     67| 15071|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |<48 cm     |            0|   5554| 15071|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |<48 cm     |            1|   3198| 15071|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |[48-50) cm |            0|   4353| 15071|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |[48-50) cm |            1|    738| 15071|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |>=50 cm    |            0|    737|  3180|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |>=50 cm    |            1|    348|  3180|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |<48 cm     |            0|    495|  3180|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |<48 cm     |            1|    616|  3180|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |[48-50) cm |            0|    589|  3180|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |[48-50) cm |            1|    395|  3180|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |>=50 cm    |            0|    441|  1469|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |>=50 cm    |            1|    323|  1469|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |<48 cm     |            0|     60|  1469|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |<48 cm     |            1|    150|  1469|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |[48-50) cm |            0|    190|  1469|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |[48-50) cm |            1|    305|  1469|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |>=50 cm    |            0|     25|   187|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |>=50 cm    |            1|     10|   187|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |<48 cm     |            0|     27|   187|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |<48 cm     |            1|     46|   187|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |[48-50) cm |            0|     36|   187|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |[48-50) cm |            1|     43|   187|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL                       |>=50 cm    |            0|     23|    56|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL                       |>=50 cm    |            1|      0|    56|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL                       |<48 cm     |            0|      6|    56|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL                       |<48 cm     |            1|      3|    56|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL                       |[48-50) cm |            0|     20|    56|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL                       |[48-50) cm |            1|      4|    56|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |>=50 cm    |            0|      8|    37|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |>=50 cm    |            1|      1|    37|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |<48 cm     |            0|      3|    37|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |<48 cm     |            1|      9|    37|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |[48-50) cm |            0|      6|    37|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |[48-50) cm |            1|     10|    37|
|0-24 months (no birth st.) |MAL-ED         |NEPAL                        |>=50 cm    |            0|      7|    25|
|0-24 months (no birth st.) |MAL-ED         |NEPAL                        |>=50 cm    |            1|      0|    25|
|0-24 months (no birth st.) |MAL-ED         |NEPAL                        |<48 cm     |            0|      5|    25|
|0-24 months (no birth st.) |MAL-ED         |NEPAL                        |<48 cm     |            1|      5|    25|
|0-24 months (no birth st.) |MAL-ED         |NEPAL                        |[48-50) cm |            0|      4|    25|
|0-24 months (no birth st.) |MAL-ED         |NEPAL                        |[48-50) cm |            1|      4|    25|
|0-24 months (no birth st.) |MAL-ED         |PERU                         |>=50 cm    |            0|     24|   207|
|0-24 months (no birth st.) |MAL-ED         |PERU                         |>=50 cm    |            1|     17|   207|
|0-24 months (no birth st.) |MAL-ED         |PERU                         |<48 cm     |            0|     15|   207|
|0-24 months (no birth st.) |MAL-ED         |PERU                         |<48 cm     |            1|     51|   207|
|0-24 months (no birth st.) |MAL-ED         |PERU                         |[48-50) cm |            0|     52|   207|
|0-24 months (no birth st.) |MAL-ED         |PERU                         |[48-50) cm |            1|     48|   207|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA                 |>=50 cm    |            0|     20|   113|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA                 |>=50 cm    |            1|     15|   113|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA                 |<48 cm     |            0|     14|   113|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA                 |<48 cm     |            1|     12|   113|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA                 |[48-50) cm |            0|     26|   113|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA                 |[48-50) cm |            1|     26|   113|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=50 cm    |            0|      7|   102|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=50 cm    |            1|     13|   102|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<48 cm     |            0|      2|   102|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<48 cm     |            1|     19|   102|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[48-50) cm |            0|     11|   102|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[48-50) cm |            1|     50|   102|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH                   |>=50 cm    |            0|     72|   511|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH                   |>=50 cm    |            1|     52|   511|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH                   |<48 cm     |            0|     38|   511|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH                   |<48 cm     |            1|    118|   511|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH                   |[48-50) cm |            0|     94|   511|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH                   |[48-50) cm |            1|    137|   511|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |>=50 cm    |            0|    149|   653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |>=50 cm    |            1|     19|   653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |<48 cm     |            0|     75|   653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |<48 cm     |            1|    112|   653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |[48-50) cm |            0|    172|   653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |[48-50) cm |            1|    126|   653|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |>=50 cm    |            0|  13786| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |>=50 cm    |            1|   1496| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |<48 cm     |            0|     58| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |<48 cm     |            1|     76| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |[48-50) cm |            0|    900| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS                      |[48-50) cm |            1|    449| 16765|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |>=50 cm    |            0|    140|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |>=50 cm    |            1|     29|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |<48 cm     |            0|     70|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |<48 cm     |            1|    111|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |[48-50) cm |            0|    185|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |[48-50) cm |            1|     98|   633|
|0-24 months (no birth st.) |ResPak         |PAKISTAN                     |>=50 cm    |            0|      2|    28|
|0-24 months (no birth st.) |ResPak         |PAKISTAN                     |>=50 cm    |            1|      8|    28|
|0-24 months (no birth st.) |ResPak         |PAKISTAN                     |<48 cm     |            0|      1|    28|
|0-24 months (no birth st.) |ResPak         |PAKISTAN                     |<48 cm     |            1|      4|    28|
|0-24 months (no birth st.) |ResPak         |PAKISTAN                     |[48-50) cm |            0|      8|    28|
|0-24 months (no birth st.) |ResPak         |PAKISTAN                     |[48-50) cm |            1|      5|    28|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |>=50 cm    |            0|    129|  1080|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |>=50 cm    |            1|     83|  1080|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |<48 cm     |            0|    124|  1080|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |<48 cm     |            1|    279|  1080|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |[48-50) cm |            0|    216|  1080|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |[48-50) cm |            1|    249|  1080|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE                     |>=50 cm    |            0|   3100| 12487|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE                     |>=50 cm    |            1|   1026| 12487|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE                     |<48 cm     |            0|   1623| 12487|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE                     |<48 cm     |            1|   1397| 12487|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE                     |[48-50) cm |            0|   3401| 12487|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE                     |[48-50) cm |            1|   1940| 12487|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |>=50 cm    |            0|      8|    85|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |>=50 cm    |            1|      7|    85|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |<48 cm     |            0|     18|    85|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |<48 cm     |            1|     12|    85|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |[48-50) cm |            0|     23|    85|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |[48-50) cm |            1|     17|    85|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH                   |>=50 cm    |            0|      2|    17|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH                   |>=50 cm    |            1|      0|    17|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH                   |<48 cm     |            0|      8|    17|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH                   |<48 cm     |            1|      2|    17|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH                   |[48-50) cm |            0|      4|    17|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH                   |[48-50) cm |            1|      1|    17|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA                    |>=50 cm    |            0|    395|   802|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA                    |>=50 cm    |            1|     42|   802|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA                    |<48 cm     |            0|     42|   802|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA                    |<48 cm     |            1|     71|   802|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA                    |[48-50) cm |            0|    158|   802|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA                    |[48-50) cm |            1|     94|   802|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |>=50 cm    |            0|   1407|  5848|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |>=50 cm    |            1|     19|  5848|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |<48 cm     |            0|   1654|  5848|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |<48 cm     |            1|    328|  5848|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |[48-50) cm |            0|   2325|  5848|
|0-6 months (no birth st.)  |COHORTS        |INDIA                        |[48-50) cm |            1|    115|  5848|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES                  |>=50 cm    |            0|   1049|  2863|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES                  |>=50 cm    |            1|     80|  2863|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES                  |<48 cm     |            0|    342|  2863|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES                  |<48 cm     |            1|    233|  2863|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES                  |[48-50) cm |            0|    930|  2863|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES                  |[48-50) cm |            1|    229|  2863|
|0-6 months (no birth st.)  |CONTENT        |PERU                         |>=50 cm    |            0|      1|     2|
|0-6 months (no birth st.)  |CONTENT        |PERU                         |>=50 cm    |            1|      0|     2|
|0-6 months (no birth st.)  |CONTENT        |PERU                         |<48 cm     |            0|      0|     2|
|0-6 months (no birth st.)  |CONTENT        |PERU                         |<48 cm     |            1|      1|     2|
|0-6 months (no birth st.)  |CONTENT        |PERU                         |[48-50) cm |            0|      0|     2|
|0-6 months (no birth st.)  |CONTENT        |PERU                         |[48-50) cm |            1|      0|     2|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |>=50 cm    |            0|     20|   140|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |>=50 cm    |            1|      2|   140|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |<48 cm     |            0|     19|   140|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |<48 cm     |            1|     53|   140|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |[48-50) cm |            0|     21|   140|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |[48-50) cm |            1|     25|   140|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |>=50 cm    |            0|     99|   575|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |>=50 cm    |            1|      5|   575|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |<48 cm     |            0|    189|   575|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |<48 cm     |            1|     74|   575|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |[48-50) cm |            0|    187|   575|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |[48-50) cm |            1|     21|   575|
|0-6 months (no birth st.)  |IRC            |INDIA                        |>=50 cm    |            0|    109|   345|
|0-6 months (no birth st.)  |IRC            |INDIA                        |>=50 cm    |            1|     33|   345|
|0-6 months (no birth st.)  |IRC            |INDIA                        |<48 cm     |            0|     29|   345|
|0-6 months (no birth st.)  |IRC            |INDIA                        |<48 cm     |            1|     36|   345|
|0-6 months (no birth st.)  |IRC            |INDIA                        |[48-50) cm |            0|     87|   345|
|0-6 months (no birth st.)  |IRC            |INDIA                        |[48-50) cm |            1|     51|   345|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |>=50 cm    |            0|   1203| 15071|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |>=50 cm    |            1|     25| 15071|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |<48 cm     |            0|   6887| 15071|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |<48 cm     |            1|   1865| 15071|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |[48-50) cm |            0|   4868| 15071|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |[48-50) cm |            1|    223| 15071|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |>=50 cm    |            0|   1027|  3180|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |>=50 cm    |            1|     58|  3180|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |<48 cm     |            0|    939|  3180|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |<48 cm     |            1|    172|  3180|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |[48-50) cm |            0|    901|  3180|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |[48-50) cm |            1|     83|  3180|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |>=50 cm    |            0|    646|  1469|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |>=50 cm    |            1|    118|  1469|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |<48 cm     |            0|    103|  1469|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |<48 cm     |            1|    107|  1469|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |[48-50) cm |            0|    345|  1469|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |[48-50) cm |            1|    150|  1469|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |>=50 cm    |            0|     33|   187|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |>=50 cm    |            1|      2|   187|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |<48 cm     |            0|     50|   187|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |<48 cm     |            1|     23|   187|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |[48-50) cm |            0|     64|   187|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |[48-50) cm |            1|     15|   187|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL                       |>=50 cm    |            0|     23|    56|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL                       |>=50 cm    |            1|      0|    56|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL                       |<48 cm     |            0|      7|    56|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL                       |<48 cm     |            1|      2|    56|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL                       |[48-50) cm |            0|     20|    56|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL                       |[48-50) cm |            1|      4|    56|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |>=50 cm    |            0|      9|    37|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |>=50 cm    |            1|      0|    37|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |<48 cm     |            0|      6|    37|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |<48 cm     |            1|      6|    37|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |[48-50) cm |            0|     12|    37|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |[48-50) cm |            1|      4|    37|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL                        |>=50 cm    |            0|      7|    25|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL                        |>=50 cm    |            1|      0|    25|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL                        |<48 cm     |            0|      7|    25|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL                        |<48 cm     |            1|      3|    25|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL                        |[48-50) cm |            0|      8|    25|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL                        |[48-50) cm |            1|      0|    25|
|0-6 months (no birth st.)  |MAL-ED         |PERU                         |>=50 cm    |            0|     37|   207|
|0-6 months (no birth st.)  |MAL-ED         |PERU                         |>=50 cm    |            1|      4|   207|
|0-6 months (no birth st.)  |MAL-ED         |PERU                         |<48 cm     |            0|     27|   207|
|0-6 months (no birth st.)  |MAL-ED         |PERU                         |<48 cm     |            1|     39|   207|
|0-6 months (no birth st.)  |MAL-ED         |PERU                         |[48-50) cm |            0|     74|   207|
|0-6 months (no birth st.)  |MAL-ED         |PERU                         |[48-50) cm |            1|     26|   207|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA                 |>=50 cm    |            0|     31|   113|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA                 |>=50 cm    |            1|      4|   113|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA                 |<48 cm     |            0|     16|   113|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA                 |<48 cm     |            1|     10|   113|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA                 |[48-50) cm |            0|     37|   113|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA                 |[48-50) cm |            1|     15|   113|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=50 cm    |            0|     19|   102|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |>=50 cm    |            1|      1|   102|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<48 cm     |            0|     11|   102|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |<48 cm     |            1|     10|   102|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[48-50) cm |            0|     45|   102|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |[48-50) cm |            1|     16|   102|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH                   |>=50 cm    |            0|    116|   511|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH                   |>=50 cm    |            1|      8|   511|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH                   |<48 cm     |            0|     90|   511|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH                   |<48 cm     |            1|     66|   511|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH                   |[48-50) cm |            0|    187|   511|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH                   |[48-50) cm |            1|     44|   511|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |>=50 cm    |            0|    167|   653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |>=50 cm    |            1|      1|   653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |<48 cm     |            0|    115|   653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |<48 cm     |            1|     72|   653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |[48-50) cm |            0|    247|   653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |[48-50) cm |            1|     51|   653|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |>=50 cm    |            0|  14653| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |>=50 cm    |            1|    627| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |<48 cm     |            0|     64| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |<48 cm     |            1|     70| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |[48-50) cm |            0|   1016| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS                      |[48-50) cm |            1|    333| 16763|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |>=50 cm    |            0|    165|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |>=50 cm    |            1|      4|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |<48 cm     |            0|    110|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |<48 cm     |            1|     71|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |[48-50) cm |            0|    257|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |[48-50) cm |            1|     26|   633|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN                     |>=50 cm    |            0|      3|    28|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN                     |>=50 cm    |            1|      7|    28|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN                     |<48 cm     |            0|      1|    28|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN                     |<48 cm     |            1|      4|    28|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN                     |[48-50) cm |            0|      9|    28|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN                     |[48-50) cm |            1|      4|    28|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |>=50 cm    |            0|    195|  1079|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |>=50 cm    |            1|     16|  1079|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |<48 cm     |            0|    276|  1079|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |<48 cm     |            1|    127|  1079|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |[48-50) cm |            0|    398|  1079|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |[48-50) cm |            1|     67|  1079|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE                     |>=50 cm    |            0|   3704| 12486|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE                     |>=50 cm    |            1|    422| 12486|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE                     |<48 cm     |            0|   2245| 12486|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE                     |<48 cm     |            1|    774| 12486|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE                     |[48-50) cm |            0|   4378| 12486|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE                     |[48-50) cm |            1|    963| 12486|


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ResPak, country: PAKISTAN

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/b6109ec3-76af-401d-8342-8aaeaa2a0ee7/7f30a871-509b-47b7-9edc-3c515b04ae47/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b6109ec3-76af-401d-8342-8aaeaa2a0ee7/7f30a871-509b-47b7-9edc-3c515b04ae47/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b6109ec3-76af-401d-8342-8aaeaa2a0ee7/7f30a871-509b-47b7-9edc-3c515b04ae47/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b6109ec3-76af-401d-8342-8aaeaa2a0ee7/7f30a871-509b-47b7-9edc-3c515b04ae47/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                     |studyid        |country      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:--------------|:------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA    |>=50 cm            |NA             | 0.6008496| 0.5547320| 0.6469671|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA    |<48 cm             |NA             | 0.8872887| 0.8270110| 0.9475664|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA    |[48-50) cm         |NA             | 0.8144329| 0.7657407| 0.8631250|
|0-24 months (no birth st.) |COHORTS        |INDIA        |>=50 cm            |NA             | 0.1124418| 0.0961130| 0.1287706|
|0-24 months (no birth st.) |COHORTS        |INDIA        |<48 cm             |NA             | 0.4549257| 0.4331424| 0.4767091|
|0-24 months (no birth st.) |COHORTS        |INDIA        |[48-50) cm         |NA             | 0.2546393| 0.2374373| 0.2718412|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES  |>=50 cm            |NA             | 0.5280205| 0.4995908| 0.5564501|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES  |<48 cm             |NA             | 0.8413168| 0.8123846| 0.8702490|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES  |[48-50) cm         |NA             | 0.7156111| 0.6898197| 0.7414025|
|0-24 months (no birth st.) |EE             |PAKISTAN     |>=50 cm            |NA             | 0.6818182| 0.4864898| 0.8771466|
|0-24 months (no birth st.) |EE             |PAKISTAN     |<48 cm             |NA             | 0.8888889| 0.8160370| 0.9617408|
|0-24 months (no birth st.) |EE             |PAKISTAN     |[48-50) cm         |NA             | 0.8043478| 0.6892969| 0.9193987|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |>=50 cm            |NA             | 0.3450125| 0.2533246| 0.4367004|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |<48 cm             |NA             | 0.6967048| 0.6410527| 0.7523568|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |[48-50) cm         |NA             | 0.4978719| 0.4293874| 0.5663564|
|0-24 months (no birth st.) |IRC            |INDIA        |>=50 cm            |NA             | 0.5029232| 0.4194966| 0.5863498|
|0-24 months (no birth st.) |IRC            |INDIA        |<48 cm             |NA             | 0.7243380| 0.6124413| 0.8362346|
|0-24 months (no birth st.) |IRC            |INDIA        |[48-50) cm         |NA             | 0.6181692| 0.5371308| 0.6992076|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |>=50 cm            |NA             | 0.0560849| 0.0422878| 0.0698821|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |<48 cm             |NA             | 0.3628391| 0.3515486| 0.3741295|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |[48-50) cm         |NA             | 0.1456578| 0.1347424| 0.1565731|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |>=50 cm            |NA             | 0.3345782| 0.3003676| 0.3687888|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |<48 cm             |NA             | 0.5580135| 0.5204450| 0.5955821|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |[48-50) cm         |NA             | 0.3869490| 0.3485048| 0.4253932|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |>=50 cm            |NA             | 0.4097480| 0.3748355| 0.4446606|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |<48 cm             |NA             | 0.7352102| 0.6737871| 0.7966333|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |[48-50) cm         |NA             | 0.6254188| 0.5830746| 0.6677629|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |>=50 cm            |NA             | 0.2887820| 0.1386128| 0.4389511|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |<48 cm             |NA             | 0.6339147| 0.5200063| 0.7478231|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |[48-50) cm         |NA             | 0.5512620| 0.4389575| 0.6635665|
|0-24 months (no birth st.) |MAL-ED         |PERU         |>=50 cm            |NA             | 0.4057923| 0.2457318| 0.5658527|
|0-24 months (no birth st.) |MAL-ED         |PERU         |<48 cm             |NA             | 0.7782240| 0.6765130| 0.8799350|
|0-24 months (no birth st.) |MAL-ED         |PERU         |[48-50) cm         |NA             | 0.4865772| 0.3879577| 0.5851967|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |>=50 cm            |NA             | 0.3887573| 0.2162789| 0.5612356|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |<48 cm             |NA             | 0.4380093| 0.2444842| 0.6315344|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |[48-50) cm         |NA             | 0.4941140| 0.3566077| 0.6316203|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |>=50 cm            |NA             | 0.4063093| 0.3182121| 0.4944065|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |<48 cm             |NA             | 0.7505310| 0.6830078| 0.8180541|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |[48-50) cm         |NA             | 0.5887027| 0.5246971| 0.6527083|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |>=50 cm            |NA             | 0.1117651| 0.0636637| 0.1598666|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |<48 cm             |NA             | 0.5991204| 0.5277046| 0.6705362|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |[48-50) cm         |NA             | 0.4219503| 0.3656202| 0.4782804|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |>=50 cm            |NA             | 0.0984448| 0.0822409| 0.1146488|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |<48 cm             |NA             | 0.5428374| 0.4955508| 0.5901240|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |[48-50) cm         |NA             | 0.3186444| 0.2638152| 0.3734736|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |>=50 cm            |NA             | 0.1728603| 0.1152883| 0.2304323|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |<48 cm             |NA             | 0.6102459| 0.5381804| 0.6823114|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |[48-50) cm         |NA             | 0.3464893| 0.2911015| 0.4018771|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |>=50 cm            |NA             | 0.3979488| 0.3354945| 0.4604032|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |<48 cm             |NA             | 0.6955000| 0.6335558| 0.7574441|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |[48-50) cm         |NA             | 0.5339424| 0.4696298| 0.5982550|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |>=50 cm            |NA             | 0.2428806| 0.2296535| 0.2561076|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |<48 cm             |NA             | 0.4763262| 0.4583858| 0.4942667|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |[48-50) cm         |NA             | 0.3636357| 0.3505905| 0.3766810|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |>=50 cm            |NA             | 0.4666667| 0.2127010| 0.7206323|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |<48 cm             |NA             | 0.4000000| 0.2236551| 0.5763449|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |[48-50) cm         |NA             | 0.4250000| 0.2708952| 0.5791048|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA    |>=50 cm            |NA             | 0.0943043| 0.0665591| 0.1220495|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA    |<48 cm             |NA             | 0.6297181| 0.5396368| 0.7197994|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA    |[48-50) cm         |NA             | 0.3759859| 0.3157592| 0.4362126|
|0-6 months (no birth st.)  |COHORTS        |INDIA        |>=50 cm            |NA             | 0.0140558| 0.0079629| 0.0201488|
|0-6 months (no birth st.)  |COHORTS        |INDIA        |<48 cm             |NA             | 0.1600593| 0.1439944| 0.1761242|
|0-6 months (no birth st.)  |COHORTS        |INDIA        |[48-50) cm         |NA             | 0.0473989| 0.0389666| 0.0558312|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES  |>=50 cm            |NA             | 0.0682717| 0.0534479| 0.0830955|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES  |<48 cm             |NA             | 0.4121030| 0.3727319| 0.4514742|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES  |[48-50) cm         |NA             | 0.1997437| 0.1768244| 0.2226631|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |>=50 cm            |NA             | 0.0480769| 0.0069261| 0.0892278|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |<48 cm             |NA             | 0.2813688| 0.2269763| 0.3357613|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |[48-50) cm         |NA             | 0.1009615| 0.0599825| 0.1419406|
|0-6 months (no birth st.)  |IRC            |INDIA        |>=50 cm            |NA             | 0.2270879| 0.1565619| 0.2976139|
|0-6 months (no birth st.)  |IRC            |INDIA        |<48 cm             |NA             | 0.5313430| 0.4059479| 0.6567381|
|0-6 months (no birth st.)  |IRC            |INDIA        |[48-50) cm         |NA             | 0.3626576| 0.2811385| 0.4441767|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |>=50 cm            |NA             | 0.0214461| 0.0128751| 0.0300170|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |<48 cm             |NA             | 0.2107216| 0.2013742| 0.2200690|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |[48-50) cm         |NA             | 0.0436027| 0.0373692| 0.0498362|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |>=50 cm            |NA             | 0.0535512| 0.0368006| 0.0703019|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |<48 cm             |NA             | 0.1620500| 0.1345766| 0.1895233|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |[48-50) cm         |NA             | 0.0820150| 0.0597158| 0.1043141|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |>=50 cm            |NA             | 0.1503799| 0.1249041| 0.1758557|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |<48 cm             |NA             | 0.5122005| 0.4428352| 0.5815658|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |[48-50) cm         |NA             | 0.3062099| 0.2652327| 0.3471871|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |>=50 cm            |NA             | 0.0645161| 0.0212334| 0.1077989|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |<48 cm             |NA             | 0.4230769| 0.3454737| 0.5006801|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |[48-50) cm         |NA             | 0.1904762| 0.1397885| 0.2411639|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |>=50 cm            |NA             | 0.0406931| 0.0303298| 0.0510564|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |<48 cm             |NA             | 0.5573965| 0.5145767| 0.6002162|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |[48-50) cm         |NA             | 0.2696499| 0.2128343| 0.3264656|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |>=50 cm            |NA             | 0.0798647| 0.0545470| 0.1051824|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |<48 cm             |NA             | 0.3073951| 0.2594302| 0.3553600|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |[48-50) cm         |NA             | 0.1450995| 0.1176848| 0.1725141|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |>=50 cm            |NA             | 0.0981226| 0.0889578| 0.1072874|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |<48 cm             |NA             | 0.2703422| 0.2542751| 0.2864094|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |[48-50) cm         |NA             | 0.1808103| 0.1703440| 0.1912766|


### Parameter: E(Y)


|agecat                     |studyid        |country      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:--------------|:------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA    |NA                 |NA             | 0.7082294| 0.6767491| 0.7397098|
|0-24 months (no birth st.) |COHORTS        |INDIA        |NA                 |NA             | 0.2867647| 0.2751726| 0.2983568|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES  |NA                 |NA             | 0.6671324| 0.6498678| 0.6843969|
|0-24 months (no birth st.) |EE             |PAKISTAN     |NA                 |NA             | 0.8285714| 0.7659176| 0.8912252|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |NA                 |NA             | 0.5617391| 0.5211485| 0.6023298|
|0-24 months (no birth st.) |IRC            |INDIA        |NA                 |NA             | 0.5913043| 0.5393557| 0.6432530|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |NA                 |NA             | 0.2656094| 0.2573816| 0.2738373|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |NA                 |NA             | 0.4273585| 0.4069266| 0.4477904|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |NA                 |NA             | 0.5296120| 0.5040796| 0.5551444|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |NA                 |NA             | 0.5294118| 0.4576804| 0.6011431|
|0-24 months (no birth st.) |MAL-ED         |PERU         |NA                 |NA             | 0.5603865| 0.4926077| 0.6281653|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |NA                 |NA             | 0.4690265| 0.3766048| 0.5614483|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |NA                 |NA             | 0.6007828| 0.5582791| 0.6432864|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |NA                 |NA             | 0.3935681| 0.3560687| 0.4310676|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |NA                 |NA             | 0.1205488| 0.1047261| 0.1363714|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |NA                 |NA             | 0.3759874| 0.3382238| 0.4137509|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |NA                 |NA             | 0.5657407| 0.5074689| 0.6240126|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |NA                 |NA             | 0.3494034| 0.3410405| 0.3577663|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |NA                 |NA             | 0.4235294| 0.3178625| 0.5291963|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA    |NA                 |NA             | 0.2581047| 0.2278007| 0.2884088|
|0-6 months (no birth st.)  |COHORTS        |INDIA        |NA                 |NA             | 0.0790014| 0.0720874| 0.0859154|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES  |NA                 |NA             | 0.1893119| 0.1749594| 0.2036645|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |NA                 |NA             | 0.1739130| 0.1429052| 0.2049209|
|0-6 months (no birth st.)  |IRC            |INDIA        |NA                 |NA             | 0.3478261| 0.2974955| 0.3981566|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |NA                 |NA             | 0.1402030| 0.1340165| 0.1463895|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |NA                 |NA             | 0.0984277| 0.0855770| 0.1112784|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |NA                 |NA             | 0.2552757| 0.2329715| 0.2775799|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |NA                 |NA             | 0.2309198| 0.1943452| 0.2674943|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |NA                 |NA             | 0.0614448| 0.0507274| 0.0721623|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |NA                 |NA             | 0.1946247| 0.1703263| 0.2189230|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |NA                 |NA             | 0.1729137| 0.1662801| 0.1795472|


### Parameter: RR


|agecat                     |studyid        |country      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:--------------------------|:--------------|:------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA    |>=50 cm            |>=50 cm        |  1.0000000|  1.0000000|  1.000000|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA    |<48 cm             |>=50 cm        |  1.4767235|  1.3327880|  1.636203|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA    |[48-50) cm         |>=50 cm        |  1.3554688|  1.2297190|  1.494078|
|0-24 months (no birth st.) |COHORTS        |INDIA        |>=50 cm            |>=50 cm        |  1.0000000|  1.0000000|  1.000000|
|0-24 months (no birth st.) |COHORTS        |INDIA        |<48 cm             |>=50 cm        |  4.0458772|  3.4743833|  4.711375|
|0-24 months (no birth st.) |COHORTS        |INDIA        |[48-50) cm         |>=50 cm        |  2.2646315|  1.9316717|  2.654983|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES  |>=50 cm            |>=50 cm        |  1.0000000|  1.0000000|  1.000000|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES  |<48 cm             |>=50 cm        |  1.5933413|  1.4956801|  1.697379|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES  |[48-50) cm         |>=50 cm        |  1.3552716|  1.2714525|  1.444616|
|0-24 months (no birth st.) |EE             |PAKISTAN     |>=50 cm            |>=50 cm        |  1.0000000|  1.0000000|  1.000000|
|0-24 months (no birth st.) |EE             |PAKISTAN     |<48 cm             |>=50 cm        |  1.3037037|  0.9677655|  1.756255|
|0-24 months (no birth st.) |EE             |PAKISTAN     |[48-50) cm         |>=50 cm        |  1.1797101|  0.8564700|  1.624944|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |>=50 cm            |>=50 cm        |  1.0000000|  1.0000000|  1.000000|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |<48 cm             |>=50 cm        |  2.0193612|  1.5305523|  2.664280|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |[48-50) cm         |>=50 cm        |  1.4430549|  1.0702113|  1.945791|
|0-24 months (no birth st.) |IRC            |INDIA        |>=50 cm            |>=50 cm        |  1.0000000|  1.0000000|  1.000000|
|0-24 months (no birth st.) |IRC            |INDIA        |<48 cm             |>=50 cm        |  1.4402556|  1.1481031|  1.806751|
|0-24 months (no birth st.) |IRC            |INDIA        |[48-50) cm         |>=50 cm        |  1.2291524|  0.9954767|  1.517680|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |>=50 cm            |>=50 cm        |  1.0000000|  1.0000000|  1.000000|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |<48 cm             |>=50 cm        |  6.4694575|  5.0652797|  8.262896|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |[48-50) cm         |>=50 cm        |  2.5970929|  2.0131569|  3.350405|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |>=50 cm            |>=50 cm        |  1.0000000|  1.0000000|  1.000000|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |<48 cm             |>=50 cm        |  1.6678119|  1.4749555|  1.885885|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |[48-50) cm         |>=50 cm        |  1.1565278|  1.0004028|  1.337018|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |>=50 cm            |>=50 cm        |  1.0000000|  1.0000000|  1.000000|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |<48 cm             |>=50 cm        |  1.7942983|  1.5930781|  2.020934|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |[48-50) cm         |>=50 cm        |  1.5263496|  1.3702447|  1.700239|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |>=50 cm            |>=50 cm        |  1.0000000|  1.0000000|  1.000000|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |<48 cm             |>=50 cm        |  2.1951324|  1.2643286|  3.811198|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |[48-50) cm         |>=50 cm        |  1.9089209|  1.0913402|  3.338995|
|0-24 months (no birth st.) |MAL-ED         |PERU         |>=50 cm            |>=50 cm        |  1.0000000|  1.0000000|  1.000000|
|0-24 months (no birth st.) |MAL-ED         |PERU         |<48 cm             |>=50 cm        |  1.9177890|  1.2628628|  2.912363|
|0-24 months (no birth st.) |MAL-ED         |PERU         |[48-50) cm         |>=50 cm        |  1.1990794|  0.7692075|  1.869185|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |>=50 cm            |>=50 cm        |  1.0000000|  1.0000000|  1.000000|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |<48 cm             |>=50 cm        |  1.1266909|  0.6006703|  2.113360|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |[48-50) cm         |>=50 cm        |  1.2710090|  0.7525321|  2.146704|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |>=50 cm            |>=50 cm        |  1.0000000|  1.0000000|  1.000000|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |<48 cm             |>=50 cm        |  1.8471911|  1.4602220|  2.336710|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |[48-50) cm         |>=50 cm        |  1.4489028|  1.1358761|  1.848194|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |>=50 cm            |>=50 cm        |  1.0000000|  1.0000000|  1.000000|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |<48 cm             |>=50 cm        |  5.3605302|  3.4293250|  8.379283|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |[48-50) cm         |>=50 cm        |  3.7753297|  2.4060564|  5.923849|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |>=50 cm            |>=50 cm        |  1.0000000|  1.0000000|  1.000000|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |<48 cm             |>=50 cm        |  5.5141291|  4.6399533|  6.553001|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |[48-50) cm         |>=50 cm        |  3.2367821|  2.6781076|  3.912000|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |>=50 cm            |>=50 cm        |  1.0000000|  1.0000000|  1.000000|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |<48 cm             |>=50 cm        |  3.5302839|  2.4780424|  5.029335|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |[48-50) cm         |>=50 cm        |  2.0044470|  1.3852824|  2.900353|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |>=50 cm            |>=50 cm        |  1.0000000|  1.0000000|  1.000000|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |<48 cm             |>=50 cm        |  1.7477121|  1.4666857|  2.082585|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |[48-50) cm         |>=50 cm        |  1.3417363|  1.1422268|  1.576094|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |>=50 cm            |>=50 cm        |  1.0000000|  1.0000000|  1.000000|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |<48 cm             |>=50 cm        |  1.9611540|  1.8357423|  2.095133|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |[48-50) cm         |>=50 cm        |  1.4971791|  1.4028327|  1.597871|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |>=50 cm            |>=50 cm        |  1.0000000|  1.0000000|  1.000000|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |<48 cm             |>=50 cm        |  0.8571429|  0.4254846|  1.726723|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |[48-50) cm         |>=50 cm        |  0.9107143|  0.4735622|  1.751408|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA    |>=50 cm            |>=50 cm        |  1.0000000|  1.0000000|  1.000000|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA    |<48 cm             |>=50 cm        |  6.6775139|  4.8147239|  9.261007|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA    |[48-50) cm         |>=50 cm        |  3.9869442|  2.8511541|  5.575189|
|0-6 months (no birth st.)  |COHORTS        |INDIA        |>=50 cm            |>=50 cm        |  1.0000000|  1.0000000|  1.000000|
|0-6 months (no birth st.)  |COHORTS        |INDIA        |<48 cm             |>=50 cm        | 11.3874097|  7.2987132| 17.766570|
|0-6 months (no birth st.)  |COHORTS        |INDIA        |[48-50) cm         |>=50 cm        |  3.3721940|  2.1109635|  5.386968|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES  |>=50 cm            |>=50 cm        |  1.0000000|  1.0000000|  1.000000|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES  |<48 cm             |>=50 cm        |  6.0362176|  4.7647156|  7.647030|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES  |[48-50) cm         |>=50 cm        |  2.9257166|  2.2907714|  3.736653|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |>=50 cm            |>=50 cm        |  1.0000000|  1.0000000|  1.000000|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |<48 cm             |>=50 cm        |  5.8524715|  2.4335914| 14.074434|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |[48-50) cm         |>=50 cm        |  2.1000000|  0.8143536|  5.415338|
|0-6 months (no birth st.)  |IRC            |INDIA        |>=50 cm            |>=50 cm        |  1.0000000|  1.0000000|  1.000000|
|0-6 months (no birth st.)  |IRC            |INDIA        |<48 cm             |>=50 cm        |  2.3398117|  1.5813317|  3.462094|
|0-6 months (no birth st.)  |IRC            |INDIA        |[48-50) cm         |>=50 cm        |  1.5969918|  1.0882290|  2.343609|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |>=50 cm            |>=50 cm        |  1.0000000|  1.0000000|  1.000000|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |<48 cm             |>=50 cm        |  9.8256593|  6.6078875| 14.610355|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |[48-50) cm         |>=50 cm        |  2.0331342|  1.3577009|  3.044584|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |>=50 cm            |>=50 cm        |  1.0000000|  1.0000000|  1.000000|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |<48 cm             |>=50 cm        |  3.0260735|  2.1282619|  4.302629|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |[48-50) cm         |>=50 cm        |  1.5315232|  1.0110805|  2.319858|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |>=50 cm            |>=50 cm        |  1.0000000|  1.0000000|  1.000000|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |<48 cm             |>=50 cm        |  3.4060431|  2.7426754|  4.229859|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |[48-50) cm         |>=50 cm        |  2.0362417|  1.6415198|  2.525879|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |>=50 cm            |>=50 cm        |  1.0000000|  1.0000000|  1.000000|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |<48 cm             |>=50 cm        |  6.5576923|  3.2711209| 13.146359|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |[48-50) cm         |>=50 cm        |  2.9523810|  1.4345899|  6.075990|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |>=50 cm            |>=50 cm        |  1.0000000|  1.0000000|  1.000000|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |<48 cm             |>=50 cm        | 13.6975635| 10.6436115| 17.627780|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |[48-50) cm         |>=50 cm        |  6.6264271|  5.1285123|  8.561847|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |>=50 cm            |>=50 cm        |  1.0000000|  1.0000000|  1.000000|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |<48 cm             |>=50 cm        |  3.8489473|  2.6835714|  5.520403|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |[48-50) cm         |>=50 cm        |  1.8168157|  1.2042875|  2.740890|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |>=50 cm            |>=50 cm        |  1.0000000|  1.0000000|  1.000000|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |<48 cm             |>=50 cm        |  2.7551464|  2.4667419|  3.077270|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |[48-50) cm         |>=50 cm        |  1.8426973|  1.6512314|  2.056364|


### Parameter: PAR


|agecat                     |studyid        |country      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:--------------------------|:--------------|:------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA    |>=50 cm            |NA             |  0.1073799|  0.0788734| 0.1358863|
|0-24 months (no birth st.) |COHORTS        |INDIA        |>=50 cm            |NA             |  0.1743229|  0.1579311| 0.1907147|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES  |>=50 cm            |NA             |  0.1391119|  0.1179409| 0.1602830|
|0-24 months (no birth st.) |EE             |PAKISTAN     |>=50 cm            |NA             |  0.1467532| -0.0267047| 0.3202112|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |>=50 cm            |NA             |  0.2167267|  0.1329606| 0.3004927|
|0-24 months (no birth st.) |IRC            |INDIA        |>=50 cm            |NA             |  0.0883812|  0.0251863| 0.1515760|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |>=50 cm            |NA             |  0.2095245|  0.1952762| 0.2237728|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |>=50 cm            |NA             |  0.0927803|  0.0631860| 0.1223745|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |>=50 cm            |NA             |  0.1198639|  0.0953513| 0.1443766|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |>=50 cm            |NA             |  0.2406298|  0.1012485| 0.3800110|
|0-24 months (no birth st.) |MAL-ED         |PERU         |>=50 cm            |NA             |  0.1545942|  0.0103897| 0.2987987|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |>=50 cm            |NA             |  0.0802693| -0.0652829| 0.2258214|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |>=50 cm            |NA             |  0.1944734|  0.1175544| 0.2713925|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |>=50 cm            |NA             |  0.2818030|  0.2314134| 0.3321926|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |>=50 cm            |NA             |  0.0221040|  0.0176521| 0.0265558|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |>=50 cm            |NA             |  0.2031271|  0.1484268| 0.2578273|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |>=50 cm            |NA             |  0.1677919|  0.1030041| 0.2325797|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |>=50 cm            |NA             |  0.1065228|  0.0950793| 0.1179663|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |>=50 cm            |NA             | -0.0431373| -0.2731369| 0.1868624|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA    |>=50 cm            |NA             |  0.1638005|  0.1345284| 0.1930725|
|0-6 months (no birth st.)  |COHORTS        |INDIA        |>=50 cm            |NA             |  0.0649456|  0.0567516| 0.0731395|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES  |>=50 cm            |NA             |  0.1210402|  0.1052402| 0.1368402|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |>=50 cm            |NA             |  0.1258361|  0.0806442| 0.1710280|
|0-6 months (no birth st.)  |IRC            |INDIA        |>=50 cm            |NA             |  0.1207382|  0.0616962| 0.1797801|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |>=50 cm            |NA             |  0.1187570|  0.1095949| 0.1279190|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |>=50 cm            |NA             |  0.0448764|  0.0292179| 0.0605349|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |>=50 cm            |NA             |  0.1048958|  0.0832039| 0.1265877|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |>=50 cm            |NA             |  0.1664036|  0.1184256| 0.2143817|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |>=50 cm            |NA             |  0.0207517|  0.0167777| 0.0247258|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |>=50 cm            |NA             |  0.1147599|  0.0792509| 0.1502690|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |>=50 cm            |NA             |  0.0747910|  0.0662673| 0.0833148|


### Parameter: PAF


|agecat                     |studyid        |country      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:--------------------------|:--------------|:------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA    |>=50 cm            |NA             |  0.1516173|  0.1085703| 0.1925856|
|0-24 months (no birth st.) |COHORTS        |INDIA        |>=50 cm            |NA             |  0.6078952|  0.5505693| 0.6579091|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES  |>=50 cm            |NA             |  0.2085222|  0.1752021| 0.2404962|
|0-24 months (no birth st.) |EE             |PAKISTAN     |>=50 cm            |NA             |  0.1771160| -0.0650910| 0.3642439|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |>=50 cm            |NA             |  0.3858137|  0.2150660| 0.5194185|
|0-24 months (no birth st.) |IRC            |INDIA        |>=50 cm            |NA             |  0.1494681|  0.0340759| 0.2510752|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |>=50 cm            |NA             |  0.7888444|  0.7314664| 0.8339623|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |>=50 cm            |NA             |  0.2171017|  0.1450009| 0.2831225|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |>=50 cm            |NA             |  0.2263241|  0.1775860| 0.2721738|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |>=50 cm            |NA             |  0.4545229|  0.1145472| 0.6639626|
|0-24 months (no birth st.) |MAL-ED         |PERU         |>=50 cm            |NA             |  0.2758707| -0.0367526| 0.4942252|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |>=50 cm            |NA             |  0.1711401| -0.2079638| 0.4312672|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |>=50 cm            |NA             |  0.3237001|  0.1801294| 0.4421296|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |>=50 cm            |NA             |  0.7160209|  0.5724293| 0.8113899|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |>=50 cm            |NA             |  0.1833611|  0.1392330| 0.2252269|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |>=50 cm            |NA             |  0.5402497|  0.3751833| 0.6617082|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |>=50 cm            |NA             |  0.2965880|  0.1855693| 0.3924733|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |>=50 cm            |NA             |  0.3048705|  0.2715202| 0.3366941|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |>=50 cm            |NA             | -0.1018519| -0.8043179| 0.3271266|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA    |>=50 cm            |NA             |  0.6346279|  0.5274261| 0.7175113|
|0-6 months (no birth st.)  |COHORTS        |INDIA        |>=50 cm            |NA             |  0.8220814|  0.7282020| 0.8835348|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES  |>=50 cm            |NA             |  0.6393690|  0.5603337| 0.7041968|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |>=50 cm            |NA             |  0.7235577|  0.3651686| 0.8796210|
|0-6 months (no birth st.)  |IRC            |INDIA        |>=50 cm            |NA             |  0.3471222|  0.1550903| 0.4955089|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |>=50 cm            |NA             |  0.8470358|  0.7739804| 0.8964777|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |>=50 cm            |NA             |  0.4559331|  0.2821390| 0.5876517|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |>=50 cm            |NA             |  0.4109117|  0.3245248| 0.4862505|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |>=50 cm            |NA             |  0.7206124|  0.4682685| 0.8532014|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |>=50 cm            |NA             |  0.3377295|  0.2587100| 0.4083257|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |>=50 cm            |NA             |  0.5896475|  0.4214667| 0.7089378|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |>=50 cm            |NA             |  0.4325339|  0.3832586| 0.4778723|
