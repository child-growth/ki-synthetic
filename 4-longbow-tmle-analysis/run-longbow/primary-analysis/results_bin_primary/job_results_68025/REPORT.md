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

|agecat                      |studyid        |country                      |impfloor | ever_swasted| n_cell|     n|
|:---------------------------|:--------------|:----------------------------|:--------|------------:|------:|-----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1        |            0|    224|   258|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1        |            1|     34|   258|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0        |            0|      0|   258|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0        |            1|      0|   258|
|0-24 months (no birth wast) |CONTENT        |PERU                         |1        |            0|    200|   215|
|0-24 months (no birth wast) |CONTENT        |PERU                         |1        |            1|      1|   215|
|0-24 months (no birth wast) |CONTENT        |PERU                         |0        |            0|     14|   215|
|0-24 months (no birth wast) |CONTENT        |PERU                         |0        |            1|      0|   215|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1        |            0|     77|   518|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1        |            1|     16|   518|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0        |            0|    333|   518|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0        |            1|     92|   518|
|0-24 months (no birth wast) |IRC            |INDIA                        |1        |            0|    246|   305|
|0-24 months (no birth wast) |IRC            |INDIA                        |1        |            1|     59|   305|
|0-24 months (no birth wast) |IRC            |INDIA                        |0        |            0|      0|   305|
|0-24 months (no birth wast) |IRC            |INDIA                        |0        |            1|      0|   305|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1        |            0|   2038| 26465|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1        |            1|     49| 26465|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0        |            0|  23480| 26465|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0        |            1|    898| 26465|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1        |            0|    626|  5380|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1        |            1|     21|  5380|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0        |            0|   4523|  5380|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0        |            1|    210|  5380|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |1        |            0|    212|   242|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |1        |            1|     11|   242|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |0        |            0|     18|   242|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |0        |            1|      1|   242|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |1        |            0|    204|   210|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |1        |            1|      4|   210|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |0        |            0|      2|   210|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |0        |            1|      0|   210|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |1        |            0|    204|   231|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |1        |            1|     12|   231|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |0        |            0|     15|   231|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |0        |            1|      0|   231|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |1        |            0|    100|   229|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |1        |            1|      3|   229|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |0        |            0|    126|   229|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |0        |            1|      0|   229|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |1        |            0|     59|   272|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |1        |            1|      0|   272|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |0        |            0|    209|   272|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |0        |            1|      4|   272|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |1        |            0|    224|   257|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |1        |            1|     12|   257|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |0        |            0|     21|   257|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |0        |            1|      0|   257|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1        |            0|     13|   248|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1        |            1|      1|   248|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0        |            0|    227|   248|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0        |            1|      7|   248|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |1        |            0|    487|   599|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |1        |            1|     45|   599|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |0        |            0|     58|   599|
|0-24 months (no birth wast) |NIH-Birth      |BANGLADESH                   |0        |            1|      9|   599|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |1        |            0|    559|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |1        |            1|     17|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0        |            0|    175|   754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0        |            1|      3|   754|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1        |            0|    612|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1        |            1|     14|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0        |            0|     56|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0        |            1|      5|   687|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/cfa6cfe6-9099-432d-a4c2-6440b1e84506/bc5df6af-e691-4ff2-a557-3a54cb28f87e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cfa6cfe6-9099-432d-a4c2-6440b1e84506/bc5df6af-e691-4ff2-a557-3a54cb28f87e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/cfa6cfe6-9099-432d-a4c2-6440b1e84506/bc5df6af-e691-4ff2-a557-3a54cb28f87e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cfa6cfe6-9099-432d-a4c2-6440b1e84506/bc5df6af-e691-4ff2-a557-3a54cb28f87e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |NA             | 0.1723304| 0.0944223| 0.2502386|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |0                  |NA             | 0.2174441| 0.1781917| 0.2566966|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |NA             | 0.0237055| 0.0146317| 0.0327793|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |0                  |NA             | 0.0367626| 0.0340727| 0.0394525|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |1                  |NA             | 0.0394038| 0.0047756| 0.0740321|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |0                  |NA             | 0.0426275| 0.0365494| 0.0487055|
|0-24 months (no birth wast) |NIH-Birth |BANGLADESH |1                  |NA             | 0.0845865| 0.0609210| 0.1082519|
|0-24 months (no birth wast) |NIH-Birth |BANGLADESH |0                  |NA             | 0.1343284| 0.0526073| 0.2160494|
|0-24 months (no birth wast) |PROVIDE   |BANGLADESH |1                  |NA             | 0.0223642| 0.0107726| 0.0339558|
|0-24 months (no birth wast) |PROVIDE   |BANGLADESH |0                  |NA             | 0.0819672| 0.0130784| 0.1508560|


### Parameter: E(Y)


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |NA                 |NA             | 0.2084942| 0.1734774| 0.2435110|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |NA                 |NA             | 0.0357831| 0.0332025| 0.0383637|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |NA                 |NA             | 0.0429368| 0.0372250| 0.0486486|
|0-24 months (no birth wast) |NIH-Birth |BANGLADESH |NA                 |NA             | 0.0901503| 0.0671959| 0.1131046|
|0-24 months (no birth wast) |PROVIDE   |BANGLADESH |NA                 |NA             | 0.0276565| 0.0153851| 0.0399279|


### Parameter: RR


|agecat                      |studyid   |country    |intervention_level |baseline_level | estimate|  ci_lower| ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|--------:|---------:|--------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |0                  |1              | 1.261786| 0.7748866| 2.054629|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |0                  |1              | 1.550804| 1.0510052| 2.288281|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |0                  |1              | 1.081810| 0.4426816| 2.643692|
|0-24 months (no birth wast) |NIH-Birth |BANGLADESH |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |NIH-Birth |BANGLADESH |0                  |1              | 1.588060| 0.8129350| 3.102257|
|0-24 months (no birth wast) |PROVIDE   |BANGLADESH |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |PROVIDE   |BANGLADESH |0                  |1              | 3.665105| 1.3653919| 9.838199|


### Parameter: PAR


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |NA             | 0.0361638| -0.0356890| 0.1080166|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |NA             | 0.0120776|  0.0032497| 0.0209055|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |1                  |NA             | 0.0035330| -0.0306088| 0.0376748|
|0-24 months (no birth wast) |NIH-Birth |BANGLADESH |1                  |NA             | 0.0055638| -0.0040351| 0.0151627|
|0-24 months (no birth wast) |PROVIDE   |BANGLADESH |1                  |NA             | 0.0052923| -0.0010389| 0.0116234|


### Parameter: PAF


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |NA             | 0.1734522| -0.2532031| 0.4548519|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |NA             | 0.3375226|  0.0386121| 0.5434972|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |1                  |NA             | 0.0822830| -1.1830002| 0.6141986|
|0-24 months (no birth wast) |NIH-Birth |BANGLADESH |1                  |NA             | 0.0617168| -0.0499751| 0.1615274|
|0-24 months (no birth wast) |PROVIDE   |BANGLADESH |1                  |NA             | 0.1913570| -0.0528139| 0.3788993|
