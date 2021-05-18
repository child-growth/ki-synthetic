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

**Outcome Variable:** wasted

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

|agecat    |studyid        |country      |enstunt | wasted| n_cell|     n|
|:---------|:--------------|:------------|:-------|------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |0       |      0|     66|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |0       |      1|      8|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |1       |      0|      9|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |1       |      1|      3|    86|
|Birth     |CMIN           |BANGLADESH   |0       |      0|     14|    19|
|Birth     |CMIN           |BANGLADESH   |0       |      1|      3|    19|
|Birth     |CMIN           |BANGLADESH   |1       |      0|      1|    19|
|Birth     |CMIN           |BANGLADESH   |1       |      1|      1|    19|
|Birth     |COHORTS        |INDIA        |0       |      0|   4772|  6193|
|Birth     |COHORTS        |INDIA        |0       |      1|   1041|  6193|
|Birth     |COHORTS        |INDIA        |1       |      0|    325|  6193|
|Birth     |COHORTS        |INDIA        |1       |      1|     55|  6193|
|Birth     |COHORTS        |GUATEMALA    |0       |      0|    540|   756|
|Birth     |COHORTS        |GUATEMALA    |0       |      1|    192|   756|
|Birth     |COHORTS        |GUATEMALA    |1       |      0|     24|   756|
|Birth     |COHORTS        |GUATEMALA    |1       |      1|      0|   756|
|Birth     |COHORTS        |PHILIPPINES  |0       |      0|   2373|  2899|
|Birth     |COHORTS        |PHILIPPINES  |0       |      1|    440|  2899|
|Birth     |COHORTS        |PHILIPPINES  |1       |      0|     75|  2899|
|Birth     |COHORTS        |PHILIPPINES  |1       |      1|     11|  2899|
|Birth     |CONTENT        |PERU         |0       |      0|      2|     2|
|Birth     |CONTENT        |PERU         |0       |      1|      0|     2|
|Birth     |CONTENT        |PERU         |1       |      0|      0|     2|
|Birth     |CONTENT        |PERU         |1       |      1|      0|     2|
|Birth     |EE             |PAKISTAN     |0       |      0|    120|   177|
|Birth     |EE             |PAKISTAN     |0       |      1|     17|   177|
|Birth     |EE             |PAKISTAN     |1       |      0|     35|   177|
|Birth     |EE             |PAKISTAN     |1       |      1|      5|   177|
|Birth     |GMS-Nepal      |NEPAL        |0       |      0|    450|   641|
|Birth     |GMS-Nepal      |NEPAL        |0       |      1|    120|   641|
|Birth     |GMS-Nepal      |NEPAL        |1       |      0|     59|   641|
|Birth     |GMS-Nepal      |NEPAL        |1       |      1|     12|   641|
|Birth     |JiVitA-3       |BANGLADESH   |0       |      0|  13377| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |0       |      1|   1650| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |1       |      0|   2664| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |1       |      1|    323| 18014|
|Birth     |JiVitA-4       |BANGLADESH   |0       |      0|   1777|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |0       |      1|    186|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |1       |      0|    380|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |1       |      1|     53|  2396|
|Birth     |Keneba         |GAMBIA       |0       |      0|   1065|  1466|
|Birth     |Keneba         |GAMBIA       |0       |      1|    360|  1466|
|Birth     |Keneba         |GAMBIA       |1       |      0|     37|  1466|
|Birth     |Keneba         |GAMBIA       |1       |      1|      4|  1466|
|Birth     |MAL-ED         |INDIA        |0       |      0|     33|    45|
|Birth     |MAL-ED         |INDIA        |0       |      1|      4|    45|
|Birth     |MAL-ED         |INDIA        |1       |      0|      7|    45|
|Birth     |MAL-ED         |INDIA        |1       |      1|      1|    45|
|Birth     |MAL-ED         |BANGLADESH   |0       |      0|    155|   215|
|Birth     |MAL-ED         |BANGLADESH   |0       |      1|     32|   215|
|Birth     |MAL-ED         |BANGLADESH   |1       |      0|     24|   215|
|Birth     |MAL-ED         |BANGLADESH   |1       |      1|      4|   215|
|Birth     |MAL-ED         |PERU         |0       |      0|    202|   228|
|Birth     |MAL-ED         |PERU         |0       |      1|      5|   228|
|Birth     |MAL-ED         |PERU         |1       |      0|     21|   228|
|Birth     |MAL-ED         |PERU         |1       |      1|      0|   228|
|Birth     |MAL-ED         |NEPAL        |0       |      0|     24|    26|
|Birth     |MAL-ED         |NEPAL        |0       |      1|      1|    26|
|Birth     |MAL-ED         |NEPAL        |1       |      0|      0|    26|
|Birth     |MAL-ED         |NEPAL        |1       |      1|      1|    26|
|Birth     |MAL-ED         |BRAZIL       |0       |      0|     54|    62|
|Birth     |MAL-ED         |BRAZIL       |0       |      1|      2|    62|
|Birth     |MAL-ED         |BRAZIL       |1       |      0|      6|    62|
|Birth     |MAL-ED         |BRAZIL       |1       |      1|      0|    62|
|Birth     |MAL-ED         |TANZANIA     |0       |      0|    102|   115|
|Birth     |MAL-ED         |TANZANIA     |0       |      1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |1       |      0|     12|   115|
|Birth     |MAL-ED         |TANZANIA     |1       |      1|      1|   115|
|Birth     |MAL-ED         |SOUTH AFRICA |0       |      0|    100|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |0       |      1|     12|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |1       |      0|      8|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |1       |      1|      0|   120|
|Birth     |NIH-Birth      |BANGLADESH   |0       |      0|    360|   575|
|Birth     |NIH-Birth      |BANGLADESH   |0       |      1|    146|   575|
|Birth     |NIH-Birth      |BANGLADESH   |1       |      0|     47|   575|
|Birth     |NIH-Birth      |BANGLADESH   |1       |      1|     22|   575|
|Birth     |NIH-Crypto     |BANGLADESH   |0       |      0|    468|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |0       |      1|    157|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |1       |      0|     67|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |1       |      1|     15|   707|
|Birth     |PROBIT         |BELARUS      |0       |      0|  10884| 13817|
|Birth     |PROBIT         |BELARUS      |0       |      1|   2906| 13817|
|Birth     |PROBIT         |BELARUS      |1       |      0|     27| 13817|
|Birth     |PROBIT         |BELARUS      |1       |      1|      0| 13817|
|Birth     |PROVIDE        |BANGLADESH   |0       |      0|    386|   532|
|Birth     |PROVIDE        |BANGLADESH   |0       |      1|    105|   532|
|Birth     |PROVIDE        |BANGLADESH   |1       |      0|     29|   532|
|Birth     |PROVIDE        |BANGLADESH   |1       |      1|     12|   532|
|Birth     |ResPak         |PAKISTAN     |0       |      0|     26|    38|
|Birth     |ResPak         |PAKISTAN     |0       |      1|      2|    38|
|Birth     |ResPak         |PAKISTAN     |1       |      0|      8|    38|
|Birth     |ResPak         |PAKISTAN     |1       |      1|      2|    38|
|Birth     |SAS-CompFeed   |INDIA        |0       |      0|    806|  1103|
|Birth     |SAS-CompFeed   |INDIA        |0       |      1|     95|  1103|
|Birth     |SAS-CompFeed   |INDIA        |1       |      0|    179|  1103|
|Birth     |SAS-CompFeed   |INDIA        |1       |      1|     23|  1103|
|Birth     |Vellore Crypto |INDIA        |0       |      0|    228|   343|
|Birth     |Vellore Crypto |INDIA        |0       |      1|     90|   343|
|Birth     |Vellore Crypto |INDIA        |1       |      0|     23|   343|
|Birth     |Vellore Crypto |INDIA        |1       |      1|      2|   343|
|Birth     |ZVITAMBO       |ZIMBABWE     |0       |      0|  10252| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |0       |      1|   1975| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |1       |      0|    604| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |1       |      1|     86| 12917|
|6 months  |CMC-V-BCS-2002 |INDIA        |0       |      0|    258|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |0       |      1|     34|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |1       |      0|     64|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |1       |      1|     12|   368|
|6 months  |CMIN           |BANGLADESH   |0       |      0|    139|   243|
|6 months  |CMIN           |BANGLADESH   |0       |      1|     12|   243|
|6 months  |CMIN           |BANGLADESH   |1       |      0|     83|   243|
|6 months  |CMIN           |BANGLADESH   |1       |      1|      9|   243|
|6 months  |COHORTS        |INDIA        |0       |      0|   5333|  6850|
|6 months  |COHORTS        |INDIA        |0       |      1|    701|  6850|
|6 months  |COHORTS        |INDIA        |1       |      0|    652|  6850|
|6 months  |COHORTS        |INDIA        |1       |      1|    164|  6850|
|6 months  |COHORTS        |GUATEMALA    |0       |      0|    783|   963|
|6 months  |COHORTS        |GUATEMALA    |0       |      1|     26|   963|
|6 months  |COHORTS        |GUATEMALA    |1       |      0|    148|   963|
|6 months  |COHORTS        |GUATEMALA    |1       |      1|      6|   963|
|6 months  |COHORTS        |PHILIPPINES  |0       |      0|   2401|  2706|
|6 months  |COHORTS        |PHILIPPINES  |0       |      1|    148|  2706|
|6 months  |COHORTS        |PHILIPPINES  |1       |      0|    144|  2706|
|6 months  |COHORTS        |PHILIPPINES  |1       |      1|     13|  2706|
|6 months  |CONTENT        |PERU         |0       |      0|    195|   215|
|6 months  |CONTENT        |PERU         |0       |      1|      0|   215|
|6 months  |CONTENT        |PERU         |1       |      0|     20|   215|
|6 months  |CONTENT        |PERU         |1       |      1|      0|   215|
|6 months  |EE             |PAKISTAN     |0       |      0|    185|   375|
|6 months  |EE             |PAKISTAN     |0       |      1|     24|   375|
|6 months  |EE             |PAKISTAN     |1       |      0|    143|   375|
|6 months  |EE             |PAKISTAN     |1       |      1|     23|   375|
|6 months  |GMS-Nepal      |NEPAL        |0       |      0|    431|   564|
|6 months  |GMS-Nepal      |NEPAL        |0       |      1|     42|   564|
|6 months  |GMS-Nepal      |NEPAL        |1       |      0|     82|   564|
|6 months  |GMS-Nepal      |NEPAL        |1       |      1|      9|   564|
|6 months  |Guatemala BSC  |GUATEMALA    |0       |      0|    227|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |0       |      1|      1|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |1       |      0|     68|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |1       |      1|      3|   299|
|6 months  |JiVitA-3       |BANGLADESH   |0       |      0|  10788| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |0       |      1|    885| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |1       |      0|   4575| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |1       |      1|    536| 16784|
|6 months  |JiVitA-4       |BANGLADESH   |0       |      0|   3296|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |0       |      1|    177|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |1       |      0|   1262|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |1       |      1|     98|  4833|
|6 months  |Keneba         |GAMBIA       |0       |      0|   1785|  2089|
|6 months  |Keneba         |GAMBIA       |0       |      1|    108|  2089|
|6 months  |Keneba         |GAMBIA       |1       |      0|    183|  2089|
|6 months  |Keneba         |GAMBIA       |1       |      1|     13|  2089|
|6 months  |LCNI-5         |MALAWI       |0       |      0|    522|   839|
|6 months  |LCNI-5         |MALAWI       |0       |      1|      8|   839|
|6 months  |LCNI-5         |MALAWI       |1       |      0|    303|   839|
|6 months  |LCNI-5         |MALAWI       |1       |      1|      6|   839|
|6 months  |MAL-ED         |INDIA        |0       |      0|    182|   236|
|6 months  |MAL-ED         |INDIA        |0       |      1|     16|   236|
|6 months  |MAL-ED         |INDIA        |1       |      0|     35|   236|
|6 months  |MAL-ED         |INDIA        |1       |      1|      3|   236|
|6 months  |MAL-ED         |BANGLADESH   |0       |      0|    196|   241|
|6 months  |MAL-ED         |BANGLADESH   |0       |      1|      6|   241|
|6 months  |MAL-ED         |BANGLADESH   |1       |      0|     37|   241|
|6 months  |MAL-ED         |BANGLADESH   |1       |      1|      2|   241|
|6 months  |MAL-ED         |PERU         |0       |      0|    239|   273|
|6 months  |MAL-ED         |PERU         |0       |      1|      0|   273|
|6 months  |MAL-ED         |PERU         |1       |      0|     34|   273|
|6 months  |MAL-ED         |PERU         |1       |      1|      0|   273|
|6 months  |MAL-ED         |NEPAL        |0       |      0|    205|   236|
|6 months  |MAL-ED         |NEPAL        |0       |      1|      3|   236|
|6 months  |MAL-ED         |NEPAL        |1       |      0|     27|   236|
|6 months  |MAL-ED         |NEPAL        |1       |      1|      1|   236|
|6 months  |MAL-ED         |BRAZIL       |0       |      0|    183|   209|
|6 months  |MAL-ED         |BRAZIL       |0       |      1|      1|   209|
|6 months  |MAL-ED         |BRAZIL       |1       |      0|     25|   209|
|6 months  |MAL-ED         |BRAZIL       |1       |      1|      0|   209|
|6 months  |MAL-ED         |TANZANIA     |0       |      0|    207|   247|
|6 months  |MAL-ED         |TANZANIA     |0       |      1|      1|   247|
|6 months  |MAL-ED         |TANZANIA     |1       |      0|     39|   247|
|6 months  |MAL-ED         |TANZANIA     |1       |      1|      0|   247|
|6 months  |MAL-ED         |SOUTH AFRICA |0       |      0|    221|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |0       |      1|      6|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |1       |      0|     26|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |1       |      1|      1|   254|
|6 months  |NIH-Birth      |BANGLADESH   |0       |      0|    426|   537|
|6 months  |NIH-Birth      |BANGLADESH   |0       |      1|     26|   537|
|6 months  |NIH-Birth      |BANGLADESH   |1       |      0|     76|   537|
|6 months  |NIH-Birth      |BANGLADESH   |1       |      1|      9|   537|
|6 months  |NIH-Crypto     |BANGLADESH   |0       |      0|    597|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |0       |      1|     16|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |1       |      0|     97|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |1       |      1|      5|   715|
|6 months  |PROBIT         |BELARUS      |0       |      0|  15535| 15757|
|6 months  |PROBIT         |BELARUS      |0       |      1|    106| 15757|
|6 months  |PROBIT         |BELARUS      |1       |      0|    114| 15757|
|6 months  |PROBIT         |BELARUS      |1       |      1|      2| 15757|
|6 months  |PROVIDE        |BANGLADESH   |0       |      0|    523|   603|
|6 months  |PROVIDE        |BANGLADESH   |0       |      1|     19|   603|
|6 months  |PROVIDE        |BANGLADESH   |1       |      0|     55|   603|
|6 months  |PROVIDE        |BANGLADESH   |1       |      1|      6|   603|
|6 months  |ResPak         |PAKISTAN     |0       |      0|    160|   239|
|6 months  |ResPak         |PAKISTAN     |0       |      1|     13|   239|
|6 months  |ResPak         |PAKISTAN     |1       |      0|     53|   239|
|6 months  |ResPak         |PAKISTAN     |1       |      1|     13|   239|
|6 months  |SAS-CompFeed   |INDIA        |0       |      0|    868|  1334|
|6 months  |SAS-CompFeed   |INDIA        |0       |      1|    101|  1334|
|6 months  |SAS-CompFeed   |INDIA        |1       |      0|    300|  1334|
|6 months  |SAS-CompFeed   |INDIA        |1       |      1|     65|  1334|
|6 months  |SAS-FoodSuppl  |INDIA        |0       |      0|    196|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |0       |      1|     36|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |1       |      0|    115|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |1       |      1|     33|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |0       |      0|   1807|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |0       |      1|     83|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |1       |      0|    134|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |1       |      1|      4|  2028|
|6 months  |Vellore Crypto |INDIA        |0       |      0|    308|   408|
|6 months  |Vellore Crypto |INDIA        |0       |      1|     48|   408|
|6 months  |Vellore Crypto |INDIA        |1       |      0|     46|   408|
|6 months  |Vellore Crypto |INDIA        |1       |      1|      6|   408|
|6 months  |ZVITAMBO       |ZIMBABWE     |0       |      0|   7395|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |0       |      1|    237|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |1       |      0|    845|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |1       |      1|     28|  8505|
|24 months |CMC-V-BCS-2002 |INDIA        |0       |      0|    283|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |0       |      1|     12|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |1       |      0|     66|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |1       |      1|     11|   372|
|24 months |CMIN           |BANGLADESH   |0       |      0|    142|   243|
|24 months |CMIN           |BANGLADESH   |0       |      1|     11|   243|
|24 months |CMIN           |BANGLADESH   |1       |      0|     76|   243|
|24 months |CMIN           |BANGLADESH   |1       |      1|     14|   243|
|24 months |COHORTS        |INDIA        |0       |      0|   4267|  5291|
|24 months |COHORTS        |INDIA        |0       |      1|    387|  5291|
|24 months |COHORTS        |INDIA        |1       |      0|    539|  5291|
|24 months |COHORTS        |INDIA        |1       |      1|     98|  5291|
|24 months |COHORTS        |GUATEMALA    |0       |      0|    718|  1082|
|24 months |COHORTS        |GUATEMALA    |0       |      1|     25|  1082|
|24 months |COHORTS        |GUATEMALA    |1       |      0|    314|  1082|
|24 months |COHORTS        |GUATEMALA    |1       |      1|     25|  1082|
|24 months |COHORTS        |PHILIPPINES  |0       |      0|   2162|  2449|
|24 months |COHORTS        |PHILIPPINES  |0       |      1|    149|  2449|
|24 months |COHORTS        |PHILIPPINES  |1       |      0|    120|  2449|
|24 months |COHORTS        |PHILIPPINES  |1       |      1|     18|  2449|
|24 months |CONTENT        |PERU         |0       |      0|    146|   164|
|24 months |CONTENT        |PERU         |0       |      1|      1|   164|
|24 months |CONTENT        |PERU         |1       |      0|     17|   164|
|24 months |CONTENT        |PERU         |1       |      1|      0|   164|
|24 months |EE             |PAKISTAN     |0       |      0|     90|   168|
|24 months |EE             |PAKISTAN     |0       |      1|     10|   168|
|24 months |EE             |PAKISTAN     |1       |      0|     48|   168|
|24 months |EE             |PAKISTAN     |1       |      1|     20|   168|
|24 months |GMS-Nepal      |NEPAL        |0       |      0|    334|   487|
|24 months |GMS-Nepal      |NEPAL        |0       |      1|     71|   487|
|24 months |GMS-Nepal      |NEPAL        |1       |      0|     62|   487|
|24 months |GMS-Nepal      |NEPAL        |1       |      1|     20|   487|
|24 months |JiVitA-3       |BANGLADESH   |0       |      0|   4815|  8603|
|24 months |JiVitA-3       |BANGLADESH   |0       |      1|   1099|  8603|
|24 months |JiVitA-3       |BANGLADESH   |1       |      0|   1910|  8603|
|24 months |JiVitA-3       |BANGLADESH   |1       |      1|    779|  8603|
|24 months |JiVitA-4       |BANGLADESH   |0       |      0|   2816|  4735|
|24 months |JiVitA-4       |BANGLADESH   |0       |      1|    564|  4735|
|24 months |JiVitA-4       |BANGLADESH   |1       |      0|    999|  4735|
|24 months |JiVitA-4       |BANGLADESH   |1       |      1|    356|  4735|
|24 months |Keneba         |GAMBIA       |0       |      0|   1392|  1726|
|24 months |Keneba         |GAMBIA       |0       |      1|    158|  1726|
|24 months |Keneba         |GAMBIA       |1       |      0|    143|  1726|
|24 months |Keneba         |GAMBIA       |1       |      1|     33|  1726|
|24 months |LCNI-5         |MALAWI       |0       |      0|    361|   563|
|24 months |LCNI-5         |MALAWI       |0       |      1|      4|   563|
|24 months |LCNI-5         |MALAWI       |1       |      0|    192|   563|
|24 months |LCNI-5         |MALAWI       |1       |      1|      6|   563|
|24 months |MAL-ED         |INDIA        |0       |      0|    171|   227|
|24 months |MAL-ED         |INDIA        |0       |      1|     20|   227|
|24 months |MAL-ED         |INDIA        |1       |      0|     29|   227|
|24 months |MAL-ED         |INDIA        |1       |      1|      7|   227|
|24 months |MAL-ED         |BANGLADESH   |0       |      0|    160|   212|
|24 months |MAL-ED         |BANGLADESH   |0       |      1|     19|   212|
|24 months |MAL-ED         |BANGLADESH   |1       |      0|     31|   212|
|24 months |MAL-ED         |BANGLADESH   |1       |      1|      2|   212|
|24 months |MAL-ED         |PERU         |0       |      0|    173|   201|
|24 months |MAL-ED         |PERU         |0       |      1|      1|   201|
|24 months |MAL-ED         |PERU         |1       |      0|     24|   201|
|24 months |MAL-ED         |PERU         |1       |      1|      3|   201|
|24 months |MAL-ED         |NEPAL        |0       |      0|    198|   228|
|24 months |MAL-ED         |NEPAL        |0       |      1|      3|   228|
|24 months |MAL-ED         |NEPAL        |1       |      0|     25|   228|
|24 months |MAL-ED         |NEPAL        |1       |      1|      2|   228|
|24 months |MAL-ED         |BRAZIL       |0       |      0|    147|   169|
|24 months |MAL-ED         |BRAZIL       |0       |      1|      3|   169|
|24 months |MAL-ED         |BRAZIL       |1       |      0|     19|   169|
|24 months |MAL-ED         |BRAZIL       |1       |      1|      0|   169|
|24 months |MAL-ED         |TANZANIA     |0       |      0|    178|   214|
|24 months |MAL-ED         |TANZANIA     |0       |      1|      3|   214|
|24 months |MAL-ED         |TANZANIA     |1       |      0|     32|   214|
|24 months |MAL-ED         |TANZANIA     |1       |      1|      1|   214|
|24 months |MAL-ED         |SOUTH AFRICA |0       |      0|    213|   238|
|24 months |MAL-ED         |SOUTH AFRICA |0       |      1|      1|   238|
|24 months |MAL-ED         |SOUTH AFRICA |1       |      0|     24|   238|
|24 months |MAL-ED         |SOUTH AFRICA |1       |      1|      0|   238|
|24 months |NIH-Birth      |BANGLADESH   |0       |      0|    311|   428|
|24 months |NIH-Birth      |BANGLADESH   |0       |      1|     43|   428|
|24 months |NIH-Birth      |BANGLADESH   |1       |      0|     64|   428|
|24 months |NIH-Birth      |BANGLADESH   |1       |      1|     10|   428|
|24 months |NIH-Crypto     |BANGLADESH   |0       |      0|    411|   514|
|24 months |NIH-Crypto     |BANGLADESH   |0       |      1|     33|   514|
|24 months |NIH-Crypto     |BANGLADESH   |1       |      0|     58|   514|
|24 months |NIH-Crypto     |BANGLADESH   |1       |      1|     12|   514|
|24 months |PROBIT         |BELARUS      |0       |      0|   3926|  3970|
|24 months |PROBIT         |BELARUS      |0       |      1|     31|  3970|
|24 months |PROBIT         |BELARUS      |1       |      0|     12|  3970|
|24 months |PROBIT         |BELARUS      |1       |      1|      1|  3970|
|24 months |PROVIDE        |BANGLADESH   |0       |      0|    469|   579|
|24 months |PROVIDE        |BANGLADESH   |0       |      1|     50|   579|
|24 months |PROVIDE        |BANGLADESH   |1       |      0|     48|   579|
|24 months |PROVIDE        |BANGLADESH   |1       |      1|     12|   579|
|24 months |TanzaniaChild2 |TANZANIA     |0       |      0|      6|     6|
|24 months |TanzaniaChild2 |TANZANIA     |0       |      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |1       |      0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |1       |      1|      0|     6|
|24 months |Vellore Crypto |INDIA        |0       |      0|    332|   409|
|24 months |Vellore Crypto |INDIA        |0       |      1|     26|   409|
|24 months |Vellore Crypto |INDIA        |1       |      0|     46|   409|
|24 months |Vellore Crypto |INDIA        |1       |      1|      5|   409|
|24 months |ZVITAMBO       |ZIMBABWE     |0       |      0|    272|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |0       |      1|     59|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |1       |      0|     82|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |1       |      1|     20|   433|


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


