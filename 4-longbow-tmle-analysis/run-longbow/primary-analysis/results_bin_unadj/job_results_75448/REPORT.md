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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                     |studyid        |country      |birthlen   | ever_stunted| n_cell|     n|
|:--------------------------|:--------------|:------------|:----------|------------:|------:|-----:|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |>=50 cm    |            0|      4|    86|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |>=50 cm    |            1|     12|    86|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |<48 cm     |            0|      2|    86|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |<48 cm     |            1|     28|    86|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |[48-50) cm |            0|      5|    86|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA        |[48-50) cm |            1|     35|    86|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |>=50 cm    |            0|      2|    17|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |>=50 cm    |            1|      0|    17|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |<48 cm     |            0|      7|    17|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |<48 cm     |            1|      3|    17|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |[48-50) cm |            0|      1|    17|
|0-24 months (no birth st.) |CMIN           |BANGLADESH   |[48-50) cm |            1|      4|    17|
|0-24 months (no birth st.) |COHORTS        |INDIA        |>=50 cm    |            0|   1267|  5848|
|0-24 months (no birth st.) |COHORTS        |INDIA        |>=50 cm    |            1|    159|  5848|
|0-24 months (no birth st.) |COHORTS        |INDIA        |<48 cm     |            0|   1082|  5848|
|0-24 months (no birth st.) |COHORTS        |INDIA        |<48 cm     |            1|    900|  5848|
|0-24 months (no birth st.) |COHORTS        |INDIA        |[48-50) cm |            0|   1822|  5848|
|0-24 months (no birth st.) |COHORTS        |INDIA        |[48-50) cm |            1|    618|  5848|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA    |>=50 cm    |            0|    174|   802|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA    |>=50 cm    |            1|    263|   802|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA    |<48 cm     |            0|     13|   802|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA    |<48 cm     |            1|    100|   802|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA    |[48-50) cm |            0|     47|   802|
|0-24 months (no birth st.) |COHORTS        |GUATEMALA    |[48-50) cm |            1|    205|   802|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES  |>=50 cm    |            0|    538|  2863|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES  |>=50 cm    |            1|    591|  2863|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES  |<48 cm     |            0|     88|  2863|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES  |<48 cm     |            1|    487|  2863|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES  |[48-50) cm |            0|    327|  2863|
|0-24 months (no birth st.) |COHORTS        |PHILIPPINES  |[48-50) cm |            1|    832|  2863|
|0-24 months (no birth st.) |CONTENT        |PERU         |>=50 cm    |            0|      1|     2|
|0-24 months (no birth st.) |CONTENT        |PERU         |>=50 cm    |            1|      0|     2|
|0-24 months (no birth st.) |CONTENT        |PERU         |<48 cm     |            0|      0|     2|
|0-24 months (no birth st.) |CONTENT        |PERU         |<48 cm     |            1|      1|     2|
|0-24 months (no birth st.) |CONTENT        |PERU         |[48-50) cm |            0|      0|     2|
|0-24 months (no birth st.) |CONTENT        |PERU         |[48-50) cm |            1|      0|     2|
|0-24 months (no birth st.) |EE             |PAKISTAN     |>=50 cm    |            0|      7|   140|
|0-24 months (no birth st.) |EE             |PAKISTAN     |>=50 cm    |            1|     15|   140|
|0-24 months (no birth st.) |EE             |PAKISTAN     |<48 cm     |            0|      8|   140|
|0-24 months (no birth st.) |EE             |PAKISTAN     |<48 cm     |            1|     64|   140|
|0-24 months (no birth st.) |EE             |PAKISTAN     |[48-50) cm |            0|      9|   140|
|0-24 months (no birth st.) |EE             |PAKISTAN     |[48-50) cm |            1|     37|   140|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |>=50 cm    |            0|     68|   575|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |>=50 cm    |            1|     36|   575|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |<48 cm     |            0|     81|   575|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |<48 cm     |            1|    182|   575|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |[48-50) cm |            0|    103|   575|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL        |[48-50) cm |            1|    105|   575|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |>=50 cm    |            0|   1161| 15071|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |>=50 cm    |            1|     67| 15071|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |<48 cm     |            0|   5554| 15071|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |<48 cm     |            1|   3198| 15071|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |[48-50) cm |            0|   4353| 15071|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH   |[48-50) cm |            1|    738| 15071|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |>=50 cm    |            0|    737|  3180|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |>=50 cm    |            1|    348|  3180|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |<48 cm     |            0|    495|  3180|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |<48 cm     |            1|    616|  3180|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |[48-50) cm |            0|    589|  3180|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH   |[48-50) cm |            1|    395|  3180|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |>=50 cm    |            0|    441|  1469|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |>=50 cm    |            1|    323|  1469|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |<48 cm     |            0|     60|  1469|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |<48 cm     |            1|    150|  1469|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |[48-50) cm |            0|    190|  1469|
|0-24 months (no birth st.) |Keneba         |GAMBIA       |[48-50) cm |            1|    305|  1469|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |>=50 cm    |            0|      8|    37|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |>=50 cm    |            1|      1|    37|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |<48 cm     |            0|      3|    37|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |<48 cm     |            1|      9|    37|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |[48-50) cm |            0|      6|    37|
|0-24 months (no birth st.) |MAL-ED         |INDIA        |[48-50) cm |            1|     10|    37|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |>=50 cm    |            0|     25|   187|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |>=50 cm    |            1|     10|   187|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |<48 cm     |            0|     27|   187|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |<48 cm     |            1|     46|   187|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |[48-50) cm |            0|     36|   187|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH   |[48-50) cm |            1|     43|   187|
|0-24 months (no birth st.) |MAL-ED         |PERU         |>=50 cm    |            0|     24|   207|
|0-24 months (no birth st.) |MAL-ED         |PERU         |>=50 cm    |            1|     17|   207|
|0-24 months (no birth st.) |MAL-ED         |PERU         |<48 cm     |            0|     15|   207|
|0-24 months (no birth st.) |MAL-ED         |PERU         |<48 cm     |            1|     51|   207|
|0-24 months (no birth st.) |MAL-ED         |PERU         |[48-50) cm |            0|     52|   207|
|0-24 months (no birth st.) |MAL-ED         |PERU         |[48-50) cm |            1|     48|   207|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |>=50 cm    |            0|      7|    25|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |>=50 cm    |            1|      0|    25|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |<48 cm     |            0|      5|    25|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |<48 cm     |            1|      5|    25|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |[48-50) cm |            0|      4|    25|
|0-24 months (no birth st.) |MAL-ED         |NEPAL        |[48-50) cm |            1|      4|    25|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |>=50 cm    |            0|     23|    56|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |>=50 cm    |            1|      0|    56|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |<48 cm     |            0|      6|    56|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |<48 cm     |            1|      3|    56|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |[48-50) cm |            0|     20|    56|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL       |[48-50) cm |            1|      4|    56|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |>=50 cm    |            0|      7|   102|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |>=50 cm    |            1|     13|   102|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |<48 cm     |            0|      2|   102|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |<48 cm     |            1|     19|   102|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |[48-50) cm |            0|     11|   102|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA     |[48-50) cm |            1|     50|   102|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |>=50 cm    |            0|     20|   113|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |>=50 cm    |            1|     15|   113|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |<48 cm     |            0|     14|   113|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |<48 cm     |            1|     12|   113|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |[48-50) cm |            0|     26|   113|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA |[48-50) cm |            1|     26|   113|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |>=50 cm    |            0|     72|   511|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |>=50 cm    |            1|     52|   511|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |<48 cm     |            0|     38|   511|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |<48 cm     |            1|    118|   511|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |[48-50) cm |            0|     94|   511|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH   |[48-50) cm |            1|    137|   511|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |>=50 cm    |            0|    149|   653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |>=50 cm    |            1|     19|   653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |<48 cm     |            0|     75|   653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |<48 cm     |            1|    112|   653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |[48-50) cm |            0|    172|   653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH   |[48-50) cm |            1|    126|   653|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |>=50 cm    |            0|  13786| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |>=50 cm    |            1|   1496| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |<48 cm     |            0|     58| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |<48 cm     |            1|     76| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |[48-50) cm |            0|    900| 16765|
|0-24 months (no birth st.) |PROBIT         |BELARUS      |[48-50) cm |            1|    449| 16765|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |>=50 cm    |            0|    140|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |>=50 cm    |            1|     29|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |<48 cm     |            0|     70|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |<48 cm     |            1|    111|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |[48-50) cm |            0|    185|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH   |[48-50) cm |            1|     98|   633|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |>=50 cm    |            0|      2|    28|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |>=50 cm    |            1|      8|    28|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |<48 cm     |            0|      1|    28|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |<48 cm     |            1|      4|    28|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |[48-50) cm |            0|      8|    28|
|0-24 months (no birth st.) |ResPak         |PAKISTAN     |[48-50) cm |            1|      5|    28|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |>=50 cm    |            0|    129|  1080|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |>=50 cm    |            1|     83|  1080|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |<48 cm     |            0|    124|  1080|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |<48 cm     |            1|    279|  1080|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |[48-50) cm |            0|    216|  1080|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA        |[48-50) cm |            1|    249|  1080|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |>=50 cm    |            0|     70|   345|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |>=50 cm    |            1|     72|   345|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |<48 cm     |            0|     19|   345|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |<48 cm     |            1|     46|   345|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |[48-50) cm |            0|     52|   345|
|0-24 months (no birth st.) |Vellore Crypto |INDIA        |[48-50) cm |            1|     86|   345|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |>=50 cm    |            0|   3100| 12487|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |>=50 cm    |            1|   1026| 12487|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |<48 cm     |            0|   1623| 12487|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |<48 cm     |            1|   1397| 12487|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |[48-50) cm |            0|   3401| 12487|
|0-24 months (no birth st.) |ZVITAMBO       |ZIMBABWE     |[48-50) cm |            1|   1940| 12487|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |>=50 cm    |            0|      8|    85|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |>=50 cm    |            1|      7|    85|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |<48 cm     |            0|     18|    85|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |<48 cm     |            1|     12|    85|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |[48-50) cm |            0|     23|    85|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA        |[48-50) cm |            1|     17|    85|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |>=50 cm    |            0|      2|    17|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |>=50 cm    |            1|      0|    17|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |<48 cm     |            0|      8|    17|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |<48 cm     |            1|      2|    17|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |[48-50) cm |            0|      4|    17|
|0-6 months (no birth st.)  |CMIN           |BANGLADESH   |[48-50) cm |            1|      1|    17|
|0-6 months (no birth st.)  |COHORTS        |INDIA        |>=50 cm    |            0|   1407|  5848|
|0-6 months (no birth st.)  |COHORTS        |INDIA        |>=50 cm    |            1|     19|  5848|
|0-6 months (no birth st.)  |COHORTS        |INDIA        |<48 cm     |            0|   1654|  5848|
|0-6 months (no birth st.)  |COHORTS        |INDIA        |<48 cm     |            1|    328|  5848|
|0-6 months (no birth st.)  |COHORTS        |INDIA        |[48-50) cm |            0|   2325|  5848|
|0-6 months (no birth st.)  |COHORTS        |INDIA        |[48-50) cm |            1|    115|  5848|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA    |>=50 cm    |            0|    395|   802|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA    |>=50 cm    |            1|     42|   802|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA    |<48 cm     |            0|     42|   802|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA    |<48 cm     |            1|     71|   802|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA    |[48-50) cm |            0|    158|   802|
|0-6 months (no birth st.)  |COHORTS        |GUATEMALA    |[48-50) cm |            1|     94|   802|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES  |>=50 cm    |            0|   1049|  2863|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES  |>=50 cm    |            1|     80|  2863|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES  |<48 cm     |            0|    342|  2863|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES  |<48 cm     |            1|    233|  2863|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES  |[48-50) cm |            0|    930|  2863|
|0-6 months (no birth st.)  |COHORTS        |PHILIPPINES  |[48-50) cm |            1|    229|  2863|
|0-6 months (no birth st.)  |CONTENT        |PERU         |>=50 cm    |            0|      1|     2|
|0-6 months (no birth st.)  |CONTENT        |PERU         |>=50 cm    |            1|      0|     2|
|0-6 months (no birth st.)  |CONTENT        |PERU         |<48 cm     |            0|      0|     2|
|0-6 months (no birth st.)  |CONTENT        |PERU         |<48 cm     |            1|      1|     2|
|0-6 months (no birth st.)  |CONTENT        |PERU         |[48-50) cm |            0|      0|     2|
|0-6 months (no birth st.)  |CONTENT        |PERU         |[48-50) cm |            1|      0|     2|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |>=50 cm    |            0|     20|   140|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |>=50 cm    |            1|      2|   140|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |<48 cm     |            0|     19|   140|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |<48 cm     |            1|     53|   140|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |[48-50) cm |            0|     21|   140|
|0-6 months (no birth st.)  |EE             |PAKISTAN     |[48-50) cm |            1|     25|   140|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |>=50 cm    |            0|     99|   575|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |>=50 cm    |            1|      5|   575|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |<48 cm     |            0|    189|   575|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |<48 cm     |            1|     74|   575|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |[48-50) cm |            0|    187|   575|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL        |[48-50) cm |            1|     21|   575|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |>=50 cm    |            0|   1203| 15071|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |>=50 cm    |            1|     25| 15071|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |<48 cm     |            0|   6887| 15071|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |<48 cm     |            1|   1865| 15071|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |[48-50) cm |            0|   4868| 15071|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH   |[48-50) cm |            1|    223| 15071|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |>=50 cm    |            0|   1027|  3180|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |>=50 cm    |            1|     58|  3180|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |<48 cm     |            0|    939|  3180|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |<48 cm     |            1|    172|  3180|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |[48-50) cm |            0|    901|  3180|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH   |[48-50) cm |            1|     83|  3180|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |>=50 cm    |            0|    646|  1469|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |>=50 cm    |            1|    118|  1469|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |<48 cm     |            0|    103|  1469|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |<48 cm     |            1|    107|  1469|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |[48-50) cm |            0|    345|  1469|
|0-6 months (no birth st.)  |Keneba         |GAMBIA       |[48-50) cm |            1|    150|  1469|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |>=50 cm    |            0|      9|    37|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |>=50 cm    |            1|      0|    37|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |<48 cm     |            0|      6|    37|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |<48 cm     |            1|      6|    37|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |[48-50) cm |            0|     12|    37|
|0-6 months (no birth st.)  |MAL-ED         |INDIA        |[48-50) cm |            1|      4|    37|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |>=50 cm    |            0|     33|   187|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |>=50 cm    |            1|      2|   187|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |<48 cm     |            0|     50|   187|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |<48 cm     |            1|     23|   187|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |[48-50) cm |            0|     64|   187|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH   |[48-50) cm |            1|     15|   187|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |>=50 cm    |            0|     37|   207|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |>=50 cm    |            1|      4|   207|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |<48 cm     |            0|     27|   207|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |<48 cm     |            1|     39|   207|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |[48-50) cm |            0|     74|   207|
|0-6 months (no birth st.)  |MAL-ED         |PERU         |[48-50) cm |            1|     26|   207|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |>=50 cm    |            0|      7|    25|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |>=50 cm    |            1|      0|    25|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |<48 cm     |            0|      7|    25|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |<48 cm     |            1|      3|    25|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |[48-50) cm |            0|      8|    25|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL        |[48-50) cm |            1|      0|    25|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |>=50 cm    |            0|     23|    56|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |>=50 cm    |            1|      0|    56|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |<48 cm     |            0|      7|    56|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |<48 cm     |            1|      2|    56|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |[48-50) cm |            0|     20|    56|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL       |[48-50) cm |            1|      4|    56|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |>=50 cm    |            0|     19|   102|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |>=50 cm    |            1|      1|   102|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |<48 cm     |            0|     11|   102|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |<48 cm     |            1|     10|   102|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |[48-50) cm |            0|     45|   102|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA     |[48-50) cm |            1|     16|   102|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |>=50 cm    |            0|     31|   113|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |>=50 cm    |            1|      4|   113|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |<48 cm     |            0|     16|   113|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |<48 cm     |            1|     10|   113|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |[48-50) cm |            0|     37|   113|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA |[48-50) cm |            1|     15|   113|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |>=50 cm    |            0|    116|   511|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |>=50 cm    |            1|      8|   511|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |<48 cm     |            0|     90|   511|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |<48 cm     |            1|     66|   511|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |[48-50) cm |            0|    187|   511|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH   |[48-50) cm |            1|     44|   511|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH   |>=50 cm    |            0|    167|   653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH   |>=50 cm    |            1|      1|   653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH   |<48 cm     |            0|    115|   653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH   |<48 cm     |            1|     72|   653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH   |[48-50) cm |            0|    247|   653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH   |[48-50) cm |            1|     51|   653|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |>=50 cm    |            0|  14653| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |>=50 cm    |            1|    627| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |<48 cm     |            0|     64| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |<48 cm     |            1|     70| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |[48-50) cm |            0|   1016| 16763|
|0-6 months (no birth st.)  |PROBIT         |BELARUS      |[48-50) cm |            1|    333| 16763|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |>=50 cm    |            0|    165|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |>=50 cm    |            1|      4|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |<48 cm     |            0|    110|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |<48 cm     |            1|     71|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |[48-50) cm |            0|    257|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH   |[48-50) cm |            1|     26|   633|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |>=50 cm    |            0|      3|    28|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |>=50 cm    |            1|      7|    28|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |<48 cm     |            0|      1|    28|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |<48 cm     |            1|      4|    28|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |[48-50) cm |            0|      9|    28|
|0-6 months (no birth st.)  |ResPak         |PAKISTAN     |[48-50) cm |            1|      4|    28|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |>=50 cm    |            0|    195|  1079|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |>=50 cm    |            1|     16|  1079|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |<48 cm     |            0|    276|  1079|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |<48 cm     |            1|    127|  1079|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |[48-50) cm |            0|    398|  1079|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA        |[48-50) cm |            1|     67|  1079|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |>=50 cm    |            0|    109|   345|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |>=50 cm    |            1|     33|   345|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |<48 cm     |            0|     29|   345|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |<48 cm     |            1|     36|   345|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |[48-50) cm |            0|     87|   345|
|0-6 months (no birth st.)  |Vellore Crypto |INDIA        |[48-50) cm |            1|     51|   345|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |>=50 cm    |            0|   3704| 12486|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |>=50 cm    |            1|    422| 12486|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |<48 cm     |            0|   2245| 12486|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |<48 cm     |            1|    774| 12486|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |[48-50) cm |            0|   4378| 12486|
|0-6 months (no birth st.)  |ZVITAMBO       |ZIMBABWE     |[48-50) cm |            1|    963| 12486|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |>=50 cm    |            0|      4|    50|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |>=50 cm    |            1|      5|    50|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |<48 cm     |            0|      2|    50|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |<48 cm     |            1|     16|    50|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |[48-50) cm |            0|      5|    50|
|6-24 months                |CMC-V-BCS-2002 |INDIA        |[48-50) cm |            1|     18|    50|
|6-24 months                |CMIN           |BANGLADESH   |>=50 cm    |            0|      0|     7|
|6-24 months                |CMIN           |BANGLADESH   |>=50 cm    |            1|      0|     7|
|6-24 months                |CMIN           |BANGLADESH   |<48 cm     |            0|      2|     7|
|6-24 months                |CMIN           |BANGLADESH   |<48 cm     |            1|      1|     7|
|6-24 months                |CMIN           |BANGLADESH   |[48-50) cm |            0|      1|     7|
|6-24 months                |CMIN           |BANGLADESH   |[48-50) cm |            1|      3|     7|
|6-24 months                |COHORTS        |INDIA        |>=50 cm    |            0|   1184|  5016|
|6-24 months                |COHORTS        |INDIA        |>=50 cm    |            1|    140|  5016|
|6-24 months                |COHORTS        |INDIA        |<48 cm     |            0|    950|  5016|
|6-24 months                |COHORTS        |INDIA        |<48 cm     |            1|    573|  5016|
|6-24 months                |COHORTS        |INDIA        |[48-50) cm |            0|   1666|  5016|
|6-24 months                |COHORTS        |INDIA        |[48-50) cm |            1|    503|  5016|
|6-24 months                |COHORTS        |GUATEMALA    |>=50 cm    |            0|    107|   499|
|6-24 months                |COHORTS        |GUATEMALA    |>=50 cm    |            1|    221|   499|
|6-24 months                |COHORTS        |GUATEMALA    |<48 cm     |            0|      6|   499|
|6-24 months                |COHORTS        |GUATEMALA    |<48 cm     |            1|     29|   499|
|6-24 months                |COHORTS        |GUATEMALA    |[48-50) cm |            0|     25|   499|
|6-24 months                |COHORTS        |GUATEMALA    |[48-50) cm |            1|    111|   499|
|6-24 months                |COHORTS        |PHILIPPINES  |>=50 cm    |            0|    448|  2116|
|6-24 months                |COHORTS        |PHILIPPINES  |>=50 cm    |            1|    511|  2116|
|6-24 months                |COHORTS        |PHILIPPINES  |<48 cm     |            0|     60|  2116|
|6-24 months                |COHORTS        |PHILIPPINES  |<48 cm     |            1|    254|  2116|
|6-24 months                |COHORTS        |PHILIPPINES  |[48-50) cm |            0|    240|  2116|
|6-24 months                |COHORTS        |PHILIPPINES  |[48-50) cm |            1|    603|  2116|
|6-24 months                |CONTENT        |PERU         |>=50 cm    |            0|      1|     1|
|6-24 months                |CONTENT        |PERU         |>=50 cm    |            1|      0|     1|
|6-24 months                |CONTENT        |PERU         |<48 cm     |            0|      0|     1|
|6-24 months                |CONTENT        |PERU         |<48 cm     |            1|      0|     1|
|6-24 months                |CONTENT        |PERU         |[48-50) cm |            0|      0|     1|
|6-24 months                |CONTENT        |PERU         |[48-50) cm |            1|      0|     1|
|6-24 months                |EE             |PAKISTAN     |>=50 cm    |            0|      7|    58|
|6-24 months                |EE             |PAKISTAN     |>=50 cm    |            1|     13|    58|
|6-24 months                |EE             |PAKISTAN     |<48 cm     |            0|      7|    58|
|6-24 months                |EE             |PAKISTAN     |<48 cm     |            1|     11|    58|
|6-24 months                |EE             |PAKISTAN     |[48-50) cm |            0|      8|    58|
|6-24 months                |EE             |PAKISTAN     |[48-50) cm |            1|     12|    58|
|6-24 months                |GMS-Nepal      |NEPAL        |>=50 cm    |            0|     53|   396|
|6-24 months                |GMS-Nepal      |NEPAL        |>=50 cm    |            1|     31|   396|
|6-24 months                |GMS-Nepal      |NEPAL        |<48 cm     |            0|     46|   396|
|6-24 months                |GMS-Nepal      |NEPAL        |<48 cm     |            1|    108|   396|
|6-24 months                |GMS-Nepal      |NEPAL        |[48-50) cm |            0|     74|   396|
|6-24 months                |GMS-Nepal      |NEPAL        |[48-50) cm |            1|     84|   396|
|6-24 months                |JiVitA-3       |BANGLADESH   |>=50 cm    |            0|    772|  8511|
|6-24 months                |JiVitA-3       |BANGLADESH   |>=50 cm    |            1|     42|  8511|
|6-24 months                |JiVitA-3       |BANGLADESH   |<48 cm     |            0|   3123|  8511|
|6-24 months                |JiVitA-3       |BANGLADESH   |<48 cm     |            1|   1338|  8511|
|6-24 months                |JiVitA-3       |BANGLADESH   |[48-50) cm |            0|   2721|  8511|
|6-24 months                |JiVitA-3       |BANGLADESH   |[48-50) cm |            1|    515|  8511|
|6-24 months                |JiVitA-4       |BANGLADESH   |>=50 cm    |            0|    730|  2863|
|6-24 months                |JiVitA-4       |BANGLADESH   |>=50 cm    |            1|    290|  2863|
|6-24 months                |JiVitA-4       |BANGLADESH   |<48 cm     |            0|    495|  2863|
|6-24 months                |JiVitA-4       |BANGLADESH   |<48 cm     |            1|    447|  2863|
|6-24 months                |JiVitA-4       |BANGLADESH   |[48-50) cm |            0|    589|  2863|
|6-24 months                |JiVitA-4       |BANGLADESH   |[48-50) cm |            1|    312|  2863|
|6-24 months                |Keneba         |GAMBIA       |>=50 cm    |            0|    423|  1056|
|6-24 months                |Keneba         |GAMBIA       |>=50 cm    |            1|    205|  1056|
|6-24 months                |Keneba         |GAMBIA       |<48 cm     |            0|     53|  1056|
|6-24 months                |Keneba         |GAMBIA       |<48 cm     |            1|     43|  1056|
|6-24 months                |Keneba         |GAMBIA       |[48-50) cm |            0|    177|  1056|
|6-24 months                |Keneba         |GAMBIA       |[48-50) cm |            1|    155|  1056|
|6-24 months                |MAL-ED         |INDIA        |>=50 cm    |            0|      7|    23|
|6-24 months                |MAL-ED         |INDIA        |>=50 cm    |            1|      1|    23|
|6-24 months                |MAL-ED         |INDIA        |<48 cm     |            0|      3|    23|
|6-24 months                |MAL-ED         |INDIA        |<48 cm     |            1|      3|    23|
|6-24 months                |MAL-ED         |INDIA        |[48-50) cm |            0|      3|    23|
|6-24 months                |MAL-ED         |INDIA        |[48-50) cm |            1|      6|    23|
|6-24 months                |MAL-ED         |BANGLADESH   |>=50 cm    |            0|     25|   138|
|6-24 months                |MAL-ED         |BANGLADESH   |>=50 cm    |            1|      8|   138|
|6-24 months                |MAL-ED         |BANGLADESH   |<48 cm     |            0|     20|   138|
|6-24 months                |MAL-ED         |BANGLADESH   |<48 cm     |            1|     23|   138|
|6-24 months                |MAL-ED         |BANGLADESH   |[48-50) cm |            0|     34|   138|
|6-24 months                |MAL-ED         |BANGLADESH   |[48-50) cm |            1|     28|   138|
|6-24 months                |MAL-ED         |PERU         |>=50 cm    |            0|     21|   121|
|6-24 months                |MAL-ED         |PERU         |>=50 cm    |            1|     13|   121|
|6-24 months                |MAL-ED         |PERU         |<48 cm     |            0|     12|   121|
|6-24 months                |MAL-ED         |PERU         |<48 cm     |            1|     12|   121|
|6-24 months                |MAL-ED         |PERU         |[48-50) cm |            0|     41|   121|
|6-24 months                |MAL-ED         |PERU         |[48-50) cm |            1|     22|   121|
|6-24 months                |MAL-ED         |NEPAL        |>=50 cm    |            0|      7|    22|
|6-24 months                |MAL-ED         |NEPAL        |>=50 cm    |            1|      0|    22|
|6-24 months                |MAL-ED         |NEPAL        |<48 cm     |            0|      5|    22|
|6-24 months                |MAL-ED         |NEPAL        |<48 cm     |            1|      2|    22|
|6-24 months                |MAL-ED         |NEPAL        |[48-50) cm |            0|      4|    22|
|6-24 months                |MAL-ED         |NEPAL        |[48-50) cm |            1|      4|    22|
|6-24 months                |MAL-ED         |BRAZIL       |>=50 cm    |            0|     20|    43|
|6-24 months                |MAL-ED         |BRAZIL       |>=50 cm    |            1|      0|    43|
|6-24 months                |MAL-ED         |BRAZIL       |<48 cm     |            0|      4|    43|
|6-24 months                |MAL-ED         |BRAZIL       |<48 cm     |            1|      1|    43|
|6-24 months                |MAL-ED         |BRAZIL       |[48-50) cm |            0|     18|    43|
|6-24 months                |MAL-ED         |BRAZIL       |[48-50) cm |            1|      0|    43|
|6-24 months                |MAL-ED         |TANZANIA     |>=50 cm    |            0|      7|    72|
|6-24 months                |MAL-ED         |TANZANIA     |>=50 cm    |            1|     12|    72|
|6-24 months                |MAL-ED         |TANZANIA     |<48 cm     |            0|      1|    72|
|6-24 months                |MAL-ED         |TANZANIA     |<48 cm     |            1|      9|    72|
|6-24 months                |MAL-ED         |TANZANIA     |[48-50) cm |            0|      9|    72|
|6-24 months                |MAL-ED         |TANZANIA     |[48-50) cm |            1|     34|    72|
|6-24 months                |MAL-ED         |SOUTH AFRICA |>=50 cm    |            0|     15|    62|
|6-24 months                |MAL-ED         |SOUTH AFRICA |>=50 cm    |            1|     11|    62|
|6-24 months                |MAL-ED         |SOUTH AFRICA |<48 cm     |            0|      6|    62|
|6-24 months                |MAL-ED         |SOUTH AFRICA |<48 cm     |            1|      2|    62|
|6-24 months                |MAL-ED         |SOUTH AFRICA |[48-50) cm |            0|     17|    62|
|6-24 months                |MAL-ED         |SOUTH AFRICA |[48-50) cm |            1|     11|    62|
|6-24 months                |NIH-Birth      |BANGLADESH   |>=50 cm    |            0|     55|   330|
|6-24 months                |NIH-Birth      |BANGLADESH   |>=50 cm    |            1|     44|   330|
|6-24 months                |NIH-Birth      |BANGLADESH   |<48 cm     |            0|     17|   330|
|6-24 months                |NIH-Birth      |BANGLADESH   |<48 cm     |            1|     52|   330|
|6-24 months                |NIH-Birth      |BANGLADESH   |[48-50) cm |            0|     69|   330|
|6-24 months                |NIH-Birth      |BANGLADESH   |[48-50) cm |            1|     93|   330|
|6-24 months                |NIH-Crypto     |BANGLADESH   |>=50 cm    |            0|    146|   506|
|6-24 months                |NIH-Crypto     |BANGLADESH   |>=50 cm    |            1|     18|   506|
|6-24 months                |NIH-Crypto     |BANGLADESH   |<48 cm     |            0|     67|   506|
|6-24 months                |NIH-Crypto     |BANGLADESH   |<48 cm     |            1|     40|   506|
|6-24 months                |NIH-Crypto     |BANGLADESH   |[48-50) cm |            0|    160|   506|
|6-24 months                |NIH-Crypto     |BANGLADESH   |[48-50) cm |            1|     75|   506|
|6-24 months                |PROBIT         |BELARUS      |>=50 cm    |            0|  13542| 15467|
|6-24 months                |PROBIT         |BELARUS      |>=50 cm    |            1|    871| 15467|
|6-24 months                |PROBIT         |BELARUS      |<48 cm     |            0|     51| 15467|
|6-24 months                |PROBIT         |BELARUS      |<48 cm     |            1|      6| 15467|
|6-24 months                |PROBIT         |BELARUS      |[48-50) cm |            0|    880| 15467|
|6-24 months                |PROBIT         |BELARUS      |[48-50) cm |            1|    117| 15467|
|6-24 months                |PROVIDE        |BANGLADESH   |>=50 cm    |            0|    121|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |>=50 cm    |            1|     25|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |<48 cm     |            0|     50|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |<48 cm     |            1|     40|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |[48-50) cm |            0|    148|   456|
|6-24 months                |PROVIDE        |BANGLADESH   |[48-50) cm |            1|     72|   456|
|6-24 months                |ResPak         |PAKISTAN     |>=50 cm    |            0|      2|     8|
|6-24 months                |ResPak         |PAKISTAN     |>=50 cm    |            1|      1|     8|
|6-24 months                |ResPak         |PAKISTAN     |<48 cm     |            0|      0|     8|
|6-24 months                |ResPak         |PAKISTAN     |<48 cm     |            1|      0|     8|
|6-24 months                |ResPak         |PAKISTAN     |[48-50) cm |            0|      4|     8|
|6-24 months                |ResPak         |PAKISTAN     |[48-50) cm |            1|      1|     8|
|6-24 months                |SAS-CompFeed   |INDIA        |>=50 cm    |            0|    118|   801|
|6-24 months                |SAS-CompFeed   |INDIA        |>=50 cm    |            1|     67|   801|
|6-24 months                |SAS-CompFeed   |INDIA        |<48 cm     |            0|     98|   801|
|6-24 months                |SAS-CompFeed   |INDIA        |<48 cm     |            1|    152|   801|
|6-24 months                |SAS-CompFeed   |INDIA        |[48-50) cm |            0|    184|   801|
|6-24 months                |SAS-CompFeed   |INDIA        |[48-50) cm |            1|    182|   801|
|6-24 months                |Vellore Crypto |INDIA        |>=50 cm    |            0|     70|   225|
|6-24 months                |Vellore Crypto |INDIA        |>=50 cm    |            1|     39|   225|
|6-24 months                |Vellore Crypto |INDIA        |<48 cm     |            0|     19|   225|
|6-24 months                |Vellore Crypto |INDIA        |<48 cm     |            1|     10|   225|
|6-24 months                |Vellore Crypto |INDIA        |[48-50) cm |            0|     52|   225|
|6-24 months                |Vellore Crypto |INDIA        |[48-50) cm |            1|     35|   225|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |>=50 cm    |            0|   2415|  8393|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |>=50 cm    |            1|    604|  8393|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |<48 cm     |            0|   1169|  8393|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |<48 cm     |            1|    624|  8393|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |[48-50) cm |            0|   2604|  8393|
|6-24 months                |ZVITAMBO       |ZIMBABWE     |[48-50) cm |            1|    977|  8393|


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: Vellore Crypto, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ZVITAMBO, country: ZIMBABWE
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

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


