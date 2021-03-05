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

**Outcome Variable:** ever_stunted

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

|agecat                     |studyid        |country                      |predexfd6 | ever_stunted| n_cell|     n|
|:--------------------------|:--------------|:----------------------------|:---------|------------:|------:|-----:|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |1         |            0|      1|    14|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |1         |            1|     13|    14|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |0         |            0|      0|    14|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |0         |            1|      0|    14|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |1         |            0|      4|    27|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |1         |            1|     19|    27|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |0         |            0|      2|    27|
|0-24 months (no birth st.) |EE             |PAKISTAN                     |0         |            1|      2|    27|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |1         |            0|    130|   471|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |1         |            1|    222|   471|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |0         |            0|     34|   471|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |0         |            1|     85|   471|
|0-24 months (no birth st.) |IRC            |INDIA                        |1         |            0|      0|    13|
|0-24 months (no birth st.) |IRC            |INDIA                        |1         |            1|      0|    13|
|0-24 months (no birth st.) |IRC            |INDIA                        |0         |            0|      4|    13|
|0-24 months (no birth st.) |IRC            |INDIA                        |0         |            1|      9|    13|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |1         |            0|   6247| 10809|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |1         |            1|   2191| 10809|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |0         |            0|   1776| 10809|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |0         |            1|    595| 10809|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |1         |            0|   1565|  3397|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |1         |            1|   1125|  3397|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |0         |            0|    393|  3397|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |0         |            1|    314|  3397|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |1         |            0|    401|  2023|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |1         |            1|    350|  2023|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |0         |            0|    566|  2023|
|0-24 months (no birth st.) |Keneba         |GAMBIA                       |0         |            1|    706|  2023|
|0-24 months (no birth st.) |LCNI-5         |MALAWI                       |1         |            0|     18|   175|
|0-24 months (no birth st.) |LCNI-5         |MALAWI                       |1         |            1|     12|   175|
|0-24 months (no birth st.) |LCNI-5         |MALAWI                       |0         |            0|     83|   175|
|0-24 months (no birth st.) |LCNI-5         |MALAWI                       |0         |            1|     62|   175|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |1         |            0|     32|   195|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |1         |            1|     40|   195|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |0         |            0|     58|   195|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |0         |            1|     65|   195|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL                       |1         |            0|     20|   185|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL                       |1         |            1|      4|   185|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL                       |0         |            0|    134|   185|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL                       |0         |            1|     27|   185|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |1         |            0|      1|   185|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |1         |            1|      7|   185|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |0         |            0|     82|   185|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |0         |            1|     95|   185|
|0-24 months (no birth st.) |MAL-ED         |NEPAL                        |1         |            0|      6|   199|
|0-24 months (no birth st.) |MAL-ED         |NEPAL                        |1         |            1|      5|   199|
|0-24 months (no birth st.) |MAL-ED         |NEPAL                        |0         |            0|    140|   199|
|0-24 months (no birth st.) |MAL-ED         |NEPAL                        |0         |            1|     48|   199|
|0-24 months (no birth st.) |MAL-ED         |PERU                         |1         |            0|     29|   237|
|0-24 months (no birth st.) |MAL-ED         |PERU                         |1         |            1|     53|   237|
|0-24 months (no birth st.) |MAL-ED         |PERU                         |0         |            0|     61|   237|
|0-24 months (no birth st.) |MAL-ED         |PERU                         |0         |            1|     94|   237|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA                 |1         |            0|      0|   212|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA                 |1         |            1|      1|   212|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA                 |0         |            0|     91|   212|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA                 |0         |            1|    120|   212|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1         |            0|      0|   197|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1         |            1|      1|   197|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0         |            0|     28|   197|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0         |            1|    168|   197|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |1         |            0|    132|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |1         |            1|     63|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |0         |            0|    263|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |0         |            1|    175|   633|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |1         |            0|    121|   326|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |1         |            1|    191|   326|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |0         |            0|      5|   326|
|0-24 months (no birth st.) |SAS-CompFeed   |INDIA                        |0         |            1|      9|   326|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA                        |1         |            0|      0|    95|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA                        |1         |            1|      0|    95|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA                        |0         |            0|     25|    95|
|0-24 months (no birth st.) |SAS-FoodSuppl  |INDIA                        |0         |            1|     70|    95|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |1         |            0|     11|    14|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |1         |            1|      3|    14|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |0         |            0|      0|    14|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |0         |            1|      0|    14|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |1         |            0|      8|    27|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |1         |            1|     15|    27|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |0         |            0|      3|    27|
|0-6 months (no birth st.)  |EE             |PAKISTAN                     |0         |            1|      1|    27|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |1         |            0|    286|   471|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |1         |            1|     66|   471|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |0         |            0|     88|   471|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |0         |            1|     31|   471|
|0-6 months (no birth st.)  |IRC            |INDIA                        |1         |            0|      0|    13|
|0-6 months (no birth st.)  |IRC            |INDIA                        |1         |            1|      0|    13|
|0-6 months (no birth st.)  |IRC            |INDIA                        |0         |            0|      8|    13|
|0-6 months (no birth st.)  |IRC            |INDIA                        |0         |            1|      5|    13|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |1         |            0|   7290| 10806|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |1         |            1|   1146| 10806|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |0         |            0|   2061| 10806|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |0         |            1|    309| 10806|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |1         |            0|   2442|  3369|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |1         |            1|    237|  3369|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |0         |            0|    615|  3369|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |0         |            1|     75|  3369|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |1         |            0|    582|  2023|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |1         |            1|    169|  2023|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |0         |            0|    923|  2023|
|0-6 months (no birth st.)  |Keneba         |GAMBIA                       |0         |            1|    349|  2023|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI                       |1         |            0|     30|   175|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI                       |1         |            1|      0|   175|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI                       |0         |            0|    145|   175|
|0-6 months (no birth st.)  |LCNI-5         |MALAWI                       |0         |            1|      0|   175|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |1         |            0|     60|   195|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |1         |            1|     12|   195|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |0         |            0|     95|   195|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |0         |            1|     28|   195|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL                       |1         |            0|     22|   185|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL                       |1         |            1|      2|   185|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL                       |0         |            0|    143|   185|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL                       |0         |            1|     18|   185|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |1         |            0|      7|   185|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |1         |            1|      1|   185|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |0         |            0|    134|   185|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |0         |            1|     43|   185|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL                        |1         |            0|     11|   199|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL                        |1         |            1|      0|   199|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL                        |0         |            0|    176|   199|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL                        |0         |            1|     12|   199|
|0-6 months (no birth st.)  |MAL-ED         |PERU                         |1         |            0|     54|   237|
|0-6 months (no birth st.)  |MAL-ED         |PERU                         |1         |            1|     28|   237|
|0-6 months (no birth st.)  |MAL-ED         |PERU                         |0         |            0|     95|   237|
|0-6 months (no birth st.)  |MAL-ED         |PERU                         |0         |            1|     60|   237|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA                 |1         |            0|      0|   212|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA                 |1         |            1|      1|   212|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA                 |0         |            0|    146|   212|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA                 |0         |            1|     65|   212|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1         |            0|      1|   197|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1         |            1|      0|   197|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0         |            0|    136|   197|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0         |            1|     60|   197|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |1         |            0|    169|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |1         |            1|     26|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |0         |            0|    363|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |0         |            1|     75|   633|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |1         |            0|    250|   326|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |1         |            1|     62|   326|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |0         |            0|      9|   326|
|0-6 months (no birth st.)  |SAS-CompFeed   |INDIA                        |0         |            1|      5|   326|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA                        |1         |            0|      0|    95|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA                        |1         |            1|      0|    95|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA                        |0         |            0|     95|    95|
|0-6 months (no birth st.)  |SAS-FoodSuppl  |INDIA                        |0         |            1|      0|    95|


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA

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
![](/tmp/5a152229-0aa3-4b79-b494-af9588982d49/137e619e-3c82-42dc-86a5-e3c2f59301a2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5a152229-0aa3-4b79-b494-af9588982d49/137e619e-3c82-42dc-86a5-e3c2f59301a2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5a152229-0aa3-4b79-b494-af9588982d49/137e619e-3c82-42dc-86a5-e3c2f59301a2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5a152229-0aa3-4b79-b494-af9588982d49/137e619e-3c82-42dc-86a5-e3c2f59301a2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                     |studyid      |country    |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:--------------------------|:------------|:----------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months (no birth st.) |GMS-Nepal    |NEPAL      |1                  |NA             | 0.6286987|  0.5783836| 0.6790138|
|0-24 months (no birth st.) |GMS-Nepal    |NEPAL      |0                  |NA             | 0.7184072|  0.6403737| 0.7964406|
|0-24 months (no birth st.) |JiVitA-3     |BANGLADESH |1                  |NA             | 0.2587978|  0.2477527| 0.2698429|
|0-24 months (no birth st.) |JiVitA-3     |BANGLADESH |0                  |NA             | 0.2543479|  0.2374219| 0.2712740|
|0-24 months (no birth st.) |JiVitA-4     |BANGLADESH |1                  |NA             | 0.4180674|  0.3962524| 0.4398823|
|0-24 months (no birth st.) |JiVitA-4     |BANGLADESH |0                  |NA             | 0.4477044|  0.4063399| 0.4890689|
|0-24 months (no birth st.) |Keneba       |GAMBIA     |1                  |NA             | 0.4745582|  0.4402027| 0.5089138|
|0-24 months (no birth st.) |Keneba       |GAMBIA     |0                  |NA             | 0.5504537|  0.5236728| 0.5772345|
|0-24 months (no birth st.) |LCNI-5       |MALAWI     |1                  |NA             | 0.3801152|  0.1959630| 0.5642673|
|0-24 months (no birth st.) |LCNI-5       |MALAWI     |0                  |NA             | 0.4282439|  0.3473514| 0.5091364|
|0-24 months (no birth st.) |MAL-ED       |BANGLADESH |1                  |NA             | 0.5456102|  0.4302585| 0.6609618|
|0-24 months (no birth st.) |MAL-ED       |BANGLADESH |0                  |NA             | 0.5344552|  0.4476781| 0.6212323|
|0-24 months (no birth st.) |MAL-ED       |NEPAL      |1                  |NA             | 0.4545455|  0.1595511| 0.7495398|
|0-24 months (no birth st.) |MAL-ED       |NEPAL      |0                  |NA             | 0.2553191|  0.1928321| 0.3178062|
|0-24 months (no birth st.) |MAL-ED       |PERU       |1                  |NA             | 0.6554461|  0.5501043| 0.7607880|
|0-24 months (no birth st.) |MAL-ED       |PERU       |0                  |NA             | 0.5983790|  0.5201371| 0.6766209|
|0-24 months (no birth st.) |PROVIDE      |BANGLADESH |1                  |NA             | 0.3375813|  0.2700408| 0.4051217|
|0-24 months (no birth st.) |PROVIDE      |BANGLADESH |0                  |NA             | 0.3995947|  0.3543447| 0.4448447|
|0-24 months (no birth st.) |SAS-CompFeed |INDIA      |1                  |NA             | 0.6121795|  0.5306906| 0.6936683|
|0-24 months (no birth st.) |SAS-CompFeed |INDIA      |0                  |NA             | 0.6428571|  0.3329177| 0.9527966|
|0-6 months (no birth st.)  |GMS-Nepal    |NEPAL      |1                  |NA             | 0.1865160|  0.1456283| 0.2274037|
|0-6 months (no birth st.)  |GMS-Nepal    |NEPAL      |0                  |NA             | 0.2688992|  0.1872447| 0.3505538|
|0-6 months (no birth st.)  |JiVitA-3     |BANGLADESH |1                  |NA             | 0.1342549|  0.1260159| 0.1424939|
|0-6 months (no birth st.)  |JiVitA-3     |BANGLADESH |0                  |NA             | 0.1358663|  0.1228710| 0.1488615|
|0-6 months (no birth st.)  |JiVitA-4     |BANGLADESH |1                  |NA             | 0.0863538|  0.0728328| 0.0998748|
|0-6 months (no birth st.)  |JiVitA-4     |BANGLADESH |0                  |NA             | 0.1174786|  0.0925169| 0.1424402|
|0-6 months (no birth st.)  |Keneba       |GAMBIA     |1                  |NA             | 0.2240900|  0.1949699| 0.2532101|
|0-6 months (no birth st.)  |Keneba       |GAMBIA     |0                  |NA             | 0.2747964|  0.2506663| 0.2989265|
|0-6 months (no birth st.)  |MAL-ED       |BANGLADESH |1                  |NA             | 0.1804212|  0.0908792| 0.2699632|
|0-6 months (no birth st.)  |MAL-ED       |BANGLADESH |0                  |NA             | 0.2173067|  0.1459979| 0.2886156|
|0-6 months (no birth st.)  |MAL-ED       |PERU       |1                  |NA             | 0.3493117|  0.2449398| 0.4536835|
|0-6 months (no birth st.)  |MAL-ED       |PERU       |0                  |NA             | 0.3819517|  0.3050682| 0.4588352|
|0-6 months (no birth st.)  |PROVIDE      |BANGLADESH |1                  |NA             | 0.1335619|  0.0846092| 0.1825147|
|0-6 months (no birth st.)  |PROVIDE      |BANGLADESH |0                  |NA             | 0.1732109|  0.1378553| 0.2085665|
|0-6 months (no birth st.)  |SAS-CompFeed |INDIA      |1                  |NA             | 0.1987179|  0.1419130| 0.2555229|
|0-6 months (no birth st.)  |SAS-CompFeed |INDIA      |0                  |NA             | 0.3571429| -0.1170496| 0.8313354|


### Parameter: E(Y)


|agecat                     |studyid      |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:------------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |GMS-Nepal    |NEPAL      |NA                 |NA             | 0.6518047| 0.6087352| 0.6948741|
|0-24 months (no birth st.) |JiVitA-3     |BANGLADESH |NA                 |NA             | 0.2577482| 0.2478575| 0.2676389|
|0-24 months (no birth st.) |JiVitA-4     |BANGLADESH |NA                 |NA             | 0.4236091| 0.4038600| 0.4433581|
|0-24 months (no birth st.) |Keneba       |GAMBIA     |NA                 |NA             | 0.5219970| 0.5002246| 0.5437695|
|0-24 months (no birth st.) |LCNI-5       |MALAWI     |NA                 |NA             | 0.4228571| 0.3494545| 0.4962598|
|0-24 months (no birth st.) |MAL-ED       |BANGLADESH |NA                 |NA             | 0.5384615| 0.4683114| 0.6086117|
|0-24 months (no birth st.) |MAL-ED       |NEPAL      |NA                 |NA             | 0.2663317| 0.2047606| 0.3279027|
|0-24 months (no birth st.) |MAL-ED       |PERU       |NA                 |NA             | 0.6202532| 0.5583342| 0.6821721|
|0-24 months (no birth st.) |PROVIDE      |BANGLADESH |NA                 |NA             | 0.3759874| 0.3382238| 0.4137509|
|0-24 months (no birth st.) |SAS-CompFeed |INDIA      |NA                 |NA             | 0.6134969| 0.5286303| 0.6983636|
|0-6 months (no birth st.)  |GMS-Nepal    |NEPAL      |NA                 |NA             | 0.2059448| 0.1693853| 0.2425043|
|0-6 months (no birth st.)  |JiVitA-3     |BANGLADESH |NA                 |NA             | 0.1346474| 0.1274032| 0.1418916|
|0-6 months (no birth st.)  |JiVitA-4     |BANGLADESH |NA                 |NA             | 0.0926091| 0.0806150| 0.1046031|
|0-6 months (no birth st.)  |Keneba       |GAMBIA     |NA                 |NA             | 0.2560554| 0.2370317| 0.2750791|
|0-6 months (no birth st.)  |MAL-ED       |BANGLADESH |NA                 |NA             | 0.2051282| 0.1483073| 0.2619492|
|0-6 months (no birth st.)  |MAL-ED       |PERU       |NA                 |NA             | 0.3713080| 0.3096658| 0.4329502|
|0-6 months (no birth st.)  |PROVIDE      |BANGLADESH |NA                 |NA             | 0.1595577| 0.1310079| 0.1881074|
|0-6 months (no birth st.)  |SAS-CompFeed |INDIA      |NA                 |NA             | 0.2055215| 0.1385538| 0.2724891|


### Parameter: RR


|agecat                     |studyid      |country    |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:--------------------------|:------------|:----------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth st.) |GMS-Nepal    |NEPAL      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |GMS-Nepal    |NEPAL      |0                  |1              | 1.1426891| 1.0007374| 1.304776|
|0-24 months (no birth st.) |JiVitA-3     |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |JiVitA-3     |BANGLADESH |0                  |1              | 0.9828055| 0.9132608| 1.057646|
|0-24 months (no birth st.) |JiVitA-4     |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |JiVitA-4     |BANGLADESH |0                  |1              | 1.0708905| 0.9661707| 1.186961|
|0-24 months (no birth st.) |Keneba       |GAMBIA     |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |Keneba       |GAMBIA     |0                  |1              | 1.1599286| 1.0658518| 1.262309|
|0-24 months (no birth st.) |LCNI-5       |MALAWI     |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |LCNI-5       |MALAWI     |0                  |1              | 1.1266162| 0.6696498| 1.895415|
|0-24 months (no birth st.) |MAL-ED       |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED       |BANGLADESH |0                  |1              | 0.9795551| 0.7533985| 1.273600|
|0-24 months (no birth st.) |MAL-ED       |NEPAL      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED       |NEPAL      |0                  |1              | 0.5617021| 0.2807235| 1.123915|
|0-24 months (no birth st.) |MAL-ED       |PERU       |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED       |PERU       |0                  |1              | 0.9129339| 0.7420469| 1.123175|
|0-24 months (no birth st.) |PROVIDE      |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |PROVIDE      |BANGLADESH |0                  |1              | 1.1836992| 0.9463807| 1.480529|
|0-24 months (no birth st.) |SAS-CompFeed |INDIA      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |SAS-CompFeed |INDIA      |0                  |1              | 1.0501122| 0.6736522| 1.636951|
|0-6 months (no birth st.)  |GMS-Nepal    |NEPAL      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |GMS-Nepal    |NEPAL      |0                  |1              | 1.4416950| 0.9914230| 2.096466|
|0-6 months (no birth st.)  |JiVitA-3     |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |JiVitA-3     |BANGLADESH |0                  |1              | 1.0120025| 0.9072048| 1.128906|
|0-6 months (no birth st.)  |JiVitA-4     |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |JiVitA-4     |BANGLADESH |0                  |1              | 1.3604335| 1.0460045| 1.769380|
|0-6 months (no birth st.)  |Keneba       |GAMBIA     |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |Keneba       |GAMBIA     |0                  |1              | 1.2262769| 1.0523073| 1.429007|
|0-6 months (no birth st.)  |MAL-ED       |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |MAL-ED       |BANGLADESH |0                  |1              | 1.2044414| 0.6714215| 2.160609|
|0-6 months (no birth st.)  |MAL-ED       |PERU       |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |MAL-ED       |PERU       |0                  |1              | 1.0934410| 0.7622902| 1.568449|
|0-6 months (no birth st.)  |PROVIDE      |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |PROVIDE      |BANGLADESH |0                  |1              | 1.2968581| 0.8533187| 1.970941|
|0-6 months (no birth st.)  |SAS-CompFeed |INDIA      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |SAS-CompFeed |INDIA      |0                  |1              | 1.7972350| 0.5064696| 6.377587|


### Parameter: PAR


|agecat                     |studyid      |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:--------------------------|:------------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth st.) |GMS-Nepal    |NEPAL      |1                  |NA             |  0.0231059| -0.0003020| 0.0465139|
|0-24 months (no birth st.) |JiVitA-3     |BANGLADESH |1                  |NA             | -0.0010497| -0.0051705| 0.0030712|
|0-24 months (no birth st.) |JiVitA-4     |BANGLADESH |1                  |NA             |  0.0055417| -0.0040528| 0.0151362|
|0-24 months (no birth st.) |Keneba       |GAMBIA     |1                  |NA             |  0.0474388|  0.0208079| 0.0740697|
|0-24 months (no birth st.) |LCNI-5       |MALAWI     |1                  |NA             |  0.0427420| -0.1253543| 0.2108382|
|0-24 months (no birth st.) |MAL-ED       |BANGLADESH |1                  |NA             | -0.0071486| -0.0976221| 0.0833248|
|0-24 months (no birth st.) |MAL-ED       |NEPAL      |1                  |NA             | -0.1882138| -0.4731562| 0.0967286|
|0-24 months (no birth st.) |MAL-ED       |PERU       |1                  |NA             | -0.0351930| -0.1221054| 0.0517195|
|0-24 months (no birth st.) |PROVIDE      |BANGLADESH |1                  |NA             |  0.0384061| -0.0184446| 0.0952568|
|0-24 months (no birth st.) |SAS-CompFeed |INDIA      |1                  |NA             |  0.0013174| -0.0112602| 0.0138950|
|0-6 months (no birth st.)  |GMS-Nepal    |NEPAL      |1                  |NA             |  0.0194288| -0.0033192| 0.0421767|
|0-6 months (no birth st.)  |JiVitA-3     |BANGLADESH |1                  |NA             |  0.0003926| -0.0028532| 0.0036383|
|0-6 months (no birth st.)  |JiVitA-4     |BANGLADESH |1                  |NA             |  0.0062553|  0.0005332| 0.0119774|
|0-6 months (no birth st.)  |Keneba       |GAMBIA     |1                  |NA             |  0.0319654|  0.0086628| 0.0552679|
|0-6 months (no birth st.)  |MAL-ED       |BANGLADESH |1                  |NA             |  0.0247070| -0.0478823| 0.0972963|
|0-6 months (no birth st.)  |MAL-ED       |PERU       |1                  |NA             |  0.0219963| -0.0636354| 0.1076281|
|0-6 months (no birth st.)  |PROVIDE      |BANGLADESH |1                  |NA             |  0.0259957| -0.0160581| 0.0680496|
|0-6 months (no birth st.)  |SAS-CompFeed |INDIA      |1                  |NA             |  0.0068035| -0.0151879| 0.0287949|


### Parameter: PAF


|agecat                     |studyid      |country    |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:--------------------------|:------------|:----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth st.) |GMS-Nepal    |NEPAL      |1                  |NA             |  0.0354492| -0.0013741| 0.0709183|
|0-24 months (no birth st.) |JiVitA-3     |BANGLADESH |1                  |NA             | -0.0040724| -0.0201749| 0.0117760|
|0-24 months (no birth st.) |JiVitA-4     |BANGLADESH |1                  |NA             |  0.0130821| -0.0098274| 0.0354718|
|0-24 months (no birth st.) |Keneba       |GAMBIA     |1                  |NA             |  0.0908795|  0.0382648| 0.1406156|
|0-24 months (no birth st.) |LCNI-5       |MALAWI     |1                  |NA             |  0.1010789| -0.3997678| 0.4227192|
|0-24 months (no birth st.) |MAL-ED       |BANGLADESH |1                  |NA             | -0.0132761| -0.1960103| 0.1415389|
|0-24 months (no birth st.) |MAL-ED       |NEPAL      |1                  |NA             | -0.7066895| -2.2000739| 0.0897744|
|0-24 months (no birth st.) |MAL-ED       |PERU       |1                  |NA             | -0.0567397| -0.2068839| 0.0747256|
|0-24 months (no birth st.) |PROVIDE      |BANGLADESH |1                  |NA             |  0.1021473| -0.0626734| 0.2414043|
|0-24 months (no birth st.) |SAS-CompFeed |INDIA      |1                  |NA             |  0.0021474| -0.0184658| 0.0223435|
|0-6 months (no birth st.)  |GMS-Nepal    |NEPAL      |1                  |NA             |  0.0943397| -0.0224947| 0.1978242|
|0-6 months (no birth st.)  |JiVitA-3     |BANGLADESH |1                  |NA             |  0.0029154| -0.0215013| 0.0267485|
|0-6 months (no birth st.)  |JiVitA-4     |BANGLADESH |1                  |NA             |  0.0675453|  0.0025878| 0.1282724|
|0-6 months (no birth st.)  |Keneba       |GAMBIA     |1                  |NA             |  0.1248377|  0.0290682| 0.2111608|
|0-6 months (no birth st.)  |MAL-ED       |BANGLADESH |1                  |NA             |  0.1204468| -0.3146517| 0.4115447|
|0-6 months (no birth st.)  |MAL-ED       |PERU       |1                  |NA             |  0.0592401| -0.2020916| 0.2637590|
|0-6 months (no birth st.)  |PROVIDE      |BANGLADESH |1                  |NA             |  0.1629237| -0.1459491| 0.3885446|
|0-6 months (no birth st.)  |SAS-CompFeed |INDIA      |1                  |NA             |  0.0331037| -0.0733606| 0.1290081|
