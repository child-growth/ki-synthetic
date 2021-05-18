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

**Outcome Variable:** sstunted

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

|agecat    |studyid        |country      |feducyrs | sstunted| n_cell|     n|
|:---------|:--------------|:------------|:--------|--------:|------:|-----:|
|Birth     |COHORTS        |INDIA        |Low      |        0|    549|  1662|
|Birth     |COHORTS        |INDIA        |Low      |        1|     14|  1662|
|Birth     |COHORTS        |INDIA        |Medium   |        0|    463|  1662|
|Birth     |COHORTS        |INDIA        |Medium   |        1|     13|  1662|
|Birth     |COHORTS        |INDIA        |High     |        0|    596|  1662|
|Birth     |COHORTS        |INDIA        |High     |        1|     27|  1662|
|Birth     |COHORTS        |GUATEMALA    |Low      |        0|    376|   818|
|Birth     |COHORTS        |GUATEMALA    |Low      |        1|      7|   818|
|Birth     |COHORTS        |GUATEMALA    |Medium   |        0|    291|   818|
|Birth     |COHORTS        |GUATEMALA    |Medium   |        1|      2|   818|
|Birth     |COHORTS        |GUATEMALA    |High     |        0|    140|   818|
|Birth     |COHORTS        |GUATEMALA    |High     |        1|      2|   818|
|Birth     |COHORTS        |PHILIPPINES  |Low      |        0|    982|  2932|
|Birth     |COHORTS        |PHILIPPINES  |Low      |        1|     14|  2932|
|Birth     |COHORTS        |PHILIPPINES  |Medium   |        0|    702|  2932|
|Birth     |COHORTS        |PHILIPPINES  |Medium   |        1|     14|  2932|
|Birth     |COHORTS        |PHILIPPINES  |High     |        0|   1205|  2932|
|Birth     |COHORTS        |PHILIPPINES  |High     |        1|     15|  2932|
|Birth     |GMS-Nepal      |NEPAL        |Low      |        0|    294|   695|
|Birth     |GMS-Nepal      |NEPAL        |Low      |        1|      9|   695|
|Birth     |GMS-Nepal      |NEPAL        |Medium   |        0|    227|   695|
|Birth     |GMS-Nepal      |NEPAL        |Medium   |        1|     15|   695|
|Birth     |GMS-Nepal      |NEPAL        |High     |        0|    143|   695|
|Birth     |GMS-Nepal      |NEPAL        |High     |        1|      7|   695|
|Birth     |JiVitA-3       |BANGLADESH   |Low      |        0|   7987| 21626|
|Birth     |JiVitA-3       |BANGLADESH   |Low      |        1|    984| 21626|
|Birth     |JiVitA-3       |BANGLADESH   |Medium   |        0|   6601| 21626|
|Birth     |JiVitA-3       |BANGLADESH   |Medium   |        1|    837| 21626|
|Birth     |JiVitA-3       |BANGLADESH   |High     |        0|   4679| 21626|
|Birth     |JiVitA-3       |BANGLADESH   |High     |        1|    538| 21626|
|Birth     |JiVitA-4       |BANGLADESH   |Low      |        0|    931|  2691|
|Birth     |JiVitA-4       |BANGLADESH   |Low      |        1|     91|  2691|
|Birth     |JiVitA-4       |BANGLADESH   |Medium   |        0|    988|  2691|
|Birth     |JiVitA-4       |BANGLADESH   |Medium   |        1|     92|  2691|
|Birth     |JiVitA-4       |BANGLADESH   |High     |        0|    545|  2691|
|Birth     |JiVitA-4       |BANGLADESH   |High     |        1|     44|  2691|
|Birth     |MAL-ED         |INDIA        |Low      |        0|      4|    26|
|Birth     |MAL-ED         |INDIA        |Low      |        1|      1|    26|
|Birth     |MAL-ED         |INDIA        |Medium   |        0|      7|    26|
|Birth     |MAL-ED         |INDIA        |Medium   |        1|      1|    26|
|Birth     |MAL-ED         |INDIA        |High     |        0|     13|    26|
|Birth     |MAL-ED         |INDIA        |High     |        1|      0|    26|
|Birth     |MAL-ED         |BANGLADESH   |Low      |        0|     33|   130|
|Birth     |MAL-ED         |BANGLADESH   |Low      |        1|      2|   130|
|Birth     |MAL-ED         |BANGLADESH   |Medium   |        0|     33|   130|
|Birth     |MAL-ED         |BANGLADESH   |Medium   |        1|      1|   130|
|Birth     |MAL-ED         |BANGLADESH   |High     |        0|     58|   130|
|Birth     |MAL-ED         |BANGLADESH   |High     |        1|      3|   130|
|Birth     |MAL-ED         |PERU         |Low      |        0|     64|   223|
|Birth     |MAL-ED         |PERU         |Low      |        1|      2|   223|
|Birth     |MAL-ED         |PERU         |Medium   |        0|     73|   223|
|Birth     |MAL-ED         |PERU         |Medium   |        1|      2|   223|
|Birth     |MAL-ED         |PERU         |High     |        0|     82|   223|
|Birth     |MAL-ED         |PERU         |High     |        1|      0|   223|
|Birth     |MAL-ED         |NEPAL        |Low      |        0|      4|    10|
|Birth     |MAL-ED         |NEPAL        |Low      |        1|      0|    10|
|Birth     |MAL-ED         |NEPAL        |Medium   |        0|      1|    10|
|Birth     |MAL-ED         |NEPAL        |Medium   |        1|      1|    10|
|Birth     |MAL-ED         |NEPAL        |High     |        0|      4|    10|
|Birth     |MAL-ED         |NEPAL        |High     |        1|      0|    10|
|Birth     |MAL-ED         |TANZANIA     |Low      |        0|     29|   118|
|Birth     |MAL-ED         |TANZANIA     |Low      |        1|      1|   118|
|Birth     |MAL-ED         |TANZANIA     |Medium   |        0|     20|   118|
|Birth     |MAL-ED         |TANZANIA     |Medium   |        1|      4|   118|
|Birth     |MAL-ED         |TANZANIA     |High     |        0|     59|   118|
|Birth     |MAL-ED         |TANZANIA     |High     |        1|      5|   118|
|Birth     |MAL-ED         |SOUTH AFRICA |Low      |        0|     26|    56|
|Birth     |MAL-ED         |SOUTH AFRICA |Low      |        1|      1|    56|
|Birth     |MAL-ED         |SOUTH AFRICA |Medium   |        0|     14|    56|
|Birth     |MAL-ED         |SOUTH AFRICA |Medium   |        1|      0|    56|
|Birth     |MAL-ED         |SOUTH AFRICA |High     |        0|     14|    56|
|Birth     |MAL-ED         |SOUTH AFRICA |High     |        1|      1|    56|
|Birth     |NIH-Crypto     |BANGLADESH   |Low      |        0|    197|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |Low      |        1|      2|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |Medium   |        0|    183|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |Medium   |        1|      3|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |High     |        0|    342|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |High     |        1|      5|   732|
|Birth     |PROBIT         |BELARUS      |Low      |        0|   5297| 13441|
|Birth     |PROBIT         |BELARUS      |Low      |        1|      4| 13441|
|Birth     |PROBIT         |BELARUS      |Medium   |        0|   5950| 13441|
|Birth     |PROBIT         |BELARUS      |Medium   |        1|      1| 13441|
|Birth     |PROBIT         |BELARUS      |High     |        0|   2189| 13441|
|Birth     |PROBIT         |BELARUS      |High     |        1|      0| 13441|
|Birth     |PROVIDE        |BANGLADESH   |Low      |        0|    178|   539|
|Birth     |PROVIDE        |BANGLADESH   |Low      |        1|      2|   539|
|Birth     |PROVIDE        |BANGLADESH   |Medium   |        0|    179|   539|
|Birth     |PROVIDE        |BANGLADESH   |Medium   |        1|      0|   539|
|Birth     |PROVIDE        |BANGLADESH   |High     |        0|    178|   539|
|Birth     |PROVIDE        |BANGLADESH   |High     |        1|      2|   539|
|Birth     |SAS-CompFeed   |INDIA        |Low      |        0|    479|  1250|
|Birth     |SAS-CompFeed   |INDIA        |Low      |        1|     43|  1250|
|Birth     |SAS-CompFeed   |INDIA        |Medium   |        0|    389|  1250|
|Birth     |SAS-CompFeed   |INDIA        |Medium   |        1|     21|  1250|
|Birth     |SAS-CompFeed   |INDIA        |High     |        0|    292|  1250|
|Birth     |SAS-CompFeed   |INDIA        |High     |        1|     26|  1250|
|Birth     |ZVITAMBO       |ZIMBABWE     |Low      |        0|   1949| 13336|
|Birth     |ZVITAMBO       |ZIMBABWE     |Low      |        1|     55| 13336|
|Birth     |ZVITAMBO       |ZIMBABWE     |Medium   |        0|   9951| 13336|
|Birth     |ZVITAMBO       |ZIMBABWE     |Medium   |        1|    338| 13336|
|Birth     |ZVITAMBO       |ZIMBABWE     |High     |        0|   1012| 13336|
|Birth     |ZVITAMBO       |ZIMBABWE     |High     |        1|     31| 13336|
|6 months  |COHORTS        |INDIA        |Low      |        0|    542|  1690|
|6 months  |COHORTS        |INDIA        |Low      |        1|     38|  1690|
|6 months  |COHORTS        |INDIA        |Medium   |        0|    460|  1690|
|6 months  |COHORTS        |INDIA        |Medium   |        1|     18|  1690|
|6 months  |COHORTS        |INDIA        |High     |        0|    604|  1690|
|6 months  |COHORTS        |INDIA        |High     |        1|     28|  1690|
|6 months  |COHORTS        |GUATEMALA    |Low      |        0|    376|   916|
|6 months  |COHORTS        |GUATEMALA    |Low      |        1|     60|   916|
|6 months  |COHORTS        |GUATEMALA    |Medium   |        0|    290|   916|
|6 months  |COHORTS        |GUATEMALA    |Medium   |        1|     36|   916|
|6 months  |COHORTS        |GUATEMALA    |High     |        0|    135|   916|
|6 months  |COHORTS        |GUATEMALA    |High     |        1|     19|   916|
|6 months  |COHORTS        |PHILIPPINES  |Low      |        0|    841|  2608|
|6 months  |COHORTS        |PHILIPPINES  |Low      |        1|     53|  2608|
|6 months  |COHORTS        |PHILIPPINES  |Medium   |        0|    630|  2608|
|6 months  |COHORTS        |PHILIPPINES  |Medium   |        1|     33|  2608|
|6 months  |COHORTS        |PHILIPPINES  |High     |        0|   1008|  2608|
|6 months  |COHORTS        |PHILIPPINES  |High     |        1|     43|  2608|
|6 months  |GMS-Nepal      |NEPAL        |Low      |        0|    236|   563|
|6 months  |GMS-Nepal      |NEPAL        |Low      |        1|     11|   563|
|6 months  |GMS-Nepal      |NEPAL        |Medium   |        0|    197|   563|
|6 months  |GMS-Nepal      |NEPAL        |Medium   |        1|      6|   563|
|6 months  |GMS-Nepal      |NEPAL        |High     |        0|    109|   563|
|6 months  |GMS-Nepal      |NEPAL        |High     |        1|      4|   563|
|6 months  |JiVitA-3       |BANGLADESH   |Low      |        0|   6026| 16126|
|6 months  |JiVitA-3       |BANGLADESH   |Low      |        1|    402| 16126|
|6 months  |JiVitA-3       |BANGLADESH   |Medium   |        0|   5240| 16126|
|6 months  |JiVitA-3       |BANGLADESH   |Medium   |        1|    350| 16126|
|6 months  |JiVitA-3       |BANGLADESH   |High     |        0|   3886| 16126|
|6 months  |JiVitA-3       |BANGLADESH   |High     |        1|    222| 16126|
|6 months  |JiVitA-4       |BANGLADESH   |Low      |        0|   1620|  4599|
|6 months  |JiVitA-4       |BANGLADESH   |Low      |        1|    105|  4599|
|6 months  |JiVitA-4       |BANGLADESH   |Medium   |        0|   1701|  4599|
|6 months  |JiVitA-4       |BANGLADESH   |Medium   |        1|    109|  4599|
|6 months  |JiVitA-4       |BANGLADESH   |High     |        0|   1016|  4599|
|6 months  |JiVitA-4       |BANGLADESH   |High     |        1|     48|  4599|
|6 months  |LCNI-5         |MALAWI       |Low      |        0|    259|   827|
|6 months  |LCNI-5         |MALAWI       |Low      |        1|     22|   827|
|6 months  |LCNI-5         |MALAWI       |Medium   |        0|    266|   827|
|6 months  |LCNI-5         |MALAWI       |Medium   |        1|     29|   827|
|6 months  |LCNI-5         |MALAWI       |High     |        0|    232|   827|
|6 months  |LCNI-5         |MALAWI       |High     |        1|     19|   827|
|6 months  |MAL-ED         |INDIA        |Low      |        0|     31|   119|
|6 months  |MAL-ED         |INDIA        |Low      |        1|      3|   119|
|6 months  |MAL-ED         |INDIA        |Medium   |        0|     33|   119|
|6 months  |MAL-ED         |INDIA        |Medium   |        1|      1|   119|
|6 months  |MAL-ED         |INDIA        |High     |        0|     50|   119|
|6 months  |MAL-ED         |INDIA        |High     |        1|      1|   119|
|6 months  |MAL-ED         |BANGLADESH   |Low      |        0|     36|   136|
|6 months  |MAL-ED         |BANGLADESH   |Low      |        1|      1|   136|
|6 months  |MAL-ED         |BANGLADESH   |Medium   |        0|     34|   136|
|6 months  |MAL-ED         |BANGLADESH   |Medium   |        1|      2|   136|
|6 months  |MAL-ED         |BANGLADESH   |High     |        0|     62|   136|
|6 months  |MAL-ED         |BANGLADESH   |High     |        1|      1|   136|
|6 months  |MAL-ED         |PERU         |Low      |        0|     78|   262|
|6 months  |MAL-ED         |PERU         |Low      |        1|      2|   262|
|6 months  |MAL-ED         |PERU         |Medium   |        0|     75|   262|
|6 months  |MAL-ED         |PERU         |Medium   |        1|      5|   262|
|6 months  |MAL-ED         |PERU         |High     |        0|    100|   262|
|6 months  |MAL-ED         |PERU         |High     |        1|      2|   262|
|6 months  |MAL-ED         |NEPAL        |Low      |        0|     21|    79|
|6 months  |MAL-ED         |NEPAL        |Low      |        1|      0|    79|
|6 months  |MAL-ED         |NEPAL        |Medium   |        0|     24|    79|
|6 months  |MAL-ED         |NEPAL        |Medium   |        1|      0|    79|
|6 months  |MAL-ED         |NEPAL        |High     |        0|     34|    79|
|6 months  |MAL-ED         |NEPAL        |High     |        1|      0|    79|
|6 months  |MAL-ED         |TANZANIA     |Low      |        0|     55|   232|
|6 months  |MAL-ED         |TANZANIA     |Low      |        1|      5|   232|
|6 months  |MAL-ED         |TANZANIA     |Medium   |        0|     49|   232|
|6 months  |MAL-ED         |TANZANIA     |Medium   |        1|      2|   232|
|6 months  |MAL-ED         |TANZANIA     |High     |        0|    114|   232|
|6 months  |MAL-ED         |TANZANIA     |High     |        1|      7|   232|
|6 months  |MAL-ED         |SOUTH AFRICA |Low      |        0|     53|   116|
|6 months  |MAL-ED         |SOUTH AFRICA |Low      |        1|      4|   116|
|6 months  |MAL-ED         |SOUTH AFRICA |Medium   |        0|     24|   116|
|6 months  |MAL-ED         |SOUTH AFRICA |Medium   |        1|      1|   116|
|6 months  |MAL-ED         |SOUTH AFRICA |High     |        0|     34|   116|
|6 months  |MAL-ED         |SOUTH AFRICA |High     |        1|      0|   116|
|6 months  |NIH-Crypto     |BANGLADESH   |Low      |        0|    186|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Low      |        1|      5|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Medium   |        0|    181|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Medium   |        1|      6|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |High     |        0|    325|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |High     |        1|     12|   715|
|6 months  |PROBIT         |BELARUS      |Low      |        0|   5914| 15235|
|6 months  |PROBIT         |BELARUS      |Low      |        1|     86| 15235|
|6 months  |PROBIT         |BELARUS      |Medium   |        0|   6627| 15235|
|6 months  |PROBIT         |BELARUS      |Medium   |        1|     62| 15235|
|6 months  |PROBIT         |BELARUS      |High     |        0|   2523| 15235|
|6 months  |PROBIT         |BELARUS      |High     |        1|     23| 15235|
|6 months  |PROVIDE        |BANGLADESH   |Low      |        0|    191|   604|
|6 months  |PROVIDE        |BANGLADESH   |Low      |        1|      7|   604|
|6 months  |PROVIDE        |BANGLADESH   |Medium   |        0|    198|   604|
|6 months  |PROVIDE        |BANGLADESH   |Medium   |        1|      4|   604|
|6 months  |PROVIDE        |BANGLADESH   |High     |        0|    201|   604|
|6 months  |PROVIDE        |BANGLADESH   |High     |        1|      3|   604|
|6 months  |SAS-CompFeed   |INDIA        |Low      |        0|    502|  1335|
|6 months  |SAS-CompFeed   |INDIA        |Low      |        1|     54|  1335|
|6 months  |SAS-CompFeed   |INDIA        |Medium   |        0|    387|  1335|
|6 months  |SAS-CompFeed   |INDIA        |Medium   |        1|     45|  1335|
|6 months  |SAS-CompFeed   |INDIA        |High     |        0|    318|  1335|
|6 months  |SAS-CompFeed   |INDIA        |High     |        1|     29|  1335|
|6 months  |SAS-FoodSuppl  |INDIA        |Low      |        0|    123|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |Low      |        1|     20|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |Medium   |        0|    117|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |Medium   |        1|     23|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |High     |        0|     86|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |High     |        1|     11|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |Low      |        0|   1041|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |Low      |        1|     11|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |Medium   |        0|    574|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |Medium   |        1|      5|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |High     |        0|    395|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |High     |        1|      3|  2029|
|6 months  |ZVITAMBO       |ZIMBABWE     |Low      |        0|   1229|  8390|
|6 months  |ZVITAMBO       |ZIMBABWE     |Low      |        1|     61|  8390|
|6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |        0|   6225|  8390|
|6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |        1|    259|  8390|
|6 months  |ZVITAMBO       |ZIMBABWE     |High     |        0|    594|  8390|
|6 months  |ZVITAMBO       |ZIMBABWE     |High     |        1|     22|  8390|
|24 months |COHORTS        |INDIA        |Low      |        0|    338|  1371|
|24 months |COHORTS        |INDIA        |Low      |        1|    127|  1371|
|24 months |COHORTS        |INDIA        |Medium   |        0|    298|  1371|
|24 months |COHORTS        |INDIA        |Medium   |        1|     94|  1371|
|24 months |COHORTS        |INDIA        |High     |        0|    407|  1371|
|24 months |COHORTS        |INDIA        |High     |        1|    107|  1371|
|24 months |COHORTS        |GUATEMALA    |Low      |        0|    238|  1016|
|24 months |COHORTS        |GUATEMALA    |Low      |        1|    250|  1016|
|24 months |COHORTS        |GUATEMALA    |Medium   |        0|    195|  1016|
|24 months |COHORTS        |GUATEMALA    |Medium   |        1|    165|  1016|
|24 months |COHORTS        |GUATEMALA    |High     |        0|     87|  1016|
|24 months |COHORTS        |GUATEMALA    |High     |        1|     81|  1016|
|24 months |COHORTS        |PHILIPPINES  |Low      |        0|    502|  2354|
|24 months |COHORTS        |PHILIPPINES  |Low      |        1|    309|  2354|
|24 months |COHORTS        |PHILIPPINES  |Medium   |        0|    399|  2354|
|24 months |COHORTS        |PHILIPPINES  |Medium   |        1|    194|  2354|
|24 months |COHORTS        |PHILIPPINES  |High     |        0|    758|  2354|
|24 months |COHORTS        |PHILIPPINES  |High     |        1|    192|  2354|
|24 months |GMS-Nepal      |NEPAL        |Low      |        0|    200|   487|
|24 months |GMS-Nepal      |NEPAL        |Low      |        1|     18|   487|
|24 months |GMS-Nepal      |NEPAL        |Medium   |        0|    152|   487|
|24 months |GMS-Nepal      |NEPAL        |Medium   |        1|     22|   487|
|24 months |GMS-Nepal      |NEPAL        |High     |        0|     82|   487|
|24 months |GMS-Nepal      |NEPAL        |High     |        1|     13|   487|
|24 months |JiVitA-3       |BANGLADESH   |Low      |        0|   2740|  8271|
|24 months |JiVitA-3       |BANGLADESH   |Low      |        1|    570|  8271|
|24 months |JiVitA-3       |BANGLADESH   |Medium   |        0|   2435|  8271|
|24 months |JiVitA-3       |BANGLADESH   |Medium   |        1|    461|  8271|
|24 months |JiVitA-3       |BANGLADESH   |High     |        0|   1794|  8271|
|24 months |JiVitA-3       |BANGLADESH   |High     |        1|    271|  8271|
|24 months |JiVitA-4       |BANGLADESH   |Low      |        0|   1496|  4521|
|24 months |JiVitA-4       |BANGLADESH   |Low      |        1|    151|  4521|
|24 months |JiVitA-4       |BANGLADESH   |Medium   |        0|   1633|  4521|
|24 months |JiVitA-4       |BANGLADESH   |Medium   |        1|    178|  4521|
|24 months |JiVitA-4       |BANGLADESH   |High     |        0|    965|  4521|
|24 months |JiVitA-4       |BANGLADESH   |High     |        1|     98|  4521|
|24 months |LCNI-5         |MALAWI       |Low      |        0|    185|   573|
|24 months |LCNI-5         |MALAWI       |Low      |        1|     23|   573|
|24 months |LCNI-5         |MALAWI       |Medium   |        0|    178|   573|
|24 months |LCNI-5         |MALAWI       |Medium   |        1|     26|   573|
|24 months |LCNI-5         |MALAWI       |High     |        0|    140|   573|
|24 months |LCNI-5         |MALAWI       |High     |        1|     21|   573|
|24 months |MAL-ED         |INDIA        |Low      |        0|     27|   114|
|24 months |MAL-ED         |INDIA        |Low      |        1|      7|   114|
|24 months |MAL-ED         |INDIA        |Medium   |        0|     24|   114|
|24 months |MAL-ED         |INDIA        |Medium   |        1|      8|   114|
|24 months |MAL-ED         |INDIA        |High     |        0|     43|   114|
|24 months |MAL-ED         |INDIA        |High     |        1|      5|   114|
|24 months |MAL-ED         |BANGLADESH   |Low      |        0|     27|   124|
|24 months |MAL-ED         |BANGLADESH   |Low      |        1|      6|   124|
|24 months |MAL-ED         |BANGLADESH   |Medium   |        0|     26|   124|
|24 months |MAL-ED         |BANGLADESH   |Medium   |        1|      6|   124|
|24 months |MAL-ED         |BANGLADESH   |High     |        0|     50|   124|
|24 months |MAL-ED         |BANGLADESH   |High     |        1|      9|   124|
|24 months |MAL-ED         |PERU         |Low      |        0|     48|   193|
|24 months |MAL-ED         |PERU         |Low      |        1|      5|   193|
|24 months |MAL-ED         |PERU         |Medium   |        0|     55|   193|
|24 months |MAL-ED         |PERU         |Medium   |        1|      3|   193|
|24 months |MAL-ED         |PERU         |High     |        0|     76|   193|
|24 months |MAL-ED         |PERU         |High     |        1|      6|   193|
|24 months |MAL-ED         |NEPAL        |Low      |        0|     20|    77|
|24 months |MAL-ED         |NEPAL        |Low      |        1|      0|    77|
|24 months |MAL-ED         |NEPAL        |Medium   |        0|     22|    77|
|24 months |MAL-ED         |NEPAL        |Medium   |        1|      2|    77|
|24 months |MAL-ED         |NEPAL        |High     |        0|     33|    77|
|24 months |MAL-ED         |NEPAL        |High     |        1|      0|    77|
|24 months |MAL-ED         |TANZANIA     |Low      |        0|     36|   202|
|24 months |MAL-ED         |TANZANIA     |Low      |        1|     19|   202|
|24 months |MAL-ED         |TANZANIA     |Medium   |        0|     25|   202|
|24 months |MAL-ED         |TANZANIA     |Medium   |        1|     14|   202|
|24 months |MAL-ED         |TANZANIA     |High     |        0|     76|   202|
|24 months |MAL-ED         |TANZANIA     |High     |        1|     32|   202|
|24 months |MAL-ED         |SOUTH AFRICA |Low      |        0|     46|   109|
|24 months |MAL-ED         |SOUTH AFRICA |Low      |        1|      7|   109|
|24 months |MAL-ED         |SOUTH AFRICA |Medium   |        0|     21|   109|
|24 months |MAL-ED         |SOUTH AFRICA |Medium   |        1|      2|   109|
|24 months |MAL-ED         |SOUTH AFRICA |High     |        0|     29|   109|
|24 months |MAL-ED         |SOUTH AFRICA |High     |        1|      4|   109|
|24 months |NIH-Crypto     |BANGLADESH   |Low      |        0|    128|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Low      |        1|      9|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Medium   |        0|    119|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Medium   |        1|     10|   514|
|24 months |NIH-Crypto     |BANGLADESH   |High     |        0|    231|   514|
|24 months |NIH-Crypto     |BANGLADESH   |High     |        1|     17|   514|
|24 months |PROBIT         |BELARUS      |Low      |        0|   1496|  3899|
|24 months |PROBIT         |BELARUS      |Low      |        1|     25|  3899|
|24 months |PROBIT         |BELARUS      |Medium   |        0|   1704|  3899|
|24 months |PROBIT         |BELARUS      |Medium   |        1|     26|  3899|
|24 months |PROBIT         |BELARUS      |High     |        0|    637|  3899|
|24 months |PROBIT         |BELARUS      |High     |        1|     11|  3899|
|24 months |PROVIDE        |BANGLADESH   |Low      |        0|    173|   578|
|24 months |PROVIDE        |BANGLADESH   |Low      |        1|     20|   578|
|24 months |PROVIDE        |BANGLADESH   |Medium   |        0|    174|   578|
|24 months |PROVIDE        |BANGLADESH   |Medium   |        1|     18|   578|
|24 months |PROVIDE        |BANGLADESH   |High     |        0|    179|   578|
|24 months |PROVIDE        |BANGLADESH   |High     |        1|     14|   578|
|24 months |TanzaniaChild2 |TANZANIA     |Low      |        0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Low      |        1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Medium   |        0|      3|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Medium   |        1|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |High     |        0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |High     |        1|      0|     6|
|24 months |ZVITAMBO       |ZIMBABWE     |Low      |        0|    235|  1588|
|24 months |ZVITAMBO       |ZIMBABWE     |Low      |        1|     23|  1588|
|24 months |ZVITAMBO       |ZIMBABWE     |Medium   |        0|   1086|  1588|
|24 months |ZVITAMBO       |ZIMBABWE     |Medium   |        1|    137|  1588|
|24 months |ZVITAMBO       |ZIMBABWE     |High     |        0|     95|  1588|
|24 months |ZVITAMBO       |ZIMBABWE     |High     |        1|     12|  1588|


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

* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


