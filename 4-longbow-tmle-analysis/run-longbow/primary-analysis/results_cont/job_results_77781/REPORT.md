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

* syntype
* agecat
* studyid
* country

## Data Summary

|syntype |agecat    |studyid        |country      |hhwealth_quart | n_cell|     n|
|:-------|:---------|:--------------|:------------|:--------------|------:|-----:|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ4       |     29|    92|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ1       |     26|    92|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ2       |     15|    92|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ3       |     22|    92|
|BC      |Birth     |COHORTS        |GUATEMALA    |WealthQ4       |    296|   820|
|BC      |Birth     |COHORTS        |GUATEMALA    |WealthQ1       |    176|   820|
|BC      |Birth     |COHORTS        |GUATEMALA    |WealthQ2       |    142|   820|
|BC      |Birth     |COHORTS        |GUATEMALA    |WealthQ3       |    206|   820|
|BC      |Birth     |COHORTS        |PHILIPPINES  |WealthQ4       |    873|  3047|
|BC      |Birth     |COHORTS        |PHILIPPINES  |WealthQ1       |    680|  3047|
|BC      |Birth     |COHORTS        |PHILIPPINES  |WealthQ2       |    539|  3047|
|BC      |Birth     |COHORTS        |PHILIPPINES  |WealthQ3       |    955|  3047|
|BC      |Birth     |CONTENT        |PERU         |WealthQ4       |      1|     2|
|BC      |Birth     |CONTENT        |PERU         |WealthQ1       |      1|     2|
|BC      |Birth     |CONTENT        |PERU         |WealthQ2       |      0|     2|
|BC      |Birth     |CONTENT        |PERU         |WealthQ3       |      0|     2|
|BC      |Birth     |GMS-Nepal      |NEPAL        |WealthQ4       |    170|   696|
|BC      |Birth     |GMS-Nepal      |NEPAL        |WealthQ1       |    169|   696|
|BC      |Birth     |GMS-Nepal      |NEPAL        |WealthQ2       |    175|   696|
|BC      |Birth     |GMS-Nepal      |NEPAL        |WealthQ3       |    182|   696|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |WealthQ4       |   5774| 22436|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |WealthQ1       |   5491| 22436|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |WealthQ2       |   5537| 22436|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |WealthQ3       |   5634| 22436|
|BC      |Birth     |JiVitA-4       |BANGLADESH   |WealthQ4       |    681|  2821|
|BC      |Birth     |JiVitA-4       |BANGLADESH   |WealthQ1       |    716|  2821|
|BC      |Birth     |JiVitA-4       |BANGLADESH   |WealthQ2       |    682|  2821|
|BC      |Birth     |JiVitA-4       |BANGLADESH   |WealthQ3       |    742|  2821|
|BC      |Birth     |MAL-ED         |INDIA        |WealthQ4       |      6|    46|
|BC      |Birth     |MAL-ED         |INDIA        |WealthQ1       |     12|    46|
|BC      |Birth     |MAL-ED         |INDIA        |WealthQ2       |     17|    46|
|BC      |Birth     |MAL-ED         |INDIA        |WealthQ3       |     11|    46|
|BC      |Birth     |MAL-ED         |BANGLADESH   |WealthQ4       |     48|   212|
|BC      |Birth     |MAL-ED         |BANGLADESH   |WealthQ1       |     67|   212|
|BC      |Birth     |MAL-ED         |BANGLADESH   |WealthQ2       |     44|   212|
|BC      |Birth     |MAL-ED         |BANGLADESH   |WealthQ3       |     53|   212|
|BC      |Birth     |MAL-ED         |PERU         |WealthQ4       |     55|   217|
|BC      |Birth     |MAL-ED         |PERU         |WealthQ1       |     37|   217|
|BC      |Birth     |MAL-ED         |PERU         |WealthQ2       |     58|   217|
|BC      |Birth     |MAL-ED         |PERU         |WealthQ3       |     67|   217|
|BC      |Birth     |MAL-ED         |NEPAL        |WealthQ4       |      9|    27|
|BC      |Birth     |MAL-ED         |NEPAL        |WealthQ1       |      5|    27|
|BC      |Birth     |MAL-ED         |NEPAL        |WealthQ2       |     10|    27|
|BC      |Birth     |MAL-ED         |NEPAL        |WealthQ3       |      3|    27|
|BC      |Birth     |MAL-ED         |BRAZIL       |WealthQ4       |     11|    55|
|BC      |Birth     |MAL-ED         |BRAZIL       |WealthQ1       |     23|    55|
|BC      |Birth     |MAL-ED         |BRAZIL       |WealthQ2       |     12|    55|
|BC      |Birth     |MAL-ED         |BRAZIL       |WealthQ3       |      9|    55|
|BC      |Birth     |MAL-ED         |TANZANIA     |WealthQ4       |     32|   117|
|BC      |Birth     |MAL-ED         |TANZANIA     |WealthQ1       |     33|   117|
|BC      |Birth     |MAL-ED         |TANZANIA     |WealthQ2       |     23|   117|
|BC      |Birth     |MAL-ED         |TANZANIA     |WealthQ3       |     29|   117|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |WealthQ4       |     22|   107|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |WealthQ1       |     32|   107|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |WealthQ2       |     24|   107|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |WealthQ3       |     29|   107|
|BC      |Birth     |PROVIDE        |BANGLADESH   |WealthQ4       |    128|   539|
|BC      |Birth     |PROVIDE        |BANGLADESH   |WealthQ1       |    138|   539|
|BC      |Birth     |PROVIDE        |BANGLADESH   |WealthQ2       |    131|   539|
|BC      |Birth     |PROVIDE        |BANGLADESH   |WealthQ3       |    142|   539|
|BC      |Birth     |Vellore Crypto |INDIA        |WealthQ4       |     88|   388|
|BC      |Birth     |Vellore Crypto |INDIA        |WealthQ1       |    122|   388|
|BC      |Birth     |Vellore Crypto |INDIA        |WealthQ2       |    110|   388|
|BC      |Birth     |Vellore Crypto |INDIA        |WealthQ3       |     68|   388|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ4       |    112|   369|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ1       |     88|   369|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ2       |     80|   369|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ3       |     89|   369|
|BC      |6 months  |COHORTS        |GUATEMALA    |WealthQ4       |    342|   926|
|BC      |6 months  |COHORTS        |GUATEMALA    |WealthQ1       |    196|   926|
|BC      |6 months  |COHORTS        |GUATEMALA    |WealthQ2       |    178|   926|
|BC      |6 months  |COHORTS        |GUATEMALA    |WealthQ3       |    210|   926|
|BC      |6 months  |COHORTS        |PHILIPPINES  |WealthQ4       |    770|  2706|
|BC      |6 months  |COHORTS        |PHILIPPINES  |WealthQ1       |    566|  2706|
|BC      |6 months  |COHORTS        |PHILIPPINES  |WealthQ2       |    486|  2706|
|BC      |6 months  |COHORTS        |PHILIPPINES  |WealthQ3       |    884|  2706|
|BC      |6 months  |CONTENT        |PERU         |WealthQ4       |     47|   215|
|BC      |6 months  |CONTENT        |PERU         |WealthQ1       |     66|   215|
|BC      |6 months  |CONTENT        |PERU         |WealthQ2       |     50|   215|
|BC      |6 months  |CONTENT        |PERU         |WealthQ3       |     52|   215|
|BC      |6 months  |GMS-Nepal      |NEPAL        |WealthQ4       |    140|   564|
|BC      |6 months  |GMS-Nepal      |NEPAL        |WealthQ1       |    137|   564|
|BC      |6 months  |GMS-Nepal      |NEPAL        |WealthQ2       |    148|   564|
|BC      |6 months  |GMS-Nepal      |NEPAL        |WealthQ3       |    139|   564|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |WealthQ4       |   4791| 16802|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |WealthQ1       |   3716| 16802|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |WealthQ2       |   4040| 16802|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |WealthQ3       |   4255| 16802|
|BC      |6 months  |JiVitA-4       |BANGLADESH   |WealthQ4       |   1216|  4827|
|BC      |6 months  |JiVitA-4       |BANGLADESH   |WealthQ1       |   1198|  4827|
|BC      |6 months  |JiVitA-4       |BANGLADESH   |WealthQ2       |   1163|  4827|
|BC      |6 months  |JiVitA-4       |BANGLADESH   |WealthQ3       |   1250|  4827|
|BC      |6 months  |LCNI-5         |MALAWI       |WealthQ4       |    202|   827|
|BC      |6 months  |LCNI-5         |MALAWI       |WealthQ1       |    218|   827|
|BC      |6 months  |LCNI-5         |MALAWI       |WealthQ2       |    200|   827|
|BC      |6 months  |LCNI-5         |MALAWI       |WealthQ3       |    207|   827|
|BC      |6 months  |MAL-ED         |INDIA        |WealthQ4       |     45|   227|
|BC      |6 months  |MAL-ED         |INDIA        |WealthQ1       |     66|   227|
|BC      |6 months  |MAL-ED         |INDIA        |WealthQ2       |     65|   227|
|BC      |6 months  |MAL-ED         |INDIA        |WealthQ3       |     51|   227|
|BC      |6 months  |MAL-ED         |BANGLADESH   |WealthQ4       |     51|   224|
|BC      |6 months  |MAL-ED         |BANGLADESH   |WealthQ1       |     71|   224|
|BC      |6 months  |MAL-ED         |BANGLADESH   |WealthQ2       |     46|   224|
|BC      |6 months  |MAL-ED         |BANGLADESH   |WealthQ3       |     56|   224|
|BC      |6 months  |MAL-ED         |PERU         |WealthQ4       |     65|   255|
|BC      |6 months  |MAL-ED         |PERU         |WealthQ1       |     51|   255|
|BC      |6 months  |MAL-ED         |PERU         |WealthQ2       |     65|   255|
|BC      |6 months  |MAL-ED         |PERU         |WealthQ3       |     74|   255|
|BC      |6 months  |MAL-ED         |NEPAL        |WealthQ4       |     72|   231|
|BC      |6 months  |MAL-ED         |NEPAL        |WealthQ1       |     58|   231|
|BC      |6 months  |MAL-ED         |NEPAL        |WealthQ2       |     60|   231|
|BC      |6 months  |MAL-ED         |NEPAL        |WealthQ3       |     41|   231|
|BC      |6 months  |MAL-ED         |BRAZIL       |WealthQ4       |     41|   187|
|BC      |6 months  |MAL-ED         |BRAZIL       |WealthQ1       |     57|   187|
|BC      |6 months  |MAL-ED         |BRAZIL       |WealthQ2       |     46|   187|
|BC      |6 months  |MAL-ED         |BRAZIL       |WealthQ3       |     43|   187|
|BC      |6 months  |MAL-ED         |TANZANIA     |WealthQ4       |     56|   241|
|BC      |6 months  |MAL-ED         |TANZANIA     |WealthQ1       |     68|   241|
|BC      |6 months  |MAL-ED         |TANZANIA     |WealthQ2       |     58|   241|
|BC      |6 months  |MAL-ED         |TANZANIA     |WealthQ3       |     59|   241|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |WealthQ4       |     57|   230|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |WealthQ1       |     66|   230|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |WealthQ2       |     44|   230|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |WealthQ3       |     63|   230|
|BC      |6 months  |PROVIDE        |BANGLADESH   |WealthQ4       |    136|   604|
|BC      |6 months  |PROVIDE        |BANGLADESH   |WealthQ1       |    146|   604|
|BC      |6 months  |PROVIDE        |BANGLADESH   |WealthQ2       |    161|   604|
|BC      |6 months  |PROVIDE        |BANGLADESH   |WealthQ3       |    161|   604|
|BC      |6 months  |TanzaniaChild2 |TANZANIA     |WealthQ4       |    527|  2027|
|BC      |6 months  |TanzaniaChild2 |TANZANIA     |WealthQ1       |    574|  2027|
|BC      |6 months  |TanzaniaChild2 |TANZANIA     |WealthQ2       |    402|  2027|
|BC      |6 months  |TanzaniaChild2 |TANZANIA     |WealthQ3       |    524|  2027|
|BC      |6 months  |Vellore Crypto |INDIA        |WealthQ4       |     94|   407|
|BC      |6 months  |Vellore Crypto |INDIA        |WealthQ1       |    132|   407|
|BC      |6 months  |Vellore Crypto |INDIA        |WealthQ2       |    111|   407|
|BC      |6 months  |Vellore Crypto |INDIA        |WealthQ3       |     70|   407|
|BC      |24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |    113|   371|
|BC      |24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |     89|   371|
|BC      |24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |     80|   371|
|BC      |24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |     89|   371|
|BC      |24 months |COHORTS        |GUATEMALA    |WealthQ4       |    400|  1038|
|BC      |24 months |COHORTS        |GUATEMALA    |WealthQ1       |    225|  1038|
|BC      |24 months |COHORTS        |GUATEMALA    |WealthQ2       |    194|  1038|
|BC      |24 months |COHORTS        |GUATEMALA    |WealthQ3       |    219|  1038|
|BC      |24 months |COHORTS        |PHILIPPINES  |WealthQ4       |    709|  2443|
|BC      |24 months |COHORTS        |PHILIPPINES  |WealthQ1       |    488|  2443|
|BC      |24 months |COHORTS        |PHILIPPINES  |WealthQ2       |    424|  2443|
|BC      |24 months |COHORTS        |PHILIPPINES  |WealthQ3       |    822|  2443|
|BC      |24 months |CONTENT        |PERU         |WealthQ4       |     40|   164|
|BC      |24 months |CONTENT        |PERU         |WealthQ1       |     49|   164|
|BC      |24 months |CONTENT        |PERU         |WealthQ2       |     35|   164|
|BC      |24 months |CONTENT        |PERU         |WealthQ3       |     40|   164|
|BC      |24 months |GMS-Nepal      |NEPAL        |WealthQ4       |    128|   488|
|BC      |24 months |GMS-Nepal      |NEPAL        |WealthQ1       |    116|   488|
|BC      |24 months |GMS-Nepal      |NEPAL        |WealthQ2       |    128|   488|
|BC      |24 months |GMS-Nepal      |NEPAL        |WealthQ3       |    116|   488|
|BC      |24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |   2290|  8627|
|BC      |24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |   2048|  8627|
|BC      |24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |   2175|  8627|
|BC      |24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |   2114|  8627|
|BC      |24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |   1229|  4748|
|BC      |24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |   1152|  4748|
|BC      |24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |   1134|  4748|
|BC      |24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |   1233|  4748|
|BC      |24 months |LCNI-5         |MALAWI       |WealthQ4       |    141|   574|
|BC      |24 months |LCNI-5         |MALAWI       |WealthQ1       |    145|   574|
|BC      |24 months |LCNI-5         |MALAWI       |WealthQ2       |    138|   574|
|BC      |24 months |LCNI-5         |MALAWI       |WealthQ3       |    150|   574|
|BC      |24 months |MAL-ED         |INDIA        |WealthQ4       |     43|   218|
|BC      |24 months |MAL-ED         |INDIA        |WealthQ1       |     61|   218|
|BC      |24 months |MAL-ED         |INDIA        |WealthQ2       |     64|   218|
|BC      |24 months |MAL-ED         |INDIA        |WealthQ3       |     50|   218|
|BC      |24 months |MAL-ED         |BANGLADESH   |WealthQ4       |     43|   195|
|BC      |24 months |MAL-ED         |BANGLADESH   |WealthQ1       |     64|   195|
|BC      |24 months |MAL-ED         |BANGLADESH   |WealthQ2       |     40|   195|
|BC      |24 months |MAL-ED         |BANGLADESH   |WealthQ3       |     48|   195|
|BC      |24 months |MAL-ED         |PERU         |WealthQ4       |     45|   185|
|BC      |24 months |MAL-ED         |PERU         |WealthQ1       |     36|   185|
|BC      |24 months |MAL-ED         |PERU         |WealthQ2       |     52|   185|
|BC      |24 months |MAL-ED         |PERU         |WealthQ3       |     52|   185|
|BC      |24 months |MAL-ED         |NEPAL        |WealthQ4       |     72|   224|
|BC      |24 months |MAL-ED         |NEPAL        |WealthQ1       |     57|   224|
|BC      |24 months |MAL-ED         |NEPAL        |WealthQ2       |     58|   224|
|BC      |24 months |MAL-ED         |NEPAL        |WealthQ3       |     37|   224|
|BC      |24 months |MAL-ED         |BRAZIL       |WealthQ4       |     33|   148|
|BC      |24 months |MAL-ED         |BRAZIL       |WealthQ1       |     43|   148|
|BC      |24 months |MAL-ED         |BRAZIL       |WealthQ2       |     37|   148|
|BC      |24 months |MAL-ED         |BRAZIL       |WealthQ3       |     35|   148|
|BC      |24 months |MAL-ED         |TANZANIA     |WealthQ4       |     53|   209|
|BC      |24 months |MAL-ED         |TANZANIA     |WealthQ1       |     55|   209|
|BC      |24 months |MAL-ED         |TANZANIA     |WealthQ2       |     51|   209|
|BC      |24 months |MAL-ED         |TANZANIA     |WealthQ3       |     50|   209|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |     54|   215|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |     61|   215|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |     43|   215|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |     57|   215|
|BC      |24 months |PROVIDE        |BANGLADESH   |WealthQ4       |    124|   578|
|BC      |24 months |PROVIDE        |BANGLADESH   |WealthQ1       |    141|   578|
|BC      |24 months |PROVIDE        |BANGLADESH   |WealthQ2       |    155|   578|
|BC      |24 months |PROVIDE        |BANGLADESH   |WealthQ3       |    158|   578|
|BC      |24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |      0|     6|
|BC      |24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |      3|     6|
|BC      |24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |      2|     6|
|BC      |24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |      1|     6|
|BC      |24 months |Vellore Crypto |INDIA        |WealthQ4       |     94|   409|
|BC      |24 months |Vellore Crypto |INDIA        |WealthQ1       |    132|   409|
|BC      |24 months |Vellore Crypto |INDIA        |WealthQ2       |    112|   409|
|BC      |24 months |Vellore Crypto |INDIA        |WealthQ3       |     71|   409|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ4       |     20|    92|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ1       |     31|    92|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ2       |     22|    92|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ3       |     19|    92|
|FULL    |Birth     |COHORTS        |GUATEMALA    |WealthQ4       |    395|   806|
|FULL    |Birth     |COHORTS        |GUATEMALA    |WealthQ1       |    125|   806|
|FULL    |Birth     |COHORTS        |GUATEMALA    |WealthQ2       |    161|   806|
|FULL    |Birth     |COHORTS        |GUATEMALA    |WealthQ3       |    125|   806|
|FULL    |Birth     |COHORTS        |PHILIPPINES  |WealthQ4       |    910|  3037|
|FULL    |Birth     |COHORTS        |PHILIPPINES  |WealthQ1       |    642|  3037|
|FULL    |Birth     |COHORTS        |PHILIPPINES  |WealthQ2       |    575|  3037|
|FULL    |Birth     |COHORTS        |PHILIPPINES  |WealthQ3       |    910|  3037|
|FULL    |Birth     |CONTENT        |PERU         |WealthQ4       |      0|     2|
|FULL    |Birth     |CONTENT        |PERU         |WealthQ1       |      2|     2|
|FULL    |Birth     |CONTENT        |PERU         |WealthQ2       |      0|     2|
|FULL    |Birth     |CONTENT        |PERU         |WealthQ3       |      0|     2|
|FULL    |Birth     |GMS-Nepal      |NEPAL        |WealthQ4       |    163|   696|
|FULL    |Birth     |GMS-Nepal      |NEPAL        |WealthQ1       |    199|   696|
|FULL    |Birth     |GMS-Nepal      |NEPAL        |WealthQ2       |    158|   696|
|FULL    |Birth     |GMS-Nepal      |NEPAL        |WealthQ3       |    176|   696|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |WealthQ4       |   5564| 22455|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |WealthQ1       |   5685| 22455|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |WealthQ2       |   5558| 22455|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |WealthQ3       |   5648| 22455|
|FULL    |Birth     |JiVitA-4       |BANGLADESH   |WealthQ4       |    723|  2822|
|FULL    |Birth     |JiVitA-4       |BANGLADESH   |WealthQ1       |    713|  2822|
|FULL    |Birth     |JiVitA-4       |BANGLADESH   |WealthQ2       |    708|  2822|
|FULL    |Birth     |JiVitA-4       |BANGLADESH   |WealthQ3       |    678|  2822|
|FULL    |Birth     |MAL-ED         |INDIA        |WealthQ4       |      9|    45|
|FULL    |Birth     |MAL-ED         |INDIA        |WealthQ1       |     11|    45|
|FULL    |Birth     |MAL-ED         |INDIA        |WealthQ2       |     13|    45|
|FULL    |Birth     |MAL-ED         |INDIA        |WealthQ3       |     12|    45|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |WealthQ4       |     52|   207|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |WealthQ1       |     60|   207|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |WealthQ2       |     58|   207|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |WealthQ3       |     37|   207|
|FULL    |Birth     |MAL-ED         |PERU         |WealthQ4       |     59|   224|
|FULL    |Birth     |MAL-ED         |PERU         |WealthQ1       |     60|   224|
|FULL    |Birth     |MAL-ED         |PERU         |WealthQ2       |     61|   224|
|FULL    |Birth     |MAL-ED         |PERU         |WealthQ3       |     44|   224|
|FULL    |Birth     |MAL-ED         |NEPAL        |WealthQ4       |     11|    25|
|FULL    |Birth     |MAL-ED         |NEPAL        |WealthQ1       |      4|    25|
|FULL    |Birth     |MAL-ED         |NEPAL        |WealthQ2       |      8|    25|
|FULL    |Birth     |MAL-ED         |NEPAL        |WealthQ3       |      2|    25|
|FULL    |Birth     |MAL-ED         |BRAZIL       |WealthQ4       |     10|    58|
|FULL    |Birth     |MAL-ED         |BRAZIL       |WealthQ1       |     16|    58|
|FULL    |Birth     |MAL-ED         |BRAZIL       |WealthQ2       |     22|    58|
|FULL    |Birth     |MAL-ED         |BRAZIL       |WealthQ3       |     10|    58|
|FULL    |Birth     |MAL-ED         |TANZANIA     |WealthQ4       |     20|   121|
|FULL    |Birth     |MAL-ED         |TANZANIA     |WealthQ1       |     33|   121|
|FULL    |Birth     |MAL-ED         |TANZANIA     |WealthQ2       |     38|   121|
|FULL    |Birth     |MAL-ED         |TANZANIA     |WealthQ3       |     30|   121|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |WealthQ4       |     26|   111|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |WealthQ1       |     33|   111|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |WealthQ2       |     23|   111|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |WealthQ3       |     29|   111|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |WealthQ4       |    125|   539|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |WealthQ1       |    144|   539|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |WealthQ2       |    124|   539|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |WealthQ3       |    146|   539|
|FULL    |Birth     |Vellore Crypto |INDIA        |WealthQ4       |     99|   388|
|FULL    |Birth     |Vellore Crypto |INDIA        |WealthQ1       |    103|   388|
|FULL    |Birth     |Vellore Crypto |INDIA        |WealthQ2       |     95|   388|
|FULL    |Birth     |Vellore Crypto |INDIA        |WealthQ3       |     91|   388|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ4       |     90|   369|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ1       |    102|   369|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ2       |     90|   369|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ3       |     87|   369|
|FULL    |6 months  |COHORTS        |GUATEMALA    |WealthQ4       |    460|   920|
|FULL    |6 months  |COHORTS        |GUATEMALA    |WealthQ1       |    132|   920|
|FULL    |6 months  |COHORTS        |GUATEMALA    |WealthQ2       |    181|   920|
|FULL    |6 months  |COHORTS        |GUATEMALA    |WealthQ3       |    147|   920|
|FULL    |6 months  |COHORTS        |PHILIPPINES  |WealthQ4       |    805|  2697|
|FULL    |6 months  |COHORTS        |PHILIPPINES  |WealthQ1       |    547|  2697|
|FULL    |6 months  |COHORTS        |PHILIPPINES  |WealthQ2       |    508|  2697|
|FULL    |6 months  |COHORTS        |PHILIPPINES  |WealthQ3       |    837|  2697|
|FULL    |6 months  |CONTENT        |PERU         |WealthQ4       |     47|   215|
|FULL    |6 months  |CONTENT        |PERU         |WealthQ1       |     48|   215|
|FULL    |6 months  |CONTENT        |PERU         |WealthQ2       |     61|   215|
|FULL    |6 months  |CONTENT        |PERU         |WealthQ3       |     59|   215|
|FULL    |6 months  |GMS-Nepal      |NEPAL        |WealthQ4       |    141|   564|
|FULL    |6 months  |GMS-Nepal      |NEPAL        |WealthQ1       |    151|   564|
|FULL    |6 months  |GMS-Nepal      |NEPAL        |WealthQ2       |    128|   564|
|FULL    |6 months  |GMS-Nepal      |NEPAL        |WealthQ3       |    144|   564|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |WealthQ4       |   4804| 16811|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |WealthQ1       |   3708| 16811|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |WealthQ2       |   3949| 16811|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |WealthQ3       |   4350| 16811|
|FULL    |6 months  |JiVitA-4       |BANGLADESH   |WealthQ4       |   1249|  4824|
|FULL    |6 months  |JiVitA-4       |BANGLADESH   |WealthQ1       |   1220|  4824|
|FULL    |6 months  |JiVitA-4       |BANGLADESH   |WealthQ2       |   1178|  4824|
|FULL    |6 months  |JiVitA-4       |BANGLADESH   |WealthQ3       |   1177|  4824|
|FULL    |6 months  |LCNI-5         |MALAWI       |WealthQ4       |    202|   815|
|FULL    |6 months  |LCNI-5         |MALAWI       |WealthQ1       |    197|   815|
|FULL    |6 months  |LCNI-5         |MALAWI       |WealthQ2       |    209|   815|
|FULL    |6 months  |LCNI-5         |MALAWI       |WealthQ3       |    207|   815|
|FULL    |6 months  |MAL-ED         |INDIA        |WealthQ4       |     54|   232|
|FULL    |6 months  |MAL-ED         |INDIA        |WealthQ1       |     63|   232|
|FULL    |6 months  |MAL-ED         |INDIA        |WealthQ2       |     66|   232|
|FULL    |6 months  |MAL-ED         |INDIA        |WealthQ3       |     49|   232|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |WealthQ4       |     54|   218|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |WealthQ1       |     53|   218|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |WealthQ2       |     69|   218|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |WealthQ3       |     42|   218|
|FULL    |6 months  |MAL-ED         |PERU         |WealthQ4       |     63|   259|
|FULL    |6 months  |MAL-ED         |PERU         |WealthQ1       |     69|   259|
|FULL    |6 months  |MAL-ED         |PERU         |WealthQ2       |     59|   259|
|FULL    |6 months  |MAL-ED         |PERU         |WealthQ3       |     68|   259|
|FULL    |6 months  |MAL-ED         |NEPAL        |WealthQ4       |     70|   228|
|FULL    |6 months  |MAL-ED         |NEPAL        |WealthQ1       |     63|   228|
|FULL    |6 months  |MAL-ED         |NEPAL        |WealthQ2       |     53|   228|
|FULL    |6 months  |MAL-ED         |NEPAL        |WealthQ3       |     42|   228|
|FULL    |6 months  |MAL-ED         |BRAZIL       |WealthQ4       |     47|   185|
|FULL    |6 months  |MAL-ED         |BRAZIL       |WealthQ1       |     40|   185|
|FULL    |6 months  |MAL-ED         |BRAZIL       |WealthQ2       |     49|   185|
|FULL    |6 months  |MAL-ED         |BRAZIL       |WealthQ3       |     49|   185|
|FULL    |6 months  |MAL-ED         |TANZANIA     |WealthQ4       |     52|   242|
|FULL    |6 months  |MAL-ED         |TANZANIA     |WealthQ1       |     67|   242|
|FULL    |6 months  |MAL-ED         |TANZANIA     |WealthQ2       |     63|   242|
|FULL    |6 months  |MAL-ED         |TANZANIA     |WealthQ3       |     60|   242|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |WealthQ4       |     51|   231|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |WealthQ1       |     72|   231|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |WealthQ2       |     59|   231|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |WealthQ3       |     49|   231|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |WealthQ4       |    140|   604|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |WealthQ1       |    170|   604|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |WealthQ2       |    138|   604|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |WealthQ3       |    156|   604|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA     |WealthQ4       |    509|  2024|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA     |WealthQ1       |    619|  2024|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA     |WealthQ2       |    367|  2024|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA     |WealthQ3       |    529|  2024|
|FULL    |6 months  |Vellore Crypto |INDIA        |WealthQ4       |    105|   407|
|FULL    |6 months  |Vellore Crypto |INDIA        |WealthQ1       |    107|   407|
|FULL    |6 months  |Vellore Crypto |INDIA        |WealthQ2       |    101|   407|
|FULL    |6 months  |Vellore Crypto |INDIA        |WealthQ3       |     94|   407|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |     91|   371|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |    102|   371|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |     90|   371|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |     88|   371|
|FULL    |24 months |COHORTS        |GUATEMALA    |WealthQ4       |    504|  1021|
|FULL    |24 months |COHORTS        |GUATEMALA    |WealthQ1       |    162|  1021|
|FULL    |24 months |COHORTS        |GUATEMALA    |WealthQ2       |    194|  1021|
|FULL    |24 months |COHORTS        |GUATEMALA    |WealthQ3       |    161|  1021|
|FULL    |24 months |COHORTS        |PHILIPPINES  |WealthQ4       |    717|  2435|
|FULL    |24 months |COHORTS        |PHILIPPINES  |WealthQ1       |    503|  2435|
|FULL    |24 months |COHORTS        |PHILIPPINES  |WealthQ2       |    464|  2435|
|FULL    |24 months |COHORTS        |PHILIPPINES  |WealthQ3       |    751|  2435|
|FULL    |24 months |CONTENT        |PERU         |WealthQ4       |     30|   164|
|FULL    |24 months |CONTENT        |PERU         |WealthQ1       |     39|   164|
|FULL    |24 months |CONTENT        |PERU         |WealthQ2       |     51|   164|
|FULL    |24 months |CONTENT        |PERU         |WealthQ3       |     44|   164|
|FULL    |24 months |GMS-Nepal      |NEPAL        |WealthQ4       |    118|   488|
|FULL    |24 months |GMS-Nepal      |NEPAL        |WealthQ1       |    139|   488|
|FULL    |24 months |GMS-Nepal      |NEPAL        |WealthQ2       |    108|   488|
|FULL    |24 months |GMS-Nepal      |NEPAL        |WealthQ3       |    123|   488|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |   2303|  8632|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |   2025|  8632|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |   2119|  8632|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |   2185|  8632|
|FULL    |24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |   1227|  4747|
|FULL    |24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |   1171|  4747|
|FULL    |24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |   1195|  4747|
|FULL    |24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |   1154|  4747|
|FULL    |24 months |LCNI-5         |MALAWI       |WealthQ4       |    138|   563|
|FULL    |24 months |LCNI-5         |MALAWI       |WealthQ1       |    147|   563|
|FULL    |24 months |LCNI-5         |MALAWI       |WealthQ2       |    134|   563|
|FULL    |24 months |LCNI-5         |MALAWI       |WealthQ3       |    144|   563|
|FULL    |24 months |MAL-ED         |INDIA        |WealthQ4       |     53|   223|
|FULL    |24 months |MAL-ED         |INDIA        |WealthQ1       |     60|   223|
|FULL    |24 months |MAL-ED         |INDIA        |WealthQ2       |     63|   223|
|FULL    |24 months |MAL-ED         |INDIA        |WealthQ3       |     47|   223|
|FULL    |24 months |MAL-ED         |BANGLADESH   |WealthQ4       |     49|   199|
|FULL    |24 months |MAL-ED         |BANGLADESH   |WealthQ1       |     44|   199|
|FULL    |24 months |MAL-ED         |BANGLADESH   |WealthQ2       |     68|   199|
|FULL    |24 months |MAL-ED         |BANGLADESH   |WealthQ3       |     38|   199|
|FULL    |24 months |MAL-ED         |PERU         |WealthQ4       |     57|   194|
|FULL    |24 months |MAL-ED         |PERU         |WealthQ1       |     45|   194|
|FULL    |24 months |MAL-ED         |PERU         |WealthQ2       |     37|   194|
|FULL    |24 months |MAL-ED         |PERU         |WealthQ3       |     55|   194|
|FULL    |24 months |MAL-ED         |NEPAL        |WealthQ4       |     67|   220|
|FULL    |24 months |MAL-ED         |NEPAL        |WealthQ1       |     62|   220|
|FULL    |24 months |MAL-ED         |NEPAL        |WealthQ2       |     52|   220|
|FULL    |24 months |MAL-ED         |NEPAL        |WealthQ3       |     39|   220|
|FULL    |24 months |MAL-ED         |BRAZIL       |WealthQ4       |     45|   153|
|FULL    |24 months |MAL-ED         |BRAZIL       |WealthQ1       |     27|   153|
|FULL    |24 months |MAL-ED         |BRAZIL       |WealthQ2       |     40|   153|
|FULL    |24 months |MAL-ED         |BRAZIL       |WealthQ3       |     41|   153|
|FULL    |24 months |MAL-ED         |TANZANIA     |WealthQ4       |     48|   211|
|FULL    |24 months |MAL-ED         |TANZANIA     |WealthQ1       |     55|   211|
|FULL    |24 months |MAL-ED         |TANZANIA     |WealthQ2       |     52|   211|
|FULL    |24 months |MAL-ED         |TANZANIA     |WealthQ3       |     56|   211|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |     46|   217|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |     69|   217|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |     56|   217|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |     46|   217|
|FULL    |24 months |PROVIDE        |BANGLADESH   |WealthQ4       |    132|   578|
|FULL    |24 months |PROVIDE        |BANGLADESH   |WealthQ1       |    169|   578|
|FULL    |24 months |PROVIDE        |BANGLADESH   |WealthQ2       |    135|   578|
|FULL    |24 months |PROVIDE        |BANGLADESH   |WealthQ3       |    142|   578|
|FULL    |24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |      1|     6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |      2|     6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |      1|     6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |      2|     6|
|FULL    |24 months |Vellore Crypto |INDIA        |WealthQ4       |    105|   409|
|FULL    |24 months |Vellore Crypto |INDIA        |WealthQ1       |    108|   409|
|FULL    |24 months |Vellore Crypto |INDIA        |WealthQ2       |    101|   409|
|FULL    |24 months |Vellore Crypto |INDIA        |WealthQ3       |     95|   409|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ4       |     76|   363|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ1       |     92|   363|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ2       |     99|   363|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA        |WealthQ3       |     96|   363|
|QI      |Birth     |COHORTS        |GUATEMALA    |WealthQ4       |    205|   525|
|QI      |Birth     |COHORTS        |GUATEMALA    |WealthQ1       |    118|   525|
|QI      |Birth     |COHORTS        |GUATEMALA    |WealthQ2       |     95|   525|
|QI      |Birth     |COHORTS        |GUATEMALA    |WealthQ3       |    107|   525|
|QI      |Birth     |COHORTS        |PHILIPPINES  |WealthQ4       |    921|  3070|
|QI      |Birth     |COHORTS        |PHILIPPINES  |WealthQ1       |    667|  3070|
|QI      |Birth     |COHORTS        |PHILIPPINES  |WealthQ2       |    543|  3070|
|QI      |Birth     |COHORTS        |PHILIPPINES  |WealthQ3       |    939|  3070|
|QI      |Birth     |CONTENT        |PERU         |WealthQ4       |      0|     3|
|QI      |Birth     |CONTENT        |PERU         |WealthQ1       |      1|     3|
|QI      |Birth     |CONTENT        |PERU         |WealthQ2       |      0|     3|
|QI      |Birth     |CONTENT        |PERU         |WealthQ3       |      2|     3|
|QI      |Birth     |GMS-Nepal      |NEPAL        |WealthQ4       |    190|   697|
|QI      |Birth     |GMS-Nepal      |NEPAL        |WealthQ1       |    175|   697|
|QI      |Birth     |GMS-Nepal      |NEPAL        |WealthQ2       |    174|   697|
|QI      |Birth     |GMS-Nepal      |NEPAL        |WealthQ3       |    158|   697|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |WealthQ4       |   2647| 11333|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |WealthQ1       |   2860| 11333|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |WealthQ2       |   2851| 11333|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |WealthQ3       |   2975| 11333|
|QI      |Birth     |JiVitA-4       |BANGLADESH   |WealthQ4       |    192|   728|
|QI      |Birth     |JiVitA-4       |BANGLADESH   |WealthQ1       |    179|   728|
|QI      |Birth     |JiVitA-4       |BANGLADESH   |WealthQ2       |    174|   728|
|QI      |Birth     |JiVitA-4       |BANGLADESH   |WealthQ3       |    183|   728|
|QI      |Birth     |MAL-ED         |INDIA        |WealthQ4       |     65|   236|
|QI      |Birth     |MAL-ED         |INDIA        |WealthQ1       |     55|   236|
|QI      |Birth     |MAL-ED         |INDIA        |WealthQ2       |     54|   236|
|QI      |Birth     |MAL-ED         |INDIA        |WealthQ3       |     62|   236|
|QI      |Birth     |MAL-ED         |BANGLADESH   |WealthQ4       |     71|   243|
|QI      |Birth     |MAL-ED         |BANGLADESH   |WealthQ1       |     64|   243|
|QI      |Birth     |MAL-ED         |BANGLADESH   |WealthQ2       |     70|   243|
|QI      |Birth     |MAL-ED         |BANGLADESH   |WealthQ3       |     38|   243|
|QI      |Birth     |MAL-ED         |PERU         |WealthQ4       |     72|   276|
|QI      |Birth     |MAL-ED         |PERU         |WealthQ1       |     58|   276|
|QI      |Birth     |MAL-ED         |PERU         |WealthQ2       |     74|   276|
|QI      |Birth     |MAL-ED         |PERU         |WealthQ3       |     72|   276|
|QI      |Birth     |MAL-ED         |NEPAL        |WealthQ4       |     64|   233|
|QI      |Birth     |MAL-ED         |NEPAL        |WealthQ1       |     54|   233|
|QI      |Birth     |MAL-ED         |NEPAL        |WealthQ2       |     78|   233|
|QI      |Birth     |MAL-ED         |NEPAL        |WealthQ3       |     37|   233|
|QI      |Birth     |MAL-ED         |BRAZIL       |WealthQ4       |     58|   214|
|QI      |Birth     |MAL-ED         |BRAZIL       |WealthQ1       |     53|   214|
|QI      |Birth     |MAL-ED         |BRAZIL       |WealthQ2       |     49|   214|
|QI      |Birth     |MAL-ED         |BRAZIL       |WealthQ3       |     54|   214|
|QI      |Birth     |MAL-ED         |TANZANIA     |WealthQ4       |     47|   203|
|QI      |Birth     |MAL-ED         |TANZANIA     |WealthQ1       |     58|   203|
|QI      |Birth     |MAL-ED         |TANZANIA     |WealthQ2       |     41|   203|
|QI      |Birth     |MAL-ED         |TANZANIA     |WealthQ3       |     57|   203|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |WealthQ4       |     69|   266|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |WealthQ1       |     77|   266|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |WealthQ2       |     63|   266|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |WealthQ3       |     57|   266|
|QI      |Birth     |PROVIDE        |BANGLADESH   |WealthQ4       |    118|   531|
|QI      |Birth     |PROVIDE        |BANGLADESH   |WealthQ1       |    153|   531|
|QI      |Birth     |PROVIDE        |BANGLADESH   |WealthQ2       |    139|   531|
|QI      |Birth     |PROVIDE        |BANGLADESH   |WealthQ3       |    121|   531|
|QI      |Birth     |TanzaniaChild2 |TANZANIA     |WealthQ4       |    581|  2368|
|QI      |Birth     |TanzaniaChild2 |TANZANIA     |WealthQ1       |    736|  2368|
|QI      |Birth     |TanzaniaChild2 |TANZANIA     |WealthQ2       |    480|  2368|
|QI      |Birth     |TanzaniaChild2 |TANZANIA     |WealthQ3       |    571|  2368|
|QI      |Birth     |Vellore Crypto |INDIA        |WealthQ4       |     90|   405|
|QI      |Birth     |Vellore Crypto |INDIA        |WealthQ1       |    102|   405|
|QI      |Birth     |Vellore Crypto |INDIA        |WealthQ2       |    125|   405|
|QI      |Birth     |Vellore Crypto |INDIA        |WealthQ3       |     88|   405|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ4       |     73|   347|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ1       |     88|   347|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ2       |     96|   347|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ3       |     90|   347|
|QI      |6 months  |COHORTS        |GUATEMALA    |WealthQ4       |    152|   377|
|QI      |6 months  |COHORTS        |GUATEMALA    |WealthQ1       |     80|   377|
|QI      |6 months  |COHORTS        |GUATEMALA    |WealthQ2       |     67|   377|
|QI      |6 months  |COHORTS        |GUATEMALA    |WealthQ3       |     78|   377|
|QI      |6 months  |COHORTS        |PHILIPPINES  |WealthQ4       |    726|  2408|
|QI      |6 months  |COHORTS        |PHILIPPINES  |WealthQ1       |    508|  2408|
|QI      |6 months  |COHORTS        |PHILIPPINES  |WealthQ2       |    425|  2408|
|QI      |6 months  |COHORTS        |PHILIPPINES  |WealthQ3       |    749|  2408|
|QI      |6 months  |CONTENT        |PERU         |WealthQ4       |     44|   207|
|QI      |6 months  |CONTENT        |PERU         |WealthQ1       |     51|   207|
|QI      |6 months  |CONTENT        |PERU         |WealthQ2       |     55|   207|
|QI      |6 months  |CONTENT        |PERU         |WealthQ3       |     57|   207|
|QI      |6 months  |GMS-Nepal      |NEPAL        |WealthQ4       |    155|   552|
|QI      |6 months  |GMS-Nepal      |NEPAL        |WealthQ1       |    130|   552|
|QI      |6 months  |GMS-Nepal      |NEPAL        |WealthQ2       |    148|   552|
|QI      |6 months  |GMS-Nepal      |NEPAL        |WealthQ3       |    119|   552|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |WealthQ4       |   1342|  4852|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |WealthQ1       |   1117|  4852|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |WealthQ2       |   1101|  4852|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |WealthQ3       |   1292|  4852|
|QI      |6 months  |JiVitA-4       |BANGLADESH   |WealthQ4       |    235|   842|
|QI      |6 months  |JiVitA-4       |BANGLADESH   |WealthQ1       |    212|   842|
|QI      |6 months  |JiVitA-4       |BANGLADESH   |WealthQ2       |    188|   842|
|QI      |6 months  |JiVitA-4       |BANGLADESH   |WealthQ3       |    207|   842|
|QI      |6 months  |LCNI-5         |MALAWI       |WealthQ4       |    224|   831|
|QI      |6 months  |LCNI-5         |MALAWI       |WealthQ1       |    189|   831|
|QI      |6 months  |LCNI-5         |MALAWI       |WealthQ2       |    212|   831|
|QI      |6 months  |LCNI-5         |MALAWI       |WealthQ3       |    206|   831|
|QI      |6 months  |MAL-ED         |INDIA        |WealthQ4       |     67|   232|
|QI      |6 months  |MAL-ED         |INDIA        |WealthQ1       |     52|   232|
|QI      |6 months  |MAL-ED         |INDIA        |WealthQ2       |     54|   232|
|QI      |6 months  |MAL-ED         |INDIA        |WealthQ3       |     59|   232|
|QI      |6 months  |MAL-ED         |BANGLADESH   |WealthQ4       |     68|   232|
|QI      |6 months  |MAL-ED         |BANGLADESH   |WealthQ1       |     63|   232|
|QI      |6 months  |MAL-ED         |BANGLADESH   |WealthQ2       |     64|   232|
|QI      |6 months  |MAL-ED         |BANGLADESH   |WealthQ3       |     37|   232|
|QI      |6 months  |MAL-ED         |PERU         |WealthQ4       |     67|   252|
|QI      |6 months  |MAL-ED         |PERU         |WealthQ1       |     54|   252|
|QI      |6 months  |MAL-ED         |PERU         |WealthQ2       |     65|   252|
|QI      |6 months  |MAL-ED         |PERU         |WealthQ3       |     66|   252|
|QI      |6 months  |MAL-ED         |NEPAL        |WealthQ4       |     58|   219|
|QI      |6 months  |MAL-ED         |NEPAL        |WealthQ1       |     51|   219|
|QI      |6 months  |MAL-ED         |NEPAL        |WealthQ2       |     73|   219|
|QI      |6 months  |MAL-ED         |NEPAL        |WealthQ3       |     37|   219|
|QI      |6 months  |MAL-ED         |BRAZIL       |WealthQ4       |     55|   199|
|QI      |6 months  |MAL-ED         |BRAZIL       |WealthQ1       |     47|   199|
|QI      |6 months  |MAL-ED         |BRAZIL       |WealthQ2       |     46|   199|
|QI      |6 months  |MAL-ED         |BRAZIL       |WealthQ3       |     51|   199|
|QI      |6 months  |MAL-ED         |TANZANIA     |WealthQ4       |     53|   237|
|QI      |6 months  |MAL-ED         |TANZANIA     |WealthQ1       |     72|   237|
|QI      |6 months  |MAL-ED         |TANZANIA     |WealthQ2       |     43|   237|
|QI      |6 months  |MAL-ED         |TANZANIA     |WealthQ3       |     69|   237|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |WealthQ4       |     66|   250|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |WealthQ1       |     72|   250|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |WealthQ2       |     60|   250|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |WealthQ3       |     52|   250|
|QI      |6 months  |PROVIDE        |BANGLADESH   |WealthQ4       |    134|   611|
|QI      |6 months  |PROVIDE        |BANGLADESH   |WealthQ1       |    178|   611|
|QI      |6 months  |PROVIDE        |BANGLADESH   |WealthQ2       |    157|   611|
|QI      |6 months  |PROVIDE        |BANGLADESH   |WealthQ3       |    142|   611|
|QI      |6 months  |TanzaniaChild2 |TANZANIA     |WealthQ4       |    471|  1933|
|QI      |6 months  |TanzaniaChild2 |TANZANIA     |WealthQ1       |    609|  1933|
|QI      |6 months  |TanzaniaChild2 |TANZANIA     |WealthQ2       |    387|  1933|
|QI      |6 months  |TanzaniaChild2 |TANZANIA     |WealthQ3       |    466|  1933|
|QI      |6 months  |Vellore Crypto |INDIA        |WealthQ4       |     84|   383|
|QI      |6 months  |Vellore Crypto |INDIA        |WealthQ1       |     94|   383|
|QI      |6 months  |Vellore Crypto |INDIA        |WealthQ2       |    122|   383|
|QI      |6 months  |Vellore Crypto |INDIA        |WealthQ3       |     83|   383|
|QI      |24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |     36|   145|
|QI      |24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |     32|   145|
|QI      |24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |     39|   145|
|QI      |24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |     38|   145|
|QI      |24 months |COHORTS        |GUATEMALA    |WealthQ4       |     11|    27|
|QI      |24 months |COHORTS        |GUATEMALA    |WealthQ1       |      4|    27|
|QI      |24 months |COHORTS        |GUATEMALA    |WealthQ2       |      5|    27|
|QI      |24 months |COHORTS        |GUATEMALA    |WealthQ3       |      7|    27|
|QI      |24 months |COHORTS        |PHILIPPINES  |WealthQ4       |     97|   295|
|QI      |24 months |COHORTS        |PHILIPPINES  |WealthQ1       |     48|   295|
|QI      |24 months |COHORTS        |PHILIPPINES  |WealthQ2       |     59|   295|
|QI      |24 months |COHORTS        |PHILIPPINES  |WealthQ3       |     91|   295|
|QI      |24 months |CONTENT        |PERU         |WealthQ4       |     25|   104|
|QI      |24 months |CONTENT        |PERU         |WealthQ1       |     16|   104|
|QI      |24 months |CONTENT        |PERU         |WealthQ2       |     33|   104|
|QI      |24 months |CONTENT        |PERU         |WealthQ3       |     30|   104|
|QI      |24 months |GMS-Nepal      |NEPAL        |WealthQ4       |     55|   193|
|QI      |24 months |GMS-Nepal      |NEPAL        |WealthQ1       |     48|   193|
|QI      |24 months |GMS-Nepal      |NEPAL        |WealthQ2       |     55|   193|
|QI      |24 months |GMS-Nepal      |NEPAL        |WealthQ3       |     35|   193|
|QI      |24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |      3|     6|
|QI      |24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |      1|     6|
|QI      |24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |      2|     6|
|QI      |24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |      0|     6|
|QI      |24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |     22|    58|
|QI      |24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |     14|    58|
|QI      |24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |      9|    58|
|QI      |24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |     13|    58|
|QI      |24 months |LCNI-5         |MALAWI       |WealthQ4       |     17|    83|
|QI      |24 months |LCNI-5         |MALAWI       |WealthQ1       |     20|    83|
|QI      |24 months |LCNI-5         |MALAWI       |WealthQ2       |     25|    83|
|QI      |24 months |LCNI-5         |MALAWI       |WealthQ3       |     21|    83|
|QI      |24 months |MAL-ED         |INDIA        |WealthQ4       |     30|   102|
|QI      |24 months |MAL-ED         |INDIA        |WealthQ1       |     24|   102|
|QI      |24 months |MAL-ED         |INDIA        |WealthQ2       |     27|   102|
|QI      |24 months |MAL-ED         |INDIA        |WealthQ3       |     21|   102|
|QI      |24 months |MAL-ED         |BANGLADESH   |WealthQ4       |     38|    96|
|QI      |24 months |MAL-ED         |BANGLADESH   |WealthQ1       |     16|    96|
|QI      |24 months |MAL-ED         |BANGLADESH   |WealthQ2       |     28|    96|
|QI      |24 months |MAL-ED         |BANGLADESH   |WealthQ3       |     14|    96|
|QI      |24 months |MAL-ED         |PERU         |WealthQ4       |     21|    67|
|QI      |24 months |MAL-ED         |PERU         |WealthQ1       |      7|    67|
|QI      |24 months |MAL-ED         |PERU         |WealthQ2       |     16|    67|
|QI      |24 months |MAL-ED         |PERU         |WealthQ3       |     23|    67|
|QI      |24 months |MAL-ED         |NEPAL        |WealthQ4       |     30|   100|
|QI      |24 months |MAL-ED         |NEPAL        |WealthQ1       |     18|   100|
|QI      |24 months |MAL-ED         |NEPAL        |WealthQ2       |     34|   100|
|QI      |24 months |MAL-ED         |NEPAL        |WealthQ3       |     18|   100|
|QI      |24 months |MAL-ED         |BRAZIL       |WealthQ4       |     29|    71|
|QI      |24 months |MAL-ED         |BRAZIL       |WealthQ1       |     10|    71|
|QI      |24 months |MAL-ED         |BRAZIL       |WealthQ2       |     17|    71|
|QI      |24 months |MAL-ED         |BRAZIL       |WealthQ3       |     15|    71|
|QI      |24 months |MAL-ED         |TANZANIA     |WealthQ4       |     23|    80|
|QI      |24 months |MAL-ED         |TANZANIA     |WealthQ1       |     20|    80|
|QI      |24 months |MAL-ED         |TANZANIA     |WealthQ2       |     14|    80|
|QI      |24 months |MAL-ED         |TANZANIA     |WealthQ3       |     23|    80|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |     21|    89|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |     23|    89|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |     20|    89|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |     25|    89|
|QI      |24 months |PROVIDE        |BANGLADESH   |WealthQ4       |     13|    55|
|QI      |24 months |PROVIDE        |BANGLADESH   |WealthQ1       |     14|    55|
|QI      |24 months |PROVIDE        |BANGLADESH   |WealthQ2       |     17|    55|
|QI      |24 months |PROVIDE        |BANGLADESH   |WealthQ3       |     11|    55|
|QI      |24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |      9|    54|
|QI      |24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |     17|    54|
|QI      |24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |     16|    54|
|QI      |24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |     12|    54|
|QI      |24 months |Vellore Crypto |INDIA        |WealthQ4       |     42|   161|
|QI      |24 months |Vellore Crypto |INDIA        |WealthQ1       |     42|   161|
|QI      |24 months |Vellore Crypto |INDIA        |WealthQ2       |     38|   161|
|QI      |24 months |Vellore Crypto |INDIA        |WealthQ3       |     39|   161|


The following strata were considered:

* syntype: BC, agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: BC, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* syntype: BC, agecat: 24 months, studyid: CONTENT, country: PERU
* syntype: BC, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: BC, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: BC, agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: BC, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* syntype: BC, agecat: 6 months, studyid: CONTENT, country: PERU
* syntype: BC, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: BC, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: BC, agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: BC, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* syntype: BC, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: BC, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* syntype: FULL, agecat: 24 months, studyid: CONTENT, country: PERU
* syntype: FULL, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* syntype: FULL, agecat: 6 months, studyid: CONTENT, country: PERU
* syntype: FULL, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: FULL, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* syntype: FULL, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: FULL, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: QI, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: 24 months, studyid: CONTENT, country: PERU
* syntype: QI, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: 6 months, studyid: CONTENT, country: PERU
* syntype: QI, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: QI, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: QI, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* syntype: BC, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: QI, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH





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

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error: from glmnet Fortran code (error code 7777); All used predictors have zero variance
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack

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


