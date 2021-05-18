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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid        |country      |enstunt | ever_wasted| n_cell|     n|
|:---------------------------|:--------------|:------------|:-------|-----------:|------:|-----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |0       |           0|    166|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |0       |           1|    127|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |1       |           0|     36|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |1       |           1|     39|   368|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |0       |           0|    103|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |0       |           1|     63|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |1       |           0|     50|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |1       |           1|     52|   268|
|0-24 months (no birth wast) |COHORTS        |INDIA        |0       |           0|   5189|  7135|
|0-24 months (no birth wast) |COHORTS        |INDIA        |0       |           1|   1099|  7135|
|0-24 months (no birth wast) |COHORTS        |INDIA        |1       |           0|    636|  7135|
|0-24 months (no birth wast) |COHORTS        |INDIA        |1       |           1|    211|  7135|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA    |0       |           0|    910|  1332|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA    |0       |           1|    103|  1332|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA    |1       |           0|    263|  1332|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA    |1       |           1|     56|  1332|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES  |0       |           0|   2004|  3019|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES  |0       |           1|    841|  3019|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES  |1       |           0|     99|  3019|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES  |1       |           1|     75|  3019|
|0-24 months (no birth wast) |CONTENT        |PERU         |0       |           0|    192|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |0       |           1|      3|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |1       |           0|     19|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |1       |           1|      1|   215|
|0-24 months (no birth wast) |EE             |PAKISTAN     |0       |           0|    111|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |0       |           1|    100|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |1       |           0|     63|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |1       |           1|    103|   377|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |0       |           0|    275|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |0       |           1|    278|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |1       |           0|     54|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |1       |           1|     53|   660|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |0       |           0|    224|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |0       |           1|     15|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |1       |           0|     63|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |1       |           1|     11|   313|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |0       |           0|   2279|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |0       |           1|    167|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |1       |           0|    549|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |1       |           1|     96|  3091|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |0       |           0|  15104| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |0       |           1|   2981| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |1       |           0|   6931| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |1       |           1|   1513| 26529|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |0       |           0|   3000|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |0       |           1|    859|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |1       |           0|   1005|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |1       |           1|    532|  5396|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |0       |           0|   1697|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |0       |           1|    853|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |1       |           0|    198|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |1       |           1|    120|  2868|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |0       |           0|    512|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |0       |           1|     18|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |1       |           0|    269|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |1       |           1|     38|   837|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |0       |           0|    134|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |0       |           1|     72|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |1       |           0|     21|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |1       |           1|     19|   246|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |0       |           0|    174|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |0       |           1|     43|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |1       |           0|     31|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |1       |           1|     15|   263|
|0-24 months (no birth wast) |MAL-ED         |PERU         |0       |           0|    251|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |0       |           1|     15|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |1       |           0|     30|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |1       |           1|      6|   302|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |0       |           0|    173|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |0       |           1|     37|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |1       |           0|     20|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |1       |           1|      9|   239|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |0       |           0|    191|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |0       |           1|     11|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |1       |           0|     29|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |1       |           1|      2|   233|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |0       |           0|    193|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |0       |           1|     26|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |1       |           0|     34|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |1       |           1|      8|   261|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |0       |           0|    230|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |0       |           1|     40|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |1       |           0|     33|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |1       |           1|      5|   308|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |0       |           0|    360|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |0       |           1|    148|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |1       |           0|     64|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |1       |           1|     30|   602|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |0       |           0|    564|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |0       |           1|     85|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |1       |           0|     82|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |1       |           1|     23|   754|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |0       |           0|  15608| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |0       |           1|   1139| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |1       |           0|    123| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |1       |           1|      9| 16879|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |0       |           0|    523|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |0       |           1|     98|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |1       |           0|     42|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |1       |           1|     24|   687|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |0       |           0|    113|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |0       |           1|     86|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |1       |           0|     40|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |1       |           1|     41|   280|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |0       |           0|    720|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |0       |           1|    363|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |1       |           0|    239|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |1       |           1|    180|  1502|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |0       |           0|    171|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |0       |           1|     73|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |1       |           0|     83|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |1       |           1|     70|   397|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |0       |           0|   1796|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |0       |           1|    426|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |1       |           0|    114|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |1       |           1|     48|  2384|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |0       |           0|    176|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |0       |           1|    181|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |1       |           0|     20|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |1       |           1|     32|   409|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |0       |           0|  11033| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |0       |           1|   1210| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |1       |           0|   1213| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |1       |           1|    181| 13637|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |0       |           0|    192|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |0       |           1|     88|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |1       |           0|     50|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |1       |           1|     20|   350|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |0       |           0|    147|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |0       |           1|     19|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |1       |           0|     89|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |1       |           1|     12|   267|
|0-6 months (no birth wast)  |COHORTS        |INDIA        |0       |           0|   5292|  6510|
|0-6 months (no birth wast)  |COHORTS        |INDIA        |0       |           1|    494|  6510|
|0-6 months (no birth wast)  |COHORTS        |INDIA        |1       |           0|    684|  6510|
|0-6 months (no birth wast)  |COHORTS        |INDIA        |1       |           1|     40|  6510|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA    |0       |           0|    875|  1030|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA    |0       |           1|     17|  1030|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA    |1       |           0|    137|  1030|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA    |1       |           1|      1|  1030|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES  |0       |           0|   2553|  2998|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES  |0       |           1|    273|  2998|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES  |1       |           0|    161|  2998|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES  |1       |           1|     11|  2998|
|0-6 months (no birth wast)  |CONTENT        |PERU         |0       |           0|    192|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |0       |           1|      3|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |1       |           0|     20|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |1       |           1|      0|   215|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |0       |           0|    162|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |0       |           1|     48|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |1       |           0|    132|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |1       |           1|     33|   375|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |0       |           0|    426|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |0       |           1|    111|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |1       |           0|     93|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |1       |           1|     12|   642|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |0       |           0|    219|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |0       |           1|      4|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |1       |           0|     66|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |1       |           1|      1|   290|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |0       |           0|  16461| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |0       |           1|   1429| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |1       |           0|   7892| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |1       |           1|    452| 26234|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |0       |           0|   3465|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |0       |           1|    101|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |1       |           0|   1365|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |1       |           1|     26|  4957|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |0       |           0|   1947|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |0       |           1|    243|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |1       |           0|    206|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |1       |           1|     28|  2424|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |0       |           0|    171|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |0       |           1|      0|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |1       |           0|     97|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |1       |           1|      0|   268|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |0       |           0|    171|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |0       |           1|     34|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |1       |           0|     34|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |1       |           1|      5|   244|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |0       |           0|    202|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |0       |           1|     14|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |1       |           0|     41|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |1       |           1|      5|   262|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |0       |           0|    263|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |0       |           1|      3|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |1       |           0|     34|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |1       |           1|      2|   302|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |0       |           0|    196|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |0       |           1|     12|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |1       |           0|     25|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |1       |           1|      4|   237|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |0       |           0|    194|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |0       |           1|      8|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |1       |           0|     31|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |1       |           1|      0|   233|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |0       |           0|    210|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |0       |           1|      9|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |1       |           0|     41|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |1       |           1|      1|   261|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |0       |           0|    257|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |0       |           1|     12|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |1       |           0|     36|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |1       |           1|      2|   307|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |0       |           0|    459|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |0       |           1|     36|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |1       |           0|     79|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |1       |           1|     10|   584|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |0       |           0|    626|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |0       |           1|     19|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |1       |           0|    103|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |1       |           1|      1|   749|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |0       |           0|  15549| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |0       |           1|   1014| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |1       |           0|    122| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |1       |           1|      8| 16693|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |0       |           0|    587|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |0       |           1|     31|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |1       |           0|     59|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |1       |           1|      6|   683|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |0       |           0|    159|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |0       |           1|     39|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |1       |           0|     54|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |1       |           1|     24|   276|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |0       |           0|    935|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |0       |           1|    136|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |1       |           0|    353|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |1       |           1|     49|  1473|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |0       |           0|    211|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |0       |           1|      0|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |1       |           0|    130|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |1       |           1|      0|   341|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |0       |           0|   2026|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |0       |           1|    188|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |1       |           0|    146|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |1       |           1|     16|  2376|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |0       |           0|    222|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |0       |           1|    117|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |1       |           0|     35|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |1       |           1|     16|   390|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |0       |           0|  11666| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |0       |           1|    390| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |1       |           0|   1282| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |1       |           1|     38| 13376|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |0       |           0|    226|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |0       |           1|     70|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |1       |           0|     48|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |1       |           1|     29|   373|
|6-24 months                 |CMIN           |BANGLADESH   |0       |           0|    106|   252|
|6-24 months                 |CMIN           |BANGLADESH   |0       |           1|     52|   252|
|6-24 months                 |CMIN           |BANGLADESH   |1       |           0|     49|   252|
|6-24 months                 |CMIN           |BANGLADESH   |1       |           1|     45|   252|
|6-24 months                 |COHORTS        |INDIA        |0       |           0|   5434|  6941|
|6-24 months                 |COHORTS        |INDIA        |0       |           1|    667|  6941|
|6-24 months                 |COHORTS        |INDIA        |1       |           0|    656|  6941|
|6-24 months                 |COHORTS        |INDIA        |1       |           1|    184|  6941|
|6-24 months                 |COHORTS        |GUATEMALA    |0       |           0|    817|  1220|
|6-24 months                 |COHORTS        |GUATEMALA    |0       |           1|     93|  1220|
|6-24 months                 |COHORTS        |GUATEMALA    |1       |           0|    249|  1220|
|6-24 months                 |COHORTS        |GUATEMALA    |1       |           1|     61|  1220|
|6-24 months                 |COHORTS        |PHILIPPINES  |0       |           0|   1967|  2809|
|6-24 months                 |COHORTS        |PHILIPPINES  |0       |           1|    679|  2809|
|6-24 months                 |COHORTS        |PHILIPPINES  |1       |           0|     93|  2809|
|6-24 months                 |COHORTS        |PHILIPPINES  |1       |           1|     70|  2809|
|6-24 months                 |CONTENT        |PERU         |0       |           0|    194|   215|
|6-24 months                 |CONTENT        |PERU         |0       |           1|      1|   215|
|6-24 months                 |CONTENT        |PERU         |1       |           0|     19|   215|
|6-24 months                 |CONTENT        |PERU         |1       |           1|      1|   215|
|6-24 months                 |EE             |PAKISTAN     |0       |           0|    129|   374|
|6-24 months                 |EE             |PAKISTAN     |0       |           1|     80|   374|
|6-24 months                 |EE             |PAKISTAN     |1       |           0|     84|   374|
|6-24 months                 |EE             |PAKISTAN     |1       |           1|     81|   374|
|6-24 months                 |GMS-Nepal      |NEPAL        |0       |           0|    263|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |0       |           1|    231|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |1       |           0|     48|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |1       |           1|     48|   590|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |0       |           0|    198|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |0       |           1|     13|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |1       |           0|     56|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |1       |           1|     10|   277|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |0       |           0|   2090|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |0       |           1|    443|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |1       |           0|    419|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |1       |           1|    314|  3266|
|6-24 months                 |JiVitA-3       |BANGLADESH   |0       |           0|  10285| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |0       |           1|   1716| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |1       |           0|   4176| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |1       |           1|   1121| 17298|
|6-24 months                 |JiVitA-4       |BANGLADESH   |0       |           0|   3061|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |0       |           1|    815|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |1       |           0|   1026|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |1       |           1|    528|  5430|
|6-24 months                 |Keneba         |GAMBIA       |0       |           0|   1685|  2738|
|6-24 months                 |Keneba         |GAMBIA       |0       |           1|    745|  2738|
|6-24 months                 |Keneba         |GAMBIA       |1       |           0|    186|  2738|
|6-24 months                 |Keneba         |GAMBIA       |1       |           1|    122|  2738|
|6-24 months                 |LCNI-5         |MALAWI       |0       |           0|    497|   826|
|6-24 months                 |LCNI-5         |MALAWI       |0       |           1|     21|   826|
|6-24 months                 |LCNI-5         |MALAWI       |1       |           0|    265|   826|
|6-24 months                 |LCNI-5         |MALAWI       |1       |           1|     43|   826|
|6-24 months                 |MAL-ED         |INDIA        |0       |           0|    148|   235|
|6-24 months                 |MAL-ED         |INDIA        |0       |           1|     49|   235|
|6-24 months                 |MAL-ED         |INDIA        |1       |           0|     23|   235|
|6-24 months                 |MAL-ED         |INDIA        |1       |           1|     15|   235|
|6-24 months                 |MAL-ED         |BANGLADESH   |0       |           0|    168|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |0       |           1|     33|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |1       |           0|     29|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |1       |           1|     10|   240|
|6-24 months                 |MAL-ED         |PERU         |0       |           0|    223|   270|
|6-24 months                 |MAL-ED         |PERU         |0       |           1|     13|   270|
|6-24 months                 |MAL-ED         |PERU         |1       |           0|     29|   270|
|6-24 months                 |MAL-ED         |PERU         |1       |           1|      5|   270|
|6-24 months                 |MAL-ED         |NEPAL        |0       |           0|    179|   235|
|6-24 months                 |MAL-ED         |NEPAL        |0       |           1|     28|   235|
|6-24 months                 |MAL-ED         |NEPAL        |1       |           0|     20|   235|
|6-24 months                 |MAL-ED         |NEPAL        |1       |           1|      8|   235|
|6-24 months                 |MAL-ED         |BRAZIL       |0       |           0|    178|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |0       |           1|      4|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |1       |           0|     23|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |1       |           1|      2|   207|
|6-24 months                 |MAL-ED         |TANZANIA     |0       |           0|    185|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |0       |           1|     21|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |1       |           0|     32|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |1       |           1|      7|   245|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |0       |           0|    199|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |0       |           1|     32|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |1       |           0|     23|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |1       |           1|      5|   259|
|6-24 months                 |NIH-Birth      |BANGLADESH   |0       |           0|    326|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |0       |           1|    130|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |1       |           0|     57|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |1       |           1|     29|   542|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |0       |           0|    554|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |0       |           1|     73|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |1       |           0|     80|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |1       |           1|     23|   730|
|6-24 months                 |PROBIT         |BELARUS      |0       |           0|  16340| 16598|
|6-24 months                 |PROBIT         |BELARUS      |0       |           1|    138| 16598|
|6-24 months                 |PROBIT         |BELARUS      |1       |           0|    119| 16598|
|6-24 months                 |PROBIT         |BELARUS      |1       |           1|      1| 16598|
|6-24 months                 |PROVIDE        |BANGLADESH   |0       |           0|    475|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |0       |           1|     78|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |1       |           0|     41|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |1       |           1|     21|   615|
|6-24 months                 |ResPak         |PAKISTAN     |0       |           0|    107|   236|
|6-24 months                 |ResPak         |PAKISTAN     |0       |           1|     62|   236|
|6-24 months                 |ResPak         |PAKISTAN     |1       |           0|     43|   236|
|6-24 months                 |ResPak         |PAKISTAN     |1       |           1|     24|   236|
|6-24 months                 |SAS-CompFeed   |INDIA        |0       |           0|    730|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |0       |           1|    276|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |1       |           0|    234|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |1       |           1|    149|  1389|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |0       |           0|    171|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |0       |           1|     73|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |1       |           0|     88|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |1       |           1|     70|   402|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |0       |           0|   1593|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |0       |           1|    287|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |1       |           0|    101|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |1       |           1|     37|  2018|
|6-24 months                 |Vellore Crypto |INDIA        |0       |           0|    252|   410|
|6-24 months                 |Vellore Crypto |INDIA        |0       |           1|    106|   410|
|6-24 months                 |Vellore Crypto |INDIA        |1       |           0|     31|   410|
|6-24 months                 |Vellore Crypto |INDIA        |1       |           1|     21|   410|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |0       |           0|   8788| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |0       |           1|    883| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |1       |           0|    990| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |1       |           1|    154| 10815|


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
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA
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
* agecat: 0-6 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
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
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA
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
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


