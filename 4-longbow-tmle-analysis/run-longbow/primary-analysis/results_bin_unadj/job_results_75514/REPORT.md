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

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |hhwealth_quart | wasted| n_cell|     n|
|:---------|:--------------|:------------|:--------------|------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ4       |      0|     26|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ4       |      1|      3|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ1       |      0|     19|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ1       |      1|      6|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ2       |      0|     12|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ2       |      1|      2|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ3       |      0|     18|    86|
|Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ3       |      1|      0|    86|
|Birth     |COHORTS        |GUATEMALA    |WealthQ4       |      0|    194|   729|
|Birth     |COHORTS        |GUATEMALA    |WealthQ4       |      1|     67|   729|
|Birth     |COHORTS        |GUATEMALA    |WealthQ1       |      0|    106|   729|
|Birth     |COHORTS        |GUATEMALA    |WealthQ1       |      1|     51|   729|
|Birth     |COHORTS        |GUATEMALA    |WealthQ2       |      0|     97|   729|
|Birth     |COHORTS        |GUATEMALA    |WealthQ2       |      1|     26|   729|
|Birth     |COHORTS        |GUATEMALA    |WealthQ3       |      0|    147|   729|
|Birth     |COHORTS        |GUATEMALA    |WealthQ3       |      1|     41|   729|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ4       |      0|    699|  2896|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ4       |      1|    145|  2896|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ1       |      0|    523|  2896|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ1       |      1|    116|  2896|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ2       |      0|    443|  2896|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ2       |      1|     66|  2896|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ3       |      0|    780|  2896|
|Birth     |COHORTS        |PHILIPPINES  |WealthQ3       |      1|    124|  2896|
|Birth     |CONTENT        |PERU         |WealthQ4       |      0|      1|     2|
|Birth     |CONTENT        |PERU         |WealthQ4       |      1|      0|     2|
|Birth     |CONTENT        |PERU         |WealthQ1       |      0|      1|     2|
|Birth     |CONTENT        |PERU         |WealthQ1       |      1|      0|     2|
|Birth     |CONTENT        |PERU         |WealthQ2       |      0|      0|     2|
|Birth     |CONTENT        |PERU         |WealthQ2       |      1|      0|     2|
|Birth     |CONTENT        |PERU         |WealthQ3       |      0|      0|     2|
|Birth     |CONTENT        |PERU         |WealthQ3       |      1|      0|     2|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ4       |      0|    122|   641|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ4       |      1|     33|   641|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ1       |      0|    127|   641|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ1       |      1|     31|   641|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ2       |      0|    127|   641|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ2       |      1|     34|   641|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ3       |      0|    133|   641|
|Birth     |GMS-Nepal      |NEPAL        |WealthQ3       |      1|     34|   641|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ4       |      0|   4241| 17996|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ4       |      1|    496| 17996|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ1       |      0|   3835| 17996|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ1       |      1|    471| 17996|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ2       |      0|   3909| 17996|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ2       |      1|    469| 17996|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ3       |      0|   4040| 17996|
|Birth     |JiVitA-3       |BANGLADESH   |WealthQ3       |      1|    535| 17996|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ4       |      0|    534|  2394|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ4       |      1|     58|  2394|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ1       |      0|    535|  2394|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ1       |      1|     58|  2394|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ2       |      0|    527|  2394|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ2       |      1|     55|  2394|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ3       |      0|    559|  2394|
|Birth     |JiVitA-4       |BANGLADESH   |WealthQ3       |      1|     68|  2394|
|Birth     |MAL-ED         |INDIA        |WealthQ4       |      0|      5|    44|
|Birth     |MAL-ED         |INDIA        |WealthQ4       |      1|      1|    44|
|Birth     |MAL-ED         |INDIA        |WealthQ1       |      0|     12|    44|
|Birth     |MAL-ED         |INDIA        |WealthQ1       |      1|      0|    44|
|Birth     |MAL-ED         |INDIA        |WealthQ2       |      0|     13|    44|
|Birth     |MAL-ED         |INDIA        |WealthQ2       |      1|      2|    44|
|Birth     |MAL-ED         |INDIA        |WealthQ3       |      0|      9|    44|
|Birth     |MAL-ED         |INDIA        |WealthQ3       |      1|      2|    44|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ4       |      0|     39|   198|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ4       |      1|      8|   198|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ1       |      0|     50|   198|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ1       |      1|     10|   198|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ2       |      0|     37|   198|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ2       |      1|      6|   198|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ3       |      0|     40|   198|
|Birth     |MAL-ED         |BANGLADESH   |WealthQ3       |      1|      8|   198|
|Birth     |MAL-ED         |PERU         |WealthQ4       |      0|     52|   212|
|Birth     |MAL-ED         |PERU         |WealthQ4       |      1|      2|   212|
|Birth     |MAL-ED         |PERU         |WealthQ1       |      0|     36|   212|
|Birth     |MAL-ED         |PERU         |WealthQ1       |      1|      0|   212|
|Birth     |MAL-ED         |PERU         |WealthQ2       |      0|     55|   212|
|Birth     |MAL-ED         |PERU         |WealthQ2       |      1|      1|   212|
|Birth     |MAL-ED         |PERU         |WealthQ3       |      0|     64|   212|
|Birth     |MAL-ED         |PERU         |WealthQ3       |      1|      2|   212|
|Birth     |MAL-ED         |NEPAL        |WealthQ4       |      0|      9|    26|
|Birth     |MAL-ED         |NEPAL        |WealthQ4       |      1|      0|    26|
|Birth     |MAL-ED         |NEPAL        |WealthQ1       |      0|      4|    26|
|Birth     |MAL-ED         |NEPAL        |WealthQ1       |      1|      1|    26|
|Birth     |MAL-ED         |NEPAL        |WealthQ2       |      0|      8|    26|
|Birth     |MAL-ED         |NEPAL        |WealthQ2       |      1|      1|    26|
|Birth     |MAL-ED         |NEPAL        |WealthQ3       |      0|      3|    26|
|Birth     |MAL-ED         |NEPAL        |WealthQ3       |      1|      0|    26|
|Birth     |MAL-ED         |BRAZIL       |WealthQ4       |      0|      9|    52|
|Birth     |MAL-ED         |BRAZIL       |WealthQ4       |      1|      1|    52|
|Birth     |MAL-ED         |BRAZIL       |WealthQ1       |      0|     23|    52|
|Birth     |MAL-ED         |BRAZIL       |WealthQ1       |      1|      0|    52|
|Birth     |MAL-ED         |BRAZIL       |WealthQ2       |      0|     10|    52|
|Birth     |MAL-ED         |BRAZIL       |WealthQ2       |      1|      1|    52|
|Birth     |MAL-ED         |BRAZIL       |WealthQ3       |      0|      8|    52|
|Birth     |MAL-ED         |BRAZIL       |WealthQ3       |      1|      0|    52|
|Birth     |MAL-ED         |TANZANIA     |WealthQ4       |      0|     28|   109|
|Birth     |MAL-ED         |TANZANIA     |WealthQ4       |      1|      1|   109|
|Birth     |MAL-ED         |TANZANIA     |WealthQ1       |      0|     32|   109|
|Birth     |MAL-ED         |TANZANIA     |WealthQ1       |      1|      0|   109|
|Birth     |MAL-ED         |TANZANIA     |WealthQ2       |      0|     21|   109|
|Birth     |MAL-ED         |TANZANIA     |WealthQ2       |      1|      0|   109|
|Birth     |MAL-ED         |TANZANIA     |WealthQ3       |      0|     27|   109|
|Birth     |MAL-ED         |TANZANIA     |WealthQ3       |      1|      0|   109|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ4       |      0|     19|   104|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ4       |      1|      3|   104|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ1       |      0|     29|   104|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ1       |      1|      2|   104|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ2       |      0|     20|   104|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ2       |      1|      3|   104|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ3       |      0|     27|   104|
|Birth     |MAL-ED         |SOUTH AFRICA |WealthQ3       |      1|      1|   104|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ4       |      0|     98|   532|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ4       |      1|     28|   532|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ1       |      0|    106|   532|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ1       |      1|     28|   532|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ2       |      0|    102|   532|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ2       |      1|     28|   532|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ3       |      0|    109|   532|
|Birth     |PROVIDE        |BANGLADESH   |WealthQ3       |      1|     33|   532|
|Birth     |Vellore Crypto |INDIA        |WealthQ4       |      0|     58|   343|
|Birth     |Vellore Crypto |INDIA        |WealthQ4       |      1|     20|   343|
|Birth     |Vellore Crypto |INDIA        |WealthQ1       |      0|     76|   343|
|Birth     |Vellore Crypto |INDIA        |WealthQ1       |      1|     31|   343|
|Birth     |Vellore Crypto |INDIA        |WealthQ2       |      0|     72|   343|
|Birth     |Vellore Crypto |INDIA        |WealthQ2       |      1|     25|   343|
|Birth     |Vellore Crypto |INDIA        |WealthQ3       |      0|     45|   343|
|Birth     |Vellore Crypto |INDIA        |WealthQ3       |      1|     16|   343|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ4       |      0|     87|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ4       |      1|     24|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ1       |      0|     80|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ1       |      1|      8|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ2       |      0|     75|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ2       |      1|      5|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ3       |      0|     80|   368|
|6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ3       |      1|      9|   368|
|6 months  |COHORTS        |GUATEMALA    |WealthQ4       |      0|    336|   927|
|6 months  |COHORTS        |GUATEMALA    |WealthQ4       |      1|      6|   927|
|6 months  |COHORTS        |GUATEMALA    |WealthQ1       |      0|    191|   927|
|6 months  |COHORTS        |GUATEMALA    |WealthQ1       |      1|      6|   927|
|6 months  |COHORTS        |GUATEMALA    |WealthQ2       |      0|    172|   927|
|6 months  |COHORTS        |GUATEMALA    |WealthQ2       |      1|      5|   927|
|6 months  |COHORTS        |GUATEMALA    |WealthQ3       |      0|    199|   927|
|6 months  |COHORTS        |GUATEMALA    |WealthQ3       |      1|     12|   927|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ4       |      0|    742|  2704|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ4       |      1|     29|  2704|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ1       |      0|    513|  2704|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ1       |      1|     52|  2704|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ2       |      0|    455|  2704|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ2       |      1|     31|  2704|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ3       |      0|    833|  2704|
|6 months  |COHORTS        |PHILIPPINES  |WealthQ3       |      1|     49|  2704|
|6 months  |CONTENT        |PERU         |WealthQ4       |      0|     47|   215|
|6 months  |CONTENT        |PERU         |WealthQ4       |      1|      0|   215|
|6 months  |CONTENT        |PERU         |WealthQ1       |      0|     66|   215|
|6 months  |CONTENT        |PERU         |WealthQ1       |      1|      0|   215|
|6 months  |CONTENT        |PERU         |WealthQ2       |      0|     50|   215|
|6 months  |CONTENT        |PERU         |WealthQ2       |      1|      0|   215|
|6 months  |CONTENT        |PERU         |WealthQ3       |      0|     52|   215|
|6 months  |CONTENT        |PERU         |WealthQ3       |      1|      0|   215|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ4       |      0|    126|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ4       |      1|     14|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ1       |      0|    125|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ1       |      1|     12|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ2       |      0|    134|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ2       |      1|     14|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ3       |      0|    128|   564|
|6 months  |GMS-Nepal      |NEPAL        |WealthQ3       |      1|     11|   564|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ4       |      0|   4409| 16775|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ4       |      1|    371| 16775|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ1       |      0|   3383| 16775|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ1       |      1|    336| 16775|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ2       |      0|   3679| 16775|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ2       |      1|    358| 16775|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ3       |      0|   3883| 16775|
|6 months  |JiVitA-3       |BANGLADESH   |WealthQ3       |      1|    356| 16775|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ4       |      0|   1166|  4829|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ4       |      1|     50|  4829|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ1       |      0|   1124|  4829|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ1       |      1|     76|  4829|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ2       |      0|   1080|  4829|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ2       |      1|     83|  4829|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ3       |      0|   1185|  4829|
|6 months  |JiVitA-4       |BANGLADESH   |WealthQ3       |      1|     65|  4829|
|6 months  |LCNI-5         |MALAWI       |WealthQ4       |      0|    198|   827|
|6 months  |LCNI-5         |MALAWI       |WealthQ4       |      1|      4|   827|
|6 months  |LCNI-5         |MALAWI       |WealthQ1       |      0|    216|   827|
|6 months  |LCNI-5         |MALAWI       |WealthQ1       |      1|      2|   827|
|6 months  |LCNI-5         |MALAWI       |WealthQ2       |      0|    197|   827|
|6 months  |LCNI-5         |MALAWI       |WealthQ2       |      1|      3|   827|
|6 months  |LCNI-5         |MALAWI       |WealthQ3       |      0|    202|   827|
|6 months  |LCNI-5         |MALAWI       |WealthQ3       |      1|      5|   827|
|6 months  |MAL-ED         |INDIA        |WealthQ4       |      0|     44|   227|
|6 months  |MAL-ED         |INDIA        |WealthQ4       |      1|      1|   227|
|6 months  |MAL-ED         |INDIA        |WealthQ1       |      0|     63|   227|
|6 months  |MAL-ED         |INDIA        |WealthQ1       |      1|      3|   227|
|6 months  |MAL-ED         |INDIA        |WealthQ2       |      0|     58|   227|
|6 months  |MAL-ED         |INDIA        |WealthQ2       |      1|      7|   227|
|6 months  |MAL-ED         |INDIA        |WealthQ3       |      0|     45|   227|
|6 months  |MAL-ED         |INDIA        |WealthQ3       |      1|      6|   227|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ4       |      0|     50|   224|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ4       |      1|      1|   224|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ1       |      0|     69|   224|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ1       |      1|      2|   224|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ2       |      0|     42|   224|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ2       |      1|      4|   224|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ3       |      0|     56|   224|
|6 months  |MAL-ED         |BANGLADESH   |WealthQ3       |      1|      0|   224|
|6 months  |MAL-ED         |PERU         |WealthQ4       |      0|     65|   255|
|6 months  |MAL-ED         |PERU         |WealthQ4       |      1|      0|   255|
|6 months  |MAL-ED         |PERU         |WealthQ1       |      0|     51|   255|
|6 months  |MAL-ED         |PERU         |WealthQ1       |      1|      0|   255|
|6 months  |MAL-ED         |PERU         |WealthQ2       |      0|     65|   255|
|6 months  |MAL-ED         |PERU         |WealthQ2       |      1|      0|   255|
|6 months  |MAL-ED         |PERU         |WealthQ3       |      0|     74|   255|
|6 months  |MAL-ED         |PERU         |WealthQ3       |      1|      0|   255|
|6 months  |MAL-ED         |NEPAL        |WealthQ4       |      0|     71|   231|
|6 months  |MAL-ED         |NEPAL        |WealthQ4       |      1|      1|   231|
|6 months  |MAL-ED         |NEPAL        |WealthQ1       |      0|     56|   231|
|6 months  |MAL-ED         |NEPAL        |WealthQ1       |      1|      2|   231|
|6 months  |MAL-ED         |NEPAL        |WealthQ2       |      0|     59|   231|
|6 months  |MAL-ED         |NEPAL        |WealthQ2       |      1|      1|   231|
|6 months  |MAL-ED         |NEPAL        |WealthQ3       |      0|     41|   231|
|6 months  |MAL-ED         |NEPAL        |WealthQ3       |      1|      0|   231|
|6 months  |MAL-ED         |BRAZIL       |WealthQ4       |      0|     40|   187|
|6 months  |MAL-ED         |BRAZIL       |WealthQ4       |      1|      1|   187|
|6 months  |MAL-ED         |BRAZIL       |WealthQ1       |      0|     57|   187|
|6 months  |MAL-ED         |BRAZIL       |WealthQ1       |      1|      0|   187|
|6 months  |MAL-ED         |BRAZIL       |WealthQ2       |      0|     46|   187|
|6 months  |MAL-ED         |BRAZIL       |WealthQ2       |      1|      0|   187|
|6 months  |MAL-ED         |BRAZIL       |WealthQ3       |      0|     43|   187|
|6 months  |MAL-ED         |BRAZIL       |WealthQ3       |      1|      0|   187|
|6 months  |MAL-ED         |TANZANIA     |WealthQ4       |      0|     56|   241|
|6 months  |MAL-ED         |TANZANIA     |WealthQ4       |      1|      0|   241|
|6 months  |MAL-ED         |TANZANIA     |WealthQ1       |      0|     68|   241|
|6 months  |MAL-ED         |TANZANIA     |WealthQ1       |      1|      0|   241|
|6 months  |MAL-ED         |TANZANIA     |WealthQ2       |      0|     58|   241|
|6 months  |MAL-ED         |TANZANIA     |WealthQ2       |      1|      0|   241|
|6 months  |MAL-ED         |TANZANIA     |WealthQ3       |      0|     58|   241|
|6 months  |MAL-ED         |TANZANIA     |WealthQ3       |      1|      1|   241|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ4       |      0|     56|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ4       |      1|      1|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ1       |      0|     62|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ1       |      1|      4|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ2       |      0|     42|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ2       |      1|      2|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ3       |      0|     63|   230|
|6 months  |MAL-ED         |SOUTH AFRICA |WealthQ3       |      1|      0|   230|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ4       |      0|    129|   603|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ4       |      1|      7|   603|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ1       |      0|    138|   603|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ1       |      1|      8|   603|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ2       |      0|    157|   603|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ2       |      1|      3|   603|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ3       |      0|    154|   603|
|6 months  |PROVIDE        |BANGLADESH   |WealthQ3       |      1|      7|   603|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ4       |      0|    496|  2026|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ4       |      1|     31|  2026|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ1       |      0|    557|  2026|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ1       |      1|     17|  2026|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ2       |      0|    389|  2026|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ2       |      1|     13|  2026|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ3       |      0|    497|  2026|
|6 months  |TanzaniaChild2 |TANZANIA     |WealthQ3       |      1|     26|  2026|
|6 months  |Vellore Crypto |INDIA        |WealthQ4       |      0|     81|   408|
|6 months  |Vellore Crypto |INDIA        |WealthQ4       |      1|     13|   408|
|6 months  |Vellore Crypto |INDIA        |WealthQ1       |      0|    112|   408|
|6 months  |Vellore Crypto |INDIA        |WealthQ1       |      1|     18|   408|
|6 months  |Vellore Crypto |INDIA        |WealthQ2       |      0|     99|   408|
|6 months  |Vellore Crypto |INDIA        |WealthQ2       |      1|     14|   408|
|6 months  |Vellore Crypto |INDIA        |WealthQ3       |      0|     62|   408|
|6 months  |Vellore Crypto |INDIA        |WealthQ3       |      1|      9|   408|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |      0|    106|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |      1|      7|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |      0|     83|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |      1|      6|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |      0|     78|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |      1|      2|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |      0|     82|   372|
|24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |      1|      8|   372|
|24 months |COHORTS        |GUATEMALA    |WealthQ4       |      0|    389|  1049|
|24 months |COHORTS        |GUATEMALA    |WealthQ4       |      1|     13|  1049|
|24 months |COHORTS        |GUATEMALA    |WealthQ1       |      0|    217|  1049|
|24 months |COHORTS        |GUATEMALA    |WealthQ1       |      1|     11|  1049|
|24 months |COHORTS        |GUATEMALA    |WealthQ2       |      0|    188|  1049|
|24 months |COHORTS        |GUATEMALA    |WealthQ2       |      1|      9|  1049|
|24 months |COHORTS        |GUATEMALA    |WealthQ3       |      0|    208|  1049|
|24 months |COHORTS        |GUATEMALA    |WealthQ3       |      1|     14|  1049|
|24 months |COHORTS        |PHILIPPINES  |WealthQ4       |      0|    673|  2447|
|24 months |COHORTS        |PHILIPPINES  |WealthQ4       |      1|     33|  2447|
|24 months |COHORTS        |PHILIPPINES  |WealthQ1       |      0|    446|  2447|
|24 months |COHORTS        |PHILIPPINES  |WealthQ1       |      1|     45|  2447|
|24 months |COHORTS        |PHILIPPINES  |WealthQ2       |      0|    400|  2447|
|24 months |COHORTS        |PHILIPPINES  |WealthQ2       |      1|     25|  2447|
|24 months |COHORTS        |PHILIPPINES  |WealthQ3       |      0|    761|  2447|
|24 months |COHORTS        |PHILIPPINES  |WealthQ3       |      1|     64|  2447|
|24 months |CONTENT        |PERU         |WealthQ4       |      0|     40|   164|
|24 months |CONTENT        |PERU         |WealthQ4       |      1|      0|   164|
|24 months |CONTENT        |PERU         |WealthQ1       |      0|     49|   164|
|24 months |CONTENT        |PERU         |WealthQ1       |      1|      0|   164|
|24 months |CONTENT        |PERU         |WealthQ2       |      0|     34|   164|
|24 months |CONTENT        |PERU         |WealthQ2       |      1|      1|   164|
|24 months |CONTENT        |PERU         |WealthQ3       |      0|     40|   164|
|24 months |CONTENT        |PERU         |WealthQ3       |      1|      0|   164|
|24 months |GMS-Nepal      |NEPAL        |WealthQ4       |      0|     99|   487|
|24 months |GMS-Nepal      |NEPAL        |WealthQ4       |      1|     28|   487|
|24 months |GMS-Nepal      |NEPAL        |WealthQ1       |      0|     91|   487|
|24 months |GMS-Nepal      |NEPAL        |WealthQ1       |      1|     25|   487|
|24 months |GMS-Nepal      |NEPAL        |WealthQ2       |      0|    104|   487|
|24 months |GMS-Nepal      |NEPAL        |WealthQ2       |      1|     24|   487|
|24 months |GMS-Nepal      |NEPAL        |WealthQ3       |      0|    102|   487|
|24 months |GMS-Nepal      |NEPAL        |WealthQ3       |      1|     14|   487|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |      0|   1808|  8598|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |      1|    475|  8598|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |      0|   1569|  8598|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |      1|    472|  8598|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |      0|   1683|  8598|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |      1|    486|  8598|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |      0|   1660|  8598|
|24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |      1|    445|  8598|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |      0|   1013|  4731|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |      1|    212|  4731|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |      0|    925|  4731|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |      1|    225|  4731|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |      0|    890|  4731|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |      1|    240|  4731|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |      0|    983|  4731|
|24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |      1|    243|  4731|
|24 months |LCNI-5         |MALAWI       |WealthQ4       |      0|    133|   558|
|24 months |LCNI-5         |MALAWI       |WealthQ4       |      1|      3|   558|
|24 months |LCNI-5         |MALAWI       |WealthQ1       |      0|    142|   558|
|24 months |LCNI-5         |MALAWI       |WealthQ1       |      1|      1|   558|
|24 months |LCNI-5         |MALAWI       |WealthQ2       |      0|    131|   558|
|24 months |LCNI-5         |MALAWI       |WealthQ2       |      1|      3|   558|
|24 months |LCNI-5         |MALAWI       |WealthQ3       |      0|    142|   558|
|24 months |LCNI-5         |MALAWI       |WealthQ3       |      1|      3|   558|
|24 months |MAL-ED         |INDIA        |WealthQ4       |      0|     40|   218|
|24 months |MAL-ED         |INDIA        |WealthQ4       |      1|      3|   218|
|24 months |MAL-ED         |INDIA        |WealthQ1       |      0|     51|   218|
|24 months |MAL-ED         |INDIA        |WealthQ1       |      1|     10|   218|
|24 months |MAL-ED         |INDIA        |WealthQ2       |      0|     57|   218|
|24 months |MAL-ED         |INDIA        |WealthQ2       |      1|      7|   218|
|24 months |MAL-ED         |INDIA        |WealthQ3       |      0|     44|   218|
|24 months |MAL-ED         |INDIA        |WealthQ3       |      1|      6|   218|
|24 months |MAL-ED         |BANGLADESH   |WealthQ4       |      0|     41|   195|
|24 months |MAL-ED         |BANGLADESH   |WealthQ4       |      1|      2|   195|
|24 months |MAL-ED         |BANGLADESH   |WealthQ1       |      0|     57|   195|
|24 months |MAL-ED         |BANGLADESH   |WealthQ1       |      1|      7|   195|
|24 months |MAL-ED         |BANGLADESH   |WealthQ2       |      0|     32|   195|
|24 months |MAL-ED         |BANGLADESH   |WealthQ2       |      1|      8|   195|
|24 months |MAL-ED         |BANGLADESH   |WealthQ3       |      0|     45|   195|
|24 months |MAL-ED         |BANGLADESH   |WealthQ3       |      1|      3|   195|
|24 months |MAL-ED         |PERU         |WealthQ4       |      0|     45|   185|
|24 months |MAL-ED         |PERU         |WealthQ4       |      1|      0|   185|
|24 months |MAL-ED         |PERU         |WealthQ1       |      0|     36|   185|
|24 months |MAL-ED         |PERU         |WealthQ1       |      1|      0|   185|
|24 months |MAL-ED         |PERU         |WealthQ2       |      0|     50|   185|
|24 months |MAL-ED         |PERU         |WealthQ2       |      1|      2|   185|
|24 months |MAL-ED         |PERU         |WealthQ3       |      0|     51|   185|
|24 months |MAL-ED         |PERU         |WealthQ3       |      1|      1|   185|
|24 months |MAL-ED         |NEPAL        |WealthQ4       |      0|     71|   224|
|24 months |MAL-ED         |NEPAL        |WealthQ4       |      1|      1|   224|
|24 months |MAL-ED         |NEPAL        |WealthQ1       |      0|     55|   224|
|24 months |MAL-ED         |NEPAL        |WealthQ1       |      1|      2|   224|
|24 months |MAL-ED         |NEPAL        |WealthQ2       |      0|     56|   224|
|24 months |MAL-ED         |NEPAL        |WealthQ2       |      1|      2|   224|
|24 months |MAL-ED         |NEPAL        |WealthQ3       |      0|     37|   224|
|24 months |MAL-ED         |NEPAL        |WealthQ3       |      1|      0|   224|
|24 months |MAL-ED         |BRAZIL       |WealthQ4       |      0|     31|   148|
|24 months |MAL-ED         |BRAZIL       |WealthQ4       |      1|      2|   148|
|24 months |MAL-ED         |BRAZIL       |WealthQ1       |      0|     43|   148|
|24 months |MAL-ED         |BRAZIL       |WealthQ1       |      1|      0|   148|
|24 months |MAL-ED         |BRAZIL       |WealthQ2       |      0|     37|   148|
|24 months |MAL-ED         |BRAZIL       |WealthQ2       |      1|      0|   148|
|24 months |MAL-ED         |BRAZIL       |WealthQ3       |      0|     35|   148|
|24 months |MAL-ED         |BRAZIL       |WealthQ3       |      1|      0|   148|
|24 months |MAL-ED         |TANZANIA     |WealthQ4       |      0|     52|   209|
|24 months |MAL-ED         |TANZANIA     |WealthQ4       |      1|      1|   209|
|24 months |MAL-ED         |TANZANIA     |WealthQ1       |      0|     55|   209|
|24 months |MAL-ED         |TANZANIA     |WealthQ1       |      1|      0|   209|
|24 months |MAL-ED         |TANZANIA     |WealthQ2       |      0|     49|   209|
|24 months |MAL-ED         |TANZANIA     |WealthQ2       |      1|      2|   209|
|24 months |MAL-ED         |TANZANIA     |WealthQ3       |      0|     49|   209|
|24 months |MAL-ED         |TANZANIA     |WealthQ3       |      1|      1|   209|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |      0|     54|   215|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |      1|      0|   215|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |      0|     61|   215|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |      1|      0|   215|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |      0|     42|   215|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |      1|      1|   215|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |      0|     57|   215|
|24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |      1|      0|   215|
|24 months |PROVIDE        |BANGLADESH   |WealthQ4       |      0|    112|   579|
|24 months |PROVIDE        |BANGLADESH   |WealthQ4       |      1|     12|   579|
|24 months |PROVIDE        |BANGLADESH   |WealthQ1       |      0|    120|   579|
|24 months |PROVIDE        |BANGLADESH   |WealthQ1       |      1|     21|   579|
|24 months |PROVIDE        |BANGLADESH   |WealthQ2       |      0|    146|   579|
|24 months |PROVIDE        |BANGLADESH   |WealthQ2       |      1|     10|   579|
|24 months |PROVIDE        |BANGLADESH   |WealthQ3       |      0|    139|   579|
|24 months |PROVIDE        |BANGLADESH   |WealthQ3       |      1|     19|   579|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |      0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |      0|      3|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |      0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |      1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |      0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |      1|      0|     6|
|24 months |Vellore Crypto |INDIA        |WealthQ4       |      0|     87|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ4       |      1|      7|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ1       |      0|    120|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ1       |      1|     12|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ2       |      0|    102|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ2       |      1|     10|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ3       |      0|     69|   409|
|24 months |Vellore Crypto |INDIA        |WealthQ3       |      1|      2|   409|


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

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


