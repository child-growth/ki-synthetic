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

**Outcome Variable:** wasted

## Predictor Variables

**Intervention Variable:** feducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |feducyrs | wasted| n_cell|     n|
|:---------|:--------------|:------------|:--------|------:|------:|-----:|
|Birth     |COHORTS        |INDIA        |Low      |      0|    438|  1550|
|Birth     |COHORTS        |INDIA        |Low      |      1|     89|  1550|
|Birth     |COHORTS        |INDIA        |Medium   |      0|    367|  1550|
|Birth     |COHORTS        |INDIA        |Medium   |      1|     78|  1550|
|Birth     |COHORTS        |INDIA        |High     |      0|    474|  1550|
|Birth     |COHORTS        |INDIA        |High     |      1|    104|  1550|
|Birth     |COHORTS        |GUATEMALA    |Low      |      0|    245|   728|
|Birth     |COHORTS        |GUATEMALA    |Low      |      1|     86|   728|
|Birth     |COHORTS        |GUATEMALA    |Medium   |      0|    201|   728|
|Birth     |COHORTS        |GUATEMALA    |Medium   |      1|     67|   728|
|Birth     |COHORTS        |GUATEMALA    |High     |      0|    100|   728|
|Birth     |COHORTS        |GUATEMALA    |High     |      1|     29|   728|
|Birth     |COHORTS        |PHILIPPINES  |Low      |      0|    802|  2787|
|Birth     |COHORTS        |PHILIPPINES  |Low      |      1|    138|  2787|
|Birth     |COHORTS        |PHILIPPINES  |Medium   |      0|    588|  2787|
|Birth     |COHORTS        |PHILIPPINES  |Medium   |      1|     91|  2787|
|Birth     |COHORTS        |PHILIPPINES  |High     |      0|    966|  2787|
|Birth     |COHORTS        |PHILIPPINES  |High     |      1|    202|  2787|
|Birth     |GMS-Nepal      |NEPAL        |Low      |      0|    215|   640|
|Birth     |GMS-Nepal      |NEPAL        |Low      |      1|     69|   640|
|Birth     |GMS-Nepal      |NEPAL        |Medium   |      0|    179|   640|
|Birth     |GMS-Nepal      |NEPAL        |Medium   |      1|     38|   640|
|Birth     |GMS-Nepal      |NEPAL        |High     |      0|    114|   640|
|Birth     |GMS-Nepal      |NEPAL        |High     |      1|     25|   640|
|Birth     |JiVitA-3       |BANGLADESH   |Low      |      0|   6358| 17355|
|Birth     |JiVitA-3       |BANGLADESH   |Low      |      1|    805| 17355|
|Birth     |JiVitA-3       |BANGLADESH   |Medium   |      0|   5321| 17355|
|Birth     |JiVitA-3       |BANGLADESH   |Medium   |      1|    635| 17355|
|Birth     |JiVitA-3       |BANGLADESH   |High     |      0|   3774| 17355|
|Birth     |JiVitA-3       |BANGLADESH   |High     |      1|    462| 17355|
|Birth     |JiVitA-4       |BANGLADESH   |Low      |      0|    800|  2285|
|Birth     |JiVitA-4       |BANGLADESH   |Low      |      1|     72|  2285|
|Birth     |JiVitA-4       |BANGLADESH   |Medium   |      0|    813|  2285|
|Birth     |JiVitA-4       |BANGLADESH   |Medium   |      1|    103|  2285|
|Birth     |JiVitA-4       |BANGLADESH   |High     |      0|    442|  2285|
|Birth     |JiVitA-4       |BANGLADESH   |High     |      1|     55|  2285|
|Birth     |MAL-ED         |INDIA        |Low      |      0|      3|    24|
|Birth     |MAL-ED         |INDIA        |Low      |      1|      1|    24|
|Birth     |MAL-ED         |INDIA        |Medium   |      0|      6|    24|
|Birth     |MAL-ED         |INDIA        |Medium   |      1|      1|    24|
|Birth     |MAL-ED         |INDIA        |High     |      0|     11|    24|
|Birth     |MAL-ED         |INDIA        |High     |      1|      2|    24|
|Birth     |MAL-ED         |BANGLADESH   |Low      |      0|     26|   120|
|Birth     |MAL-ED         |BANGLADESH   |Low      |      1|      6|   120|
|Birth     |MAL-ED         |BANGLADESH   |Medium   |      0|     24|   120|
|Birth     |MAL-ED         |BANGLADESH   |Medium   |      1|      7|   120|
|Birth     |MAL-ED         |BANGLADESH   |High     |      0|     48|   120|
|Birth     |MAL-ED         |BANGLADESH   |High     |      1|      9|   120|
|Birth     |MAL-ED         |PERU         |Low      |      0|     63|   218|
|Birth     |MAL-ED         |PERU         |Low      |      1|      1|   218|
|Birth     |MAL-ED         |PERU         |Medium   |      0|     73|   218|
|Birth     |MAL-ED         |PERU         |Medium   |      1|      1|   218|
|Birth     |MAL-ED         |PERU         |High     |      0|     77|   218|
|Birth     |MAL-ED         |PERU         |High     |      1|      3|   218|
|Birth     |MAL-ED         |NEPAL        |Low      |      0|      3|     9|
|Birth     |MAL-ED         |NEPAL        |Low      |      1|      1|     9|
|Birth     |MAL-ED         |NEPAL        |Medium   |      0|      1|     9|
|Birth     |MAL-ED         |NEPAL        |Medium   |      1|      0|     9|
|Birth     |MAL-ED         |NEPAL        |High     |      0|      3|     9|
|Birth     |MAL-ED         |NEPAL        |High     |      1|      1|     9|
|Birth     |MAL-ED         |TANZANIA     |Low      |      0|     29|   108|
|Birth     |MAL-ED         |TANZANIA     |Low      |      1|      0|   108|
|Birth     |MAL-ED         |TANZANIA     |Medium   |      0|     19|   108|
|Birth     |MAL-ED         |TANZANIA     |Medium   |      1|      1|   108|
|Birth     |MAL-ED         |TANZANIA     |High     |      0|     59|   108|
|Birth     |MAL-ED         |TANZANIA     |High     |      1|      0|   108|
|Birth     |MAL-ED         |SOUTH AFRICA |Low      |      0|     24|    53|
|Birth     |MAL-ED         |SOUTH AFRICA |Low      |      1|      2|    53|
|Birth     |MAL-ED         |SOUTH AFRICA |Medium   |      0|     14|    53|
|Birth     |MAL-ED         |SOUTH AFRICA |Medium   |      1|      0|    53|
|Birth     |MAL-ED         |SOUTH AFRICA |High     |      0|     11|    53|
|Birth     |MAL-ED         |SOUTH AFRICA |High     |      1|      2|    53|
|Birth     |NIH-Crypto     |BANGLADESH   |Low      |      0|    145|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |Low      |      1|     48|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |Medium   |      0|    129|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |Medium   |      1|     46|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |High     |      0|    261|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |High     |      1|     78|   707|
|Birth     |PROBIT         |BELARUS      |Low      |      0|   4137| 13366|
|Birth     |PROBIT         |BELARUS      |Low      |      1|   1128| 13366|
|Birth     |PROBIT         |BELARUS      |Medium   |      0|   4711| 13366|
|Birth     |PROBIT         |BELARUS      |Medium   |      1|   1212| 13366|
|Birth     |PROBIT         |BELARUS      |High     |      0|   1708| 13366|
|Birth     |PROBIT         |BELARUS      |High     |      1|    470| 13366|
|Birth     |PROVIDE        |BANGLADESH   |Low      |      0|    132|   532|
|Birth     |PROVIDE        |BANGLADESH   |Low      |      1|     45|   532|
|Birth     |PROVIDE        |BANGLADESH   |Medium   |      0|    141|   532|
|Birth     |PROVIDE        |BANGLADESH   |Medium   |      1|     37|   532|
|Birth     |PROVIDE        |BANGLADESH   |High     |      0|    142|   532|
|Birth     |PROVIDE        |BANGLADESH   |High     |      1|     35|   532|
|Birth     |SAS-CompFeed   |INDIA        |Low      |      0|    402|  1102|
|Birth     |SAS-CompFeed   |INDIA        |Low      |      1|     51|  1102|
|Birth     |SAS-CompFeed   |INDIA        |Medium   |      0|    334|  1102|
|Birth     |SAS-CompFeed   |INDIA        |Medium   |      1|     38|  1102|
|Birth     |SAS-CompFeed   |INDIA        |High     |      0|    248|  1102|
|Birth     |SAS-CompFeed   |INDIA        |High     |      1|     29|  1102|
|Birth     |ZVITAMBO       |ZIMBABWE     |Low      |      0|   1567| 12420|
|Birth     |ZVITAMBO       |ZIMBABWE     |Low      |      1|    316| 12420|
|Birth     |ZVITAMBO       |ZIMBABWE     |Medium   |      0|   8063| 12420|
|Birth     |ZVITAMBO       |ZIMBABWE     |Medium   |      1|   1501| 12420|
|Birth     |ZVITAMBO       |ZIMBABWE     |High     |      0|    816| 12420|
|Birth     |ZVITAMBO       |ZIMBABWE     |High     |      1|    157| 12420|
|6 months  |COHORTS        |INDIA        |Low      |      0|    501|  1687|
|6 months  |COHORTS        |INDIA        |Low      |      1|     77|  1687|
|6 months  |COHORTS        |INDIA        |Medium   |      0|    424|  1687|
|6 months  |COHORTS        |INDIA        |Medium   |      1|     53|  1687|
|6 months  |COHORTS        |INDIA        |High     |      0|    549|  1687|
|6 months  |COHORTS        |INDIA        |High     |      1|     83|  1687|
|6 months  |COHORTS        |GUATEMALA    |Low      |      0|    423|   918|
|6 months  |COHORTS        |GUATEMALA    |Low      |      1|     14|   918|
|6 months  |COHORTS        |GUATEMALA    |Medium   |      0|    317|   918|
|6 months  |COHORTS        |GUATEMALA    |Medium   |      1|     10|   918|
|6 months  |COHORTS        |GUATEMALA    |High     |      0|    149|   918|
|6 months  |COHORTS        |GUATEMALA    |High     |      1|      5|   918|
|6 months  |COHORTS        |PHILIPPINES  |Low      |      0|    836|  2606|
|6 months  |COHORTS        |PHILIPPINES  |Low      |      1|     56|  2606|
|6 months  |COHORTS        |PHILIPPINES  |Medium   |      0|    624|  2606|
|6 months  |COHORTS        |PHILIPPINES  |Medium   |      1|     39|  2606|
|6 months  |COHORTS        |PHILIPPINES  |High     |      0|    988|  2606|
|6 months  |COHORTS        |PHILIPPINES  |High     |      1|     63|  2606|
|6 months  |GMS-Nepal      |NEPAL        |Low      |      0|    222|   563|
|6 months  |GMS-Nepal      |NEPAL        |Low      |      1|     25|   563|
|6 months  |GMS-Nepal      |NEPAL        |Medium   |      0|    187|   563|
|6 months  |GMS-Nepal      |NEPAL        |Medium   |      1|     16|   563|
|6 months  |GMS-Nepal      |NEPAL        |High     |      0|    103|   563|
|6 months  |GMS-Nepal      |NEPAL        |High     |      1|     10|   563|
|6 months  |JiVitA-3       |BANGLADESH   |Low      |      0|   5862| 16100|
|6 months  |JiVitA-3       |BANGLADESH   |Low      |      1|    556| 16100|
|6 months  |JiVitA-3       |BANGLADESH   |Medium   |      0|   5093| 16100|
|6 months  |JiVitA-3       |BANGLADESH   |Medium   |      1|    487| 16100|
|6 months  |JiVitA-3       |BANGLADESH   |High     |      0|   3771| 16100|
|6 months  |JiVitA-3       |BANGLADESH   |High     |      1|    331| 16100|
|6 months  |JiVitA-4       |BANGLADESH   |Low      |      0|   1623|  4601|
|6 months  |JiVitA-4       |BANGLADESH   |Low      |      1|    101|  4601|
|6 months  |JiVitA-4       |BANGLADESH   |Medium   |      0|   1708|  4601|
|6 months  |JiVitA-4       |BANGLADESH   |Medium   |      1|    104|  4601|
|6 months  |JiVitA-4       |BANGLADESH   |High     |      0|   1008|  4601|
|6 months  |JiVitA-4       |BANGLADESH   |High     |      1|     57|  4601|
|6 months  |LCNI-5         |MALAWI       |Low      |      0|    280|   827|
|6 months  |LCNI-5         |MALAWI       |Low      |      1|      1|   827|
|6 months  |LCNI-5         |MALAWI       |Medium   |      0|    288|   827|
|6 months  |LCNI-5         |MALAWI       |Medium   |      1|      7|   827|
|6 months  |LCNI-5         |MALAWI       |High     |      0|    245|   827|
|6 months  |LCNI-5         |MALAWI       |High     |      1|      6|   827|
|6 months  |MAL-ED         |INDIA        |Low      |      0|     30|   119|
|6 months  |MAL-ED         |INDIA        |Low      |      1|      4|   119|
|6 months  |MAL-ED         |INDIA        |Medium   |      0|     30|   119|
|6 months  |MAL-ED         |INDIA        |Medium   |      1|      4|   119|
|6 months  |MAL-ED         |INDIA        |High     |      0|     48|   119|
|6 months  |MAL-ED         |INDIA        |High     |      1|      3|   119|
|6 months  |MAL-ED         |BANGLADESH   |Low      |      0|     37|   136|
|6 months  |MAL-ED         |BANGLADESH   |Low      |      1|      0|   136|
|6 months  |MAL-ED         |BANGLADESH   |Medium   |      0|     35|   136|
|6 months  |MAL-ED         |BANGLADESH   |Medium   |      1|      1|   136|
|6 months  |MAL-ED         |BANGLADESH   |High     |      0|     60|   136|
|6 months  |MAL-ED         |BANGLADESH   |High     |      1|      3|   136|
|6 months  |MAL-ED         |PERU         |Low      |      0|     80|   262|
|6 months  |MAL-ED         |PERU         |Low      |      1|      0|   262|
|6 months  |MAL-ED         |PERU         |Medium   |      0|     80|   262|
|6 months  |MAL-ED         |PERU         |Medium   |      1|      0|   262|
|6 months  |MAL-ED         |PERU         |High     |      0|    102|   262|
|6 months  |MAL-ED         |PERU         |High     |      1|      0|   262|
|6 months  |MAL-ED         |NEPAL        |Low      |      0|     21|    79|
|6 months  |MAL-ED         |NEPAL        |Low      |      1|      0|    79|
|6 months  |MAL-ED         |NEPAL        |Medium   |      0|     24|    79|
|6 months  |MAL-ED         |NEPAL        |Medium   |      1|      0|    79|
|6 months  |MAL-ED         |NEPAL        |High     |      0|     32|    79|
|6 months  |MAL-ED         |NEPAL        |High     |      1|      2|    79|
|6 months  |MAL-ED         |TANZANIA     |Low      |      0|     60|   232|
|6 months  |MAL-ED         |TANZANIA     |Low      |      1|      0|   232|
|6 months  |MAL-ED         |TANZANIA     |Medium   |      0|     51|   232|
|6 months  |MAL-ED         |TANZANIA     |Medium   |      1|      0|   232|
|6 months  |MAL-ED         |TANZANIA     |High     |      0|    121|   232|
|6 months  |MAL-ED         |TANZANIA     |High     |      1|      0|   232|
|6 months  |MAL-ED         |SOUTH AFRICA |Low      |      0|     56|   116|
|6 months  |MAL-ED         |SOUTH AFRICA |Low      |      1|      1|   116|
|6 months  |MAL-ED         |SOUTH AFRICA |Medium   |      0|     25|   116|
|6 months  |MAL-ED         |SOUTH AFRICA |Medium   |      1|      0|   116|
|6 months  |MAL-ED         |SOUTH AFRICA |High     |      0|     33|   116|
|6 months  |MAL-ED         |SOUTH AFRICA |High     |      1|      1|   116|
|6 months  |NIH-Crypto     |BANGLADESH   |Low      |      0|    187|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Low      |      1|      4|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Medium   |      0|    179|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Medium   |      1|      8|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |High     |      0|    328|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |High     |      1|      9|   715|
|6 months  |PROBIT         |BELARUS      |Low      |      0|   5962| 15232|
|6 months  |PROBIT         |BELARUS      |Low      |      1|     35| 15232|
|6 months  |PROBIT         |BELARUS      |Medium   |      0|   6640| 15232|
|6 months  |PROBIT         |BELARUS      |Medium   |      1|     50| 15232|
|6 months  |PROBIT         |BELARUS      |High     |      0|   2526| 15232|
|6 months  |PROBIT         |BELARUS      |High     |      1|     19| 15232|
|6 months  |PROVIDE        |BANGLADESH   |Low      |      0|    191|   603|
|6 months  |PROVIDE        |BANGLADESH   |Low      |      1|      7|   603|
|6 months  |PROVIDE        |BANGLADESH   |Medium   |      0|    193|   603|
|6 months  |PROVIDE        |BANGLADESH   |Medium   |      1|      8|   603|
|6 months  |PROVIDE        |BANGLADESH   |High     |      0|    194|   603|
|6 months  |PROVIDE        |BANGLADESH   |High     |      1|     10|   603|
|6 months  |SAS-CompFeed   |INDIA        |Low      |      0|    490|  1333|
|6 months  |SAS-CompFeed   |INDIA        |Low      |      1|     65|  1333|
|6 months  |SAS-CompFeed   |INDIA        |Medium   |      0|    380|  1333|
|6 months  |SAS-CompFeed   |INDIA        |Medium   |      1|     50|  1333|
|6 months  |SAS-CompFeed   |INDIA        |High     |      0|    298|  1333|
|6 months  |SAS-CompFeed   |INDIA        |High     |      1|     50|  1333|
|6 months  |SAS-FoodSuppl  |INDIA        |Low      |      0|    118|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |Low      |      1|     25|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |Medium   |      0|    115|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |Medium   |      1|     25|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |High     |      0|     78|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |High     |      1|     19|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |Low      |      0|    999|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |Low      |      1|     52|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |Medium   |      0|    558|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |Medium   |      1|     21|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |High     |      0|    384|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |High     |      1|     14|  2028|
|6 months  |ZVITAMBO       |ZIMBABWE     |Low      |      0|   1231|  8231|
|6 months  |ZVITAMBO       |ZIMBABWE     |Low      |      1|     37|  8231|
|6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |      0|   6162|  8231|
|6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |      1|    197|  8231|
|6 months  |ZVITAMBO       |ZIMBABWE     |High     |      0|    585|  8231|
|6 months  |ZVITAMBO       |ZIMBABWE     |High     |      1|     19|  8231|
|24 months |COHORTS        |INDIA        |Low      |      0|    415|  1363|
|24 months |COHORTS        |INDIA        |Low      |      1|     47|  1363|
|24 months |COHORTS        |INDIA        |Medium   |      0|    349|  1363|
|24 months |COHORTS        |INDIA        |Medium   |      1|     40|  1363|
|24 months |COHORTS        |INDIA        |High     |      0|    476|  1363|
|24 months |COHORTS        |INDIA        |High     |      1|     36|  1363|
|24 months |COHORTS        |GUATEMALA    |Low      |      0|    470|  1028|
|24 months |COHORTS        |GUATEMALA    |Low      |      1|     24|  1028|
|24 months |COHORTS        |GUATEMALA    |Medium   |      0|    349|  1028|
|24 months |COHORTS        |GUATEMALA    |Medium   |      1|     17|  1028|
|24 months |COHORTS        |GUATEMALA    |High     |      0|    161|  1028|
|24 months |COHORTS        |GUATEMALA    |High     |      1|      7|  1028|
|24 months |COHORTS        |PHILIPPINES  |Low      |      0|    748|  2359|
|24 months |COHORTS        |PHILIPPINES  |Low      |      1|     64|  2359|
|24 months |COHORTS        |PHILIPPINES  |Medium   |      0|    548|  2359|
|24 months |COHORTS        |PHILIPPINES  |Medium   |      1|     48|  2359|
|24 months |COHORTS        |PHILIPPINES  |High     |      0|    900|  2359|
|24 months |COHORTS        |PHILIPPINES  |High     |      1|     51|  2359|
|24 months |GMS-Nepal      |NEPAL        |Low      |      0|    173|   486|
|24 months |GMS-Nepal      |NEPAL        |Low      |      1|     44|   486|
|24 months |GMS-Nepal      |NEPAL        |Medium   |      0|    142|   486|
|24 months |GMS-Nepal      |NEPAL        |Medium   |      1|     32|   486|
|24 months |GMS-Nepal      |NEPAL        |High     |      0|     80|   486|
|24 months |GMS-Nepal      |NEPAL        |High     |      1|     15|   486|
|24 months |JiVitA-3       |BANGLADESH   |Low      |      0|   2552|  8243|
|24 months |JiVitA-3       |BANGLADESH   |Low      |      1|    746|  8243|
|24 months |JiVitA-3       |BANGLADESH   |Medium   |      0|   2254|  8243|
|24 months |JiVitA-3       |BANGLADESH   |Medium   |      1|    629|  8243|
|24 months |JiVitA-3       |BANGLADESH   |High     |      0|   1625|  8243|
|24 months |JiVitA-3       |BANGLADESH   |High     |      1|    437|  8243|
|24 months |JiVitA-4       |BANGLADESH   |Low      |      0|   1303|  4504|
|24 months |JiVitA-4       |BANGLADESH   |Low      |      1|    331|  4504|
|24 months |JiVitA-4       |BANGLADESH   |Medium   |      0|   1447|  4504|
|24 months |JiVitA-4       |BANGLADESH   |Medium   |      1|    362|  4504|
|24 months |JiVitA-4       |BANGLADESH   |High     |      0|    870|  4504|
|24 months |JiVitA-4       |BANGLADESH   |High     |      1|    191|  4504|
|24 months |LCNI-5         |MALAWI       |Low      |      0|    201|   558|
|24 months |LCNI-5         |MALAWI       |Low      |      1|      2|   558|
|24 months |LCNI-5         |MALAWI       |Medium   |      0|    194|   558|
|24 months |LCNI-5         |MALAWI       |Medium   |      1|      4|   558|
|24 months |LCNI-5         |MALAWI       |High     |      0|    153|   558|
|24 months |LCNI-5         |MALAWI       |High     |      1|      4|   558|
|24 months |MAL-ED         |INDIA        |Low      |      0|     29|   114|
|24 months |MAL-ED         |INDIA        |Low      |      1|      5|   114|
|24 months |MAL-ED         |INDIA        |Medium   |      0|     24|   114|
|24 months |MAL-ED         |INDIA        |Medium   |      1|      8|   114|
|24 months |MAL-ED         |INDIA        |High     |      0|     44|   114|
|24 months |MAL-ED         |INDIA        |High     |      1|      4|   114|
|24 months |MAL-ED         |BANGLADESH   |Low      |      0|     32|   124|
|24 months |MAL-ED         |BANGLADESH   |Low      |      1|      1|   124|
|24 months |MAL-ED         |BANGLADESH   |Medium   |      0|     31|   124|
|24 months |MAL-ED         |BANGLADESH   |Medium   |      1|      1|   124|
|24 months |MAL-ED         |BANGLADESH   |High     |      0|     53|   124|
|24 months |MAL-ED         |BANGLADESH   |High     |      1|      6|   124|
|24 months |MAL-ED         |PERU         |Low      |      0|     53|   193|
|24 months |MAL-ED         |PERU         |Low      |      1|      0|   193|
|24 months |MAL-ED         |PERU         |Medium   |      0|     56|   193|
|24 months |MAL-ED         |PERU         |Medium   |      1|      2|   193|
|24 months |MAL-ED         |PERU         |High     |      0|     81|   193|
|24 months |MAL-ED         |PERU         |High     |      1|      1|   193|
|24 months |MAL-ED         |NEPAL        |Low      |      0|     20|    77|
|24 months |MAL-ED         |NEPAL        |Low      |      1|      0|    77|
|24 months |MAL-ED         |NEPAL        |Medium   |      0|     24|    77|
|24 months |MAL-ED         |NEPAL        |Medium   |      1|      0|    77|
|24 months |MAL-ED         |NEPAL        |High     |      0|     33|    77|
|24 months |MAL-ED         |NEPAL        |High     |      1|      0|    77|
|24 months |MAL-ED         |TANZANIA     |Low      |      0|     53|   202|
|24 months |MAL-ED         |TANZANIA     |Low      |      1|      2|   202|
|24 months |MAL-ED         |TANZANIA     |Medium   |      0|     39|   202|
|24 months |MAL-ED         |TANZANIA     |Medium   |      1|      0|   202|
|24 months |MAL-ED         |TANZANIA     |High     |      0|    106|   202|
|24 months |MAL-ED         |TANZANIA     |High     |      1|      2|   202|
|24 months |MAL-ED         |SOUTH AFRICA |Low      |      0|     53|   109|
|24 months |MAL-ED         |SOUTH AFRICA |Low      |      1|      0|   109|
|24 months |MAL-ED         |SOUTH AFRICA |Medium   |      0|     23|   109|
|24 months |MAL-ED         |SOUTH AFRICA |Medium   |      1|      0|   109|
|24 months |MAL-ED         |SOUTH AFRICA |High     |      0|     32|   109|
|24 months |MAL-ED         |SOUTH AFRICA |High     |      1|      1|   109|
|24 months |NIH-Crypto     |BANGLADESH   |Low      |      0|    125|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Low      |      1|     12|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Medium   |      0|    120|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Medium   |      1|      9|   514|
|24 months |NIH-Crypto     |BANGLADESH   |High     |      0|    224|   514|
|24 months |NIH-Crypto     |BANGLADESH   |High     |      1|     24|   514|
|24 months |PROBIT         |BELARUS      |Low      |      0|   1484|  3835|
|24 months |PROBIT         |BELARUS      |Low      |      1|     12|  3835|
|24 months |PROBIT         |BELARUS      |Medium   |      0|   1691|  3835|
|24 months |PROBIT         |BELARUS      |Medium   |      1|     13|  3835|
|24 months |PROBIT         |BELARUS      |High     |      0|    630|  3835|
|24 months |PROBIT         |BELARUS      |High     |      1|      5|  3835|
|24 months |PROVIDE        |BANGLADESH   |Low      |      0|    171|   579|
|24 months |PROVIDE        |BANGLADESH   |Low      |      1|     22|   579|
|24 months |PROVIDE        |BANGLADESH   |Medium   |      0|    173|   579|
|24 months |PROVIDE        |BANGLADESH   |Medium   |      1|     20|   579|
|24 months |PROVIDE        |BANGLADESH   |High     |      0|    173|   579|
|24 months |PROVIDE        |BANGLADESH   |High     |      1|     20|   579|
|24 months |TanzaniaChild2 |TANZANIA     |Low      |      0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Low      |      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Medium   |      0|      4|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Medium   |      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |High     |      0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |High     |      1|      0|     6|
|24 months |ZVITAMBO       |ZIMBABWE     |Low      |      0|     60|   415|
|24 months |ZVITAMBO       |ZIMBABWE     |Low      |      1|     11|   415|
|24 months |ZVITAMBO       |ZIMBABWE     |Medium   |      0|    257|   415|
|24 months |ZVITAMBO       |ZIMBABWE     |Medium   |      1|     61|   415|
|24 months |ZVITAMBO       |ZIMBABWE     |High     |      0|     23|   415|
|24 months |ZVITAMBO       |ZIMBABWE     |High     |      1|      3|   415|


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
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE





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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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


