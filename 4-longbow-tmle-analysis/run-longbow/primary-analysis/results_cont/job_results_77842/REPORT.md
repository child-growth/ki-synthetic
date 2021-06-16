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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** earlybf

**Adjustment Set:**

* sex
* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* delta_arm
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* syntype
* agecat
* studyid
* country

## Data Summary

|syntype |agecat    |studyid      |country      |earlybf | n_cell|     n|
|:-------|:---------|:------------|:------------|:-------|------:|-----:|
|BC      |Birth     |EE           |PAKISTAN     |1       |     39|   173|
|BC      |Birth     |EE           |PAKISTAN     |0       |    134|   173|
|BC      |Birth     |GMS-Nepal    |NEPAL        |1       |    160|   587|
|BC      |Birth     |GMS-Nepal    |NEPAL        |0       |    427|   587|
|BC      |Birth     |JiVitA-3     |BANGLADESH   |1       |    137| 17924|
|BC      |Birth     |JiVitA-3     |BANGLADESH   |0       |  17787| 17924|
|BC      |Birth     |JiVitA-4     |BANGLADESH   |1       |   1480|  2392|
|BC      |Birth     |JiVitA-4     |BANGLADESH   |0       |    912|  2392|
|BC      |Birth     |MAL-ED       |INDIA        |1       |     29|    45|
|BC      |Birth     |MAL-ED       |INDIA        |0       |     16|    45|
|BC      |Birth     |MAL-ED       |BANGLADESH   |1       |    127|   215|
|BC      |Birth     |MAL-ED       |BANGLADESH   |0       |     88|   215|
|BC      |Birth     |MAL-ED       |PERU         |1       |    172|   228|
|BC      |Birth     |MAL-ED       |PERU         |0       |     56|   228|
|BC      |Birth     |MAL-ED       |NEPAL        |1       |     10|    26|
|BC      |Birth     |MAL-ED       |NEPAL        |0       |     16|    26|
|BC      |Birth     |MAL-ED       |BRAZIL       |1       |     30|    62|
|BC      |Birth     |MAL-ED       |BRAZIL       |0       |     32|    62|
|BC      |Birth     |MAL-ED       |TANZANIA     |1       |     95|   115|
|BC      |Birth     |MAL-ED       |TANZANIA     |0       |     20|   115|
|BC      |Birth     |MAL-ED       |SOUTH AFRICA |1       |     65|   115|
|BC      |Birth     |MAL-ED       |SOUTH AFRICA |0       |     50|   115|
|BC      |Birth     |NIH-Crypto   |BANGLADESH   |1       |    621|   707|
|BC      |Birth     |NIH-Crypto   |BANGLADESH   |0       |     86|   707|
|BC      |Birth     |SAS-CompFeed |INDIA        |1       |     64|  1062|
|BC      |Birth     |SAS-CompFeed |INDIA        |0       |    998|  1062|
|BC      |Birth     |ZVITAMBO     |ZIMBABWE     |1       |   6137| 11514|
|BC      |Birth     |ZVITAMBO     |ZIMBABWE     |0       |   5377| 11514|
|BC      |6 months  |EE           |PAKISTAN     |1       |     81|   367|
|BC      |6 months  |EE           |PAKISTAN     |0       |    286|   367|
|BC      |6 months  |GMS-Nepal    |NEPAL        |1       |    145|   520|
|BC      |6 months  |GMS-Nepal    |NEPAL        |0       |    375|   520|
|BC      |6 months  |JiVitA-3     |BANGLADESH   |1       |     77| 16712|
|BC      |6 months  |JiVitA-3     |BANGLADESH   |0       |  16635| 16712|
|BC      |6 months  |JiVitA-4     |BANGLADESH   |1       |   2997|  4826|
|BC      |6 months  |JiVitA-4     |BANGLADESH   |0       |   1829|  4826|
|BC      |6 months  |MAL-ED       |INDIA        |1       |    142|   236|
|BC      |6 months  |MAL-ED       |INDIA        |0       |     94|   236|
|BC      |6 months  |MAL-ED       |BANGLADESH   |1       |    144|   241|
|BC      |6 months  |MAL-ED       |BANGLADESH   |0       |     97|   241|
|BC      |6 months  |MAL-ED       |PERU         |1       |    206|   273|
|BC      |6 months  |MAL-ED       |PERU         |0       |     67|   273|
|BC      |6 months  |MAL-ED       |NEPAL        |1       |     89|   236|
|BC      |6 months  |MAL-ED       |NEPAL        |0       |    147|   236|
|BC      |6 months  |MAL-ED       |BRAZIL       |1       |     97|   209|
|BC      |6 months  |MAL-ED       |BRAZIL       |0       |    112|   209|
|BC      |6 months  |MAL-ED       |TANZANIA     |1       |    199|   247|
|BC      |6 months  |MAL-ED       |TANZANIA     |0       |     48|   247|
|BC      |6 months  |MAL-ED       |SOUTH AFRICA |1       |    141|   250|
|BC      |6 months  |MAL-ED       |SOUTH AFRICA |0       |    109|   250|
|BC      |6 months  |NIH-Crypto   |BANGLADESH   |1       |    631|   715|
|BC      |6 months  |NIH-Crypto   |BANGLADESH   |0       |     84|   715|
|BC      |6 months  |SAS-CompFeed |INDIA        |1       |     73|  1298|
|BC      |6 months  |SAS-CompFeed |INDIA        |0       |   1225|  1298|
|BC      |6 months  |ZVITAMBO     |ZIMBABWE     |1       |   4109|  7578|
|BC      |6 months  |ZVITAMBO     |ZIMBABWE     |0       |   3469|  7578|
|BC      |24 months |EE           |PAKISTAN     |1       |     40|   164|
|BC      |24 months |EE           |PAKISTAN     |0       |    124|   164|
|BC      |24 months |GMS-Nepal    |NEPAL        |1       |    127|   450|
|BC      |24 months |GMS-Nepal    |NEPAL        |0       |    323|   450|
|BC      |24 months |JiVitA-3     |BANGLADESH   |1       |      3|  8569|
|BC      |24 months |JiVitA-3     |BANGLADESH   |0       |   8566|  8569|
|BC      |24 months |JiVitA-4     |BANGLADESH   |1       |   2948|  4729|
|BC      |24 months |JiVitA-4     |BANGLADESH   |0       |   1781|  4729|
|BC      |24 months |MAL-ED       |INDIA        |1       |    136|   227|
|BC      |24 months |MAL-ED       |INDIA        |0       |     91|   227|
|BC      |24 months |MAL-ED       |BANGLADESH   |1       |    129|   212|
|BC      |24 months |MAL-ED       |BANGLADESH   |0       |     83|   212|
|BC      |24 months |MAL-ED       |PERU         |1       |    157|   201|
|BC      |24 months |MAL-ED       |PERU         |0       |     44|   201|
|BC      |24 months |MAL-ED       |NEPAL        |1       |     85|   228|
|BC      |24 months |MAL-ED       |NEPAL        |0       |    143|   228|
|BC      |24 months |MAL-ED       |BRAZIL       |1       |     78|   169|
|BC      |24 months |MAL-ED       |BRAZIL       |0       |     91|   169|
|BC      |24 months |MAL-ED       |TANZANIA     |1       |    174|   214|
|BC      |24 months |MAL-ED       |TANZANIA     |0       |     40|   214|
|BC      |24 months |MAL-ED       |SOUTH AFRICA |1       |    135|   235|
|BC      |24 months |MAL-ED       |SOUTH AFRICA |0       |    100|   235|
|BC      |24 months |NIH-Crypto   |BANGLADESH   |1       |    452|   514|
|BC      |24 months |NIH-Crypto   |BANGLADESH   |0       |     62|   514|
|BC      |24 months |ZVITAMBO     |ZIMBABWE     |1       |    201|   374|
|BC      |24 months |ZVITAMBO     |ZIMBABWE     |0       |    173|   374|
|FULL    |Birth     |EE           |PAKISTAN     |1       |     36|   170|
|FULL    |Birth     |EE           |PAKISTAN     |0       |    134|   170|
|FULL    |Birth     |GMS-Nepal    |NEPAL        |1       |    171|   586|
|FULL    |Birth     |GMS-Nepal    |NEPAL        |0       |    415|   586|
|FULL    |Birth     |JiVitA-3     |BANGLADESH   |1       |    105| 17943|
|FULL    |Birth     |JiVitA-3     |BANGLADESH   |0       |  17838| 17943|
|FULL    |Birth     |JiVitA-4     |BANGLADESH   |1       |   1624|  2396|
|FULL    |Birth     |JiVitA-4     |BANGLADESH   |0       |    772|  2396|
|FULL    |Birth     |MAL-ED       |INDIA        |1       |     31|    44|
|FULL    |Birth     |MAL-ED       |INDIA        |0       |     13|    44|
|FULL    |Birth     |MAL-ED       |BANGLADESH   |1       |    140|   214|
|FULL    |Birth     |MAL-ED       |BANGLADESH   |0       |     74|   214|
|FULL    |Birth     |MAL-ED       |PERU         |1       |    172|   228|
|FULL    |Birth     |MAL-ED       |PERU         |0       |     56|   228|
|FULL    |Birth     |MAL-ED       |NEPAL        |1       |     14|    26|
|FULL    |Birth     |MAL-ED       |NEPAL        |0       |     12|    26|
|FULL    |Birth     |MAL-ED       |BRAZIL       |1       |     26|    62|
|FULL    |Birth     |MAL-ED       |BRAZIL       |0       |     36|    62|
|FULL    |Birth     |MAL-ED       |TANZANIA     |1       |    103|   115|
|FULL    |Birth     |MAL-ED       |TANZANIA     |0       |     12|   115|
|FULL    |Birth     |MAL-ED       |SOUTH AFRICA |1       |     69|   110|
|FULL    |Birth     |MAL-ED       |SOUTH AFRICA |0       |     41|   110|
|FULL    |Birth     |NIH-Crypto   |BANGLADESH   |1       |    613|   707|
|FULL    |Birth     |NIH-Crypto   |BANGLADESH   |0       |     94|   707|
|FULL    |Birth     |SAS-CompFeed |INDIA        |1       |     79|  1072|
|FULL    |Birth     |SAS-CompFeed |INDIA        |0       |    993|  1072|
|FULL    |Birth     |ZVITAMBO     |ZIMBABWE     |1       |   6142| 11514|
|FULL    |Birth     |ZVITAMBO     |ZIMBABWE     |0       |   5372| 11514|
|FULL    |6 months  |EE           |PAKISTAN     |1       |     69|   364|
|FULL    |6 months  |EE           |PAKISTAN     |0       |    295|   364|
|FULL    |6 months  |GMS-Nepal    |NEPAL        |1       |    151|   511|
|FULL    |6 months  |GMS-Nepal    |NEPAL        |0       |    360|   511|
|FULL    |6 months  |JiVitA-3     |BANGLADESH   |1       |     36| 16784|
|FULL    |6 months  |JiVitA-3     |BANGLADESH   |0       |  16748| 16784|
|FULL    |6 months  |JiVitA-4     |BANGLADESH   |1       |   3095|  4833|
|FULL    |6 months  |JiVitA-4     |BANGLADESH   |0       |   1738|  4833|
|FULL    |6 months  |MAL-ED       |INDIA        |1       |    140|   236|
|FULL    |6 months  |MAL-ED       |INDIA        |0       |     96|   236|
|FULL    |6 months  |MAL-ED       |BANGLADESH   |1       |    147|   240|
|FULL    |6 months  |MAL-ED       |BANGLADESH   |0       |     93|   240|
|FULL    |6 months  |MAL-ED       |PERU         |1       |    202|   273|
|FULL    |6 months  |MAL-ED       |PERU         |0       |     71|   273|
|FULL    |6 months  |MAL-ED       |NEPAL        |1       |     96|   236|
|FULL    |6 months  |MAL-ED       |NEPAL        |0       |    140|   236|
|FULL    |6 months  |MAL-ED       |BRAZIL       |1       |     95|   209|
|FULL    |6 months  |MAL-ED       |BRAZIL       |0       |    114|   209|
|FULL    |6 months  |MAL-ED       |TANZANIA     |1       |    205|   247|
|FULL    |6 months  |MAL-ED       |TANZANIA     |0       |     42|   247|
|FULL    |6 months  |MAL-ED       |SOUTH AFRICA |1       |    156|   250|
|FULL    |6 months  |MAL-ED       |SOUTH AFRICA |0       |     94|   250|
|FULL    |6 months  |NIH-Crypto   |BANGLADESH   |1       |    619|   715|
|FULL    |6 months  |NIH-Crypto   |BANGLADESH   |0       |     96|   715|
|FULL    |6 months  |SAS-CompFeed |INDIA        |1       |     97|  1334|
|FULL    |6 months  |SAS-CompFeed |INDIA        |0       |   1237|  1334|
|FULL    |6 months  |ZVITAMBO     |ZIMBABWE     |1       |   4065|  7553|
|FULL    |6 months  |ZVITAMBO     |ZIMBABWE     |0       |   3488|  7553|
|FULL    |24 months |EE           |PAKISTAN     |1       |     32|   164|
|FULL    |24 months |EE           |PAKISTAN     |0       |    132|   164|
|FULL    |24 months |GMS-Nepal    |NEPAL        |1       |    131|   444|
|FULL    |24 months |GMS-Nepal    |NEPAL        |0       |    313|   444|
|FULL    |24 months |JiVitA-3     |BANGLADESH   |1       |      1|  8603|
|FULL    |24 months |JiVitA-3     |BANGLADESH   |0       |   8602|  8603|
|FULL    |24 months |JiVitA-4     |BANGLADESH   |1       |   3031|  4735|
|FULL    |24 months |JiVitA-4     |BANGLADESH   |0       |   1704|  4735|
|FULL    |24 months |MAL-ED       |INDIA        |1       |    134|   227|
|FULL    |24 months |MAL-ED       |INDIA        |0       |     93|   227|
|FULL    |24 months |MAL-ED       |BANGLADESH   |1       |    128|   211|
|FULL    |24 months |MAL-ED       |BANGLADESH   |0       |     83|   211|
|FULL    |24 months |MAL-ED       |PERU         |1       |    149|   201|
|FULL    |24 months |MAL-ED       |PERU         |0       |     52|   201|
|FULL    |24 months |MAL-ED       |NEPAL        |1       |     95|   228|
|FULL    |24 months |MAL-ED       |NEPAL        |0       |    133|   228|
|FULL    |24 months |MAL-ED       |BRAZIL       |1       |     80|   169|
|FULL    |24 months |MAL-ED       |BRAZIL       |0       |     89|   169|
|FULL    |24 months |MAL-ED       |TANZANIA     |1       |    180|   214|
|FULL    |24 months |MAL-ED       |TANZANIA     |0       |     34|   214|
|FULL    |24 months |MAL-ED       |SOUTH AFRICA |1       |    144|   235|
|FULL    |24 months |MAL-ED       |SOUTH AFRICA |0       |     91|   235|
|FULL    |24 months |NIH-Crypto   |BANGLADESH   |1       |    443|   514|
|FULL    |24 months |NIH-Crypto   |BANGLADESH   |0       |     71|   514|
|FULL    |24 months |ZVITAMBO     |ZIMBABWE     |1       |    201|   379|
|FULL    |24 months |ZVITAMBO     |ZIMBABWE     |0       |    178|   379|
|QI      |Birth     |EE           |PAKISTAN     |1       |     81|   364|
|QI      |Birth     |EE           |PAKISTAN     |0       |    283|   364|
|QI      |Birth     |GMS-Nepal    |NEPAL        |1       |    171|   629|
|QI      |Birth     |GMS-Nepal    |NEPAL        |0       |    458|   629|
|QI      |Birth     |JiVitA-3     |BANGLADESH   |1       |    139| 11242|
|QI      |Birth     |JiVitA-3     |BANGLADESH   |0       |  11103| 11242|
|QI      |Birth     |JiVitA-4     |BANGLADESH   |1       |    476|   734|
|QI      |Birth     |JiVitA-4     |BANGLADESH   |0       |    258|   734|
|QI      |Birth     |MAL-ED       |INDIA        |1       |    128|   243|
|QI      |Birth     |MAL-ED       |INDIA        |0       |    115|   243|
|QI      |Birth     |MAL-ED       |BANGLADESH   |1       |    157|   261|
|QI      |Birth     |MAL-ED       |BANGLADESH   |0       |    104|   261|
|QI      |Birth     |MAL-ED       |PERU         |1       |    220|   302|
|QI      |Birth     |MAL-ED       |PERU         |0       |     82|   302|
|QI      |Birth     |MAL-ED       |NEPAL        |1       |     82|   236|
|QI      |Birth     |MAL-ED       |NEPAL        |0       |    154|   236|
|QI      |Birth     |MAL-ED       |BRAZIL       |1       |    118|   233|
|QI      |Birth     |MAL-ED       |BRAZIL       |0       |    115|   233|
|QI      |Birth     |MAL-ED       |TANZANIA     |1       |    176|   208|
|QI      |Birth     |MAL-ED       |TANZANIA     |0       |     32|   208|
|QI      |Birth     |MAL-ED       |SOUTH AFRICA |1       |    177|   294|
|QI      |Birth     |MAL-ED       |SOUTH AFRICA |0       |    117|   294|
|QI      |Birth     |NIH-Crypto   |BANGLADESH   |1       |    647|   756|
|QI      |Birth     |NIH-Crypto   |BANGLADESH   |0       |    109|   756|
|QI      |Birth     |SAS-CompFeed |INDIA        |1       |      1|   378|
|QI      |Birth     |SAS-CompFeed |INDIA        |0       |    377|   378|
|QI      |Birth     |ZVITAMBO     |ZIMBABWE     |1       |   6306| 11418|
|QI      |Birth     |ZVITAMBO     |ZIMBABWE     |0       |   5112| 11418|
|QI      |6 months  |EE           |PAKISTAN     |1       |     72|   331|
|QI      |6 months  |EE           |PAKISTAN     |0       |    259|   331|
|QI      |6 months  |GMS-Nepal    |NEPAL        |1       |    137|   508|
|QI      |6 months  |GMS-Nepal    |NEPAL        |0       |    371|   508|
|QI      |6 months  |JiVitA-3     |BANGLADESH   |1       |      7|  4852|
|QI      |6 months  |JiVitA-3     |BANGLADESH   |0       |   4845|  4852|
|QI      |6 months  |JiVitA-4     |BANGLADESH   |1       |    503|   846|
|QI      |6 months  |JiVitA-4     |BANGLADESH   |0       |    343|   846|
|QI      |6 months  |MAL-ED       |INDIA        |1       |    121|   235|
|QI      |6 months  |MAL-ED       |INDIA        |0       |    114|   235|
|QI      |6 months  |MAL-ED       |BANGLADESH   |1       |    148|   248|
|QI      |6 months  |MAL-ED       |BANGLADESH   |0       |    100|   248|
|QI      |6 months  |MAL-ED       |PERU         |1       |    195|   269|
|QI      |6 months  |MAL-ED       |PERU         |0       |     74|   269|
|QI      |6 months  |MAL-ED       |NEPAL        |1       |     78|   222|
|QI      |6 months  |MAL-ED       |NEPAL        |0       |    144|   222|
|QI      |6 months  |MAL-ED       |BRAZIL       |1       |    108|   215|
|QI      |6 months  |MAL-ED       |BRAZIL       |0       |    107|   215|
|QI      |6 months  |MAL-ED       |TANZANIA     |1       |    202|   243|
|QI      |6 months  |MAL-ED       |TANZANIA     |0       |     41|   243|
|QI      |6 months  |MAL-ED       |SOUTH AFRICA |1       |    160|   269|
|QI      |6 months  |MAL-ED       |SOUTH AFRICA |0       |    109|   269|
|QI      |6 months  |NIH-Crypto   |BANGLADESH   |1       |    459|   537|
|QI      |6 months  |NIH-Crypto   |BANGLADESH   |0       |     78|   537|
|QI      |6 months  |SAS-CompFeed |INDIA        |1       |      3|   273|
|QI      |6 months  |SAS-CompFeed |INDIA        |0       |    270|   273|
|QI      |6 months  |ZVITAMBO     |ZIMBABWE     |1       |   3119|  5563|
|QI      |6 months  |ZVITAMBO     |ZIMBABWE     |0       |   2444|  5563|
|QI      |24 months |EE           |PAKISTAN     |1       |     19|   107|
|QI      |24 months |EE           |PAKISTAN     |0       |     88|   107|
|QI      |24 months |GMS-Nepal    |NEPAL        |1       |     50|   186|
|QI      |24 months |GMS-Nepal    |NEPAL        |0       |    136|   186|
|QI      |24 months |JiVitA-3     |BANGLADESH   |1       |      0|     6|
|QI      |24 months |JiVitA-3     |BANGLADESH   |0       |      6|     6|
|QI      |24 months |JiVitA-4     |BANGLADESH   |1       |     38|    58|
|QI      |24 months |JiVitA-4     |BANGLADESH   |0       |     20|    58|
|QI      |24 months |MAL-ED       |INDIA        |1       |     58|   102|
|QI      |24 months |MAL-ED       |INDIA        |0       |     44|   102|
|QI      |24 months |MAL-ED       |BANGLADESH   |1       |     62|    97|
|QI      |24 months |MAL-ED       |BANGLADESH   |0       |     35|    97|
|QI      |24 months |MAL-ED       |PERU         |1       |     49|    67|
|QI      |24 months |MAL-ED       |PERU         |0       |     18|    67|
|QI      |24 months |MAL-ED       |NEPAL        |1       |     36|   100|
|QI      |24 months |MAL-ED       |NEPAL        |0       |     64|   100|
|QI      |24 months |MAL-ED       |BRAZIL       |1       |     39|    71|
|QI      |24 months |MAL-ED       |BRAZIL       |0       |     32|    71|
|QI      |24 months |MAL-ED       |TANZANIA     |1       |     67|    80|
|QI      |24 months |MAL-ED       |TANZANIA     |0       |     13|    80|
|QI      |24 months |MAL-ED       |SOUTH AFRICA |1       |     54|    85|
|QI      |24 months |MAL-ED       |SOUTH AFRICA |0       |     31|    85|
|QI      |24 months |NIH-Crypto   |BANGLADESH   |1       |     38|    47|
|QI      |24 months |NIH-Crypto   |BANGLADESH   |0       |      9|    47|
|QI      |24 months |SAS-CompFeed |INDIA        |1       |      0|     3|
|QI      |24 months |SAS-CompFeed |INDIA        |0       |      3|     3|
|QI      |24 months |ZVITAMBO     |ZIMBABWE     |1       |     86|   130|
|QI      |24 months |ZVITAMBO     |ZIMBABWE     |0       |     44|   130|


The following strata were considered:

* syntype: BC, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: BC, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: BC, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: BC, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: BC, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: FULL, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* syntype: BC, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: SAS-CompFeed, country: INDIA





```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_gam_NULL_NULL_GCV.Cp
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


