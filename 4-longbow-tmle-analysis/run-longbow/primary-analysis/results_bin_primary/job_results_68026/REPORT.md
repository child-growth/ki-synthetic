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

**Intervention Variable:** impsan

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
* impfloor
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
* delta_impfloor
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid    |country                      |impsan | ever_swasted| n_cell|     n|
|:---------------------------|:----------|:----------------------------|:------|------------:|------:|-----:|
|0-24 months (no birth wast) |COHORTS    |GUATEMALA                    |1      |            0|     81|   870|
|0-24 months (no birth wast) |COHORTS    |GUATEMALA                    |1      |            1|      0|   870|
|0-24 months (no birth wast) |COHORTS    |GUATEMALA                    |0      |            0|    763|   870|
|0-24 months (no birth wast) |COHORTS    |GUATEMALA                    |0      |            1|     26|   870|
|0-24 months (no birth wast) |COHORTS    |INDIA                        |1      |            0|   1908|  5168|
|0-24 months (no birth wast) |COHORTS    |INDIA                        |1      |            1|     58|  5168|
|0-24 months (no birth wast) |COHORTS    |INDIA                        |0      |            0|   3009|  5168|
|0-24 months (no birth wast) |COHORTS    |INDIA                        |0      |            1|    193|  5168|
|0-24 months (no birth wast) |COHORTS    |PHILIPPINES                  |1      |            0|    169|  1185|
|0-24 months (no birth wast) |COHORTS    |PHILIPPINES                  |1      |            1|     10|  1185|
|0-24 months (no birth wast) |COHORTS    |PHILIPPINES                  |0      |            0|    917|  1185|
|0-24 months (no birth wast) |COHORTS    |PHILIPPINES                  |0      |            1|     89|  1185|
|0-24 months (no birth wast) |CONTENT    |PERU                         |1      |            0|    200|   215|
|0-24 months (no birth wast) |CONTENT    |PERU                         |1      |            1|      1|   215|
|0-24 months (no birth wast) |CONTENT    |PERU                         |0      |            0|     14|   215|
|0-24 months (no birth wast) |CONTENT    |PERU                         |0      |            1|      0|   215|
|0-24 months (no birth wast) |JiVitA-3   |BANGLADESH                   |1      |            0|  17885| 26502|
|0-24 months (no birth wast) |JiVitA-3   |BANGLADESH                   |1      |            1|    626| 26502|
|0-24 months (no birth wast) |JiVitA-3   |BANGLADESH                   |0      |            0|   7670| 26502|
|0-24 months (no birth wast) |JiVitA-3   |BANGLADESH                   |0      |            1|    321| 26502|
|0-24 months (no birth wast) |JiVitA-4   |BANGLADESH                   |1      |            0|   3991|  5381|
|0-24 months (no birth wast) |JiVitA-4   |BANGLADESH                   |1      |            1|    170|  5381|
|0-24 months (no birth wast) |JiVitA-4   |BANGLADESH                   |0      |            0|   1159|  5381|
|0-24 months (no birth wast) |JiVitA-4   |BANGLADESH                   |0      |            1|     61|  5381|
|0-24 months (no birth wast) |LCNI-5     |MALAWI                       |1      |            0|      3|   810|
|0-24 months (no birth wast) |LCNI-5     |MALAWI                       |1      |            1|      0|   810|
|0-24 months (no birth wast) |LCNI-5     |MALAWI                       |0      |            0|    800|   810|
|0-24 months (no birth wast) |LCNI-5     |MALAWI                       |0      |            1|      7|   810|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH                   |1      |            0|    193|   242|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH                   |1      |            1|     11|   242|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH                   |0      |            0|     37|   242|
|0-24 months (no birth wast) |MAL-ED     |BANGLADESH                   |0      |            1|      1|   242|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL                       |1      |            0|    202|   210|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL                       |1      |            1|      4|   210|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL                       |0      |            0|      4|   210|
|0-24 months (no birth wast) |MAL-ED     |BRAZIL                       |0      |            1|      0|   210|
|0-24 months (no birth wast) |MAL-ED     |INDIA                        |1      |            0|    102|   229|
|0-24 months (no birth wast) |MAL-ED     |INDIA                        |1      |            1|      3|   229|
|0-24 months (no birth wast) |MAL-ED     |INDIA                        |0      |            0|    116|   229|
|0-24 months (no birth wast) |MAL-ED     |INDIA                        |0      |            1|      8|   229|
|0-24 months (no birth wast) |MAL-ED     |NEPAL                        |1      |            0|    232|   236|
|0-24 months (no birth wast) |MAL-ED     |NEPAL                        |1      |            1|      3|   236|
|0-24 months (no birth wast) |MAL-ED     |NEPAL                        |0      |            0|      1|   236|
|0-24 months (no birth wast) |MAL-ED     |NEPAL                        |0      |            1|      0|   236|
|0-24 months (no birth wast) |MAL-ED     |PERU                         |1      |            0|     65|   263|
|0-24 months (no birth wast) |MAL-ED     |PERU                         |1      |            1|      0|   263|
|0-24 months (no birth wast) |MAL-ED     |PERU                         |0      |            0|    194|   263|
|0-24 months (no birth wast) |MAL-ED     |PERU                         |0      |            1|      4|   263|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA                 |1      |            0|      4|   250|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA                 |1      |            1|      0|   250|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA                 |0      |            0|    234|   250|
|0-24 months (no birth wast) |MAL-ED     |SOUTH AFRICA                 |0      |            1|     12|   250|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |1      |            0|      0|   241|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |1      |            1|      0|   241|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |0      |            0|    233|   241|
|0-24 months (no birth wast) |MAL-ED     |TANZANIA, UNITED REPUBLIC OF |0      |            1|      8|   241|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH                   |1      |            0|    216|   602|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH                   |1      |            1|     17|   602|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH                   |0      |            0|    332|   602|
|0-24 months (no birth wast) |NIH-Birth  |BANGLADESH                   |0      |            1|     37|   602|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH                   |1      |            0|    634|   743|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH                   |1      |            1|     17|   743|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH                   |0      |            0|     89|   743|
|0-24 months (no birth wast) |NIH-Crypto |BANGLADESH                   |0      |            1|      3|   743|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH                   |1      |            0|     50|    52|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH                   |1      |            1|      0|    52|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH                   |0      |            0|      2|    52|
|0-24 months (no birth wast) |PROVIDE    |BANGLADESH                   |0      |            1|      0|    52|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
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

* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
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
![](/tmp/a2206d38-9dfa-4d68-8547-3b66dc0c70d2/d5a669c4-ceea-4421-ad01-a99bf83091dd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a2206d38-9dfa-4d68-8547-3b66dc0c70d2/d5a669c4-ceea-4421-ad01-a99bf83091dd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a2206d38-9dfa-4d68-8547-3b66dc0c70d2/d5a669c4-ceea-4421-ad01-a99bf83091dd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a2206d38-9dfa-4d68-8547-3b66dc0c70d2/d5a669c4-ceea-4421-ad01-a99bf83091dd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


|agecat                      |studyid   |country     |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:---------|:-----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |COHORTS   |INDIA       |1                  |NA             | 0.0344099| 0.0251003| 0.0437195|
|0-24 months (no birth wast) |COHORTS   |INDIA       |0                  |NA             | 0.0546371| 0.0468073| 0.0624669|
|0-24 months (no birth wast) |COHORTS   |PHILIPPINES |1                  |NA             | 0.0502947| 0.0106565| 0.0899329|
|0-24 months (no birth wast) |COHORTS   |PHILIPPINES |0                  |NA             | 0.0840575| 0.0671970| 0.1009181|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH  |1                  |NA             | 0.0351341| 0.0314984| 0.0387699|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH  |0                  |NA             | 0.0425165| 0.0357399| 0.0492932|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH  |1                  |NA             | 0.0434039| 0.0364103| 0.0503976|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH  |0                  |NA             | 0.0515735| 0.0315476| 0.0715994|
|0-24 months (no birth wast) |NIH-Birth |BANGLADESH  |1                  |NA             | 0.0873911| 0.0478708| 0.1269114|
|0-24 months (no birth wast) |NIH-Birth |BANGLADESH  |0                  |NA             | 0.0942391| 0.0648337| 0.1236444|


### Parameter: E(Y)


|agecat                      |studyid   |country     |intervention_level |baseline_level |  estimate|  ci_lower|  ci_upper|
|:---------------------------|:---------|:-----------|:------------------|:--------------|---------:|---------:|---------:|
|0-24 months (no birth wast) |COHORTS   |INDIA       |NA                 |NA             | 0.0485681| 0.0427068| 0.0544294|
|0-24 months (no birth wast) |COHORTS   |PHILIPPINES |NA                 |NA             | 0.0835443| 0.0677832| 0.0993054|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH  |NA                 |NA             | 0.0357332| 0.0331536| 0.0383127|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH  |NA                 |NA             | 0.0429288| 0.0372183| 0.0486393|
|0-24 months (no birth wast) |NIH-Birth |BANGLADESH  |NA                 |NA             | 0.0897010| 0.0668555| 0.1125465|


### Parameter: RR


|agecat                      |studyid   |country     |intervention_level |baseline_level | estimate|  ci_lower| ci_upper|
|:---------------------------|:---------|:-----------|:------------------|:--------------|--------:|---------:|--------:|
|0-24 months (no birth wast) |COHORTS   |INDIA       |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |COHORTS   |INDIA       |0                  |1              | 1.587833| 1.1696796| 2.155473|
|0-24 months (no birth wast) |COHORTS   |PHILIPPINES |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |COHORTS   |PHILIPPINES |0                  |1              | 1.671301| 0.7407587| 3.770793|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH  |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH  |0                  |1              | 1.210121| 1.0055560| 1.456301|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH  |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH  |0                  |1              | 1.188221| 0.7739833| 1.824159|
|0-24 months (no birth wast) |NIH-Birth |BANGLADESH  |1                  |1              | 1.000000| 1.0000000| 1.000000|
|0-24 months (no birth wast) |NIH-Birth |BANGLADESH  |0                  |1              | 1.078360| 0.6240765| 1.863331|


### Parameter: PAR


|agecat                      |studyid   |country     |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:---------|:-----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |COHORTS   |INDIA       |1                  |NA             |  0.0141582|  0.0056252| 0.0226913|
|0-24 months (no birth wast) |COHORTS   |PHILIPPINES |1                  |NA             |  0.0332496| -0.0056615| 0.0721608|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH  |1                  |NA             |  0.0005990| -0.0016342| 0.0028323|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH  |1                  |NA             | -0.0004751| -0.0044390| 0.0034887|
|0-24 months (no birth wast) |NIH-Birth |BANGLADESH  |1                  |NA             |  0.0023099| -0.0305457| 0.0351655|


### Parameter: PAF


|agecat                      |studyid   |country     |intervention_level |baseline_level |   estimate|   ci_lower|  ci_upper|
|:---------------------------|:---------|:-----------|:------------------|:--------------|----------:|----------:|---------:|
|0-24 months (no birth wast) |COHORTS   |INDIA       |1                  |NA             |  0.2915131|  0.0968818| 0.4441993|
|0-24 months (no birth wast) |COHORTS   |PHILIPPINES |1                  |NA             |  0.3979881| -0.2926945| 0.7196412|
|0-24 months (no birth wast) |JiVitA-3  |BANGLADESH  |1                  |NA             |  0.0167637| -0.0479524| 0.0774833|
|0-24 months (no birth wast) |JiVitA-4  |BANGLADESH  |1                  |NA             | -0.0110677| -0.1077422| 0.0771699|
|0-24 months (no birth wast) |NIH-Birth |BANGLADESH  |1                  |NA             |  0.0257513| -0.4187202| 0.3309740|
