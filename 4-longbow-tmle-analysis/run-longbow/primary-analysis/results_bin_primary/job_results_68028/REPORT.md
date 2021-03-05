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

**Intervention Variable:** perdiar6

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
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

|agecat                      |studyid    |country                      |perdiar6 | ever_swasted| n_cell|   n|
|:---------------------------|:----------|:----------------------------|:--------|------------:|------:|---:|
|0-24 months (no birth wast) |CMIN       |BANGLADESH                   |0%       |            0|     83| 268|
|0-24 months (no birth wast) |CMIN       |BANGLADESH                   |0%       |            1|     10| 268|
|0-24 months (no birth wast) |CMIN       |BANGLADESH                   |(0%, 5%] |            0|     52| 268|
|0-24 months (no birth wast) |CMIN       |BANGLADESH                   |(0%, 5%] |            1|     10| 268|
|0-24 months (no birth wast) |CMIN       |BANGLADESH                   |>5%      |            0|     96| 268|
|0-24 months (no birth wast) |CMIN       |BANGLADESH                   |>5%      |            1|     17| 268|
|0-24 months (no birth wast) |CONTENT    |PERU                         |0%       |            0|    115| 215|
|0-24 months (no birth wast) |CONTENT    |PERU                         |0%       |            1|      0| 215|
|0-24 months (no birth wast) |CONTENT    |PERU                         |(0%, 5%] |            0|     43| 215|
|0-24 months (no birth wast) |CONTENT    |PERU                         |(0%, 5%] |            1|      0| 215|
|0-24 months (no birth wast) |CONTENT    |PERU                         |>5%      |            0|     56| 215|
|0-24 months (no birth wast) |CONTENT    |PERU                         |>5%      |            1|      1| 215|
|0-24 months (no birth wast) |EE         |PAKISTAN                     |0%       |            0|    278| 377|
|0-24 months (no birth wast) |EE         |PAKISTAN                     |0%       |            1|     62| 377|
|0-24 months (no birth wast) |EE         |PAKISTAN                     |(0%, 5%] |            0|     31| 377|
|0-24 months (no birth wast) |EE         |PAKISTAN                     |(0%, 5%] |            1|      4| 377|
|0-24 months (no birth wast) |EE         |PAKISTAN                     |>5%      |            0|      2| 377|
|0-24 months (no birth wast) |EE         |PAKISTAN                     |>5%      |            1|      0| 377|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH                   |0%       |            0|     80| 263|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH                   |0%       |            1|      5| 263|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH                   |(0%, 5%] |            0|     93| 263|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH                   |(0%, 5%] |            1|      5| 263|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH                   |>5%      |            0|     78| 263|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH                   |>5%      |            1|      2| 263|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL                       |0%       |            0|    212| 233|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL                       |0%       |            1|      4| 233|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL                       |(0%, 5%] |            0|     15| 233|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL                       |(0%, 5%] |            1|      0| 233|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL                       |>5%      |            0|      2| 233|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL                       |>5%      |            1|      0| 233|
|0-24 months (no birth wast) |MAL-ED     |INDIA                        |0%       |            0|     53| 246|
|0-24 months (no birth wast) |MAL-ED     |INDIA                        |0%       |            1|      6| 246|
|0-24 months (no birth wast) |MAL-ED     |INDIA                        |(0%, 5%] |            0|    124| 246|
|0-24 months (no birth wast) |MAL-ED     |INDIA                        |(0%, 5%] |            1|      4| 246|
|0-24 months (no birth wast) |MAL-ED     |INDIA                        |>5%      |            0|     56| 246|
|0-24 months (no birth wast) |MAL-ED     |INDIA                        |>5%      |            1|      3| 246|
|0-24 months (no birth wast) |MAL-ED     |NEPAL                        |0%       |            0|     81| 239|
|0-24 months (no birth wast) |MAL-ED     |NEPAL                        |0%       |            1|      2| 239|
|0-24 months (no birth wast) |MAL-ED     |NEPAL                        |(0%, 5%] |            0|     75| 239|
|0-24 months (no birth wast) |MAL-ED     |NEPAL                        |(0%, 5%] |            1|      1| 239|
|0-24 months (no birth wast) |MAL-ED     |NEPAL                        |>5%      |            0|     80| 239|
|0-24 months (no birth wast) |MAL-ED     |NEPAL                        |>5%      |            1|      0| 239|
|0-24 months (no birth wast) |MAL-ED     |PERU                         |0%       |            0|     88| 302|
|0-24 months (no birth wast) |MAL-ED     |PERU                         |0%       |            1|      1| 302|
|0-24 months (no birth wast) |MAL-ED     |PERU                         |(0%, 5%] |            0|     92| 302|
|0-24 months (no birth wast) |MAL-ED     |PERU                         |(0%, 5%] |            1|      1| 302|
|0-24 months (no birth wast) |MAL-ED     |PERU                         |>5%      |            0|    118| 302|
|0-24 months (no birth wast) |MAL-ED     |PERU                         |>5%      |            1|      2| 302|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA                 |0%       |            0|    224| 302|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA                 |0%       |            1|      8| 302|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA                 |(0%, 5%] |            0|     56| 302|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA                 |(0%, 5%] |            1|      4| 302|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA                 |>5%      |            0|     10| 302|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA                 |>5%      |            1|      0| 302|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |0%       |            0|    111| 261|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |0%       |            1|      2| 261|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |(0%, 5%] |            0|     97| 261|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |(0%, 5%] |            1|      5| 261|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |>5%      |            0|     45| 261|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |>5%      |            1|      1| 261|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH                   |0%       |            0|    146| 599|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH                   |0%       |            1|     11| 599|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH                   |(0%, 5%] |            0|    169| 599|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH                   |(0%, 5%] |            1|     13| 599|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH                   |>5%      |            0|    230| 599|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH                   |>5%      |            1|     30| 599|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH                   |0%       |            0|    352| 754|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH                   |0%       |            1|     12| 754|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH                   |(0%, 5%] |            0|    170| 754|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH                   |(0%, 5%] |            1|      3| 754|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH                   |>5%      |            0|    212| 754|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH                   |>5%      |            1|      5| 754|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH                   |0%       |            0|    209| 687|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH                   |0%       |            1|      4| 687|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH                   |(0%, 5%] |            0|    249| 687|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH                   |(0%, 5%] |            1|     10| 687|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH                   |>5%      |            0|    210| 687|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH                   |>5%      |            1|      5| 687|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
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

* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/b15a92b3-d3bd-48e5-ae71-7016b79c1f68/a852837c-c5e2-47ba-b93f-49467d48daea/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b15a92b3-d3bd-48e5-ae71-7016b79c1f68/a852837c-c5e2-47ba-b93f-49467d48daea/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b15a92b3-d3bd-48e5-ae71-7016b79c1f68/a852837c-c5e2-47ba-b93f-49467d48daea/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b15a92b3-d3bd-48e5-ae71-7016b79c1f68/a852837c-c5e2-47ba-b93f-49467d48daea/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |CMIN      |BANGLADESH |0%                 |NA             | 0.1089583| 0.0420176| 0.1758989|
|0-24 months (no birth wast) |CMIN      |BANGLADESH |(0%, 5%]           |NA             | 0.1650014| 0.0656660| 0.2643368|
|0-24 months (no birth wast) |CMIN      |BANGLADESH |>5%                |NA             | 0.1452982| 0.0795460| 0.2110503|
|0-24 months (no birth wast) |NIH-Birth |BANGLADESH |0%                 |NA             | 0.0773531| 0.0352473| 0.1194588|
|0-24 months (no birth wast) |NIH-Birth |BANGLADESH |(0%, 5%]           |NA             | 0.0737039| 0.0353245| 0.1120834|
|0-24 months (no birth wast) |NIH-Birth |BANGLADESH |>5%                |NA             | 0.1097377| 0.0714464| 0.1480289|


### Parameter: E(Y)


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |CMIN      |BANGLADESH |NA                 |NA             | 0.1380597| 0.0966822| 0.1794372|
|0-24 months (no birth wast) |NIH-Birth |BANGLADESH |NA                 |NA             | 0.0901503| 0.0671959| 0.1131046|


### Parameter: RR


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth wast) |CMIN      |BANGLADESH |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |CMIN      |BANGLADESH |(0%, 5%]           |0%             | 1.5143541| 0.6400541| 3.582928|
|0-24 months (no birth wast) |CMIN      |BANGLADESH |>5%                |0%             | 1.3335214| 0.6222056| 2.858025|
|0-24 months (no birth wast) |NIH-Birth |BANGLADESH |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |NIH-Birth |BANGLADESH |(0%, 5%]           |0%             | 0.9528252| 0.4502155| 2.016536|
|0-24 months (no birth wast) |NIH-Birth |BANGLADESH |>5%                |0%             | 1.4186595| 0.7441999| 2.704374|


### Parameter: PAR


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months (no birth wast) |CMIN      |BANGLADESH |0%                 |NA             | 0.0291014| -0.0281593| 0.0863622|
|0-24 months (no birth wast) |NIH-Birth |BANGLADESH |0%                 |NA             | 0.0127972| -0.0248190| 0.0504134|


### Parameter: PAF


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months (no birth wast) |CMIN      |BANGLADESH |0%                 |NA             | 0.2107889| -0.3314727| 0.5322066|
|0-24 months (no birth wast) |NIH-Birth |BANGLADESH |0%                 |NA             | 0.1419541| -0.3922089| 0.4711693|
