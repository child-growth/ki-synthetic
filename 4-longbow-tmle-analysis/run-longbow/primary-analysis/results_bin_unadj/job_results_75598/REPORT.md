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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |hhwealth_quart | wast_rec90d| n_cell|    n|
|:-----------|:--------------|:------------|:--------------|-----------:|------:|----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |           0|     40|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |           1|     58|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |           0|     30|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |           1|     62|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |           0|     18|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |           1|     46|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |           0|     32|  324|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |           1|     38|  324|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ4       |           0|     69|  367|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ4       |           1|     52|  367|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ1       |           0|     49|  367|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ1       |           1|     48|  367|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ2       |           0|     39|  367|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ2       |           1|     27|  367|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ3       |           0|     47|  367|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ3       |           1|     36|  367|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ4       |           0|    138| 1688|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ4       |           1|    279| 1688|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ1       |           0|    188| 1688|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ1       |           1|    257| 1688|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ2       |           0|    119| 1688|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ2       |           1|    165| 1688|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ3       |           0|    219| 1688|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ3       |           1|    323| 1688|
|0-24 months |CONTENT        |PERU         |WealthQ4       |           0|      0|    7|
|0-24 months |CONTENT        |PERU         |WealthQ4       |           1|      0|    7|
|0-24 months |CONTENT        |PERU         |WealthQ1       |           0|      0|    7|
|0-24 months |CONTENT        |PERU         |WealthQ1       |           1|      2|    7|
|0-24 months |CONTENT        |PERU         |WealthQ2       |           0|      1|    7|
|0-24 months |CONTENT        |PERU         |WealthQ2       |           1|      3|    7|
|0-24 months |CONTENT        |PERU         |WealthQ3       |           0|      0|    7|
|0-24 months |CONTENT        |PERU         |WealthQ3       |           1|      1|    7|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ4       |           0|     70|  643|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ4       |           1|     85|  643|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ1       |           0|     71|  643|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ1       |           1|     80|  643|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ2       |           0|     83|  643|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ2       |           1|     97|  643|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ3       |           0|     72|  643|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ3       |           1|     85|  643|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |           0|   1142| 7566|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |           1|    842| 7566|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |           0|   1057| 7566|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |           1|    792| 7566|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |           0|   1098| 7566|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |           1|    758| 7566|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |           0|   1075| 7566|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |           1|    802| 7566|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |           0|    328| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |           1|    142| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |           0|    421| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |           1|    125| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |           0|    413| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |           1|    124| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |           0|    372| 2068|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |           1|    143| 2068|
|0-24 months |LCNI-5         |MALAWI       |WealthQ4       |           0|     18|   78|
|0-24 months |LCNI-5         |MALAWI       |WealthQ4       |           1|      8|   78|
|0-24 months |LCNI-5         |MALAWI       |WealthQ1       |           0|     12|   78|
|0-24 months |LCNI-5         |MALAWI       |WealthQ1       |           1|      0|   78|
|0-24 months |LCNI-5         |MALAWI       |WealthQ2       |           0|     17|   78|
|0-24 months |LCNI-5         |MALAWI       |WealthQ2       |           1|      1|   78|
|0-24 months |LCNI-5         |MALAWI       |WealthQ3       |           0|     18|   78|
|0-24 months |LCNI-5         |MALAWI       |WealthQ3       |           1|      4|   78|
|0-24 months |MAL-ED         |INDIA        |WealthQ4       |           0|     12|  173|
|0-24 months |MAL-ED         |INDIA        |WealthQ4       |           1|     11|  173|
|0-24 months |MAL-ED         |INDIA        |WealthQ1       |           0|     18|  173|
|0-24 months |MAL-ED         |INDIA        |WealthQ1       |           1|     35|  173|
|0-24 months |MAL-ED         |INDIA        |WealthQ2       |           0|     21|  173|
|0-24 months |MAL-ED         |INDIA        |WealthQ2       |           1|     34|  173|
|0-24 months |MAL-ED         |INDIA        |WealthQ3       |           0|     16|  173|
|0-24 months |MAL-ED         |INDIA        |WealthQ3       |           1|     26|  173|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ4       |           0|      7|  114|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ4       |           1|     19|  114|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ1       |           0|     10|  114|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ1       |           1|     22|  114|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ2       |           0|     14|  114|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ2       |           1|     18|  114|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ3       |           0|     10|  114|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ3       |           1|     14|  114|
|0-24 months |MAL-ED         |PERU         |WealthQ4       |           0|      1|   32|
|0-24 months |MAL-ED         |PERU         |WealthQ4       |           1|     10|   32|
|0-24 months |MAL-ED         |PERU         |WealthQ1       |           0|      1|   32|
|0-24 months |MAL-ED         |PERU         |WealthQ1       |           1|      3|   32|
|0-24 months |MAL-ED         |PERU         |WealthQ2       |           0|      2|   32|
|0-24 months |MAL-ED         |PERU         |WealthQ2       |           1|      7|   32|
|0-24 months |MAL-ED         |PERU         |WealthQ3       |           0|      1|   32|
|0-24 months |MAL-ED         |PERU         |WealthQ3       |           1|      7|   32|
|0-24 months |MAL-ED         |NEPAL        |WealthQ4       |           0|     11|   97|
|0-24 months |MAL-ED         |NEPAL        |WealthQ4       |           1|     37|   97|
|0-24 months |MAL-ED         |NEPAL        |WealthQ1       |           0|      4|   97|
|0-24 months |MAL-ED         |NEPAL        |WealthQ1       |           1|     15|   97|
|0-24 months |MAL-ED         |NEPAL        |WealthQ2       |           0|      3|   97|
|0-24 months |MAL-ED         |NEPAL        |WealthQ2       |           1|     15|   97|
|0-24 months |MAL-ED         |NEPAL        |WealthQ3       |           0|      2|   97|
|0-24 months |MAL-ED         |NEPAL        |WealthQ3       |           1|     10|   97|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ4       |           0|      2|   21|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ4       |           1|      6|   21|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ1       |           0|      0|   21|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ1       |           1|      5|   21|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ2       |           0|      0|   21|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ2       |           1|      1|   21|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ3       |           0|      2|   21|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ3       |           1|      5|   21|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ4       |           0|      1|   51|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ4       |           1|     11|   51|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ1       |           0|      2|   51|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ1       |           1|      5|   51|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ2       |           0|      2|   51|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ2       |           1|     16|   51|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ3       |           0|      4|   51|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ3       |           1|     10|   51|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |           0|      0|   75|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |           1|     15|   75|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |           0|      7|   75|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |           1|     25|   75|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |           0|      4|   75|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |           1|      8|   75|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |           0|      2|   75|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |           1|     14|   75|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ4       |           0|     34|  308|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ4       |           1|     41|  308|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ1       |           0|     30|  308|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ1       |           1|     50|  308|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ2       |           0|     27|  308|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ2       |           1|     46|  308|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ3       |           0|     38|  308|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ3       |           1|     42|  308|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |           0|     67|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |           1|    112|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |           0|     62|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |           1|    122|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |           0|     58|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |           1|     93|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |           0|     79|  713|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |           1|    120|  713|
|0-24 months |Vellore Crypto |INDIA        |WealthQ4       |           0|     38|  395|
|0-24 months |Vellore Crypto |INDIA        |WealthQ4       |           1|     66|  395|
|0-24 months |Vellore Crypto |INDIA        |WealthQ1       |           0|     58|  395|
|0-24 months |Vellore Crypto |INDIA        |WealthQ1       |           1|     65|  395|
|0-24 months |Vellore Crypto |INDIA        |WealthQ2       |           0|     45|  395|
|0-24 months |Vellore Crypto |INDIA        |WealthQ2       |           1|     63|  395|
|0-24 months |Vellore Crypto |INDIA        |WealthQ3       |           0|     21|  395|
|0-24 months |Vellore Crypto |INDIA        |WealthQ3       |           1|     39|  395|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ4       |           0|     28|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ4       |           1|     40|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ1       |           0|     10|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ1       |           1|     39|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ2       |           0|     12|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ2       |           1|     28|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ3       |           0|     16|  201|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ3       |           1|     28|  201|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ4       |           0|     20|  207|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ4       |           1|     52|  207|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ1       |           0|      9|  207|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ1       |           1|     46|  207|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ2       |           0|      6|  207|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ2       |           1|     23|  207|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ3       |           0|     17|  207|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ3       |           1|     34|  207|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ4       |           0|     59|  751|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ4       |           1|    160|  751|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ1       |           0|     55|  751|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ1       |           1|    138|  751|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ2       |           0|     30|  751|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ2       |           1|     94|  751|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ3       |           0|     54|  751|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ3       |           1|    161|  751|
|0-6 months  |CONTENT        |PERU         |WealthQ4       |           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |WealthQ4       |           1|      0|    4|
|0-6 months  |CONTENT        |PERU         |WealthQ1       |           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |WealthQ1       |           1|      1|    4|
|0-6 months  |CONTENT        |PERU         |WealthQ2       |           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |WealthQ2       |           1|      2|    4|
|0-6 months  |CONTENT        |PERU         |WealthQ3       |           0|      0|    4|
|0-6 months  |CONTENT        |PERU         |WealthQ3       |           1|      1|    4|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ4       |           0|     30|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ4       |           1|     33|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ1       |           0|     22|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ1       |           1|     42|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ2       |           0|     30|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ2       |           1|     42|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ3       |           0|     22|  263|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ3       |           1|     42|  263|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ4       |           0|    366| 4730|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ4       |           1|    842| 4730|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ1       |           0|    395| 4730|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ1       |           1|    792| 4730|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ2       |           0|    390| 4730|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ2       |           1|    758| 4730|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ3       |           0|    385| 4730|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ3       |           1|    802| 4730|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ4       |           0|     53|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ4       |           1|     87|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ1       |           0|     62|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ1       |           1|     71|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ2       |           0|     72|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ2       |           1|     67|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ3       |           0|     57|  553|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ3       |           1|     84|  553|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ4       |           0|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ4       |           1|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ1       |           0|      1|    4|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ1       |           1|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ2       |           0|      1|    4|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ2       |           1|      0|    4|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ3       |           0|      2|    4|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ3       |           1|      0|    4|
|0-6 months  |MAL-ED         |INDIA        |WealthQ4       |           0|      4|   80|
|0-6 months  |MAL-ED         |INDIA        |WealthQ4       |           1|      8|   80|
|0-6 months  |MAL-ED         |INDIA        |WealthQ1       |           0|      4|   80|
|0-6 months  |MAL-ED         |INDIA        |WealthQ1       |           1|     13|   80|
|0-6 months  |MAL-ED         |INDIA        |WealthQ2       |           0|      8|   80|
|0-6 months  |MAL-ED         |INDIA        |WealthQ2       |           1|     17|   80|
|0-6 months  |MAL-ED         |INDIA        |WealthQ3       |           0|      8|   80|
|0-6 months  |MAL-ED         |INDIA        |WealthQ3       |           1|     18|   80|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ4       |           0|      2|   57|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ4       |           1|     10|   57|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ1       |           0|      2|   57|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ1       |           1|     16|   57|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ2       |           0|      5|   57|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ2       |           1|     11|   57|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ3       |           0|      2|   57|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ3       |           1|      9|   57|
|0-6 months  |MAL-ED         |PERU         |WealthQ4       |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |WealthQ4       |           1|      4|   11|
|0-6 months  |MAL-ED         |PERU         |WealthQ1       |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |WealthQ1       |           1|      1|   11|
|0-6 months  |MAL-ED         |PERU         |WealthQ2       |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |WealthQ2       |           1|      2|   11|
|0-6 months  |MAL-ED         |PERU         |WealthQ3       |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |WealthQ3       |           1|      4|   11|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ4       |           0|      6|   47|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ4       |           1|     18|   47|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ1       |           0|      2|   47|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ1       |           1|      8|   47|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ2       |           0|      1|   47|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ2       |           1|      7|   47|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ3       |           0|      0|   47|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ3       |           1|      5|   47|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ4       |           0|      1|   14|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ4       |           1|      3|   14|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ1       |           0|      0|   14|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ1       |           1|      5|   14|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ2       |           0|      0|   14|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ2       |           1|      1|   14|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ3       |           0|      0|   14|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ3       |           1|      4|   14|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ4       |           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ4       |           1|      1|   14|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ1       |           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ1       |           1|      2|   14|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ2       |           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ2       |           1|      8|   14|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ3       |           0|      1|   14|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ3       |           1|      2|   14|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ4       |           0|      0|   30|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ4       |           1|      6|   30|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ1       |           0|      4|   30|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ1       |           1|      9|   30|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ2       |           0|      2|   30|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ2       |           1|      3|   30|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ3       |           0|      0|   30|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ3       |           1|      6|   30|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ4       |           0|     13|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ4       |           1|     34|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ1       |           0|      9|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ1       |           1|     37|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ2       |           0|      6|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ2       |           1|     38|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ3       |           0|     12|  185|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ3       |           1|     36|  185|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ4       |           0|     33|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ4       |           1|     61|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ1       |           0|     24|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ1       |           1|     58|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ2       |           0|     20|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ2       |           1|     52|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ3       |           0|     24|  340|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ3       |           1|     68|  340|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ4       |           0|     20|  240|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ4       |           1|     38|  240|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ1       |           0|     34|  240|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ1       |           1|     41|  240|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ2       |           0|     22|  240|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ2       |           1|     48|  240|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ3       |           0|     11|  240|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ3       |           1|     26|  240|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |           0|     12|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |           1|     18|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |           0|     20|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |           1|     23|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |           0|      6|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |           1|     18|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |           0|     16|  123|
|6-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |           1|     10|  123|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ4       |           0|     49|  160|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ4       |           1|      0|  160|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ1       |           0|     40|  160|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ1       |           1|      2|  160|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ2       |           0|     33|  160|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ2       |           1|      4|  160|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ3       |           0|     30|  160|
|6-24 months |COHORTS        |GUATEMALA    |WealthQ3       |           1|      2|  160|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ4       |           0|     79|  937|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ4       |           1|    119|  937|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ1       |           0|    133|  937|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ1       |           1|    119|  937|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ2       |           0|     89|  937|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ2       |           1|     71|  937|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ3       |           0|    165|  937|
|6-24 months |COHORTS        |PHILIPPINES  |WealthQ3       |           1|    162|  937|
|6-24 months |CONTENT        |PERU         |WealthQ4       |           0|      0|    3|
|6-24 months |CONTENT        |PERU         |WealthQ4       |           1|      0|    3|
|6-24 months |CONTENT        |PERU         |WealthQ1       |           0|      0|    3|
|6-24 months |CONTENT        |PERU         |WealthQ1       |           1|      1|    3|
|6-24 months |CONTENT        |PERU         |WealthQ2       |           0|      1|    3|
|6-24 months |CONTENT        |PERU         |WealthQ2       |           1|      1|    3|
|6-24 months |CONTENT        |PERU         |WealthQ3       |           0|      0|    3|
|6-24 months |CONTENT        |PERU         |WealthQ3       |           1|      0|    3|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ4       |           0|     40|  380|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ4       |           1|     52|  380|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ1       |           0|     49|  380|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ1       |           1|     38|  380|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ2       |           0|     53|  380|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ2       |           1|     55|  380|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ3       |           0|     50|  380|
|6-24 months |GMS-Nepal      |NEPAL        |WealthQ3       |           1|     43|  380|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |           0|    776| 2836|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |           1|      0| 2836|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |           0|    662| 2836|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |           1|      0| 2836|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |           0|    708| 2836|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |           1|      0| 2836|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |           0|    690| 2836|
|6-24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |           1|      0| 2836|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |           0|    275| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |           1|     55| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |           0|    359| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |           1|     54| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |           0|    341| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |           1|     57| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |           0|    315| 1515|
|6-24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |           1|     59| 1515|
|6-24 months |LCNI-5         |MALAWI       |WealthQ4       |           0|     18|   74|
|6-24 months |LCNI-5         |MALAWI       |WealthQ4       |           1|      8|   74|
|6-24 months |LCNI-5         |MALAWI       |WealthQ1       |           0|     11|   74|
|6-24 months |LCNI-5         |MALAWI       |WealthQ1       |           1|      0|   74|
|6-24 months |LCNI-5         |MALAWI       |WealthQ2       |           0|     16|   74|
|6-24 months |LCNI-5         |MALAWI       |WealthQ2       |           1|      1|   74|
|6-24 months |LCNI-5         |MALAWI       |WealthQ3       |           0|     16|   74|
|6-24 months |LCNI-5         |MALAWI       |WealthQ3       |           1|      4|   74|
|6-24 months |MAL-ED         |INDIA        |WealthQ4       |           0|      8|   93|
|6-24 months |MAL-ED         |INDIA        |WealthQ4       |           1|      3|   93|
|6-24 months |MAL-ED         |INDIA        |WealthQ1       |           0|     14|   93|
|6-24 months |MAL-ED         |INDIA        |WealthQ1       |           1|     22|   93|
|6-24 months |MAL-ED         |INDIA        |WealthQ2       |           0|     13|   93|
|6-24 months |MAL-ED         |INDIA        |WealthQ2       |           1|     17|   93|
|6-24 months |MAL-ED         |INDIA        |WealthQ3       |           0|      8|   93|
|6-24 months |MAL-ED         |INDIA        |WealthQ3       |           1|      8|   93|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ4       |           0|      5|   57|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ4       |           1|      9|   57|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ1       |           0|      8|   57|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ1       |           1|      6|   57|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ2       |           0|      9|   57|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ2       |           1|      7|   57|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ3       |           0|      8|   57|
|6-24 months |MAL-ED         |BANGLADESH   |WealthQ3       |           1|      5|   57|
|6-24 months |MAL-ED         |PERU         |WealthQ4       |           0|      1|   21|
|6-24 months |MAL-ED         |PERU         |WealthQ4       |           1|      6|   21|
|6-24 months |MAL-ED         |PERU         |WealthQ1       |           0|      1|   21|
|6-24 months |MAL-ED         |PERU         |WealthQ1       |           1|      2|   21|
|6-24 months |MAL-ED         |PERU         |WealthQ2       |           0|      2|   21|
|6-24 months |MAL-ED         |PERU         |WealthQ2       |           1|      5|   21|
|6-24 months |MAL-ED         |PERU         |WealthQ3       |           0|      1|   21|
|6-24 months |MAL-ED         |PERU         |WealthQ3       |           1|      3|   21|
|6-24 months |MAL-ED         |NEPAL        |WealthQ4       |           0|      5|   50|
|6-24 months |MAL-ED         |NEPAL        |WealthQ4       |           1|     19|   50|
|6-24 months |MAL-ED         |NEPAL        |WealthQ1       |           0|      2|   50|
|6-24 months |MAL-ED         |NEPAL        |WealthQ1       |           1|      7|   50|
|6-24 months |MAL-ED         |NEPAL        |WealthQ2       |           0|      2|   50|
|6-24 months |MAL-ED         |NEPAL        |WealthQ2       |           1|      8|   50|
|6-24 months |MAL-ED         |NEPAL        |WealthQ3       |           0|      2|   50|
|6-24 months |MAL-ED         |NEPAL        |WealthQ3       |           1|      5|   50|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ4       |           0|      1|    7|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ4       |           1|      3|    7|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ1       |           0|      0|    7|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ1       |           1|      0|    7|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ2       |           0|      0|    7|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ2       |           1|      0|    7|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ3       |           0|      2|    7|
|6-24 months |MAL-ED         |BRAZIL       |WealthQ3       |           1|      1|    7|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ4       |           0|      1|   37|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ4       |           1|     10|   37|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ1       |           0|      2|   37|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ1       |           1|      3|   37|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ2       |           0|      2|   37|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ2       |           1|      8|   37|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ3       |           0|      3|   37|
|6-24 months |MAL-ED         |TANZANIA     |WealthQ3       |           1|      8|   37|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |           0|      0|   45|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |           1|      9|   45|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |           0|      3|   45|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |           1|     16|   45|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |           0|      2|   45|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |           1|      5|   45|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |           0|      2|   45|
|6-24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |           1|      8|   45|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ4       |           0|     21|  123|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ4       |           1|      7|  123|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ1       |           0|     21|  123|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ1       |           1|     13|  123|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ2       |           0|     21|  123|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ2       |           1|      8|  123|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ3       |           0|     26|  123|
|6-24 months |PROVIDE        |BANGLADESH   |WealthQ3       |           1|      6|  123|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |           0|     34|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |           1|     51|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |           0|     38|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |           1|     64|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |           0|     38|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |           1|     41|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |           0|     55|  373|
|6-24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |           1|     52|  373|
|6-24 months |Vellore Crypto |INDIA        |WealthQ4       |           0|     18|  155|
|6-24 months |Vellore Crypto |INDIA        |WealthQ4       |           1|     28|  155|
|6-24 months |Vellore Crypto |INDIA        |WealthQ1       |           0|     24|  155|
|6-24 months |Vellore Crypto |INDIA        |WealthQ1       |           1|     24|  155|
|6-24 months |Vellore Crypto |INDIA        |WealthQ2       |           0|     23|  155|
|6-24 months |Vellore Crypto |INDIA        |WealthQ2       |           1|     15|  155|
|6-24 months |Vellore Crypto |INDIA        |WealthQ3       |           0|     10|  155|
|6-24 months |Vellore Crypto |INDIA        |WealthQ3       |           1|     13|  155|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA





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


