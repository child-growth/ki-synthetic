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

* syntype
* agecat
* studyid
* country

## Data Summary

|syntype |agecat    |studyid        |country      |feducyrs | n_cell|     n|
|:-------|:---------|:--------------|:------------|:--------|------:|-----:|
|BC      |Birth     |COHORTS        |INDIA        |High     |    623|  1662|
|BC      |Birth     |COHORTS        |INDIA        |Low      |    563|  1662|
|BC      |Birth     |COHORTS        |INDIA        |Medium   |    476|  1662|
|BC      |Birth     |COHORTS        |GUATEMALA    |High     |    142|   818|
|BC      |Birth     |COHORTS        |GUATEMALA    |Low      |    383|   818|
|BC      |Birth     |COHORTS        |GUATEMALA    |Medium   |    293|   818|
|BC      |Birth     |COHORTS        |PHILIPPINES  |High     |   1220|  2932|
|BC      |Birth     |COHORTS        |PHILIPPINES  |Low      |    996|  2932|
|BC      |Birth     |COHORTS        |PHILIPPINES  |Medium   |    716|  2932|
|BC      |Birth     |GMS-Nepal      |NEPAL        |High     |    150|   695|
|BC      |Birth     |GMS-Nepal      |NEPAL        |Low      |    303|   695|
|BC      |Birth     |GMS-Nepal      |NEPAL        |Medium   |    242|   695|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |High     |   5217| 21626|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |Low      |   8971| 21626|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |Medium   |   7438| 21626|
|BC      |Birth     |JiVitA-4       |BANGLADESH   |High     |    589|  2691|
|BC      |Birth     |JiVitA-4       |BANGLADESH   |Low      |   1022|  2691|
|BC      |Birth     |JiVitA-4       |BANGLADESH   |Medium   |   1080|  2691|
|BC      |Birth     |MAL-ED         |INDIA        |High     |     13|    26|
|BC      |Birth     |MAL-ED         |INDIA        |Low      |      5|    26|
|BC      |Birth     |MAL-ED         |INDIA        |Medium   |      8|    26|
|BC      |Birth     |MAL-ED         |BANGLADESH   |High     |     61|   130|
|BC      |Birth     |MAL-ED         |BANGLADESH   |Low      |     35|   130|
|BC      |Birth     |MAL-ED         |BANGLADESH   |Medium   |     34|   130|
|BC      |Birth     |MAL-ED         |PERU         |High     |     82|   223|
|BC      |Birth     |MAL-ED         |PERU         |Low      |     66|   223|
|BC      |Birth     |MAL-ED         |PERU         |Medium   |     75|   223|
|BC      |Birth     |MAL-ED         |NEPAL        |High     |      4|    10|
|BC      |Birth     |MAL-ED         |NEPAL        |Low      |      4|    10|
|BC      |Birth     |MAL-ED         |NEPAL        |Medium   |      2|    10|
|BC      |Birth     |MAL-ED         |TANZANIA     |High     |     64|   118|
|BC      |Birth     |MAL-ED         |TANZANIA     |Low      |     30|   118|
|BC      |Birth     |MAL-ED         |TANZANIA     |Medium   |     24|   118|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |High     |     15|    56|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |Low      |     27|    56|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |Medium   |     14|    56|
|BC      |Birth     |NIH-Crypto     |BANGLADESH   |High     |    347|   732|
|BC      |Birth     |NIH-Crypto     |BANGLADESH   |Low      |    199|   732|
|BC      |Birth     |NIH-Crypto     |BANGLADESH   |Medium   |    186|   732|
|BC      |Birth     |PROBIT         |BELARUS      |High     |   2189| 13441|
|BC      |Birth     |PROBIT         |BELARUS      |Low      |   5301| 13441|
|BC      |Birth     |PROBIT         |BELARUS      |Medium   |   5951| 13441|
|BC      |Birth     |PROVIDE        |BANGLADESH   |High     |    180|   539|
|BC      |Birth     |PROVIDE        |BANGLADESH   |Low      |    180|   539|
|BC      |Birth     |PROVIDE        |BANGLADESH   |Medium   |    179|   539|
|BC      |Birth     |SAS-CompFeed   |INDIA        |High     |    318|  1250|
|BC      |Birth     |SAS-CompFeed   |INDIA        |Low      |    522|  1250|
|BC      |Birth     |SAS-CompFeed   |INDIA        |Medium   |    410|  1250|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE     |High     |   1043| 13336|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE     |Low      |   2004| 13336|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE     |Medium   |  10289| 13336|
|BC      |6 months  |COHORTS        |INDIA        |High     |    632|  1690|
|BC      |6 months  |COHORTS        |INDIA        |Low      |    580|  1690|
|BC      |6 months  |COHORTS        |INDIA        |Medium   |    478|  1690|
|BC      |6 months  |COHORTS        |GUATEMALA    |High     |    154|   916|
|BC      |6 months  |COHORTS        |GUATEMALA    |Low      |    436|   916|
|BC      |6 months  |COHORTS        |GUATEMALA    |Medium   |    326|   916|
|BC      |6 months  |COHORTS        |PHILIPPINES  |High     |   1051|  2608|
|BC      |6 months  |COHORTS        |PHILIPPINES  |Low      |    894|  2608|
|BC      |6 months  |COHORTS        |PHILIPPINES  |Medium   |    663|  2608|
|BC      |6 months  |GMS-Nepal      |NEPAL        |High     |    113|   563|
|BC      |6 months  |GMS-Nepal      |NEPAL        |Low      |    247|   563|
|BC      |6 months  |GMS-Nepal      |NEPAL        |Medium   |    203|   563|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |High     |   4108| 16126|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |Low      |   6428| 16126|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |Medium   |   5590| 16126|
|BC      |6 months  |JiVitA-4       |BANGLADESH   |High     |   1064|  4599|
|BC      |6 months  |JiVitA-4       |BANGLADESH   |Low      |   1725|  4599|
|BC      |6 months  |JiVitA-4       |BANGLADESH   |Medium   |   1810|  4599|
|BC      |6 months  |LCNI-5         |MALAWI       |High     |    251|   827|
|BC      |6 months  |LCNI-5         |MALAWI       |Low      |    281|   827|
|BC      |6 months  |LCNI-5         |MALAWI       |Medium   |    295|   827|
|BC      |6 months  |MAL-ED         |INDIA        |High     |     51|   119|
|BC      |6 months  |MAL-ED         |INDIA        |Low      |     34|   119|
|BC      |6 months  |MAL-ED         |INDIA        |Medium   |     34|   119|
|BC      |6 months  |MAL-ED         |BANGLADESH   |High     |     63|   136|
|BC      |6 months  |MAL-ED         |BANGLADESH   |Low      |     37|   136|
|BC      |6 months  |MAL-ED         |BANGLADESH   |Medium   |     36|   136|
|BC      |6 months  |MAL-ED         |PERU         |High     |    102|   262|
|BC      |6 months  |MAL-ED         |PERU         |Low      |     80|   262|
|BC      |6 months  |MAL-ED         |PERU         |Medium   |     80|   262|
|BC      |6 months  |MAL-ED         |NEPAL        |High     |     34|    79|
|BC      |6 months  |MAL-ED         |NEPAL        |Low      |     21|    79|
|BC      |6 months  |MAL-ED         |NEPAL        |Medium   |     24|    79|
|BC      |6 months  |MAL-ED         |TANZANIA     |High     |    121|   232|
|BC      |6 months  |MAL-ED         |TANZANIA     |Low      |     60|   232|
|BC      |6 months  |MAL-ED         |TANZANIA     |Medium   |     51|   232|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |High     |     34|   116|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |Low      |     57|   116|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |Medium   |     25|   116|
|BC      |6 months  |NIH-Crypto     |BANGLADESH   |High     |    337|   715|
|BC      |6 months  |NIH-Crypto     |BANGLADESH   |Low      |    191|   715|
|BC      |6 months  |NIH-Crypto     |BANGLADESH   |Medium   |    187|   715|
|BC      |6 months  |PROBIT         |BELARUS      |High     |   2546| 15235|
|BC      |6 months  |PROBIT         |BELARUS      |Low      |   6000| 15235|
|BC      |6 months  |PROBIT         |BELARUS      |Medium   |   6689| 15235|
|BC      |6 months  |PROVIDE        |BANGLADESH   |High     |    204|   604|
|BC      |6 months  |PROVIDE        |BANGLADESH   |Low      |    198|   604|
|BC      |6 months  |PROVIDE        |BANGLADESH   |Medium   |    202|   604|
|BC      |6 months  |SAS-CompFeed   |INDIA        |High     |    347|  1335|
|BC      |6 months  |SAS-CompFeed   |INDIA        |Low      |    556|  1335|
|BC      |6 months  |SAS-CompFeed   |INDIA        |Medium   |    432|  1335|
|BC      |6 months  |SAS-FoodSuppl  |INDIA        |High     |     97|   380|
|BC      |6 months  |SAS-FoodSuppl  |INDIA        |Low      |    143|   380|
|BC      |6 months  |SAS-FoodSuppl  |INDIA        |Medium   |    140|   380|
|BC      |6 months  |TanzaniaChild2 |TANZANIA     |High     |    398|  2029|
|BC      |6 months  |TanzaniaChild2 |TANZANIA     |Low      |   1052|  2029|
|BC      |6 months  |TanzaniaChild2 |TANZANIA     |Medium   |    579|  2029|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE     |High     |    616|  8390|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE     |Low      |   1290|  8390|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |   6484|  8390|
|BC      |24 months |COHORTS        |INDIA        |High     |    514|  1371|
|BC      |24 months |COHORTS        |INDIA        |Low      |    465|  1371|
|BC      |24 months |COHORTS        |INDIA        |Medium   |    392|  1371|
|BC      |24 months |COHORTS        |GUATEMALA    |High     |    168|  1016|
|BC      |24 months |COHORTS        |GUATEMALA    |Low      |    488|  1016|
|BC      |24 months |COHORTS        |GUATEMALA    |Medium   |    360|  1016|
|BC      |24 months |COHORTS        |PHILIPPINES  |High     |    950|  2354|
|BC      |24 months |COHORTS        |PHILIPPINES  |Low      |    811|  2354|
|BC      |24 months |COHORTS        |PHILIPPINES  |Medium   |    593|  2354|
|BC      |24 months |GMS-Nepal      |NEPAL        |High     |     95|   487|
|BC      |24 months |GMS-Nepal      |NEPAL        |Low      |    218|   487|
|BC      |24 months |GMS-Nepal      |NEPAL        |Medium   |    174|   487|
|BC      |24 months |JiVitA-3       |BANGLADESH   |High     |   2065|  8271|
|BC      |24 months |JiVitA-3       |BANGLADESH   |Low      |   3310|  8271|
|BC      |24 months |JiVitA-3       |BANGLADESH   |Medium   |   2896|  8271|
|BC      |24 months |JiVitA-4       |BANGLADESH   |High     |   1063|  4521|
|BC      |24 months |JiVitA-4       |BANGLADESH   |Low      |   1647|  4521|
|BC      |24 months |JiVitA-4       |BANGLADESH   |Medium   |   1811|  4521|
|BC      |24 months |LCNI-5         |MALAWI       |High     |    161|   573|
|BC      |24 months |LCNI-5         |MALAWI       |Low      |    208|   573|
|BC      |24 months |LCNI-5         |MALAWI       |Medium   |    204|   573|
|BC      |24 months |MAL-ED         |INDIA        |High     |     48|   114|
|BC      |24 months |MAL-ED         |INDIA        |Low      |     34|   114|
|BC      |24 months |MAL-ED         |INDIA        |Medium   |     32|   114|
|BC      |24 months |MAL-ED         |BANGLADESH   |High     |     59|   124|
|BC      |24 months |MAL-ED         |BANGLADESH   |Low      |     33|   124|
|BC      |24 months |MAL-ED         |BANGLADESH   |Medium   |     32|   124|
|BC      |24 months |MAL-ED         |PERU         |High     |     82|   193|
|BC      |24 months |MAL-ED         |PERU         |Low      |     53|   193|
|BC      |24 months |MAL-ED         |PERU         |Medium   |     58|   193|
|BC      |24 months |MAL-ED         |NEPAL        |High     |     33|    77|
|BC      |24 months |MAL-ED         |NEPAL        |Low      |     20|    77|
|BC      |24 months |MAL-ED         |NEPAL        |Medium   |     24|    77|
|BC      |24 months |MAL-ED         |TANZANIA     |High     |    108|   202|
|BC      |24 months |MAL-ED         |TANZANIA     |Low      |     55|   202|
|BC      |24 months |MAL-ED         |TANZANIA     |Medium   |     39|   202|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |High     |     33|   109|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |Low      |     53|   109|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |Medium   |     23|   109|
|BC      |24 months |NIH-Crypto     |BANGLADESH   |High     |    248|   514|
|BC      |24 months |NIH-Crypto     |BANGLADESH   |Low      |    137|   514|
|BC      |24 months |NIH-Crypto     |BANGLADESH   |Medium   |    129|   514|
|BC      |24 months |PROBIT         |BELARUS      |High     |    648|  3899|
|BC      |24 months |PROBIT         |BELARUS      |Low      |   1521|  3899|
|BC      |24 months |PROBIT         |BELARUS      |Medium   |   1730|  3899|
|BC      |24 months |PROVIDE        |BANGLADESH   |High     |    193|   578|
|BC      |24 months |PROVIDE        |BANGLADESH   |Low      |    193|   578|
|BC      |24 months |PROVIDE        |BANGLADESH   |Medium   |    192|   578|
|BC      |24 months |TanzaniaChild2 |TANZANIA     |High     |      2|     6|
|BC      |24 months |TanzaniaChild2 |TANZANIA     |Low      |      0|     6|
|BC      |24 months |TanzaniaChild2 |TANZANIA     |Medium   |      4|     6|
|BC      |24 months |ZVITAMBO       |ZIMBABWE     |High     |    107|  1588|
|BC      |24 months |ZVITAMBO       |ZIMBABWE     |Low      |    258|  1588|
|BC      |24 months |ZVITAMBO       |ZIMBABWE     |Medium   |   1223|  1588|
|FULL    |Birth     |COHORTS        |INDIA        |High     |    769|  2109|
|FULL    |Birth     |COHORTS        |INDIA        |Low      |    610|  2109|
|FULL    |Birth     |COHORTS        |INDIA        |Medium   |    730|  2109|
|FULL    |Birth     |COHORTS        |GUATEMALA    |High     |    128|   790|
|FULL    |Birth     |COHORTS        |GUATEMALA    |Low      |    379|   790|
|FULL    |Birth     |COHORTS        |GUATEMALA    |Medium   |    283|   790|
|FULL    |Birth     |COHORTS        |PHILIPPINES  |High     |   1236|  2911|
|FULL    |Birth     |COHORTS        |PHILIPPINES  |Low      |    928|  2911|
|FULL    |Birth     |COHORTS        |PHILIPPINES  |Medium   |    747|  2911|
|FULL    |Birth     |GMS-Nepal      |NEPAL        |High     |    155|   693|
|FULL    |Birth     |GMS-Nepal      |NEPAL        |Low      |    313|   693|
|FULL    |Birth     |GMS-Nepal      |NEPAL        |Medium   |    225|   693|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |High     |   4859| 21609|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |Low      |   9302| 21609|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |Medium   |   7448| 21609|
|FULL    |Birth     |JiVitA-4       |BANGLADESH   |High     |    634|  2673|
|FULL    |Birth     |JiVitA-4       |BANGLADESH   |Low      |   1061|  2673|
|FULL    |Birth     |JiVitA-4       |BANGLADESH   |Medium   |    978|  2673|
|FULL    |Birth     |MAL-ED         |INDIA        |High     |     15|    26|
|FULL    |Birth     |MAL-ED         |INDIA        |Low      |      5|    26|
|FULL    |Birth     |MAL-ED         |INDIA        |Medium   |      6|    26|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |High     |     73|   147|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |Low      |     36|   147|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |Medium   |     38|   147|
|FULL    |Birth     |MAL-ED         |PERU         |High     |     84|   222|
|FULL    |Birth     |MAL-ED         |PERU         |Low      |     66|   222|
|FULL    |Birth     |MAL-ED         |PERU         |Medium   |     72|   222|
|FULL    |Birth     |MAL-ED         |NEPAL        |High     |      7|    11|
|FULL    |Birth     |MAL-ED         |NEPAL        |Low      |      2|    11|
|FULL    |Birth     |MAL-ED         |NEPAL        |Medium   |      2|    11|
|FULL    |Birth     |MAL-ED         |TANZANIA     |High     |     74|   119|
|FULL    |Birth     |MAL-ED         |TANZANIA     |Low      |     21|   119|
|FULL    |Birth     |MAL-ED         |TANZANIA     |Medium   |     24|   119|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |High     |     17|    40|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |Low      |     14|    40|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |Medium   |      9|    40|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH   |High     |    345|   732|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH   |Low      |    209|   732|
|FULL    |Birth     |NIH-Crypto     |BANGLADESH   |Medium   |    178|   732|
|FULL    |Birth     |PROBIT         |BELARUS      |High     |   2095| 13468|
|FULL    |Birth     |PROBIT         |BELARUS      |Low      |   5261| 13468|
|FULL    |Birth     |PROBIT         |BELARUS      |Medium   |   6112| 13468|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |High     |    180|   539|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |Low      |    173|   539|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |Medium   |    186|   539|
|FULL    |Birth     |SAS-CompFeed   |INDIA        |High     |    340|  1250|
|FULL    |Birth     |SAS-CompFeed   |INDIA        |Low      |    538|  1250|
|FULL    |Birth     |SAS-CompFeed   |INDIA        |Medium   |    372|  1250|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE     |High     |    957| 13407|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE     |Low      |   2348| 13407|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE     |Medium   |  10102| 13407|
|FULL    |6 months  |COHORTS        |INDIA        |High     |    792|  2166|
|FULL    |6 months  |COHORTS        |INDIA        |Low      |    621|  2166|
|FULL    |6 months  |COHORTS        |INDIA        |Medium   |    753|  2166|
|FULL    |6 months  |COHORTS        |GUATEMALA    |High     |    153|   901|
|FULL    |6 months  |COHORTS        |GUATEMALA    |Low      |    432|   901|
|FULL    |6 months  |COHORTS        |GUATEMALA    |Medium   |    316|   901|
|FULL    |6 months  |COHORTS        |PHILIPPINES  |High     |   1082|  2591|
|FULL    |6 months  |COHORTS        |PHILIPPINES  |Low      |    825|  2591|
|FULL    |6 months  |COHORTS        |PHILIPPINES  |Medium   |    684|  2591|
|FULL    |6 months  |GMS-Nepal      |NEPAL        |High     |    127|   561|
|FULL    |6 months  |GMS-Nepal      |NEPAL        |Low      |    251|   561|
|FULL    |6 months  |GMS-Nepal      |NEPAL        |Medium   |    183|   561|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |High     |   4245| 16151|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |Low      |   6305| 16151|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |Medium   |   5601| 16151|
|FULL    |6 months  |JiVitA-4       |BANGLADESH   |High     |   1173|  4562|
|FULL    |6 months  |JiVitA-4       |BANGLADESH   |Low      |   1659|  4562|
|FULL    |6 months  |JiVitA-4       |BANGLADESH   |Medium   |   1730|  4562|
|FULL    |6 months  |LCNI-5         |MALAWI       |High     |    254|   827|
|FULL    |6 months  |LCNI-5         |MALAWI       |Low      |    298|   827|
|FULL    |6 months  |LCNI-5         |MALAWI       |Medium   |    275|   827|
|FULL    |6 months  |MAL-ED         |INDIA        |High     |     57|   144|
|FULL    |6 months  |MAL-ED         |INDIA        |Low      |     40|   144|
|FULL    |6 months  |MAL-ED         |INDIA        |Medium   |     47|   144|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |High     |     76|   158|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |Low      |     37|   158|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |Medium   |     45|   158|
|FULL    |6 months  |MAL-ED         |PERU         |High     |     99|   257|
|FULL    |6 months  |MAL-ED         |PERU         |Low      |     72|   257|
|FULL    |6 months  |MAL-ED         |PERU         |Medium   |     86|   257|
|FULL    |6 months  |MAL-ED         |NEPAL        |High     |     45|    83|
|FULL    |6 months  |MAL-ED         |NEPAL        |Low      |     24|    83|
|FULL    |6 months  |MAL-ED         |NEPAL        |Medium   |     14|    83|
|FULL    |6 months  |MAL-ED         |TANZANIA     |High     |    148|   235|
|FULL    |6 months  |MAL-ED         |TANZANIA     |Low      |     44|   235|
|FULL    |6 months  |MAL-ED         |TANZANIA     |Medium   |     43|   235|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |High     |     43|   114|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |Low      |     40|   114|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |Medium   |     31|   114|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH   |High     |    335|   715|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH   |Low      |    207|   715|
|FULL    |6 months  |NIH-Crypto     |BANGLADESH   |Medium   |    173|   715|
|FULL    |6 months  |PROBIT         |BELARUS      |High     |   2467| 15271|
|FULL    |6 months  |PROBIT         |BELARUS      |Low      |   5948| 15271|
|FULL    |6 months  |PROBIT         |BELARUS      |Medium   |   6856| 15271|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |High     |    210|   604|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |Low      |    191|   604|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |Medium   |    203|   604|
|FULL    |6 months  |SAS-CompFeed   |INDIA        |High     |    360|  1334|
|FULL    |6 months  |SAS-CompFeed   |INDIA        |Low      |    559|  1334|
|FULL    |6 months  |SAS-CompFeed   |INDIA        |Medium   |    415|  1334|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA        |High     |     94|   380|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA        |Low      |    134|   380|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA        |Medium   |    152|   380|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA     |High     |    386|  2027|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA     |Low      |   1055|  2027|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA     |Medium   |    586|  2027|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE     |High     |    576|  8371|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE     |Low      |   1475|  8371|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |   6320|  8371|
|FULL    |24 months |COHORTS        |INDIA        |High     |    649|  1764|
|FULL    |24 months |COHORTS        |INDIA        |Low      |    500|  1764|
|FULL    |24 months |COHORTS        |INDIA        |Medium   |    615|  1764|
|FULL    |24 months |COHORTS        |GUATEMALA    |High     |    179|   991|
|FULL    |24 months |COHORTS        |GUATEMALA    |Low      |    461|   991|
|FULL    |24 months |COHORTS        |GUATEMALA    |Medium   |    351|   991|
|FULL    |24 months |COHORTS        |PHILIPPINES  |High     |    967|  2342|
|FULL    |24 months |COHORTS        |PHILIPPINES  |Low      |    770|  2342|
|FULL    |24 months |COHORTS        |PHILIPPINES  |Medium   |    605|  2342|
|FULL    |24 months |GMS-Nepal      |NEPAL        |High     |    110|   485|
|FULL    |24 months |GMS-Nepal      |NEPAL        |Low      |    225|   485|
|FULL    |24 months |GMS-Nepal      |NEPAL        |Medium   |    150|   485|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |High     |   2060|  8293|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |Low      |   3375|  8293|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |Medium   |   2858|  8293|
|FULL    |24 months |JiVitA-4       |BANGLADESH   |High     |   1173|  4502|
|FULL    |24 months |JiVitA-4       |BANGLADESH   |Low      |   1650|  4502|
|FULL    |24 months |JiVitA-4       |BANGLADESH   |Medium   |   1679|  4502|
|FULL    |24 months |LCNI-5         |MALAWI       |High     |    182|   572|
|FULL    |24 months |LCNI-5         |MALAWI       |Low      |    203|   572|
|FULL    |24 months |LCNI-5         |MALAWI       |Medium   |    187|   572|
|FULL    |24 months |MAL-ED         |INDIA        |High     |     55|   140|
|FULL    |24 months |MAL-ED         |INDIA        |Low      |     40|   140|
|FULL    |24 months |MAL-ED         |INDIA        |Medium   |     45|   140|
|FULL    |24 months |MAL-ED         |BANGLADESH   |High     |     65|   136|
|FULL    |24 months |MAL-ED         |BANGLADESH   |Low      |     31|   136|
|FULL    |24 months |MAL-ED         |BANGLADESH   |Medium   |     40|   136|
|FULL    |24 months |MAL-ED         |PERU         |High     |     75|   188|
|FULL    |24 months |MAL-ED         |PERU         |Low      |     55|   188|
|FULL    |24 months |MAL-ED         |PERU         |Medium   |     58|   188|
|FULL    |24 months |MAL-ED         |NEPAL        |High     |     45|    83|
|FULL    |24 months |MAL-ED         |NEPAL        |Low      |     24|    83|
|FULL    |24 months |MAL-ED         |NEPAL        |Medium   |     14|    83|
|FULL    |24 months |MAL-ED         |TANZANIA     |High     |    131|   204|
|FULL    |24 months |MAL-ED         |TANZANIA     |Low      |     38|   204|
|FULL    |24 months |MAL-ED         |TANZANIA     |Medium   |     35|   204|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |High     |     41|   107|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |Low      |     38|   107|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |Medium   |     28|   107|
|FULL    |24 months |NIH-Crypto     |BANGLADESH   |High     |    244|   514|
|FULL    |24 months |NIH-Crypto     |BANGLADESH   |Low      |    140|   514|
|FULL    |24 months |NIH-Crypto     |BANGLADESH   |Medium   |    130|   514|
|FULL    |24 months |PROBIT         |BELARUS      |High     |    603|  3938|
|FULL    |24 months |PROBIT         |BELARUS      |Low      |   1504|  3938|
|FULL    |24 months |PROBIT         |BELARUS      |Medium   |   1831|  3938|
|FULL    |24 months |PROVIDE        |BANGLADESH   |High     |    207|   578|
|FULL    |24 months |PROVIDE        |BANGLADESH   |Low      |    180|   578|
|FULL    |24 months |PROVIDE        |BANGLADESH   |Medium   |    191|   578|
|FULL    |24 months |TanzaniaChild2 |TANZANIA     |High     |      1|     6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA     |Low      |      2|     6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA     |Medium   |      3|     6|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE     |High     |    107|  1573|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE     |Low      |    275|  1573|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE     |Medium   |   1191|  1573|
|QI      |Birth     |COHORTS        |INDIA        |High     |    502|  1384|
|QI      |Birth     |COHORTS        |INDIA        |Low      |    520|  1384|
|QI      |Birth     |COHORTS        |INDIA        |Medium   |    362|  1384|
|QI      |Birth     |COHORTS        |GUATEMALA    |High     |    118|   533|
|QI      |Birth     |COHORTS        |GUATEMALA    |Low      |    192|   533|
|QI      |Birth     |COHORTS        |GUATEMALA    |Medium   |    223|   533|
|QI      |Birth     |COHORTS        |PHILIPPINES  |High     |   1189|  2948|
|QI      |Birth     |COHORTS        |PHILIPPINES  |Low      |   1024|  2948|
|QI      |Birth     |COHORTS        |PHILIPPINES  |Medium   |    735|  2948|
|QI      |Birth     |GMS-Nepal      |NEPAL        |High     |    149|   697|
|QI      |Birth     |GMS-Nepal      |NEPAL        |Low      |    297|   697|
|QI      |Birth     |GMS-Nepal      |NEPAL        |Medium   |    251|   697|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |High     |   2387| 10877|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |Low      |   4667| 10877|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |Medium   |   3823| 10877|
|QI      |Birth     |JiVitA-4       |BANGLADESH   |High     |    143|   706|
|QI      |Birth     |JiVitA-4       |BANGLADESH   |Low      |    311|   706|
|QI      |Birth     |JiVitA-4       |BANGLADESH   |Medium   |    252|   706|
|QI      |Birth     |MAL-ED         |INDIA        |High     |     61|   129|
|QI      |Birth     |MAL-ED         |INDIA        |Low      |     36|   129|
|QI      |Birth     |MAL-ED         |INDIA        |Medium   |     32|   129|
|QI      |Birth     |MAL-ED         |BANGLADESH   |High     |     71|   144|
|QI      |Birth     |MAL-ED         |BANGLADESH   |Low      |     31|   144|
|QI      |Birth     |MAL-ED         |BANGLADESH   |Medium   |     42|   144|
|QI      |Birth     |MAL-ED         |PERU         |High     |    131|   276|
|QI      |Birth     |MAL-ED         |PERU         |Low      |     68|   276|
|QI      |Birth     |MAL-ED         |PERU         |Medium   |     77|   276|
|QI      |Birth     |MAL-ED         |NEPAL        |High     |     50|    92|
|QI      |Birth     |MAL-ED         |NEPAL        |Low      |     21|    92|
|QI      |Birth     |MAL-ED         |NEPAL        |Medium   |     21|    92|
|QI      |Birth     |MAL-ED         |TANZANIA     |High     |    112|   197|
|QI      |Birth     |MAL-ED         |TANZANIA     |Low      |     47|   197|
|QI      |Birth     |MAL-ED         |TANZANIA     |Medium   |     38|   197|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |High     |     51|   135|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |Low      |     42|   135|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |Medium   |     42|   135|
|QI      |Birth     |NIH-Crypto     |BANGLADESH   |High     |    359|   753|
|QI      |Birth     |NIH-Crypto     |BANGLADESH   |Low      |    193|   753|
|QI      |Birth     |NIH-Crypto     |BANGLADESH   |Medium   |    201|   753|
|QI      |Birth     |PROBIT         |BELARUS      |High     |    975|  6478|
|QI      |Birth     |PROBIT         |BELARUS      |Low      |   2370|  6478|
|QI      |Birth     |PROBIT         |BELARUS      |Medium   |   3133|  6478|
|QI      |Birth     |PROVIDE        |BANGLADESH   |High     |    183|   531|
|QI      |Birth     |PROVIDE        |BANGLADESH   |Low      |    167|   531|
|QI      |Birth     |PROVIDE        |BANGLADESH   |Medium   |    181|   531|
|QI      |Birth     |SAS-CompFeed   |INDIA        |High     |     75|   380|
|QI      |Birth     |SAS-CompFeed   |INDIA        |Low      |    168|   380|
|QI      |Birth     |SAS-CompFeed   |INDIA        |Medium   |    137|   380|
|QI      |Birth     |TanzaniaChild2 |TANZANIA     |High     |    458|  2370|
|QI      |Birth     |TanzaniaChild2 |TANZANIA     |Low      |   1230|  2370|
|QI      |Birth     |TanzaniaChild2 |TANZANIA     |Medium   |    682|  2370|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE     |High     |    914| 12642|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE     |Low      |   2186| 12642|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE     |Medium   |   9542| 12642|
|QI      |6 months  |COHORTS        |INDIA        |High     |    328|   856|
|QI      |6 months  |COHORTS        |INDIA        |Low      |    319|   856|
|QI      |6 months  |COHORTS        |INDIA        |Medium   |    209|   856|
|QI      |6 months  |COHORTS        |GUATEMALA    |High     |     75|   374|
|QI      |6 months  |COHORTS        |GUATEMALA    |Low      |    134|   374|
|QI      |6 months  |COHORTS        |GUATEMALA    |Medium   |    165|   374|
|QI      |6 months  |COHORTS        |PHILIPPINES  |High     |    930|  2319|
|QI      |6 months  |COHORTS        |PHILIPPINES  |Low      |    799|  2319|
|QI      |6 months  |COHORTS        |PHILIPPINES  |Medium   |    590|  2319|
|QI      |6 months  |GMS-Nepal      |NEPAL        |High     |    121|   552|
|QI      |6 months  |GMS-Nepal      |NEPAL        |Low      |    230|   552|
|QI      |6 months  |GMS-Nepal      |NEPAL        |Medium   |    201|   552|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |High     |   1204|  4660|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |Low      |   1778|  4660|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |Medium   |   1678|  4660|
|QI      |6 months  |JiVitA-4       |BANGLADESH   |High     |    210|   810|
|QI      |6 months  |JiVitA-4       |BANGLADESH   |Low      |    307|   810|
|QI      |6 months  |JiVitA-4       |BANGLADESH   |Medium   |    293|   810|
|QI      |6 months  |LCNI-5         |MALAWI       |High     |    251|   830|
|QI      |6 months  |LCNI-5         |MALAWI       |Low      |    285|   830|
|QI      |6 months  |LCNI-5         |MALAWI       |Medium   |    294|   830|
|QI      |6 months  |MAL-ED         |INDIA        |High     |     60|   126|
|QI      |6 months  |MAL-ED         |INDIA        |Low      |     35|   126|
|QI      |6 months  |MAL-ED         |INDIA        |Medium   |     31|   126|
|QI      |6 months  |MAL-ED         |BANGLADESH   |High     |     66|   136|
|QI      |6 months  |MAL-ED         |BANGLADESH   |Low      |     29|   136|
|QI      |6 months  |MAL-ED         |BANGLADESH   |Medium   |     41|   136|
|QI      |6 months  |MAL-ED         |PERU         |High     |    118|   247|
|QI      |6 months  |MAL-ED         |PERU         |Low      |     61|   247|
|QI      |6 months  |MAL-ED         |PERU         |Medium   |     68|   247|
|QI      |6 months  |MAL-ED         |NEPAL        |High     |     46|    87|
|QI      |6 months  |MAL-ED         |NEPAL        |Low      |     21|    87|
|QI      |6 months  |MAL-ED         |NEPAL        |Medium   |     20|    87|
|QI      |6 months  |MAL-ED         |TANZANIA     |High     |    129|   230|
|QI      |6 months  |MAL-ED         |TANZANIA     |Low      |     55|   230|
|QI      |6 months  |MAL-ED         |TANZANIA     |Medium   |     46|   230|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |High     |     46|   124|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |Low      |     39|   124|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |Medium   |     39|   124|
|QI      |6 months  |NIH-Crypto     |BANGLADESH   |High     |    254|   537|
|QI      |6 months  |NIH-Crypto     |BANGLADESH   |Low      |    150|   537|
|QI      |6 months  |NIH-Crypto     |BANGLADESH   |Medium   |    133|   537|
|QI      |6 months  |PROBIT         |BELARUS      |High     |    761|  4954|
|QI      |6 months  |PROBIT         |BELARUS      |Low      |   1817|  4954|
|QI      |6 months  |PROBIT         |BELARUS      |Medium   |   2376|  4954|
|QI      |6 months  |PROVIDE        |BANGLADESH   |High     |    225|   611|
|QI      |6 months  |PROVIDE        |BANGLADESH   |Low      |    188|   611|
|QI      |6 months  |PROVIDE        |BANGLADESH   |Medium   |    198|   611|
|QI      |6 months  |SAS-CompFeed   |INDIA        |High     |     56|   262|
|QI      |6 months  |SAS-CompFeed   |INDIA        |Low      |    111|   262|
|QI      |6 months  |SAS-CompFeed   |INDIA        |Medium   |     95|   262|
|QI      |6 months  |SAS-FoodSuppl  |INDIA        |High     |     62|   253|
|QI      |6 months  |SAS-FoodSuppl  |INDIA        |Low      |     88|   253|
|QI      |6 months  |SAS-FoodSuppl  |INDIA        |Medium   |    103|   253|
|QI      |6 months  |TanzaniaChild2 |TANZANIA     |High     |    387|  1937|
|QI      |6 months  |TanzaniaChild2 |TANZANIA     |Low      |    998|  1937|
|QI      |6 months  |TanzaniaChild2 |TANZANIA     |Medium   |    552|  1937|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE     |High     |    428|  6126|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE     |Low      |   1056|  6126|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |   4642|  6126|
|QI      |24 months |COHORTS        |GUATEMALA    |High     |      5|    26|
|QI      |24 months |COHORTS        |GUATEMALA    |Low      |      9|    26|
|QI      |24 months |COHORTS        |GUATEMALA    |Medium   |     12|    26|
|QI      |24 months |COHORTS        |PHILIPPINES  |High     |     97|   282|
|QI      |24 months |COHORTS        |PHILIPPINES  |Low      |    117|   282|
|QI      |24 months |COHORTS        |PHILIPPINES  |Medium   |     68|   282|
|QI      |24 months |GMS-Nepal      |NEPAL        |High     |     40|   193|
|QI      |24 months |GMS-Nepal      |NEPAL        |Low      |     92|   193|
|QI      |24 months |GMS-Nepal      |NEPAL        |Medium   |     61|   193|
|QI      |24 months |JiVitA-3       |BANGLADESH   |High     |      3|     6|
|QI      |24 months |JiVitA-3       |BANGLADESH   |Low      |      1|     6|
|QI      |24 months |JiVitA-3       |BANGLADESH   |Medium   |      2|     6|
|QI      |24 months |JiVitA-4       |BANGLADESH   |High     |     16|    57|
|QI      |24 months |JiVitA-4       |BANGLADESH   |Low      |     19|    57|
|QI      |24 months |JiVitA-4       |BANGLADESH   |Medium   |     22|    57|
|QI      |24 months |LCNI-5         |MALAWI       |High     |     21|    83|
|QI      |24 months |LCNI-5         |MALAWI       |Low      |     32|    83|
|QI      |24 months |LCNI-5         |MALAWI       |Medium   |     30|    83|
|QI      |24 months |MAL-ED         |INDIA        |High     |     24|    56|
|QI      |24 months |MAL-ED         |INDIA        |Low      |     17|    56|
|QI      |24 months |MAL-ED         |INDIA        |Medium   |     15|    56|
|QI      |24 months |MAL-ED         |BANGLADESH   |High     |     21|    47|
|QI      |24 months |MAL-ED         |BANGLADESH   |Low      |     11|    47|
|QI      |24 months |MAL-ED         |BANGLADESH   |Medium   |     15|    47|
|QI      |24 months |MAL-ED         |PERU         |High     |     35|    63|
|QI      |24 months |MAL-ED         |PERU         |Low      |     14|    63|
|QI      |24 months |MAL-ED         |PERU         |Medium   |     14|    63|
|QI      |24 months |MAL-ED         |NEPAL        |High     |     21|    38|
|QI      |24 months |MAL-ED         |NEPAL        |Low      |     10|    38|
|QI      |24 months |MAL-ED         |NEPAL        |Medium   |      7|    38|
|QI      |24 months |MAL-ED         |TANZANIA     |High     |     41|    76|
|QI      |24 months |MAL-ED         |TANZANIA     |Low      |     20|    76|
|QI      |24 months |MAL-ED         |TANZANIA     |Medium   |     15|    76|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |High     |     19|    37|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |Low      |     12|    37|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |Medium   |      6|    37|
|QI      |24 months |NIH-Crypto     |BANGLADESH   |High     |     24|    47|
|QI      |24 months |NIH-Crypto     |BANGLADESH   |Low      |     10|    47|
|QI      |24 months |NIH-Crypto     |BANGLADESH   |Medium   |     13|    47|
|QI      |24 months |PROBIT         |BELARUS      |High     |     18|   139|
|QI      |24 months |PROBIT         |BELARUS      |Low      |     36|   139|
|QI      |24 months |PROBIT         |BELARUS      |Medium   |     85|   139|
|QI      |24 months |PROVIDE        |BANGLADESH   |High     |     18|    55|
|QI      |24 months |PROVIDE        |BANGLADESH   |Low      |     22|    55|
|QI      |24 months |PROVIDE        |BANGLADESH   |Medium   |     15|    55|
|QI      |24 months |SAS-CompFeed   |INDIA        |High     |      0|     3|
|QI      |24 months |SAS-CompFeed   |INDIA        |Low      |      1|     3|
|QI      |24 months |SAS-CompFeed   |INDIA        |Medium   |      2|     3|
|QI      |24 months |SAS-FoodSuppl  |INDIA        |High     |      2|     6|
|QI      |24 months |SAS-FoodSuppl  |INDIA        |Low      |      3|     6|
|QI      |24 months |SAS-FoodSuppl  |INDIA        |Medium   |      1|     6|
|QI      |24 months |TanzaniaChild2 |TANZANIA     |High     |     10|    54|
|QI      |24 months |TanzaniaChild2 |TANZANIA     |Low      |     28|    54|
|QI      |24 months |TanzaniaChild2 |TANZANIA     |Medium   |     16|    54|
|QI      |24 months |ZVITAMBO       |ZIMBABWE     |High     |      8|   145|
|QI      |24 months |ZVITAMBO       |ZIMBABWE     |Low      |     35|   145|
|QI      |24 months |ZVITAMBO       |ZIMBABWE     |Medium   |    102|   145|


The following strata were considered:

* syntype: BC, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: 24 months, studyid: COHORTS, country: INDIA
* syntype: BC, agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* syntype: BC, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: BC, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: BC, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: 6 months, studyid: COHORTS, country: INDIA
* syntype: BC, agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* syntype: BC, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: BC, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: BC, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: BC, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: BC, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: BC, agecat: Birth, studyid: COHORTS, country: INDIA
* syntype: BC, agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* syntype: BC, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: BC, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: 24 months, studyid: COHORTS, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* syntype: FULL, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: 6 months, studyid: COHORTS, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* syntype: FULL, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: FULL, agecat: Birth, studyid: COHORTS, country: INDIA
* syntype: FULL, agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* syntype: FULL, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: FULL, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 24 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: QI, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: INDIA
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: QI, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: Birth, studyid: COHORTS, country: INDIA
* syntype: QI, agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: Birth, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* syntype: BC, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 24 months, studyid: SAS-FoodSuppl, country: INDIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


