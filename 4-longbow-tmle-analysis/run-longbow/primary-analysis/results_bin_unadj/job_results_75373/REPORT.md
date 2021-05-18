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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** gagebrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country     |gagebrth          | sstunted| n_cell|     n|
|:---------|:--------------|:-----------|:-----------------|--------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA       |Full or late term |        0|     55|    89|
|Birth     |CMC-V-BCS-2002 |INDIA       |Full or late term |        1|      2|    89|
|Birth     |CMC-V-BCS-2002 |INDIA       |Early term        |        0|     22|    89|
|Birth     |CMC-V-BCS-2002 |INDIA       |Early term        |        1|      1|    89|
|Birth     |CMC-V-BCS-2002 |INDIA       |Preterm           |        0|      8|    89|
|Birth     |CMC-V-BCS-2002 |INDIA       |Preterm           |        1|      1|    89|
|Birth     |COHORTS        |INDIA       |Full or late term |        0|    475|  1200|
|Birth     |COHORTS        |INDIA       |Full or late term |        1|     20|  1200|
|Birth     |COHORTS        |INDIA       |Early term        |        0|    311|  1200|
|Birth     |COHORTS        |INDIA       |Early term        |        1|     15|  1200|
|Birth     |COHORTS        |INDIA       |Preterm           |        0|    369|  1200|
|Birth     |COHORTS        |INDIA       |Preterm           |        1|     10|  1200|
|Birth     |COHORTS        |GUATEMALA   |Full or late term |        0|    233|   411|
|Birth     |COHORTS        |GUATEMALA   |Full or late term |        1|      4|   411|
|Birth     |COHORTS        |GUATEMALA   |Early term        |        0|    120|   411|
|Birth     |COHORTS        |GUATEMALA   |Early term        |        1|      1|   411|
|Birth     |COHORTS        |GUATEMALA   |Preterm           |        0|     53|   411|
|Birth     |COHORTS        |GUATEMALA   |Preterm           |        1|      0|   411|
|Birth     |COHORTS        |PHILIPPINES |Full or late term |        0|   1174|  3023|
|Birth     |COHORTS        |PHILIPPINES |Full or late term |        1|     17|  3023|
|Birth     |COHORTS        |PHILIPPINES |Early term        |        0|   1171|  3023|
|Birth     |COHORTS        |PHILIPPINES |Early term        |        1|     19|  3023|
|Birth     |COHORTS        |PHILIPPINES |Preterm           |        0|    633|  3023|
|Birth     |COHORTS        |PHILIPPINES |Preterm           |        1|      9|  3023|
|Birth     |JiVitA-3       |BANGLADESH  |Full or late term |        0|   9888| 21675|
|Birth     |JiVitA-3       |BANGLADESH  |Full or late term |        1|   1182| 21675|
|Birth     |JiVitA-3       |BANGLADESH  |Early term        |        0|   5054| 21675|
|Birth     |JiVitA-3       |BANGLADESH  |Early term        |        1|    585| 21675|
|Birth     |JiVitA-3       |BANGLADESH  |Preterm           |        0|   4370| 21675|
|Birth     |JiVitA-3       |BANGLADESH  |Preterm           |        1|    596| 21675|
|Birth     |Keneba         |GAMBIA      |Full or late term |        0|    456|   978|
|Birth     |Keneba         |GAMBIA      |Full or late term |        1|     10|   978|
|Birth     |Keneba         |GAMBIA      |Early term        |        0|    371|   978|
|Birth     |Keneba         |GAMBIA      |Early term        |        1|      9|   978|
|Birth     |Keneba         |GAMBIA      |Preterm           |        0|    128|   978|
|Birth     |Keneba         |GAMBIA      |Preterm           |        1|      4|   978|
|Birth     |NIH-Crypto     |BANGLADESH  |Full or late term |        0|    209|   732|
|Birth     |NIH-Crypto     |BANGLADESH  |Full or late term |        1|      3|   732|
|Birth     |NIH-Crypto     |BANGLADESH  |Early term        |        0|    217|   732|
|Birth     |NIH-Crypto     |BANGLADESH  |Early term        |        1|      2|   732|
|Birth     |NIH-Crypto     |BANGLADESH  |Preterm           |        0|    296|   732|
|Birth     |NIH-Crypto     |BANGLADESH  |Preterm           |        1|      5|   732|
|Birth     |PROBIT         |BELARUS     |Full or late term |        0|   7152| 13893|
|Birth     |PROBIT         |BELARUS     |Full or late term |        1|      1| 13893|
|Birth     |PROBIT         |BELARUS     |Early term        |        0|   6280| 13893|
|Birth     |PROBIT         |BELARUS     |Early term        |        1|      2| 13893|
|Birth     |PROBIT         |BELARUS     |Preterm           |        0|    456| 13893|
|Birth     |PROBIT         |BELARUS     |Preterm           |        1|      2| 13893|
|Birth     |Vellore Crypto |INDIA       |Full or late term |        0|    219|   375|
|Birth     |Vellore Crypto |INDIA       |Full or late term |        1|     12|   375|
|Birth     |Vellore Crypto |INDIA       |Early term        |        0|     89|   375|
|Birth     |Vellore Crypto |INDIA       |Early term        |        1|      3|   375|
|Birth     |Vellore Crypto |INDIA       |Preterm           |        0|     51|   375|
|Birth     |Vellore Crypto |INDIA       |Preterm           |        1|      1|   375|
|6 months  |CMC-V-BCS-2002 |INDIA       |Full or late term |        0|    174|   344|
|6 months  |CMC-V-BCS-2002 |INDIA       |Full or late term |        1|     22|   344|
|6 months  |CMC-V-BCS-2002 |INDIA       |Early term        |        0|     87|   344|
|6 months  |CMC-V-BCS-2002 |INDIA       |Early term        |        1|     13|   344|
|6 months  |CMC-V-BCS-2002 |INDIA       |Preterm           |        0|     45|   344|
|6 months  |CMC-V-BCS-2002 |INDIA       |Preterm           |        1|      3|   344|
|6 months  |COHORTS        |INDIA       |Full or late term |        0|    471|  1204|
|6 months  |COHORTS        |INDIA       |Full or late term |        1|     25|  1204|
|6 months  |COHORTS        |INDIA       |Early term        |        0|    305|  1204|
|6 months  |COHORTS        |INDIA       |Early term        |        1|     22|  1204|
|6 months  |COHORTS        |INDIA       |Preterm           |        0|    367|  1204|
|6 months  |COHORTS        |INDIA       |Preterm           |        1|     14|  1204|
|6 months  |COHORTS        |GUATEMALA   |Full or late term |        0|    223|   456|
|6 months  |COHORTS        |GUATEMALA   |Full or late term |        1|     28|   456|
|6 months  |COHORTS        |GUATEMALA   |Early term        |        0|    116|   456|
|6 months  |COHORTS        |GUATEMALA   |Early term        |        1|     17|   456|
|6 months  |COHORTS        |GUATEMALA   |Preterm           |        0|     61|   456|
|6 months  |COHORTS        |GUATEMALA   |Preterm           |        1|     11|   456|
|6 months  |COHORTS        |PHILIPPINES |Full or late term |        0|   1004|  2685|
|6 months  |COHORTS        |PHILIPPINES |Full or late term |        1|     50|  2685|
|6 months  |COHORTS        |PHILIPPINES |Early term        |        0|   1017|  2685|
|6 months  |COHORTS        |PHILIPPINES |Early term        |        1|     45|  2685|
|6 months  |COHORTS        |PHILIPPINES |Preterm           |        0|    533|  2685|
|6 months  |COHORTS        |PHILIPPINES |Preterm           |        1|     36|  2685|
|6 months  |JiVitA-3       |BANGLADESH  |Full or late term |        0|   8106| 16234|
|6 months  |JiVitA-3       |BANGLADESH  |Full or late term |        1|    507| 16234|
|6 months  |JiVitA-3       |BANGLADESH  |Early term        |        0|   3923| 16234|
|6 months  |JiVitA-3       |BANGLADESH  |Early term        |        1|    261| 16234|
|6 months  |JiVitA-3       |BANGLADESH  |Preterm           |        0|   3222| 16234|
|6 months  |JiVitA-3       |BANGLADESH  |Preterm           |        1|    215| 16234|
|6 months  |Keneba         |GAMBIA      |Full or late term |        0|    576|  1218|
|6 months  |Keneba         |GAMBIA      |Full or late term |        1|     16|  1218|
|6 months  |Keneba         |GAMBIA      |Early term        |        0|    450|  1218|
|6 months  |Keneba         |GAMBIA      |Early term        |        1|     13|  1218|
|6 months  |Keneba         |GAMBIA      |Preterm           |        0|    154|  1218|
|6 months  |Keneba         |GAMBIA      |Preterm           |        1|      9|  1218|
|6 months  |NIH-Crypto     |BANGLADESH  |Full or late term |        0|    205|   715|
|6 months  |NIH-Crypto     |BANGLADESH  |Full or late term |        1|      4|   715|
|6 months  |NIH-Crypto     |BANGLADESH  |Early term        |        0|    199|   715|
|6 months  |NIH-Crypto     |BANGLADESH  |Early term        |        1|      8|   715|
|6 months  |NIH-Crypto     |BANGLADESH  |Preterm           |        0|    288|   715|
|6 months  |NIH-Crypto     |BANGLADESH  |Preterm           |        1|     11|   715|
|6 months  |PROBIT         |BELARUS     |Full or late term |        0|   7954| 15760|
|6 months  |PROBIT         |BELARUS     |Full or late term |        1|     87| 15760|
|6 months  |PROBIT         |BELARUS     |Early term        |        0|   7086| 15760|
|6 months  |PROBIT         |BELARUS     |Early term        |        1|     81| 15760|
|6 months  |PROBIT         |BELARUS     |Preterm           |        0|    543| 15760|
|6 months  |PROBIT         |BELARUS     |Preterm           |        1|      9| 15760|
|6 months  |TanzaniaChild2 |TANZANIA    |Full or late term |        0|   1162|  1928|
|6 months  |TanzaniaChild2 |TANZANIA    |Full or late term |        1|     13|  1928|
|6 months  |TanzaniaChild2 |TANZANIA    |Early term        |        0|    449|  1928|
|6 months  |TanzaniaChild2 |TANZANIA    |Early term        |        1|      1|  1928|
|6 months  |TanzaniaChild2 |TANZANIA    |Preterm           |        0|    298|  1928|
|6 months  |TanzaniaChild2 |TANZANIA    |Preterm           |        1|      5|  1928|
|6 months  |Vellore Crypto |INDIA       |Full or late term |        0|    217|   391|
|6 months  |Vellore Crypto |INDIA       |Full or late term |        1|     24|   391|
|6 months  |Vellore Crypto |INDIA       |Early term        |        0|     93|   391|
|6 months  |Vellore Crypto |INDIA       |Early term        |        1|      2|   391|
|6 months  |Vellore Crypto |INDIA       |Preterm           |        0|     52|   391|
|6 months  |Vellore Crypto |INDIA       |Preterm           |        1|      3|   391|
|24 months |CMC-V-BCS-2002 |INDIA       |Full or late term |        0|    128|   346|
|24 months |CMC-V-BCS-2002 |INDIA       |Full or late term |        1|     67|   346|
|24 months |CMC-V-BCS-2002 |INDIA       |Early term        |        0|     70|   346|
|24 months |CMC-V-BCS-2002 |INDIA       |Early term        |        1|     32|   346|
|24 months |CMC-V-BCS-2002 |INDIA       |Preterm           |        0|     32|   346|
|24 months |CMC-V-BCS-2002 |INDIA       |Preterm           |        1|     17|   346|
|24 months |COHORTS        |INDIA       |Full or late term |        0|    317|   994|
|24 months |COHORTS        |INDIA       |Full or late term |        1|     94|   994|
|24 months |COHORTS        |INDIA       |Early term        |        0|    188|   994|
|24 months |COHORTS        |INDIA       |Early term        |        1|     84|   994|
|24 months |COHORTS        |INDIA       |Preterm           |        0|    234|   994|
|24 months |COHORTS        |INDIA       |Preterm           |        1|     77|   994|
|24 months |COHORTS        |GUATEMALA   |Full or late term |        0|    139|   487|
|24 months |COHORTS        |GUATEMALA   |Full or late term |        1|    127|   487|
|24 months |COHORTS        |GUATEMALA   |Early term        |        0|     78|   487|
|24 months |COHORTS        |GUATEMALA   |Early term        |        1|     64|   487|
|24 months |COHORTS        |GUATEMALA   |Preterm           |        0|     42|   487|
|24 months |COHORTS        |GUATEMALA   |Preterm           |        1|     37|   487|
|24 months |COHORTS        |PHILIPPINES |Full or late term |        0|    693|  2422|
|24 months |COHORTS        |PHILIPPINES |Full or late term |        1|    260|  2422|
|24 months |COHORTS        |PHILIPPINES |Early term        |        0|    674|  2422|
|24 months |COHORTS        |PHILIPPINES |Early term        |        1|    281|  2422|
|24 months |COHORTS        |PHILIPPINES |Preterm           |        0|    357|  2422|
|24 months |COHORTS        |PHILIPPINES |Preterm           |        1|    157|  2422|
|24 months |JiVitA-3       |BANGLADESH  |Full or late term |        0|   3673|  8346|
|24 months |JiVitA-3       |BANGLADESH  |Full or late term |        1|    682|  8346|
|24 months |JiVitA-3       |BANGLADESH  |Early term        |        0|   1819|  8346|
|24 months |JiVitA-3       |BANGLADESH  |Early term        |        1|    326|  8346|
|24 months |JiVitA-3       |BANGLADESH  |Preterm           |        0|   1543|  8346|
|24 months |JiVitA-3       |BANGLADESH  |Preterm           |        1|    303|  8346|
|24 months |Keneba         |GAMBIA      |Full or late term |        0|    469|  1031|
|24 months |Keneba         |GAMBIA      |Full or late term |        1|     39|  1031|
|24 months |Keneba         |GAMBIA      |Early term        |        0|    355|  1031|
|24 months |Keneba         |GAMBIA      |Early term        |        1|     40|  1031|
|24 months |Keneba         |GAMBIA      |Preterm           |        0|    109|  1031|
|24 months |Keneba         |GAMBIA      |Preterm           |        1|     19|  1031|
|24 months |NIH-Crypto     |BANGLADESH  |Full or late term |        0|    144|   514|
|24 months |NIH-Crypto     |BANGLADESH  |Full or late term |        1|      6|   514|
|24 months |NIH-Crypto     |BANGLADESH  |Early term        |        0|    136|   514|
|24 months |NIH-Crypto     |BANGLADESH  |Early term        |        1|     12|   514|
|24 months |NIH-Crypto     |BANGLADESH  |Preterm           |        0|    198|   514|
|24 months |NIH-Crypto     |BANGLADESH  |Preterm           |        1|     18|   514|
|24 months |PROBIT         |BELARUS     |Full or late term |        0|   2008|  4035|
|24 months |PROBIT         |BELARUS     |Full or late term |        1|     28|  4035|
|24 months |PROBIT         |BELARUS     |Early term        |        0|   1819|  4035|
|24 months |PROBIT         |BELARUS     |Early term        |        1|     32|  4035|
|24 months |PROBIT         |BELARUS     |Preterm           |        0|    143|  4035|
|24 months |PROBIT         |BELARUS     |Preterm           |        1|      5|  4035|
|24 months |TanzaniaChild2 |TANZANIA    |Full or late term |        0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA    |Full or late term |        1|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA    |Early term        |        0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA    |Early term        |        1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA    |Preterm           |        0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA    |Preterm           |        1|      0|     6|
|24 months |Vellore Crypto |INDIA       |Full or late term |        0|    212|   393|
|24 months |Vellore Crypto |INDIA       |Full or late term |        1|     31|   393|
|24 months |Vellore Crypto |INDIA       |Early term        |        0|     91|   393|
|24 months |Vellore Crypto |INDIA       |Early term        |        1|      4|   393|
|24 months |Vellore Crypto |INDIA       |Preterm           |        0|     50|   393|
|24 months |Vellore Crypto |INDIA       |Preterm           |        1|      5|   393|


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA





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


