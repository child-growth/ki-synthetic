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

**Intervention Variable:** exclfeed36

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

|agecat                      |studyid        |country                      |exclfeed36 | ever_wasted| n_cell|     n|
|:---------------------------|:--------------|:----------------------------|:----------|-----------:|------:|-----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1          |           0|      7|     9|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1          |           1|      2|     9|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0          |           0|      0|     9|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0          |           1|      0|     9|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |1          |           0|      3|     9|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |1          |           1|      1|     9|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |0          |           0|      3|     9|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |0          |           1|      2|     9|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1          |           0|    180|   524|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1          |           1|    240|   524|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0          |           0|     47|   524|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0          |           1|     57|   524|
|0-24 months (no birth wast) |IRC            |INDIA                        |1          |           0|      0|     4|
|0-24 months (no birth wast) |IRC            |INDIA                        |1          |           1|      0|     4|
|0-24 months (no birth wast) |IRC            |INDIA                        |0          |           0|      1|     4|
|0-24 months (no birth wast) |IRC            |INDIA                        |0          |           1|      3|     4|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1          |           0|   8049| 12568|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1          |           1|   1725| 12568|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0          |           0|   2263| 12568|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0          |           1|    531| 12568|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1          |           0|   2634|  4559|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1          |           1|    886|  4559|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0          |           0|    734|  4559|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0          |           1|    305|  4559|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |1          |           0|    405|  1974|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |1          |           1|    218|  1974|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |0          |           0|    789|  1974|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |0          |           1|    562|  1974|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |1          |           0|     42|   271|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |1          |           1|      5|   271|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |0          |           0|    204|   271|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |0          |           1|     20|   271|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |1          |           0|     27|   251|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |1          |           1|      6|   251|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |0          |           0|    167|   251|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |0          |           1|     51|   251|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |1          |           0|     16|   224|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |1          |           1|      0|   224|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |0          |           0|    195|   224|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |0          |           1|     13|   224|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |1          |           0|      5|   234|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |1          |           1|      5|   234|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |0          |           0|    140|   234|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |0          |           1|     84|   234|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |1          |           0|      4|   235|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |1          |           1|      0|   235|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |0          |           0|    185|   235|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |0          |           1|     46|   235|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |1          |           0|     10|   286|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |1          |           1|      0|   286|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |0          |           0|    255|   286|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |0          |           1|     21|   286|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |1          |           0|      4|   276|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |1          |           1|      0|   276|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |0          |           0|    227|   276|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |0          |           1|     45|   276|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1          |           0|      5|   250|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1          |           1|      0|   250|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0          |           0|    212|   250|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0          |           1|     33|   250|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1          |           0|    138|   635|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1          |           1|     24|   635|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0          |           0|    377|   635|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0          |           1|     96|   635|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |1          |           0|      0|   173|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |1          |           1|      0|   173|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |0          |           0|    117|   173|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |0          |           1|     56|   173|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |1          |           0|      7|     8|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |1          |           1|      1|     8|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |0          |           0|      0|     8|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |0          |           1|      0|     8|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |1          |           0|      3|     9|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |1          |           1|      1|     9|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |0          |           0|      4|     9|
|0-6 months (no birth wast)  |EE             |PAKISTAN                     |0          |           1|      1|     9|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |1          |           0|    318|   510|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |1          |           1|     92|   510|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |0          |           0|     75|   510|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |0          |           1|     25|   510|
|0-6 months (no birth wast)  |IRC            |INDIA                        |1          |           0|      0|     4|
|0-6 months (no birth wast)  |IRC            |INDIA                        |1          |           1|      0|     4|
|0-6 months (no birth wast)  |IRC            |INDIA                        |0          |           0|      3|     4|
|0-6 months (no birth wast)  |IRC            |INDIA                        |0          |           1|      1|     4|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |1          |           0|   9008| 12458|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |1          |           1|    684| 12458|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |0          |           0|   2554| 12458|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH                   |0          |           1|    212| 12458|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |1          |           0|   3375|  4433|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |1          |           1|     89|  4433|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |0          |           0|    936|  4433|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH                   |0          |           1|     33|  4433|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |1          |           0|    558|  1960|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |1          |           1|     62|  1960|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |0          |           0|   1159|  1960|
|0-6 months (no birth wast)  |Keneba         |GAMBIA                       |0          |           1|    181|  1960|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI                       |1          |           0|     47|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI                       |1          |           1|      0|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI                       |0          |           0|    221|   268|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI                       |0          |           1|      0|   268|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |1          |           0|     32|   250|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |1          |           1|      1|   250|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |0          |           0|    200|   250|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |0          |           1|     17|   250|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |1          |           0|     16|   224|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |1          |           1|      0|   224|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |0          |           0|    200|   224|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |0          |           1|      8|   224|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |1          |           0|      7|   232|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |1          |           1|      3|   232|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |0          |           0|    188|   232|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |0          |           1|     34|   232|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |1          |           0|      4|   233|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |1          |           1|      0|   233|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |0          |           0|    213|   233|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |0          |           1|     16|   233|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |1          |           0|     10|   286|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |1          |           1|      0|   286|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |0          |           0|    271|   286|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |0          |           1|      5|   286|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |1          |           0|      4|   275|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |1          |           1|      0|   275|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |0          |           0|    257|   275|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |0          |           1|     14|   275|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1          |           0|      5|   250|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1          |           1|      0|   250|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0          |           0|    235|   250|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0          |           1|     10|   250|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |1          |           0|    157|   631|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |1          |           1|      5|   631|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |0          |           0|    439|   631|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |0          |           1|     30|   631|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA                        |1          |           0|      0|   137|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA                        |1          |           1|      0|   137|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA                        |0          |           0|    137|   137|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA                        |0          |           1|      0|   137|


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
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/34f91d98-de5e-42c2-9671-7414c0b7d6a4/23fe4bd6-8853-471c-a0c7-716d75b2c732/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/34f91d98-de5e-42c2-9671-7414c0b7d6a4/23fe4bd6-8853-471c-a0c7-716d75b2c732/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/34f91d98-de5e-42c2-9671-7414c0b7d6a4/23fe4bd6-8853-471c-a0c7-716d75b2c732/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/34f91d98-de5e-42c2-9671-7414c0b7d6a4/23fe4bd6-8853-471c-a0c7-716d75b2c732/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |NA             | 0.5734228| 0.5260298| 0.6208157|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |0                  |NA             | 0.5396604| 0.4428894| 0.6364315|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |NA             | 0.1770857| 0.1686687| 0.1855027|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |0                  |NA             | 0.1880671| 0.1710128| 0.2051215|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |1                  |NA             | 0.2544882| 0.2371336| 0.2718428|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |0                  |NA             | 0.2836247| 0.2521149| 0.3151346|
|0-24 months (no birth wast) |Keneba    |GAMBIA     |1                  |NA             | 0.3499539| 0.3122817| 0.3876261|
|0-24 months (no birth wast) |Keneba    |GAMBIA     |0                  |NA             | 0.4171163| 0.3909718| 0.4432607|
|0-24 months (no birth wast) |LCNI-5    |MALAWI     |1                  |NA             | 0.1063830| 0.0180722| 0.1946938|
|0-24 months (no birth wast) |LCNI-5    |MALAWI     |0                  |NA             | 0.0892857| 0.0518739| 0.1266975|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |1                  |NA             | 0.1818182| 0.0499617| 0.3136747|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |0                  |NA             | 0.2339450| 0.1776365| 0.2902534|
|0-24 months (no birth wast) |MAL-ED    |INDIA      |1                  |NA             | 0.5000000| 0.1894382| 0.8105618|
|0-24 months (no birth wast) |MAL-ED    |INDIA      |0                  |NA             | 0.3750000| 0.3114655| 0.4385345|
|0-24 months (no birth wast) |PROVIDE   |BANGLADESH |1                  |NA             | 0.1482973| 0.0931769| 0.2034177|
|0-24 months (no birth wast) |PROVIDE   |BANGLADESH |0                  |NA             | 0.2029982| 0.1666824| 0.2393141|
|0-6 months (no birth wast)  |GMS-Nepal |NEPAL      |1                  |NA             | 0.2254126| 0.1848559| 0.2659692|
|0-6 months (no birth wast)  |GMS-Nepal |NEPAL      |0                  |NA             | 0.2476717| 0.1625845| 0.3327588|
|0-6 months (no birth wast)  |JiVitA-3  |BANGLADESH |1                  |NA             | 0.0703836| 0.0646683| 0.0760988|
|0-6 months (no birth wast)  |JiVitA-3  |BANGLADESH |0                  |NA             | 0.0775072| 0.0652848| 0.0897295|
|0-6 months (no birth wast)  |JiVitA-4  |BANGLADESH |1                  |NA             | 0.0253691| 0.0190793| 0.0316590|
|0-6 months (no birth wast)  |JiVitA-4  |BANGLADESH |0                  |NA             | 0.0357498| 0.0223739| 0.0491256|
|0-6 months (no birth wast)  |Keneba    |GAMBIA     |1                  |NA             | 0.1003805| 0.0768033| 0.1239576|
|0-6 months (no birth wast)  |Keneba    |GAMBIA     |0                  |NA             | 0.1359444| 0.1176571| 0.1542318|
|0-6 months (no birth wast)  |PROVIDE   |BANGLADESH |1                  |NA             | 0.0308642| 0.0042107| 0.0575177|
|0-6 months (no birth wast)  |PROVIDE   |BANGLADESH |0                  |NA             | 0.0639659| 0.0418030| 0.0861288|


### Parameter: E(Y)


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |NA                 |NA             | 0.5667939| 0.5243264| 0.6092614|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |NA                 |NA             | 0.1795035| 0.1720409| 0.1869661|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |NA                 |NA             | 0.2612415| 0.2461119| 0.2763711|
|0-24 months (no birth wast) |Keneba    |GAMBIA     |NA                 |NA             | 0.3951368| 0.3735650| 0.4167086|
|0-24 months (no birth wast) |LCNI-5    |MALAWI     |NA                 |NA             | 0.0922509| 0.0577338| 0.1267680|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |NA                 |NA             | 0.2270916| 0.1751587| 0.2790245|
|0-24 months (no birth wast) |MAL-ED    |INDIA      |NA                 |NA             | 0.3803419| 0.3180067| 0.4426771|
|0-24 months (no birth wast) |PROVIDE   |BANGLADESH |NA                 |NA             | 0.1889764| 0.1585028| 0.2194500|
|0-6 months (no birth wast)  |GMS-Nepal |NEPAL      |NA                 |NA             | 0.2294118| 0.1928853| 0.2659383|
|0-6 months (no birth wast)  |JiVitA-3  |BANGLADESH |NA                 |NA             | 0.0719217| 0.0666549| 0.0771884|
|0-6 months (no birth wast)  |JiVitA-4  |BANGLADESH |NA                 |NA             | 0.0275209| 0.0219532| 0.0330885|
|0-6 months (no birth wast)  |Keneba    |GAMBIA     |NA                 |NA             | 0.1239796| 0.1093860| 0.1385732|
|0-6 months (no birth wast)  |PROVIDE   |BANGLADESH |NA                 |NA             | 0.0554675| 0.0375942| 0.0733408|


### Parameter: RR


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |0                  |1              | 0.9411213| 0.7725818| 1.146428|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |0                  |1              | 1.0620120| 0.9575110| 1.177918|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |0                  |1              | 1.1144906| 0.9801142| 1.267291|
|0-24 months (no birth wast) |Keneba    |GAMBIA     |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |Keneba    |GAMBIA     |0                  |1              | 1.1919178| 1.0527002| 1.349547|
|0-24 months (no birth wast) |LCNI-5    |MALAWI     |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |LCNI-5    |MALAWI     |0                  |1              | 0.8392857| 0.3311837| 2.126918|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |0                  |1              | 1.2866972| 0.5992775| 2.762643|
|0-24 months (no birth wast) |MAL-ED    |INDIA      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |MAL-ED    |INDIA      |0                  |1              | 0.7500000| 0.3939629| 1.427799|
|0-24 months (no birth wast) |PROVIDE   |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |PROVIDE   |BANGLADESH |0                  |1              | 1.3688594| 0.9060918| 2.067976|
|0-6 months (no birth wast)  |GMS-Nepal |NEPAL      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |GMS-Nepal |NEPAL      |0                  |1              | 1.0987483| 0.7458607| 1.618597|
|0-6 months (no birth wast)  |JiVitA-3  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |JiVitA-3  |BANGLADESH |0                  |1              | 1.1012113| 0.9235825| 1.313003|
|0-6 months (no birth wast)  |JiVitA-4  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |JiVitA-4  |BANGLADESH |0                  |1              | 1.4091824| 0.8891316| 2.233410|
|0-6 months (no birth wast)  |Keneba    |GAMBIA     |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |Keneba    |GAMBIA     |0                  |1              | 1.3542920| 1.0333385| 1.774933|
|0-6 months (no birth wast)  |PROVIDE   |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |PROVIDE   |BANGLADESH |0                  |1              | 2.0724947| 0.8173110| 5.255324|


### Parameter: PAR


|agecat                      |studyid   |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |NA             | -0.0066289| -0.0278617| 0.0146039|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |NA             |  0.0024178| -0.0018579| 0.0066935|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |1                  |NA             |  0.0067533| -0.0015354| 0.0150419|
|0-24 months (no birth wast) |Keneba    |GAMBIA     |1                  |NA             |  0.0451829|  0.0137533| 0.0766125|
|0-24 months (no birth wast) |LCNI-5    |MALAWI     |1                  |NA             | -0.0141321| -0.0934107| 0.0651466|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |1                  |NA             |  0.0452735| -0.0792718| 0.1698187|
|0-24 months (no birth wast) |MAL-ED    |INDIA      |1                  |NA             | -0.1196581| -0.4231229| 0.1838066|
|0-24 months (no birth wast) |PROVIDE   |BANGLADESH |1                  |NA             |  0.0406790| -0.0086101| 0.0899682|
|0-6 months (no birth wast)  |GMS-Nepal |NEPAL      |1                  |NA             |  0.0039992| -0.0145115| 0.0225099|
|0-6 months (no birth wast)  |JiVitA-3  |BANGLADESH |1                  |NA             |  0.0015381| -0.0014425| 0.0045187|
|0-6 months (no birth wast)  |JiVitA-4  |BANGLADESH |1                  |NA             |  0.0021517| -0.0010853| 0.0053887|
|0-6 months (no birth wast)  |Keneba    |GAMBIA     |1                  |NA             |  0.0235991|  0.0031732| 0.0440251|
|0-6 months (no birth wast)  |PROVIDE   |BANGLADESH |1                  |NA             |  0.0246033| -0.0011861| 0.0503927|


### Parameter: PAF


|agecat                      |studyid   |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |NA             | -0.0116954| -0.0498736| 0.0250945|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |NA             |  0.0134693| -0.0106190| 0.0369835|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |1                  |NA             |  0.0258507| -0.0064580| 0.0571223|
|0-24 months (no birth wast) |Keneba    |GAMBIA     |1                  |NA             |  0.1143475|  0.0310284| 0.1905022|
|0-24 months (no birth wast) |LCNI-5    |MALAWI     |1                  |NA             | -0.1531915| -1.4265796| 0.4519650|
|0-24 months (no birth wast) |MAL-ED    |BANGLADESH |1                  |NA             |  0.1993620| -0.5862897| 0.5958991|
|0-24 months (no birth wast) |MAL-ED    |INDIA      |1                  |NA             | -0.3146067| -1.4139018| 0.2840674|
|0-24 months (no birth wast) |PROVIDE   |BANGLADESH |1                  |NA             |  0.2152599| -0.0922001| 0.4361683|
|0-6 months (no birth wast)  |GMS-Nepal |NEPAL      |1                  |NA             |  0.0174324| -0.0666413| 0.0948793|
|0-6 months (no birth wast)  |JiVitA-3  |BANGLADESH |1                  |NA             |  0.0213859| -0.0207707| 0.0618014|
|0-6 months (no birth wast)  |JiVitA-4  |BANGLADESH |1                  |NA             |  0.0781850| -0.0475208| 0.1888058|
|0-6 months (no birth wast)  |Keneba    |GAMBIA     |1                  |NA             |  0.1903469|  0.0091955| 0.3383780|
|0-6 months (no birth wast)  |PROVIDE   |BANGLADESH |1                  |NA             |  0.4435626| -0.2356792| 0.7494313|
