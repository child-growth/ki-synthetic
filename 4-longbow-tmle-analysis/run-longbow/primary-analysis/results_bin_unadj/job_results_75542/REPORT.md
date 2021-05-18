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

**Outcome Variable:** swasted

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

|agecat    |studyid        |country      |enstunt | swasted| n_cell|     n|
|:---------|:--------------|:------------|:-------|-------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |0       |       0|     74|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |0       |       1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |1       |       0|     11|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |1       |       1|      1|    86|
|Birth     |CMIN           |BANGLADESH   |0       |       0|     16|    19|
|Birth     |CMIN           |BANGLADESH   |0       |       1|      1|    19|
|Birth     |CMIN           |BANGLADESH   |1       |       0|      2|    19|
|Birth     |CMIN           |BANGLADESH   |1       |       1|      0|    19|
|Birth     |COHORTS        |INDIA        |0       |       0|   5514|  6193|
|Birth     |COHORTS        |INDIA        |0       |       1|    299|  6193|
|Birth     |COHORTS        |INDIA        |1       |       0|    359|  6193|
|Birth     |COHORTS        |INDIA        |1       |       1|     21|  6193|
|Birth     |COHORTS        |GUATEMALA    |0       |       0|    672|   756|
|Birth     |COHORTS        |GUATEMALA    |0       |       1|     60|   756|
|Birth     |COHORTS        |GUATEMALA    |1       |       0|     24|   756|
|Birth     |COHORTS        |GUATEMALA    |1       |       1|      0|   756|
|Birth     |COHORTS        |PHILIPPINES  |0       |       0|   2695|  2899|
|Birth     |COHORTS        |PHILIPPINES  |0       |       1|    118|  2899|
|Birth     |COHORTS        |PHILIPPINES  |1       |       0|     83|  2899|
|Birth     |COHORTS        |PHILIPPINES  |1       |       1|      3|  2899|
|Birth     |CONTENT        |PERU         |0       |       0|      2|     2|
|Birth     |CONTENT        |PERU         |0       |       1|      0|     2|
|Birth     |CONTENT        |PERU         |1       |       0|      0|     2|
|Birth     |CONTENT        |PERU         |1       |       1|      0|     2|
|Birth     |EE             |PAKISTAN     |0       |       0|    131|   177|
|Birth     |EE             |PAKISTAN     |0       |       1|      6|   177|
|Birth     |EE             |PAKISTAN     |1       |       0|     40|   177|
|Birth     |EE             |PAKISTAN     |1       |       1|      0|   177|
|Birth     |GMS-Nepal      |NEPAL        |0       |       0|    545|   641|
|Birth     |GMS-Nepal      |NEPAL        |0       |       1|     25|   641|
|Birth     |GMS-Nepal      |NEPAL        |1       |       0|     69|   641|
|Birth     |GMS-Nepal      |NEPAL        |1       |       1|      2|   641|
|Birth     |JiVitA-3       |BANGLADESH   |0       |       0|  14737| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |0       |       1|    290| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |1       |       0|   2928| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |1       |       1|     59| 18014|
|Birth     |JiVitA-4       |BANGLADESH   |0       |       0|   1939|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |0       |       1|     24|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |1       |       0|    426|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |1       |       1|      7|  2396|
|Birth     |Keneba         |GAMBIA       |0       |       0|   1322|  1466|
|Birth     |Keneba         |GAMBIA       |0       |       1|    103|  1466|
|Birth     |Keneba         |GAMBIA       |1       |       0|     41|  1466|
|Birth     |Keneba         |GAMBIA       |1       |       1|      0|  1466|
|Birth     |MAL-ED         |INDIA        |0       |       0|     37|    45|
|Birth     |MAL-ED         |INDIA        |0       |       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |1       |       0|      8|    45|
|Birth     |MAL-ED         |INDIA        |1       |       1|      0|    45|
|Birth     |MAL-ED         |BANGLADESH   |0       |       0|    179|   215|
|Birth     |MAL-ED         |BANGLADESH   |0       |       1|      8|   215|
|Birth     |MAL-ED         |BANGLADESH   |1       |       0|     28|   215|
|Birth     |MAL-ED         |BANGLADESH   |1       |       1|      0|   215|
|Birth     |MAL-ED         |PERU         |0       |       0|    207|   228|
|Birth     |MAL-ED         |PERU         |0       |       1|      0|   228|
|Birth     |MAL-ED         |PERU         |1       |       0|     21|   228|
|Birth     |MAL-ED         |PERU         |1       |       1|      0|   228|
|Birth     |MAL-ED         |NEPAL        |0       |       0|     24|    26|
|Birth     |MAL-ED         |NEPAL        |0       |       1|      1|    26|
|Birth     |MAL-ED         |NEPAL        |1       |       0|      1|    26|
|Birth     |MAL-ED         |NEPAL        |1       |       1|      0|    26|
|Birth     |MAL-ED         |BRAZIL       |0       |       0|     56|    62|
|Birth     |MAL-ED         |BRAZIL       |0       |       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |1       |       0|      6|    62|
|Birth     |MAL-ED         |BRAZIL       |1       |       1|      0|    62|
|Birth     |MAL-ED         |TANZANIA     |0       |       0|    102|   115|
|Birth     |MAL-ED         |TANZANIA     |0       |       1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |1       |       0|     13|   115|
|Birth     |MAL-ED         |TANZANIA     |1       |       1|      0|   115|
|Birth     |MAL-ED         |SOUTH AFRICA |0       |       0|    112|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |0       |       1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |1       |       0|      8|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |1       |       1|      0|   120|
|Birth     |NIH-Birth      |BANGLADESH   |0       |       0|    475|   575|
|Birth     |NIH-Birth      |BANGLADESH   |0       |       1|     31|   575|
|Birth     |NIH-Birth      |BANGLADESH   |1       |       0|     62|   575|
|Birth     |NIH-Birth      |BANGLADESH   |1       |       1|      7|   575|
|Birth     |NIH-Crypto     |BANGLADESH   |0       |       0|    579|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |0       |       1|     46|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |1       |       0|     81|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |1       |       1|      1|   707|
|Birth     |PROBIT         |BELARUS      |0       |       0|  12871| 13817|
|Birth     |PROBIT         |BELARUS      |0       |       1|    919| 13817|
|Birth     |PROBIT         |BELARUS      |1       |       0|     27| 13817|
|Birth     |PROBIT         |BELARUS      |1       |       1|      0| 13817|
|Birth     |PROVIDE        |BANGLADESH   |0       |       0|    478|   532|
|Birth     |PROVIDE        |BANGLADESH   |0       |       1|     13|   532|
|Birth     |PROVIDE        |BANGLADESH   |1       |       0|     41|   532|
|Birth     |PROVIDE        |BANGLADESH   |1       |       1|      0|   532|
|Birth     |ResPak         |PAKISTAN     |0       |       0|     28|    38|
|Birth     |ResPak         |PAKISTAN     |0       |       1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |1       |       0|     10|    38|
|Birth     |ResPak         |PAKISTAN     |1       |       1|      0|    38|
|Birth     |SAS-CompFeed   |INDIA        |0       |       0|    878|  1103|
|Birth     |SAS-CompFeed   |INDIA        |0       |       1|     23|  1103|
|Birth     |SAS-CompFeed   |INDIA        |1       |       0|    196|  1103|
|Birth     |SAS-CompFeed   |INDIA        |1       |       1|      6|  1103|
|Birth     |Vellore Crypto |INDIA        |0       |       0|    265|   343|
|Birth     |Vellore Crypto |INDIA        |0       |       1|     53|   343|
|Birth     |Vellore Crypto |INDIA        |1       |       0|     24|   343|
|Birth     |Vellore Crypto |INDIA        |1       |       1|      1|   343|
|Birth     |ZVITAMBO       |ZIMBABWE     |0       |       0|  11474| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |0       |       1|    753| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |1       |       0|    651| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |1       |       1|     39| 12917|
|6 months  |CMC-V-BCS-2002 |INDIA        |0       |       0|    281|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |0       |       1|     11|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |1       |       0|     75|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |1       |       1|      1|   368|
|6 months  |CMIN           |BANGLADESH   |0       |       0|    149|   243|
|6 months  |CMIN           |BANGLADESH   |0       |       1|      2|   243|
|6 months  |CMIN           |BANGLADESH   |1       |       0|     89|   243|
|6 months  |CMIN           |BANGLADESH   |1       |       1|      3|   243|
|6 months  |COHORTS        |INDIA        |0       |       0|   5869|  6850|
|6 months  |COHORTS        |INDIA        |0       |       1|    165|  6850|
|6 months  |COHORTS        |INDIA        |1       |       0|    764|  6850|
|6 months  |COHORTS        |INDIA        |1       |       1|     52|  6850|
|6 months  |COHORTS        |GUATEMALA    |0       |       0|    805|   963|
|6 months  |COHORTS        |GUATEMALA    |0       |       1|      4|   963|
|6 months  |COHORTS        |GUATEMALA    |1       |       0|    152|   963|
|6 months  |COHORTS        |GUATEMALA    |1       |       1|      2|   963|
|6 months  |COHORTS        |PHILIPPINES  |0       |       0|   2518|  2706|
|6 months  |COHORTS        |PHILIPPINES  |0       |       1|     31|  2706|
|6 months  |COHORTS        |PHILIPPINES  |1       |       0|    153|  2706|
|6 months  |COHORTS        |PHILIPPINES  |1       |       1|      4|  2706|
|6 months  |CONTENT        |PERU         |0       |       0|    195|   215|
|6 months  |CONTENT        |PERU         |0       |       1|      0|   215|
|6 months  |CONTENT        |PERU         |1       |       0|     20|   215|
|6 months  |CONTENT        |PERU         |1       |       1|      0|   215|
|6 months  |EE             |PAKISTAN     |0       |       0|    205|   375|
|6 months  |EE             |PAKISTAN     |0       |       1|      4|   375|
|6 months  |EE             |PAKISTAN     |1       |       0|    157|   375|
|6 months  |EE             |PAKISTAN     |1       |       1|      9|   375|
|6 months  |GMS-Nepal      |NEPAL        |0       |       0|    468|   564|
|6 months  |GMS-Nepal      |NEPAL        |0       |       1|      5|   564|
|6 months  |GMS-Nepal      |NEPAL        |1       |       0|     89|   564|
|6 months  |GMS-Nepal      |NEPAL        |1       |       1|      2|   564|
|6 months  |Guatemala BSC  |GUATEMALA    |0       |       0|    228|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |0       |       1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |1       |       0|     71|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |1       |       1|      0|   299|
|6 months  |JiVitA-3       |BANGLADESH   |0       |       0|  11527| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |0       |       1|    146| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |1       |       0|   5027| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |1       |       1|     84| 16784|
|6 months  |JiVitA-4       |BANGLADESH   |0       |       0|   3451|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |0       |       1|     22|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |1       |       0|   1349|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |1       |       1|     11|  4833|
|6 months  |Keneba         |GAMBIA       |0       |       0|   1865|  2089|
|6 months  |Keneba         |GAMBIA       |0       |       1|     28|  2089|
|6 months  |Keneba         |GAMBIA       |1       |       0|    190|  2089|
|6 months  |Keneba         |GAMBIA       |1       |       1|      6|  2089|
|6 months  |LCNI-5         |MALAWI       |0       |       0|    530|   839|
|6 months  |LCNI-5         |MALAWI       |0       |       1|      0|   839|
|6 months  |LCNI-5         |MALAWI       |1       |       0|    309|   839|
|6 months  |LCNI-5         |MALAWI       |1       |       1|      0|   839|
|6 months  |MAL-ED         |INDIA        |0       |       0|    193|   236|
|6 months  |MAL-ED         |INDIA        |0       |       1|      5|   236|
|6 months  |MAL-ED         |INDIA        |1       |       0|     37|   236|
|6 months  |MAL-ED         |INDIA        |1       |       1|      1|   236|
|6 months  |MAL-ED         |BANGLADESH   |0       |       0|    200|   241|
|6 months  |MAL-ED         |BANGLADESH   |0       |       1|      2|   241|
|6 months  |MAL-ED         |BANGLADESH   |1       |       0|     39|   241|
|6 months  |MAL-ED         |BANGLADESH   |1       |       1|      0|   241|
|6 months  |MAL-ED         |PERU         |0       |       0|    239|   273|
|6 months  |MAL-ED         |PERU         |0       |       1|      0|   273|
|6 months  |MAL-ED         |PERU         |1       |       0|     34|   273|
|6 months  |MAL-ED         |PERU         |1       |       1|      0|   273|
|6 months  |MAL-ED         |NEPAL        |0       |       0|    208|   236|
|6 months  |MAL-ED         |NEPAL        |0       |       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |1       |       0|     28|   236|
|6 months  |MAL-ED         |NEPAL        |1       |       1|      0|   236|
|6 months  |MAL-ED         |BRAZIL       |0       |       0|    184|   209|
|6 months  |MAL-ED         |BRAZIL       |0       |       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |1       |       0|     25|   209|
|6 months  |MAL-ED         |BRAZIL       |1       |       1|      0|   209|
|6 months  |MAL-ED         |TANZANIA     |0       |       0|    208|   247|
|6 months  |MAL-ED         |TANZANIA     |0       |       1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |1       |       0|     39|   247|
|6 months  |MAL-ED         |TANZANIA     |1       |       1|      0|   247|
|6 months  |MAL-ED         |SOUTH AFRICA |0       |       0|    224|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |0       |       1|      3|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |1       |       0|     27|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |1       |       1|      0|   254|
|6 months  |NIH-Birth      |BANGLADESH   |0       |       0|    447|   537|
|6 months  |NIH-Birth      |BANGLADESH   |0       |       1|      5|   537|
|6 months  |NIH-Birth      |BANGLADESH   |1       |       0|     84|   537|
|6 months  |NIH-Birth      |BANGLADESH   |1       |       1|      1|   537|
|6 months  |NIH-Crypto     |BANGLADESH   |0       |       0|    613|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |0       |       1|      0|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |1       |       0|    102|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |1       |       1|      0|   715|
|6 months  |PROBIT         |BELARUS      |0       |       0|  15632| 15757|
|6 months  |PROBIT         |BELARUS      |0       |       1|      9| 15757|
|6 months  |PROBIT         |BELARUS      |1       |       0|    116| 15757|
|6 months  |PROBIT         |BELARUS      |1       |       1|      0| 15757|
|6 months  |PROVIDE        |BANGLADESH   |0       |       0|    538|   603|
|6 months  |PROVIDE        |BANGLADESH   |0       |       1|      4|   603|
|6 months  |PROVIDE        |BANGLADESH   |1       |       0|     60|   603|
|6 months  |PROVIDE        |BANGLADESH   |1       |       1|      1|   603|
|6 months  |ResPak         |PAKISTAN     |0       |       0|    171|   239|
|6 months  |ResPak         |PAKISTAN     |0       |       1|      2|   239|
|6 months  |ResPak         |PAKISTAN     |1       |       0|     59|   239|
|6 months  |ResPak         |PAKISTAN     |1       |       1|      7|   239|
|6 months  |SAS-CompFeed   |INDIA        |0       |       0|    943|  1334|
|6 months  |SAS-CompFeed   |INDIA        |0       |       1|     26|  1334|
|6 months  |SAS-CompFeed   |INDIA        |1       |       0|    348|  1334|
|6 months  |SAS-CompFeed   |INDIA        |1       |       1|     17|  1334|
|6 months  |SAS-FoodSuppl  |INDIA        |0       |       0|    222|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |0       |       1|     10|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |1       |       0|    139|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |1       |       1|      9|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |0       |       0|   1879|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |0       |       1|     11|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |1       |       0|    137|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |1       |       1|      1|  2028|
|6 months  |Vellore Crypto |INDIA        |0       |       0|    336|   408|
|6 months  |Vellore Crypto |INDIA        |0       |       1|     20|   408|
|6 months  |Vellore Crypto |INDIA        |1       |       0|     50|   408|
|6 months  |Vellore Crypto |INDIA        |1       |       1|      2|   408|
|6 months  |ZVITAMBO       |ZIMBABWE     |0       |       0|   7559|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |0       |       1|     73|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |1       |       0|    867|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |1       |       1|      6|  8505|
|24 months |CMC-V-BCS-2002 |INDIA        |0       |       0|    293|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |0       |       1|      2|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |1       |       0|     76|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |1       |       1|      1|   372|
|24 months |CMIN           |BANGLADESH   |0       |       0|    152|   243|
|24 months |CMIN           |BANGLADESH   |0       |       1|      1|   243|
|24 months |CMIN           |BANGLADESH   |1       |       0|     89|   243|
|24 months |CMIN           |BANGLADESH   |1       |       1|      1|   243|
|24 months |COHORTS        |INDIA        |0       |       0|   4608|  5291|
|24 months |COHORTS        |INDIA        |0       |       1|     46|  5291|
|24 months |COHORTS        |INDIA        |1       |       0|    627|  5291|
|24 months |COHORTS        |INDIA        |1       |       1|     10|  5291|
|24 months |COHORTS        |GUATEMALA    |0       |       0|    740|  1082|
|24 months |COHORTS        |GUATEMALA    |0       |       1|      3|  1082|
|24 months |COHORTS        |GUATEMALA    |1       |       0|    338|  1082|
|24 months |COHORTS        |GUATEMALA    |1       |       1|      1|  1082|
|24 months |COHORTS        |PHILIPPINES  |0       |       0|   2290|  2449|
|24 months |COHORTS        |PHILIPPINES  |0       |       1|     21|  2449|
|24 months |COHORTS        |PHILIPPINES  |1       |       0|    134|  2449|
|24 months |COHORTS        |PHILIPPINES  |1       |       1|      4|  2449|
|24 months |CONTENT        |PERU         |0       |       0|    147|   164|
|24 months |CONTENT        |PERU         |0       |       1|      0|   164|
|24 months |CONTENT        |PERU         |1       |       0|     17|   164|
|24 months |CONTENT        |PERU         |1       |       1|      0|   164|
|24 months |EE             |PAKISTAN     |0       |       0|     99|   168|
|24 months |EE             |PAKISTAN     |0       |       1|      1|   168|
|24 months |EE             |PAKISTAN     |1       |       0|     65|   168|
|24 months |EE             |PAKISTAN     |1       |       1|      3|   168|
|24 months |GMS-Nepal      |NEPAL        |0       |       0|    390|   487|
|24 months |GMS-Nepal      |NEPAL        |0       |       1|     15|   487|
|24 months |GMS-Nepal      |NEPAL        |1       |       0|     82|   487|
|24 months |GMS-Nepal      |NEPAL        |1       |       1|      0|   487|
|24 months |JiVitA-3       |BANGLADESH   |0       |       0|   5747|  8603|
|24 months |JiVitA-3       |BANGLADESH   |0       |       1|    167|  8603|
|24 months |JiVitA-3       |BANGLADESH   |1       |       0|   2521|  8603|
|24 months |JiVitA-3       |BANGLADESH   |1       |       1|    168|  8603|
|24 months |JiVitA-4       |BANGLADESH   |0       |       0|   3316|  4735|
|24 months |JiVitA-4       |BANGLADESH   |0       |       1|     64|  4735|
|24 months |JiVitA-4       |BANGLADESH   |1       |       0|   1290|  4735|
|24 months |JiVitA-4       |BANGLADESH   |1       |       1|     65|  4735|
|24 months |Keneba         |GAMBIA       |0       |       0|   1521|  1726|
|24 months |Keneba         |GAMBIA       |0       |       1|     29|  1726|
|24 months |Keneba         |GAMBIA       |1       |       0|    175|  1726|
|24 months |Keneba         |GAMBIA       |1       |       1|      1|  1726|
|24 months |LCNI-5         |MALAWI       |0       |       0|    365|   563|
|24 months |LCNI-5         |MALAWI       |0       |       1|      0|   563|
|24 months |LCNI-5         |MALAWI       |1       |       0|    197|   563|
|24 months |LCNI-5         |MALAWI       |1       |       1|      1|   563|
|24 months |MAL-ED         |INDIA        |0       |       0|    189|   227|
|24 months |MAL-ED         |INDIA        |0       |       1|      2|   227|
|24 months |MAL-ED         |INDIA        |1       |       0|     36|   227|
|24 months |MAL-ED         |INDIA        |1       |       1|      0|   227|
|24 months |MAL-ED         |BANGLADESH   |0       |       0|    179|   212|
|24 months |MAL-ED         |BANGLADESH   |0       |       1|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |1       |       0|     33|   212|
|24 months |MAL-ED         |BANGLADESH   |1       |       1|      0|   212|
|24 months |MAL-ED         |PERU         |0       |       0|    173|   201|
|24 months |MAL-ED         |PERU         |0       |       1|      1|   201|
|24 months |MAL-ED         |PERU         |1       |       0|     26|   201|
|24 months |MAL-ED         |PERU         |1       |       1|      1|   201|
|24 months |MAL-ED         |NEPAL        |0       |       0|    201|   228|
|24 months |MAL-ED         |NEPAL        |0       |       1|      0|   228|
|24 months |MAL-ED         |NEPAL        |1       |       0|     27|   228|
|24 months |MAL-ED         |NEPAL        |1       |       1|      0|   228|
|24 months |MAL-ED         |BRAZIL       |0       |       0|    149|   169|
|24 months |MAL-ED         |BRAZIL       |0       |       1|      1|   169|
|24 months |MAL-ED         |BRAZIL       |1       |       0|     19|   169|
|24 months |MAL-ED         |BRAZIL       |1       |       1|      0|   169|
|24 months |MAL-ED         |TANZANIA     |0       |       0|    181|   214|
|24 months |MAL-ED         |TANZANIA     |0       |       1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |1       |       0|     33|   214|
|24 months |MAL-ED         |TANZANIA     |1       |       1|      0|   214|
|24 months |MAL-ED         |SOUTH AFRICA |0       |       0|    214|   238|
|24 months |MAL-ED         |SOUTH AFRICA |0       |       1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |1       |       0|     24|   238|
|24 months |MAL-ED         |SOUTH AFRICA |1       |       1|      0|   238|
|24 months |NIH-Birth      |BANGLADESH   |0       |       0|    348|   428|
|24 months |NIH-Birth      |BANGLADESH   |0       |       1|      6|   428|
|24 months |NIH-Birth      |BANGLADESH   |1       |       0|     70|   428|
|24 months |NIH-Birth      |BANGLADESH   |1       |       1|      4|   428|
|24 months |NIH-Crypto     |BANGLADESH   |0       |       0|    443|   514|
|24 months |NIH-Crypto     |BANGLADESH   |0       |       1|      1|   514|
|24 months |NIH-Crypto     |BANGLADESH   |1       |       0|     67|   514|
|24 months |NIH-Crypto     |BANGLADESH   |1       |       1|      3|   514|
|24 months |PROBIT         |BELARUS      |0       |       0|   3950|  3970|
|24 months |PROBIT         |BELARUS      |0       |       1|      7|  3970|
|24 months |PROBIT         |BELARUS      |1       |       0|     13|  3970|
|24 months |PROBIT         |BELARUS      |1       |       1|      0|  3970|
|24 months |PROVIDE        |BANGLADESH   |0       |       0|    511|   579|
|24 months |PROVIDE        |BANGLADESH   |0       |       1|      8|   579|
|24 months |PROVIDE        |BANGLADESH   |1       |       0|     59|   579|
|24 months |PROVIDE        |BANGLADESH   |1       |       1|      1|   579|
|24 months |TanzaniaChild2 |TANZANIA     |0       |       0|      6|     6|
|24 months |TanzaniaChild2 |TANZANIA     |0       |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |1       |       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |1       |       1|      0|     6|
|24 months |Vellore Crypto |INDIA        |0       |       0|    354|   409|
|24 months |Vellore Crypto |INDIA        |0       |       1|      4|   409|
|24 months |Vellore Crypto |INDIA        |1       |       0|     50|   409|
|24 months |Vellore Crypto |INDIA        |1       |       1|      1|   409|
|24 months |ZVITAMBO       |ZIMBABWE     |0       |       0|    308|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |0       |       1|     23|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |1       |       0|     94|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |1       |       1|      8|   433|


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
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


