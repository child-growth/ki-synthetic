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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** feducyrs

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_arm
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |feducyrs | n_cell|     n|
|:---------|:--------------|:------------|:--------|------:|-----:|
|Birth     |COHORTS        |INDIA        |Low      |    527|  1550|
|Birth     |COHORTS        |INDIA        |Medium   |    445|  1550|
|Birth     |COHORTS        |INDIA        |High     |    578|  1550|
|Birth     |COHORTS        |GUATEMALA    |Low      |    331|   728|
|Birth     |COHORTS        |GUATEMALA    |Medium   |    268|   728|
|Birth     |COHORTS        |GUATEMALA    |High     |    129|   728|
|Birth     |COHORTS        |PHILIPPINES  |Low      |    940|  2787|
|Birth     |COHORTS        |PHILIPPINES  |Medium   |    679|  2787|
|Birth     |COHORTS        |PHILIPPINES  |High     |   1168|  2787|
|Birth     |GMS-Nepal      |NEPAL        |Low      |    284|   640|
|Birth     |GMS-Nepal      |NEPAL        |Medium   |    217|   640|
|Birth     |GMS-Nepal      |NEPAL        |High     |    139|   640|
|Birth     |JiVitA-3       |BANGLADESH   |Low      |   7163| 17355|
|Birth     |JiVitA-3       |BANGLADESH   |Medium   |   5956| 17355|
|Birth     |JiVitA-3       |BANGLADESH   |High     |   4236| 17355|
|Birth     |JiVitA-4       |BANGLADESH   |Low      |    872|  2285|
|Birth     |JiVitA-4       |BANGLADESH   |Medium   |    916|  2285|
|Birth     |JiVitA-4       |BANGLADESH   |High     |    497|  2285|
|Birth     |MAL-ED         |INDIA        |Low      |      4|    24|
|Birth     |MAL-ED         |INDIA        |Medium   |      7|    24|
|Birth     |MAL-ED         |INDIA        |High     |     13|    24|
|Birth     |MAL-ED         |BANGLADESH   |Low      |     32|   120|
|Birth     |MAL-ED         |BANGLADESH   |Medium   |     31|   120|
|Birth     |MAL-ED         |BANGLADESH   |High     |     57|   120|
|Birth     |MAL-ED         |PERU         |Low      |     64|   218|
|Birth     |MAL-ED         |PERU         |Medium   |     74|   218|
|Birth     |MAL-ED         |PERU         |High     |     80|   218|
|Birth     |MAL-ED         |NEPAL        |Low      |      4|     9|
|Birth     |MAL-ED         |NEPAL        |Medium   |      1|     9|
|Birth     |MAL-ED         |NEPAL        |High     |      4|     9|
|Birth     |MAL-ED         |TANZANIA     |Low      |     29|   108|
|Birth     |MAL-ED         |TANZANIA     |Medium   |     20|   108|
|Birth     |MAL-ED         |TANZANIA     |High     |     59|   108|
|Birth     |MAL-ED         |SOUTH AFRICA |Low      |     26|    53|
|Birth     |MAL-ED         |SOUTH AFRICA |Medium   |     14|    53|
|Birth     |MAL-ED         |SOUTH AFRICA |High     |     13|    53|
|Birth     |NIH-Crypto     |BANGLADESH   |Low      |    193|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |Medium   |    175|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |High     |    339|   707|
|Birth     |PROBIT         |BELARUS      |Low      |   5265| 13366|
|Birth     |PROBIT         |BELARUS      |Medium   |   5923| 13366|
|Birth     |PROBIT         |BELARUS      |High     |   2178| 13366|
|Birth     |PROVIDE        |BANGLADESH   |Low      |    177|   532|
|Birth     |PROVIDE        |BANGLADESH   |Medium   |    178|   532|
|Birth     |PROVIDE        |BANGLADESH   |High     |    177|   532|
|Birth     |SAS-CompFeed   |INDIA        |Low      |    453|  1102|
|Birth     |SAS-CompFeed   |INDIA        |Medium   |    372|  1102|
|Birth     |SAS-CompFeed   |INDIA        |High     |    277|  1102|
|Birth     |ZVITAMBO       |ZIMBABWE     |Low      |   1883| 12420|
|Birth     |ZVITAMBO       |ZIMBABWE     |Medium   |   9564| 12420|
|Birth     |ZVITAMBO       |ZIMBABWE     |High     |    973| 12420|
|6 months  |COHORTS        |INDIA        |Low      |    578|  1687|
|6 months  |COHORTS        |INDIA        |Medium   |    477|  1687|
|6 months  |COHORTS        |INDIA        |High     |    632|  1687|
|6 months  |COHORTS        |GUATEMALA    |Low      |    437|   918|
|6 months  |COHORTS        |GUATEMALA    |Medium   |    327|   918|
|6 months  |COHORTS        |GUATEMALA    |High     |    154|   918|
|6 months  |COHORTS        |PHILIPPINES  |Low      |    892|  2606|
|6 months  |COHORTS        |PHILIPPINES  |Medium   |    663|  2606|
|6 months  |COHORTS        |PHILIPPINES  |High     |   1051|  2606|
|6 months  |GMS-Nepal      |NEPAL        |Low      |    247|   563|
|6 months  |GMS-Nepal      |NEPAL        |Medium   |    203|   563|
|6 months  |GMS-Nepal      |NEPAL        |High     |    113|   563|
|6 months  |JiVitA-3       |BANGLADESH   |Low      |   6418| 16100|
|6 months  |JiVitA-3       |BANGLADESH   |Medium   |   5580| 16100|
|6 months  |JiVitA-3       |BANGLADESH   |High     |   4102| 16100|
|6 months  |JiVitA-4       |BANGLADESH   |Low      |   1724|  4601|
|6 months  |JiVitA-4       |BANGLADESH   |Medium   |   1812|  4601|
|6 months  |JiVitA-4       |BANGLADESH   |High     |   1065|  4601|
|6 months  |LCNI-5         |MALAWI       |Low      |    281|   827|
|6 months  |LCNI-5         |MALAWI       |Medium   |    295|   827|
|6 months  |LCNI-5         |MALAWI       |High     |    251|   827|
|6 months  |MAL-ED         |INDIA        |Low      |     34|   119|
|6 months  |MAL-ED         |INDIA        |Medium   |     34|   119|
|6 months  |MAL-ED         |INDIA        |High     |     51|   119|
|6 months  |MAL-ED         |BANGLADESH   |Low      |     37|   136|
|6 months  |MAL-ED         |BANGLADESH   |Medium   |     36|   136|
|6 months  |MAL-ED         |BANGLADESH   |High     |     63|   136|
|6 months  |MAL-ED         |PERU         |Low      |     80|   262|
|6 months  |MAL-ED         |PERU         |Medium   |     80|   262|
|6 months  |MAL-ED         |PERU         |High     |    102|   262|
|6 months  |MAL-ED         |NEPAL        |Low      |     21|    79|
|6 months  |MAL-ED         |NEPAL        |Medium   |     24|    79|
|6 months  |MAL-ED         |NEPAL        |High     |     34|    79|
|6 months  |MAL-ED         |TANZANIA     |Low      |     60|   232|
|6 months  |MAL-ED         |TANZANIA     |Medium   |     51|   232|
|6 months  |MAL-ED         |TANZANIA     |High     |    121|   232|
|6 months  |MAL-ED         |SOUTH AFRICA |Low      |     57|   116|
|6 months  |MAL-ED         |SOUTH AFRICA |Medium   |     25|   116|
|6 months  |MAL-ED         |SOUTH AFRICA |High     |     34|   116|
|6 months  |NIH-Crypto     |BANGLADESH   |Low      |    191|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Medium   |    187|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |High     |    337|   715|
|6 months  |PROBIT         |BELARUS      |Low      |   5997| 15232|
|6 months  |PROBIT         |BELARUS      |Medium   |   6690| 15232|
|6 months  |PROBIT         |BELARUS      |High     |   2545| 15232|
|6 months  |PROVIDE        |BANGLADESH   |Low      |    198|   603|
|6 months  |PROVIDE        |BANGLADESH   |Medium   |    201|   603|
|6 months  |PROVIDE        |BANGLADESH   |High     |    204|   603|
|6 months  |SAS-CompFeed   |INDIA        |Low      |    555|  1333|
|6 months  |SAS-CompFeed   |INDIA        |Medium   |    430|  1333|
|6 months  |SAS-CompFeed   |INDIA        |High     |    348|  1333|
|6 months  |SAS-FoodSuppl  |INDIA        |Low      |    143|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |Medium   |    140|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |High     |     97|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |Low      |   1051|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |Medium   |    579|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |High     |    398|  2028|
|6 months  |ZVITAMBO       |ZIMBABWE     |Low      |   1268|  8231|
|6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |   6359|  8231|
|6 months  |ZVITAMBO       |ZIMBABWE     |High     |    604|  8231|
|24 months |COHORTS        |INDIA        |Low      |    462|  1363|
|24 months |COHORTS        |INDIA        |Medium   |    389|  1363|
|24 months |COHORTS        |INDIA        |High     |    512|  1363|
|24 months |COHORTS        |GUATEMALA    |Low      |    494|  1028|
|24 months |COHORTS        |GUATEMALA    |Medium   |    366|  1028|
|24 months |COHORTS        |GUATEMALA    |High     |    168|  1028|
|24 months |COHORTS        |PHILIPPINES  |Low      |    812|  2359|
|24 months |COHORTS        |PHILIPPINES  |Medium   |    596|  2359|
|24 months |COHORTS        |PHILIPPINES  |High     |    951|  2359|
|24 months |GMS-Nepal      |NEPAL        |Low      |    217|   486|
|24 months |GMS-Nepal      |NEPAL        |Medium   |    174|   486|
|24 months |GMS-Nepal      |NEPAL        |High     |     95|   486|
|24 months |JiVitA-3       |BANGLADESH   |Low      |   3298|  8243|
|24 months |JiVitA-3       |BANGLADESH   |Medium   |   2883|  8243|
|24 months |JiVitA-3       |BANGLADESH   |High     |   2062|  8243|
|24 months |JiVitA-4       |BANGLADESH   |Low      |   1634|  4504|
|24 months |JiVitA-4       |BANGLADESH   |Medium   |   1809|  4504|
|24 months |JiVitA-4       |BANGLADESH   |High     |   1061|  4504|
|24 months |LCNI-5         |MALAWI       |Low      |    203|   558|
|24 months |LCNI-5         |MALAWI       |Medium   |    198|   558|
|24 months |LCNI-5         |MALAWI       |High     |    157|   558|
|24 months |MAL-ED         |INDIA        |Low      |     34|   114|
|24 months |MAL-ED         |INDIA        |Medium   |     32|   114|
|24 months |MAL-ED         |INDIA        |High     |     48|   114|
|24 months |MAL-ED         |BANGLADESH   |Low      |     33|   124|
|24 months |MAL-ED         |BANGLADESH   |Medium   |     32|   124|
|24 months |MAL-ED         |BANGLADESH   |High     |     59|   124|
|24 months |MAL-ED         |PERU         |Low      |     53|   193|
|24 months |MAL-ED         |PERU         |Medium   |     58|   193|
|24 months |MAL-ED         |PERU         |High     |     82|   193|
|24 months |MAL-ED         |NEPAL        |Low      |     20|    77|
|24 months |MAL-ED         |NEPAL        |Medium   |     24|    77|
|24 months |MAL-ED         |NEPAL        |High     |     33|    77|
|24 months |MAL-ED         |TANZANIA     |Low      |     55|   202|
|24 months |MAL-ED         |TANZANIA     |Medium   |     39|   202|
|24 months |MAL-ED         |TANZANIA     |High     |    108|   202|
|24 months |MAL-ED         |SOUTH AFRICA |Low      |     53|   109|
|24 months |MAL-ED         |SOUTH AFRICA |Medium   |     23|   109|
|24 months |MAL-ED         |SOUTH AFRICA |High     |     33|   109|
|24 months |NIH-Crypto     |BANGLADESH   |Low      |    137|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Medium   |    129|   514|
|24 months |NIH-Crypto     |BANGLADESH   |High     |    248|   514|
|24 months |PROBIT         |BELARUS      |Low      |   1496|  3835|
|24 months |PROBIT         |BELARUS      |Medium   |   1704|  3835|
|24 months |PROBIT         |BELARUS      |High     |    635|  3835|
|24 months |PROVIDE        |BANGLADESH   |Low      |    193|   579|
|24 months |PROVIDE        |BANGLADESH   |Medium   |    193|   579|
|24 months |PROVIDE        |BANGLADESH   |High     |    193|   579|
|24 months |TanzaniaChild2 |TANZANIA     |Low      |      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Medium   |      4|     6|
|24 months |TanzaniaChild2 |TANZANIA     |High     |      2|     6|
|24 months |ZVITAMBO       |ZIMBABWE     |Low      |     71|   415|
|24 months |ZVITAMBO       |ZIMBABWE     |Medium   |    318|   415|
|24 months |ZVITAMBO       |ZIMBABWE     |High     |     26|   415|


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA





```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_gam_NULL_NULL_GCV.Cp
```


