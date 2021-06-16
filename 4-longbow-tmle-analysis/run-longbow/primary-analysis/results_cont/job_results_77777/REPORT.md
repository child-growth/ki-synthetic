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
* delta_arm
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

* syntype
* agecat
* studyid
* country

## Data Summary

|syntype |agecat    |studyid       |country   |fhtcm        | n_cell|     n|
|:-------|:---------|:-------------|:---------|:------------|------:|-----:|
|BC      |Birth     |COHORTS       |GUATEMALA |>=167 cm     |    164|   368|
|BC      |Birth     |COHORTS       |GUATEMALA |[162-167) cm |     59|   368|
|BC      |Birth     |COHORTS       |GUATEMALA |<162 cm      |    145|   368|
|BC      |Birth     |Keneba        |GAMBIA    |>=167 cm     |    683|  1174|
|BC      |Birth     |Keneba        |GAMBIA    |[162-167) cm |    313|  1174|
|BC      |Birth     |Keneba        |GAMBIA    |<162 cm      |    178|  1174|
|BC      |Birth     |PROBIT        |BELARUS   |>=167 cm     |  11670| 12482|
|BC      |Birth     |PROBIT        |BELARUS   |[162-167) cm |    712| 12482|
|BC      |Birth     |PROBIT        |BELARUS   |<162 cm      |    100| 12482|
|BC      |Birth     |SAS-CompFeed  |INDIA     |>=167 cm     |    341|   853|
|BC      |Birth     |SAS-CompFeed  |INDIA     |[162-167) cm |    275|   853|
|BC      |Birth     |SAS-CompFeed  |INDIA     |<162 cm      |    237|   853|
|BC      |6 months  |COHORTS       |GUATEMALA |>=167 cm     |    179|   409|
|BC      |6 months  |COHORTS       |GUATEMALA |[162-167) cm |     75|   409|
|BC      |6 months  |COHORTS       |GUATEMALA |<162 cm      |    155|   409|
|BC      |6 months  |Keneba        |GAMBIA    |>=167 cm     |    884|  1553|
|BC      |6 months  |Keneba        |GAMBIA    |[162-167) cm |    423|  1553|
|BC      |6 months  |Keneba        |GAMBIA    |<162 cm      |    246|  1553|
|BC      |6 months  |PROBIT        |BELARUS   |>=167 cm     |  11140| 11924|
|BC      |6 months  |PROBIT        |BELARUS   |[162-167) cm |    685| 11924|
|BC      |6 months  |PROBIT        |BELARUS   |<162 cm      |     99| 11924|
|BC      |6 months  |SAS-CompFeed  |INDIA     |>=167 cm     |    377|   912|
|BC      |6 months  |SAS-CompFeed  |INDIA     |[162-167) cm |    297|   912|
|BC      |6 months  |SAS-CompFeed  |INDIA     |<162 cm      |    238|   912|
|BC      |6 months  |SAS-FoodSuppl |INDIA     |>=167 cm     |    103|   368|
|BC      |6 months  |SAS-FoodSuppl |INDIA     |[162-167) cm |    114|   368|
|BC      |6 months  |SAS-FoodSuppl |INDIA     |<162 cm      |    151|   368|
|BC      |24 months |COHORTS       |GUATEMALA |>=167 cm     |    204|   456|
|BC      |24 months |COHORTS       |GUATEMALA |[162-167) cm |     78|   456|
|BC      |24 months |COHORTS       |GUATEMALA |<162 cm      |    174|   456|
|BC      |24 months |Keneba        |GAMBIA    |>=167 cm     |    719|  1271|
|BC      |24 months |Keneba        |GAMBIA    |[162-167) cm |    352|  1271|
|BC      |24 months |Keneba        |GAMBIA    |<162 cm      |    200|  1271|
|BC      |24 months |PROBIT        |BELARUS   |>=167 cm     |   3432|  3660|
|BC      |24 months |PROBIT        |BELARUS   |[162-167) cm |    202|  3660|
|BC      |24 months |PROBIT        |BELARUS   |<162 cm      |     26|  3660|
|FULL    |Birth     |COHORTS       |GUATEMALA |>=167 cm     |    135|   328|
|FULL    |Birth     |COHORTS       |GUATEMALA |[162-167) cm |     64|   328|
|FULL    |Birth     |COHORTS       |GUATEMALA |<162 cm      |    129|   328|
|FULL    |Birth     |Keneba        |GAMBIA    |>=167 cm     |   1089|  1543|
|FULL    |Birth     |Keneba        |GAMBIA    |[162-167) cm |    271|  1543|
|FULL    |Birth     |Keneba        |GAMBIA    |<162 cm      |    183|  1543|
|FULL    |Birth     |PROBIT        |BELARUS   |>=167 cm     |  11304| 11933|
|FULL    |Birth     |PROBIT        |BELARUS   |[162-167) cm |    490| 11933|
|FULL    |Birth     |PROBIT        |BELARUS   |<162 cm      |    139| 11933|
|FULL    |Birth     |SAS-CompFeed  |INDIA     |>=167 cm     |    351|   827|
|FULL    |Birth     |SAS-CompFeed  |INDIA     |[162-167) cm |    274|   827|
|FULL    |Birth     |SAS-CompFeed  |INDIA     |<162 cm      |    202|   827|
|FULL    |6 months  |COHORTS       |GUATEMALA |>=167 cm     |    166|   392|
|FULL    |6 months  |COHORTS       |GUATEMALA |[162-167) cm |     82|   392|
|FULL    |6 months  |COHORTS       |GUATEMALA |<162 cm      |    144|   392|
|FULL    |6 months  |Keneba        |GAMBIA    |>=167 cm     |   1463|  2089|
|FULL    |6 months  |Keneba        |GAMBIA    |[162-167) cm |    374|  2089|
|FULL    |6 months  |Keneba        |GAMBIA    |<162 cm      |    252|  2089|
|FULL    |6 months  |PROBIT        |BELARUS   |>=167 cm     |  11205| 11875|
|FULL    |6 months  |PROBIT        |BELARUS   |[162-167) cm |    522| 11875|
|FULL    |6 months  |PROBIT        |BELARUS   |<162 cm      |    148| 11875|
|FULL    |6 months  |SAS-CompFeed  |INDIA     |>=167 cm     |    385|   894|
|FULL    |6 months  |SAS-CompFeed  |INDIA     |[162-167) cm |    296|   894|
|FULL    |6 months  |SAS-CompFeed  |INDIA     |<162 cm      |    213|   894|
|FULL    |6 months  |SAS-FoodSuppl |INDIA     |>=167 cm     |    102|   369|
|FULL    |6 months  |SAS-FoodSuppl |INDIA     |[162-167) cm |    108|   369|
|FULL    |6 months  |SAS-FoodSuppl |INDIA     |<162 cm      |    159|   369|
|FULL    |24 months |COHORTS       |GUATEMALA |>=167 cm     |    189|   440|
|FULL    |24 months |COHORTS       |GUATEMALA |[162-167) cm |     87|   440|
|FULL    |24 months |COHORTS       |GUATEMALA |<162 cm      |    164|   440|
|FULL    |24 months |Keneba        |GAMBIA    |>=167 cm     |   1180|  1725|
|FULL    |24 months |Keneba        |GAMBIA    |[162-167) cm |    332|  1725|
|FULL    |24 months |Keneba        |GAMBIA    |<162 cm      |    213|  1725|
|FULL    |24 months |PROBIT        |BELARUS   |>=167 cm     |   3324|  3498|
|FULL    |24 months |PROBIT        |BELARUS   |[162-167) cm |    142|  3498|
|FULL    |24 months |PROBIT        |BELARUS   |<162 cm      |     32|  3498|
|QI      |Birth     |COHORTS       |GUATEMALA |>=167 cm     |     43|   162|
|QI      |Birth     |COHORTS       |GUATEMALA |[162-167) cm |     31|   162|
|QI      |Birth     |COHORTS       |GUATEMALA |<162 cm      |     88|   162|
|QI      |Birth     |Keneba        |GAMBIA    |>=167 cm     |    889|  1682|
|QI      |Birth     |Keneba        |GAMBIA    |[162-167) cm |    499|  1682|
|QI      |Birth     |Keneba        |GAMBIA    |<162 cm      |    294|  1682|
|QI      |Birth     |PROBIT        |BELARUS   |>=167 cm     |   5696|  6145|
|QI      |Birth     |PROBIT        |BELARUS   |[162-167) cm |    346|  6145|
|QI      |Birth     |PROBIT        |BELARUS   |<162 cm      |    103|  6145|
|QI      |Birth     |SAS-CompFeed  |INDIA     |>=167 cm     |     95|   216|
|QI      |Birth     |SAS-CompFeed  |INDIA     |[162-167) cm |     51|   216|
|QI      |Birth     |SAS-CompFeed  |INDIA     |<162 cm      |     70|   216|
|QI      |6 months  |COHORTS       |GUATEMALA |>=167 cm     |     36|   126|
|QI      |6 months  |COHORTS       |GUATEMALA |[162-167) cm |     26|   126|
|QI      |6 months  |COHORTS       |GUATEMALA |<162 cm      |     64|   126|
|QI      |6 months  |Keneba        |GAMBIA    |>=167 cm     |    884|  1623|
|QI      |6 months  |Keneba        |GAMBIA    |[162-167) cm |    467|  1623|
|QI      |6 months  |Keneba        |GAMBIA    |<162 cm      |    272|  1623|
|QI      |6 months  |PROBIT        |BELARUS   |>=167 cm     |   3647|  3939|
|QI      |6 months  |PROBIT        |BELARUS   |[162-167) cm |    227|  3939|
|QI      |6 months  |PROBIT        |BELARUS   |<162 cm      |     65|  3939|
|QI      |6 months  |SAS-CompFeed  |INDIA     |>=167 cm     |     62|   136|
|QI      |6 months  |SAS-CompFeed  |INDIA     |[162-167) cm |     34|   136|
|QI      |6 months  |SAS-CompFeed  |INDIA     |<162 cm      |     40|   136|
|QI      |6 months  |SAS-FoodSuppl |INDIA     |>=167 cm     |     77|   246|
|QI      |6 months  |SAS-FoodSuppl |INDIA     |[162-167) cm |     73|   246|
|QI      |6 months  |SAS-FoodSuppl |INDIA     |<162 cm      |     96|   246|
|QI      |24 months |COHORTS       |GUATEMALA |>=167 cm     |      3|     9|
|QI      |24 months |COHORTS       |GUATEMALA |[162-167) cm |      1|     9|
|QI      |24 months |COHORTS       |GUATEMALA |<162 cm      |      5|     9|
|QI      |24 months |Keneba        |GAMBIA    |>=167 cm     |    174|   306|
|QI      |24 months |Keneba        |GAMBIA    |[162-167) cm |     77|   306|
|QI      |24 months |Keneba        |GAMBIA    |<162 cm      |     55|   306|
|QI      |24 months |PROBIT        |BELARUS   |>=167 cm     |    115|   122|
|QI      |24 months |PROBIT        |BELARUS   |[162-167) cm |      6|   122|
|QI      |24 months |PROBIT        |BELARUS   |<162 cm      |      1|   122|
|QI      |24 months |SAS-CompFeed  |INDIA     |>=167 cm     |      3|     3|
|QI      |24 months |SAS-CompFeed  |INDIA     |[162-167) cm |      0|     3|
|QI      |24 months |SAS-CompFeed  |INDIA     |<162 cm      |      0|     3|
|QI      |24 months |SAS-FoodSuppl |INDIA     |>=167 cm     |      0|     6|
|QI      |24 months |SAS-FoodSuppl |INDIA     |[162-167) cm |      3|     6|
|QI      |24 months |SAS-FoodSuppl |INDIA     |<162 cm      |      3|     6|


The following strata were considered:

* syntype: BC, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: 24 months, studyid: Keneba, country: GAMBIA
* syntype: BC, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: 6 months, studyid: Keneba, country: GAMBIA
* syntype: BC, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: BC, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: BC, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: Birth, studyid: Keneba, country: GAMBIA
* syntype: BC, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: 24 months, studyid: Keneba, country: GAMBIA
* syntype: FULL, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: 6 months, studyid: Keneba, country: GAMBIA
* syntype: FULL, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: FULL, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: Birth, studyid: Keneba, country: GAMBIA
* syntype: FULL, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: 24 months, studyid: Keneba, country: GAMBIA
* syntype: QI, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: 24 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 24 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: 6 months, studyid: Keneba, country: GAMBIA
* syntype: QI, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: QI, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: Birth, studyid: Keneba, country: GAMBIA
* syntype: QI, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: Birth, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* syntype: QI, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: 24 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 24 months, studyid: SAS-FoodSuppl, country: INDIA





```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```


