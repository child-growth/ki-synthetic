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

**Intervention Variable:** enstunt

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid        |country      |enstunt | ever_swasted| n_cell|     n|
|:---------------------------|:--------------|:------------|:-------|------------:|------:|-----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |0       |            0|    249|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |0       |            1|     44|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |1       |            0|     64|   368|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |1       |            1|     11|   368|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |0       |            0|    149|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |0       |            1|     17|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |1       |            0|     82|   268|
|0-24 months (no birth wast) |CMIN           |BANGLADESH   |1       |            1|     20|   268|
|0-24 months (no birth wast) |COHORTS        |INDIA        |0       |            0|   6014|  7135|
|0-24 months (no birth wast) |COHORTS        |INDIA        |0       |            1|    274|  7135|
|0-24 months (no birth wast) |COHORTS        |INDIA        |1       |            0|    784|  7135|
|0-24 months (no birth wast) |COHORTS        |INDIA        |1       |            1|     63|  7135|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA    |0       |            0|   1003|  1332|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA    |0       |            1|     10|  1332|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA    |1       |            0|    302|  1332|
|0-24 months (no birth wast) |COHORTS        |GUATEMALA    |1       |            1|     17|  1332|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES  |0       |            0|   2617|  3019|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES  |0       |            1|    228|  3019|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES  |1       |            0|    153|  3019|
|0-24 months (no birth wast) |COHORTS        |PHILIPPINES  |1       |            1|     21|  3019|
|0-24 months (no birth wast) |CONTENT        |PERU         |0       |            0|    194|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |0       |            1|      1|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |1       |            0|     20|   215|
|0-24 months (no birth wast) |CONTENT        |PERU         |1       |            1|      0|   215|
|0-24 months (no birth wast) |EE             |PAKISTAN     |0       |            0|    183|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |0       |            1|     28|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |1       |            0|    128|   377|
|0-24 months (no birth wast) |EE             |PAKISTAN     |1       |            1|     38|   377|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |0       |            0|    441|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |0       |            1|    112|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |1       |            0|     88|   660|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |1       |            1|     19|   660|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |0       |            0|    239|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |0       |            1|      0|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |1       |            0|     72|   313|
|0-24 months (no birth wast) |Guatemala BSC  |GUATEMALA    |1       |            1|      2|   313|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |0       |            0|   2434|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |0       |            1|     12|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |1       |            0|    632|  3091|
|0-24 months (no birth wast) |iLiNS-Zinc     |BURKINA FASO |1       |            1|     13|  3091|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |0       |            0|  17486| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |0       |            1|    599| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |1       |            0|   8095| 26529|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |1       |            1|    349| 26529|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |0       |            0|   3727|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |0       |            1|    132|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |1       |            0|   1437|  5396|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |1       |            1|    100|  5396|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |0       |            0|   2218|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |0       |            1|    332|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |1       |            0|    267|  2868|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |1       |            1|     51|  2868|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |0       |            0|    527|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |0       |            1|      3|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |1       |            0|    303|   837|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |1       |            1|      4|   837|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |0       |            0|    197|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |0       |            1|      9|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |1       |            0|     36|   246|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |1       |            1|      4|   246|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |0       |            0|    207|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |0       |            1|     10|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |1       |            0|     44|   263|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |1       |            1|      2|   263|
|0-24 months (no birth wast) |MAL-ED         |PERU         |0       |            0|    262|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |0       |            1|      4|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |1       |            0|     36|   302|
|0-24 months (no birth wast) |MAL-ED         |PERU         |1       |            1|      0|   302|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |0       |            0|    209|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |0       |            1|      1|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |1       |            0|     27|   239|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |1       |            1|      2|   239|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |0       |            0|    198|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |0       |            1|      4|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |1       |            0|     31|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |1       |            1|      0|   233|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |0       |            0|    213|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |0       |            1|      6|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |1       |            0|     40|   261|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |1       |            1|      2|   261|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |0       |            0|    260|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |0       |            1|     10|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |1       |            0|     36|   308|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |1       |            1|      2|   308|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |0       |            0|    465|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |0       |            1|     43|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |1       |            0|     83|   602|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH   |1       |            1|     11|   602|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |0       |            0|    637|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |0       |            1|     12|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |1       |            0|     97|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH   |1       |            1|      8|   754|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |0       |            0|  16545| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |0       |            1|    202| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |1       |            0|    130| 16879|
|0-24 months (no birth wast) |PROBIT         |BELARUS      |1       |            1|      2| 16879|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |0       |            0|    606|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |0       |            1|     15|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |1       |            0|     62|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |1       |            1|      4|   687|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |0       |            0|    167|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |0       |            1|     32|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |1       |            0|     61|   280|
|0-24 months (no birth wast) |ResPak         |PAKISTAN     |1       |            1|     20|   280|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |0       |            0|    982|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |0       |            1|    101|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |1       |            0|    348|  1502|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |1       |            1|     71|  1502|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |0       |            0|    226|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |0       |            1|     18|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |1       |            0|    131|   397|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |1       |            1|     22|   397|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |0       |            0|   2117|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |0       |            1|    105|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |1       |            0|    146|  2384|
|0-24 months (no birth wast) |TanzaniaChild2 |TANZANIA     |1       |            1|     16|  2384|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |0       |            0|    288|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |0       |            1|     69|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |1       |            0|     44|   409|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |1       |            1|      8|   409|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |0       |            0|  11829| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |0       |            1|    414| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |1       |            0|   1330| 13637|
|0-24 months (no birth wast) |ZVITAMBO       |ZIMBABWE     |1       |            1|     64| 13637|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |0       |            0|    254|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |0       |            1|     26|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |1       |            0|     66|   350|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |1       |            1|      4|   350|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |0       |            0|    163|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |0       |            1|      3|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |1       |            0|     95|   267|
|0-6 months (no birth wast)  |CMIN           |BANGLADESH   |1       |            1|      6|   267|
|0-6 months (no birth wast)  |COHORTS        |INDIA        |0       |            0|   5681|  6510|
|0-6 months (no birth wast)  |COHORTS        |INDIA        |0       |            1|    105|  6510|
|0-6 months (no birth wast)  |COHORTS        |INDIA        |1       |            0|    711|  6510|
|0-6 months (no birth wast)  |COHORTS        |INDIA        |1       |            1|     13|  6510|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA    |0       |            0|    891|  1030|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA    |0       |            1|      1|  1030|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA    |1       |            0|    137|  1030|
|0-6 months (no birth wast)  |COHORTS        |GUATEMALA    |1       |            1|      1|  1030|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES  |0       |            0|   2763|  2998|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES  |0       |            1|     63|  2998|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES  |1       |            0|    169|  2998|
|0-6 months (no birth wast)  |COHORTS        |PHILIPPINES  |1       |            1|      3|  2998|
|0-6 months (no birth wast)  |CONTENT        |PERU         |0       |            0|    194|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |0       |            1|      1|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |1       |            0|     20|   215|
|0-6 months (no birth wast)  |CONTENT        |PERU         |1       |            1|      0|   215|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |0       |            0|    203|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |0       |            1|      7|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |1       |            0|    152|   375|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |1       |            1|     13|   375|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |0       |            0|    509|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |0       |            1|     28|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |1       |            0|    102|   642|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |1       |            1|      3|   642|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |0       |            0|    223|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |0       |            1|      0|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |1       |            0|     67|   290|
|0-6 months (no birth wast)  |Guatemala BSC  |GUATEMALA    |1       |            1|      0|   290|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |0       |            0|  17576| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |0       |            1|    314| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |1       |            0|   8223| 26234|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |1       |            1|    121| 26234|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |0       |            0|   3551|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |0       |            1|     15|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |1       |            0|   1385|  4957|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |1       |            1|      6|  4957|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |0       |            0|   2110|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |0       |            1|     80|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |1       |            0|    219|  2424|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |1       |            1|     15|  2424|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |0       |            0|    171|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |0       |            1|      0|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |1       |            0|     97|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |1       |            1|      0|   268|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |0       |            0|    198|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |0       |            1|      7|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |1       |            0|     39|   244|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |1       |            1|      0|   244|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |0       |            0|    209|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |0       |            1|      7|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |1       |            0|     46|   262|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |1       |            1|      0|   262|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |0       |            0|    265|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |0       |            1|      1|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |1       |            0|     36|   302|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |1       |            1|      0|   302|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |0       |            0|    208|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |0       |            1|      0|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |1       |            0|     28|   237|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |1       |            1|      1|   237|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |0       |            0|    199|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |0       |            1|      3|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |1       |            0|     31|   233|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |1       |            1|      0|   233|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |0       |            0|    217|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |0       |            1|      2|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |1       |            0|     41|   261|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |1       |            1|      1|   261|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |0       |            0|    267|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |0       |            1|      2|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |1       |            0|     37|   307|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |1       |            1|      1|   307|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |0       |            0|    486|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |0       |            1|      9|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |1       |            0|     89|   584|
|0-6 months (no birth wast)  |NIH-Birth      |BANGLADESH   |1       |            1|      0|   584|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |0       |            0|    644|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |0       |            1|      1|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |1       |            0|    104|   749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH   |1       |            1|      0|   749|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |0       |            0|  16373| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |0       |            1|    190| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |1       |            0|    128| 16693|
|0-6 months (no birth wast)  |PROBIT         |BELARUS      |1       |            1|      2| 16693|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |0       |            0|    613|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |0       |            1|      5|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |1       |            0|     64|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |1       |            1|      1|   683|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |0       |            0|    188|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |0       |            1|     10|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |1       |            0|     66|   276|
|0-6 months (no birth wast)  |ResPak         |PAKISTAN     |1       |            1|     12|   276|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |0       |            0|   1038|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |0       |            1|     33|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |1       |            0|    389|  1473|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |1       |            1|     13|  1473|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |0       |            0|    211|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |0       |            1|      0|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |1       |            0|    130|   341|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |1       |            1|      0|   341|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |0       |            0|   2176|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |0       |            1|     38|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |1       |            0|    158|  2376|
|0-6 months (no birth wast)  |TanzaniaChild2 |TANZANIA     |1       |            1|      4|  2376|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |0       |            0|    285|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |0       |            1|     54|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |1       |            0|     48|   390|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |1       |            1|      3|   390|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |0       |            0|  11935| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |0       |            1|    121| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |1       |            0|   1309| 13376|
|0-6 months (no birth wast)  |ZVITAMBO       |ZIMBABWE     |1       |            1|     11| 13376|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |0       |            0|    275|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |0       |            1|     21|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |1       |            0|     68|   373|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |1       |            1|      9|   373|
|6-24 months                 |CMIN           |BANGLADESH   |0       |            0|    144|   252|
|6-24 months                 |CMIN           |BANGLADESH   |0       |            1|     14|   252|
|6-24 months                 |CMIN           |BANGLADESH   |1       |            0|     79|   252|
|6-24 months                 |CMIN           |BANGLADESH   |1       |            1|     15|   252|
|6-24 months                 |COHORTS        |INDIA        |0       |            0|   5910|  6941|
|6-24 months                 |COHORTS        |INDIA        |0       |            1|    191|  6941|
|6-24 months                 |COHORTS        |INDIA        |1       |            0|    776|  6941|
|6-24 months                 |COHORTS        |INDIA        |1       |            1|     64|  6941|
|6-24 months                 |COHORTS        |GUATEMALA    |0       |            0|    898|  1220|
|6-24 months                 |COHORTS        |GUATEMALA    |0       |            1|     12|  1220|
|6-24 months                 |COHORTS        |GUATEMALA    |1       |            0|    292|  1220|
|6-24 months                 |COHORTS        |GUATEMALA    |1       |            1|     18|  1220|
|6-24 months                 |COHORTS        |PHILIPPINES  |0       |            0|   2476|  2809|
|6-24 months                 |COHORTS        |PHILIPPINES  |0       |            1|    170|  2809|
|6-24 months                 |COHORTS        |PHILIPPINES  |1       |            0|    145|  2809|
|6-24 months                 |COHORTS        |PHILIPPINES  |1       |            1|     18|  2809|
|6-24 months                 |CONTENT        |PERU         |0       |            0|    195|   215|
|6-24 months                 |CONTENT        |PERU         |0       |            1|      0|   215|
|6-24 months                 |CONTENT        |PERU         |1       |            0|     20|   215|
|6-24 months                 |CONTENT        |PERU         |1       |            1|      0|   215|
|6-24 months                 |EE             |PAKISTAN     |0       |            0|    185|   374|
|6-24 months                 |EE             |PAKISTAN     |0       |            1|     24|   374|
|6-24 months                 |EE             |PAKISTAN     |1       |            0|    138|   374|
|6-24 months                 |EE             |PAKISTAN     |1       |            1|     27|   374|
|6-24 months                 |GMS-Nepal      |NEPAL        |0       |            0|    400|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |0       |            1|     94|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |1       |            0|     78|   590|
|6-24 months                 |GMS-Nepal      |NEPAL        |1       |            1|     18|   590|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |0       |            0|    211|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |0       |            1|      0|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |1       |            0|     64|   277|
|6-24 months                 |Guatemala BSC  |GUATEMALA    |1       |            1|      2|   277|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |0       |            0|   2464|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |0       |            1|     69|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |1       |            0|    637|  3266|
|6-24 months                 |iLiNS-Zinc     |BURKINA FASO |1       |            1|     96|  3266|
|6-24 months                 |JiVitA-3       |BANGLADESH   |0       |            0|  11690| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |0       |            1|    311| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |1       |            0|   5055| 17298|
|6-24 months                 |JiVitA-3       |BANGLADESH   |1       |            1|    242| 17298|
|6-24 months                 |JiVitA-4       |BANGLADESH   |0       |            0|   3744|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |0       |            1|    132|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |1       |            0|   1447|  5430|
|6-24 months                 |JiVitA-4       |BANGLADESH   |1       |            1|    107|  5430|
|6-24 months                 |Keneba         |GAMBIA       |0       |            0|   2156|  2738|
|6-24 months                 |Keneba         |GAMBIA       |0       |            1|    274|  2738|
|6-24 months                 |Keneba         |GAMBIA       |1       |            0|    261|  2738|
|6-24 months                 |Keneba         |GAMBIA       |1       |            1|     47|  2738|
|6-24 months                 |LCNI-5         |MALAWI       |0       |            0|    515|   826|
|6-24 months                 |LCNI-5         |MALAWI       |0       |            1|      3|   826|
|6-24 months                 |LCNI-5         |MALAWI       |1       |            0|    303|   826|
|6-24 months                 |LCNI-5         |MALAWI       |1       |            1|      5|   826|
|6-24 months                 |MAL-ED         |INDIA        |0       |            0|    195|   235|
|6-24 months                 |MAL-ED         |INDIA        |0       |            1|      2|   235|
|6-24 months                 |MAL-ED         |INDIA        |1       |            0|     34|   235|
|6-24 months                 |MAL-ED         |INDIA        |1       |            1|      4|   235|
|6-24 months                 |MAL-ED         |BANGLADESH   |0       |            0|    198|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |0       |            1|      3|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |1       |            0|     37|   240|
|6-24 months                 |MAL-ED         |BANGLADESH   |1       |            1|      2|   240|
|6-24 months                 |MAL-ED         |PERU         |0       |            0|    233|   270|
|6-24 months                 |MAL-ED         |PERU         |0       |            1|      3|   270|
|6-24 months                 |MAL-ED         |PERU         |1       |            0|     34|   270|
|6-24 months                 |MAL-ED         |PERU         |1       |            1|      0|   270|
|6-24 months                 |MAL-ED         |NEPAL        |0       |            0|    206|   235|
|6-24 months                 |MAL-ED         |NEPAL        |0       |            1|      1|   235|
|6-24 months                 |MAL-ED         |NEPAL        |1       |            0|     27|   235|
|6-24 months                 |MAL-ED         |NEPAL        |1       |            1|      1|   235|
|6-24 months                 |MAL-ED         |BRAZIL       |0       |            0|    181|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |0       |            1|      1|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |1       |            0|     25|   207|
|6-24 months                 |MAL-ED         |BRAZIL       |1       |            1|      0|   207|
|6-24 months                 |MAL-ED         |TANZANIA     |0       |            0|    202|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |0       |            1|      4|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |1       |            0|     38|   245|
|6-24 months                 |MAL-ED         |TANZANIA     |1       |            1|      1|   245|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |0       |            0|    222|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |0       |            1|      9|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |1       |            0|     27|   259|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |1       |            1|      1|   259|
|6-24 months                 |NIH-Birth      |BANGLADESH   |0       |            0|    419|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |0       |            1|     37|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |1       |            0|     75|   542|
|6-24 months                 |NIH-Birth      |BANGLADESH   |1       |            1|     11|   542|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |0       |            0|    615|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |0       |            1|     12|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |1       |            0|     95|   730|
|6-24 months                 |NIH-Crypto     |BANGLADESH   |1       |            1|      8|   730|
|6-24 months                 |PROBIT         |BELARUS      |0       |            0|  16466| 16598|
|6-24 months                 |PROBIT         |BELARUS      |0       |            1|     12| 16598|
|6-24 months                 |PROBIT         |BELARUS      |1       |            0|    120| 16598|
|6-24 months                 |PROBIT         |BELARUS      |1       |            1|      0| 16598|
|6-24 months                 |PROVIDE        |BANGLADESH   |0       |            0|    543|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |0       |            1|     10|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |1       |            0|     59|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |1       |            1|      3|   615|
|6-24 months                 |ResPak         |PAKISTAN     |0       |            0|    147|   236|
|6-24 months                 |ResPak         |PAKISTAN     |0       |            1|     22|   236|
|6-24 months                 |ResPak         |PAKISTAN     |1       |            0|     56|   236|
|6-24 months                 |ResPak         |PAKISTAN     |1       |            1|     11|   236|
|6-24 months                 |SAS-CompFeed   |INDIA        |0       |            0|    933|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |0       |            1|     73|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |1       |            0|    322|  1389|
|6-24 months                 |SAS-CompFeed   |INDIA        |1       |            1|     61|  1389|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |0       |            0|    219|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |0       |            1|     25|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |1       |            0|    132|   402|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |1       |            1|     26|   402|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |0       |            0|   1810|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |0       |            1|     70|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |1       |            0|    125|  2018|
|6-24 months                 |TanzaniaChild2 |TANZANIA     |1       |            1|     13|  2018|
|6-24 months                 |Vellore Crypto |INDIA        |0       |            0|    338|   410|
|6-24 months                 |Vellore Crypto |INDIA        |0       |            1|     20|   410|
|6-24 months                 |Vellore Crypto |INDIA        |1       |            0|     46|   410|
|6-24 months                 |Vellore Crypto |INDIA        |1       |            1|      6|   410|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |0       |            0|   9371| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |0       |            1|    300| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |1       |            0|   1088| 10815|
|6-24 months                 |ZVITAMBO       |ZIMBABWE     |1       |            1|     56| 10815|


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
* agecat: 0-24 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
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
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


