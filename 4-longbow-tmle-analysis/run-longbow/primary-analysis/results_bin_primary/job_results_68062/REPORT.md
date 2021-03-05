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

**Intervention Variable:** trth2o

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
* W_nhh
* W_nchldlt5
* brthmon
* cleanck
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_brthmon
* delta_cleanck
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid        |country                      |trth2o | ever_wasted| n_cell|   n|
|:---------------------------|:--------------|:----------------------------|:------|-----------:|------:|---:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1      |           0|     68| 119|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1      |           1|     51| 119|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0      |           0|      0| 119|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0      |           1|      0| 119|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1      |           0|      1|   4|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1      |           1|      0|   4|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0      |           0|      1|   4|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0      |           1|      2|   4|
|0-24 months (no birth wast) |IRC            |INDIA                        |1      |           0|     48| 122|
|0-24 months (no birth wast) |IRC            |INDIA                        |1      |           1|     74| 122|
|0-24 months (no birth wast) |IRC            |INDIA                        |0      |           0|      0| 122|
|0-24 months (no birth wast) |IRC            |INDIA                        |0      |           1|      0| 122|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |1      |           0|    104| 135|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |1      |           1|     29| 135|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |0      |           0|      2| 135|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |0      |           1|      0| 135|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |1      |           0|     13| 103|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |1      |           1|      0| 103|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |0      |           0|     85| 103|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |0      |           1|      5| 103|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |1      |           0|      3|   9|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |1      |           1|      1|   9|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |0      |           0|      2|   9|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |0      |           1|      3|   9|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |1      |           0|     49|  83|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |1      |           1|     20|  83|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |0      |           0|     12|  83|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |0      |           1|      2|  83|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |1      |           0|     37|  49|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |1      |           1|      2|  49|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |0      |           0|      8|  49|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |0      |           1|      2|  49|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |1      |           0|      2|  12|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |1      |           1|      0|  12|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |0      |           0|      4|  12|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |0      |           1|      6|  12|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |           0|      6|  43|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |           1|      0|  43|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0      |           0|     31|  43|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0      |           1|      6|  43|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |1      |           0|    366| 754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |1      |           1|     60| 754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0      |           0|    280| 754|
|0-24 months (no birth wast) |NIH-Crypto     |BANGLADESH                   |0      |           1|     48| 754|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1      |           0|     16| 687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1      |           1|      0| 687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0      |           0|    549| 687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0      |           1|    122| 687|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |1      |           0|     80| 114|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |1      |           1|     34| 114|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |0      |           0|      0| 114|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA                        |0      |           1|      0| 114|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |1      |           0|      1|   4|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |1      |           1|      0|   4|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |0      |           0|      3|   4|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL                        |0      |           1|      0|   4|
|0-6 months (no birth wast)  |IRC            |INDIA                        |1      |           0|     71| 120|
|0-6 months (no birth wast)  |IRC            |INDIA                        |1      |           1|     49| 120|
|0-6 months (no birth wast)  |IRC            |INDIA                        |0      |           0|      0| 120|
|0-6 months (no birth wast)  |IRC            |INDIA                        |0      |           1|      0| 120|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |1      |           0|    127| 134|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |1      |           1|      5| 134|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |0      |           0|      2| 134|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH                   |0      |           1|      0| 134|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |1      |           0|     13| 103|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |1      |           1|      0| 103|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |0      |           0|     86| 103|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL                       |0      |           1|      4| 103|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |1      |           0|      3|   9|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |1      |           1|      1|   9|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |0      |           0|      5|   9|
|0-6 months (no birth wast)  |MAL-ED         |INDIA                        |0      |           1|      0|   9|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |1      |           0|     61|  83|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |1      |           1|      8|  83|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |0      |           0|     13|  83|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL                        |0      |           1|      1|  83|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |1      |           0|     38|  49|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |1      |           1|      1|  49|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |0      |           0|     10|  49|
|0-6 months (no birth wast)  |MAL-ED         |PERU                         |0      |           1|      0|  49|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |1      |           0|      2|  12|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |1      |           1|      0|  12|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |0      |           0|      6|  12|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA                 |0      |           1|      4|  12|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |           0|      6|  43|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1      |           1|      0|  43|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0      |           0|     35|  43|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0      |           1|      2|  43|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |1      |           0|    412| 749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |1      |           1|     10| 749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |0      |           0|    317| 749|
|0-6 months (no birth wast)  |NIH-Crypto     |BANGLADESH                   |0      |           1|     10| 749|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |1      |           0|     16| 683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |1      |           1|      0| 683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |0      |           0|    630| 683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH                   |0      |           1|     37| 683|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/656a0200-ae50-4da7-bb41-c7977222bc30/a5b66432-08ba-414f-a2a1-aa49c51f7528/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/656a0200-ae50-4da7-bb41-c7977222bc30/a5b66432-08ba-414f-a2a1-aa49c51f7528/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/656a0200-ae50-4da7-bb41-c7977222bc30/a5b66432-08ba-414f-a2a1-aa49c51f7528/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/656a0200-ae50-4da7-bb41-c7977222bc30/a5b66432-08ba-414f-a2a1-aa49c51f7528/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid    |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:----------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH |1                  |NA             | 0.1417686| 0.1086568| 0.1748803|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH |0                  |NA             | 0.1455301| 0.1069611| 0.1840992|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH |1                  |NA             | 0.0233513| 0.0088172| 0.0378854|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH |0                  |NA             | 0.0302313| 0.0114579| 0.0490047|


### Parameter: E(Y)


|agecat                      |studyid    |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:----------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH |NA                 |NA             | 0.1432361| 0.1182149| 0.1682572|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH |NA                 |NA             | 0.0267023| 0.0151493| 0.0382553|


### Parameter: RR


|agecat                      |studyid    |country    |intervention_level |baseline_level | estimate|  ci_lower| ci_upper|
|:---------------------------|:----------|:----------|:------------------|:--------------|--------:|---------:|--------:|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH |0                  |1              | 1.026533| 0.7213936| 1.460743|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH |0                  |1              | 1.294631| 0.5370749| 3.120738|


### Parameter: PAR


|agecat                      |studyid    |country    |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:---------------------------|:----------|:----------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH |1                  |NA             | 0.0014675| -0.0205640| 0.0234990|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH |1                  |NA             | 0.0033510| -0.0070156| 0.0137176|


### Parameter: PAF


|agecat                      |studyid    |country    |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:---------------------------|:----------|:----------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH |1                  |NA             | 0.0102454| -0.1561464| 0.1526903|
|0-6 months (no birth wast)  |NIH-Crypto |BANGLADESH |1                  |NA             | 0.1254940| -0.3586294| 0.4371086|
