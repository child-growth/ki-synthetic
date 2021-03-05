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

**Intervention Variable:** perdiar24

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* hdlvry
* W_birthwt
* W_birthlen
* single
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
* delta_hdlvry
* delta_W_birthwt
* delta_W_birthlen
* delta_single
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

|agecat      |studyid       |country                      |perdiar24 | pers_wast| n_cell|    n|
|:-----------|:-------------|:----------------------------|:---------|---------:|------:|----:|
|0-24 months |CMIN          |BANGLADESH                   |0%        |         0|      3|  257|
|0-24 months |CMIN          |BANGLADESH                   |0%        |         1|      0|  257|
|0-24 months |CMIN          |BANGLADESH                   |(0%, 5%]  |         0|    106|  257|
|0-24 months |CMIN          |BANGLADESH                   |(0%, 5%]  |         1|     12|  257|
|0-24 months |CMIN          |BANGLADESH                   |>5%       |         0|    128|  257|
|0-24 months |CMIN          |BANGLADESH                   |>5%       |         1|      8|  257|
|0-24 months |CONTENT       |PERU                         |0%        |         0|      6|  215|
|0-24 months |CONTENT       |PERU                         |0%        |         1|      0|  215|
|0-24 months |CONTENT       |PERU                         |(0%, 5%]  |         0|    142|  215|
|0-24 months |CONTENT       |PERU                         |(0%, 5%]  |         1|      0|  215|
|0-24 months |CONTENT       |PERU                         |>5%       |         0|     67|  215|
|0-24 months |CONTENT       |PERU                         |>5%       |         1|      0|  215|
|0-24 months |EE            |PAKISTAN                     |0%        |         0|    232|  377|
|0-24 months |EE            |PAKISTAN                     |0%        |         1|     27|  377|
|0-24 months |EE            |PAKISTAN                     |(0%, 5%]  |         0|    112|  377|
|0-24 months |EE            |PAKISTAN                     |(0%, 5%]  |         1|      6|  377|
|0-24 months |EE            |PAKISTAN                     |>5%       |         0|      0|  377|
|0-24 months |EE            |PAKISTAN                     |>5%       |         1|      0|  377|
|0-24 months |Guatemala BSC |GUATEMALA                    |0%        |         0|     12|  256|
|0-24 months |Guatemala BSC |GUATEMALA                    |0%        |         1|      0|  256|
|0-24 months |Guatemala BSC |GUATEMALA                    |(0%, 5%]  |         0|     63|  256|
|0-24 months |Guatemala BSC |GUATEMALA                    |(0%, 5%]  |         1|      1|  256|
|0-24 months |Guatemala BSC |GUATEMALA                    |>5%       |         0|    177|  256|
|0-24 months |Guatemala BSC |GUATEMALA                    |>5%       |         1|      3|  256|
|0-24 months |iLiNS-Zinc    |BURKINA FASO                 |0%        |         0|    133| 1669|
|0-24 months |iLiNS-Zinc    |BURKINA FASO                 |0%        |         1|     23| 1669|
|0-24 months |iLiNS-Zinc    |BURKINA FASO                 |(0%, 5%]  |         0|    873| 1669|
|0-24 months |iLiNS-Zinc    |BURKINA FASO                 |(0%, 5%]  |         1|    105| 1669|
|0-24 months |iLiNS-Zinc    |BURKINA FASO                 |>5%       |         0|    463| 1669|
|0-24 months |iLiNS-Zinc    |BURKINA FASO                 |>5%       |         1|     72| 1669|
|0-24 months |JiVitA-4      |BANGLADESH                   |0%        |         0|    178| 5281|
|0-24 months |JiVitA-4      |BANGLADESH                   |0%        |         1|     13| 5281|
|0-24 months |JiVitA-4      |BANGLADESH                   |(0%, 5%]  |         0|   4174| 5281|
|0-24 months |JiVitA-4      |BANGLADESH                   |(0%, 5%]  |         1|    353| 5281|
|0-24 months |JiVitA-4      |BANGLADESH                   |>5%       |         0|    503| 5281|
|0-24 months |JiVitA-4      |BANGLADESH                   |>5%       |         1|     60| 5281|
|0-24 months |MAL-ED        |BANGLADESH                   |0%        |         0|      8|  248|
|0-24 months |MAL-ED        |BANGLADESH                   |0%        |         1|      0|  248|
|0-24 months |MAL-ED        |BANGLADESH                   |(0%, 5%]  |         0|    136|  248|
|0-24 months |MAL-ED        |BANGLADESH                   |(0%, 5%]  |         1|     10|  248|
|0-24 months |MAL-ED        |BANGLADESH                   |>5%       |         0|     91|  248|
|0-24 months |MAL-ED        |BANGLADESH                   |>5%       |         1|      3|  248|
|0-24 months |MAL-ED        |BRAZIL                       |0%        |         0|    114|  218|
|0-24 months |MAL-ED        |BRAZIL                       |0%        |         1|      1|  218|
|0-24 months |MAL-ED        |BRAZIL                       |(0%, 5%]  |         0|    100|  218|
|0-24 months |MAL-ED        |BRAZIL                       |(0%, 5%]  |         1|      1|  218|
|0-24 months |MAL-ED        |BRAZIL                       |>5%       |         0|      2|  218|
|0-24 months |MAL-ED        |BRAZIL                       |>5%       |         1|      0|  218|
|0-24 months |MAL-ED        |INDIA                        |0%        |         0|      4|  241|
|0-24 months |MAL-ED        |INDIA                        |0%        |         1|      1|  241|
|0-24 months |MAL-ED        |INDIA                        |(0%, 5%]  |         0|    178|  241|
|0-24 months |MAL-ED        |INDIA                        |(0%, 5%]  |         1|     15|  241|
|0-24 months |MAL-ED        |INDIA                        |>5%       |         0|     38|  241|
|0-24 months |MAL-ED        |INDIA                        |>5%       |         1|      5|  241|
|0-24 months |MAL-ED        |NEPAL                        |0%        |         0|     15|  238|
|0-24 months |MAL-ED        |NEPAL                        |0%        |         1|      0|  238|
|0-24 months |MAL-ED        |NEPAL                        |(0%, 5%]  |         0|    140|  238|
|0-24 months |MAL-ED        |NEPAL                        |(0%, 5%]  |         1|      4|  238|
|0-24 months |MAL-ED        |NEPAL                        |>5%       |         0|     79|  238|
|0-24 months |MAL-ED        |NEPAL                        |>5%       |         1|      0|  238|
|0-24 months |MAL-ED        |PERU                         |0%        |         0|     11|  284|
|0-24 months |MAL-ED        |PERU                         |0%        |         1|      0|  284|
|0-24 months |MAL-ED        |PERU                         |(0%, 5%]  |         0|    112|  284|
|0-24 months |MAL-ED        |PERU                         |(0%, 5%]  |         1|      1|  284|
|0-24 months |MAL-ED        |PERU                         |>5%       |         0|    160|  284|
|0-24 months |MAL-ED        |PERU                         |>5%       |         1|      0|  284|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |0%        |         0|     90|  275|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |0%        |         1|      1|  275|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |(0%, 5%]  |         0|    180|  275|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |(0%, 5%]  |         1|      1|  275|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |>5%       |         0|      3|  275|
|0-24 months |MAL-ED        |SOUTH AFRICA                 |>5%       |         1|      0|  275|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0%        |         0|      9|  253|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |0%        |         1|      0|  253|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |(0%, 5%]  |         0|    182|  253|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |(0%, 5%]  |         1|      0|  253|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |>5%       |         0|     62|  253|
|0-24 months |MAL-ED        |TANZANIA, UNITED REPUBLIC OF |>5%       |         1|      0|  253|
|0-24 months |NIH-Birth     |BANGLADESH                   |0%        |         0|     10|  534|
|0-24 months |NIH-Birth     |BANGLADESH                   |0%        |         1|      0|  534|
|0-24 months |NIH-Birth     |BANGLADESH                   |(0%, 5%]  |         0|    302|  534|
|0-24 months |NIH-Birth     |BANGLADESH                   |(0%, 5%]  |         1|     36|  534|
|0-24 months |NIH-Birth     |BANGLADESH                   |>5%       |         0|    175|  534|
|0-24 months |NIH-Birth     |BANGLADESH                   |>5%       |         1|     11|  534|
|0-24 months |NIH-Crypto    |BANGLADESH                   |0%        |         0|    130|  730|
|0-24 months |NIH-Crypto    |BANGLADESH                   |0%        |         1|      4|  730|
|0-24 months |NIH-Crypto    |BANGLADESH                   |(0%, 5%]  |         0|    382|  730|
|0-24 months |NIH-Crypto    |BANGLADESH                   |(0%, 5%]  |         1|     12|  730|
|0-24 months |NIH-Crypto    |BANGLADESH                   |>5%       |         0|    192|  730|
|0-24 months |NIH-Crypto    |BANGLADESH                   |>5%       |         1|     10|  730|
|0-24 months |PROVIDE       |BANGLADESH                   |0%        |         0|     19|  641|
|0-24 months |PROVIDE       |BANGLADESH                   |0%        |         1|      0|  641|
|0-24 months |PROVIDE       |BANGLADESH                   |(0%, 5%]  |         0|    414|  641|
|0-24 months |PROVIDE       |BANGLADESH                   |(0%, 5%]  |         1|     12|  641|
|0-24 months |PROVIDE       |BANGLADESH                   |>5%       |         0|    193|  641|
|0-24 months |PROVIDE       |BANGLADESH                   |>5%       |         1|      3|  641|
|0-24 months |SAS-FoodSuppl |INDIA                        |0%        |         0|     56|  375|
|0-24 months |SAS-FoodSuppl |INDIA                        |0%        |         1|     15|  375|
|0-24 months |SAS-FoodSuppl |INDIA                        |(0%, 5%]  |         0|     37|  375|
|0-24 months |SAS-FoodSuppl |INDIA                        |(0%, 5%]  |         1|      9|  375|
|0-24 months |SAS-FoodSuppl |INDIA                        |>5%       |         0|    217|  375|
|0-24 months |SAS-FoodSuppl |INDIA                        |>5%       |         1|     41|  375|


The following strata were considered:

* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/0d6f79dc-ba4e-4b3b-869f-07d25659a270/3b289b9e-5c60-4b7c-b375-e2863139f555/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0d6f79dc-ba4e-4b3b-869f-07d25659a270/3b289b9e-5c60-4b7c-b375-e2863139f555/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0d6f79dc-ba4e-4b3b-869f-07d25659a270/3b289b9e-5c60-4b7c-b375-e2863139f555/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0d6f79dc-ba4e-4b3b-869f-07d25659a270/3b289b9e-5c60-4b7c-b375-e2863139f555/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid       |country      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc    |BURKINA FASO |0%                 |NA             | 0.1439086| 0.0680319| 0.2197853|
|0-24 months |iLiNS-Zinc    |BURKINA FASO |(0%, 5%]           |NA             | 0.1066792| 0.0789441| 0.1344143|
|0-24 months |iLiNS-Zinc    |BURKINA FASO |>5%                |NA             | 0.1309608| 0.0804809| 0.1814408|
|0-24 months |JiVitA-4      |BANGLADESH   |0%                 |NA             | 0.0704560| 0.0292803| 0.1116317|
|0-24 months |JiVitA-4      |BANGLADESH   |(0%, 5%]           |NA             | 0.0779745| 0.0688806| 0.0870684|
|0-24 months |JiVitA-4      |BANGLADESH   |>5%                |NA             | 0.1037090| 0.0769846| 0.1304333|
|0-24 months |SAS-FoodSuppl |INDIA        |0%                 |NA             | 0.2112676| 0.1161896| 0.3063456|
|0-24 months |SAS-FoodSuppl |INDIA        |(0%, 5%]           |NA             | 0.1956522| 0.0808597| 0.3104446|
|0-24 months |SAS-FoodSuppl |INDIA        |>5%                |NA             | 0.1589147| 0.1142443| 0.2035852|


### Parameter: E(Y)


|agecat      |studyid       |country      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:-------------|:------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |iLiNS-Zinc    |BURKINA FASO |NA                 |NA             | 0.1198322| 0.0943748| 0.1452897|
|0-24 months |JiVitA-4      |BANGLADESH   |NA                 |NA             | 0.0806665| 0.0720540| 0.0892791|
|0-24 months |SAS-FoodSuppl |INDIA        |NA                 |NA             | 0.1733333| 0.1349698| 0.2116969|


### Parameter: RR


|agecat      |studyid       |country      |intervention_level |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:-------------|:------------|:------------------|:--------------|---------:|---------:|--------:|
|0-24 months |iLiNS-Zinc    |BURKINA FASO |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-24 months |iLiNS-Zinc    |BURKINA FASO |(0%, 5%]           |0%             | 0.7412983| 0.4282812| 1.283089|
|0-24 months |iLiNS-Zinc    |BURKINA FASO |>5%                |0%             | 0.9100278| 0.4478994| 1.848966|
|0-24 months |JiVitA-4      |BANGLADESH   |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-4      |BANGLADESH   |(0%, 5%]           |0%             | 1.1067122| 0.6126310| 1.999265|
|0-24 months |JiVitA-4      |BANGLADESH   |>5%                |0%             | 1.4719682| 0.7698989| 2.814253|
|0-24 months |SAS-FoodSuppl |INDIA        |0%                 |0%             | 1.0000000| 1.0000000| 1.000000|
|0-24 months |SAS-FoodSuppl |INDIA        |(0%, 5%]           |0%             | 0.9260870| 0.4420972| 1.939929|
|0-24 months |SAS-FoodSuppl |INDIA        |>5%                |0%             | 0.7521964| 0.4424762| 1.278711|


### Parameter: PAR


|agecat      |studyid       |country      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:-------------|:------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |iLiNS-Zinc    |BURKINA FASO |0%                 |NA             | -0.0240764| -0.0976441| 0.0494914|
|0-24 months |JiVitA-4      |BANGLADESH   |0%                 |NA             |  0.0102106| -0.0301602| 0.0505814|
|0-24 months |SAS-FoodSuppl |INDIA        |0%                 |NA             | -0.0379343| -0.1221275| 0.0462590|


### Parameter: PAF


|agecat      |studyid       |country      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:-------------|:------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |iLiNS-Zinc    |BURKINA FASO |0%                 |NA             | -0.2009172| -1.0105161| 0.2826707|
|0-24 months |JiVitA-4      |BANGLADESH   |0%                 |NA             |  0.1265774| -0.5491037| 0.5075429|
|0-24 months |SAS-FoodSuppl |INDIA        |0%                 |NA             | -0.2188516| -0.8138542| 0.1809710|
