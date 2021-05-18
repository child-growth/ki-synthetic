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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

* sex
* arm
* W_mage
* meducyrs
* feducyrs
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nchldlt5
* W_parity
* delta_arm
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nchldlt5
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |hhwealth_quart | n_cell|     n|
|:---------|:--------------|:------------|:--------------|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ4       |     29|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ1       |     26|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ2       |     15|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ3       |     22|    92|
|Birth     |COHORTS        |GUATEMALA    |WealthQ4       |    296|   820|
|Birth     |COHORTS        |GUATEMALA    |WealthQ1       |    176|   820|
|Birth     |COHORTS        |GUATEMALA    |WealthQ2       |    142|   820|
|Birth     |COHORTS        |GUATEMALA    |WealthQ3       |    206|   820|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ4       |    873|  3047|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ1       |    680|  3047|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ2       |    539|  3047|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ3       |    955|  3047|
|Birth     |CONTENT        |PERU         |WealthQ4       |      1|     2|
|Birth     |CONTENT        |PERU         |WealthQ1       |      1|     2|
|Birth     |CONTENT        |PERU         |WealthQ2       |      0|     2|
|Birth     |CONTENT        |PERU         |WealthQ3       |      0|     2|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ4       |    170|   696|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ1       |    169|   696|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ2       |    175|   696|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ3       |    182|   696|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ4       |   5774| 22436|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ1       |   5491| 22436|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ2       |   5537| 22436|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ3       |   5634| 22436|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ4       |    681|  2821|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ1       |    716|  2821|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ2       |    682|  2821|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ3       |    742|  2821|
|Birth     |MAL-ED         |INDIA        |WealthQ4       |      6|    46|
|Birth     |MAL-ED         |INDIA        |WealthQ1       |     12|    46|
|Birth     |MAL-ED         |INDIA        |WealthQ2       |     17|    46|
|Birth     |MAL-ED         |INDIA        |WealthQ3       |     11|    46|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ4       |     48|   212|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ1       |     67|   212|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ2       |     44|   212|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ3       |     53|   212|
|Birth     |MAL-ED         |PERU         |WealthQ4       |     55|   217|
|Birth     |MAL-ED         |PERU         |WealthQ1       |     37|   217|
|Birth     |MAL-ED         |PERU         |WealthQ2       |     58|   217|
|Birth     |MAL-ED         |PERU         |WealthQ3       |     67|   217|
|Birth     |MAL-ED         |NEPAL        |WealthQ4       |      9|    27|
|Birth     |MAL-ED         |NEPAL        |WealthQ1       |      5|    27|
|Birth     |MAL-ED         |NEPAL        |WealthQ2       |     10|    27|
|Birth     |MAL-ED         |NEPAL        |WealthQ3       |      3|    27|
|Birth     |MAL-ED         |BRAZIL       |WealthQ4       |     11|    55|
|Birth     |MAL-ED         |BRAZIL       |WealthQ1       |     23|    55|
|Birth     |MAL-ED         |BRAZIL       |WealthQ2       |     12|    55|
|Birth     |MAL-ED         |BRAZIL       |WealthQ3       |      9|    55|
|Birth     |MAL-ED         |TANZANIA     |WealthQ4       |     32|   117|
|Birth     |MAL-ED         |TANZANIA     |WealthQ1       |     33|   117|
|Birth     |MAL-ED         |TANZANIA     |WealthQ2       |     23|   117|
|Birth     |MAL-ED         |TANZANIA     |WealthQ3       |     29|   117|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ4       |     22|   107|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ1       |     32|   107|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ2       |     24|   107|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ3       |     29|   107|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ4       |    128|   539|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ1       |    138|   539|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ2       |    131|   539|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ3       |    142|   539|
|Birth     |Vellore Crypto |INDIA        |WealthQ4       |     88|   388|
|Birth     |Vellore Crypto |INDIA        |WealthQ1       |    122|   388|
|Birth     |Vellore Crypto |INDIA        |WealthQ2       |    110|   388|
|Birth     |Vellore Crypto |INDIA        |WealthQ3       |     68|   388|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ4       |    112|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ1       |     88|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ2       |     80|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ3       |     89|   369|
|6 months  |COHORTS        |GUATEMALA    |WealthQ4       |    342|   926|
|6 months  |COHORTS        |GUATEMALA    |WealthQ1       |    196|   926|
|6 months  |COHORTS        |GUATEMALA    |WealthQ2       |    178|   926|
|6 months  |COHORTS        |GUATEMALA    |WealthQ3       |    210|   926|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ4       |    770|  2706|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ1       |    566|  2706|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ2       |    486|  2706|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ3       |    884|  2706|
|6 months  |CONTENT        |PERU         |WealthQ4       |     47|   215|
|6 months  |CONTENT        |PERU         |WealthQ1       |     66|   215|
|6 months  |CONTENT        |PERU         |WealthQ2       |     50|   215|
|6 months  |CONTENT        |PERU         |WealthQ3       |     52|   215|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ4       |    140|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ1       |    137|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ2       |    148|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ3       |    139|   564|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ4       |   4791| 16802|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ1       |   3716| 16802|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ2       |   4040| 16802|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ3       |   4255| 16802|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ4       |   1216|  4827|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ1       |   1198|  4827|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ2       |   1163|  4827|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ3       |   1250|  4827|
|6 months  |LCNI-5         |MALAWI       |WealthQ4       |    202|   827|
|6 months  |LCNI-5         |MALAWI       |WealthQ1       |    218|   827|
|6 months  |LCNI-5         |MALAWI       |WealthQ2       |    200|   827|
|6 months  |LCNI-5         |MALAWI       |WealthQ3       |    207|   827|
|6 months  |MAL-ED         |INDIA        |WealthQ4       |     45|   227|
|6 months  |MAL-ED         |INDIA        |WealthQ1       |     66|   227|
|6 months  |MAL-ED         |INDIA        |WealthQ2       |     65|   227|
|6 months  |MAL-ED         |INDIA        |WealthQ3       |     51|   227|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ4       |     51|   224|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ1       |     71|   224|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ2       |     46|   224|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ3       |     56|   224|
|6 months  |MAL-ED         |PERU         |WealthQ4       |     65|   255|
|6 months  |MAL-ED         |PERU         |WealthQ1       |     51|   255|
|6 months  |MAL-ED         |PERU         |WealthQ2       |     65|   255|
|6 months  |MAL-ED         |PERU         |WealthQ3       |     74|   255|
|6 months  |MAL-ED         |NEPAL        |WealthQ4       |     72|   231|
|6 months  |MAL-ED         |NEPAL        |WealthQ1       |     58|   231|
|6 months  |MAL-ED         |NEPAL        |WealthQ2       |     60|   231|
|6 months  |MAL-ED         |NEPAL        |WealthQ3       |     41|   231|
|6 months  |MAL-ED         |BRAZIL       |WealthQ4       |     41|   187|
|6 months  |MAL-ED         |BRAZIL       |WealthQ1       |     57|   187|
|6 months  |MAL-ED         |BRAZIL       |WealthQ2       |     46|   187|
|6 months  |MAL-ED         |BRAZIL       |WealthQ3       |     43|   187|
|6 months  |MAL-ED         |TANZANIA     |WealthQ4       |     56|   241|
|6 months  |MAL-ED         |TANZANIA     |WealthQ1       |     68|   241|
|6 months  |MAL-ED         |TANZANIA     |WealthQ2       |     58|   241|
|6 months  |MAL-ED         |TANZANIA     |WealthQ3       |     59|   241|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ4       |     57|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ1       |     66|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ2       |     44|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ3       |     63|   230|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ4       |    136|   604|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ1       |    146|   604|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ2       |    161|   604|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ3       |    161|   604|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ4       |    527|  2027|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ1       |    574|  2027|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ2       |    402|  2027|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ3       |    524|  2027|
|6 months  |Vellore Crypto |INDIA        |WealthQ4       |     94|   407|
|6 months  |Vellore Crypto |INDIA        |WealthQ1       |    132|   407|
|6 months  |Vellore Crypto |INDIA        |WealthQ2       |    111|   407|
|6 months  |Vellore Crypto |INDIA        |WealthQ3       |     70|   407|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |    113|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |     89|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |     80|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |     89|   371|
|24 months |COHORTS        |GUATEMALA    |WealthQ4       |    400|  1038|
|24 months |COHORTS        |GUATEMALA    |WealthQ1       |    225|  1038|
|24 months |COHORTS        |GUATEMALA    |WealthQ2       |    194|  1038|
|24 months |COHORTS        |GUATEMALA    |WealthQ3       |    219|  1038|
|24 months |COHORTS        |PHILIPPINES  |WealthQ4       |    709|  2443|
|24 months |COHORTS        |PHILIPPINES  |WealthQ1       |    488|  2443|
|24 months |COHORTS        |PHILIPPINES  |WealthQ2       |    424|  2443|
|24 months |COHORTS        |PHILIPPINES  |WealthQ3       |    822|  2443|
|24 months |CONTENT        |PERU         |WealthQ4       |     40|   164|
|24 months |CONTENT        |PERU         |WealthQ1       |     49|   164|
|24 months |CONTENT        |PERU         |WealthQ2       |     35|   164|
|24 months |CONTENT        |PERU         |WealthQ3       |     40|   164|
|24 months |GMS-Nepal      |NEPAL        |WealthQ4       |    128|   488|
|24 months |GMS-Nepal      |NEPAL        |WealthQ1       |    116|   488|
|24 months |GMS-Nepal      |NEPAL        |WealthQ2       |    128|   488|
|24 months |GMS-Nepal      |NEPAL        |WealthQ3       |    116|   488|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |   2290|  8627|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |   2048|  8627|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |   2175|  8627|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |   2114|  8627|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |   1229|  4748|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |   1152|  4748|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |   1134|  4748|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |   1233|  4748|
|24 months |LCNI-5         |MALAWI       |WealthQ4       |    141|   574|
|24 months |LCNI-5         |MALAWI       |WealthQ1       |    145|   574|
|24 months |LCNI-5         |MALAWI       |WealthQ2       |    138|   574|
|24 months |LCNI-5         |MALAWI       |WealthQ3       |    150|   574|
|24 months |MAL-ED         |INDIA        |WealthQ4       |     43|   218|
|24 months |MAL-ED         |INDIA        |WealthQ1       |     61|   218|
|24 months |MAL-ED         |INDIA        |WealthQ2       |     64|   218|
|24 months |MAL-ED         |INDIA        |WealthQ3       |     50|   218|
|24 months |MAL-ED         |BANGLADESH   |WealthQ4       |     43|   195|
|24 months |MAL-ED         |BANGLADESH   |WealthQ1       |     64|   195|
|24 months |MAL-ED         |BANGLADESH   |WealthQ2       |     40|   195|
|24 months |MAL-ED         |BANGLADESH   |WealthQ3       |     48|   195|
|24 months |MAL-ED         |PERU         |WealthQ4       |     45|   185|
|24 months |MAL-ED         |PERU         |WealthQ1       |     36|   185|
|24 months |MAL-ED         |PERU         |WealthQ2       |     52|   185|
|24 months |MAL-ED         |PERU         |WealthQ3       |     52|   185|
|24 months |MAL-ED         |NEPAL        |WealthQ4       |     72|   224|
|24 months |MAL-ED         |NEPAL        |WealthQ1       |     57|   224|
|24 months |MAL-ED         |NEPAL        |WealthQ2       |     58|   224|
|24 months |MAL-ED         |NEPAL        |WealthQ3       |     37|   224|
|24 months |MAL-ED         |BRAZIL       |WealthQ4       |     33|   148|
|24 months |MAL-ED         |BRAZIL       |WealthQ1       |     43|   148|
|24 months |MAL-ED         |BRAZIL       |WealthQ2       |     37|   148|
|24 months |MAL-ED         |BRAZIL       |WealthQ3       |     35|   148|
|24 months |MAL-ED         |TANZANIA     |WealthQ4       |     53|   209|
|24 months |MAL-ED         |TANZANIA     |WealthQ1       |     55|   209|
|24 months |MAL-ED         |TANZANIA     |WealthQ2       |     51|   209|
|24 months |MAL-ED         |TANZANIA     |WealthQ3       |     50|   209|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |     54|   215|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |     61|   215|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |     43|   215|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |     57|   215|
|24 months |PROVIDE        |BANGLADESH   |WealthQ4       |    124|   578|
|24 months |PROVIDE        |BANGLADESH   |WealthQ1       |    141|   578|
|24 months |PROVIDE        |BANGLADESH   |WealthQ2       |    155|   578|
|24 months |PROVIDE        |BANGLADESH   |WealthQ3       |    158|   578|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |      3|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |      1|     6|
|24 months |Vellore Crypto |INDIA        |WealthQ4       |     94|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ1       |    132|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ2       |    112|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ3       |     71|   409|


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA





```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error: from glmnet Fortran code (error code 7777); All used predictors have zero variance
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error: from glmnet Fortran code (error code 7777); All used predictors have zero variance
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error: from glmnet Fortran code (error code 7777); All used predictors have zero variance
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error: from glmnet Fortran code (error code 7777); All used predictors have zero variance
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```


