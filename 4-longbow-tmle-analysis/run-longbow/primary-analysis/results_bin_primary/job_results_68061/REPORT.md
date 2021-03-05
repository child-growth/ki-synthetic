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

**Intervention Variable:** enstunt

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

|agecat                      |studyid        |country                      |enstunt | ever_wasted| n_cell|     n|
|:---------------------------|:--------------|:----------------------------|:-------|-----------:|------:|-----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0       |           0|    166|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0       |           1|    127|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1       |           0|     36|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1       |           1|     39|   368|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |0       |           0|    103|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |0       |           1|     63|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |1       |           0|     50|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |1       |           1|     52|   268|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |0       |           0|    910|  1332|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |0       |           1|    103|  1332|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |1       |           0|    263|  1332|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |1       |           1|     56|  1332|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |0       |           0|   5189|  7135|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |0       |           1|   1099|  7135|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |1       |           0|    636|  7135|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |1       |           1|    211|  7135|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |0       |           0|   2004|  3019|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |0       |           1|    841|  3019|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |1       |           0|     99|  3019|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |1       |           1|     75|  3019|
|0-24 months (no birth wast) |CONTENT        |PERU                         |0       |           0|    192|   215|
|0-24 months (no birth wast) |CONTENT        |PERU                         |0       |           1|      3|   215|
|0-24 months (no birth wast) |CONTENT        |PERU                         |1       |           0|     19|   215|
|0-24 months (no birth wast) |CONTENT        |PERU                         |1       |           1|      1|   215|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |0       |           0|    111|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |0       |           1|    100|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |1       |           0|     63|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |1       |           1|    103|   377|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0       |           0|    275|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0       |           1|    278|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1       |           0|     54|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1       |           1|     53|   660|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |0       |           0|    224|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |0       |           1|     15|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |1       |           0|     63|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |1       |           1|     11|   313|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |0       |           0|   2279|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |0       |           1|    167|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |1       |           0|    549|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |1       |           1|     96|  3091|
|0-24 months (no birth wast) |IRC            |INDIA                        |0       |           0|    176|   409|
|0-24 months (no birth wast) |IRC            |INDIA                        |0       |           1|    181|   409|
|0-24 months (no birth wast) |IRC            |INDIA                        |1       |           0|     20|   409|
|0-24 months (no birth wast) |IRC            |INDIA                        |1       |           1|     32|   409|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0       |           0|  15104| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0       |           1|   2981| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1       |           0|   6931| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1       |           1|   1513| 26529|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0       |           0|   3000|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0       |           1|    859|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1       |           0|   1005|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1       |           1|    532|  5396|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |0       |           0|   1697|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |0       |           1|    853|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |1       |           0|    198|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |1       |           1|    120|  2868|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |0       |           0|    512|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |0       |           1|     18|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |1       |           0|    269|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |1       |           1|     38|   837|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |0       |           0|    174|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |0       |           1|     43|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |1       |           0|     31|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |1       |           1|     15|   263|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |0       |           0|    191|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |0       |           1|     11|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |1       |           0|     29|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |1       |           1|      2|   233|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |0       |           0|    134|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |0       |           1|     72|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |1       |           0|     21|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |1       |           1|     19|   246|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |0       |           0|    173|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |0       |           1|     37|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |1       |           0|     20|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |1       |           1|      9|   239|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |0       |           0|    251|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |0       |           1|     15|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |1       |           0|     30|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |1       |           1|      6|   302|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |0       |           0|    230|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |0       |           1|     40|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |1       |           0|     33|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |1       |           1|      5|   308|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0       |           0|    193|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0       |           1|     26|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1       |           0|     34|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1       |           1|      8|   261|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |0       |           0|    360|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |0       |           1|    148|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |1       |           0|     64|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |1       |           1|     30|   602|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0       |           0|    564|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0       |           1|     85|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |1       |           0|     82|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |1       |           1|     23|   754|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |0       |           0|  15608| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |0       |           1|   1139| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |1       |           0|    123| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |1       |           1|      9| 16879|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0       |           0|    523|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0       |           1|     98|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1       |           0|     42|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1       |           1|     24|   687|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |0       |           0|    113|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |0       |           1|     86|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |1       |           0|     40|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |1       |           1|     41|   280|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |0       |           0|    720|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |0       |           1|    363|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |1       |           0|    239|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |1       |           1|    180|  1502|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |0       |           0|    171|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |0       |           1|     73|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |1       |           0|     83|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |1       |           1|     70|   397|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0       |           0|   1796|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0       |           1|    426|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1       |           0|    114|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1       |           1|     48|  2384|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |0       |           0|  11033| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |0       |           1|   1210| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |1       |           0|   1213| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |1       |           1|    181| 13637|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |0       |           0|    192|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |0       |           1|     88|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |1       |           0|     50|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |1       |           1|     20|   350|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH                   |0       |           0|    147|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH                   |0       |           1|     19|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH                   |1       |           0|     89|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH                   |1       |           1|     12|   267|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA                    |0       |           0|    875|  1030|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA                    |0       |           1|     17|  1030|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA                    |1       |           0|    137|  1030|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA                    |1       |           1|      1|  1030|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |0       |           0|   5292|  6510|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |0       |           1|    494|  6510|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |1       |           0|    684|  6510|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |1       |           1|     40|  6510|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |0       |           0|   2553|  2998|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |0       |           1|    273|  2998|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |1       |           0|    161|  2998|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |1       |           1|     11|  2998|
|0-6 months (no birth wast)  |CONTENT        |PERU                         |0       |           0|    192|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU                         |0       |           1|      3|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU                         |1       |           0|     20|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU                         |1       |           1|      0|   215|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |0       |           0|    162|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |0       |           1|     48|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |1       |           0|    132|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |1       |           1|     33|   375|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |0       |           0|    426|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |0       |           1|    111|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |1       |           0|     93|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |1       |           1|     12|   642|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA                    |0       |           0|    219|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA                    |0       |           1|      4|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA                    |1       |           0|     66|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA                    |1       |           1|      1|   290|
|0-6 months (no birth wast)  |IRC            |INDIA                        |0       |           0|    222|   390|
|0-6 months (no birth wast)  |IRC            |INDIA                        |0       |           1|    117|   390|
|0-6 months (no birth wast)  |IRC            |INDIA                        |1       |           0|     35|   390|
|0-6 months (no birth wast)  |IRC            |INDIA                        |1       |           1|     16|   390|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |0       |           0|  16461| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |0       |           1|   1429| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |1       |           0|   7892| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |1       |           1|    452| 26234|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |0       |           0|   3465|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |0       |           1|    101|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |1       |           0|   1365|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |1       |           1|     26|  4957|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |0       |           0|   1947|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |0       |           1|    243|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |1       |           0|    206|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |1       |           1|     28|  2424|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI                       |0       |           0|    171|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI                       |0       |           1|      0|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI                       |1       |           0|     97|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI                       |1       |           1|      0|   268|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |0       |           0|    202|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |0       |           1|     14|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |1       |           0|     41|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |1       |           1|      5|   262|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |0       |           0|    194|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |0       |           1|      8|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |1       |           0|     31|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |1       |           1|      0|   233|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |0       |           0|    171|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |0       |           1|     34|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |1       |           0|     34|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |1       |           1|      5|   244|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |0       |           0|    196|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |0       |           1|     12|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |1       |           0|     25|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |1       |           1|      4|   237|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |0       |           0|    263|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |0       |           1|      3|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |1       |           0|     34|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |1       |           1|      2|   302|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |0       |           0|    257|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |0       |           1|     12|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |1       |           0|     36|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |1       |           1|      2|   307|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0       |           0|    210|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0       |           1|      9|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1       |           0|     41|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1       |           1|      1|   261|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH                   |0       |           0|    459|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH                   |0       |           1|     36|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH                   |1       |           0|     79|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH                   |1       |           1|     10|   584|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |0       |           0|    626|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |0       |           1|     19|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |1       |           0|    103|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |1       |           1|      1|   749|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |0       |           0|  15549| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |0       |           1|   1014| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |1       |           0|    122| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |1       |           1|      8| 16693|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |0       |           0|    587|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |0       |           1|     31|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |1       |           0|     59|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |1       |           1|      6|   683|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN                     |0       |           0|    159|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN                     |0       |           1|     39|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN                     |1       |           0|     54|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN                     |1       |           1|     24|   276|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |0       |           0|    935|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |0       |           1|    136|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |1       |           0|    353|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |1       |           1|     49|  1473|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA                        |0       |           0|    211|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA                        |0       |           1|      0|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA                        |1       |           0|    130|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA                        |1       |           1|      0|   341|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0       |           0|   2026|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0       |           1|    188|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1       |           0|    146|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1       |           1|     16|  2376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |0       |           0|  11666| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |0       |           1|    390| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |1       |           0|   1282| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |1       |           1|     38| 13376|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
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
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
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
* agecat: 0-6 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
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
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/73ea76bf-202c-469d-8b94-92a21c72928d/3e3e6c38-de14-4e09-90c7-dfa3e75beb12/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/73ea76bf-202c-469d-8b94-92a21c72928d/3e3e6c38-de14-4e09-90c7-dfa3e75beb12/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/73ea76bf-202c-469d-8b94-92a21c72928d/3e3e6c38-de14-4e09-90c7-dfa3e75beb12/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/73ea76bf-202c-469d-8b94-92a21c72928d/3e3e6c38-de14-4e09-90c7-dfa3e75beb12/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0                  |NA             | 0.4371251| 0.3801860| 0.4940641|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1                  |NA             | 0.5120823| 0.3965641| 0.6276005|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |0                  |NA             | 0.3704762| 0.2970067| 0.4439457|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |1                  |NA             | 0.5242993| 0.4251130| 0.6234857|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |0                  |NA             | 0.1013818| 0.0827744| 0.1199892|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |1                  |NA             | 0.1764434| 0.1340002| 0.2188866|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |0                  |NA             | 0.1751199| 0.1657365| 0.1845034|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |1                  |NA             | 0.2450020| 0.2158862| 0.2741177|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |0                  |NA             | 0.2963928| 0.2796214| 0.3131642|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |1                  |NA             | 0.4169710| 0.3445814| 0.4893606|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |0                  |NA             | 0.4820282| 0.4139139| 0.5501426|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |1                  |NA             | 0.6132585| 0.5395251| 0.6869920|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0                  |NA             | 0.5036487| 0.4619116| 0.5453858|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1                  |NA             | 0.4996725| 0.4048939| 0.5944512|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |0                  |NA             | 0.0652551| 0.0344156| 0.0960947|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |1                  |NA             | 0.1449759| 0.0627227| 0.2272290|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |0                  |NA             | 0.0691275| 0.0542319| 0.0840231|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |1                  |NA             | 0.1427243| 0.0867794| 0.1986693|
|0-24 months (no birth wast) |IRC            |INDIA                        |0                  |NA             | 0.5073237| 0.4553193| 0.5593281|
|0-24 months (no birth wast) |IRC            |INDIA                        |1                  |NA             | 0.6175706| 0.4793464| 0.7557949|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0                  |NA             | 0.1655406| 0.1592519| 0.1718293|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.1803778| 0.1709177| 0.1898380|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0                  |NA             | 0.2246384| 0.2092958| 0.2399811|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1                  |NA             | 0.3387042| 0.3120845| 0.3653240|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |0                  |NA             | 0.3331079| 0.3148234| 0.3513924|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |1                  |NA             | 0.3870782| 0.3322565| 0.4419000|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |0                  |NA             | 0.0331460| 0.0179738| 0.0483182|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |1                  |NA             | 0.1234662| 0.0863909| 0.1605416|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |0                  |NA             | 0.2008023| 0.1474851| 0.2541195|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |1                  |NA             | 0.3168596| 0.1813530| 0.4523663|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |0                  |NA             | 0.3494344| 0.2842611| 0.4146078|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |1                  |NA             | 0.4532132| 0.2940315| 0.6123950|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |0                  |NA             | 0.1761905| 0.1245544| 0.2278266|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |1                  |NA             | 0.3103448| 0.1416127| 0.4790770|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |0                  |NA             | 0.0563910| 0.0286240| 0.0841579|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |1                  |NA             | 0.1666667| 0.0447254| 0.2886080|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |0                  |NA             | 0.1481481| 0.1057055| 0.1905908|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |1                  |NA             | 0.1315789| 0.0239273| 0.2392306|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | 0.1187215| 0.0757994| 0.1616435|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.1904762| 0.0714912| 0.3094612|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |0                  |NA             | 0.2908813| 0.2513667| 0.3303959|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |1                  |NA             | 0.3318386| 0.2353403| 0.4283369|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0                  |NA             | 0.1309097| 0.1049175| 0.1569019|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |1                  |NA             | 0.2122960| 0.1330981| 0.2914940|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |0                  |NA             | 0.0680122| 0.0559751| 0.0800492|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |1                  |NA             | 0.0681818| 0.0482569| 0.0881068|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0                  |NA             | 0.1579304| 0.1292109| 0.1866499|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1                  |NA             | 0.3655745| 0.2475214| 0.4836277|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |0                  |NA             | 0.4298293| 0.3607047| 0.4989540|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |1                  |NA             | 0.5081683| 0.3941603| 0.6221764|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |0                  |NA             | 0.3354470| 0.2894121| 0.3814819|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |1                  |NA             | 0.4289136| 0.3540743| 0.5037529|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |0                  |NA             | 0.2993922| 0.2418328| 0.3569515|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |1                  |NA             | 0.4536944| 0.3738797| 0.5335092|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | 0.1915742| 0.1752038| 0.2079446|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.2970856| 0.2256463| 0.3685249|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |0                  |NA             | 0.0991971| 0.0938941| 0.1045002|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | 0.1257269| 0.1081561| 0.1432976|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |0                  |NA             | 0.3151539| 0.2605631| 0.3697448|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |1                  |NA             | 0.2784521| 0.1701940| 0.3867102|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH                   |0                  |NA             | 0.1130937| 0.0648210| 0.1613664|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH                   |1                  |NA             | 0.1176261| 0.0548177| 0.1804345|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |0                  |NA             | 0.0852971| 0.0780951| 0.0924992|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |1                  |NA             | 0.0565693| 0.0394560| 0.0736827|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |0                  |NA             | 0.0965667| 0.0856683| 0.1074651|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |1                  |NA             | 0.0570436| 0.0221307| 0.0919564|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |0                  |NA             | 0.2320081| 0.1753275| 0.2886887|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |1                  |NA             | 0.2014872| 0.1402785| 0.2626959|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |0                  |NA             | 0.2069093| 0.1725854| 0.2412332|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |1                  |NA             | 0.1077616| 0.0454654| 0.1700577|
|0-6 months (no birth wast)  |IRC            |INDIA                        |0                  |NA             | 0.3432410| 0.2925094| 0.3939727|
|0-6 months (no birth wast)  |IRC            |INDIA                        |1                  |NA             | 0.3378087| 0.2026699| 0.4729474|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |0                  |NA             | 0.0802542| 0.0754992| 0.0850093|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |1                  |NA             | 0.0531360| 0.0478001| 0.0584720|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |0                  |NA             | 0.0282453| 0.0223237| 0.0341670|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |1                  |NA             | 0.0193535| 0.0117231| 0.0269839|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |0                  |NA             | 0.1109992| 0.0978041| 0.1241943|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |1                  |NA             | 0.1241890| 0.0811407| 0.1672373|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |0                  |NA             | 0.0648148| 0.0319192| 0.0977104|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |1                  |NA             | 0.1086957| 0.0185762| 0.1988151|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |0                  |NA             | 0.1658537| 0.1148329| 0.2168744|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |1                  |NA             | 0.1282051| 0.0230653| 0.2333450|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH                   |0                  |NA             | 0.0722807| 0.0494171| 0.0951443|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH                   |1                  |NA             | 0.1171975| 0.0481494| 0.1862455|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |0                  |NA             | 0.0612208| 0.0499574| 0.0724842|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |1                  |NA             | 0.0615385| 0.0474554| 0.0756216|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |0                  |NA             | 0.0501618| 0.0329398| 0.0673838|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |1                  |NA             | 0.0923077| 0.0218874| 0.1627280|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN                     |0                  |NA             | 0.1969534| 0.1411228| 0.2527839|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN                     |1                  |NA             | 0.3231273| 0.2145046| 0.4317500|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |0                  |NA             | 0.1261272| 0.0957030| 0.1565514|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |1                  |NA             | 0.1160655| 0.0843418| 0.1477893|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             | 0.0847868| 0.0731757| 0.0963978|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |NA             | 0.1013140| 0.0549690| 0.1476590|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |0                  |NA             | 0.0323953| 0.0292320| 0.0355585|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |1                  |NA             | 0.0286342| 0.0192330| 0.0380354|


### Parameter: E(Y)


|agecat                      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.4510870| 0.4001777| 0.5019962|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |NA                 |NA             | 0.4291045| 0.3697365| 0.4884725|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |NA                 |NA             | 0.1193694| 0.1019512| 0.1367875|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |NA                 |NA             | 0.1836020| 0.1746179| 0.1925860|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.3034117| 0.2870099| 0.3198136|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |NA                 |NA             | 0.5384615| 0.4880726| 0.5888505|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.5015152| 0.4633406| 0.5396897|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |NA                 |NA             | 0.0830671| 0.0524436| 0.1136905|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |NA                 |NA             | 0.0850857| 0.0676201| 0.1025513|
|0-24 months (no birth wast) |IRC            |INDIA                        |NA                 |NA             | 0.5207824| 0.4723080| 0.5692568|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.1693995| 0.1641138| 0.1746853|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.2577835| 0.2441424| 0.2714247|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |NA                 |NA             | 0.3392608| 0.3219301| 0.3565915|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |NA                 |NA             | 0.0669056| 0.0499685| 0.0838427|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.2205323| 0.1703290| 0.2707357|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |NA                 |NA             | 0.3699187| 0.3094659| 0.4303715|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |NA                 |NA             | 0.1924686| 0.1423823| 0.2425550|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |NA                 |NA             | 0.0695364| 0.0408008| 0.0982721|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |NA                 |NA             | 0.1461039| 0.1065934| 0.1856144|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1302682| 0.0893541| 0.1711823|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.2956811| 0.2591967| 0.3321655|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |NA                 |NA             | 0.1432361| 0.1182149| 0.1682572|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |NA                 |NA             | 0.0680135| 0.0562135| 0.0798135|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.1775837| 0.1489858| 0.2061816|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |NA                 |NA             | 0.4535714| 0.3951549| 0.5119879|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.3615180| 0.3107193| 0.4123167|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |NA                 |NA             | 0.3602015| 0.3129196| 0.4074834|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.1988255| 0.1828010| 0.2148500|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.1020019| 0.0969221| 0.1070817|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |NA                 |NA             | 0.3085714| 0.2601110| 0.3570318|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH                   |NA                 |NA             | 0.1161049| 0.0776073| 0.1546024|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |NA                 |NA             | 0.0820277| 0.0753613| 0.0886940|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |NA                 |NA             | 0.0947298| 0.0842456| 0.1052141|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |NA                 |NA             | 0.2160000| 0.1742941| 0.2577059|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |NA                 |NA             | 0.1915888| 0.1611224| 0.2220551|
|0-6 months (no birth wast)  |IRC            |INDIA                        |NA                 |NA             | 0.3410256| 0.2939169| 0.3881343|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |NA                 |NA             | 0.0717008| 0.0680635| 0.0753382|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |NA                 |NA             | 0.0256203| 0.0209093| 0.0303314|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |NA                 |NA             | 0.1117987| 0.0992515| 0.1243458|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |NA                 |NA             | 0.0725191| 0.0410556| 0.1039825|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |NA                 |NA             | 0.1598361| 0.1137612| 0.2059110|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH                   |NA                 |NA             | 0.0787671| 0.0569010| 0.1006332|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |NA                 |NA             | 0.0612233| 0.0502388| 0.0722078|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |NA                 |NA             | 0.0541728| 0.0371844| 0.0711612|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN                     |NA                 |NA             | 0.2282609| 0.1786550| 0.2778667|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |NA                 |NA             | 0.1255940| 0.0954030| 0.1557851|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.0858586| 0.0745914| 0.0971258|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |NA                 |NA             | 0.0319976| 0.0290150| 0.0349802|


### Parameter: RR


|agecat                      |studyid        |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1                  |0              | 1.1714778| 0.9024476| 1.5207091|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |1                  |0              | 1.4152039| 1.0755077| 1.8621923|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |1                  |0              | 1.7403852| 1.2859459| 2.3554184|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |1                  |0              | 1.3990522| 1.2282124| 1.5936553|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |1                  |0              | 1.4068189| 1.1725443| 1.6879016|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |1                  |0              | 1.2722461| 1.0571042| 1.5311736|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1                  |0              | 0.9921052| 0.8068083| 1.2199586|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |1                  |0              | 2.2216778| 1.0630455| 4.6431242|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |1                  |0              | 2.0646538| 1.3679183| 3.1162643|
|0-24 months (no birth wast) |IRC            |INDIA                        |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |IRC            |INDIA                        |1                  |0              | 1.2173107| 0.9514562| 1.5574499|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1                  |0              | 1.0896289| 1.0228499| 1.1607678|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1                  |0              | 1.5077751| 1.3626026| 1.6684144|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |1                  |0              | 1.1620205| 0.9983949| 1.3524625|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |1                  |0              | 3.7249174| 2.1520334| 6.4473953|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |1                  |0              | 1.5779680| 0.9593465| 2.5954991|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |1                  |0              | 1.2969908| 0.8699026| 1.9337626|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |1                  |0              | 1.7614166| 0.9497737| 3.2666607|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |1                  |0              | 2.9555556| 1.2235735| 7.1391780|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |1                  |0              | 0.8881579| 0.3732647| 2.1133113|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1                  |0              | 1.6043956| 0.7795781| 3.3018954|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |1                  |0              | 1.1408041| 0.8270018| 1.5736772|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |1                  |0              | 1.6216980| 1.0630052| 2.4740279|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |1                  |0              | 1.0024942| 0.7243081| 1.3875236|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1                  |0              | 2.3147824| 1.5979574| 3.3531667|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |1                  |0              | 1.1822561| 0.8967642| 1.5586366|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |1                  |0              | 1.2786332| 1.1416186| 1.4320920|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |1                  |0              | 1.5153850| 1.1677979| 1.9664291|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |0              | 1.5507599| 1.2014562| 2.0016179|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |1                  |0              | 1.2674445| 1.0913393| 1.4719670|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |1                  |0              | 0.8835432| 0.5766315| 1.3538084|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH                   |1                  |0              | 1.0400769| 0.5246831| 2.0617398|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |1                  |0              | 0.6632030| 0.4844249| 0.9079596|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |1                  |0              | 0.5907167| 0.3170153| 1.1007236|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |1                  |0              | 0.8684492| 0.5875893| 1.2835564|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |1                  |0              | 0.5208156| 0.2851351| 0.9512996|
|0-6 months (no birth wast)  |IRC            |INDIA                        |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |IRC            |INDIA                        |1                  |0              | 0.9841733| 0.6425895| 1.5073342|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |1                  |0              | 0.6620965| 0.5895515| 0.7435682|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |1                  |0              | 0.6851937| 0.4361593| 1.0764197|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |1                  |0              | 1.1188280| 0.7754600| 1.6142369|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |1                  |0              | 1.6770186| 0.6343906| 4.4332175|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |1                  |0              | 0.7730015| 0.3219485| 1.8559842|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH                   |1                  |0              | 1.6214205| 0.8300421| 3.1673146|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |1                  |0              | 1.0051889| 0.7484287| 1.3500346|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |1                  |0              | 1.8401985| 0.7971526| 4.2480332|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN                     |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN                     |1                  |0              | 1.6406286| 1.0558021| 2.5494002|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |1                  |0              | 0.9202262| 0.7801207| 1.0854938|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |1                  |0              | 1.1949272| 0.7412855| 1.9261824|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |0                  |0              | 1.0000000| 1.0000000| 1.0000000|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |1                  |0              | 0.8839002| 0.6275777| 1.2449128|


### Parameter: PAR


|agecat                      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0                  |NA             |  0.0139619| -0.0121977|  0.0401215|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |0                  |NA             |  0.0586283|  0.0114453|  0.1058113|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |0                  |NA             |  0.0179876|  0.0068761|  0.0290990|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |0                  |NA             |  0.0084820|  0.0048093|  0.0121548|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |0                  |NA             |  0.0070189|  0.0026476|  0.0113903|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |0                  |NA             |  0.0564333|  0.0117622|  0.1011044|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0                  |NA             | -0.0021336| -0.0189423|  0.0146751|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |0                  |NA             |  0.0178120| -0.0030822|  0.0387062|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |0                  |NA             |  0.0159582|  0.0071341|  0.0247824|
|0-24 months (no birth wast) |IRC            |INDIA                        |0                  |NA             |  0.0134587| -0.0050312|  0.0319485|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0                  |NA             |  0.0038589|  0.0003610|  0.0073568|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0                  |NA             |  0.0331451|  0.0244859|  0.0418043|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |0                  |NA             |  0.0061529| -0.0001612|  0.0124670|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |0                  |NA             |  0.0337596|  0.0188432|  0.0486759|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |0                  |NA             |  0.0197300| -0.0057127|  0.0451727|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |0                  |NA             |  0.0204843| -0.0079963|  0.0489648|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |0                  |NA             |  0.0162781| -0.0058443|  0.0384006|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |0                  |NA             |  0.0131454| -0.0022995|  0.0285904|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |0                  |NA             | -0.0020443| -0.0163339|  0.0122454|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0                  |NA             |  0.0115467| -0.0090588|  0.0321522|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |0                  |NA             |  0.0047997| -0.0112659|  0.0208654|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0                  |NA             |  0.0123264|  0.0005519|  0.0241008|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |0                  |NA             |  0.0000013| -0.0005524|  0.0005550|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0                  |NA             |  0.0196533|  0.0073288|  0.0319778|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |0                  |NA             |  0.0237421| -0.0142070|  0.0616913|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |0                  |NA             |  0.0260710|  0.0123371|  0.0398049|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |0                  |NA             |  0.0608093|  0.0223093|  0.0993093|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             |  0.0072513|  0.0022201|  0.0122825|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |0                  |NA             |  0.0028048|  0.0009068|  0.0047027|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |0                  |NA             | -0.0065825| -0.0306645|  0.0174995|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH                   |0                  |NA             |  0.0030112| -0.0271272|  0.0331496|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |0                  |NA             | -0.0032695| -0.0053055| -0.0012335|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |0                  |NA             | -0.0018369| -0.0040611|  0.0003873|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |0                  |NA             | -0.0160081| -0.0528668|  0.0208506|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |0                  |NA             | -0.0153205| -0.0272288| -0.0034122|
|0-6 months (no birth wast)  |IRC            |INDIA                        |0                  |NA             | -0.0022154| -0.0203887|  0.0159579|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |0                  |NA             | -0.0085534| -0.0108597| -0.0062471|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |0                  |NA             | -0.0026250| -0.0053435|  0.0000935|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |0                  |NA             |  0.0007995| -0.0034441|  0.0050431|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |0                  |NA             |  0.0077043| -0.0092607|  0.0246693|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |0                  |NA             | -0.0060176| -0.0247773|  0.0127421|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH                   |0                  |NA             |  0.0064864| -0.0042655|  0.0172382|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |0                  |NA             |  0.0000025| -0.0004502|  0.0004551|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |0                  |NA             |  0.0040110| -0.0029505|  0.0109724|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN                     |0                  |NA             |  0.0313075| -0.0030796|  0.0656947|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |0                  |NA             | -0.0005332| -0.0063999|  0.0053336|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             |  0.0010718| -0.0021596|  0.0043032|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |0                  |NA             | -0.0003977| -0.0013422|  0.0005469|


### Parameter: PAF


|agecat                      |studyid        |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:---------------------------|:--------------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0                  |NA             |  0.0309517| -0.0288753|  0.0872999|
|0-24 months (no birth wast) |CMIN           |BANGLADESH                   |0                  |NA             |  0.1366294|  0.0188719|  0.2402534|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA                    |0                  |NA             |  0.1506882|  0.0545448|  0.2370548|
|0-24 months (no birth wast) |COHORTS        |INDIA                        |0                  |NA             |  0.0461979|  0.0260676|  0.0659120|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES                  |0                  |NA             |  0.0231333|  0.0086248|  0.0374295|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |0                  |NA             |  0.1048047|  0.0169952|  0.1847704|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0                  |NA             | -0.0042543| -0.0383367|  0.0287095|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA                    |0                  |NA             |  0.2144287| -0.0627622|  0.4193223|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO                 |0                  |NA             |  0.1875548|  0.0925927|  0.2725790|
|0-24 months (no birth wast) |IRC            |INDIA                        |0                  |NA             |  0.0258431| -0.0104180|  0.0608030|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0                  |NA             |  0.0227799|  0.0019110|  0.0432124|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0                  |NA             |  0.1285773|  0.0943827|  0.1614807|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |0                  |NA             |  0.0181362| -0.0006508|  0.0365704|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |0                  |NA             |  0.5045852|  0.2790248|  0.6595780|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |0                  |NA             |  0.0894654| -0.0326287|  0.1971235|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |0                  |NA             |  0.0553750| -0.0247961|  0.1292743|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |0                  |NA             |  0.0845756| -0.0365399|  0.1915392|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |0                  |NA             |  0.1890440| -0.0502559|  0.3738197|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |0                  |NA             | -0.0139918| -0.1166164|  0.0792010|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0                  |NA             |  0.0886382| -0.0819673|  0.2323425|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |0                  |NA             |  0.0162328| -0.0396187|  0.0690839|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0                  |NA             |  0.0860562|  0.0010313|  0.1638444|
|0-24 months (no birth wast) |PROBIT         |BELARUS                      |0                  |NA             |  0.0000195| -0.0081559|  0.0081286|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0                  |NA             |  0.1106705|  0.0399908|  0.1761466|
|0-24 months (no birth wast) |ResPak         |PAKISTAN                     |0                  |NA             |  0.0523448| -0.0353002|  0.1325700|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |0                  |NA             |  0.0721154|  0.0370108|  0.1059403|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |0                  |NA             |  0.1688203|  0.0549484|  0.2689715|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             |  0.0364706|  0.0109198|  0.0613614|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE                     |0                  |NA             |  0.0274972|  0.0087525|  0.0458873|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |0                  |NA             | -0.0213322| -0.1024324|  0.0538019|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH                   |0                  |NA             |  0.0259350| -0.2714153|  0.2537429|
|0-6 months (no birth wast)  |COHORTS        |INDIA                        |0                  |NA             | -0.0398585| -0.0647928| -0.0155079|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES                  |0                  |NA             | -0.0193908| -0.0430587|  0.0037401|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |0                  |NA             | -0.0741115| -0.2591328|  0.0837221|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |0                  |NA             | -0.0799654| -0.1433122| -0.0201285|
|0-6 months (no birth wast)  |IRC            |INDIA                        |0                  |NA             | -0.0064963| -0.0612171|  0.0454029|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |0                  |NA             | -0.1192927| -0.1509906| -0.0884678|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |0                  |NA             | -0.1024571| -0.2112134| -0.0034661|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |0                  |NA             |  0.0071511| -0.0315399|  0.0443908|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |0                  |NA             |  0.1062378| -0.1560655|  0.3090263|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |0                  |NA             | -0.0376485| -0.1615715|  0.0730537|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH                   |0                  |NA             |  0.0823490| -0.0630359|  0.2078505|
|0-6 months (no birth wast)  |PROBIT         |BELARUS                      |0                  |NA             |  0.0000404| -0.0073852|  0.0074113|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |0                  |NA             |  0.0740401| -0.0616406|  0.1923804|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN                     |0                  |NA             |  0.1371567| -0.0254713|  0.2739938|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |0                  |NA             | -0.0042451| -0.0521336|  0.0414637|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA, UNITED REPUBLIC OF |0                  |NA             |  0.0124837| -0.0258560|  0.0493906|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE                     |0                  |NA             | -0.0124277| -0.0423597|  0.0166447|
