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
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ4       |     20|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ1       |     31|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ2       |     22|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ3       |     19|    92|
|Birth     |COHORTS        |GUATEMALA    |WealthQ4       |    395|   806|
|Birth     |COHORTS        |GUATEMALA    |WealthQ1       |    125|   806|
|Birth     |COHORTS        |GUATEMALA    |WealthQ2       |    161|   806|
|Birth     |COHORTS        |GUATEMALA    |WealthQ3       |    125|   806|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ4       |    910|  3037|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ1       |    642|  3037|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ2       |    575|  3037|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ3       |    910|  3037|
|Birth     |CONTENT        |PERU         |WealthQ4       |      0|     2|
|Birth     |CONTENT        |PERU         |WealthQ1       |      2|     2|
|Birth     |CONTENT        |PERU         |WealthQ2       |      0|     2|
|Birth     |CONTENT        |PERU         |WealthQ3       |      0|     2|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ4       |    163|   696|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ1       |    199|   696|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ2       |    158|   696|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ3       |    176|   696|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ4       |   5564| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ1       |   5685| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ2       |   5558| 22455|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ3       |   5648| 22455|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ4       |    723|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ1       |    713|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ2       |    708|  2822|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ3       |    678|  2822|
|Birth     |MAL-ED         |INDIA        |WealthQ4       |      9|    45|
|Birth     |MAL-ED         |INDIA        |WealthQ1       |     11|    45|
|Birth     |MAL-ED         |INDIA        |WealthQ2       |     13|    45|
|Birth     |MAL-ED         |INDIA        |WealthQ3       |     12|    45|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ4       |     52|   207|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ1       |     60|   207|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ2       |     58|   207|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ3       |     37|   207|
|Birth     |MAL-ED         |PERU         |WealthQ4       |     59|   224|
|Birth     |MAL-ED         |PERU         |WealthQ1       |     60|   224|
|Birth     |MAL-ED         |PERU         |WealthQ2       |     61|   224|
|Birth     |MAL-ED         |PERU         |WealthQ3       |     44|   224|
|Birth     |MAL-ED         |NEPAL        |WealthQ4       |     11|    25|
|Birth     |MAL-ED         |NEPAL        |WealthQ1       |      4|    25|
|Birth     |MAL-ED         |NEPAL        |WealthQ2       |      8|    25|
|Birth     |MAL-ED         |NEPAL        |WealthQ3       |      2|    25|
|Birth     |MAL-ED         |BRAZIL       |WealthQ4       |     10|    58|
|Birth     |MAL-ED         |BRAZIL       |WealthQ1       |     16|    58|
|Birth     |MAL-ED         |BRAZIL       |WealthQ2       |     22|    58|
|Birth     |MAL-ED         |BRAZIL       |WealthQ3       |     10|    58|
|Birth     |MAL-ED         |TANZANIA     |WealthQ4       |     20|   121|
|Birth     |MAL-ED         |TANZANIA     |WealthQ1       |     33|   121|
|Birth     |MAL-ED         |TANZANIA     |WealthQ2       |     38|   121|
|Birth     |MAL-ED         |TANZANIA     |WealthQ3       |     30|   121|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ4       |     26|   111|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ1       |     33|   111|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ2       |     23|   111|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ3       |     29|   111|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ4       |    125|   539|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ1       |    144|   539|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ2       |    124|   539|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ3       |    146|   539|
|Birth     |Vellore Crypto |INDIA        |WealthQ4       |     99|   388|
|Birth     |Vellore Crypto |INDIA        |WealthQ1       |    103|   388|
|Birth     |Vellore Crypto |INDIA        |WealthQ2       |     95|   388|
|Birth     |Vellore Crypto |INDIA        |WealthQ3       |     91|   388|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ4       |     90|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ1       |    102|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ2       |     90|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ3       |     87|   369|
|6 months  |COHORTS        |GUATEMALA    |WealthQ4       |    460|   920|
|6 months  |COHORTS        |GUATEMALA    |WealthQ1       |    132|   920|
|6 months  |COHORTS        |GUATEMALA    |WealthQ2       |    181|   920|
|6 months  |COHORTS        |GUATEMALA    |WealthQ3       |    147|   920|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ4       |    805|  2697|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ1       |    547|  2697|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ2       |    508|  2697|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ3       |    837|  2697|
|6 months  |CONTENT        |PERU         |WealthQ4       |     47|   215|
|6 months  |CONTENT        |PERU         |WealthQ1       |     48|   215|
|6 months  |CONTENT        |PERU         |WealthQ2       |     61|   215|
|6 months  |CONTENT        |PERU         |WealthQ3       |     59|   215|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ4       |    141|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ1       |    151|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ2       |    128|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ3       |    144|   564|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ4       |   4804| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ1       |   3708| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ2       |   3949| 16811|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ3       |   4350| 16811|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ4       |   1249|  4824|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ1       |   1220|  4824|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ2       |   1178|  4824|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ3       |   1177|  4824|
|6 months  |LCNI-5         |MALAWI       |WealthQ4       |    202|   815|
|6 months  |LCNI-5         |MALAWI       |WealthQ1       |    197|   815|
|6 months  |LCNI-5         |MALAWI       |WealthQ2       |    209|   815|
|6 months  |LCNI-5         |MALAWI       |WealthQ3       |    207|   815|
|6 months  |MAL-ED         |INDIA        |WealthQ4       |     54|   232|
|6 months  |MAL-ED         |INDIA        |WealthQ1       |     63|   232|
|6 months  |MAL-ED         |INDIA        |WealthQ2       |     66|   232|
|6 months  |MAL-ED         |INDIA        |WealthQ3       |     49|   232|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ4       |     54|   218|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ1       |     53|   218|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ2       |     69|   218|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ3       |     42|   218|
|6 months  |MAL-ED         |PERU         |WealthQ4       |     63|   259|
|6 months  |MAL-ED         |PERU         |WealthQ1       |     69|   259|
|6 months  |MAL-ED         |PERU         |WealthQ2       |     59|   259|
|6 months  |MAL-ED         |PERU         |WealthQ3       |     68|   259|
|6 months  |MAL-ED         |NEPAL        |WealthQ4       |     70|   228|
|6 months  |MAL-ED         |NEPAL        |WealthQ1       |     63|   228|
|6 months  |MAL-ED         |NEPAL        |WealthQ2       |     53|   228|
|6 months  |MAL-ED         |NEPAL        |WealthQ3       |     42|   228|
|6 months  |MAL-ED         |BRAZIL       |WealthQ4       |     47|   185|
|6 months  |MAL-ED         |BRAZIL       |WealthQ1       |     40|   185|
|6 months  |MAL-ED         |BRAZIL       |WealthQ2       |     49|   185|
|6 months  |MAL-ED         |BRAZIL       |WealthQ3       |     49|   185|
|6 months  |MAL-ED         |TANZANIA     |WealthQ4       |     52|   242|
|6 months  |MAL-ED         |TANZANIA     |WealthQ1       |     67|   242|
|6 months  |MAL-ED         |TANZANIA     |WealthQ2       |     63|   242|
|6 months  |MAL-ED         |TANZANIA     |WealthQ3       |     60|   242|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ4       |     51|   231|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ1       |     72|   231|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ2       |     59|   231|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ3       |     49|   231|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ4       |    140|   604|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ1       |    170|   604|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ2       |    138|   604|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ3       |    156|   604|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ4       |    509|  2024|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ1       |    619|  2024|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ2       |    367|  2024|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ3       |    529|  2024|
|6 months  |Vellore Crypto |INDIA        |WealthQ4       |    105|   407|
|6 months  |Vellore Crypto |INDIA        |WealthQ1       |    107|   407|
|6 months  |Vellore Crypto |INDIA        |WealthQ2       |    101|   407|
|6 months  |Vellore Crypto |INDIA        |WealthQ3       |     94|   407|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |     91|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |    102|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |     90|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |     88|   371|
|24 months |COHORTS        |GUATEMALA    |WealthQ4       |    504|  1021|
|24 months |COHORTS        |GUATEMALA    |WealthQ1       |    162|  1021|
|24 months |COHORTS        |GUATEMALA    |WealthQ2       |    194|  1021|
|24 months |COHORTS        |GUATEMALA    |WealthQ3       |    161|  1021|
|24 months |COHORTS        |PHILIPPINES  |WealthQ4       |    717|  2435|
|24 months |COHORTS        |PHILIPPINES  |WealthQ1       |    503|  2435|
|24 months |COHORTS        |PHILIPPINES  |WealthQ2       |    464|  2435|
|24 months |COHORTS        |PHILIPPINES  |WealthQ3       |    751|  2435|
|24 months |CONTENT        |PERU         |WealthQ4       |     30|   164|
|24 months |CONTENT        |PERU         |WealthQ1       |     39|   164|
|24 months |CONTENT        |PERU         |WealthQ2       |     51|   164|
|24 months |CONTENT        |PERU         |WealthQ3       |     44|   164|
|24 months |GMS-Nepal      |NEPAL        |WealthQ4       |    118|   488|
|24 months |GMS-Nepal      |NEPAL        |WealthQ1       |    139|   488|
|24 months |GMS-Nepal      |NEPAL        |WealthQ2       |    108|   488|
|24 months |GMS-Nepal      |NEPAL        |WealthQ3       |    123|   488|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |   2303|  8632|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |   2025|  8632|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |   2119|  8632|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |   2185|  8632|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |   1227|  4747|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |   1171|  4747|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |   1195|  4747|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |   1154|  4747|
|24 months |LCNI-5         |MALAWI       |WealthQ4       |    138|   563|
|24 months |LCNI-5         |MALAWI       |WealthQ1       |    147|   563|
|24 months |LCNI-5         |MALAWI       |WealthQ2       |    134|   563|
|24 months |LCNI-5         |MALAWI       |WealthQ3       |    144|   563|
|24 months |MAL-ED         |INDIA        |WealthQ4       |     53|   223|
|24 months |MAL-ED         |INDIA        |WealthQ1       |     60|   223|
|24 months |MAL-ED         |INDIA        |WealthQ2       |     63|   223|
|24 months |MAL-ED         |INDIA        |WealthQ3       |     47|   223|
|24 months |MAL-ED         |BANGLADESH   |WealthQ4       |     49|   199|
|24 months |MAL-ED         |BANGLADESH   |WealthQ1       |     44|   199|
|24 months |MAL-ED         |BANGLADESH   |WealthQ2       |     68|   199|
|24 months |MAL-ED         |BANGLADESH   |WealthQ3       |     38|   199|
|24 months |MAL-ED         |PERU         |WealthQ4       |     57|   194|
|24 months |MAL-ED         |PERU         |WealthQ1       |     45|   194|
|24 months |MAL-ED         |PERU         |WealthQ2       |     37|   194|
|24 months |MAL-ED         |PERU         |WealthQ3       |     55|   194|
|24 months |MAL-ED         |NEPAL        |WealthQ4       |     67|   220|
|24 months |MAL-ED         |NEPAL        |WealthQ1       |     62|   220|
|24 months |MAL-ED         |NEPAL        |WealthQ2       |     52|   220|
|24 months |MAL-ED         |NEPAL        |WealthQ3       |     39|   220|
|24 months |MAL-ED         |BRAZIL       |WealthQ4       |     45|   153|
|24 months |MAL-ED         |BRAZIL       |WealthQ1       |     27|   153|
|24 months |MAL-ED         |BRAZIL       |WealthQ2       |     40|   153|
|24 months |MAL-ED         |BRAZIL       |WealthQ3       |     41|   153|
|24 months |MAL-ED         |TANZANIA     |WealthQ4       |     48|   211|
|24 months |MAL-ED         |TANZANIA     |WealthQ1       |     55|   211|
|24 months |MAL-ED         |TANZANIA     |WealthQ2       |     52|   211|
|24 months |MAL-ED         |TANZANIA     |WealthQ3       |     56|   211|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |     46|   217|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |     69|   217|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |     56|   217|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |     46|   217|
|24 months |PROVIDE        |BANGLADESH   |WealthQ4       |    132|   578|
|24 months |PROVIDE        |BANGLADESH   |WealthQ1       |    169|   578|
|24 months |PROVIDE        |BANGLADESH   |WealthQ2       |    135|   578|
|24 months |PROVIDE        |BANGLADESH   |WealthQ3       |    142|   578|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |      2|     6|
|24 months |Vellore Crypto |INDIA        |WealthQ4       |    105|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ1       |    108|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ2       |    101|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ3       |     95|   409|


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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error: from glmnet Fortran code (error code 7777); All used predictors have zero variance
## . It will be removed from the stack

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


