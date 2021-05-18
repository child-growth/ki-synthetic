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

**Intervention Variable:** sex

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |sex    | swasted| n_cell|     n|
|:---------|:--------------|:------------|:------|-------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |Female |       0|     43|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |Female |       1|      0|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |Male   |       0|     42|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |Male   |       1|      1|    86|
|Birth     |CMIN           |BANGLADESH   |Female |       0|      9|    19|
|Birth     |CMIN           |BANGLADESH   |Female |       1|      0|    19|
|Birth     |CMIN           |BANGLADESH   |Male   |       0|      9|    19|
|Birth     |CMIN           |BANGLADESH   |Male   |       1|      1|    19|
|Birth     |COHORTS        |INDIA        |Female |       0|   2802|  6193|
|Birth     |COHORTS        |INDIA        |Female |       1|    150|  6193|
|Birth     |COHORTS        |INDIA        |Male   |       0|   3071|  6193|
|Birth     |COHORTS        |INDIA        |Male   |       1|    170|  6193|
|Birth     |COHORTS        |GUATEMALA    |Female |       0|    335|   756|
|Birth     |COHORTS        |GUATEMALA    |Female |       1|     25|   756|
|Birth     |COHORTS        |GUATEMALA    |Male   |       0|    361|   756|
|Birth     |COHORTS        |GUATEMALA    |Male   |       1|     35|   756|
|Birth     |COHORTS        |PHILIPPINES  |Female |       0|   1306|  2899|
|Birth     |COHORTS        |PHILIPPINES  |Female |       1|     54|  2899|
|Birth     |COHORTS        |PHILIPPINES  |Male   |       0|   1472|  2899|
|Birth     |COHORTS        |PHILIPPINES  |Male   |       1|     67|  2899|
|Birth     |CONTENT        |PERU         |Female |       0|      0|     2|
|Birth     |CONTENT        |PERU         |Female |       1|      0|     2|
|Birth     |CONTENT        |PERU         |Male   |       0|      2|     2|
|Birth     |CONTENT        |PERU         |Male   |       1|      0|     2|
|Birth     |EE             |PAKISTAN     |Female |       0|     87|   177|
|Birth     |EE             |PAKISTAN     |Female |       1|      1|   177|
|Birth     |EE             |PAKISTAN     |Male   |       0|     84|   177|
|Birth     |EE             |PAKISTAN     |Male   |       1|      5|   177|
|Birth     |GMS-Nepal      |NEPAL        |Female |       0|    283|   641|
|Birth     |GMS-Nepal      |NEPAL        |Female |       1|     14|   641|
|Birth     |GMS-Nepal      |NEPAL        |Male   |       0|    331|   641|
|Birth     |GMS-Nepal      |NEPAL        |Male   |       1|     13|   641|
|Birth     |JiVitA-3       |BANGLADESH   |Female |       0|   8333| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |Female |       1|    191| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |Male   |       0|   9332| 18014|
|Birth     |JiVitA-3       |BANGLADESH   |Male   |       1|    158| 18014|
|Birth     |JiVitA-4       |BANGLADESH   |Female |       0|   1127|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |Female |       1|     15|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |Male   |       0|   1238|  2396|
|Birth     |JiVitA-4       |BANGLADESH   |Male   |       1|     16|  2396|
|Birth     |Keneba         |GAMBIA       |Female |       0|    654|  1466|
|Birth     |Keneba         |GAMBIA       |Female |       1|     49|  1466|
|Birth     |Keneba         |GAMBIA       |Male   |       0|    709|  1466|
|Birth     |Keneba         |GAMBIA       |Male   |       1|     54|  1466|
|Birth     |MAL-ED         |INDIA        |Female |       0|     22|    45|
|Birth     |MAL-ED         |INDIA        |Female |       1|      0|    45|
|Birth     |MAL-ED         |INDIA        |Male   |       0|     23|    45|
|Birth     |MAL-ED         |INDIA        |Male   |       1|      0|    45|
|Birth     |MAL-ED         |BANGLADESH   |Female |       0|    103|   215|
|Birth     |MAL-ED         |BANGLADESH   |Female |       1|      3|   215|
|Birth     |MAL-ED         |BANGLADESH   |Male   |       0|    104|   215|
|Birth     |MAL-ED         |BANGLADESH   |Male   |       1|      5|   215|
|Birth     |MAL-ED         |PERU         |Female |       0|    112|   228|
|Birth     |MAL-ED         |PERU         |Female |       1|      0|   228|
|Birth     |MAL-ED         |PERU         |Male   |       0|    116|   228|
|Birth     |MAL-ED         |PERU         |Male   |       1|      0|   228|
|Birth     |MAL-ED         |NEPAL        |Female |       0|     15|    26|
|Birth     |MAL-ED         |NEPAL        |Female |       1|      1|    26|
|Birth     |MAL-ED         |NEPAL        |Male   |       0|     10|    26|
|Birth     |MAL-ED         |NEPAL        |Male   |       1|      0|    26|
|Birth     |MAL-ED         |BRAZIL       |Female |       0|     31|    62|
|Birth     |MAL-ED         |BRAZIL       |Female |       1|      0|    62|
|Birth     |MAL-ED         |BRAZIL       |Male   |       0|     31|    62|
|Birth     |MAL-ED         |BRAZIL       |Male   |       1|      0|    62|
|Birth     |MAL-ED         |TANZANIA     |Female |       0|     63|   115|
|Birth     |MAL-ED         |TANZANIA     |Female |       1|      0|   115|
|Birth     |MAL-ED         |TANZANIA     |Male   |       0|     52|   115|
|Birth     |MAL-ED         |TANZANIA     |Male   |       1|      0|   115|
|Birth     |MAL-ED         |SOUTH AFRICA |Female |       0|     56|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |Female |       1|      0|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |Male   |       0|     64|   120|
|Birth     |MAL-ED         |SOUTH AFRICA |Male   |       1|      0|   120|
|Birth     |NIH-Birth      |BANGLADESH   |Female |       0|    252|   575|
|Birth     |NIH-Birth      |BANGLADESH   |Female |       1|     17|   575|
|Birth     |NIH-Birth      |BANGLADESH   |Male   |       0|    285|   575|
|Birth     |NIH-Birth      |BANGLADESH   |Male   |       1|     21|   575|
|Birth     |NIH-Crypto     |BANGLADESH   |Female |       0|    325|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |Female |       1|     25|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |Male   |       0|    335|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |Male   |       1|     22|   707|
|Birth     |PROBIT         |BELARUS      |Female |       0|   6263| 13817|
|Birth     |PROBIT         |BELARUS      |Female |       1|    427| 13817|
|Birth     |PROBIT         |BELARUS      |Male   |       0|   6635| 13817|
|Birth     |PROBIT         |BELARUS      |Male   |       1|    492| 13817|
|Birth     |PROVIDE        |BANGLADESH   |Female |       0|    245|   532|
|Birth     |PROVIDE        |BANGLADESH   |Female |       1|      6|   532|
|Birth     |PROVIDE        |BANGLADESH   |Male   |       0|    274|   532|
|Birth     |PROVIDE        |BANGLADESH   |Male   |       1|      7|   532|
|Birth     |ResPak         |PAKISTAN     |Female |       0|     16|    38|
|Birth     |ResPak         |PAKISTAN     |Female |       1|      0|    38|
|Birth     |ResPak         |PAKISTAN     |Male   |       0|     22|    38|
|Birth     |ResPak         |PAKISTAN     |Male   |       1|      0|    38|
|Birth     |SAS-CompFeed   |INDIA        |Female |       0|    483|  1103|
|Birth     |SAS-CompFeed   |INDIA        |Female |       1|     14|  1103|
|Birth     |SAS-CompFeed   |INDIA        |Male   |       0|    591|  1103|
|Birth     |SAS-CompFeed   |INDIA        |Male   |       1|     15|  1103|
|Birth     |Vellore Crypto |INDIA        |Female |       0|    121|   343|
|Birth     |Vellore Crypto |INDIA        |Female |       1|     27|   343|
|Birth     |Vellore Crypto |INDIA        |Male   |       0|    168|   343|
|Birth     |Vellore Crypto |INDIA        |Male   |       1|     27|   343|
|Birth     |ZVITAMBO       |ZIMBABWE     |Female |       0|   5835| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |Female |       1|    387| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |Male   |       0|   6290| 12917|
|Birth     |ZVITAMBO       |ZIMBABWE     |Male   |       1|    405| 12917|
|6 months  |CMC-V-BCS-2002 |INDIA        |Female |       0|    181|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |Female |       1|      5|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |Male   |       0|    175|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |Male   |       1|      7|   368|
|6 months  |CMIN           |BANGLADESH   |Female |       0|    105|   243|
|6 months  |CMIN           |BANGLADESH   |Female |       1|      0|   243|
|6 months  |CMIN           |BANGLADESH   |Male   |       0|    133|   243|
|6 months  |CMIN           |BANGLADESH   |Male   |       1|      5|   243|
|6 months  |COHORTS        |INDIA        |Female |       0|   3180|  6850|
|6 months  |COHORTS        |INDIA        |Female |       1|    104|  6850|
|6 months  |COHORTS        |INDIA        |Male   |       0|   3453|  6850|
|6 months  |COHORTS        |INDIA        |Male   |       1|    113|  6850|
|6 months  |COHORTS        |GUATEMALA    |Female |       0|    455|   963|
|6 months  |COHORTS        |GUATEMALA    |Female |       1|      1|   963|
|6 months  |COHORTS        |GUATEMALA    |Male   |       0|    502|   963|
|6 months  |COHORTS        |GUATEMALA    |Male   |       1|      5|   963|
|6 months  |COHORTS        |PHILIPPINES  |Female |       0|   1264|  2706|
|6 months  |COHORTS        |PHILIPPINES  |Female |       1|     11|  2706|
|6 months  |COHORTS        |PHILIPPINES  |Male   |       0|   1407|  2706|
|6 months  |COHORTS        |PHILIPPINES  |Male   |       1|     24|  2706|
|6 months  |CONTENT        |PERU         |Female |       0|    109|   215|
|6 months  |CONTENT        |PERU         |Female |       1|      0|   215|
|6 months  |CONTENT        |PERU         |Male   |       0|    106|   215|
|6 months  |CONTENT        |PERU         |Male   |       1|      0|   215|
|6 months  |EE             |PAKISTAN     |Female |       0|    177|   375|
|6 months  |EE             |PAKISTAN     |Female |       1|      5|   375|
|6 months  |EE             |PAKISTAN     |Male   |       0|    185|   375|
|6 months  |EE             |PAKISTAN     |Male   |       1|      8|   375|
|6 months  |GMS-Nepal      |NEPAL        |Female |       0|    271|   564|
|6 months  |GMS-Nepal      |NEPAL        |Female |       1|      2|   564|
|6 months  |GMS-Nepal      |NEPAL        |Male   |       0|    286|   564|
|6 months  |GMS-Nepal      |NEPAL        |Male   |       1|      5|   564|
|6 months  |Guatemala BSC  |GUATEMALA    |Female |       0|    153|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |Female |       1|      0|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |Male   |       0|    146|   299|
|6 months  |Guatemala BSC  |GUATEMALA    |Male   |       1|      0|   299|
|6 months  |JiVitA-3       |BANGLADESH   |Female |       0|   8138| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |Female |       1|     96| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |Male   |       0|   8416| 16784|
|6 months  |JiVitA-3       |BANGLADESH   |Male   |       1|    134| 16784|
|6 months  |JiVitA-4       |BANGLADESH   |Female |       0|   2392|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |Female |       1|     16|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |Male   |       0|   2408|  4833|
|6 months  |JiVitA-4       |BANGLADESH   |Male   |       1|     17|  4833|
|6 months  |Keneba         |GAMBIA       |Female |       0|   1000|  2089|
|6 months  |Keneba         |GAMBIA       |Female |       1|     11|  2089|
|6 months  |Keneba         |GAMBIA       |Male   |       0|   1055|  2089|
|6 months  |Keneba         |GAMBIA       |Male   |       1|     23|  2089|
|6 months  |LCNI-5         |MALAWI       |Female |       0|    420|   839|
|6 months  |LCNI-5         |MALAWI       |Female |       1|      0|   839|
|6 months  |LCNI-5         |MALAWI       |Male   |       0|    419|   839|
|6 months  |LCNI-5         |MALAWI       |Male   |       1|      0|   839|
|6 months  |MAL-ED         |INDIA        |Female |       0|    127|   236|
|6 months  |MAL-ED         |INDIA        |Female |       1|      3|   236|
|6 months  |MAL-ED         |INDIA        |Male   |       0|    103|   236|
|6 months  |MAL-ED         |INDIA        |Male   |       1|      3|   236|
|6 months  |MAL-ED         |BANGLADESH   |Female |       0|    122|   241|
|6 months  |MAL-ED         |BANGLADESH   |Female |       1|      1|   241|
|6 months  |MAL-ED         |BANGLADESH   |Male   |       0|    117|   241|
|6 months  |MAL-ED         |BANGLADESH   |Male   |       1|      1|   241|
|6 months  |MAL-ED         |PERU         |Female |       0|    126|   273|
|6 months  |MAL-ED         |PERU         |Female |       1|      0|   273|
|6 months  |MAL-ED         |PERU         |Male   |       0|    147|   273|
|6 months  |MAL-ED         |PERU         |Male   |       1|      0|   273|
|6 months  |MAL-ED         |NEPAL        |Female |       0|    110|   236|
|6 months  |MAL-ED         |NEPAL        |Female |       1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |Male   |       0|    126|   236|
|6 months  |MAL-ED         |NEPAL        |Male   |       1|      0|   236|
|6 months  |MAL-ED         |BRAZIL       |Female |       0|    103|   209|
|6 months  |MAL-ED         |BRAZIL       |Female |       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |Male   |       0|    106|   209|
|6 months  |MAL-ED         |BRAZIL       |Male   |       1|      0|   209|
|6 months  |MAL-ED         |TANZANIA     |Female |       0|    126|   247|
|6 months  |MAL-ED         |TANZANIA     |Female |       1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |Male   |       0|    121|   247|
|6 months  |MAL-ED         |TANZANIA     |Male   |       1|      0|   247|
|6 months  |MAL-ED         |SOUTH AFRICA |Female |       0|    126|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |Female |       1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |Male   |       0|    125|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |Male   |       1|      3|   254|
|6 months  |NIH-Birth      |BANGLADESH   |Female |       0|    243|   537|
|6 months  |NIH-Birth      |BANGLADESH   |Female |       1|      2|   537|
|6 months  |NIH-Birth      |BANGLADESH   |Male   |       0|    288|   537|
|6 months  |NIH-Birth      |BANGLADESH   |Male   |       1|      4|   537|
|6 months  |NIH-Crypto     |BANGLADESH   |Female |       0|    362|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Female |       1|      0|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Male   |       0|    353|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Male   |       1|      0|   715|
|6 months  |PROBIT         |BELARUS      |Female |       0|   7618| 15757|
|6 months  |PROBIT         |BELARUS      |Female |       1|      2| 15757|
|6 months  |PROBIT         |BELARUS      |Male   |       0|   8130| 15757|
|6 months  |PROBIT         |BELARUS      |Male   |       1|      7| 15757|
|6 months  |PROVIDE        |BANGLADESH   |Female |       0|    286|   603|
|6 months  |PROVIDE        |BANGLADESH   |Female |       1|      2|   603|
|6 months  |PROVIDE        |BANGLADESH   |Male   |       0|    312|   603|
|6 months  |PROVIDE        |BANGLADESH   |Male   |       1|      3|   603|
|6 months  |ResPak         |PAKISTAN     |Female |       0|    110|   239|
|6 months  |ResPak         |PAKISTAN     |Female |       1|      5|   239|
|6 months  |ResPak         |PAKISTAN     |Male   |       0|    120|   239|
|6 months  |ResPak         |PAKISTAN     |Male   |       1|      4|   239|
|6 months  |SAS-CompFeed   |INDIA        |Female |       0|    592|  1334|
|6 months  |SAS-CompFeed   |INDIA        |Female |       1|     18|  1334|
|6 months  |SAS-CompFeed   |INDIA        |Male   |       0|    699|  1334|
|6 months  |SAS-CompFeed   |INDIA        |Male   |       1|     25|  1334|
|6 months  |SAS-FoodSuppl  |INDIA        |Female |       0|    194|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |Female |       1|      8|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |Male   |       0|    167|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |Male   |       1|     11|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |Female |       0|    999|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |Female |       1|      4|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |Male   |       0|   1017|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |Male   |       1|      8|  2028|
|6 months  |Vellore Crypto |INDIA        |Female |       0|    177|   408|
|6 months  |Vellore Crypto |INDIA        |Female |       1|      7|   408|
|6 months  |Vellore Crypto |INDIA        |Male   |       0|    209|   408|
|6 months  |Vellore Crypto |INDIA        |Male   |       1|     15|   408|
|6 months  |ZVITAMBO       |ZIMBABWE     |Female |       0|   4110|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |Female |       1|     34|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |Male   |       0|   4316|  8505|
|6 months  |ZVITAMBO       |ZIMBABWE     |Male   |       1|     45|  8505|
|24 months |CMC-V-BCS-2002 |INDIA        |Female |       0|    186|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |Female |       1|      0|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |Male   |       0|    183|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |Male   |       1|      3|   372|
|24 months |CMIN           |BANGLADESH   |Female |       0|    103|   243|
|24 months |CMIN           |BANGLADESH   |Female |       1|      1|   243|
|24 months |CMIN           |BANGLADESH   |Male   |       0|    138|   243|
|24 months |CMIN           |BANGLADESH   |Male   |       1|      1|   243|
|24 months |COHORTS        |INDIA        |Female |       0|   2503|  5291|
|24 months |COHORTS        |INDIA        |Female |       1|     18|  5291|
|24 months |COHORTS        |INDIA        |Male   |       0|   2732|  5291|
|24 months |COHORTS        |INDIA        |Male   |       1|     38|  5291|
|24 months |COHORTS        |GUATEMALA    |Female |       0|    514|  1082|
|24 months |COHORTS        |GUATEMALA    |Female |       1|      2|  1082|
|24 months |COHORTS        |GUATEMALA    |Male   |       0|    564|  1082|
|24 months |COHORTS        |GUATEMALA    |Male   |       1|      2|  1082|
|24 months |COHORTS        |PHILIPPINES  |Female |       0|   1151|  2449|
|24 months |COHORTS        |PHILIPPINES  |Female |       1|      7|  2449|
|24 months |COHORTS        |PHILIPPINES  |Male   |       0|   1273|  2449|
|24 months |COHORTS        |PHILIPPINES  |Male   |       1|     18|  2449|
|24 months |CONTENT        |PERU         |Female |       0|     81|   164|
|24 months |CONTENT        |PERU         |Female |       1|      0|   164|
|24 months |CONTENT        |PERU         |Male   |       0|     83|   164|
|24 months |CONTENT        |PERU         |Male   |       1|      0|   164|
|24 months |EE             |PAKISTAN     |Female |       0|     79|   168|
|24 months |EE             |PAKISTAN     |Female |       1|      1|   168|
|24 months |EE             |PAKISTAN     |Male   |       0|     85|   168|
|24 months |EE             |PAKISTAN     |Male   |       1|      3|   168|
|24 months |GMS-Nepal      |NEPAL        |Female |       0|    223|   487|
|24 months |GMS-Nepal      |NEPAL        |Female |       1|      4|   487|
|24 months |GMS-Nepal      |NEPAL        |Male   |       0|    249|   487|
|24 months |GMS-Nepal      |NEPAL        |Male   |       1|     11|   487|
|24 months |JiVitA-3       |BANGLADESH   |Female |       0|   4026|  8603|
|24 months |JiVitA-3       |BANGLADESH   |Female |       1|    126|  8603|
|24 months |JiVitA-3       |BANGLADESH   |Male   |       0|   4242|  8603|
|24 months |JiVitA-3       |BANGLADESH   |Male   |       1|    209|  8603|
|24 months |JiVitA-4       |BANGLADESH   |Female |       0|   2319|  4735|
|24 months |JiVitA-4       |BANGLADESH   |Female |       1|     48|  4735|
|24 months |JiVitA-4       |BANGLADESH   |Male   |       0|   2287|  4735|
|24 months |JiVitA-4       |BANGLADESH   |Male   |       1|     81|  4735|
|24 months |Keneba         |GAMBIA       |Female |       0|    808|  1726|
|24 months |Keneba         |GAMBIA       |Female |       1|     15|  1726|
|24 months |Keneba         |GAMBIA       |Male   |       0|    888|  1726|
|24 months |Keneba         |GAMBIA       |Male   |       1|     15|  1726|
|24 months |LCNI-5         |MALAWI       |Female |       0|    286|   563|
|24 months |LCNI-5         |MALAWI       |Female |       1|      0|   563|
|24 months |LCNI-5         |MALAWI       |Male   |       0|    276|   563|
|24 months |LCNI-5         |MALAWI       |Male   |       1|      1|   563|
|24 months |MAL-ED         |INDIA        |Female |       0|    121|   227|
|24 months |MAL-ED         |INDIA        |Female |       1|      1|   227|
|24 months |MAL-ED         |INDIA        |Male   |       0|    104|   227|
|24 months |MAL-ED         |INDIA        |Male   |       1|      1|   227|
|24 months |MAL-ED         |BANGLADESH   |Female |       0|    104|   212|
|24 months |MAL-ED         |BANGLADESH   |Female |       1|      0|   212|
|24 months |MAL-ED         |BANGLADESH   |Male   |       0|    108|   212|
|24 months |MAL-ED         |BANGLADESH   |Male   |       1|      0|   212|
|24 months |MAL-ED         |PERU         |Female |       0|     91|   201|
|24 months |MAL-ED         |PERU         |Female |       1|      0|   201|
|24 months |MAL-ED         |PERU         |Male   |       0|    108|   201|
|24 months |MAL-ED         |PERU         |Male   |       1|      2|   201|
|24 months |MAL-ED         |NEPAL        |Female |       0|    106|   228|
|24 months |MAL-ED         |NEPAL        |Female |       1|      0|   228|
|24 months |MAL-ED         |NEPAL        |Male   |       0|    122|   228|
|24 months |MAL-ED         |NEPAL        |Male   |       1|      0|   228|
|24 months |MAL-ED         |BRAZIL       |Female |       0|     78|   169|
|24 months |MAL-ED         |BRAZIL       |Female |       1|      1|   169|
|24 months |MAL-ED         |BRAZIL       |Male   |       0|     90|   169|
|24 months |MAL-ED         |BRAZIL       |Male   |       1|      0|   169|
|24 months |MAL-ED         |TANZANIA     |Female |       0|    106|   214|
|24 months |MAL-ED         |TANZANIA     |Female |       1|      0|   214|
|24 months |MAL-ED         |TANZANIA     |Male   |       0|    108|   214|
|24 months |MAL-ED         |TANZANIA     |Male   |       1|      0|   214|
|24 months |MAL-ED         |SOUTH AFRICA |Female |       0|    118|   238|
|24 months |MAL-ED         |SOUTH AFRICA |Female |       1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |Male   |       0|    120|   238|
|24 months |MAL-ED         |SOUTH AFRICA |Male   |       1|      0|   238|
|24 months |NIH-Birth      |BANGLADESH   |Female |       0|    191|   428|
|24 months |NIH-Birth      |BANGLADESH   |Female |       1|      4|   428|
|24 months |NIH-Birth      |BANGLADESH   |Male   |       0|    227|   428|
|24 months |NIH-Birth      |BANGLADESH   |Male   |       1|      6|   428|
|24 months |NIH-Crypto     |BANGLADESH   |Female |       0|    259|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Female |       1|      1|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Male   |       0|    251|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Male   |       1|      3|   514|
|24 months |PROBIT         |BELARUS      |Female |       0|   1925|  3970|
|24 months |PROBIT         |BELARUS      |Female |       1|      0|  3970|
|24 months |PROBIT         |BELARUS      |Male   |       0|   2038|  3970|
|24 months |PROBIT         |BELARUS      |Male   |       1|      7|  3970|
|24 months |PROVIDE        |BANGLADESH   |Female |       0|    275|   579|
|24 months |PROVIDE        |BANGLADESH   |Female |       1|      4|   579|
|24 months |PROVIDE        |BANGLADESH   |Male   |       0|    295|   579|
|24 months |PROVIDE        |BANGLADESH   |Male   |       1|      5|   579|
|24 months |TanzaniaChild2 |TANZANIA     |Female |       0|      3|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Female |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Male   |       0|      3|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Male   |       1|      0|     6|
|24 months |Vellore Crypto |INDIA        |Female |       0|    183|   409|
|24 months |Vellore Crypto |INDIA        |Female |       1|      2|   409|
|24 months |Vellore Crypto |INDIA        |Male   |       0|    221|   409|
|24 months |Vellore Crypto |INDIA        |Male   |       1|      3|   409|
|24 months |ZVITAMBO       |ZIMBABWE     |Female |       0|    249|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |Female |       1|     14|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |Male   |       0|    153|   433|
|24 months |ZVITAMBO       |ZIMBABWE     |Male   |       1|     17|   433|


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
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: CONTENT, country: PERU
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
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


