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

|agecat                      |studyid        |country                      |exclfeed6 | ever_swasted| n_cell|     n|
|:---------------------------|:--------------|:----------------------------|:---------|------------:|------:|-----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1         |            0|     15|    19|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |1         |            1|      4|    19|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0         |            0|      0|    19|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA                        |0         |            1|      0|    19|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |1         |            0|     38|    48|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |1         |            1|      5|    48|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |0         |            0|      4|    48|
|0-24 months (no birth wast) |EE             |PAKISTAN                     |0         |            1|      1|    48|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1         |            0|    330|   560|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |1         |            1|     87|   560|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0         |            0|    104|   560|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL                        |0         |            1|     39|   560|
|0-24 months (no birth wast) |IRC            |INDIA                        |1         |            0|      0|    14|
|0-24 months (no birth wast) |IRC            |INDIA                        |1         |            1|      0|    14|
|0-24 months (no birth wast) |IRC            |INDIA                        |0         |            0|      9|    14|
|0-24 months (no birth wast) |IRC            |INDIA                        |0         |            1|      5|    14|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1         |            0|  11752| 15666|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |1         |            1|    433| 15666|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0         |            0|   3358| 15666|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH                   |0         |            1|    123| 15666|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1         |            0|   3519|  4722|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |1         |            1|    147|  4722|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0         |            0|   1005|  4722|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH                   |0         |            1|     51|  4722|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |1         |            0|    722|  2226|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |1         |            1|    101|  2226|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |0         |            0|   1159|  2226|
|0-24 months (no birth wast) |Keneba         |GAMBIA                       |0         |            1|    244|  2226|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |1         |            0|     47|   271|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |1         |            1|      0|   271|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |0         |            0|    222|   271|
|0-24 months (no birth wast) |LCNI-5         |MALAWI                       |0         |            1|      2|   271|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |1         |            0|     31|   233|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |1         |            1|      2|   233|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |0         |            0|    190|   233|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH                   |0         |            1|     10|   233|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |1         |            0|     12|   210|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |1         |            1|      0|   210|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |0         |            0|    194|   210|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL                       |0         |            1|      4|   210|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |1         |            0|      2|   216|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |1         |            1|      0|   216|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |0         |            0|    202|   216|
|0-24 months (no birth wast) |MAL-ED         |INDIA                        |0         |            1|     12|   216|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |1         |            0|      5|   225|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |1         |            1|      0|   225|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |0         |            0|    217|   225|
|0-24 months (no birth wast) |MAL-ED         |NEPAL                        |0         |            1|      3|   225|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |1         |            0|      5|   271|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |1         |            1|      0|   271|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |0         |            0|    262|   271|
|0-24 months (no birth wast) |MAL-ED         |PERU                         |0         |            1|      4|   271|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |1         |            0|      0|   237|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |1         |            1|      0|   237|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |0         |            0|    226|   237|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA                 |0         |            1|     11|   237|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1         |            0|      0|   235|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |1         |            1|      0|   235|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0         |            0|    227|   235|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA, UNITED REPUBLIC OF |0         |            1|      8|   235|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1         |            0|    197|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |1         |            1|      4|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0         |            0|    471|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH                   |0         |            1|     15|   687|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |1         |            0|    368|   443|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |1         |            1|     53|   443|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |0         |            0|     20|   443|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA                        |0         |            1|      2|   443|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |1         |            0|      0|   173|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |1         |            1|      0|   173|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |0         |            0|    159|   173|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA                        |0         |            1|     14|   173|


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
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

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/0803f26a-0636-487b-8518-9f7d88362897/a5383164-9773-4340-8031-e03a39b309c0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0803f26a-0636-487b-8518-9f7d88362897/a5383164-9773-4340-8031-e03a39b309c0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0803f26a-0636-487b-8518-9f7d88362897/a5383164-9773-4340-8031-e03a39b309c0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0803f26a-0636-487b-8518-9f7d88362897/a5383164-9773-4340-8031-e03a39b309c0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |NA             | 0.2086219| 0.1694938| 0.2477501|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |0                  |NA             | 0.2717233| 0.1975137| 0.3459329|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |NA             | 0.0354534| 0.0318118| 0.0390950|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |0                  |NA             | 0.0354013| 0.0280475| 0.0427550|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |1                  |NA             | 0.0403713| 0.0334041| 0.0473385|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |0                  |NA             | 0.0463161| 0.0329117| 0.0597205|
|0-24 months (no birth wast) |Keneba    |GAMBIA     |1                  |NA             | 0.1210054| 0.0984200| 0.1435908|
|0-24 months (no birth wast) |Keneba    |GAMBIA     |0                  |NA             | 0.1764742| 0.1565391| 0.1964093|


### Parameter: E(Y)


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |NA                 |NA             | 0.2250000| 0.1903834| 0.2596166|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |NA                 |NA             | 0.0354909| 0.0322227| 0.0387591|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |NA                 |NA             | 0.0419314| 0.0358274| 0.0480353|
|0-24 months (no birth wast) |Keneba    |GAMBIA     |NA                 |NA             | 0.1549865| 0.1399495| 0.1700235|


### Parameter: RR


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |0                  |1              | 1.3024674| 0.9348391| 1.814667|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |0                  |1              | 0.9985286| 0.7920895| 1.258771|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |0                  |1              | 1.1472528| 0.8161751| 1.612631|
|0-24 months (no birth wast) |Keneba    |GAMBIA     |1                  |1              | 1.0000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |Keneba    |GAMBIA     |0                  |1              | 1.4583994| 1.1735265| 1.812425|


### Parameter: PAR


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |NA             | 0.0163781| -0.0050410| 0.0377972|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |NA             | 0.0000375| -0.0017837| 0.0018586|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |1                  |NA             | 0.0015601| -0.0018150| 0.0049352|
|0-24 months (no birth wast) |Keneba    |GAMBIA     |1                  |NA             | 0.0339811|  0.0149487| 0.0530136|


### Parameter: PAF


|agecat                      |studyid   |country    |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:---------------------------|:---------|:----------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months (no birth wast) |GMS-Nepal |NEPAL      |1                  |NA             | 0.0727914| -0.0271375| 0.1629984|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH |1                  |NA             | 0.0010553| -0.0515915| 0.0510664|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH |1                  |NA             | 0.0372059| -0.0469273| 0.1145780|
|0-24 months (no birth wast) |Keneba    |GAMBIA     |1                  |NA             | 0.2192522|  0.0875189| 0.3319673|
