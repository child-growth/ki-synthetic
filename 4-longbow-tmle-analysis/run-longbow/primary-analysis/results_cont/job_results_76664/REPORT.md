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
* W_gagebrth
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
* delta_W_gagebrth
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

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid      |country      |earlybf | n_cell|     n|
|:---------|:------------|:------------|:-------|------:|-----:|
|Birth     |EE           |PAKISTAN     |1       |     39|   173|
|Birth     |EE           |PAKISTAN     |0       |    134|   173|
|Birth     |GMS-Nepal    |NEPAL        |1       |    160|   587|
|Birth     |GMS-Nepal    |NEPAL        |0       |    427|   587|
|Birth     |JiVitA-3     |BANGLADESH   |1       |    137| 17924|
|Birth     |JiVitA-3     |BANGLADESH   |0       |  17787| 17924|
|Birth     |JiVitA-4     |BANGLADESH   |1       |   1480|  2392|
|Birth     |JiVitA-4     |BANGLADESH   |0       |    912|  2392|
|Birth     |MAL-ED       |INDIA        |1       |     29|    45|
|Birth     |MAL-ED       |INDIA        |0       |     16|    45|
|Birth     |MAL-ED       |BANGLADESH   |1       |    127|   215|
|Birth     |MAL-ED       |BANGLADESH   |0       |     88|   215|
|Birth     |MAL-ED       |PERU         |1       |    172|   228|
|Birth     |MAL-ED       |PERU         |0       |     56|   228|
|Birth     |MAL-ED       |NEPAL        |1       |     10|    26|
|Birth     |MAL-ED       |NEPAL        |0       |     16|    26|
|Birth     |MAL-ED       |BRAZIL       |1       |     30|    62|
|Birth     |MAL-ED       |BRAZIL       |0       |     32|    62|
|Birth     |MAL-ED       |TANZANIA     |1       |     95|   115|
|Birth     |MAL-ED       |TANZANIA     |0       |     20|   115|
|Birth     |MAL-ED       |SOUTH AFRICA |1       |     65|   115|
|Birth     |MAL-ED       |SOUTH AFRICA |0       |     50|   115|
|Birth     |NIH-Crypto   |BANGLADESH   |1       |    621|   707|
|Birth     |NIH-Crypto   |BANGLADESH   |0       |     86|   707|
|Birth     |SAS-CompFeed |INDIA        |1       |     64|  1062|
|Birth     |SAS-CompFeed |INDIA        |0       |    998|  1062|
|Birth     |ZVITAMBO     |ZIMBABWE     |1       |   6137| 11514|
|Birth     |ZVITAMBO     |ZIMBABWE     |0       |   5377| 11514|
|6 months  |EE           |PAKISTAN     |1       |     81|   367|
|6 months  |EE           |PAKISTAN     |0       |    286|   367|
|6 months  |GMS-Nepal    |NEPAL        |1       |    145|   520|
|6 months  |GMS-Nepal    |NEPAL        |0       |    375|   520|
|6 months  |JiVitA-3     |BANGLADESH   |1       |     77| 16712|
|6 months  |JiVitA-3     |BANGLADESH   |0       |  16635| 16712|
|6 months  |JiVitA-4     |BANGLADESH   |1       |   2997|  4826|
|6 months  |JiVitA-4     |BANGLADESH   |0       |   1829|  4826|
|6 months  |MAL-ED       |INDIA        |1       |    142|   236|
|6 months  |MAL-ED       |INDIA        |0       |     94|   236|
|6 months  |MAL-ED       |BANGLADESH   |1       |    144|   241|
|6 months  |MAL-ED       |BANGLADESH   |0       |     97|   241|
|6 months  |MAL-ED       |PERU         |1       |    206|   273|
|6 months  |MAL-ED       |PERU         |0       |     67|   273|
|6 months  |MAL-ED       |NEPAL        |1       |     89|   236|
|6 months  |MAL-ED       |NEPAL        |0       |    147|   236|
|6 months  |MAL-ED       |BRAZIL       |1       |     97|   209|
|6 months  |MAL-ED       |BRAZIL       |0       |    112|   209|
|6 months  |MAL-ED       |TANZANIA     |1       |    199|   247|
|6 months  |MAL-ED       |TANZANIA     |0       |     48|   247|
|6 months  |MAL-ED       |SOUTH AFRICA |1       |    141|   250|
|6 months  |MAL-ED       |SOUTH AFRICA |0       |    109|   250|
|6 months  |NIH-Crypto   |BANGLADESH   |1       |    631|   715|
|6 months  |NIH-Crypto   |BANGLADESH   |0       |     84|   715|
|6 months  |SAS-CompFeed |INDIA        |1       |     73|  1298|
|6 months  |SAS-CompFeed |INDIA        |0       |   1225|  1298|
|6 months  |ZVITAMBO     |ZIMBABWE     |1       |   4109|  7578|
|6 months  |ZVITAMBO     |ZIMBABWE     |0       |   3469|  7578|
|24 months |EE           |PAKISTAN     |1       |     40|   164|
|24 months |EE           |PAKISTAN     |0       |    124|   164|
|24 months |GMS-Nepal    |NEPAL        |1       |    127|   450|
|24 months |GMS-Nepal    |NEPAL        |0       |    323|   450|
|24 months |JiVitA-3     |BANGLADESH   |1       |      3|  8569|
|24 months |JiVitA-3     |BANGLADESH   |0       |   8566|  8569|
|24 months |JiVitA-4     |BANGLADESH   |1       |   2948|  4729|
|24 months |JiVitA-4     |BANGLADESH   |0       |   1781|  4729|
|24 months |MAL-ED       |INDIA        |1       |    136|   227|
|24 months |MAL-ED       |INDIA        |0       |     91|   227|
|24 months |MAL-ED       |BANGLADESH   |1       |    129|   212|
|24 months |MAL-ED       |BANGLADESH   |0       |     83|   212|
|24 months |MAL-ED       |PERU         |1       |    157|   201|
|24 months |MAL-ED       |PERU         |0       |     44|   201|
|24 months |MAL-ED       |NEPAL        |1       |     85|   228|
|24 months |MAL-ED       |NEPAL        |0       |    143|   228|
|24 months |MAL-ED       |BRAZIL       |1       |     78|   169|
|24 months |MAL-ED       |BRAZIL       |0       |     91|   169|
|24 months |MAL-ED       |TANZANIA     |1       |    174|   214|
|24 months |MAL-ED       |TANZANIA     |0       |     40|   214|
|24 months |MAL-ED       |SOUTH AFRICA |1       |    135|   235|
|24 months |MAL-ED       |SOUTH AFRICA |0       |    100|   235|
|24 months |NIH-Crypto   |BANGLADESH   |1       |    452|   514|
|24 months |NIH-Crypto   |BANGLADESH   |0       |     62|   514|
|24 months |ZVITAMBO     |ZIMBABWE     |1       |    201|   374|
|24 months |ZVITAMBO     |ZIMBABWE     |0       |    173|   374|


The following strata were considered:

* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH





```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```


