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

**Intervention Variable:** impfloor

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
* W_nrooms
* W_nchldlt5
* W_parity
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
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                     |studyid        |country                      |impfloor | ever_stunted| n_cell|     n|
|:--------------------------|:--------------|:----------------------------|:--------|------------:|------:|-----:|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |1        |            0|     21|   198|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |1        |            1|    177|   198|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |0        |            0|      0|   198|
|0-24 months (no birth st.) |CMC-V-BCS-2002 |INDIA                        |0        |            1|      0|   198|
|0-24 months (no birth st.) |CONTENT        |PERU                         |1        |            0|    150|   195|
|0-24 months (no birth st.) |CONTENT        |PERU                         |1        |            1|     32|   195|
|0-24 months (no birth st.) |CONTENT        |PERU                         |0        |            0|     12|   195|
|0-24 months (no birth st.) |CONTENT        |PERU                         |0        |            1|      1|   195|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |1        |            0|     50|   453|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |1        |            1|     42|   453|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |0        |            0|    148|   453|
|0-24 months (no birth st.) |GMS-Nepal      |NEPAL                        |0        |            1|    213|   453|
|0-24 months (no birth st.) |IRC            |INDIA                        |1        |            0|    123|   270|
|0-24 months (no birth st.) |IRC            |INDIA                        |1        |            1|    147|   270|
|0-24 months (no birth st.) |IRC            |INDIA                        |0        |            0|      0|   270|
|0-24 months (no birth st.) |IRC            |INDIA                        |0        |            1|      0|   270|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |1        |            0|   1375| 18325|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |1        |            1|    279| 18325|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |0        |            0|  12329| 18325|
|0-24 months (no birth st.) |JiVitA-3       |BANGLADESH                   |0        |            1|   4342| 18325|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |1        |            0|    361|  3874|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |1        |            1|    154|  3874|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |0        |            0|   1908|  3874|
|0-24 months (no birth st.) |JiVitA-4       |BANGLADESH                   |0        |            1|   1451|  3874|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |1        |            0|     85|   203|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |1        |            1|    101|   203|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |0        |            0|      8|   203|
|0-24 months (no birth st.) |MAL-ED         |BANGLADESH                   |0        |            1|      9|   203|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL                       |1        |            0|    152|   185|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL                       |1        |            1|     31|   185|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL                       |0        |            0|      2|   185|
|0-24 months (no birth st.) |MAL-ED         |BRAZIL                       |0        |            1|      0|   185|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |1        |            0|     85|   197|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |1        |            1|     98|   197|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |0        |            0|      4|   197|
|0-24 months (no birth st.) |MAL-ED         |INDIA                        |0        |            1|     10|   197|
|0-24 months (no birth st.) |MAL-ED         |NEPAL                        |1        |            0|     72|   202|
|0-24 months (no birth st.) |MAL-ED         |NEPAL                        |1        |            1|     14|   202|
|0-24 months (no birth st.) |MAL-ED         |NEPAL                        |0        |            0|     78|   202|
|0-24 months (no birth st.) |MAL-ED         |NEPAL                        |0        |            1|     38|   202|
|0-24 months (no birth st.) |MAL-ED         |PERU                         |1        |            0|     21|   238|
|0-24 months (no birth st.) |MAL-ED         |PERU                         |1        |            1|     27|   238|
|0-24 months (no birth st.) |MAL-ED         |PERU                         |0        |            0|     70|   238|
|0-24 months (no birth st.) |MAL-ED         |PERU                         |0        |            1|    120|   238|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA                 |1        |            0|     91|   229|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA                 |1        |            1|    118|   229|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA                 |0        |            0|      7|   229|
|0-24 months (no birth st.) |MAL-ED         |SOUTH AFRICA                 |0        |            1|     13|   229|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1        |            0|      3|   209|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1        |            1|      8|   209|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0        |            0|     31|   209|
|0-24 months (no birth st.) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0        |            1|    167|   209|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH                   |1        |            0|    193|   529|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH                   |1        |            1|    276|   529|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH                   |0        |            0|     18|   529|
|0-24 months (no birth st.) |NIH-Birth      |BANGLADESH                   |0        |            1|     42|   529|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |1        |            0|    310|   653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |1        |            1|    191|   653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |0        |            0|     86|   653|
|0-24 months (no birth st.) |NIH-Crypto     |BANGLADESH                   |0        |            1|     66|   653|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |1        |            0|    365|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |1        |            1|    213|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |0        |            0|     30|   633|
|0-24 months (no birth st.) |PROVIDE        |BANGLADESH                   |0        |            1|     25|   633|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |1        |            0|    115|   195|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |1        |            1|     80|   195|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |0        |            0|      0|   195|
|0-6 months (no birth st.)  |CMC-V-BCS-2002 |INDIA                        |0        |            1|      0|   195|
|0-6 months (no birth st.)  |CONTENT        |PERU                         |1        |            0|    175|   195|
|0-6 months (no birth st.)  |CONTENT        |PERU                         |1        |            1|      7|   195|
|0-6 months (no birth st.)  |CONTENT        |PERU                         |0        |            0|     13|   195|
|0-6 months (no birth st.)  |CONTENT        |PERU                         |0        |            1|      0|   195|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |1        |            0|     80|   453|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |1        |            1|     12|   453|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |0        |            0|    294|   453|
|0-6 months (no birth st.)  |GMS-Nepal      |NEPAL                        |0        |            1|     67|   453|
|0-6 months (no birth st.)  |IRC            |INDIA                        |1        |            0|    186|   270|
|0-6 months (no birth st.)  |IRC            |INDIA                        |1        |            1|     84|   270|
|0-6 months (no birth st.)  |IRC            |INDIA                        |0        |            0|      0|   270|
|0-6 months (no birth st.)  |IRC            |INDIA                        |0        |            1|      0|   270|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |1        |            0|   1521| 18281|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |1        |            1|    125| 18281|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |0        |            0|  14380| 18281|
|0-6 months (no birth st.)  |JiVitA-3       |BANGLADESH                   |0        |            1|   2255| 18281|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |1        |            0|    457|  3651|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |1        |            1|     30|  3651|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |0        |            0|   2882|  3651|
|0-6 months (no birth st.)  |JiVitA-4       |BANGLADESH                   |0        |            1|    282|  3651|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |1        |            0|    147|   203|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |1        |            1|     39|   203|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |0        |            0|     13|   203|
|0-6 months (no birth st.)  |MAL-ED         |BANGLADESH                   |0        |            1|      4|   203|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL                       |1        |            0|    163|   185|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL                       |1        |            1|     20|   185|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL                       |0        |            0|      2|   185|
|0-6 months (no birth st.)  |MAL-ED         |BRAZIL                       |0        |            1|      0|   185|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |1        |            0|    144|   197|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |1        |            1|     39|   197|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |0        |            0|     10|   197|
|0-6 months (no birth st.)  |MAL-ED         |INDIA                        |0        |            1|      4|   197|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL                        |1        |            0|     85|   202|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL                        |1        |            1|      1|   202|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL                        |0        |            0|    104|   202|
|0-6 months (no birth st.)  |MAL-ED         |NEPAL                        |0        |            1|     12|   202|
|0-6 months (no birth st.)  |MAL-ED         |PERU                         |1        |            0|     28|   238|
|0-6 months (no birth st.)  |MAL-ED         |PERU                         |1        |            1|     20|   238|
|0-6 months (no birth st.)  |MAL-ED         |PERU                         |0        |            0|    122|   238|
|0-6 months (no birth st.)  |MAL-ED         |PERU                         |0        |            1|     68|   238|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA                 |1        |            0|    144|   229|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA                 |1        |            1|     65|   229|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA                 |0        |            0|     12|   229|
|0-6 months (no birth st.)  |MAL-ED         |SOUTH AFRICA                 |0        |            1|      8|   229|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1        |            0|      7|   209|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1        |            1|      4|   209|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0        |            0|    138|   209|
|0-6 months (no birth st.)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0        |            1|     60|   209|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH                   |1        |            0|    372|   529|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH                   |1        |            1|     97|   529|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH                   |0        |            0|     36|   529|
|0-6 months (no birth st.)  |NIH-Birth      |BANGLADESH                   |0        |            1|     24|   529|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |1        |            0|    414|   653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |1        |            1|     87|   653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |0        |            0|    115|   653|
|0-6 months (no birth st.)  |NIH-Crypto     |BANGLADESH                   |0        |            1|     37|   653|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |1        |            0|    491|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |1        |            1|     87|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |0        |            0|     41|   633|
|0-6 months (no birth st.)  |PROVIDE        |BANGLADESH                   |0        |            1|     14|   633|


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/246a73d9-bf86-429a-ab3c-bbff14658414/e9db1be7-0bed-4fd4-9b2b-a599c1e7578e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/246a73d9-bf86-429a-ab3c-bbff14658414/e9db1be7-0bed-4fd4-9b2b-a599c1e7578e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/246a73d9-bf86-429a-ab3c-bbff14658414/e9db1be7-0bed-4fd4-9b2b-a599c1e7578e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/246a73d9-bf86-429a-ab3c-bbff14658414/e9db1be7-0bed-4fd4-9b2b-a599c1e7578e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                     |studyid    |country      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:----------|:------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |GMS-Nepal  |NEPAL        |1                  |NA             | 0.5132334| 0.4022204| 0.6242464|
|0-24 months (no birth st.) |GMS-Nepal  |NEPAL        |0                  |NA             | 0.5950144| 0.5437557| 0.6462732|
|0-24 months (no birth st.) |JiVitA-3   |BANGLADESH   |1                  |NA             | 0.2779355| 0.2520525| 0.3038184|
|0-24 months (no birth st.) |JiVitA-3   |BANGLADESH   |0                  |NA             | 0.2534694| 0.2453435| 0.2615953|
|0-24 months (no birth st.) |JiVitA-4   |BANGLADESH   |1                  |NA             | 0.3051256| 0.2427059| 0.3675454|
|0-24 months (no birth st.) |JiVitA-4   |BANGLADESH   |0                  |NA             | 0.4238704| 0.4024897| 0.4452511|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH   |1                  |NA             | 0.5430108| 0.4712444| 0.6147772|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH   |0                  |NA             | 0.5294118| 0.2915562| 0.7672673|
|0-24 months (no birth st.) |MAL-ED     |NEPAL        |1                  |NA             | 0.1507466| 0.0719288| 0.2295645|
|0-24 months (no birth st.) |MAL-ED     |NEPAL        |0                  |NA             | 0.3112388| 0.2250591| 0.3974186|
|0-24 months (no birth st.) |MAL-ED     |PERU         |1                  |NA             | 0.5533550| 0.4124644| 0.6942456|
|0-24 months (no birth st.) |MAL-ED     |PERU         |0                  |NA             | 0.6285303| 0.5596017| 0.6974589|
|0-24 months (no birth st.) |MAL-ED     |SOUTH AFRICA |1                  |NA             | 0.5645933| 0.4972273| 0.6319593|
|0-24 months (no birth st.) |MAL-ED     |SOUTH AFRICA |0                  |NA             | 0.6500000| 0.4405048| 0.8594952|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH   |1                  |NA             | 0.5917935| 0.5473102| 0.6362768|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH   |0                  |NA             | 0.6813742| 0.5667282| 0.7960203|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH   |1                  |NA             | 0.3768970| 0.3352140| 0.4185799|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH   |0                  |NA             | 0.4423800| 0.3537543| 0.5310056|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH   |1                  |NA             | 0.3667718| 0.3274719| 0.4060716|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH   |0                  |NA             | 0.4809086| 0.3504652| 0.6113520|
|0-6 months (no birth st.)  |GMS-Nepal  |NEPAL        |1                  |NA             | 0.1502268| 0.0681697| 0.2322838|
|0-6 months (no birth st.)  |GMS-Nepal  |NEPAL        |0                  |NA             | 0.1814010| 0.1416589| 0.2211432|
|0-6 months (no birth st.)  |JiVitA-3   |BANGLADESH   |1                  |NA             | 0.1259313| 0.1039532| 0.1479093|
|0-6 months (no birth st.)  |JiVitA-3   |BANGLADESH   |0                  |NA             | 0.1310306| 0.1251629| 0.1368983|
|0-6 months (no birth st.)  |JiVitA-4   |BANGLADESH   |1                  |NA             | 0.0748844| 0.0334679| 0.1163009|
|0-6 months (no birth st.)  |JiVitA-4   |BANGLADESH   |0                  |NA             | 0.0866524| 0.0742624| 0.0990425|
|0-6 months (no birth st.)  |MAL-ED     |PERU         |1                  |NA             | 0.4269137| 0.2902770| 0.5635505|
|0-6 months (no birth st.)  |MAL-ED     |PERU         |0                  |NA             | 0.3572085| 0.2887308| 0.4256862|
|0-6 months (no birth st.)  |MAL-ED     |SOUTH AFRICA |1                  |NA             | 0.3110048| 0.2481097| 0.3738999|
|0-6 months (no birth st.)  |MAL-ED     |SOUTH AFRICA |0                  |NA             | 0.4000000| 0.1848264| 0.6151736|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH   |1                  |NA             | 0.2084721| 0.1718761| 0.2450681|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH   |0                  |NA             | 0.3794220| 0.2517089| 0.5071351|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH   |1                  |NA             | 0.1722095| 0.1392717| 0.2051473|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH   |0                  |NA             | 0.2426756| 0.1738600| 0.3114911|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH   |1                  |NA             | 0.1525421| 0.1230528| 0.1820313|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH   |0                  |NA             | 0.1898431| 0.0985415| 0.2811447|


### Parameter: E(Y)


|agecat                     |studyid    |country      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:--------------------------|:----------|:------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth st.) |GMS-Nepal  |NEPAL        |NA                 |NA             | 0.5629139| 0.5171858| 0.6086420|
|0-24 months (no birth st.) |JiVitA-3   |BANGLADESH   |NA                 |NA             | 0.2521692| 0.2444469| 0.2598915|
|0-24 months (no birth st.) |JiVitA-4   |BANGLADESH   |NA                 |NA             | 0.4143005| 0.3961166| 0.4324844|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH   |NA                 |NA             | 0.5418719| 0.4731628| 0.6105810|
|0-24 months (no birth st.) |MAL-ED     |NEPAL        |NA                 |NA             | 0.2574257| 0.1969827| 0.3178687|
|0-24 months (no birth st.) |MAL-ED     |PERU         |NA                 |NA             | 0.6176471| 0.5557776| 0.6795165|
|0-24 months (no birth st.) |MAL-ED     |SOUTH AFRICA |NA                 |NA             | 0.5720524| 0.5078289| 0.6362759|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH   |NA                 |NA             | 0.6011342| 0.5593675| 0.6429009|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH   |NA                 |NA             | 0.3935681| 0.3560687| 0.4310676|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH   |NA                 |NA             | 0.3759874| 0.3382238| 0.4137509|
|0-6 months (no birth st.)  |GMS-Nepal  |NEPAL        |NA                 |NA             | 0.1743929| 0.1394121| 0.2093738|
|0-6 months (no birth st.)  |JiVitA-3   |BANGLADESH   |NA                 |NA             | 0.1301898| 0.1246228| 0.1357568|
|0-6 months (no birth st.)  |JiVitA-4   |BANGLADESH   |NA                 |NA             | 0.0854560| 0.0740923| 0.0968198|
|0-6 months (no birth st.)  |MAL-ED     |PERU         |NA                 |NA             | 0.3697479| 0.3082891| 0.4312067|
|0-6 months (no birth st.)  |MAL-ED     |SOUTH AFRICA |NA                 |NA             | 0.3187773| 0.2582893| 0.3792652|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH   |NA                 |NA             | 0.2287335| 0.1929075| 0.2645595|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH   |NA                 |NA             | 0.1898928| 0.1597870| 0.2199986|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH   |NA                 |NA             | 0.1595577| 0.1310079| 0.1881074|


### Parameter: RR


|agecat                     |studyid    |country      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:--------------------------|:----------|:------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth st.) |GMS-Nepal  |NEPAL        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |GMS-Nepal  |NEPAL        |0                  |1              | 1.1593447| 0.9177189| 1.464588|
|0-24 months (no birth st.) |JiVitA-3   |BANGLADESH   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |JiVitA-3   |BANGLADESH   |0                  |1              | 0.9119721| 0.8276117| 1.004932|
|0-24 months (no birth st.) |JiVitA-4   |BANGLADESH   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |JiVitA-4   |BANGLADESH   |0                  |1              | 1.3891668| 1.1231152| 1.718242|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH   |0                  |1              | 0.9749563| 0.6103754| 1.557304|
|0-24 months (no birth st.) |MAL-ED     |NEPAL        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED     |NEPAL        |0                  |1              | 2.0646487| 1.1384461| 3.744379|
|0-24 months (no birth st.) |MAL-ED     |PERU         |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED     |PERU         |0                  |1              | 1.1358537| 0.8613700| 1.497804|
|0-24 months (no birth st.) |MAL-ED     |SOUTH AFRICA |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |MAL-ED     |SOUTH AFRICA |0                  |1              | 1.1512712| 0.8164327| 1.623435|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH   |0                  |1              | 1.1513716| 0.9589275| 1.382437|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH   |0                  |1              | 1.1737425| 0.9367390| 1.470710|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH   |0                  |1              | 1.3111931| 0.9803980| 1.753602|
|0-6 months (no birth st.)  |GMS-Nepal  |NEPAL        |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |GMS-Nepal  |NEPAL        |0                  |1              | 1.2075148| 0.6705272| 2.174546|
|0-6 months (no birth st.)  |JiVitA-3   |BANGLADESH   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |JiVitA-3   |BANGLADESH   |0                  |1              | 1.0404931| 0.8707195| 1.243369|
|0-6 months (no birth st.)  |JiVitA-4   |BANGLADESH   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |JiVitA-4   |BANGLADESH   |0                  |1              | 1.1571493| 0.6527815| 2.051214|
|0-6 months (no birth st.)  |MAL-ED     |PERU         |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |MAL-ED     |PERU         |0                  |1              | 0.8367230| 0.5767118| 1.213960|
|0-6 months (no birth st.)  |MAL-ED     |SOUTH AFRICA |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |MAL-ED     |SOUTH AFRICA |0                  |1              | 1.2861538| 0.7239480| 2.284959|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH   |0                  |1              | 1.8200134| 1.2467889| 2.656784|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH   |0                  |1              | 1.4091882| 1.0018404| 1.982163|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH   |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH   |0                  |1              | 1.2445295| 0.7431246| 2.084245|


### Parameter: PAR


|agecat                     |studyid    |country      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:--------------------------|:----------|:------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months (no birth st.) |GMS-Nepal  |NEPAL        |1                  |NA             |  0.0496805| -0.0519829|  0.1513438|
|0-24 months (no birth st.) |JiVitA-3   |BANGLADESH   |1                  |NA             | -0.0257663| -0.0512439| -0.0002887|
|0-24 months (no birth st.) |JiVitA-4   |BANGLADESH   |1                  |NA             |  0.1091748|  0.0470330|  0.1713167|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH   |1                  |NA             | -0.0011388| -0.0219512|  0.0196735|
|0-24 months (no birth st.) |MAL-ED     |NEPAL        |1                  |NA             |  0.1066791|  0.0377860|  0.1755723|
|0-24 months (no birth st.) |MAL-ED     |PERU         |1                  |NA             |  0.0642920| -0.0615560|  0.1901401|
|0-24 months (no birth st.) |MAL-ED     |SOUTH AFRICA |1                  |NA             |  0.0074591| -0.0120133|  0.0269315|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH   |1                  |NA             |  0.0093407| -0.0043583|  0.0230397|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH   |1                  |NA             |  0.0166712| -0.0037534|  0.0370958|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH   |1                  |NA             |  0.0092156| -0.0025419|  0.0209731|
|0-6 months (no birth st.)  |GMS-Nepal  |NEPAL        |1                  |NA             |  0.0241662| -0.0517825|  0.1001148|
|0-6 months (no birth st.)  |JiVitA-3   |BANGLADESH   |1                  |NA             |  0.0042586| -0.0173115|  0.0258286|
|0-6 months (no birth st.)  |JiVitA-4   |BANGLADESH   |1                  |NA             |  0.0105716| -0.0303767|  0.0515200|
|0-6 months (no birth st.)  |MAL-ED     |PERU         |1                  |NA             | -0.0571658| -0.1786862|  0.0643546|
|0-6 months (no birth st.)  |MAL-ED     |SOUTH AFRICA |1                  |NA             |  0.0077725| -0.0120761|  0.0276211|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH   |1                  |NA             |  0.0202614|  0.0050741|  0.0354487|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH   |1                  |NA             |  0.0176833| -0.0000221|  0.0353887|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH   |1                  |NA             |  0.0070156| -0.0035228|  0.0175540|


### Parameter: PAF


|agecat                     |studyid    |country      |intervention_level |baseline_level |   estimate|   ci_lower|   ci_upper|
|:--------------------------|:----------|:------------|:------------------|:--------------|----------:|----------:|----------:|
|0-24 months (no birth st.) |GMS-Nepal  |NEPAL        |1                  |NA             |  0.0882559| -0.1115522|  0.2521473|
|0-24 months (no birth st.) |JiVitA-3   |BANGLADESH   |1                  |NA             | -0.1021787| -0.2083788| -0.0053121|
|0-24 months (no birth st.) |JiVitA-4   |BANGLADESH   |1                  |NA             |  0.2635160|  0.0984726|  0.3983448|
|0-24 months (no birth st.) |MAL-ED     |BANGLADESH   |1                  |NA             | -0.0021017| -0.0412568|  0.0355811|
|0-24 months (no birth st.) |MAL-ED     |NEPAL        |1                  |NA             |  0.4144073|  0.0876728|  0.6241274|
|0-24 months (no birth st.) |MAL-ED     |PERU         |1                  |NA             |  0.1040919| -0.1251824|  0.2866478|
|0-24 months (no birth st.) |MAL-ED     |SOUTH AFRICA |1                  |NA             |  0.0130392| -0.0216475|  0.0465482|
|0-24 months (no birth st.) |NIH-Birth  |BANGLADESH   |1                  |NA             |  0.0155385| -0.0075870|  0.0381331|
|0-24 months (no birth st.) |NIH-Crypto |BANGLADESH   |1                  |NA             |  0.0423591| -0.0108955|  0.0928082|
|0-24 months (no birth st.) |PROVIDE    |BANGLADESH   |1                  |NA             |  0.0245104| -0.0073104|  0.0553260|
|0-6 months (no birth st.)  |GMS-Nepal  |NEPAL        |1                  |NA             |  0.1385731| -0.4273998|  0.4801342|
|0-6 months (no birth st.)  |JiVitA-3   |BANGLADESH   |1                  |NA             |  0.0327104| -0.1479222|  0.1849194|
|0-6 months (no birth st.)  |JiVitA-4   |BANGLADESH   |1                  |NA             |  0.1237086| -0.5117334|  0.4920489|
|0-6 months (no birth st.)  |MAL-ED     |PERU         |1                  |NA             | -0.1546076| -0.5358622|  0.1320063|
|0-6 months (no birth st.)  |MAL-ED     |SOUTH AFRICA |1                  |NA             |  0.0243823| -0.0398964|  0.0846877|
|0-6 months (no birth st.)  |NIH-Birth  |BANGLADESH   |1                  |NA             |  0.0885807|  0.0205489|  0.1518872|
|0-6 months (no birth st.)  |NIH-Crypto |BANGLADESH   |1                  |NA             |  0.0931227| -0.0042996|  0.1810945|
|0-6 months (no birth st.)  |PROVIDE    |BANGLADESH   |1                  |NA             |  0.0439691| -0.0241228|  0.1075337|
