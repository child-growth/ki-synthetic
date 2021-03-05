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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** predfeed36

**Adjustment Set:**

* arm
* sex
* month
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

|agecat      |studyid       |country                      |predfeed36 | pers_wast| n_cell|    n|
|:-----------|:-------------|:----------------------------|:----------|---------:|------:|----:|
|0-24 months |EE            |PAKISTAN                     |1          |         0|      4|    9|
|0-24 months |EE            |PAKISTAN                     |1          |         1|      0|    9|
|0-24 months |EE            |PAKISTAN                     |0          |         0|      5|    9|
|0-24 months |EE            |PAKISTAN                     |0          |         1|      0|    9|
|0-24 months |GMS-Nepal     |NEPAL                        |1          |         0|    369|  528|
|0-24 months |GMS-Nepal     |NEPAL                        |1          |         1|     54|  528|
|0-24 months |GMS-Nepal     |NEPAL                        |0          |         0|     90|  528|
|0-24 months |GMS-Nepal     |NEPAL                        |0          |         1|     15|  528|
|0-24 months |JiVitA-3      |BANGLADESH                   |1          |         0|   5971| 8221|
|0-24 months |JiVitA-3      |BANGLADESH                   |1          |         1|    363| 8221|
|0-24 months |JiVitA-3      |BANGLADESH                   |0          |         0|   1774| 8221|
|0-24 months |JiVitA-3      |BANGLADESH                   |0          |         1|    113| 8221|
|0-24 months |JiVitA-4      |BANGLADESH                   |1          |         0|   3243| 4495|
|0-24 months |JiVitA-4      |BANGLADESH                   |1          |         1|    252| 4495|
|0-24 months |JiVitA-4      |BANGLADESH                   |0          |         0|    896| 4495|
|0-24 months |JiVitA-4      |BANGLADESH                   |0          |         1|    104| 4495|
|0-24 months |LCNI-5        |MALAWI                       |1          |         0|     42|  240|
|0-24 months |LCNI-5        |MALAWI                       |1          |         1|      0|  240|
|0-24 months |LCNI-5        |MALAWI                       |0          |         0|    195|  240|
|0-24 months |LCNI-5        |MALAWI                       |0          |         1|      3|  240|
|0-24 months |MAL-ED        |BANGLADESH                   |1          |         0|     81|  247|
|0-24 months |MAL-ED        |BANGLADESH                   |1          |         1|      3|  247|
|0-24 months |MAL-ED        |BANGLADESH                   |0          |         0|    153|  247|
|0-24 months |MAL-ED        |BANGLADESH                   |0          |         1|     10|  247|
|0-24 months |MAL-ED        |BRAZIL                       |1          |         0|     27|  217|
|0-24 months |MAL-ED        |BRAZIL                       |1          |         1|      0|  217|
|0-24 months |MAL-ED        |BRAZIL                       |0          |         0|    188|  217|
|0-24 months |MAL-ED        |BRAZIL                       |0          |         1|      2|  217|
|0-24 months |MAL-ED        |INDIA                        |1          |         0|     16|  238|
|0-24 months |MAL-ED        |INDIA                        |1          |         1|      1|  238|
|0-24 months |MAL-ED        |INDIA                        |0          |         0|    201|  238|
|0-24 months |MAL-ED        |INDIA                        |0          |         1|     20|  238|
|0-24 months |MAL-ED        |NEPAL                        |1          |         0|      8|  236|
|0-24 months |MAL-ED        |NEPAL                        |1          |         1|      1|  236|
|0-24 months |MAL-ED        |NEPAL                        |0          |         0|    224|  236|
|0-24 months |MAL-ED        |NEPAL                        |0          |         1|      3|  236|
|0-24 months |MAL-ED        |PERU                         |1          |         0|     78|  282|
|0-24 months |MAL-ED        |PERU                         |1          |         1|      0|  282|
|0-24 months |MAL-ED        |PERU                         |0          |         0|    203|  282|
|0-24 months |MAL-ED        |PERU                         |0          |         1|      1|  282|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |1          |         0|      5|  271|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |1          |         1|      0|  271|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |0          |         0|    264|  271|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |0          |         1|      2|  271|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1          |         0|      5|  249|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |1          |         1|      0|  249|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0          |         0|    244|  249|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0          |         1|      0|  249|
|0-24 months |SAS-FoodSuppl |INDIA                        |1          |         0|      0|  166|
|0-24 months |SAS-FoodSuppl |INDIA                        |1          |         1|      0|  166|
|0-24 months |SAS-FoodSuppl |INDIA                        |0          |         0|    136|  166|
|0-24 months |SAS-FoodSuppl |INDIA                        |0          |         1|     30|  166|


The following strata were considered:

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/4ce3e8d2-623d-4169-971a-4c4ac8b0a774/38ea2ab6-fadf-423e-8623-c829f031ba41/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4ce3e8d2-623d-4169-971a-4c4ac8b0a774/38ea2ab6-fadf-423e-8623-c829f031ba41/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4ce3e8d2-623d-4169-971a-4c4ac8b0a774/38ea2ab6-fadf-423e-8623-c829f031ba41/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4ce3e8d2-623d-4169-971a-4c4ac8b0a774/38ea2ab6-fadf-423e-8623-c829f031ba41/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |GMS-Nepal |NEPAL      |1                  |NA             | 0.1274451| 0.0956362| 0.1592541|
|0-24 months |GMS-Nepal |NEPAL      |0                  |NA             | 0.1439615| 0.0756601| 0.2122628|
|0-24 months |JiVitA-3  |BANGLADESH |1                  |NA             | 0.0572965| 0.0504083| 0.0641848|
|0-24 months |JiVitA-3  |BANGLADESH |0                  |NA             | 0.0604869| 0.0491565| 0.0718172|
|0-24 months |JiVitA-4  |BANGLADESH |1                  |NA             | 0.0738587| 0.0634365| 0.0842809|
|0-24 months |JiVitA-4  |BANGLADESH |0                  |NA             | 0.0935989| 0.0742467| 0.1129511|


### Parameter: E(Y)


|agecat      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |GMS-Nepal |NEPAL      |NA                 |NA             | 0.1306818| 0.1019052| 0.1594584|
|0-24 months |JiVitA-3  |BANGLADESH |NA                 |NA             | 0.0579005| 0.0521352| 0.0636658|
|0-24 months |JiVitA-4  |BANGLADESH |NA                 |NA             | 0.0791991| 0.0699871| 0.0884111|


### Parameter: RR


|agecat      |studyid   |country    |intervention_level |baseline_level | estimate|  ci_lower| ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|--------:|---------:|--------:|
|0-24 months |GMS-Nepal |NEPAL      |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months |GMS-Nepal |NEPAL      |0                  |1              | 1.129596| 0.6606564| 1.931391|
|0-24 months |JiVitA-3  |BANGLADESH |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3  |BANGLADESH |0                  |1              | 1.055681| 0.8400152| 1.326717|
|0-24 months |JiVitA-4  |BANGLADESH |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-4  |BANGLADESH |0                  |1              | 1.267270| 0.9916050| 1.619568|


### Parameter: PAR


|agecat      |studyid   |country    |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |GMS-Nepal |NEPAL      |1                  |NA             | 0.0032367| -0.0115516| 0.0180250|
|0-24 months |JiVitA-3  |BANGLADESH |1                  |NA             | 0.0006040| -0.0025232| 0.0037312|
|0-24 months |JiVitA-4  |BANGLADESH |1                  |NA             | 0.0053404|  0.0004224| 0.0102584|


### Parameter: PAF


|agecat      |studyid   |country    |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |GMS-Nepal |NEPAL      |1                  |NA             | 0.0247677| -0.0951177| 0.1315289|
|0-24 months |JiVitA-3  |BANGLADESH |1                  |NA             | 0.0104312| -0.0452252| 0.0631239|
|0-24 months |JiVitA-4  |BANGLADESH |1                  |NA             | 0.0674301|  0.0027314| 0.1279314|
