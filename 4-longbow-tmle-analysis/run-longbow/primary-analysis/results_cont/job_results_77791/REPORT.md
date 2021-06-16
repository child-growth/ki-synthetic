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

**Intervention Variable:** impsan

**Adjustment Set:**

* sex
* arm
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
* delta_arm
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

## Stratifying Variables

The analysis was stratified on these variable(s):

* syntype
* agecat
* studyid
* country

## Data Summary

|syntype |agecat    |studyid    |country      |impsan | n_cell|     n|
|:-------|:---------|:----------|:------------|:------|------:|-----:|
|BC      |Birth     |COHORTS    |INDIA        |1      |   2279|  5255|
|BC      |Birth     |COHORTS    |INDIA        |0      |   2976|  5255|
|BC      |Birth     |COHORTS    |GUATEMALA    |1      |     60|   605|
|BC      |Birth     |COHORTS    |GUATEMALA    |0      |    545|   605|
|BC      |Birth     |COHORTS    |PHILIPPINES  |1      |    220|  1273|
|BC      |Birth     |COHORTS    |PHILIPPINES  |0      |   1053|  1273|
|BC      |Birth     |CONTENT    |PERU         |1      |      2|     2|
|BC      |Birth     |CONTENT    |PERU         |0      |      0|     2|
|BC      |Birth     |JiVitA-3   |BANGLADESH   |1      |  15490| 22434|
|BC      |Birth     |JiVitA-3   |BANGLADESH   |0      |   6944| 22434|
|BC      |Birth     |JiVitA-4   |BANGLADESH   |1      |   2149|  2821|
|BC      |Birth     |JiVitA-4   |BANGLADESH   |0      |    672|  2821|
|BC      |Birth     |MAL-ED     |INDIA        |1      |     19|    46|
|BC      |Birth     |MAL-ED     |INDIA        |0      |     27|    46|
|BC      |Birth     |MAL-ED     |BANGLADESH   |1      |    176|   212|
|BC      |Birth     |MAL-ED     |BANGLADESH   |0      |     36|   212|
|BC      |Birth     |MAL-ED     |PERU         |1      |     49|   203|
|BC      |Birth     |MAL-ED     |PERU         |0      |    154|   203|
|BC      |Birth     |MAL-ED     |NEPAL        |1      |     26|    26|
|BC      |Birth     |MAL-ED     |NEPAL        |0      |      0|    26|
|BC      |Birth     |MAL-ED     |BRAZIL       |1      |     54|    55|
|BC      |Birth     |MAL-ED     |BRAZIL       |0      |      1|    55|
|BC      |Birth     |MAL-ED     |TANZANIA     |1      |      0|   115|
|BC      |Birth     |MAL-ED     |TANZANIA     |0      |    115|   115|
|BC      |Birth     |MAL-ED     |SOUTH AFRICA |1      |      2|   106|
|BC      |Birth     |MAL-ED     |SOUTH AFRICA |0      |    104|   106|
|BC      |Birth     |NIH-Birth  |BANGLADESH   |1      |    217|   608|
|BC      |Birth     |NIH-Birth  |BANGLADESH   |0      |    391|   608|
|BC      |Birth     |NIH-Crypto |BANGLADESH   |1      |    623|   725|
|BC      |Birth     |NIH-Crypto |BANGLADESH   |0      |    102|   725|
|BC      |Birth     |PROVIDE    |BANGLADESH   |1      |     54|    54|
|BC      |Birth     |PROVIDE    |BANGLADESH   |0      |      0|    54|
|BC      |6 months  |COHORTS    |INDIA        |1      |   2378|  5435|
|BC      |6 months  |COHORTS    |INDIA        |0      |   3057|  5435|
|BC      |6 months  |COHORTS    |GUATEMALA    |1      |     75|   692|
|BC      |6 months  |COHORTS    |GUATEMALA    |0      |    617|   692|
|BC      |6 months  |COHORTS    |PHILIPPINES  |1      |    187|  1149|
|BC      |6 months  |COHORTS    |PHILIPPINES  |0      |    962|  1149|
|BC      |6 months  |CONTENT    |PERU         |1      |    195|   215|
|BC      |6 months  |CONTENT    |PERU         |0      |     20|   215|
|BC      |6 months  |JiVitA-3   |BANGLADESH   |1      |  11824| 16800|
|BC      |6 months  |JiVitA-3   |BANGLADESH   |0      |   4976| 16800|
|BC      |6 months  |JiVitA-4   |BANGLADESH   |1      |   3761|  4827|
|BC      |6 months  |JiVitA-4   |BANGLADESH   |0      |   1066|  4827|
|BC      |6 months  |LCNI-5     |MALAWI       |1      |      2|   823|
|BC      |6 months  |LCNI-5     |MALAWI       |0      |    821|   823|
|BC      |6 months  |MAL-ED     |INDIA        |1      |    117|   226|
|BC      |6 months  |MAL-ED     |INDIA        |0      |    109|   226|
|BC      |6 months  |MAL-ED     |BANGLADESH   |1      |    188|   224|
|BC      |6 months  |MAL-ED     |BANGLADESH   |0      |     36|   224|
|BC      |6 months  |MAL-ED     |PERU         |1      |     57|   241|
|BC      |6 months  |MAL-ED     |PERU         |0      |    184|   241|
|BC      |6 months  |MAL-ED     |NEPAL        |1      |    234|   234|
|BC      |6 months  |MAL-ED     |NEPAL        |0      |      0|   234|
|BC      |6 months  |MAL-ED     |BRAZIL       |1      |    182|   187|
|BC      |6 months  |MAL-ED     |BRAZIL       |0      |      5|   187|
|BC      |6 months  |MAL-ED     |TANZANIA     |1      |      0|   236|
|BC      |6 months  |MAL-ED     |TANZANIA     |0      |    236|   236|
|BC      |6 months  |MAL-ED     |SOUTH AFRICA |1      |      6|   224|
|BC      |6 months  |MAL-ED     |SOUTH AFRICA |0      |    218|   224|
|BC      |6 months  |NIH-Birth  |BANGLADESH   |1      |    192|   537|
|BC      |6 months  |NIH-Birth  |BANGLADESH   |0      |    345|   537|
|BC      |6 months  |NIH-Crypto |BANGLADESH   |1      |    608|   708|
|BC      |6 months  |NIH-Crypto |BANGLADESH   |0      |    100|   708|
|BC      |6 months  |PROVIDE    |BANGLADESH   |1      |     49|    49|
|BC      |6 months  |PROVIDE    |BANGLADESH   |0      |      0|    49|
|BC      |24 months |COHORTS    |INDIA        |1      |   1851|  4193|
|BC      |24 months |COHORTS    |INDIA        |0      |   2342|  4193|
|BC      |24 months |COHORTS    |GUATEMALA    |1      |     81|   782|
|BC      |24 months |COHORTS    |GUATEMALA    |0      |    701|   782|
|BC      |24 months |COHORTS    |PHILIPPINES  |1      |    170|  1043|
|BC      |24 months |COHORTS    |PHILIPPINES  |0      |    873|  1043|
|BC      |24 months |CONTENT    |PERU         |1      |    151|   164|
|BC      |24 months |CONTENT    |PERU         |0      |     13|   164|
|BC      |24 months |JiVitA-3   |BANGLADESH   |1      |   6023|  8627|
|BC      |24 months |JiVitA-3   |BANGLADESH   |0      |   2604|  8627|
|BC      |24 months |JiVitA-4   |BANGLADESH   |1      |   3703|  4748|
|BC      |24 months |JiVitA-4   |BANGLADESH   |0      |   1045|  4748|
|BC      |24 months |LCNI-5     |MALAWI       |1      |      2|   570|
|BC      |24 months |LCNI-5     |MALAWI       |0      |    568|   570|
|BC      |24 months |MAL-ED     |INDIA        |1      |    112|   218|
|BC      |24 months |MAL-ED     |INDIA        |0      |    106|   218|
|BC      |24 months |MAL-ED     |BANGLADESH   |1      |    162|   195|
|BC      |24 months |MAL-ED     |BANGLADESH   |0      |     33|   195|
|BC      |24 months |MAL-ED     |PERU         |1      |     41|   174|
|BC      |24 months |MAL-ED     |PERU         |0      |    133|   174|
|BC      |24 months |MAL-ED     |NEPAL        |1      |    226|   226|
|BC      |24 months |MAL-ED     |NEPAL        |0      |      0|   226|
|BC      |24 months |MAL-ED     |BRAZIL       |1      |    143|   148|
|BC      |24 months |MAL-ED     |BRAZIL       |0      |      5|   148|
|BC      |24 months |MAL-ED     |TANZANIA     |1      |      0|   204|
|BC      |24 months |MAL-ED     |TANZANIA     |0      |    204|   204|
|BC      |24 months |MAL-ED     |SOUTH AFRICA |1      |      5|   210|
|BC      |24 months |MAL-ED     |SOUTH AFRICA |0      |    205|   210|
|BC      |24 months |NIH-Birth  |BANGLADESH   |1      |    152|   429|
|BC      |24 months |NIH-Birth  |BANGLADESH   |0      |    277|   429|
|BC      |24 months |NIH-Crypto |BANGLADESH   |1      |    436|   508|
|BC      |24 months |NIH-Crypto |BANGLADESH   |0      |     72|   508|
|BC      |24 months |PROVIDE    |BANGLADESH   |1      |     46|    46|
|BC      |24 months |PROVIDE    |BANGLADESH   |0      |      0|    46|
|FULL    |Birth     |COHORTS    |INDIA        |1      |   1767|  4776|
|FULL    |Birth     |COHORTS    |INDIA        |0      |   3009|  4776|
|FULL    |Birth     |COHORTS    |GUATEMALA    |1      |     45|   491|
|FULL    |Birth     |COHORTS    |GUATEMALA    |0      |    446|   491|
|FULL    |Birth     |COHORTS    |PHILIPPINES  |1      |    178|  1191|
|FULL    |Birth     |COHORTS    |PHILIPPINES  |0      |   1013|  1191|
|FULL    |Birth     |CONTENT    |PERU         |1      |      1|     2|
|FULL    |Birth     |CONTENT    |PERU         |0      |      1|     2|
|FULL    |Birth     |JiVitA-3   |BANGLADESH   |1      |  15220| 22431|
|FULL    |Birth     |JiVitA-3   |BANGLADESH   |0      |   7211| 22431|
|FULL    |Birth     |JiVitA-4   |BANGLADESH   |1      |   2181|  2820|
|FULL    |Birth     |JiVitA-4   |BANGLADESH   |0      |    639|  2820|
|FULL    |Birth     |MAL-ED     |INDIA        |1      |     15|    40|
|FULL    |Birth     |MAL-ED     |INDIA        |0      |     25|    40|
|FULL    |Birth     |MAL-ED     |BANGLADESH   |1      |    179|   213|
|FULL    |Birth     |MAL-ED     |BANGLADESH   |0      |     34|   213|
|FULL    |Birth     |MAL-ED     |PERU         |1      |     52|   208|
|FULL    |Birth     |MAL-ED     |PERU         |0      |    156|   208|
|FULL    |Birth     |MAL-ED     |NEPAL        |1      |     25|    26|
|FULL    |Birth     |MAL-ED     |NEPAL        |0      |      1|    26|
|FULL    |Birth     |MAL-ED     |BRAZIL       |1      |     59|    60|
|FULL    |Birth     |MAL-ED     |BRAZIL       |0      |      1|    60|
|FULL    |Birth     |MAL-ED     |TANZANIA     |1      |      0|   118|
|FULL    |Birth     |MAL-ED     |TANZANIA     |0      |    118|   118|
|FULL    |Birth     |MAL-ED     |SOUTH AFRICA |1      |      0|    95|
|FULL    |Birth     |MAL-ED     |SOUTH AFRICA |0      |     95|    95|
|FULL    |Birth     |NIH-Birth  |BANGLADESH   |1      |    231|   608|
|FULL    |Birth     |NIH-Birth  |BANGLADESH   |0      |    377|   608|
|FULL    |Birth     |NIH-Crypto |BANGLADESH   |1      |    632|   721|
|FULL    |Birth     |NIH-Crypto |BANGLADESH   |0      |     89|   721|
|FULL    |Birth     |PROVIDE    |BANGLADESH   |1      |     43|    45|
|FULL    |Birth     |PROVIDE    |BANGLADESH   |0      |      2|    45|
|FULL    |6 months  |COHORTS    |INDIA        |1      |   1881|  4971|
|FULL    |6 months  |COHORTS    |INDIA        |0      |   3090|  4971|
|FULL    |6 months  |COHORTS    |GUATEMALA    |1      |     67|   658|
|FULL    |6 months  |COHORTS    |GUATEMALA    |0      |    591|   658|
|FULL    |6 months  |COHORTS    |PHILIPPINES  |1      |    143|  1083|
|FULL    |6 months  |COHORTS    |PHILIPPINES  |0      |    940|  1083|
|FULL    |6 months  |CONTENT    |PERU         |1      |    201|   215|
|FULL    |6 months  |CONTENT    |PERU         |0      |     14|   215|
|FULL    |6 months  |JiVitA-3   |BANGLADESH   |1      |  12038| 16800|
|FULL    |6 months  |JiVitA-3   |BANGLADESH   |0      |   4762| 16800|
|FULL    |6 months  |JiVitA-4   |BANGLADESH   |1      |   3734|  4825|
|FULL    |6 months  |JiVitA-4   |BANGLADESH   |0      |   1091|  4825|
|FULL    |6 months  |LCNI-5     |MALAWI       |1      |      3|   812|
|FULL    |6 months  |LCNI-5     |MALAWI       |0      |    809|   812|
|FULL    |6 months  |MAL-ED     |INDIA        |1      |    108|   233|
|FULL    |6 months  |MAL-ED     |INDIA        |0      |    125|   233|
|FULL    |6 months  |MAL-ED     |BANGLADESH   |1      |    202|   240|
|FULL    |6 months  |MAL-ED     |BANGLADESH   |0      |     38|   240|
|FULL    |6 months  |MAL-ED     |PERU         |1      |     65|   263|
|FULL    |6 months  |MAL-ED     |PERU         |0      |    198|   263|
|FULL    |6 months  |MAL-ED     |NEPAL        |1      |    235|   236|
|FULL    |6 months  |MAL-ED     |NEPAL        |0      |      1|   236|
|FULL    |6 months  |MAL-ED     |BRAZIL       |1      |    205|   209|
|FULL    |6 months  |MAL-ED     |BRAZIL       |0      |      4|   209|
|FULL    |6 months  |MAL-ED     |TANZANIA     |1      |      0|   238|
|FULL    |6 months  |MAL-ED     |TANZANIA     |0      |    238|   238|
|FULL    |6 months  |MAL-ED     |SOUTH AFRICA |1      |      4|   244|
|FULL    |6 months  |MAL-ED     |SOUTH AFRICA |0      |    240|   244|
|FULL    |6 months  |NIH-Birth  |BANGLADESH   |1      |    205|   537|
|FULL    |6 months  |NIH-Birth  |BANGLADESH   |0      |    332|   537|
|FULL    |6 months  |NIH-Crypto |BANGLADESH   |1      |    615|   704|
|FULL    |6 months  |NIH-Crypto |BANGLADESH   |0      |     89|   704|
|FULL    |6 months  |PROVIDE    |BANGLADESH   |1      |     11|    11|
|FULL    |6 months  |PROVIDE    |BANGLADESH   |0      |      0|    11|
|FULL    |24 months |COHORTS    |INDIA        |1      |   1471|  3751|
|FULL    |24 months |COHORTS    |INDIA        |0      |   2280|  3751|
|FULL    |24 months |COHORTS    |GUATEMALA    |1      |     77|   893|
|FULL    |24 months |COHORTS    |GUATEMALA    |0      |    816|   893|
|FULL    |24 months |COHORTS    |PHILIPPINES  |1      |    126|   990|
|FULL    |24 months |COHORTS    |PHILIPPINES  |0      |    864|   990|
|FULL    |24 months |CONTENT    |PERU         |1      |    151|   164|
|FULL    |24 months |CONTENT    |PERU         |0      |     13|   164|
|FULL    |24 months |JiVitA-3   |BANGLADESH   |1      |   6111|  8622|
|FULL    |24 months |JiVitA-3   |BANGLADESH   |0      |   2511|  8622|
|FULL    |24 months |JiVitA-4   |BANGLADESH   |1      |   3683|  4747|
|FULL    |24 months |JiVitA-4   |BANGLADESH   |0      |   1064|  4747|
|FULL    |24 months |LCNI-5     |MALAWI       |1      |      2|   572|
|FULL    |24 months |LCNI-5     |MALAWI       |0      |    570|   572|
|FULL    |24 months |MAL-ED     |INDIA        |1      |    104|   225|
|FULL    |24 months |MAL-ED     |INDIA        |0      |    121|   225|
|FULL    |24 months |MAL-ED     |BANGLADESH   |1      |    181|   212|
|FULL    |24 months |MAL-ED     |BANGLADESH   |0      |     31|   212|
|FULL    |24 months |MAL-ED     |PERU         |1      |     47|   196|
|FULL    |24 months |MAL-ED     |PERU         |0      |    149|   196|
|FULL    |24 months |MAL-ED     |NEPAL        |1      |    227|   228|
|FULL    |24 months |MAL-ED     |NEPAL        |0      |      1|   228|
|FULL    |24 months |MAL-ED     |BRAZIL       |1      |    166|   169|
|FULL    |24 months |MAL-ED     |BRAZIL       |0      |      3|   169|
|FULL    |24 months |MAL-ED     |TANZANIA     |1      |      0|   207|
|FULL    |24 months |MAL-ED     |TANZANIA     |0      |    207|   207|
|FULL    |24 months |MAL-ED     |SOUTH AFRICA |1      |      4|   235|
|FULL    |24 months |MAL-ED     |SOUTH AFRICA |0      |    231|   235|
|FULL    |24 months |NIH-Birth  |BANGLADESH   |1      |    170|   429|
|FULL    |24 months |NIH-Birth  |BANGLADESH   |0      |    259|   429|
|FULL    |24 months |NIH-Crypto |BANGLADESH   |1      |    433|   503|
|FULL    |24 months |NIH-Crypto |BANGLADESH   |0      |     70|   503|
|FULL    |24 months |PROVIDE    |BANGLADESH   |1      |      9|     9|
|FULL    |24 months |PROVIDE    |BANGLADESH   |0      |      0|     9|
|QI      |Birth     |COHORTS    |INDIA        |1      |   1734|  5165|
|QI      |Birth     |COHORTS    |INDIA        |0      |   3431|  5165|
|QI      |Birth     |COHORTS    |GUATEMALA    |1      |     36|   336|
|QI      |Birth     |COHORTS    |GUATEMALA    |0      |    300|   336|
|QI      |Birth     |COHORTS    |PHILIPPINES  |1      |    198|  1261|
|QI      |Birth     |COHORTS    |PHILIPPINES  |0      |   1063|  1261|
|QI      |Birth     |CONTENT    |PERU         |1      |      3|     3|
|QI      |Birth     |CONTENT    |PERU         |0      |      0|     3|
|QI      |Birth     |JiVitA-3   |BANGLADESH   |1      |   7826| 11333|
|QI      |Birth     |JiVitA-3   |BANGLADESH   |0      |   3507| 11333|
|QI      |Birth     |JiVitA-4   |BANGLADESH   |1      |    565|   728|
|QI      |Birth     |JiVitA-4   |BANGLADESH   |0      |    163|   728|
|QI      |Birth     |MAL-ED     |INDIA        |1      |    114|   234|
|QI      |Birth     |MAL-ED     |INDIA        |0      |    120|   234|
|QI      |Birth     |MAL-ED     |BANGLADESH   |1      |    209|   243|
|QI      |Birth     |MAL-ED     |BANGLADESH   |0      |     34|   243|
|QI      |Birth     |MAL-ED     |PERU         |1      |     64|   262|
|QI      |Birth     |MAL-ED     |PERU         |0      |    198|   262|
|QI      |Birth     |MAL-ED     |NEPAL        |1      |    233|   235|
|QI      |Birth     |MAL-ED     |NEPAL        |0      |      2|   235|
|QI      |Birth     |MAL-ED     |BRAZIL       |1      |    206|   214|
|QI      |Birth     |MAL-ED     |BRAZIL       |0      |      8|   214|
|QI      |Birth     |MAL-ED     |TANZANIA     |1      |      0|   195|
|QI      |Birth     |MAL-ED     |TANZANIA     |0      |    195|   195|
|QI      |Birth     |MAL-ED     |SOUTH AFRICA |1      |      7|   263|
|QI      |Birth     |MAL-ED     |SOUTH AFRICA |0      |    256|   263|
|QI      |Birth     |NIH-Birth  |BANGLADESH   |1      |    241|   612|
|QI      |Birth     |NIH-Birth  |BANGLADESH   |0      |    371|   612|
|QI      |Birth     |NIH-Crypto |BANGLADESH   |1      |    633|   739|
|QI      |Birth     |NIH-Crypto |BANGLADESH   |0      |    106|   739|
|QI      |Birth     |PROVIDE    |BANGLADESH   |1      |     28|    28|
|QI      |Birth     |PROVIDE    |BANGLADESH   |0      |      0|    28|
|QI      |6 months  |COHORTS    |INDIA        |1      |   1089|  3272|
|QI      |6 months  |COHORTS    |INDIA        |0      |   2183|  3272|
|QI      |6 months  |COHORTS    |GUATEMALA    |1      |     28|   251|
|QI      |6 months  |COHORTS    |GUATEMALA    |0      |    223|   251|
|QI      |6 months  |COHORTS    |PHILIPPINES  |1      |    153|   989|
|QI      |6 months  |COHORTS    |PHILIPPINES  |0      |    836|   989|
|QI      |6 months  |CONTENT    |PERU         |1      |    189|   207|
|QI      |6 months  |CONTENT    |PERU         |0      |     18|   207|
|QI      |6 months  |JiVitA-3   |BANGLADESH   |1      |   3493|  4852|
|QI      |6 months  |JiVitA-3   |BANGLADESH   |0      |   1359|  4852|
|QI      |6 months  |JiVitA-4   |BANGLADESH   |1      |    648|   842|
|QI      |6 months  |JiVitA-4   |BANGLADESH   |0      |    194|   842|
|QI      |6 months  |LCNI-5     |MALAWI       |1      |      2|   826|
|QI      |6 months  |LCNI-5     |MALAWI       |0      |    824|   826|
|QI      |6 months  |MAL-ED     |INDIA        |1      |    111|   230|
|QI      |6 months  |MAL-ED     |INDIA        |0      |    119|   230|
|QI      |6 months  |MAL-ED     |BANGLADESH   |1      |    198|   232|
|QI      |6 months  |MAL-ED     |BANGLADESH   |0      |     34|   232|
|QI      |6 months  |MAL-ED     |PERU         |1      |     56|   241|
|QI      |6 months  |MAL-ED     |PERU         |0      |    185|   241|
|QI      |6 months  |MAL-ED     |NEPAL        |1      |    220|   221|
|QI      |6 months  |MAL-ED     |NEPAL        |0      |      1|   221|
|QI      |6 months  |MAL-ED     |BRAZIL       |1      |    191|   199|
|QI      |6 months  |MAL-ED     |BRAZIL       |0      |      8|   199|
|QI      |6 months  |MAL-ED     |TANZANIA     |1      |      0|   225|
|QI      |6 months  |MAL-ED     |TANZANIA     |0      |    225|   225|
|QI      |6 months  |MAL-ED     |SOUTH AFRICA |1      |      6|   247|
|QI      |6 months  |MAL-ED     |SOUTH AFRICA |0      |    241|   247|
|QI      |6 months  |NIH-Birth  |BANGLADESH   |1      |    154|   391|
|QI      |6 months  |NIH-Birth  |BANGLADESH   |0      |    237|   391|
|QI      |6 months  |NIH-Crypto |BANGLADESH   |1      |    453|   526|
|QI      |6 months  |NIH-Crypto |BANGLADESH   |0      |     73|   526|
|QI      |6 months  |PROVIDE    |BANGLADESH   |1      |     22|    22|
|QI      |6 months  |PROVIDE    |BANGLADESH   |0      |      0|    22|
|QI      |24 months |COHORTS    |GUATEMALA    |1      |      3|    21|
|QI      |24 months |COHORTS    |GUATEMALA    |0      |     18|    21|
|QI      |24 months |COHORTS    |PHILIPPINES  |1      |     19|   136|
|QI      |24 months |COHORTS    |PHILIPPINES  |0      |    117|   136|
|QI      |24 months |CONTENT    |PERU         |1      |     96|   104|
|QI      |24 months |CONTENT    |PERU         |0      |      8|   104|
|QI      |24 months |JiVitA-3   |BANGLADESH   |1      |      4|     6|
|QI      |24 months |JiVitA-3   |BANGLADESH   |0      |      2|     6|
|QI      |24 months |JiVitA-4   |BANGLADESH   |1      |     45|    58|
|QI      |24 months |JiVitA-4   |BANGLADESH   |0      |     13|    58|
|QI      |24 months |LCNI-5     |MALAWI       |1      |      1|    83|
|QI      |24 months |LCNI-5     |MALAWI       |0      |     82|    83|
|QI      |24 months |MAL-ED     |INDIA        |1      |     51|   101|
|QI      |24 months |MAL-ED     |INDIA        |0      |     50|   101|
|QI      |24 months |MAL-ED     |BANGLADESH   |1      |     79|    96|
|QI      |24 months |MAL-ED     |BANGLADESH   |0      |     17|    96|
|QI      |24 months |MAL-ED     |PERU         |1      |     11|    63|
|QI      |24 months |MAL-ED     |PERU         |0      |     52|    63|
|QI      |24 months |MAL-ED     |NEPAL        |1      |    100|   100|
|QI      |24 months |MAL-ED     |NEPAL        |0      |      0|   100|
|QI      |24 months |MAL-ED     |BRAZIL       |1      |     69|    71|
|QI      |24 months |MAL-ED     |BRAZIL       |0      |      2|    71|
|QI      |24 months |MAL-ED     |TANZANIA     |1      |      0|    76|
|QI      |24 months |MAL-ED     |TANZANIA     |0      |     76|    76|
|QI      |24 months |MAL-ED     |SOUTH AFRICA |1      |      2|    88|
|QI      |24 months |MAL-ED     |SOUTH AFRICA |0      |     86|    88|
|QI      |24 months |NIH-Birth  |BANGLADESH   |1      |      8|    32|
|QI      |24 months |NIH-Birth  |BANGLADESH   |0      |     24|    32|
|QI      |24 months |NIH-Crypto |BANGLADESH   |1      |     43|    46|
|QI      |24 months |NIH-Crypto |BANGLADESH   |0      |      3|    46|
|QI      |24 months |PROVIDE    |BANGLADESH   |1      |      2|     2|
|QI      |24 months |PROVIDE    |BANGLADESH   |0      |      0|     2|


The following strata were considered:

* syntype: BC, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: 24 months, studyid: COHORTS, country: INDIA
* syntype: BC, agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* syntype: BC, agecat: 24 months, studyid: CONTENT, country: PERU
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
* syntype: BC, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: 6 months, studyid: COHORTS, country: INDIA
* syntype: BC, agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* syntype: BC, agecat: 6 months, studyid: CONTENT, country: PERU
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
* syntype: BC, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: Birth, studyid: COHORTS, country: INDIA
* syntype: BC, agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* syntype: BC, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: BC, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: 24 months, studyid: COHORTS, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* syntype: FULL, agecat: 24 months, studyid: CONTENT, country: PERU
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
* syntype: FULL, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: 6 months, studyid: COHORTS, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* syntype: FULL, agecat: 6 months, studyid: CONTENT, country: PERU
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
* syntype: FULL, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: Birth, studyid: COHORTS, country: INDIA
* syntype: FULL, agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* syntype: FULL, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: FULL, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: 24 months, studyid: CONTENT, country: PERU
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
* syntype: QI, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: INDIA
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: 6 months, studyid: CONTENT, country: PERU
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
* syntype: QI, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: Birth, studyid: COHORTS, country: INDIA
* syntype: QI, agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: QI, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* syntype: BC, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH





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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


