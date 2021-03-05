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

**Intervention Variable:** hfoodsec

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* vagbrth
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_vagbrth
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
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

|agecat      |studyid    |country      |hfoodsec             | ever_sstunted| n_cell|     n|
|:-----------|:----------|:------------|:--------------------|-------------:|------:|-----:|
|0-24 months |GMS-Nepal  |NEPAL        |Food Secure          |             0|    368|   674|
|0-24 months |GMS-Nepal  |NEPAL        |Food Secure          |             1|    111|   674|
|0-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |             0|     77|   674|
|0-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |             1|     29|   674|
|0-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |             0|     66|   674|
|0-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |             1|     23|   674|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |             0|   7235| 17380|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |             1|   1464| 17380|
|0-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |             0|   4642| 17380|
|0-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |             1|   1143| 17380|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |             0|   2222| 17380|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |             1|    674| 17380|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |             0|   2193|  5398|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |             1|    556|  5398|
|0-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |             0|   1528|  5398|
|0-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |             1|    419|  5398|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |             0|    580|  5398|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |             1|    122|  5398|
|0-24 months |MAL-ED     |BANGLADESH   |Food Secure          |             0|    131|   194|
|0-24 months |MAL-ED     |BANGLADESH   |Food Secure          |             1|     30|   194|
|0-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |             0|      2|   194|
|0-24 months |MAL-ED     |BANGLADESH   |Mildly Food Insecure |             1|      2|   194|
|0-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |             0|     17|   194|
|0-24 months |MAL-ED     |BANGLADESH   |Food Insecure        |             1|     12|   194|
|0-24 months |MAL-ED     |BRAZIL       |Food Secure          |             0|      3|   129|
|0-24 months |MAL-ED     |BRAZIL       |Food Secure          |             1|      0|   129|
|0-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |             0|      9|   129|
|0-24 months |MAL-ED     |BRAZIL       |Mildly Food Insecure |             1|      2|   129|
|0-24 months |MAL-ED     |BRAZIL       |Food Insecure        |             0|    104|   129|
|0-24 months |MAL-ED     |BRAZIL       |Food Insecure        |             1|     11|   129|
|0-24 months |MAL-ED     |INDIA        |Food Secure          |             0|    143|   212|
|0-24 months |MAL-ED     |INDIA        |Food Secure          |             1|     47|   212|
|0-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |             0|      4|   212|
|0-24 months |MAL-ED     |INDIA        |Mildly Food Insecure |             1|      1|   212|
|0-24 months |MAL-ED     |INDIA        |Food Insecure        |             0|     13|   212|
|0-24 months |MAL-ED     |INDIA        |Food Insecure        |             1|      4|   212|
|0-24 months |MAL-ED     |NEPAL        |Food Secure          |             0|     86|   128|
|0-24 months |MAL-ED     |NEPAL        |Food Secure          |             1|      8|   128|
|0-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |             0|     15|   128|
|0-24 months |MAL-ED     |NEPAL        |Mildly Food Insecure |             1|      0|   128|
|0-24 months |MAL-ED     |NEPAL        |Food Insecure        |             0|     13|   128|
|0-24 months |MAL-ED     |NEPAL        |Food Insecure        |             1|      6|   128|
|0-24 months |MAL-ED     |PERU         |Food Secure          |             0|     18|   113|
|0-24 months |MAL-ED     |PERU         |Food Secure          |             1|      9|   113|
|0-24 months |MAL-ED     |PERU         |Mildly Food Insecure |             0|     24|   113|
|0-24 months |MAL-ED     |PERU         |Mildly Food Insecure |             1|      5|   113|
|0-24 months |MAL-ED     |PERU         |Food Insecure        |             0|     39|   113|
|0-24 months |MAL-ED     |PERU         |Food Insecure        |             1|     18|   113|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |             0|     97|   233|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |             1|     35|   233|
|0-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |             0|     14|   233|
|0-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |             1|      5|   233|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |             0|     58|   233|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |             1|     24|   233|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |             0|     77|   629|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |             1|     18|   629|
|0-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |             0|    339|   629|
|0-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |             1|    153|   629|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |             0|     17|   629|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |             1|     25|   629|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |             0|    400|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |             1|     53|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |             0|    191|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |             1|     28|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |             0|     68|   758|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |             1|     18|   758|


The following strata were considered:

* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL

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




# Results Detail

## Results Plots
![](/tmp/ab29a065-043c-4fc1-97ed-d7513b8e6eb3/fd04cf34-8e8d-4902-9430-03690083764c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ab29a065-043c-4fc1-97ed-d7513b8e6eb3/fd04cf34-8e8d-4902-9430-03690083764c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ab29a065-043c-4fc1-97ed-d7513b8e6eb3/fd04cf34-8e8d-4902-9430-03690083764c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ab29a065-043c-4fc1-97ed-d7513b8e6eb3/fd04cf34-8e8d-4902-9430-03690083764c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat      |studyid    |country      |intervention_level   |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:----------|:------------|:--------------------|:--------------|---------:|---------:|---------:|
|0-24 months |GMS-Nepal  |NEPAL        |Food Secure          |NA             | 0.2369675| 0.1983143| 0.2756207|
|0-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |NA             | 0.2806795| 0.1738996| 0.3874593|
|0-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |NA             | 0.2331752| 0.1367290| 0.3296214|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |NA             | 0.1883202| 0.1778437| 0.1987967|
|0-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |NA             | 0.1838338| 0.1720266| 0.1956411|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |NA             | 0.2204075| 0.2011944| 0.2396206|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |NA             | 0.2013706| 0.1845843| 0.2181569|
|0-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |NA             | 0.2150004| 0.1953945| 0.2346063|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |NA             | 0.1732268| 0.1454563| 0.2009973|
|0-24 months |MAL-ED     |PERU         |Food Secure          |NA             | 0.3333333| 0.1547298| 0.5119369|
|0-24 months |MAL-ED     |PERU         |Mildly Food Insecure |NA             | 0.1724138| 0.0343207| 0.3105069|
|0-24 months |MAL-ED     |PERU         |Food Insecure        |NA             | 0.3157895| 0.1945806| 0.4369984|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |NA             | 0.2651515| 0.1896873| 0.3406157|
|0-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |NA             | 0.2631579| 0.0647309| 0.4615849|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |NA             | 0.2926829| 0.1939912| 0.3913747|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |NA             | 0.1884441| 0.1081386| 0.2687497|
|0-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |NA             | 0.3108747| 0.2698876| 0.3518619|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |NA             | 0.5913502| 0.4385650| 0.7441354|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |NA             | 0.1190837| 0.0891011| 0.1490663|
|0-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |NA             | 0.1229189| 0.0793949| 0.1664428|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |NA             | 0.2102074| 0.1223042| 0.2981106|


### Parameter: E(Y)


|agecat      |studyid    |country      |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:-----------|:----------|:------------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months |GMS-Nepal  |NEPAL        |NA                 |NA             | 0.2418398| 0.2094890| 0.2741906|
|0-24 months |JiVitA-3   |BANGLADESH   |NA                 |NA             | 0.1887802| 0.1818268| 0.1957336|
|0-24 months |JiVitA-4   |BANGLADESH   |NA                 |NA             | 0.2032234| 0.1913541| 0.2150928|
|0-24 months |MAL-ED     |PERU         |NA                 |NA             | 0.2831858| 0.1997451| 0.3666266|
|0-24 months |MAL-ED     |SOUTH AFRICA |NA                 |NA             | 0.2746781| 0.2172425| 0.3321138|
|0-24 months |NIH-Birth  |BANGLADESH   |NA                 |NA             | 0.3116057| 0.2753823| 0.3478292|
|0-24 months |NIH-Crypto |BANGLADESH   |NA                 |NA             | 0.1306069| 0.1066024| 0.1546113|


### Parameter: RR


|agecat      |studyid    |country      |intervention_level   |baseline_level |  estimate|  ci_lower| ci_upper|
|:-----------|:----------|:------------|:--------------------|:--------------|---------:|---------:|--------:|
|0-24 months |GMS-Nepal  |NEPAL        |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.000000|
|0-24 months |GMS-Nepal  |NEPAL        |Mildly Food Insecure |Food Secure    | 1.1844640| 0.7828238| 1.792172|
|0-24 months |GMS-Nepal  |NEPAL        |Food Insecure        |Food Secure    | 0.9839966| 0.6310426| 1.534364|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-3   |BANGLADESH   |Mildly Food Insecure |Food Secure    | 0.9761768| 0.8999112| 1.058906|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Insecure        |Food Secure    | 1.1703867| 1.0578863| 1.294851|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.000000|
|0-24 months |JiVitA-4   |BANGLADESH   |Mildly Food Insecure |Food Secure    | 1.0676851| 0.9452219| 1.206015|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Insecure        |Food Secure    | 0.8602387| 0.7154034| 1.034396|
|0-24 months |MAL-ED     |PERU         |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED     |PERU         |Mildly Food Insecure |Food Secure    | 0.5172414| 0.1973289| 1.355801|
|0-24 months |MAL-ED     |PERU         |Food Insecure        |Food Secure    | 0.9473684| 0.4900879| 1.831318|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.000000|
|0-24 months |MAL-ED     |SOUTH AFRICA |Mildly Food Insecure |Food Secure    | 0.9924812| 0.4433061| 2.221984|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Insecure        |Food Secure    | 1.1038328| 0.7100190| 1.716076|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Birth  |BANGLADESH   |Mildly Food Insecure |Food Secure    | 1.6496916| 1.0560329| 2.577081|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Insecure        |Food Secure    | 3.1380662| 1.9067277| 5.164586|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Secure          |Food Secure    | 1.0000000| 1.0000000| 1.000000|
|0-24 months |NIH-Crypto |BANGLADESH   |Mildly Food Insecure |Food Secure    | 1.0322056| 0.6689273| 1.592772|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Insecure        |Food Secure    | 1.7652071| 1.0836219| 2.875501|


### Parameter: PAR


|agecat      |studyid    |country      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:----------|:------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |GMS-Nepal  |NEPAL        |Food Secure        |NA             |  0.0048723| -0.0168318| 0.0265764|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Secure        |NA             |  0.0004600| -0.0077402| 0.0086601|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Secure        |NA             |  0.0018528| -0.0097549| 0.0134606|
|0-24 months |MAL-ED     |PERU         |Food Secure        |NA             | -0.0501475| -0.2038280| 0.1035331|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Secure        |NA             |  0.0095266| -0.0408834| 0.0599366|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Secure        |NA             |  0.1231616|  0.0466552| 0.1996680|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Secure        |NA             |  0.0115232| -0.0088092| 0.0318555|


### Parameter: PAF


|agecat      |studyid    |country      |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:-----------|:----------|:------------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months |GMS-Nepal  |NEPAL        |Food Secure        |NA             |  0.0201467| -0.0738322| 0.1059008|
|0-24 months |JiVitA-3   |BANGLADESH   |Food Secure        |NA             |  0.0024367| -0.0419558| 0.0449378|
|0-24 months |JiVitA-4   |BANGLADESH   |Food Secure        |NA             |  0.0091172| -0.0496947| 0.0646339|
|0-24 months |MAL-ED     |PERU         |Food Secure        |NA             | -0.1770833| -0.8662521| 0.2575895|
|0-24 months |MAL-ED     |SOUTH AFRICA |Food Secure        |NA             |  0.0346828| -0.1674004| 0.2017843|
|0-24 months |NIH-Birth  |BANGLADESH   |Food Secure        |NA             |  0.3952481|  0.0948615| 0.5959460|
|0-24 months |NIH-Crypto |BANGLADESH   |Food Secure        |NA             |  0.0882279| -0.0807417| 0.2307798|
