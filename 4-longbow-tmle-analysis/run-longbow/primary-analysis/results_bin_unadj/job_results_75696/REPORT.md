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

**Intervention Variable:** earlybf

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid      |country      |earlybf | ever_swasted| n_cell|     n|
|:---------------------------|:------------|:------------|:-------|------------:|------:|-----:|
|0-24 months (no birth wast) |EE           |PAKISTAN     |1       |            0|     68|   368|
|0-24 months (no birth wast) |EE           |PAKISTAN     |1       |            1|     14|   368|
|0-24 months (no birth wast) |EE           |PAKISTAN     |0       |            0|    235|   368|
|0-24 months (no birth wast) |EE           |PAKISTAN     |0       |            1|     51|   368|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL        |1       |            0|    135|   606|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL        |1       |            1|     32|   606|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL        |0       |            0|    352|   606|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL        |0       |            1|     87|   606|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH   |1       |            0|    186| 26401|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH   |1       |            1|     10| 26401|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH   |0       |            0|  25270| 26401|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH   |0       |            1|    935| 26401|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH   |1       |            0|   3204|  5389|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH   |1       |            1|    154|  5389|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH   |0       |            0|   1953|  5389|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH   |0       |            1|     78|  5389|
|0-24 months (no birth wast) |MAL-ED       |INDIA        |1       |            0|    147|   246|
|0-24 months (no birth wast) |MAL-ED       |INDIA        |1       |            1|      7|   246|
|0-24 months (no birth wast) |MAL-ED       |INDIA        |0       |            0|     86|   246|
|0-24 months (no birth wast) |MAL-ED       |INDIA        |0       |            1|      6|   246|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH   |1       |            0|    152|   263|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH   |1       |            1|      7|   263|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH   |0       |            0|     99|   263|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH   |0       |            1|      5|   263|
|0-24 months (no birth wast) |MAL-ED       |PERU         |1       |            0|    224|   302|
|0-24 months (no birth wast) |MAL-ED       |PERU         |1       |            1|      3|   302|
|0-24 months (no birth wast) |MAL-ED       |PERU         |0       |            0|     74|   302|
|0-24 months (no birth wast) |MAL-ED       |PERU         |0       |            1|      1|   302|
|0-24 months (no birth wast) |MAL-ED       |NEPAL        |1       |            0|     89|   239|
|0-24 months (no birth wast) |MAL-ED       |NEPAL        |1       |            1|      1|   239|
|0-24 months (no birth wast) |MAL-ED       |NEPAL        |0       |            0|    147|   239|
|0-24 months (no birth wast) |MAL-ED       |NEPAL        |0       |            1|      2|   239|
|0-24 months (no birth wast) |MAL-ED       |BRAZIL       |1       |            0|    111|   233|
|0-24 months (no birth wast) |MAL-ED       |BRAZIL       |1       |            1|      2|   233|
|0-24 months (no birth wast) |MAL-ED       |BRAZIL       |0       |            0|    118|   233|
|0-24 months (no birth wast) |MAL-ED       |BRAZIL       |0       |            1|      2|   233|
|0-24 months (no birth wast) |MAL-ED       |TANZANIA     |1       |            0|    203|   261|
|0-24 months (no birth wast) |MAL-ED       |TANZANIA     |1       |            1|      7|   261|
|0-24 months (no birth wast) |MAL-ED       |TANZANIA     |0       |            0|     50|   261|
|0-24 months (no birth wast) |MAL-ED       |TANZANIA     |0       |            1|      1|   261|
|0-24 months (no birth wast) |MAL-ED       |SOUTH AFRICA |1       |            0|    160|   298|
|0-24 months (no birth wast) |MAL-ED       |SOUTH AFRICA |1       |            1|      4|   298|
|0-24 months (no birth wast) |MAL-ED       |SOUTH AFRICA |0       |            0|    126|   298|
|0-24 months (no birth wast) |MAL-ED       |SOUTH AFRICA |0       |            1|      8|   298|
|0-24 months (no birth wast) |NIH-Crypto   |BANGLADESH   |1       |            0|    648|   754|
|0-24 months (no birth wast) |NIH-Crypto   |BANGLADESH   |1       |            1|     16|   754|
|0-24 months (no birth wast) |NIH-Crypto   |BANGLADESH   |0       |            0|     86|   754|
|0-24 months (no birth wast) |NIH-Crypto   |BANGLADESH   |0       |            1|      4|   754|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA        |1       |            0|     82|  1451|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA        |1       |            1|      6|  1451|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA        |0       |            0|   1206|  1451|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA        |0       |            1|    157|  1451|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE     |1       |            0|   6252| 12149|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE     |1       |            1|    232| 12149|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE     |0       |            0|   5470| 12149|
|0-24 months (no birth wast) |ZVITAMBO     |ZIMBABWE     |0       |            1|    195| 12149|
|0-6 months (no birth wast)  |EE           |PAKISTAN     |1       |            0|     78|   366|
|0-6 months (no birth wast)  |EE           |PAKISTAN     |1       |            1|      4|   366|
|0-6 months (no birth wast)  |EE           |PAKISTAN     |0       |            0|    268|   366|
|0-6 months (no birth wast)  |EE           |PAKISTAN     |0       |            1|     16|   366|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL        |1       |            0|    153|   588|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL        |1       |            1|      9|   588|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL        |0       |            0|    405|   588|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL        |0       |            1|     21|   588|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH   |1       |            0|    188| 26108|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH   |1       |            1|      5| 26108|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH   |0       |            0|  25485| 26108|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH   |0       |            1|    430| 26108|
|0-6 months (no birth wast)  |JiVitA-4     |BANGLADESH   |1       |            0|   3078|  4950|
|0-6 months (no birth wast)  |JiVitA-4     |BANGLADESH   |1       |            1|     12|  4950|
|0-6 months (no birth wast)  |JiVitA-4     |BANGLADESH   |0       |            0|   1851|  4950|
|0-6 months (no birth wast)  |JiVitA-4     |BANGLADESH   |0       |            1|      9|  4950|
|0-6 months (no birth wast)  |MAL-ED       |INDIA        |1       |            0|    148|   244|
|0-6 months (no birth wast)  |MAL-ED       |INDIA        |1       |            1|      5|   244|
|0-6 months (no birth wast)  |MAL-ED       |INDIA        |0       |            0|     89|   244|
|0-6 months (no birth wast)  |MAL-ED       |INDIA        |0       |            1|      2|   244|
|0-6 months (no birth wast)  |MAL-ED       |BANGLADESH   |1       |            0|    155|   262|
|0-6 months (no birth wast)  |MAL-ED       |BANGLADESH   |1       |            1|      4|   262|
|0-6 months (no birth wast)  |MAL-ED       |BANGLADESH   |0       |            0|    100|   262|
|0-6 months (no birth wast)  |MAL-ED       |BANGLADESH   |0       |            1|      3|   262|
|0-6 months (no birth wast)  |MAL-ED       |PERU         |1       |            0|    226|   302|
|0-6 months (no birth wast)  |MAL-ED       |PERU         |1       |            1|      1|   302|
|0-6 months (no birth wast)  |MAL-ED       |PERU         |0       |            0|     75|   302|
|0-6 months (no birth wast)  |MAL-ED       |PERU         |0       |            1|      0|   302|
|0-6 months (no birth wast)  |MAL-ED       |NEPAL        |1       |            0|     90|   237|
|0-6 months (no birth wast)  |MAL-ED       |NEPAL        |1       |            1|      0|   237|
|0-6 months (no birth wast)  |MAL-ED       |NEPAL        |0       |            0|    146|   237|
|0-6 months (no birth wast)  |MAL-ED       |NEPAL        |0       |            1|      1|   237|
|0-6 months (no birth wast)  |MAL-ED       |BRAZIL       |1       |            0|    112|   233|
|0-6 months (no birth wast)  |MAL-ED       |BRAZIL       |1       |            1|      1|   233|
|0-6 months (no birth wast)  |MAL-ED       |BRAZIL       |0       |            0|    118|   233|
|0-6 months (no birth wast)  |MAL-ED       |BRAZIL       |0       |            1|      2|   233|
|0-6 months (no birth wast)  |MAL-ED       |TANZANIA     |1       |            0|    207|   261|
|0-6 months (no birth wast)  |MAL-ED       |TANZANIA     |1       |            1|      3|   261|
|0-6 months (no birth wast)  |MAL-ED       |TANZANIA     |0       |            0|     51|   261|
|0-6 months (no birth wast)  |MAL-ED       |TANZANIA     |0       |            1|      0|   261|
|0-6 months (no birth wast)  |MAL-ED       |SOUTH AFRICA |1       |            0|    162|   297|
|0-6 months (no birth wast)  |MAL-ED       |SOUTH AFRICA |1       |            1|      1|   297|
|0-6 months (no birth wast)  |MAL-ED       |SOUTH AFRICA |0       |            0|    132|   297|
|0-6 months (no birth wast)  |MAL-ED       |SOUTH AFRICA |0       |            1|      2|   297|
|0-6 months (no birth wast)  |NIH-Crypto   |BANGLADESH   |1       |            0|    658|   749|
|0-6 months (no birth wast)  |NIH-Crypto   |BANGLADESH   |1       |            1|      1|   749|
|0-6 months (no birth wast)  |NIH-Crypto   |BANGLADESH   |0       |            0|     90|   749|
|0-6 months (no birth wast)  |NIH-Crypto   |BANGLADESH   |0       |            1|      0|   749|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA        |1       |            0|     87|  1422|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA        |1       |            1|      1|  1422|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA        |0       |            0|   1294|  1422|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA        |0       |            1|     40|  1422|
|0-6 months (no birth wast)  |ZVITAMBO     |ZIMBABWE     |1       |            0|   6303| 11914|
|0-6 months (no birth wast)  |ZVITAMBO     |ZIMBABWE     |1       |            1|     59| 11914|
|0-6 months (no birth wast)  |ZVITAMBO     |ZIMBABWE     |0       |            0|   5491| 11914|
|0-6 months (no birth wast)  |ZVITAMBO     |ZIMBABWE     |0       |            1|     61| 11914|
|6-24 months                 |EE           |PAKISTAN     |1       |            0|     70|   366|
|6-24 months                 |EE           |PAKISTAN     |1       |            1|     11|   366|
|6-24 months                 |EE           |PAKISTAN     |0       |            0|    246|   366|
|6-24 months                 |EE           |PAKISTAN     |0       |            1|     39|   366|
|6-24 months                 |GMS-Nepal    |NEPAL        |1       |            0|    125|   543|
|6-24 months                 |GMS-Nepal    |NEPAL        |1       |            1|     26|   543|
|6-24 months                 |GMS-Nepal    |NEPAL        |0       |            0|    317|   543|
|6-24 months                 |GMS-Nepal    |NEPAL        |0       |            1|     75|   543|
|6-24 months                 |JiVitA-3     |BANGLADESH   |1       |            0|     73| 17222|
|6-24 months                 |JiVitA-3     |BANGLADESH   |1       |            1|      6| 17222|
|6-24 months                 |JiVitA-3     |BANGLADESH   |0       |            0|  16599| 17222|
|6-24 months                 |JiVitA-3     |BANGLADESH   |0       |            1|    544| 17222|
|6-24 months                 |JiVitA-4     |BANGLADESH   |1       |            0|   3222|  5423|
|6-24 months                 |JiVitA-4     |BANGLADESH   |1       |            1|    152|  5423|
|6-24 months                 |JiVitA-4     |BANGLADESH   |0       |            0|   1962|  5423|
|6-24 months                 |JiVitA-4     |BANGLADESH   |0       |            1|     87|  5423|
|6-24 months                 |MAL-ED       |INDIA        |1       |            0|    140|   235|
|6-24 months                 |MAL-ED       |INDIA        |1       |            1|      2|   235|
|6-24 months                 |MAL-ED       |INDIA        |0       |            0|     89|   235|
|6-24 months                 |MAL-ED       |INDIA        |0       |            1|      4|   235|
|6-24 months                 |MAL-ED       |BANGLADESH   |1       |            0|    140|   240|
|6-24 months                 |MAL-ED       |BANGLADESH   |1       |            1|      3|   240|
|6-24 months                 |MAL-ED       |BANGLADESH   |0       |            0|     95|   240|
|6-24 months                 |MAL-ED       |BANGLADESH   |0       |            1|      2|   240|
|6-24 months                 |MAL-ED       |PERU         |1       |            0|    201|   270|
|6-24 months                 |MAL-ED       |PERU         |1       |            1|      2|   270|
|6-24 months                 |MAL-ED       |PERU         |0       |            0|     66|   270|
|6-24 months                 |MAL-ED       |PERU         |0       |            1|      1|   270|
|6-24 months                 |MAL-ED       |NEPAL        |1       |            0|     88|   235|
|6-24 months                 |MAL-ED       |NEPAL        |1       |            1|      1|   235|
|6-24 months                 |MAL-ED       |NEPAL        |0       |            0|    145|   235|
|6-24 months                 |MAL-ED       |NEPAL        |0       |            1|      1|   235|
|6-24 months                 |MAL-ED       |BRAZIL       |1       |            0|     96|   207|
|6-24 months                 |MAL-ED       |BRAZIL       |1       |            1|      1|   207|
|6-24 months                 |MAL-ED       |BRAZIL       |0       |            0|    110|   207|
|6-24 months                 |MAL-ED       |BRAZIL       |0       |            1|      0|   207|
|6-24 months                 |MAL-ED       |TANZANIA     |1       |            0|    194|   245|
|6-24 months                 |MAL-ED       |TANZANIA     |1       |            1|      4|   245|
|6-24 months                 |MAL-ED       |TANZANIA     |0       |            0|     46|   245|
|6-24 months                 |MAL-ED       |TANZANIA     |0       |            1|      1|   245|
|6-24 months                 |MAL-ED       |SOUTH AFRICA |1       |            0|    141|   254|
|6-24 months                 |MAL-ED       |SOUTH AFRICA |1       |            1|      4|   254|
|6-24 months                 |MAL-ED       |SOUTH AFRICA |0       |            0|    103|   254|
|6-24 months                 |MAL-ED       |SOUTH AFRICA |0       |            1|      6|   254|
|6-24 months                 |NIH-Crypto   |BANGLADESH   |1       |            0|    629|   730|
|6-24 months                 |NIH-Crypto   |BANGLADESH   |1       |            1|     16|   730|
|6-24 months                 |NIH-Crypto   |BANGLADESH   |0       |            0|     81|   730|
|6-24 months                 |NIH-Crypto   |BANGLADESH   |0       |            1|      4|   730|
|6-24 months                 |SAS-CompFeed |INDIA        |1       |            0|     73|  1354|
|6-24 months                 |SAS-CompFeed |INDIA        |1       |            1|      5|  1354|
|6-24 months                 |SAS-CompFeed |INDIA        |0       |            0|   1151|  1354|
|6-24 months                 |SAS-CompFeed |INDIA        |0       |            1|    125|  1354|
|6-24 months                 |ZVITAMBO     |ZIMBABWE     |1       |            0|   5033|  9651|
|6-24 months                 |ZVITAMBO     |ZIMBABWE     |1       |            1|    180|  9651|
|6-24 months                 |ZVITAMBO     |ZIMBABWE     |0       |            0|   4301|  9651|
|6-24 months                 |ZVITAMBO     |ZIMBABWE     |0       |            1|    137|  9651|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


