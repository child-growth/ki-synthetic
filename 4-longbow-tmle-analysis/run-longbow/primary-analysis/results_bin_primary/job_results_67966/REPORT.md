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

**Outcome Variable:** ever_sstunted

## Predictor Variables

**Intervention Variable:** fhtcm

**Adjustment Set:**

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid       |country   |fhtcm        | ever_sstunted| n_cell|     n|
|:-----------|:-------------|:---------|:------------|-------------:|------:|-----:|
|0-24 months |COHORTS       |GUATEMALA |>=167 cm     |             0|     37|   496|
|0-24 months |COHORTS       |GUATEMALA |>=167 cm     |             1|     27|   496|
|0-24 months |COHORTS       |GUATEMALA |<162 cm      |             0|    103|   496|
|0-24 months |COHORTS       |GUATEMALA |<162 cm      |             1|    190|   496|
|0-24 months |COHORTS       |GUATEMALA |[162-167) cm |             0|     77|   496|
|0-24 months |COHORTS       |GUATEMALA |[162-167) cm |             1|     62|   496|
|0-24 months |Keneba        |GAMBIA    |>=167 cm     |             0|    972|  1929|
|0-24 months |Keneba        |GAMBIA    |>=167 cm     |             1|    273|  1929|
|0-24 months |Keneba        |GAMBIA    |<162 cm      |             0|     98|  1929|
|0-24 months |Keneba        |GAMBIA    |<162 cm      |             1|     34|  1929|
|0-24 months |Keneba        |GAMBIA    |[162-167) cm |             0|    413|  1929|
|0-24 months |Keneba        |GAMBIA    |[162-167) cm |             1|    139|  1929|
|0-24 months |PROBIT        |BELARUS   |>=167 cm     |             0|  11452| 12537|
|0-24 months |PROBIT        |BELARUS   |>=167 cm     |             1|    292| 12537|
|0-24 months |PROBIT        |BELARUS   |<162 cm      |             0|    154| 12537|
|0-24 months |PROBIT        |BELARUS   |<162 cm      |             1|     14| 12537|
|0-24 months |PROBIT        |BELARUS   |[162-167) cm |             0|    597| 12537|
|0-24 months |PROBIT        |BELARUS   |[162-167) cm |             1|     28| 12537|
|0-24 months |SAS-CompFeed  |INDIA     |>=167 cm     |             0|    307|   907|
|0-24 months |SAS-CompFeed  |INDIA     |>=167 cm     |             1|    103|   907|
|0-24 months |SAS-CompFeed  |INDIA     |<162 cm      |             0|    130|   907|
|0-24 months |SAS-CompFeed  |INDIA     |<162 cm      |             1|    100|   907|
|0-24 months |SAS-CompFeed  |INDIA     |[162-167) cm |             0|    159|   907|
|0-24 months |SAS-CompFeed  |INDIA     |[162-167) cm |             1|    108|   907|
|0-24 months |SAS-FoodSuppl |INDIA     |>=167 cm     |             0|     62|   399|
|0-24 months |SAS-FoodSuppl |INDIA     |>=167 cm     |             1|     44|   399|
|0-24 months |SAS-FoodSuppl |INDIA     |<162 cm      |             0|     69|   399|
|0-24 months |SAS-FoodSuppl |INDIA     |<162 cm      |             1|     94|   399|
|0-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm |             0|     72|   399|
|0-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm |             1|     58|   399|


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA



## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/dd6781ec-c183-4640-8b87-a1407f0eabc5/85992ea6-7dae-40fd-b5b6-93cb8990dbcc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dd6781ec-c183-4640-8b87-a1407f0eabc5/85992ea6-7dae-40fd-b5b6-93cb8990dbcc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/dd6781ec-c183-4640-8b87-a1407f0eabc5/85992ea6-7dae-40fd-b5b6-93cb8990dbcc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dd6781ec-c183-4640-8b87-a1407f0eabc5/85992ea6-7dae-40fd-b5b6-93cb8990dbcc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid       |country   |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:---------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS       |GUATEMALA |>=167 cm           |NA             | 0.4407928| 0.3215581| 0.5600274|
|0-24 months |COHORTS       |GUATEMALA |<162 cm            |NA             | 0.6503521| 0.5940406| 0.7066636|
|0-24 months |COHORTS       |GUATEMALA |[162-167) cm       |NA             | 0.4355883| 0.3509782| 0.5201983|
|0-24 months |Keneba        |GAMBIA    |>=167 cm           |NA             | 0.2231679| 0.1994719| 0.2468638|
|0-24 months |Keneba        |GAMBIA    |<162 cm            |NA             | 0.2427016| 0.1710586| 0.3143447|
|0-24 months |Keneba        |GAMBIA    |[162-167) cm       |NA             | 0.2356439| 0.1986263| 0.2726616|
|0-24 months |PROBIT        |BELARUS   |>=167 cm           |NA             | 0.0249793| 0.0182788| 0.0316799|
|0-24 months |PROBIT        |BELARUS   |<162 cm            |NA             | 0.0777379| 0.0547699| 0.1007059|
|0-24 months |PROBIT        |BELARUS   |[162-167) cm       |NA             | 0.0408351| 0.0173468| 0.0643234|
|0-24 months |SAS-CompFeed  |INDIA     |>=167 cm           |NA             | 0.2730944| 0.2292081| 0.3169807|
|0-24 months |SAS-CompFeed  |INDIA     |<162 cm            |NA             | 0.3982028| 0.3419936| 0.4544120|
|0-24 months |SAS-CompFeed  |INDIA     |[162-167) cm       |NA             | 0.3962731| 0.3092057| 0.4833405|
|0-24 months |SAS-FoodSuppl |INDIA     |>=167 cm           |NA             | 0.4210162| 0.3277284| 0.5143039|
|0-24 months |SAS-FoodSuppl |INDIA     |<162 cm            |NA             | 0.5642176| 0.4884770| 0.6399583|
|0-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm       |NA             | 0.4575611| 0.3723694| 0.5427528|


### Parameter: E(Y)


|agecat      |studyid       |country   |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:---------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |COHORTS       |GUATEMALA |NA                 |NA             | 0.5625000| 0.5187986| 0.6062014|
|0-24 months |Keneba        |GAMBIA    |NA                 |NA             | 0.2312079| 0.2123887| 0.2500270|
|0-24 months |PROBIT        |BELARUS   |NA                 |NA             | 0.0266411| 0.0195656| 0.0337167|
|0-24 months |SAS-CompFeed  |INDIA     |NA                 |NA             | 0.3428886| 0.3091585| 0.3766188|
|0-24 months |SAS-FoodSuppl |INDIA     |NA                 |NA             | 0.4912281| 0.4421136| 0.5403426|


### Parameter: RR


|agecat      |studyid       |country   |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:-------------|:---------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |COHORTS       |GUATEMALA |>=167 cm           |>=167 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |COHORTS       |GUATEMALA |<162 cm            |>=167 cm       | 1.4754145| 1.1123573| 1.956968|
|0-24 months |COHORTS       |GUATEMALA |[162-167) cm       |>=167 cm       | 0.9881928| 0.7093363| 1.376674|
|0-24 months |Keneba        |GAMBIA    |>=167 cm           |>=167 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |Keneba        |GAMBIA    |<162 cm            |>=167 cm       | 1.0875294| 0.7952758| 1.487183|
|0-24 months |Keneba        |GAMBIA    |[162-167) cm       |>=167 cm       | 1.0559044| 0.8741976| 1.275380|
|0-24 months |PROBIT        |BELARUS   |>=167 cm           |>=167 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |PROBIT        |BELARUS   |<162 cm            |>=167 cm       | 3.1120883| 2.2297127| 4.343651|
|0-24 months |PROBIT        |BELARUS   |[162-167) cm       |>=167 cm       | 1.6347557| 0.9579478| 2.789741|
|0-24 months |SAS-CompFeed  |INDIA     |>=167 cm           |>=167 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-CompFeed  |INDIA     |<162 cm            |>=167 cm       | 1.4581139| 1.2036674| 1.766349|
|0-24 months |SAS-CompFeed  |INDIA     |[162-167) cm       |>=167 cm       | 1.4510480| 1.0894619| 1.932642|
|0-24 months |SAS-FoodSuppl |INDIA     |>=167 cm           |>=167 cm       | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-FoodSuppl |INDIA     |<162 cm            |>=167 cm       | 1.3401329| 1.0359731| 1.733594|
|0-24 months |SAS-FoodSuppl |INDIA     |[162-167) cm       |>=167 cm       | 1.0868017| 0.8155974| 1.448187|


### Parameter: PAR


|agecat      |studyid       |country   |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:-------------|:---------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |COHORTS       |GUATEMALA |>=167 cm           |NA             | 0.1217072|  0.0091244| 0.2342900|
|0-24 months |Keneba        |GAMBIA    |>=167 cm           |NA             | 0.0080400| -0.0067956| 0.0228756|
|0-24 months |PROBIT        |BELARUS   |>=167 cm           |NA             | 0.0016618|  0.0002643| 0.0030593|
|0-24 months |SAS-CompFeed  |INDIA     |>=167 cm           |NA             | 0.0697942|  0.0339433| 0.1056452|
|0-24 months |SAS-FoodSuppl |INDIA     |>=167 cm           |NA             | 0.0702119| -0.0095953| 0.1500191|


### Parameter: PAF


|agecat      |studyid       |country   |intervention_level |baseline_level |  estimate|   ci_lower|  ci_upper|
|:-----------|:-------------|:---------|:------------------|:--------------|---------:|----------:|---------:|
|0-24 months |COHORTS       |GUATEMALA |>=167 cm           |NA             | 0.2163684| -0.0117611| 0.3930598|
|0-24 months |Keneba        |GAMBIA    |>=167 cm           |NA             | 0.0347739| -0.0315701| 0.0968511|
|0-24 months |PROBIT        |BELARUS   |>=167 cm           |NA             | 0.0623773|  0.0120798| 0.1101141|
|0-24 months |SAS-CompFeed  |INDIA     |>=167 cm           |NA             | 0.2035478|  0.0943480| 0.2995807|
|0-24 months |SAS-FoodSuppl |INDIA     |>=167 cm           |NA             | 0.1429314| -0.0365377| 0.2913267|
