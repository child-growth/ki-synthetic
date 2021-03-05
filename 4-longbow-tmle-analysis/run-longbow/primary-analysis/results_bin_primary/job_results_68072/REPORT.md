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

**Intervention Variable:** exclfeed6

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

|agecat                      |studyid        |country                      |exclfeed6 | ever_wasted| n_cell|     n|
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
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1         |           0|  10144| 15666|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1         |           1|   2041| 15666|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0         |           0|   2845| 15666|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0         |           1|    636| 15666|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1         |           0|   2742|  4722|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1         |           1|    924|  4722|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0         |           0|    747|  4722|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0         |           1|    309|  4722|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |1         |           0|    543|  2226|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |1         |           1|    280|  2226|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |0         |           0|    822|  2226|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |0         |           1|    581|  2226|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |1         |           0|     42|   271|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |1         |           1|      5|   271|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |0         |           0|    204|   271|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |0         |           1|     20|   271|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |1         |           0|     24|   233|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |1         |           1|      9|   233|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |0         |           0|    154|   233|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |0         |           1|     46|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |1         |           0|     12|   210|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |1         |           1|      0|   210|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |0         |           0|    185|   210|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |0         |           1|     13|   210|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |1         |           0|      1|   216|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |1         |           1|      1|   216|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |0         |           0|    135|   216|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |0         |           1|     79|   216|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |1         |           0|      4|   225|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |1         |           1|      1|   225|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |0         |           0|    175|   225|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |0         |           1|     45|   225|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |1         |           0|      5|   271|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |1         |           1|      0|   271|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |0         |           0|    245|   271|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |0         |           1|     21|   271|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |1         |           0|      0|   237|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |1         |           1|      0|   237|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |0         |           0|    196|   237|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |0         |           1|     41|   237|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1         |           0|      0|   235|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1         |           1|      0|   235|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0         |           0|    202|   235|
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
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |1         |           0|  11236| 15533|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |1         |           1|    848| 15533|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |0         |           0|   3180| 15533|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |0         |           1|    269| 15533|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |1         |           0|   3517|  4593|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |1         |           1|     92|  4593|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |0         |           0|    950|  4593|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |0         |           1|     34|  4593|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |1         |           0|    744|  2210|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |1         |           1|     74|  2210|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |0         |           0|   1204|  2210|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |0         |           1|    188|  2210|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI                       |1         |           0|     47|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI                       |1         |           1|      0|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI                       |0         |           0|    221|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI                       |0         |           1|      0|   268|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |1         |           0|     31|   232|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |1         |           1|      2|   232|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |0         |           0|    183|   232|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |0         |           1|     16|   232|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |1         |           0|     12|   210|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |1         |           1|      0|   210|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |0         |           0|    190|   210|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |0         |           1|      8|   210|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |1         |           0|      2|   215|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |1         |           1|      0|   215|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |0         |           0|    181|   215|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |0         |           1|     32|   215|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |1         |           0|      5|   223|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |1         |           1|      0|   223|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |0         |           0|    202|   223|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |0         |           1|     16|   223|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |1         |           0|      5|   271|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |1         |           1|      0|   271|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |0         |           0|    261|   271|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |0         |           1|      5|   271|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |1         |           0|      0|   236|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |1         |           1|      0|   236|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |0         |           0|    223|   236|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |0         |           1|     13|   236|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1         |           0|      0|   235|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1         |           1|      0|   235|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0         |           0|    225|   235|
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
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
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
![](/tmp/7b79d98b-ed7b-47be-b976-31520c28bb9b/c963c96b-e649-426d-8f75-0cbbcddfb2cd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7b79d98b-ed7b-47be-b976-31520c28bb9b/c963c96b-e649-426d-8f75-0cbbcddfb2cd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7b79d98b-ed7b-47be-b976-31520c28bb9b/c963c96b-e649-426d-8f75-0cbbcddfb2cd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7b79d98b-ed7b-47be-b976-31520c28bb9b/c963c96b-e649-426d-8f75-0cbbcddfb2cd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid      |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:------------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL      |1                  |NA             | 0.5788978| 0.5317376| 0.6260581|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL      |0                  |NA             | 0.5347685| 0.4535330| 0.6160040|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH |1                  |NA             | 0.1681369| 0.1609653| 0.1753085|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH |0                  |NA             | 0.1806078| 0.1664014| 0.1948143|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH |1                  |NA             | 0.2553907| 0.2385846| 0.2721967|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH |0                  |NA             | 0.2777381| 0.2461905| 0.3092857|
|0-24 months (no birth wast) |Keneba       |GAMBIA     |1                  |NA             | 0.3440287| 0.3116969| 0.3763605|
|0-24 months (no birth wast) |Keneba       |GAMBIA     |0                  |NA             | 0.4155871| 0.3899276| 0.4412466|
|0-24 months (no birth wast) |LCNI-5       |MALAWI     |1                  |NA             | 0.1063830| 0.0180722| 0.1946938|
|0-24 months (no birth wast) |LCNI-5       |MALAWI     |0                  |NA             | 0.0892857| 0.0518739| 0.1266975|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH |1                  |NA             | 0.2727273| 0.1204490| 0.4250056|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH |0                  |NA             | 0.2300000| 0.1715511| 0.2884489|
|0-24 months (no birth wast) |PROVIDE      |BANGLADESH |1                  |NA             | 0.1458407| 0.0931144| 0.1985670|
|0-24 months (no birth wast) |PROVIDE      |BANGLADESH |0                  |NA             | 0.2020123| 0.1628303| 0.2411944|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA      |1                  |NA             | 0.3749192| 0.3179202| 0.4319182|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA      |0                  |NA             | 0.4616077| 0.3160035| 0.6072120|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL      |1                  |NA             | 0.2113633| 0.1715498| 0.2511768|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL      |0                  |NA             | 0.2369560| 0.1654497| 0.3084622|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH |1                  |NA             | 0.0700416| 0.0649254| 0.0751579|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH |0                  |NA             | 0.0779663| 0.0681408| 0.0877918|
|0-6 months (no birth wast)  |JiVitA-4     |BANGLADESH |1                  |NA             | 0.0251011| 0.0189389| 0.0312633|
|0-6 months (no birth wast)  |JiVitA-4     |BANGLADESH |0                  |NA             | 0.0356844| 0.0225039| 0.0488650|
|0-6 months (no birth wast)  |Keneba       |GAMBIA     |1                  |NA             | 0.0896061| 0.0699097| 0.1093025|
|0-6 months (no birth wast)  |Keneba       |GAMBIA     |0                  |NA             | 0.1355152| 0.1175219| 0.1535084|
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
|0-24 months (no birth wast) |PROVIDE      |BANGLADESH |NA                 |NA             | 0.1775837| 0.1489858| 0.2061816|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA      |NA                 |NA             | 0.3792325| 0.3255512| 0.4329138|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL      |NA                 |NA             | 0.2187500| 0.1839790| 0.2535210|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH |NA                 |NA             | 0.0719114| 0.0672720| 0.0765508|
|0-6 months (no birth wast)  |JiVitA-4     |BANGLADESH |NA                 |NA             | 0.0274331| 0.0219967| 0.0328694|
|0-6 months (no birth wast)  |Keneba       |GAMBIA     |NA                 |NA             | 0.1185520| 0.1050716| 0.1320324|
|0-6 months (no birth wast)  |PROVIDE      |BANGLADESH |NA                 |NA             | 0.0541728| 0.0371844| 0.0711612|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA      |NA                 |NA             | 0.1258581| 0.0910745| 0.1606418|


### Parameter: RR


|agecat                      |studyid      |country    |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:---------------------------|:------------|:----------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL      |0                  |1              | 0.9237701| 0.7786840| 1.095889|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH |0                  |1              | 1.0741713| 0.9813114| 1.175818|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH |0                  |1              | 1.0875030| 0.9547723| 1.238686|
|0-24 months (no birth wast) |Keneba       |GAMBIA     |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |Keneba       |GAMBIA     |0                  |1              | 1.2080013| 1.0803165| 1.350777|
|0-24 months (no birth wast) |LCNI-5       |MALAWI     |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |LCNI-5       |MALAWI     |0                  |1              | 0.8392857| 0.3311837| 2.126918|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH |0                  |1              | 0.8433333| 0.4566411| 1.557484|
|0-24 months (no birth wast) |PROVIDE      |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |PROVIDE      |BANGLADESH |0                  |1              | 1.3851570| 0.9183558| 2.089234|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA      |0                  |1              | 1.2312192| 0.8795362| 1.723523|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL      |0                  |1              | 1.1210840| 0.7854055| 1.600230|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH |0                  |1              | 1.1131421| 0.9654849| 1.283381|
|0-6 months (no birth wast)  |JiVitA-4     |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |JiVitA-4     |BANGLADESH |0                  |1              | 1.4216279| 0.9018163| 2.241062|
|0-6 months (no birth wast)  |Keneba       |GAMBIA     |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |Keneba       |GAMBIA     |0                  |1              | 1.5123430| 1.1705960| 1.953861|
|0-6 months (no birth wast)  |PROVIDE      |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |PROVIDE      |BANGLADESH |0                  |1              | 2.1545643| 0.9124937| 5.087320|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA      |0                  |1              | 1.8863636| 0.8915751| 3.991103|


### Parameter: PAR


|agecat                      |studyid      |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:------------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL      |1                  |NA             | -0.0110407| -0.0347566| 0.0126752|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH |1                  |NA             |  0.0027427| -0.0008260| 0.0063115|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH |1                  |NA             |  0.0057275| -0.0021617| 0.0136167|
|0-24 months (no birth wast) |Keneba       |GAMBIA     |1                  |NA             |  0.0427638|  0.0167184| 0.0688091|
|0-24 months (no birth wast) |LCNI-5       |MALAWI     |1                  |NA             | -0.0141321| -0.0934107| 0.0651466|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH |1                  |NA             | -0.0366758| -0.1766977| 0.1033462|
|0-24 months (no birth wast) |PROVIDE      |BANGLADESH |1                  |NA             |  0.0317430| -0.0151931| 0.0786790|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA      |1                  |NA             |  0.0043133| -0.0046855| 0.0133121|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL      |1                  |NA             |  0.0073867| -0.0133734| 0.0281469|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH |1                  |NA             |  0.0018698| -0.0005442| 0.0042838|
|0-6 months (no birth wast)  |JiVitA-4     |BANGLADESH |1                  |NA             |  0.0023319| -0.0007874| 0.0054513|
|0-6 months (no birth wast)  |Keneba       |GAMBIA     |1                  |NA             |  0.0289459|  0.0121177| 0.0457741|
|0-6 months (no birth wast)  |PROVIDE      |BANGLADESH |1                  |NA             |  0.0243220|  0.0015921| 0.0470519|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA      |1                  |NA             |  0.0053762| -0.0018898| 0.0126422|


### Parameter: PAF


|agecat                      |studyid      |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:------------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal    |NEPAL      |1                  |NA             | -0.0194427| -0.0621170| 0.0215170|
|0-24 months (no birth wast) |JiVitA-3     |BANGLADESH |1                  |NA             |  0.0160506| -0.0050470| 0.0367053|
|0-24 months (no birth wast) |JiVitA-4     |BANGLADESH |1                  |NA             |  0.0219346| -0.0087775| 0.0517116|
|0-24 months (no birth wast) |Keneba       |GAMBIA     |1                  |NA             |  0.1105600|  0.0405924| 0.1754249|
|0-24 months (no birth wast) |LCNI-5       |MALAWI     |1                  |NA             | -0.1531915| -1.4265796| 0.4519650|
|0-24 months (no birth wast) |MAL-ED       |BANGLADESH |1                  |NA             | -0.1553719| -0.9300888| 0.3083820|
|0-24 months (no birth wast) |PROVIDE      |BANGLADESH |1                  |NA             |  0.1787493| -0.1316388| 0.4040036|
|0-24 months (no birth wast) |SAS-CompFeed |INDIA      |1                  |NA             |  0.0113737| -0.0131809| 0.0353333|
|0-6 months (no birth wast)  |GMS-Nepal    |NEPAL      |1                  |NA             |  0.0337679| -0.0658950| 0.1241123|
|0-6 months (no birth wast)  |JiVitA-3     |BANGLADESH |1                  |NA             |  0.0260011| -0.0081055| 0.0589539|
|0-6 months (no birth wast)  |JiVitA-4     |BANGLADESH |1                  |NA             |  0.0850051| -0.0367434| 0.1924562|
|0-6 months (no birth wast)  |Keneba       |GAMBIA     |1                  |NA             |  0.2441622|  0.0904304| 0.3719109|
|0-6 months (no birth wast)  |PROVIDE      |BANGLADESH |1                  |NA             |  0.4489714| -0.1322414| 0.7318305|
|0-6 months (no birth wast)  |SAS-CompFeed |INDIA      |1                  |NA             |  0.0427163| -0.0166271| 0.0985957|
