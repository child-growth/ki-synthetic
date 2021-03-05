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

**Intervention Variable:** perdiar6

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
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
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                     |studyid    |country                      |perdiar6 | ever_stunted| n_cell|   n|
|:--------------------------|:----------|:----------------------------|:--------|------------:|------:|---:|
|0-24 months (no birth st.) |CMIN       |BANGLADESH                   |0%       |            0|     20| 168|
|0-24 months (no birth st.) |CMIN       |BANGLADESH                   |0%       |            1|     48| 168|
|0-24 months (no birth st.) |CMIN       |BANGLADESH                   |(0%, 5%] |            0|      5| 168|
|0-24 months (no birth st.) |CMIN       |BANGLADESH                   |(0%, 5%] |            1|     29| 168|
|0-24 months (no birth st.) |CMIN       |BANGLADESH                   |>5%      |            0|     16| 168|
|0-24 months (no birth st.) |CMIN       |BANGLADESH                   |>5%      |            1|     50| 168|
|0-24 months (no birth st.) |CONTENT    |PERU                         |0%       |            0|     84| 195|
|0-24 months (no birth st.) |CONTENT    |PERU                         |0%       |            1|     19| 195|
|0-24 months (no birth st.) |CONTENT    |PERU                         |(0%, 5%] |            0|     31| 195|
|0-24 months (no birth st.) |CONTENT    |PERU                         |(0%, 5%] |            1|      6| 195|
|0-24 months (no birth st.) |CONTENT    |PERU                         |>5%      |            0|     47| 195|
|0-24 months (no birth st.) |CONTENT    |PERU                         |>5%      |            1|      8| 195|
|0-24 months (no birth st.) |EE         |PAKISTAN                     |0%       |            0|     38| 213|
|0-24 months (no birth st.) |EE         |PAKISTAN                     |0%       |            1|    161| 213|
|0-24 months (no birth st.) |EE         |PAKISTAN                     |(0%, 5%] |            0|      2| 213|
|0-24 months (no birth st.) |EE         |PAKISTAN                     |(0%, 5%] |            1|     11| 213|
|0-24 months (no birth st.) |EE         |PAKISTAN                     |>5%      |            0|      1| 213|
|0-24 months (no birth st.) |EE         |PAKISTAN                     |>5%      |            1|      0| 213|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH                   |0%       |            0|     35| 217|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH                   |0%       |            1|     37| 217|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH                   |(0%, 5%] |            0|     41| 217|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH                   |(0%, 5%] |            1|     44| 217|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH                   |>5%      |            0|     27| 217|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH                   |>5%      |            1|     33| 217|
|0-24 months (no birth st.) |MAL-ED     |BRAZIL                       |0%       |            0|    156| 202|
|0-24 months (no birth st.) |MAL-ED     |BRAZIL                       |0%       |            1|     30| 202|
|0-24 months (no birth st.) |MAL-ED     |BRAZIL                       |(0%, 5%] |            0|     12| 202|
|0-24 months (no birth st.) |MAL-ED     |BRAZIL                       |(0%, 5%] |            1|      2| 202|
|0-24 months (no birth st.) |MAL-ED     |BRAZIL                       |>5%      |            0|      2| 202|
|0-24 months (no birth st.) |MAL-ED     |BRAZIL                       |>5%      |            1|      0| 202|
|0-24 months (no birth st.) |MAL-ED     |INDIA                        |0%       |            0|     23| 210|
|0-24 months (no birth st.) |MAL-ED     |INDIA                        |0%       |            1|     26| 210|
|0-24 months (no birth st.) |MAL-ED     |INDIA                        |(0%, 5%] |            0|     53| 210|
|0-24 months (no birth st.) |MAL-ED     |INDIA                        |(0%, 5%] |            1|     53| 210|
|0-24 months (no birth st.) |MAL-ED     |INDIA                        |>5%      |            0|     23| 210|
|0-24 months (no birth st.) |MAL-ED     |INDIA                        |>5%      |            1|     32| 210|
|0-24 months (no birth st.) |MAL-ED     |NEPAL                        |0%       |            0|     53| 211|
|0-24 months (no birth st.) |MAL-ED     |NEPAL                        |0%       |            1|     20| 211|
|0-24 months (no birth st.) |MAL-ED     |NEPAL                        |(0%, 5%] |            0|     54| 211|
|0-24 months (no birth st.) |MAL-ED     |NEPAL                        |(0%, 5%] |            1|     14| 211|
|0-24 months (no birth st.) |MAL-ED     |NEPAL                        |>5%      |            0|     49| 211|
|0-24 months (no birth st.) |MAL-ED     |NEPAL                        |>5%      |            1|     21| 211|
|0-24 months (no birth st.) |MAL-ED     |PERU                         |0%       |            0|     37| 266|
|0-24 months (no birth st.) |MAL-ED     |PERU                         |0%       |            1|     40| 266|
|0-24 months (no birth st.) |MAL-ED     |PERU                         |(0%, 5%] |            0|     29| 266|
|0-24 months (no birth st.) |MAL-ED     |PERU                         |(0%, 5%] |            1|     51| 266|
|0-24 months (no birth st.) |MAL-ED     |PERU                         |>5%      |            0|     49| 266|
|0-24 months (no birth st.) |MAL-ED     |PERU                         |>5%      |            1|     60| 266|
|0-24 months (no birth st.) |MAL-ED     |SOUTH AFRICA                 |0%       |            0|    100| 265|
|0-24 months (no birth st.) |MAL-ED     |SOUTH AFRICA                 |0%       |            1|    104| 265|
|0-24 months (no birth st.) |MAL-ED     |SOUTH AFRICA                 |(0%, 5%] |            0|     21| 265|
|0-24 months (no birth st.) |MAL-ED     |SOUTH AFRICA                 |(0%, 5%] |            1|     31| 265|
|0-24 months (no birth st.) |MAL-ED     |SOUTH AFRICA                 |>5%      |            0|      7| 265|
|0-24 months (no birth st.) |MAL-ED     |SOUTH AFRICA                 |>5%      |            1|      2| 265|
|0-24 months (no birth st.) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |0%       |            0|     19| 219|
|0-24 months (no birth st.) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |0%       |            1|     75| 219|
|0-24 months (no birth st.) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |(0%, 5%] |            0|     16| 219|
|0-24 months (no birth st.) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |(0%, 5%] |            1|     69| 219|
|0-24 months (no birth st.) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |>5%      |            0|      5| 219|
|0-24 months (no birth st.) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |>5%      |            1|     35| 219|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH                   |0%       |            0|     69| 528|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH                   |0%       |            1|     72| 528|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH                   |(0%, 5%] |            0|     67| 528|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH                   |(0%, 5%] |            1|     92| 528|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH                   |>5%      |            0|     73| 528|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH                   |>5%      |            1|    155| 528|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH                   |0%       |            0|    196| 653|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH                   |0%       |            1|    117| 653|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH                   |(0%, 5%] |            0|     85| 653|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH                   |(0%, 5%] |            1|     66| 653|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH                   |>5%      |            0|    115| 653|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH                   |>5%      |            1|     74| 653|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH                   |0%       |            0|    149| 633|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH                   |0%       |            1|     53| 633|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH                   |(0%, 5%] |            0|    137| 633|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH                   |(0%, 5%] |            1|    101| 633|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH                   |>5%      |            0|    109| 633|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH                   |>5%      |            1|     84| 633|
|0-6 months (no birth st.)  |CMIN       |BANGLADESH                   |0%       |            0|     45| 168|
|0-6 months (no birth st.)  |CMIN       |BANGLADESH                   |0%       |            1|     23| 168|
|0-6 months (no birth st.)  |CMIN       |BANGLADESH                   |(0%, 5%] |            0|     24| 168|
|0-6 months (no birth st.)  |CMIN       |BANGLADESH                   |(0%, 5%] |            1|     10| 168|
|0-6 months (no birth st.)  |CMIN       |BANGLADESH                   |>5%      |            0|     51| 168|
|0-6 months (no birth st.)  |CMIN       |BANGLADESH                   |>5%      |            1|     15| 168|
|0-6 months (no birth st.)  |CONTENT    |PERU                         |0%       |            0|     99| 195|
|0-6 months (no birth st.)  |CONTENT    |PERU                         |0%       |            1|      4| 195|
|0-6 months (no birth st.)  |CONTENT    |PERU                         |(0%, 5%] |            0|     37| 195|
|0-6 months (no birth st.)  |CONTENT    |PERU                         |(0%, 5%] |            1|      0| 195|
|0-6 months (no birth st.)  |CONTENT    |PERU                         |>5%      |            0|     52| 195|
|0-6 months (no birth st.)  |CONTENT    |PERU                         |>5%      |            1|      3| 195|
|0-6 months (no birth st.)  |EE         |PAKISTAN                     |0%       |            0|     86| 213|
|0-6 months (no birth st.)  |EE         |PAKISTAN                     |0%       |            1|    113| 213|
|0-6 months (no birth st.)  |EE         |PAKISTAN                     |(0%, 5%] |            0|      8| 213|
|0-6 months (no birth st.)  |EE         |PAKISTAN                     |(0%, 5%] |            1|      5| 213|
|0-6 months (no birth st.)  |EE         |PAKISTAN                     |>5%      |            0|      1| 213|
|0-6 months (no birth st.)  |EE         |PAKISTAN                     |>5%      |            1|      0| 213|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH                   |0%       |            0|     49| 217|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH                   |0%       |            1|     23| 217|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH                   |(0%, 5%] |            0|     73| 217|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH                   |(0%, 5%] |            1|     12| 217|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH                   |>5%      |            0|     48| 217|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH                   |>5%      |            1|     12| 217|
|0-6 months (no birth st.)  |MAL-ED     |BRAZIL                       |0%       |            0|    167| 202|
|0-6 months (no birth st.)  |MAL-ED     |BRAZIL                       |0%       |            1|     19| 202|
|0-6 months (no birth st.)  |MAL-ED     |BRAZIL                       |(0%, 5%] |            0|     12| 202|
|0-6 months (no birth st.)  |MAL-ED     |BRAZIL                       |(0%, 5%] |            1|      2| 202|
|0-6 months (no birth st.)  |MAL-ED     |BRAZIL                       |>5%      |            0|      2| 202|
|0-6 months (no birth st.)  |MAL-ED     |BRAZIL                       |>5%      |            1|      0| 202|
|0-6 months (no birth st.)  |MAL-ED     |INDIA                        |0%       |            0|     38| 210|
|0-6 months (no birth st.)  |MAL-ED     |INDIA                        |0%       |            1|     11| 210|
|0-6 months (no birth st.)  |MAL-ED     |INDIA                        |(0%, 5%] |            0|     88| 210|
|0-6 months (no birth st.)  |MAL-ED     |INDIA                        |(0%, 5%] |            1|     18| 210|
|0-6 months (no birth st.)  |MAL-ED     |INDIA                        |>5%      |            0|     38| 210|
|0-6 months (no birth st.)  |MAL-ED     |INDIA                        |>5%      |            1|     17| 210|
|0-6 months (no birth st.)  |MAL-ED     |NEPAL                        |0%       |            0|     64| 211|
|0-6 months (no birth st.)  |MAL-ED     |NEPAL                        |0%       |            1|      9| 211|
|0-6 months (no birth st.)  |MAL-ED     |NEPAL                        |(0%, 5%] |            0|     65| 211|
|0-6 months (no birth st.)  |MAL-ED     |NEPAL                        |(0%, 5%] |            1|      3| 211|
|0-6 months (no birth st.)  |MAL-ED     |NEPAL                        |>5%      |            0|     68| 211|
|0-6 months (no birth st.)  |MAL-ED     |NEPAL                        |>5%      |            1|      2| 211|
|0-6 months (no birth st.)  |MAL-ED     |PERU                         |0%       |            0|     53| 266|
|0-6 months (no birth st.)  |MAL-ED     |PERU                         |0%       |            1|     24| 266|
|0-6 months (no birth st.)  |MAL-ED     |PERU                         |(0%, 5%] |            0|     47| 266|
|0-6 months (no birth st.)  |MAL-ED     |PERU                         |(0%, 5%] |            1|     33| 266|
|0-6 months (no birth st.)  |MAL-ED     |PERU                         |>5%      |            0|     74| 266|
|0-6 months (no birth st.)  |MAL-ED     |PERU                         |>5%      |            1|     35| 266|
|0-6 months (no birth st.)  |MAL-ED     |SOUTH AFRICA                 |0%       |            0|    143| 265|
|0-6 months (no birth st.)  |MAL-ED     |SOUTH AFRICA                 |0%       |            1|     61| 265|
|0-6 months (no birth st.)  |MAL-ED     |SOUTH AFRICA                 |(0%, 5%] |            0|     38| 265|
|0-6 months (no birth st.)  |MAL-ED     |SOUTH AFRICA                 |(0%, 5%] |            1|     14| 265|
|0-6 months (no birth st.)  |MAL-ED     |SOUTH AFRICA                 |>5%      |            0|      7| 265|
|0-6 months (no birth st.)  |MAL-ED     |SOUTH AFRICA                 |>5%      |            1|      2| 265|
|0-6 months (no birth st.)  |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |0%       |            0|     67| 219|
|0-6 months (no birth st.)  |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |0%       |            1|     27| 219|
|0-6 months (no birth st.)  |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |(0%, 5%] |            0|     59| 219|
|0-6 months (no birth st.)  |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |(0%, 5%] |            1|     26| 219|
|0-6 months (no birth st.)  |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |>5%      |            0|     27| 219|
|0-6 months (no birth st.)  |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |>5%      |            1|     13| 219|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH                   |0%       |            0|    126| 528|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH                   |0%       |            1|     15| 528|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH                   |(0%, 5%] |            0|    120| 528|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH                   |(0%, 5%] |            1|     39| 528|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH                   |>5%      |            0|    161| 528|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH                   |>5%      |            1|     67| 528|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH                   |0%       |            0|    260| 653|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH                   |0%       |            1|     53| 653|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH                   |(0%, 5%] |            0|    112| 653|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH                   |(0%, 5%] |            1|     39| 653|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH                   |>5%      |            0|    157| 653|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH                   |>5%      |            1|     32| 653|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH                   |0%       |            0|    183| 633|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH                   |0%       |            1|     19| 633|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH                   |(0%, 5%] |            0|    193| 633|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH                   |(0%, 5%] |            1|     45| 633|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH                   |>5%      |            0|    156| 633|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH                   |>5%      |            1|     37| 633|


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA

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
![](/tmp/7d5a62f9-5da6-4702-9a65-85a9a9b28269/9c8e52d5-aa84-4de5-809c-8b62a72f5802/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7d5a62f9-5da6-4702-9a65-85a9a9b28269/9c8e52d5-aa84-4de5-809c-8b62a72f5802/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7d5a62f9-5da6-4702-9a65-85a9a9b28269/9c8e52d5-aa84-4de5-809c-8b62a72f5802/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7d5a62f9-5da6-4702-9a65-85a9a9b28269/9c8e52d5-aa84-4de5-809c-8b62a72f5802/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                     |studyid    |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:----------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |CMIN       |BANGLADESH                   |0%                 |NA             | 0.7058824| 0.5972606| 0.8145041|
|0-24 months (no birth st.) |CMIN       |BANGLADESH                   |(0%, 5%]           |NA             | 0.8529412| 0.7335396| 0.9723428|
|0-24 months (no birth st.) |CMIN       |BANGLADESH                   |>5%                |NA             | 0.7575758| 0.6538770| 0.8612745|
|0-24 months (no birth st.) |CONTENT    |PERU                         |0%                 |NA             | 0.1844660| 0.1093686| 0.2595635|
|0-24 months (no birth st.) |CONTENT    |PERU                         |(0%, 5%]           |NA             | 0.1621622| 0.0430878| 0.2812366|
|0-24 months (no birth st.) |CONTENT    |PERU                         |>5%                |NA             | 0.1454545| 0.0520400| 0.2388691|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH                   |0%                 |NA             | 0.5500906| 0.4349478| 0.6652334|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH                   |(0%, 5%]           |NA             | 0.5025504| 0.3938766| 0.6112242|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH                   |>5%                |NA             | 0.5206601| 0.3932796| 0.6480406|
|0-24 months (no birth st.) |MAL-ED     |INDIA                        |0%                 |NA             | 0.5524304| 0.4161443| 0.6887164|
|0-24 months (no birth st.) |MAL-ED     |INDIA                        |(0%, 5%]           |NA             | 0.4950819| 0.3989299| 0.5912340|
|0-24 months (no birth st.) |MAL-ED     |INDIA                        |>5%                |NA             | 0.5565384| 0.4211283| 0.6919486|
|0-24 months (no birth st.) |MAL-ED     |NEPAL                        |0%                 |NA             | 0.2976385| 0.1938345| 0.4014425|
|0-24 months (no birth st.) |MAL-ED     |NEPAL                        |(0%, 5%]           |NA             | 0.1967357| 0.1021553| 0.2913161|
|0-24 months (no birth st.) |MAL-ED     |NEPAL                        |>5%                |NA             | 0.2938512| 0.1838835| 0.4038189|
|0-24 months (no birth st.) |MAL-ED     |PERU                         |0%                 |NA             | 0.5827897| 0.4767326| 0.6888467|
|0-24 months (no birth st.) |MAL-ED     |PERU                         |(0%, 5%]           |NA             | 0.6253909| 0.5135211| 0.7372607|
|0-24 months (no birth st.) |MAL-ED     |PERU                         |>5%                |NA             | 0.5376255| 0.4415397| 0.6337113|
|0-24 months (no birth st.) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |0%                 |NA             | 0.7978723| 0.7165036| 0.8792411|
|0-24 months (no birth st.) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |(0%, 5%]           |NA             | 0.8117647| 0.7284737| 0.8950557|
|0-24 months (no birth st.) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |>5%                |NA             | 0.8750000| 0.7722762| 0.9777238|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH                   |0%                 |NA             | 0.5233055| 0.4408705| 0.6057404|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH                   |(0%, 5%]           |NA             | 0.5797453| 0.5046475| 0.6548431|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH                   |>5%                |NA             | 0.6729669| 0.6144517| 0.7314821|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH                   |0%                 |NA             | 0.3782808| 0.3265327| 0.4300289|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH                   |(0%, 5%]           |NA             | 0.4269294| 0.3564031| 0.4974558|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH                   |>5%                |NA             | 0.3935397| 0.3261169| 0.4609625|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH                   |0%                 |NA             | 0.2807286| 0.2230888| 0.3383684|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH                   |(0%, 5%]           |NA             | 0.4126482| 0.3522636| 0.4730329|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH                   |>5%                |NA             | 0.4273937| 0.3599114| 0.4948761|
|0-6 months (no birth st.)  |CMIN       |BANGLADESH                   |0%                 |NA             | 0.3354109| 0.2215044| 0.4493174|
|0-6 months (no birth st.)  |CMIN       |BANGLADESH                   |(0%, 5%]           |NA             | 0.2895684| 0.1324905| 0.4466462|
|0-6 months (no birth st.)  |CMIN       |BANGLADESH                   |>5%                |NA             | 0.2187755| 0.1157639| 0.3217871|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH                   |0%                 |NA             | 0.3380970| 0.2291710| 0.4470229|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH                   |(0%, 5%]           |NA             | 0.1484639| 0.0725894| 0.2243383|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH                   |>5%                |NA             | 0.2110972| 0.1084040| 0.3137904|
|0-6 months (no birth st.)  |MAL-ED     |INDIA                        |0%                 |NA             | 0.2339084| 0.1120151| 0.3558017|
|0-6 months (no birth st.)  |MAL-ED     |INDIA                        |(0%, 5%]           |NA             | 0.1680059| 0.0967087| 0.2393031|
|0-6 months (no birth st.)  |MAL-ED     |INDIA                        |>5%                |NA             | 0.3070297| 0.1835489| 0.4305105|
|0-6 months (no birth st.)  |MAL-ED     |PERU                         |0%                 |NA             | 0.3363223| 0.2282419| 0.4444028|
|0-6 months (no birth st.)  |MAL-ED     |PERU                         |(0%, 5%]           |NA             | 0.4077850| 0.2966830| 0.5188870|
|0-6 months (no birth st.)  |MAL-ED     |PERU                         |>5%                |NA             | 0.3121482| 0.2226039| 0.4016926|
|0-6 months (no birth st.)  |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |0%                 |NA             | 0.2910486| 0.1984203| 0.3836768|
|0-6 months (no birth st.)  |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |(0%, 5%]           |NA             | 0.3156506| 0.2158439| 0.4154573|
|0-6 months (no birth st.)  |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |>5%                |NA             | 0.3436925| 0.1990429| 0.4883421|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH                   |0%                 |NA             | 0.1096547| 0.0580815| 0.1612279|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH                   |(0%, 5%]           |NA             | 0.2479475| 0.1807703| 0.3151248|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH                   |>5%                |NA             | 0.2945679| 0.2350144| 0.3541215|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH                   |0%                 |NA             | 0.1729981| 0.1327293| 0.2132668|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH                   |(0%, 5%]           |NA             | 0.2544668| 0.1896460| 0.3192876|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH                   |>5%                |NA             | 0.1698062| 0.1179225| 0.2216898|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH                   |0%                 |NA             | 0.0952241| 0.0546441| 0.1358042|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH                   |(0%, 5%]           |NA             | 0.1879337| 0.1379824| 0.2378849|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH                   |>5%                |NA             | 0.1886950| 0.1330920| 0.2442980|


### Parameter: E(Y)


|agecat                     |studyid    |country                      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:----------|:----------------------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |CMIN       |BANGLADESH                   |NA                 |NA             | 0.7559524| 0.6908084| 0.8210964|
|0-24 months (no birth st.) |CONTENT    |PERU                         |NA                 |NA             | 0.1692308| 0.1164681| 0.2219935|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH                   |NA                 |NA             | 0.5253456| 0.4587520| 0.5919392|
|0-24 months (no birth st.) |MAL-ED     |INDIA                        |NA                 |NA             | 0.5285714| 0.4608954| 0.5962474|
|0-24 months (no birth st.) |MAL-ED     |NEPAL                        |NA                 |NA             | 0.2606635| 0.2012891| 0.3200380|
|0-24 months (no birth st.) |MAL-ED     |PERU                         |NA                 |NA             | 0.5676692| 0.5080232| 0.6273151|
|0-24 months (no birth st.) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.8173516| 0.7660617| 0.8686415|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH                   |NA                 |NA             | 0.6041667| 0.5624147| 0.6459187|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH                   |NA                 |NA             | 0.3935681| 0.3560687| 0.4310676|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH                   |NA                 |NA             | 0.3759874| 0.3382238| 0.4137509|
|0-6 months (no birth st.)  |CMIN       |BANGLADESH                   |NA                 |NA             | 0.2857143| 0.2171983| 0.3542303|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH                   |NA                 |NA             | 0.2165899| 0.1616567| 0.2715231|
|0-6 months (no birth st.)  |MAL-ED     |INDIA                        |NA                 |NA             | 0.2190476| 0.1629743| 0.2751210|
|0-6 months (no birth st.)  |MAL-ED     |PERU                         |NA                 |NA             | 0.3458647| 0.2885967| 0.4031327|
|0-6 months (no birth st.)  |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |NA                 |NA             | 0.3013699| 0.2404592| 0.3622805|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH                   |NA                 |NA             | 0.2291667| 0.1932828| 0.2650505|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH                   |NA                 |NA             | 0.1898928| 0.1597870| 0.2199986|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH                   |NA                 |NA             | 0.1595577| 0.1310079| 0.1881074|


### Parameter: RR


|agecat                     |studyid    |country                      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:--------------------------|:----------|:----------------------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth st.) |CMIN       |BANGLADESH                   |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |CMIN       |BANGLADESH                   |(0%, 5%]           |0%             | 1.2083333| 0.9813886| 1.487759|
|0-24 months (no birth st.) |CMIN       |BANGLADESH                   |>5%                |0%             | 1.0732323| 0.8734742| 1.318674|
|0-24 months (no birth st.) |CONTENT    |PERU                         |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |CONTENT    |PERU                         |(0%, 5%]           |0%             | 0.8790896| 0.3796656| 2.035471|
|0-24 months (no birth st.) |CONTENT    |PERU                         |>5%                |0%             | 0.7885167| 0.3686200| 1.686720|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH                   |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH                   |(0%, 5%]           |0%             | 0.9135775| 0.6777073| 1.231540|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH                   |>5%                |0%             | 0.9464987| 0.6893546| 1.299563|
|0-24 months (no birth st.) |MAL-ED     |INDIA                        |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED     |INDIA                        |(0%, 5%]           |0%             | 0.8961888| 0.6567297| 1.222960|
|0-24 months (no birth st.) |MAL-ED     |INDIA                        |>5%                |0%             | 1.0074364| 0.7134388| 1.422586|
|0-24 months (no birth st.) |MAL-ED     |NEPAL                        |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED     |NEPAL                        |(0%, 5%]           |0%             | 0.6609889| 0.3674574| 1.188998|
|0-24 months (no birth st.) |MAL-ED     |NEPAL                        |>5%                |0%             | 0.9872756| 0.5912779| 1.648486|
|0-24 months (no birth st.) |MAL-ED     |PERU                         |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED     |PERU                         |(0%, 5%]           |0%             | 1.0730988| 0.8295202| 1.388201|
|0-24 months (no birth st.) |MAL-ED     |PERU                         |>5%                |0%             | 0.9225035| 0.7159816| 1.188596|
|0-24 months (no birth st.) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |(0%, 5%]           |0%             | 1.0174118| 0.8803783| 1.175775|
|0-24 months (no birth st.) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |>5%                |0%             | 1.0966667| 0.9387248| 1.281182|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH                   |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH                   |(0%, 5%]           |0%             | 1.1078526| 0.9052953| 1.355732|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH                   |>5%                |0%             | 1.2859925| 1.0760802| 1.536853|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH                   |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH                   |(0%, 5%]           |0%             | 1.1286045| 0.9191122| 1.385846|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH                   |>5%                |0%             | 1.0403373| 0.8402137| 1.288127|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH                   |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH                   |(0%, 5%]           |0%             | 1.4699187| 1.1524082| 1.874910|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH                   |>5%                |0%             | 1.5224445| 1.1814515| 1.961856|
|0-6 months (no birth st.)  |CMIN       |BANGLADESH                   |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |CMIN       |BANGLADESH                   |(0%, 5%]           |0%             | 0.8633241| 0.4542162| 1.640912|
|0-6 months (no birth st.)  |CMIN       |BANGLADESH                   |>5%                |0%             | 0.6522612| 0.3644198| 1.167458|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH                   |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH                   |(0%, 5%]           |0%             | 0.4391163| 0.2401003| 0.803094|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH                   |>5%                |0%             | 0.6243688| 0.3485835| 1.118344|
|0-6 months (no birth st.)  |MAL-ED     |INDIA                        |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |MAL-ED     |INDIA                        |(0%, 5%]           |0%             | 0.7182552| 0.3663858| 1.408053|
|0-6 months (no birth st.)  |MAL-ED     |INDIA                        |>5%                |0%             | 1.3126067| 0.6790726| 2.537190|
|0-6 months (no birth st.)  |MAL-ED     |PERU                         |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |MAL-ED     |PERU                         |(0%, 5%]           |0%             | 1.2124827| 0.7950019| 1.849196|
|0-6 months (no birth st.)  |MAL-ED     |PERU                         |>5%                |0%             | 0.9281222| 0.6031473| 1.428193|
|0-6 months (no birth st.)  |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |(0%, 5%]           |0%             | 1.0845289| 0.6922602| 1.699076|
|0-6 months (no birth st.)  |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |>5%                |0%             | 1.1808766| 0.6964720| 2.002191|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH                   |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH                   |(0%, 5%]           |0%             | 2.2611667| 1.3141705| 3.890572|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH                   |>5%                |0%             | 2.6863234| 1.6102502| 4.481498|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH                   |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH                   |(0%, 5%]           |0%             | 1.4709231| 1.0529643| 2.054784|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH                   |>5%                |0%             | 0.9815496| 0.6743884| 1.428613|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH                   |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH                   |(0%, 5%]           |0%             | 1.9735925| 1.1951378| 3.259095|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH                   |>5%                |0%             | 1.9815874| 1.1814034| 3.323749|


### Parameter: PAR


|agecat                     |studyid    |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:--------------------------|:----------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months (no birth st.) |CMIN       |BANGLADESH                   |0%                 |NA             |  0.0500700| -0.0304974|  0.1306374|
|0-24 months (no birth st.) |CONTENT    |PERU                         |0%                 |NA             | -0.0152353| -0.0648918|  0.0344213|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH                   |0%                 |NA             | -0.0247450| -0.1186987|  0.0692087|
|0-24 months (no birth st.) |MAL-ED     |INDIA                        |0%                 |NA             | -0.0238589| -0.1437603|  0.0960424|
|0-24 months (no birth st.) |MAL-ED     |NEPAL                        |0%                 |NA             | -0.0369750| -0.1206571|  0.0467072|
|0-24 months (no birth st.) |MAL-ED     |PERU                         |0%                 |NA             | -0.0151205| -0.1051855|  0.0749446|
|0-24 months (no birth st.) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |0%                 |NA             |  0.0194793| -0.0402523|  0.0792108|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH                   |0%                 |NA             |  0.0808612|  0.0117067|  0.1500157|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH                   |0%                 |NA             |  0.0152873| -0.0206198|  0.0511944|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH                   |0%                 |NA             |  0.0952588|  0.0466188|  0.1438987|
|0-6 months (no birth st.)  |CMIN       |BANGLADESH                   |0%                 |NA             | -0.0496967| -0.1353687|  0.0359754|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH                   |0%                 |NA             | -0.1215071| -0.2064744| -0.0365398|
|0-6 months (no birth st.)  |MAL-ED     |INDIA                        |0%                 |NA             | -0.0148608| -0.1215334|  0.0918119|
|0-6 months (no birth st.)  |MAL-ED     |PERU                         |0%                 |NA             |  0.0095423| -0.0830233|  0.1021079|
|0-6 months (no birth st.)  |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |0%                 |NA             |  0.0103213| -0.0605553|  0.0811979|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH                   |0%                 |NA             |  0.1195120|  0.0690609|  0.1699631|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH                   |0%                 |NA             |  0.0168948| -0.0121292|  0.0459187|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH                   |0%                 |NA             |  0.0643335|  0.0267294|  0.1019376|


### Parameter: PAF


|agecat                     |studyid    |country                      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:--------------------------|:----------|:----------------------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months (no birth st.) |CMIN       |BANGLADESH                   |0%                 |NA             |  0.0662344| -0.0474806|  0.1676044|
|0-24 months (no birth st.) |CONTENT    |PERU                         |0%                 |NA             | -0.0900265| -0.4257630|  0.1666513|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH                   |0%                 |NA             | -0.0471023| -0.2422453|  0.1173859|
|0-24 months (no birth st.) |MAL-ED     |INDIA                        |0%                 |NA             | -0.0451385| -0.2987386|  0.1589420|
|0-24 months (no birth st.) |MAL-ED     |NEPAL                        |0%                 |NA             | -0.1418494| -0.5136471|  0.1386235|
|0-24 months (no birth st.) |MAL-ED     |PERU                         |0%                 |NA             | -0.0266361| -0.1983669|  0.1204850|
|0-24 months (no birth st.) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |0%                 |NA             |  0.0238322| -0.0521798|  0.0943528|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH                   |0%                 |NA             |  0.1338392|  0.0105520|  0.2417647|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH                   |0%                 |NA             |  0.0388429| -0.0569182|  0.1259276|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH                   |0%                 |NA             |  0.2533563|  0.1130009|  0.3715023|
|0-6 months (no birth st.)  |CMIN       |BANGLADESH                   |0%                 |NA             | -0.1739383| -0.5149959|  0.0903400|
|0-6 months (no birth st.)  |MAL-ED     |BANGLADESH                   |0%                 |NA             | -0.5610009| -1.0082686| -0.2133456|
|0-6 months (no birth st.)  |MAL-ED     |INDIA                        |0%                 |NA             | -0.0678427| -0.6845862|  0.3231050|
|0-6 months (no birth st.)  |MAL-ED     |PERU                         |0%                 |NA             |  0.0275897| -0.2804578|  0.2615284|
|0-6 months (no birth st.)  |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |0%                 |NA             |  0.0342479| -0.2320153|  0.2429663|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH                   |0%                 |NA             |  0.5215068|  0.2601503|  0.6905375|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH                   |0%                 |NA             |  0.0889699| -0.0769988|  0.2293624|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH                   |0%                 |NA             |  0.4031992|  0.1270059|  0.5920119|
