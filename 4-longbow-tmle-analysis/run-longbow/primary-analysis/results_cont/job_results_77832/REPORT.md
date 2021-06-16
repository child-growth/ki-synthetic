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
|BC      |Birth     |COHORTS    |INDIA        |1      |   2115|  4889|
|BC      |Birth     |COHORTS    |INDIA        |0      |   2774|  4889|
|BC      |Birth     |COHORTS    |GUATEMALA    |1      |     53|   531|
|BC      |Birth     |COHORTS    |GUATEMALA    |0      |    478|   531|
|BC      |Birth     |COHORTS    |PHILIPPINES  |1      |    209|  1209|
|BC      |Birth     |COHORTS    |PHILIPPINES  |0      |   1000|  1209|
|BC      |Birth     |CONTENT    |PERU         |1      |      2|     2|
|BC      |Birth     |CONTENT    |PERU         |0      |      0|     2|
|BC      |Birth     |JiVitA-3   |BANGLADESH   |1      |  12470| 17995|
|BC      |Birth     |JiVitA-3   |BANGLADESH   |0      |   5525| 17995|
|BC      |Birth     |JiVitA-4   |BANGLADESH   |1      |   1827|  2394|
|BC      |Birth     |JiVitA-4   |BANGLADESH   |0      |    567|  2394|
|BC      |Birth     |MAL-ED     |INDIA        |1      |     18|    44|
|BC      |Birth     |MAL-ED     |INDIA        |0      |     26|    44|
|BC      |Birth     |MAL-ED     |BANGLADESH   |1      |    164|   198|
|BC      |Birth     |MAL-ED     |BANGLADESH   |0      |     34|   198|
|BC      |Birth     |MAL-ED     |PERU         |1      |     48|   198|
|BC      |Birth     |MAL-ED     |PERU         |0      |    150|   198|
|BC      |Birth     |MAL-ED     |NEPAL        |1      |     26|    26|
|BC      |Birth     |MAL-ED     |NEPAL        |0      |      0|    26|
|BC      |Birth     |MAL-ED     |BRAZIL       |1      |     51|    52|
|BC      |Birth     |MAL-ED     |BRAZIL       |0      |      1|    52|
|BC      |Birth     |MAL-ED     |TANZANIA     |1      |      0|   107|
|BC      |Birth     |MAL-ED     |TANZANIA     |0      |    107|   107|
|BC      |Birth     |MAL-ED     |SOUTH AFRICA |1      |      2|   103|
|BC      |Birth     |MAL-ED     |SOUTH AFRICA |0      |    101|   103|
|BC      |Birth     |NIH-Birth  |BANGLADESH   |1      |    203|   575|
|BC      |Birth     |NIH-Birth  |BANGLADESH   |0      |    372|   575|
|BC      |Birth     |NIH-Crypto |BANGLADESH   |1      |    605|   700|
|BC      |Birth     |NIH-Crypto |BANGLADESH   |0      |     95|   700|
|BC      |Birth     |PROVIDE    |BANGLADESH   |1      |     53|    53|
|BC      |Birth     |PROVIDE    |BANGLADESH   |0      |      0|    53|
|BC      |6 months  |COHORTS    |INDIA        |1      |   2371|  5427|
|BC      |6 months  |COHORTS    |INDIA        |0      |   3056|  5427|
|BC      |6 months  |COHORTS    |GUATEMALA    |1      |     75|   693|
|BC      |6 months  |COHORTS    |GUATEMALA    |0      |    618|   693|
|BC      |6 months  |COHORTS    |PHILIPPINES  |1      |    187|  1147|
|BC      |6 months  |COHORTS    |PHILIPPINES  |0      |    960|  1147|
|BC      |6 months  |CONTENT    |PERU         |1      |    195|   215|
|BC      |6 months  |CONTENT    |PERU         |0      |     20|   215|
|BC      |6 months  |JiVitA-3   |BANGLADESH   |1      |  11807| 16773|
|BC      |6 months  |JiVitA-3   |BANGLADESH   |0      |   4966| 16773|
|BC      |6 months  |JiVitA-4   |BANGLADESH   |1      |   3763|  4829|
|BC      |6 months  |JiVitA-4   |BANGLADESH   |0      |   1066|  4829|
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
|BC      |24 months |COHORTS    |INDIA        |1      |   1843|  4159|
|BC      |24 months |COHORTS    |INDIA        |0      |   2316|  4159|
|BC      |24 months |COHORTS    |GUATEMALA    |1      |     82|   791|
|BC      |24 months |COHORTS    |GUATEMALA    |0      |    709|   791|
|BC      |24 months |COHORTS    |PHILIPPINES  |1      |    169|  1045|
|BC      |24 months |COHORTS    |PHILIPPINES  |0      |    876|  1045|
|BC      |24 months |CONTENT    |PERU         |1      |    151|   164|
|BC      |24 months |CONTENT    |PERU         |0      |     13|   164|
|BC      |24 months |JiVitA-3   |BANGLADESH   |1      |   6002|  8598|
|BC      |24 months |JiVitA-3   |BANGLADESH   |0      |   2596|  8598|
|BC      |24 months |JiVitA-4   |BANGLADESH   |1      |   3689|  4731|
|BC      |24 months |JiVitA-4   |BANGLADESH   |0      |   1042|  4731|
|BC      |24 months |LCNI-5     |MALAWI       |1      |      2|   554|
|BC      |24 months |LCNI-5     |MALAWI       |0      |    552|   554|
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
|BC      |24 months |NIH-Birth  |BANGLADESH   |1      |    152|   428|
|BC      |24 months |NIH-Birth  |BANGLADESH   |0      |    276|   428|
|BC      |24 months |NIH-Crypto |BANGLADESH   |1      |    436|   508|
|BC      |24 months |NIH-Crypto |BANGLADESH   |0      |     72|   508|
|BC      |24 months |PROVIDE    |BANGLADESH   |1      |     46|    46|
|BC      |24 months |PROVIDE    |BANGLADESH   |0      |      0|    46|
|FULL    |Birth     |COHORTS    |INDIA        |1      |   1685|  4461|
|FULL    |Birth     |COHORTS    |INDIA        |0      |   2776|  4461|
|FULL    |Birth     |COHORTS    |GUATEMALA    |1      |     43|   449|
|FULL    |Birth     |COHORTS    |GUATEMALA    |0      |    406|   449|
|FULL    |Birth     |COHORTS    |PHILIPPINES  |1      |    177|  1126|
|FULL    |Birth     |COHORTS    |PHILIPPINES  |0      |    949|  1126|
|FULL    |Birth     |CONTENT    |PERU         |1      |      1|     2|
|FULL    |Birth     |CONTENT    |PERU         |0      |      1|     2|
|FULL    |Birth     |JiVitA-3   |BANGLADESH   |1      |  12413| 17991|
|FULL    |Birth     |JiVitA-3   |BANGLADESH   |0      |   5578| 17991|
|FULL    |Birth     |JiVitA-4   |BANGLADESH   |1      |   1859|  2394|
|FULL    |Birth     |JiVitA-4   |BANGLADESH   |0      |    535|  2394|
|FULL    |Birth     |MAL-ED     |INDIA        |1      |     14|    39|
|FULL    |Birth     |MAL-ED     |INDIA        |0      |     25|    39|
|FULL    |Birth     |MAL-ED     |BANGLADESH   |1      |    168|   201|
|FULL    |Birth     |MAL-ED     |BANGLADESH   |0      |     33|   201|
|FULL    |Birth     |MAL-ED     |PERU         |1      |     50|   203|
|FULL    |Birth     |MAL-ED     |PERU         |0      |    153|   203|
|FULL    |Birth     |MAL-ED     |NEPAL        |1      |     24|    25|
|FULL    |Birth     |MAL-ED     |NEPAL        |0      |      1|    25|
|FULL    |Birth     |MAL-ED     |BRAZIL       |1      |     56|    57|
|FULL    |Birth     |MAL-ED     |BRAZIL       |0      |      1|    57|
|FULL    |Birth     |MAL-ED     |TANZANIA     |1      |      0|   110|
|FULL    |Birth     |MAL-ED     |TANZANIA     |0      |    110|   110|
|FULL    |Birth     |MAL-ED     |SOUTH AFRICA |1      |      0|    94|
|FULL    |Birth     |MAL-ED     |SOUTH AFRICA |0      |     94|    94|
|FULL    |Birth     |NIH-Birth  |BANGLADESH   |1      |    222|   575|
|FULL    |Birth     |NIH-Birth  |BANGLADESH   |0      |    353|   575|
|FULL    |Birth     |NIH-Crypto |BANGLADESH   |1      |    610|   696|
|FULL    |Birth     |NIH-Crypto |BANGLADESH   |0      |     86|   696|
|FULL    |Birth     |PROVIDE    |BANGLADESH   |1      |     43|    45|
|FULL    |Birth     |PROVIDE    |BANGLADESH   |0      |      2|    45|
|FULL    |6 months  |COHORTS    |INDIA        |1      |   1879|  4964|
|FULL    |6 months  |COHORTS    |INDIA        |0      |   3085|  4964|
|FULL    |6 months  |COHORTS    |GUATEMALA    |1      |     67|   658|
|FULL    |6 months  |COHORTS    |GUATEMALA    |0      |    591|   658|
|FULL    |6 months  |COHORTS    |PHILIPPINES  |1      |    143|  1083|
|FULL    |6 months  |COHORTS    |PHILIPPINES  |0      |    940|  1083|
|FULL    |6 months  |CONTENT    |PERU         |1      |    201|   215|
|FULL    |6 months  |CONTENT    |PERU         |0      |     14|   215|
|FULL    |6 months  |JiVitA-3   |BANGLADESH   |1      |  12015| 16773|
|FULL    |6 months  |JiVitA-3   |BANGLADESH   |0      |   4758| 16773|
|FULL    |6 months  |JiVitA-4   |BANGLADESH   |1      |   3734|  4827|
|FULL    |6 months  |JiVitA-4   |BANGLADESH   |0      |   1093|  4827|
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
|FULL    |24 months |COHORTS    |INDIA        |1      |   1457|  3724|
|FULL    |24 months |COHORTS    |INDIA        |0      |   2267|  3724|
|FULL    |24 months |COHORTS    |GUATEMALA    |1      |     77|   903|
|FULL    |24 months |COHORTS    |GUATEMALA    |0      |    826|   903|
|FULL    |24 months |COHORTS    |PHILIPPINES  |1      |    124|   993|
|FULL    |24 months |COHORTS    |PHILIPPINES  |0      |    869|   993|
|FULL    |24 months |CONTENT    |PERU         |1      |    151|   164|
|FULL    |24 months |CONTENT    |PERU         |0      |     13|   164|
|FULL    |24 months |JiVitA-3   |BANGLADESH   |1      |   6085|  8593|
|FULL    |24 months |JiVitA-3   |BANGLADESH   |0      |   2508|  8593|
|FULL    |24 months |JiVitA-4   |BANGLADESH   |1      |   3671|  4730|
|FULL    |24 months |JiVitA-4   |BANGLADESH   |0      |   1059|  4730|
|FULL    |24 months |LCNI-5     |MALAWI       |1      |      2|   556|
|FULL    |24 months |LCNI-5     |MALAWI       |0      |    554|   556|
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
|FULL    |24 months |NIH-Birth  |BANGLADESH   |1      |    170|   428|
|FULL    |24 months |NIH-Birth  |BANGLADESH   |0      |    258|   428|
|FULL    |24 months |NIH-Crypto |BANGLADESH   |1      |    433|   503|
|FULL    |24 months |NIH-Crypto |BANGLADESH   |0      |     70|   503|
|FULL    |24 months |PROVIDE    |BANGLADESH   |1      |      9|     9|
|FULL    |24 months |PROVIDE    |BANGLADESH   |0      |      0|     9|
|QI      |Birth     |COHORTS    |INDIA        |1      |   1708|  5069|
|QI      |Birth     |COHORTS    |INDIA        |0      |   3361|  5069|
|QI      |Birth     |COHORTS    |GUATEMALA    |1      |     34|   328|
|QI      |Birth     |COHORTS    |GUATEMALA    |0      |    294|   328|
|QI      |Birth     |COHORTS    |PHILIPPINES  |1      |    197|  1252|
|QI      |Birth     |COHORTS    |PHILIPPINES  |0      |   1055|  1252|
|QI      |Birth     |CONTENT    |PERU         |1      |      3|     3|
|QI      |Birth     |CONTENT    |PERU         |0      |      0|     3|
|QI      |Birth     |JiVitA-3   |BANGLADESH   |1      |   7804| 11303|
|QI      |Birth     |JiVitA-3   |BANGLADESH   |0      |   3499| 11303|
|QI      |Birth     |JiVitA-4   |BANGLADESH   |1      |    568|   732|
|QI      |Birth     |JiVitA-4   |BANGLADESH   |0      |    164|   732|
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
|QI      |Birth     |NIH-Birth  |BANGLADESH   |1      |    238|   606|
|QI      |Birth     |NIH-Birth  |BANGLADESH   |0      |    368|   606|
|QI      |Birth     |NIH-Crypto |BANGLADESH   |1      |    636|   742|
|QI      |Birth     |NIH-Crypto |BANGLADESH   |0      |    106|   742|
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
|QI      |6 months  |JiVitA-3   |BANGLADESH   |1      |   3493|  4853|
|QI      |6 months  |JiVitA-3   |BANGLADESH   |0      |   1360|  4853|
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_gam_NULL_NULL_GCV.Cp failed with message: Error in smooth.construct.tp.smooth.spec(object, dk$data, dk$knots): A term has fewer unique covariate combinations than specified maximum degrees of freedom
## . It will be removed from the stack
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_gam_NULL_NULL_GCV.Cp
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


