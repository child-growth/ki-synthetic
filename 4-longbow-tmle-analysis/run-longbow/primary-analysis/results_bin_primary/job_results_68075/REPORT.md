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

**Intervention Variable:** predexfd6

**Adjustment Set:**

* arm
* sex
* brthmon
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
* month
* W_parity
* impfloor
* impsan
* safeh20
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
* delta_month
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid        |country                      |predexfd6 | ever_wasted| n_cell|     n|
|:---------------------------|:--------------|:----------------------------|:---------|-----------:|------:|-----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1         |           0|     11|    19|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1         |           1|      8|    19|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0         |           0|      0|    19|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0         |           1|      0|    19|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |1         |           0|     21|    48|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |1         |           1|     22|    48|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |0         |           0|      3|    48|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |0         |           1|      2|    48|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1         |           0|    176|   560|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1         |           1|    241|   560|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0         |           0|     66|   560|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0         |           1|     77|   560|
|0-24 months (no birth wast) |IRC            |INDIA                        |1         |           0|      0|    14|
|0-24 months (no birth wast) |IRC            |INDIA                        |1         |           1|      0|    14|
|0-24 months (no birth wast) |IRC            |INDIA                        |0         |           0|      5|    14|
|0-24 months (no birth wast) |IRC            |INDIA                        |0         |           1|      9|    14|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1         |           0|  10160| 15666|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1         |           1|   2046| 15666|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0         |           0|   2829| 15666|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0         |           1|    631| 15666|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1         |           0|   2753|  4722|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1         |           1|    927|  4722|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0         |           0|    736|  4722|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0         |           1|    306|  4722|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |1         |           0|    543|  2226|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |1         |           1|    280|  2226|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |0         |           0|    822|  2226|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |0         |           1|    581|  2226|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |1         |           0|     42|   271|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |1         |           1|      5|   271|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |0         |           0|    204|   271|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |0         |           1|     20|   271|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |1         |           0|     62|   233|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |1         |           1|     23|   233|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |0         |           0|    116|   233|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |0         |           1|     32|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |1         |           0|     29|   210|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |1         |           1|      1|   210|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |0         |           0|    168|   210|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |0         |           1|     12|   210|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |1         |           0|     10|   216|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |1         |           1|      1|   216|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |0         |           0|    126|   216|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |0         |           1|     79|   216|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |1         |           0|     10|   225|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |1         |           1|      2|   225|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |0         |           0|    169|   225|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |0         |           1|     44|   225|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |1         |           0|     87|   271|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |1         |           1|      5|   271|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |0         |           0|    163|   271|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |0         |           1|     16|   271|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |1         |           0|      3|   237|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |1         |           1|      0|   237|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |0         |           0|    193|   237|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |0         |           1|     41|   237|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1         |           0|      1|   235|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1         |           1|      0|   235|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0         |           0|    201|   235|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0         |           1|     33|   235|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1         |           0|    176|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1         |           1|     25|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0         |           0|    389|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0         |           1|     97|   687|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |1         |           0|    263|   443|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |1         |           1|    158|   443|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |0         |           0|     12|   443|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |0         |           1|     10|   443|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |1         |           0|      0|   173|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |1         |           1|      0|   173|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |0         |           0|    117|   173|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |0         |           1|     56|   173|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |1         |           0|     12|    17|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |1         |           1|      5|    17|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |0         |           0|      0|    17|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |0         |           1|      0|    17|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |1         |           0|     36|    47|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |1         |           1|      6|    47|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |0         |           0|      4|    47|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |0         |           1|      1|    47|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |1         |           0|    320|   544|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |1         |           1|     86|   544|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |0         |           0|    105|   544|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |0         |           1|     33|   544|
|0-6 months (no birth wast)  |IRC            |INDIA                        |1         |           0|      0|    13|
|0-6 months (no birth wast)  |IRC            |INDIA                        |1         |           1|      0|    13|
|0-6 months (no birth wast)  |IRC            |INDIA                        |0         |           0|      6|    13|
|0-6 months (no birth wast)  |IRC            |INDIA                        |0         |           1|      7|    13|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |1         |           0|  11256| 15533|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |1         |           1|    849| 15533|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |0         |           0|   3160| 15533|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |0         |           1|    268| 15533|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |1         |           0|   3530|  4593|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |1         |           1|     92|  4593|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |0         |           0|    937|  4593|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |0         |           1|     34|  4593|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |1         |           0|    744|  2210|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |1         |           1|     74|  2210|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |0         |           0|   1204|  2210|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |0         |           1|    188|  2210|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI                       |1         |           0|     47|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI                       |1         |           1|      0|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI                       |0         |           0|    221|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI                       |0         |           1|      0|   268|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |1         |           0|     79|   232|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |1         |           1|      6|   232|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |0         |           0|    135|   232|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |0         |           1|     12|   232|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |1         |           0|     29|   210|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |1         |           1|      1|   210|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |0         |           0|    173|   210|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |0         |           1|      7|   210|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |1         |           0|     11|   215|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |1         |           1|      0|   215|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |0         |           0|    172|   215|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |0         |           1|     32|   215|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |1         |           0|     12|   223|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |1         |           1|      0|   223|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |0         |           0|    195|   223|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |0         |           1|     16|   223|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |1         |           0|     90|   271|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |1         |           1|      2|   271|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |0         |           0|    176|   271|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |0         |           1|      3|   271|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |1         |           0|      3|   236|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |1         |           1|      0|   236|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |0         |           0|    220|   236|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |0         |           1|     13|   236|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1         |           0|      1|   235|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1         |           1|      0|   235|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0         |           0|    224|   235|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0         |           1|     10|   235|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |1         |           0|    195|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |1         |           1|      6|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |0         |           0|    451|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |0         |           1|     31|   683|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |1         |           0|    365|   437|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |1         |           1|     50|   437|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |0         |           0|     17|   437|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA                        |0         |           1|      5|   437|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA                        |1         |           0|      0|   137|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA                        |1         |           1|      0|   137|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA                        |0         |           0|    137|   137|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA                        |0         |           1|      0|   137|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
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
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
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
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/116b8d30-07e3-4af8-bb80-140b2b6e14c2/69026195-6a03-4d1e-885a-9925a141c3d5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/116b8d30-07e3-4af8-bb80-140b2b6e14c2/69026195-6a03-4d1e-885a-9925a141c3d5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/116b8d30-07e3-4af8-bb80-140b2b6e14c2/69026195-6a03-4d1e-885a-9925a141c3d5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/116b8d30-07e3-4af8-bb80-140b2b6e14c2/69026195-6a03-4d1e-885a-9925a141c3d5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid      |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:------------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL      |1                  |NA             | 0.5800037| 0.5327780| 0.6272295|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL      |0                  |NA             | 0.5314015| 0.4496527| 0.6131502|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH |1                  |NA             | 0.1682311| 0.1610679| 0.1753944|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH |0                  |NA             | 0.1797013| 0.1654818| 0.1939208|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH |1                  |NA             | 0.2543406| 0.2375569| 0.2711243|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH |0                  |NA             | 0.2827067| 0.2509190| 0.3144943|
|0-24 months (no birth wast) |Keneba       |GAMBIA     |1                  |NA             | 0.3423123| 0.3101241| 0.3745005|
|0-24 months (no birth wast) |Keneba       |GAMBIA     |0                  |NA             | 0.4160028| 0.3903314| 0.4416741|
|0-24 months (no birth wast) |LCNI-5       |MALAWI     |1                  |NA             | 0.1063830| 0.0180722| 0.1946938|
|0-24 months (no birth wast) |LCNI-5       |MALAWI     |0                  |NA             | 0.0892857| 0.0518739| 0.1266975|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH |1                  |NA             | 0.2674158| 0.1701632| 0.3646685|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH |0                  |NA             | 0.2203465| 0.1528582| 0.2878349|
|0-24 months (no birth wast) |MAL-ED       |PERU       |1                  |NA             | 0.0543478| 0.0079376| 0.1007581|
|0-24 months (no birth wast) |MAL-ED       |PERU       |0                  |NA             | 0.0893855| 0.0475133| 0.1312576|
|0-24 months (no birth wast) |PROVIDE      |BANGLADESH |1                  |NA             | 0.1449776| 0.0926438| 0.1973114|
|0-24 months (no birth wast) |PROVIDE      |BANGLADESH |0                  |NA             | 0.2003408| 0.1619573| 0.2387244|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA      |1                  |NA             | 0.3749192| 0.3179202| 0.4319182|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA      |0                  |NA             | 0.4616077| 0.3160035| 0.6072120|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL      |1                  |NA             | 0.2117416| 0.1719597| 0.2515235|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL      |0                  |NA             | 0.2389091| 0.1671453| 0.3106728|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH |1                  |NA             | 0.0700605| 0.0649471| 0.0751740|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH |0                  |NA             | 0.0782460| 0.0683622| 0.0881297|
|0-6 months (no birth wast)  |JiVitA-4     |BANGLADESH |1                  |NA             | 0.0250255| 0.0189330| 0.0311179|
|0-6 months (no birth wast)  |JiVitA-4     |BANGLADESH |0                  |NA             | 0.0361601| 0.0228750| 0.0494453|
|0-6 months (no birth wast)  |Keneba       |GAMBIA     |1                  |NA             | 0.0897515| 0.0699757| 0.1095272|
|0-6 months (no birth wast)  |Keneba       |GAMBIA     |0                  |NA             | 0.1367691| 0.1187137| 0.1548244|
|0-6 months (no birth wast)  |MAL-ED       |BANGLADESH |1                  |NA             | 0.0705882| 0.0160191| 0.1251573|
|0-6 months (no birth wast)  |MAL-ED       |BANGLADESH |0                  |NA             | 0.0816327| 0.0372751| 0.1259902|
|0-6 months (no birth wast)  |PROVIDE      |BANGLADESH |1                  |NA             | 0.0298507| 0.0063076| 0.0533939|
|0-6 months (no birth wast)  |PROVIDE      |BANGLADESH |0                  |NA             | 0.0643154| 0.0423992| 0.0862315|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA      |1                  |NA             | 0.1204819| 0.0857775| 0.1551864|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA      |0                  |NA             | 0.2272727| 0.0595457| 0.3949997|


### Parameter: E(Y)


|agecat                      |studyid      |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:------------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL      |NA                 |NA             | 0.5678571| 0.5267918| 0.6089225|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH |NA                 |NA             | 0.1708796| 0.1645476| 0.1772116|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH |NA                 |NA             | 0.2611182| 0.2462845| 0.2759518|
|0-24 months (no birth wast) |Keneba       |GAMBIA     |NA                 |NA             | 0.3867925| 0.3665564| 0.4070285|
|0-24 months (no birth wast) |LCNI-5       |MALAWI     |NA                 |NA             | 0.0922509| 0.0577338| 0.1267680|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH |NA                 |NA             | 0.2360515| 0.1814079| 0.2906951|
|0-24 months (no birth wast) |MAL-ED       |PERU       |NA                 |NA             | 0.0774908| 0.0455992| 0.1093824|
|0-24 months (no birth wast) |PROVIDE      |BANGLADESH |NA                 |NA             | 0.1775837| 0.1489858| 0.2061816|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA      |NA                 |NA             | 0.3792325| 0.3255512| 0.4329138|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL      |NA                 |NA             | 0.2187500| 0.1839790| 0.2535210|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH |NA                 |NA             | 0.0719114| 0.0672720| 0.0765508|
|0-6 months (no birth wast)  |JiVitA-4     |BANGLADESH |NA                 |NA             | 0.0274331| 0.0219967| 0.0328694|
|0-6 months (no birth wast)  |Keneba       |GAMBIA     |NA                 |NA             | 0.1185520| 0.1050716| 0.1320324|
|0-6 months (no birth wast)  |MAL-ED       |BANGLADESH |NA                 |NA             | 0.0775862| 0.0430879| 0.1120845|
|0-6 months (no birth wast)  |PROVIDE      |BANGLADESH |NA                 |NA             | 0.0541728| 0.0371844| 0.0711612|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA      |NA                 |NA             | 0.1258581| 0.0910745| 0.1606418|


### Parameter: RR


|agecat                      |studyid      |country    |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:---------------------------|:------------|:----------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL      |0                  |1              | 0.9162035| 0.7705675| 1.089365|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH |0                  |1              | 1.0681809| 0.9755109| 1.169654|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH |0                  |1              | 1.1115280| 0.9763426| 1.265431|
|0-24 months (no birth wast) |Keneba       |GAMBIA     |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |Keneba       |GAMBIA     |0                  |1              | 1.2152726| 1.0870695| 1.358595|
|0-24 months (no birth wast) |LCNI-5       |MALAWI     |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |LCNI-5       |MALAWI     |0                  |1              | 0.8392857| 0.3311837| 2.126918|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH |0                  |1              | 0.8239846| 0.5138141| 1.321394|
|0-24 months (no birth wast) |MAL-ED       |PERU       |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED       |PERU       |0                  |1              | 1.6446927| 0.6209888| 4.355979|
|0-24 months (no birth wast) |PROVIDE      |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |PROVIDE      |BANGLADESH |0                  |1              | 1.3818744| 0.9179648| 2.080229|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA      |0                  |1              | 1.2312191| 0.8795362| 1.723523|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL      |0                  |1              | 1.1283047| 0.7917333| 1.607955|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH |0                  |1              | 1.1168337| 0.9682615| 1.288203|
|0-6 months (no birth wast)  |JiVitA-4     |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |JiVitA-4     |BANGLADESH |0                  |1              | 1.4449349| 0.9191323| 2.271530|
|0-6 months (no birth wast)  |Keneba       |GAMBIA     |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |Keneba       |GAMBIA     |0                  |1              | 1.5238642| 1.1793211| 1.969067|
|0-6 months (no birth wast)  |MAL-ED       |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |MAL-ED       |BANGLADESH |0                  |1              | 1.1564626| 0.4495261| 2.975146|
|0-6 months (no birth wast)  |PROVIDE      |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |PROVIDE      |BANGLADESH |0                  |1              | 2.1545643| 0.9124937| 5.087320|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA      |0                  |1              | 1.8863636| 0.8915751| 3.991103|


### Parameter: PAR


|agecat                      |studyid      |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:------------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL      |1                  |NA             | -0.0121466| -0.0360909| 0.0117977|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH |1                  |NA             |  0.0026485| -0.0009037| 0.0062007|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH |1                  |NA             |  0.0067776| -0.0011239| 0.0146790|
|0-24 months (no birth wast) |Keneba       |GAMBIA     |1                  |NA             |  0.0444801|  0.0185851| 0.0703752|
|0-24 months (no birth wast) |LCNI-5       |MALAWI     |1                  |NA             | -0.0141321| -0.0934107| 0.0651466|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH |1                  |NA             | -0.0313643| -0.1078457| 0.0451170|
|0-24 months (no birth wast) |MAL-ED       |PERU       |1                  |NA             |  0.0231429| -0.0181917| 0.0644776|
|0-24 months (no birth wast) |PROVIDE      |BANGLADESH |1                  |NA             |  0.0326061| -0.0139806| 0.0791928|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA      |1                  |NA             |  0.0043133| -0.0046855| 0.0133121|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL      |1                  |NA             |  0.0070084| -0.0137180| 0.0277348|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH |1                  |NA             |  0.0018509| -0.0005623| 0.0042641|
|0-6 months (no birth wast)  |JiVitA-4     |BANGLADESH |1                  |NA             |  0.0024076| -0.0006831| 0.0054983|
|0-6 months (no birth wast)  |Keneba       |GAMBIA     |1                  |NA             |  0.0288006|  0.0119008| 0.0457003|
|0-6 months (no birth wast)  |MAL-ED       |BANGLADESH |1                  |NA             |  0.0069980| -0.0375657| 0.0515616|
|0-6 months (no birth wast)  |PROVIDE      |BANGLADESH |1                  |NA             |  0.0243220|  0.0015921| 0.0470519|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA      |1                  |NA             |  0.0053762| -0.0018898| 0.0126422|


### Parameter: PAF


|agecat                      |studyid      |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:------------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL      |1                  |NA             | -0.0213902| -0.0644925| 0.0199668|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH |1                  |NA             |  0.0154992| -0.0054992| 0.0360590|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH |1                  |NA             |  0.0259560| -0.0048110| 0.0557809|
|0-24 months (no birth wast) |Keneba       |GAMBIA     |1                  |NA             |  0.1149974|  0.0454326| 0.1794927|
|0-24 months (no birth wast) |LCNI-5       |MALAWI     |1                  |NA             | -0.1531915| -1.4265796| 0.4519650|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH |1                  |NA             | -0.1328707| -0.5068499| 0.1482921|
|0-24 months (no birth wast) |MAL-ED       |PERU       |1                  |NA             |  0.2986542| -0.4737013| 0.6662242|
|0-24 months (no birth wast) |PROVIDE      |BANGLADESH |1                  |NA             |  0.1836097| -0.1242586| 0.4071710|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA      |1                  |NA             |  0.0113737| -0.0131809| 0.0353333|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL      |1                  |NA             |  0.0320383| -0.0674359| 0.1222426|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH |1                  |NA             |  0.0257382| -0.0083549| 0.0586786|
|0-6 months (no birth wast)  |JiVitA-4     |BANGLADESH |1                  |NA             |  0.0877628| -0.0325087| 0.1940244|
|0-6 months (no birth wast)  |Keneba       |GAMBIA     |1                  |NA             |  0.2429360|  0.0884427| 0.3712454|
|0-6 months (no birth wast)  |MAL-ED       |BANGLADESH |1                  |NA             |  0.0901961| -0.7082806| 0.5154524|
|0-6 months (no birth wast)  |PROVIDE      |BANGLADESH |1                  |NA             |  0.4489714| -0.1322414| 0.7318305|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA      |1                  |NA             |  0.0427163| -0.0166271| 0.0985957|
