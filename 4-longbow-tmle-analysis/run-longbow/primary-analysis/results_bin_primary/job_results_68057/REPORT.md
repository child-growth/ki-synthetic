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

**Intervention Variable:** birthwt

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

|agecat                      |studyid        |country                      |birthwt                    | ever_wasted| n_cell|     n|
|:---------------------------|:--------------|:----------------------------|:--------------------------|-----------:|------:|-----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Normal or high birthweight |           0|    181|   361|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Normal or high birthweight |           1|    140|   361|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Low birthweight            |           0|     17|   361|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Low birthweight            |           1|     23|   361|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |Normal or high birthweight |           0|      9|    17|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |Normal or high birthweight |           1|      3|    17|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |Low birthweight            |           0|      3|    17|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |Low birthweight            |           1|      2|    17|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Normal or high birthweight |           0|    740|   917|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Normal or high birthweight |           1|     98|   917|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Low birthweight            |           0|     62|   917|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Low birthweight            |           1|     17|   917|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Normal or high birthweight |           0|   4360|  6524|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Normal or high birthweight |           1|    953|  6524|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Low birthweight            |           0|    911|  6524|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Low birthweight            |           1|    300|  6524|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Normal or high birthweight |           0|   1923|  2975|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Normal or high birthweight |           1|    781|  2975|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Low birthweight            |           0|    148|  2975|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Low birthweight            |           1|    123|  2975|
|0-24 months (no birth wast) |CONTENT        |PERU                         |Normal or high birthweight |           0|      2|     2|
|0-24 months (no birth wast) |CONTENT        |PERU                         |Normal or high birthweight |           1|      0|     2|
|0-24 months (no birth wast) |CONTENT        |PERU                         |Low birthweight            |           0|      0|     2|
|0-24 months (no birth wast) |CONTENT        |PERU                         |Low birthweight            |           1|      0|     2|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |Normal or high birthweight |           0|    124|   376|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |Normal or high birthweight |           1|    119|   376|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |Low birthweight            |           0|     50|   376|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |Low birthweight            |           1|     83|   376|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |Normal or high birthweight |           0|    251|   659|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |Normal or high birthweight |           1|    207|   659|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |Low birthweight            |           0|     78|   659|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |Low birthweight            |           1|    123|   659|
|0-24 months (no birth wast) |IRC            |INDIA                        |Normal or high birthweight |           0|    173|   403|
|0-24 months (no birth wast) |IRC            |INDIA                        |Normal or high birthweight |           1|    162|   403|
|0-24 months (no birth wast) |IRC            |INDIA                        |Low birthweight            |           0|     20|   403|
|0-24 months (no birth wast) |IRC            |INDIA                        |Low birthweight            |           1|     48|   403|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |           0|  10911| 22227|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |           1|   2025| 22227|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Low birthweight            |           0|   7415| 22227|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Low birthweight            |           1|   1876| 22227|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |           0|   2566|  4487|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |           1|    756|  4487|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |Low birthweight            |           0|    721|  4487|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |Low birthweight            |           1|    444|  4487|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Normal or high birthweight |           0|    822|  1533|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Normal or high birthweight |           1|    489|  1533|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Low birthweight            |           0|    117|  1533|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Low birthweight            |           1|    105|  1533|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |Normal or high birthweight |           0|    166|   260|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |Normal or high birthweight |           1|     39|   260|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |Low birthweight            |           0|     37|   260|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |Low birthweight            |           1|     18|   260|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |Normal or high birthweight |           0|    209|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |Normal or high birthweight |           1|     12|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |Low birthweight            |           0|     11|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |Low birthweight            |           1|      1|   233|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |Normal or high birthweight |           0|    135|   236|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |Normal or high birthweight |           1|     67|   236|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |Low birthweight            |           0|     16|   236|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |Low birthweight            |           1|     18|   236|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |Normal or high birthweight |           0|    176|   232|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |Normal or high birthweight |           1|     37|   232|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |Low birthweight            |           0|     14|   232|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |Low birthweight            |           1|      5|   232|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |Normal or high birthweight |           0|    266|   299|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |Normal or high birthweight |           1|     16|   299|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |Low birthweight            |           0|     12|   299|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |Low birthweight            |           1|      5|   299|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |Normal or high birthweight |           0|    247|   306|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |Normal or high birthweight |           1|     40|   306|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |Low birthweight            |           0|     14|   306|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |Low birthweight            |           1|      5|   306|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |           0|    160|   196|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |           1|     26|   196|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |           0|      9|   196|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |           1|      1|   196|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |           0|    295|   581|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |           1|    105|   581|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |Low birthweight            |           0|    113|   581|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |Low birthweight            |           1|     68|   581|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Normal or high birthweight |           0|    512|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Normal or high birthweight |           1|     67|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Low birthweight            |           0|    134|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Low birthweight            |           1|     41|   754|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Normal or high birthweight |           0|  15731| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Normal or high birthweight |           1|   1148| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Low birthweight            |           0|      0| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |Low birthweight            |           1|      0| 16879|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |Normal or high birthweight |           0|    451|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |Normal or high birthweight |           1|     77|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |Low birthweight            |           0|    114|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |Low birthweight            |           1|     45|   687|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |Normal or high birthweight |           0|     20|    41|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |Normal or high birthweight |           1|     14|    41|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |Low birthweight            |           0|      4|    41|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |Low birthweight            |           1|      3|    41|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |Normal or high birthweight |           0|    762|  1492|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |Normal or high birthweight |           1|    370|  1492|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |Low birthweight            |           0|    189|  1492|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |Low birthweight            |           1|    171|  1492|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |           0|   1839|  2359|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |           1|    440|  2359|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |           0|     53|  2359|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |           1|     27|  2359|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |           0|  10769| 13593|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |           1|   1140| 13593|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |Low birthweight            |           0|   1438| 13593|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |Low birthweight            |           1|    246| 13593|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |Normal or high birthweight |           0|    213|   344|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |Normal or high birthweight |           1|     96|   344|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |Low birthweight            |           0|     25|   344|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |Low birthweight            |           1|     10|   344|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH                   |Normal or high birthweight |           0|     12|    17|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH                   |Normal or high birthweight |           1|      0|    17|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH                   |Low birthweight            |           0|      4|    17|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH                   |Low birthweight            |           1|      1|    17|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA                    |Normal or high birthweight |           0|    775|   867|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA                    |Normal or high birthweight |           1|     17|   867|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA                    |Low birthweight            |           0|     75|   867|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA                    |Low birthweight            |           1|      0|   867|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |Normal or high birthweight |           0|   4575|  6053|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |Normal or high birthweight |           1|    465|  6053|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |Low birthweight            |           0|    944|  6053|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |Low birthweight            |           1|     69|  6053|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |Normal or high birthweight |           0|   2432|  2954|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |Normal or high birthweight |           1|    259|  2954|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |Low birthweight            |           0|    240|  2954|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |Low birthweight            |           1|     23|  2954|
|0-6 months (no birth wast)  |CONTENT        |PERU                         |Normal or high birthweight |           0|      2|     2|
|0-6 months (no birth wast)  |CONTENT        |PERU                         |Normal or high birthweight |           1|      0|     2|
|0-6 months (no birth wast)  |CONTENT        |PERU                         |Low birthweight            |           0|      0|     2|
|0-6 months (no birth wast)  |CONTENT        |PERU                         |Low birthweight            |           1|      0|     2|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |Normal or high birthweight |           0|    187|   374|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |Normal or high birthweight |           1|     55|   374|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |Low birthweight            |           0|    107|   374|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |Low birthweight            |           1|     25|   374|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |Normal or high birthweight |           0|    360|   641|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |Normal or high birthweight |           1|     92|   641|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |Low birthweight            |           0|    158|   641|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |Low birthweight            |           1|     31|   641|
|0-6 months (no birth wast)  |IRC            |INDIA                        |Normal or high birthweight |           0|    216|   384|
|0-6 months (no birth wast)  |IRC            |INDIA                        |Normal or high birthweight |           1|    108|   384|
|0-6 months (no birth wast)  |IRC            |INDIA                        |Low birthweight            |           0|     38|   384|
|0-6 months (no birth wast)  |IRC            |INDIA                        |Low birthweight            |           1|     22|   384|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |           0|  11838| 22042|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |           1|   1066| 22042|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |Low birthweight            |           0|   8542| 22042|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |Low birthweight            |           1|    596| 22042|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |           0|   3188|  4372|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |           1|     98|  4372|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |Low birthweight            |           0|   1058|  4372|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |Low birthweight            |           1|     28|  4372|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |Normal or high birthweight |           0|   1154|  1519|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |Normal or high birthweight |           1|    149|  1519|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |Low birthweight            |           0|    184|  1519|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |Low birthweight            |           1|     32|  1519|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |Normal or high birthweight |           0|    189|   259|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |Normal or high birthweight |           1|     16|   259|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |Low birthweight            |           0|     51|   259|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |Low birthweight            |           1|      3|   259|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |Normal or high birthweight |           0|    213|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |Normal or high birthweight |           1|      8|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |Low birthweight            |           0|     12|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |Low birthweight            |           1|      0|   233|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |Normal or high birthweight |           0|    166|   234|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |Normal or high birthweight |           1|     35|   234|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |Low birthweight            |           0|     30|   234|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |Low birthweight            |           1|      3|   234|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |Normal or high birthweight |           0|    198|   230|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |Normal or high birthweight |           1|     13|   230|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |Low birthweight            |           0|     18|   230|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |Low birthweight            |           1|      1|   230|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |Normal or high birthweight |           0|    279|   299|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |Normal or high birthweight |           1|      3|   299|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |Low birthweight            |           0|     15|   299|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |Low birthweight            |           1|      2|   299|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |Normal or high birthweight |           0|    275|   305|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |Normal or high birthweight |           1|     11|   305|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |Low birthweight            |           0|     16|   305|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |Low birthweight            |           1|      3|   305|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |           0|    178|   196|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |           1|      8|   196|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |           0|     10|   196|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |           1|      0|   196|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |           0|    365|   564|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |           1|     32|   564|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH                   |Low birthweight            |           0|    154|   564|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH                   |Low birthweight            |           1|     13|   564|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |Normal or high birthweight |           0|    560|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |Normal or high birthweight |           1|     17|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |Low birthweight            |           0|    169|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |Low birthweight            |           1|      3|   749|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |Normal or high birthweight |           0|  15671| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |Normal or high birthweight |           1|   1022| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |Low birthweight            |           0|      0| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |Low birthweight            |           1|      0| 16693|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |Normal or high birthweight |           0|    503|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |Normal or high birthweight |           1|     25|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |Low birthweight            |           0|    143|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |Low birthweight            |           1|     12|   683|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN                     |Normal or high birthweight |           0|     25|    41|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN                     |Normal or high birthweight |           1|      9|    41|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN                     |Low birthweight            |           0|      6|    41|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN                     |Low birthweight            |           1|      1|    41|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |Normal or high birthweight |           0|    984|  1465|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |Normal or high birthweight |           1|    142|  1465|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |Low birthweight            |           0|    296|  1465|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |Low birthweight            |           1|     43|  1465|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |           0|   2085|  2351|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |           1|    187|  2351|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |           0|     66|  2351|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |           1|     13|  2351|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |           0|  11395| 13334|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |           1|    382| 13334|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |Low birthweight            |           0|   1511| 13334|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |Low birthweight            |           1|     46| 13334|


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
* agecat: 0-24 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 0-6 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROBIT, country: BELARUS
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/d1a75ee1-4e00-4b73-90df-3b47db1f516f/b004c590-f810-4f37-8bed-ffc570b288db/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d1a75ee1-4e00-4b73-90df-3b47db1f516f/b004c590-f810-4f37-8bed-ffc570b288db/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d1a75ee1-4e00-4b73-90df-3b47db1f516f/b004c590-f810-4f37-8bed-ffc570b288db/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d1a75ee1-4e00-4b73-90df-3b47db1f516f/b004c590-f810-4f37-8bed-ffc570b288db/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid        |country                      |intervention_level         |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:--------------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Normal or high birthweight |NA             | 0.4386917| 0.3842105| 0.4931729|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Low birthweight            |NA             | 0.5586014| 0.3994221| 0.7177807|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Normal or high birthweight |NA             | 0.1172170| 0.0954136| 0.1390205|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Low birthweight            |NA             | 0.2139899| 0.1202992| 0.3076807|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Normal or high birthweight |NA             | 0.1792812| 0.1689578| 0.1896047|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Low birthweight            |NA             | 0.2504553| 0.2254498| 0.2754609|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Normal or high birthweight |NA             | 0.2891583| 0.2720650| 0.3062515|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Low birthweight            |NA             | 0.4510697| 0.3923664| 0.5097729|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |Normal or high birthweight |NA             | 0.4912117| 0.4281838| 0.5542396|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |Low birthweight            |NA             | 0.6242914| 0.5412890| 0.7072938|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |Normal or high birthweight |NA             | 0.4485565| 0.4028869| 0.4942262|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |Low birthweight            |NA             | 0.6191474| 0.5503463| 0.6879486|
|0-24 months (no birth wast) |IRC            |INDIA                        |Normal or high birthweight |NA             | 0.4830373| 0.4293329| 0.5367416|
|0-24 months (no birth wast) |IRC            |INDIA                        |Low birthweight            |NA             | 0.7205824| 0.6077932| 0.8333716|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |NA             | 0.1555718| 0.1477655| 0.1633781|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Low birthweight            |NA             | 0.2046755| 0.1955157| 0.2138354|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |NA             | 0.2285525| 0.2110232| 0.2460818|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |Low birthweight            |NA             | 0.3793922| 0.3461769| 0.4126075|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Normal or high birthweight |NA             | 0.3697792| 0.3435995| 0.3959589|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Low birthweight            |NA             | 0.4983915| 0.4319923| 0.5647908|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |Normal or high birthweight |NA             | 0.1938763| 0.1402606| 0.2474920|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |Low birthweight            |NA             | 0.3070754| 0.1851976| 0.4289531|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |Normal or high birthweight |NA             | 0.3333652| 0.2682601| 0.3984703|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |Low birthweight            |NA             | 0.5557754| 0.3817811| 0.7297697|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |Normal or high birthweight |NA             | 0.1737089| 0.1227202| 0.2246976|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |Low birthweight            |NA             | 0.2631579| 0.0647291| 0.4615867|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |Normal or high birthweight |NA             | 0.0567376| 0.0296916| 0.0837836|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |Low birthweight            |NA             | 0.2941176| 0.0771586| 0.5110767|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |Normal or high birthweight |NA             | 0.1393728| 0.0992386| 0.1795070|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |Low birthweight            |NA             | 0.2631579| 0.0648329| 0.4614829|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |NA             | 0.2643951| 0.2210627| 0.3077274|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |Low birthweight            |NA             | 0.3712390| 0.3006233| 0.4418547|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Normal or high birthweight |NA             | 0.1164947| 0.0903646| 0.1426247|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Low birthweight            |NA             | 0.2300204| 0.1669847| 0.2930562|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |Normal or high birthweight |NA             | 0.1492852| 0.1187769| 0.1797935|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |Low birthweight            |NA             | 0.2751123| 0.2039584| 0.3462663|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |Normal or high birthweight |NA             | 0.3269301| 0.2818254| 0.3720349|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |Low birthweight            |NA             | 0.4738482| 0.3991514| 0.5485451|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |NA             | 0.1930723| 0.1768618| 0.2092827|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |NA             | 0.3573186| 0.2514112| 0.4632260|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |NA             | 0.0957218| 0.0904374| 0.1010063|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |Low birthweight            |NA             | 0.1454287| 0.1285759| 0.1622815|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |Normal or high birthweight |NA             | 0.3112863| 0.2595924| 0.3629802|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |Low birthweight            |NA             | 0.3351724| 0.1840768| 0.4862680|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |Normal or high birthweight |NA             | 0.0919821| 0.0839856| 0.0999785|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |Low birthweight            |NA             | 0.0701318| 0.0538039| 0.0864598|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |Normal or high birthweight |NA             | 0.0962768| 0.0851173| 0.1074363|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |Low birthweight            |NA             | 0.0821312| 0.0492963| 0.1149660|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |Normal or high birthweight |NA             | 0.2260073| 0.1730601| 0.2789545|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |Low birthweight            |NA             | 0.1855246| 0.1182163| 0.2528328|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |Normal or high birthweight |NA             | 0.2002279| 0.1631082| 0.2373477|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |Low birthweight            |NA             | 0.1718345| 0.1173994| 0.2262697|
|0-6 months (no birth wast)  |IRC            |INDIA                        |Normal or high birthweight |NA             | 0.3329698| 0.2815028| 0.3844367|
|0-6 months (no birth wast)  |IRC            |INDIA                        |Low birthweight            |NA             | 0.3605081| 0.2375048| 0.4835114|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |NA             | 0.0825895| 0.0767938| 0.0883851|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |Low birthweight            |NA             | 0.0654336| 0.0598738| 0.0709934|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |NA             | 0.0297451| 0.0235896| 0.0359006|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |Low birthweight            |NA             | 0.0246750| 0.0139981| 0.0353520|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |Normal or high birthweight |NA             | 0.1136938| 0.0963941| 0.1309934|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |Low birthweight            |NA             | 0.1637375| 0.1137118| 0.2137632|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |NA             | 0.0805375| 0.0537212| 0.1073537|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH                   |Low birthweight            |NA             | 0.0823918| 0.0414027| 0.1233808|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |Normal or high birthweight |NA             | 0.0476197| 0.0293533| 0.0658861|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |Low birthweight            |NA             | 0.0782800| 0.0329167| 0.1236433|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |Normal or high birthweight |NA             | 0.1263902| 0.0938616| 0.1589189|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |Low birthweight            |NA             | 0.1267143| 0.0994030| 0.1540256|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |NA             | 0.0823288| 0.0710244| 0.0936332|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |NA             | 0.1609992| 0.0766400| 0.2453583|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |NA             | 0.0324462| 0.0292463| 0.0356460|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |Low birthweight            |NA             | 0.0297150| 0.0213140| 0.0381160|


### Parameter: E(Y)


|agecat                      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.4515235| 0.4001173| 0.5029298|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.1254089| 0.1039619| 0.1468560|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |NA                 |NA             | 0.1920601| 0.1825006| 0.2016195|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.3038655| 0.2873358| 0.3203952|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |NA                 |NA             | 0.5372340| 0.4867685| 0.5876996|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.5007587| 0.4625551| 0.5389624|
|0-24 months (no birth wast) |IRC            |INDIA                        |NA                 |NA             | 0.5210918| 0.4722583| 0.5699254|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1755073| 0.1694892| 0.1815253|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.2674393| 0.2524050| 0.2824735|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |NA                 |NA             | 0.3874755| 0.3630804| 0.4118706|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.2192308| 0.1688447| 0.2696168|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |NA                 |NA             | 0.3601695| 0.2987933| 0.4215457|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |NA                 |NA             | 0.1810345| 0.1313803| 0.2306886|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |NA                 |NA             | 0.0702341| 0.0412206| 0.0992477|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.1470588| 0.1073119| 0.1868057|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.2977625| 0.2605481| 0.3349769|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.1432361| 0.1182149| 0.1682572|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.1775837| 0.1489858| 0.2061816|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.3626005| 0.3118807| 0.4133204|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1979652| 0.1818822| 0.2140482|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.1019642| 0.0968771| 0.1070514|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.3081395| 0.2592761| 0.3570030|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |NA                 |NA             | 0.0882207| 0.0810753| 0.0953662|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.0954638| 0.0848652| 0.1060624|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |NA                 |NA             | 0.2139037| 0.1722896| 0.2555179|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.1918877| 0.1613794| 0.2223959|
|0-6 months (no birth wast)  |IRC            |INDIA                        |NA                 |NA             | 0.3385417| 0.2911496| 0.3859338|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.0754015| 0.0712481| 0.0795550|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.0288198| 0.0235259| 0.0341136|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |NA                 |NA             | 0.1191573| 0.1028598| 0.1354549|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.0797872| 0.0574049| 0.1021695|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.0541728| 0.0371844| 0.0711612|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.1262799| 0.0958566| 0.1567031|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0850702| 0.0737905| 0.0963499|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.0320984| 0.0291065| 0.0350903|


### Parameter: RR


|agecat                      |studyid        |country                      |intervention_level         |baseline_level             |  estimate|  ci_lower|   ci_upper|
|:---------------------------|:--------------|:----------------------------|:--------------------------|:--------------------------|---------:|---------:|----------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Normal or high birthweight |Normal or high birthweight | 1.0000000| 1.0000000|  1.0000000|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Low birthweight            |Normal or high birthweight | 1.2733349| 0.9331323|  1.7375690|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Normal or high birthweight |Normal or high birthweight | 1.0000000| 1.0000000|  1.0000000|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Low birthweight            |Normal or high birthweight | 1.8255877| 1.1344126|  2.9378821|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Normal or high birthweight |Normal or high birthweight | 1.0000000| 1.0000000|  1.0000000|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Low birthweight            |Normal or high birthweight | 1.3969970| 1.2452433|  1.5672445|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Normal or high birthweight |Normal or high birthweight | 1.0000000| 1.0000000|  1.0000000|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Low birthweight            |Normal or high birthweight | 1.5599403| 1.3527552|  1.7988575|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |Normal or high birthweight |Normal or high birthweight | 1.0000000| 1.0000000|  1.0000000|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |Low birthweight            |Normal or high birthweight | 1.2709212| 1.0562684|  1.5291955|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |Normal or high birthweight |Normal or high birthweight | 1.0000000| 1.0000000|  1.0000000|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |Low birthweight            |Normal or high birthweight | 1.3803108| 1.1874130|  1.6045454|
|0-24 months (no birth wast) |IRC            |INDIA                        |Normal or high birthweight |Normal or high birthweight | 1.0000000| 1.0000000|  1.0000000|
|0-24 months (no birth wast) |IRC            |INDIA                        |Low birthweight            |Normal or high birthweight | 1.4917740| 1.2303598|  1.8087309|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |Normal or high birthweight | 1.0000000| 1.0000000|  1.0000000|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Low birthweight            |Normal or high birthweight | 1.3156338| 1.2324243|  1.4044613|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |Normal or high birthweight | 1.0000000| 1.0000000|  1.0000000|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |Low birthweight            |Normal or high birthweight | 1.6599787| 1.4756186|  1.8673722|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Normal or high birthweight |Normal or high birthweight | 1.0000000| 1.0000000|  1.0000000|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Low birthweight            |Normal or high birthweight | 1.3478084| 1.1598051|  1.5662869|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |Normal or high birthweight |Normal or high birthweight | 1.0000000| 1.0000000|  1.0000000|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |Low birthweight            |Normal or high birthweight | 1.5838726| 0.9753210|  2.5721299|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |Normal or high birthweight |Normal or high birthweight | 1.0000000| 1.0000000|  1.0000000|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |Low birthweight            |Normal or high birthweight | 1.6671670| 1.1515050|  2.4137506|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |Normal or high birthweight |Normal or high birthweight | 1.0000000| 1.0000000|  1.0000000|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |Low birthweight            |Normal or high birthweight | 1.5149360| 0.6745061|  3.4025355|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |Normal or high birthweight |Normal or high birthweight | 1.0000000| 1.0000000|  1.0000000|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |Low birthweight            |Normal or high birthweight | 5.1838235| 2.1538670| 12.4761774|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |Normal or high birthweight |Normal or high birthweight | 1.0000000| 1.0000000|  1.0000000|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |Low birthweight            |Normal or high birthweight | 1.8881579| 0.8426742|  4.2307456|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |Normal or high birthweight | 1.0000000| 1.0000000|  1.0000000|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |Low birthweight            |Normal or high birthweight | 1.4041070| 1.0923751|  1.8047980|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Normal or high birthweight |Normal or high birthweight | 1.0000000| 1.0000000|  1.0000000|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Low birthweight            |Normal or high birthweight | 1.9745147| 1.3855295|  2.8138762|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |Normal or high birthweight |Normal or high birthweight | 1.0000000| 1.0000000|  1.0000000|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |Low birthweight            |Normal or high birthweight | 1.8428640| 1.3258535|  2.5614804|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |Normal or high birthweight |Normal or high birthweight | 1.0000000| 1.0000000|  1.0000000|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |Low birthweight            |Normal or high birthweight | 1.4493868| 1.3032536|  1.6119060|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |Normal or high birthweight | 1.0000000| 1.0000000|  1.0000000|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |Normal or high birthweight | 1.8506987| 1.3598532|  2.5187171|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |Normal or high birthweight | 1.0000000| 1.0000000|  1.0000000|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |Low birthweight            |Normal or high birthweight | 1.5192848| 1.3363412|  1.7272732|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |Normal or high birthweight |Normal or high birthweight | 1.0000000| 1.0000000|  1.0000000|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |Low birthweight            |Normal or high birthweight | 1.0767336| 0.6655567|  1.7419330|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |Normal or high birthweight |Normal or high birthweight | 1.0000000| 1.0000000|  1.0000000|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |Low birthweight            |Normal or high birthweight | 0.7624513| 0.5946623|  0.9775834|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |Normal or high birthweight |Normal or high birthweight | 1.0000000| 1.0000000|  1.0000000|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |Low birthweight            |Normal or high birthweight | 0.8530735| 0.5625988|  1.2935229|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |Normal or high birthweight |Normal or high birthweight | 1.0000000| 1.0000000|  1.0000000|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |Low birthweight            |Normal or high birthweight | 0.8208785| 0.5321331|  1.2663027|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |Normal or high birthweight |Normal or high birthweight | 1.0000000| 1.0000000|  1.0000000|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |Low birthweight            |Normal or high birthweight | 0.8581946| 0.5945824|  1.2386812|
|0-6 months (no birth wast)  |IRC            |INDIA                        |Normal or high birthweight |Normal or high birthweight | 1.0000000| 1.0000000|  1.0000000|
|0-6 months (no birth wast)  |IRC            |INDIA                        |Low birthweight            |Normal or high birthweight | 1.0827053| 0.7450851|  1.5733112|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |Normal or high birthweight | 1.0000000| 1.0000000|  1.0000000|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |Low birthweight            |Normal or high birthweight | 0.7922753| 0.7124881|  0.8809973|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |Normal or high birthweight | 1.0000000| 1.0000000|  1.0000000|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |Low birthweight            |Normal or high birthweight | 0.8295488| 0.5092297|  1.3513573|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |Normal or high birthweight |Normal or high birthweight | 1.0000000| 1.0000000|  1.0000000|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |Low birthweight            |Normal or high birthweight | 1.4401625| 1.0237927|  2.0258672|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |Normal or high birthweight | 1.0000000| 1.0000000|  1.0000000|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH                   |Low birthweight            |Normal or high birthweight | 1.0230241| 0.5625089|  1.8605543|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |Normal or high birthweight |Normal or high birthweight | 1.0000000| 1.0000000|  1.0000000|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |Low birthweight            |Normal or high birthweight | 1.6438574| 0.8201282|  3.2949328|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |Normal or high birthweight |Normal or high birthweight | 1.0000000| 1.0000000|  1.0000000|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |Low birthweight            |Normal or high birthweight | 1.0025642| 0.8581704|  1.1712533|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |Normal or high birthweight | 1.0000000| 1.0000000|  1.0000000|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Low birthweight            |Normal or high birthweight | 1.9555639| 1.1375181|  3.3619069|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |Normal or high birthweight | 1.0000000| 1.0000000|  1.0000000|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |Low birthweight            |Normal or high birthweight | 0.9158238| 0.6788697|  1.2354851|


### Parameter: PAR


|agecat                      |studyid        |country                      |intervention_level         |baseline_level |   estimate|   ci_lower|   ci_upper|
|:---------------------------|:--------------|:----------------------------|:--------------------------|:--------------|----------:|----------:|----------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Normal or high birthweight |NA             |  0.0128318| -0.0058587|  0.0315224|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Normal or high birthweight |NA             |  0.0081919| -0.0000492|  0.0164330|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Normal or high birthweight |NA             |  0.0127789|  0.0078298|  0.0177280|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Normal or high birthweight |NA             |  0.0147073|  0.0089168|  0.0204977|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |Normal or high birthweight |NA             |  0.0460223|  0.0086530|  0.0833917|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |Normal or high birthweight |NA             |  0.0522022|  0.0265301|  0.0778743|
|0-24 months (no birth wast) |IRC            |INDIA                        |Normal or high birthweight |NA             |  0.0380546|  0.0157944|  0.0603147|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |NA             |  0.0199354|  0.0150303|  0.0248406|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |NA             |  0.0388868|  0.0289773|  0.0487963|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Normal or high birthweight |NA             |  0.0176963|  0.0073252|  0.0280674|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |Normal or high birthweight |NA             |  0.0253545| -0.0042377|  0.0549466|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |Normal or high birthweight |NA             |  0.0268043| -0.0007558|  0.0543645|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |Normal or high birthweight |NA             |  0.0073256| -0.0097485|  0.0243997|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |Normal or high birthweight |NA             |  0.0134965| -0.0004132|  0.0274062|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |Normal or high birthweight |NA             |  0.0076860| -0.0053175|  0.0206895|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |NA             |  0.0333674|  0.0071606|  0.0595742|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Normal or high birthweight |NA             |  0.0267414|  0.0105616|  0.0429212|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |Normal or high birthweight |NA             |  0.0282985|  0.0099810|  0.0466160|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |Normal or high birthweight |NA             |  0.0356704|  0.0214579|  0.0498828|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |NA             |  0.0048930|  0.0011496|  0.0086363|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |NA             |  0.0062424|  0.0040363|  0.0084486|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |Normal or high birthweight |NA             | -0.0031467| -0.0194482|  0.0131547|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |Normal or high birthweight |NA             | -0.0037614| -0.0067135| -0.0008092|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |Normal or high birthweight |NA             | -0.0008130| -0.0040431|  0.0024171|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |Normal or high birthweight |NA             | -0.0121036| -0.0424600|  0.0182529|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |Normal or high birthweight |NA             | -0.0083403| -0.0275954|  0.0109149|
|0-6 months (no birth wast)  |IRC            |INDIA                        |Normal or high birthweight |NA             |  0.0055719| -0.0148782|  0.0260220|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |NA             | -0.0071880| -0.0104139| -0.0039620|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |NA             | -0.0009253| -0.0041225|  0.0022718|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |Normal or high birthweight |NA             |  0.0054636| -0.0017845|  0.0127116|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |NA             | -0.0007502| -0.0153015|  0.0138011|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |Normal or high birthweight |NA             |  0.0065531| -0.0039971|  0.0171033|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |Normal or high birthweight |NA             | -0.0001104| -0.0041704|  0.0039496|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |NA             |  0.0027414| -0.0001051|  0.0055879|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |NA             | -0.0003478| -0.0013983|  0.0007027|


### Parameter: PAF


|agecat                      |studyid        |country                      |intervention_level         |baseline_level |   estimate|   ci_lower|   ci_upper|
|:---------------------------|:--------------|:----------------------------|:--------------------------|:--------------|----------:|----------:|----------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |Normal or high birthweight |NA             |  0.0284190| -0.0139601|  0.0690268|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |Normal or high birthweight |NA             |  0.0653217| -0.0019923|  0.1281135|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |Normal or high birthweight |NA             |  0.0665358|  0.0405245|  0.0918419|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |Normal or high birthweight |NA             |  0.0484005|  0.0291716|  0.0672486|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |Normal or high birthweight |NA             |  0.0856653|  0.0128245|  0.1531314|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |Normal or high birthweight |NA             |  0.1042462|  0.0509744|  0.1545276|
|0-24 months (no birth wast) |IRC            |INDIA                        |Normal or high birthweight |NA             |  0.0730285|  0.0287272|  0.1153092|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |NA             |  0.1135875|  0.0848704|  0.1414035|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |NA             |  0.1454042|  0.1070827|  0.1820811|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |Normal or high birthweight |NA             |  0.0456708|  0.0184684|  0.0721193|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |Normal or high birthweight |NA             |  0.1156519| -0.0276019|  0.2389353|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |Normal or high birthweight |NA             |  0.0744214| -0.0053196|  0.1478375|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |Normal or high birthweight |NA             |  0.0404650| -0.0582243|  0.1299506|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |Normal or high birthweight |NA             |  0.1921648| -0.0139099|  0.3563554|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |Normal or high birthweight |NA             |  0.0522648| -0.0395781|  0.1359937|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |NA             |  0.1120605|  0.0198468|  0.1955987|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |Normal or high birthweight |NA             |  0.1866946|  0.0696532|  0.2890118|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |Normal or high birthweight |NA             |  0.1593530|  0.0521899|  0.2543998|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |Normal or high birthweight |NA             |  0.0983738|  0.0634819|  0.1319658|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |NA             |  0.0247163|  0.0056824|  0.0433859|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |NA             |  0.0612218|  0.0395067|  0.0824460|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |Normal or high birthweight |NA             | -0.0102121| -0.0645306|  0.0413348|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |Normal or high birthweight |NA             | -0.0426357| -0.0764724| -0.0098626|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |Normal or high birthweight |NA             | -0.0085163| -0.0429147|  0.0247476|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |Normal or high birthweight |NA             | -0.0565842| -0.2082127|  0.0760152|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |Normal or high birthweight |NA             | -0.0434643| -0.1485609|  0.0520157|
|0-6 months (no birth wast)  |IRC            |INDIA                        |Normal or high birthweight |NA             |  0.0164586| -0.0458688|  0.0750716|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |Normal or high birthweight |NA             | -0.0953293| -0.1380773| -0.0541870|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |Normal or high birthweight |NA             | -0.0321077| -0.1494693|  0.0732713|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |Normal or high birthweight |NA             |  0.0458516| -0.0167673|  0.1046140|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH                   |Normal or high birthweight |NA             | -0.0094029| -0.2092850|  0.1574409|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |Normal or high birthweight |NA             |  0.1209663| -0.0928764|  0.2929665|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |Normal or high birthweight |NA             | -0.0008741| -0.0334451|  0.0306704|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |Normal or high birthweight |NA             |  0.0322253| -0.0015826|  0.0648920|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |Normal or high birthweight |NA             | -0.0108346| -0.0440838|  0.0213557|
