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

|agecat      |studyid        |country                      |exclfeed36 | pers_wast| n_cell|    n|
|:-----------|:--------------|:----------------------------|:----------|---------:|------:|----:|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |1          |         0|      9|    9|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |1          |         1|      0|    9|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |0          |         0|      0|    9|
|0-24 months |CMC-V-BCS-2002 |INDIA                        |0          |         1|      0|    9|
|0-24 months |EE             |PAKISTAN                     |1          |         0|      4|    9|
|0-24 months |EE             |PAKISTAN                     |1          |         1|      0|    9|
|0-24 months |EE             |PAKISTAN                     |0          |         0|      5|    9|
|0-24 months |EE             |PAKISTAN                     |0          |         1|      0|    9|
|0-24 months |GMS-Nepal      |NEPAL                        |1          |         0|    369|  528|
|0-24 months |GMS-Nepal      |NEPAL                        |1          |         1|     54|  528|
|0-24 months |GMS-Nepal      |NEPAL                        |0          |         0|     90|  528|
|0-24 months |GMS-Nepal      |NEPAL                        |0          |         1|     15|  528|
|0-24 months |IRC            |INDIA                        |1          |         0|      0|    4|
|0-24 months |IRC            |INDIA                        |1          |         1|      0|    4|
|0-24 months |IRC            |INDIA                        |0          |         0|      3|    4|
|0-24 months |IRC            |INDIA                        |0          |         1|      1|    4|
|0-24 months |JiVitA-3       |BANGLADESH                   |1          |         0|   5957| 8221|
|0-24 months |JiVitA-3       |BANGLADESH                   |1          |         1|    363| 8221|
|0-24 months |JiVitA-3       |BANGLADESH                   |0          |         0|   1788| 8221|
|0-24 months |JiVitA-3       |BANGLADESH                   |0          |         1|    113| 8221|
|0-24 months |JiVitA-4       |BANGLADESH                   |1          |         0|   3231| 4495|
|0-24 months |JiVitA-4       |BANGLADESH                   |1          |         1|    251| 4495|
|0-24 months |JiVitA-4       |BANGLADESH                   |0          |         0|    908| 4495|
|0-24 months |JiVitA-4       |BANGLADESH                   |0          |         1|    105| 4495|
|0-24 months |Keneba         |GAMBIA                       |1          |         0|    572| 1927|
|0-24 months |Keneba         |GAMBIA                       |1          |         1|     21| 1927|
|0-24 months |Keneba         |GAMBIA                       |0          |         0|   1250| 1927|
|0-24 months |Keneba         |GAMBIA                       |0          |         1|     84| 1927|
|0-24 months |LCNI-5         |MALAWI                       |1          |         0|     42|  240|
|0-24 months |LCNI-5         |MALAWI                       |1          |         1|      0|  240|
|0-24 months |LCNI-5         |MALAWI                       |0          |         0|    195|  240|
|0-24 months |LCNI-5         |MALAWI                       |0          |         1|      3|  240|
|0-24 months |MAL-ED         |BANGLADESH                   |1          |         0|     32|  247|
|0-24 months |MAL-ED         |BANGLADESH                   |1          |         1|      0|  247|
|0-24 months |MAL-ED         |BANGLADESH                   |0          |         0|    202|  247|
|0-24 months |MAL-ED         |BANGLADESH                   |0          |         1|     13|  247|
|0-24 months |MAL-ED         |BRAZIL                       |1          |         0|     14|  217|
|0-24 months |MAL-ED         |BRAZIL                       |1          |         1|      0|  217|
|0-24 months |MAL-ED         |BRAZIL                       |0          |         0|    201|  217|
|0-24 months |MAL-ED         |BRAZIL                       |0          |         1|      2|  217|
|0-24 months |MAL-ED         |INDIA                        |1          |         0|      8|  238|
|0-24 months |MAL-ED         |INDIA                        |1          |         1|      1|  238|
|0-24 months |MAL-ED         |INDIA                        |0          |         0|    209|  238|
|0-24 months |MAL-ED         |INDIA                        |0          |         1|     20|  238|
|0-24 months |MAL-ED         |NEPAL                        |1          |         0|      4|  236|
|0-24 months |MAL-ED         |NEPAL                        |1          |         1|      1|  236|
|0-24 months |MAL-ED         |NEPAL                        |0          |         0|    228|  236|
|0-24 months |MAL-ED         |NEPAL                        |0          |         1|      3|  236|
|0-24 months |MAL-ED         |PERU                         |1          |         0|      7|  282|
|0-24 months |MAL-ED         |PERU                         |1          |         1|      0|  282|
|0-24 months |MAL-ED         |PERU                         |0          |         0|    274|  282|
|0-24 months |MAL-ED         |PERU                         |0          |         1|      1|  282|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1          |         0|      3|  271|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |1          |         1|      0|  271|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0          |         0|    266|  271|
|0-24 months |MAL-ED         |SOUTH AFRICA                 |0          |         1|      2|  271|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1          |         0|      4|  249|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1          |         1|      0|  249|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0          |         0|    245|  249|
|0-24 months |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0          |         1|      0|  249|
|0-24 months |PROVIDE        |BANGLADESH                   |1          |         0|    160|  639|
|0-24 months |PROVIDE        |BANGLADESH                   |1          |         1|      2|  639|
|0-24 months |PROVIDE        |BANGLADESH                   |0          |         0|    464|  639|
|0-24 months |PROVIDE        |BANGLADESH                   |0          |         1|     13|  639|
|0-24 months |SAS-FoodSuppl  |INDIA                        |1          |         0|      0|  166|
|0-24 months |SAS-FoodSuppl  |INDIA                        |1          |         1|      0|  166|
|0-24 months |SAS-FoodSuppl  |INDIA                        |0          |         0|    136|  166|
|0-24 months |SAS-FoodSuppl  |INDIA                        |0          |         1|     30|  166|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/6bb3d99b-9ae3-4142-8a16-d2f5a914a6ff/f85424ec-25e1-4583-8e2f-e74094192ebd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6bb3d99b-9ae3-4142-8a16-d2f5a914a6ff/f85424ec-25e1-4583-8e2f-e74094192ebd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6bb3d99b-9ae3-4142-8a16-d2f5a914a6ff/f85424ec-25e1-4583-8e2f-e74094192ebd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6bb3d99b-9ae3-4142-8a16-d2f5a914a6ff/f85424ec-25e1-4583-8e2f-e74094192ebd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |GMS-Nepal |NEPAL      |1                  |NA             | 0.1274437| 0.0956059| 0.1592814|
|0-24 months |GMS-Nepal |NEPAL      |0                  |NA             | 0.1431771| 0.0749036| 0.2114506|
|0-24 months |JiVitA-3  |BANGLADESH |1                  |NA             | 0.0573737| 0.0504830| 0.0642645|
|0-24 months |JiVitA-3  |BANGLADESH |0                  |NA             | 0.0598754| 0.0486084| 0.0711423|
|0-24 months |JiVitA-4  |BANGLADESH |1                  |NA             | 0.0745175| 0.0640516| 0.0849834|
|0-24 months |JiVitA-4  |BANGLADESH |0                  |NA             | 0.0927564| 0.0736995| 0.1118133|
|0-24 months |Keneba    |GAMBIA     |1                  |NA             | 0.0357396| 0.0208731| 0.0506062|
|0-24 months |Keneba    |GAMBIA     |0                  |NA             | 0.0631303| 0.0500878| 0.0761728|


### Parameter: E(Y)


|agecat      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |GMS-Nepal |NEPAL      |NA                 |NA             | 0.1306818| 0.1019052| 0.1594584|
|0-24 months |JiVitA-3  |BANGLADESH |NA                 |NA             | 0.0579005| 0.0521352| 0.0636658|
|0-24 months |JiVitA-4  |BANGLADESH |NA                 |NA             | 0.0791991| 0.0699871| 0.0884111|
|0-24 months |Keneba    |GAMBIA     |NA                 |NA             | 0.0544888| 0.0443519| 0.0646258|


### Parameter: RR


|agecat      |studyid   |country    |intervention_level |baseline_level | estimate|  ci_lower| ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|--------:|---------:|--------:|
|0-24 months |GMS-Nepal |NEPAL      |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months |GMS-Nepal |NEPAL      |0                  |1              | 1.123454| 0.6555902| 1.925209|
|0-24 months |JiVitA-3  |BANGLADESH |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3  |BANGLADESH |0                  |1              | 1.043602| 0.8299508| 1.312253|
|0-24 months |JiVitA-4  |BANGLADESH |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-4  |BANGLADESH |0                  |1              | 1.244761| 0.9760164| 1.587503|
|0-24 months |Keneba    |GAMBIA     |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months |Keneba    |GAMBIA     |0                  |1              | 1.766395| 1.1099524| 2.811066|


### Parameter: PAR


|agecat      |studyid   |country    |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |GMS-Nepal |NEPAL      |1                  |NA             | 0.0032381| -0.0115651| 0.0180413|
|0-24 months |JiVitA-3  |BANGLADESH |1                  |NA             | 0.0005268| -0.0026040| 0.0036575|
|0-24 months |JiVitA-4  |BANGLADESH |1                  |NA             | 0.0046816| -0.0002606| 0.0096238|
|0-24 months |Keneba    |GAMBIA     |1                  |NA             | 0.0187492|  0.0050471| 0.0324513|


### Parameter: PAF


|agecat      |studyid   |country    |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:---------|:----------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |GMS-Nepal |NEPAL      |1                  |NA             | 0.0247788| -0.0952449| 0.1316496|
|0-24 months |JiVitA-3  |BANGLADESH |1                  |NA             | 0.0090976| -0.0466018| 0.0618328|
|0-24 months |JiVitA-4  |BANGLADESH |1                  |NA             | 0.0591123| -0.0058294| 0.1198610|
|0-24 months |Keneba    |GAMBIA     |1                  |NA             | 0.3440924|  0.0492791| 0.5474857|
