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

**Outcome Variable:** swasted

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

|agecat    |studyid        |country      |feducyrs | swasted| n_cell|     n|
|:---------|:--------------|:------------|:--------|-------:|------:|-----:|
|Birth     |COHORTS        |INDIA        |Low      |       0|    507|  1550|
|Birth     |COHORTS        |INDIA        |Low      |       1|     20|  1550|
|Birth     |COHORTS        |INDIA        |Medium   |       0|    425|  1550|
|Birth     |COHORTS        |INDIA        |Medium   |       1|     20|  1550|
|Birth     |COHORTS        |INDIA        |High     |       0|    542|  1550|
|Birth     |COHORTS        |INDIA        |High     |       1|     36|  1550|
|Birth     |COHORTS        |GUATEMALA    |Low      |       0|    304|   728|
|Birth     |COHORTS        |GUATEMALA    |Low      |       1|     27|   728|
|Birth     |COHORTS        |GUATEMALA    |Medium   |       0|    245|   728|
|Birth     |COHORTS        |GUATEMALA    |Medium   |       1|     23|   728|
|Birth     |COHORTS        |GUATEMALA    |High     |       0|    121|   728|
|Birth     |COHORTS        |GUATEMALA    |High     |       1|      8|   728|
|Birth     |COHORTS        |PHILIPPINES  |Low      |       0|    906|  2787|
|Birth     |COHORTS        |PHILIPPINES  |Low      |       1|     34|  2787|
|Birth     |COHORTS        |PHILIPPINES  |Medium   |       0|    651|  2787|
|Birth     |COHORTS        |PHILIPPINES  |Medium   |       1|     28|  2787|
|Birth     |COHORTS        |PHILIPPINES  |High     |       0|   1113|  2787|
|Birth     |COHORTS        |PHILIPPINES  |High     |       1|     55|  2787|
|Birth     |GMS-Nepal      |NEPAL        |Low      |       0|    268|   640|
|Birth     |GMS-Nepal      |NEPAL        |Low      |       1|     16|   640|
|Birth     |GMS-Nepal      |NEPAL        |Medium   |       0|    212|   640|
|Birth     |GMS-Nepal      |NEPAL        |Medium   |       1|      5|   640|
|Birth     |GMS-Nepal      |NEPAL        |High     |       0|    133|   640|
|Birth     |GMS-Nepal      |NEPAL        |High     |       1|      6|   640|
|Birth     |JiVitA-3       |BANGLADESH   |Low      |       0|   7025| 17355|
|Birth     |JiVitA-3       |BANGLADESH   |Low      |       1|    138| 17355|
|Birth     |JiVitA-3       |BANGLADESH   |Medium   |       0|   5831| 17355|
|Birth     |JiVitA-3       |BANGLADESH   |Medium   |       1|    125| 17355|
|Birth     |JiVitA-3       |BANGLADESH   |High     |       0|   4162| 17355|
|Birth     |JiVitA-3       |BANGLADESH   |High     |       1|     74| 17355|
|Birth     |JiVitA-4       |BANGLADESH   |Low      |       0|    865|  2285|
|Birth     |JiVitA-4       |BANGLADESH   |Low      |       1|      7|  2285|
|Birth     |JiVitA-4       |BANGLADESH   |Medium   |       0|    901|  2285|
|Birth     |JiVitA-4       |BANGLADESH   |Medium   |       1|     15|  2285|
|Birth     |JiVitA-4       |BANGLADESH   |High     |       0|    488|  2285|
|Birth     |JiVitA-4       |BANGLADESH   |High     |       1|      9|  2285|
|Birth     |MAL-ED         |INDIA        |Low      |       0|      4|    24|
|Birth     |MAL-ED         |INDIA        |Low      |       1|      0|    24|
|Birth     |MAL-ED         |INDIA        |Medium   |       0|      7|    24|
|Birth     |MAL-ED         |INDIA        |Medium   |       1|      0|    24|
|Birth     |MAL-ED         |INDIA        |High     |       0|     13|    24|
|Birth     |MAL-ED         |INDIA        |High     |       1|      0|    24|
|Birth     |MAL-ED         |BANGLADESH   |Low      |       0|     32|   120|
|Birth     |MAL-ED         |BANGLADESH   |Low      |       1|      0|   120|
|Birth     |MAL-ED         |BANGLADESH   |Medium   |       0|     27|   120|
|Birth     |MAL-ED         |BANGLADESH   |Medium   |       1|      4|   120|
|Birth     |MAL-ED         |BANGLADESH   |High     |       0|     56|   120|
|Birth     |MAL-ED         |BANGLADESH   |High     |       1|      1|   120|
|Birth     |MAL-ED         |PERU         |Low      |       0|     64|   218|
|Birth     |MAL-ED         |PERU         |Low      |       1|      0|   218|
|Birth     |MAL-ED         |PERU         |Medium   |       0|     74|   218|
|Birth     |MAL-ED         |PERU         |Medium   |       1|      0|   218|
|Birth     |MAL-ED         |PERU         |High     |       0|     80|   218|
|Birth     |MAL-ED         |PERU         |High     |       1|      0|   218|
|Birth     |MAL-ED         |NEPAL        |Low      |       0|      4|     9|
|Birth     |MAL-ED         |NEPAL        |Low      |       1|      0|     9|
|Birth     |MAL-ED         |NEPAL        |Medium   |       0|      1|     9|
|Birth     |MAL-ED         |NEPAL        |Medium   |       1|      0|     9|
|Birth     |MAL-ED         |NEPAL        |High     |       0|      3|     9|
|Birth     |MAL-ED         |NEPAL        |High     |       1|      1|     9|
|Birth     |MAL-ED         |TANZANIA     |Low      |       0|     29|   108|
|Birth     |MAL-ED         |TANZANIA     |Low      |       1|      0|   108|
|Birth     |MAL-ED         |TANZANIA     |Medium   |       0|     20|   108|
|Birth     |MAL-ED         |TANZANIA     |Medium   |       1|      0|   108|
|Birth     |MAL-ED         |TANZANIA     |High     |       0|     59|   108|
|Birth     |MAL-ED         |TANZANIA     |High     |       1|      0|   108|
|Birth     |MAL-ED         |SOUTH AFRICA |Low      |       0|     26|    53|
|Birth     |MAL-ED         |SOUTH AFRICA |Low      |       1|      0|    53|
|Birth     |MAL-ED         |SOUTH AFRICA |Medium   |       0|     14|    53|
|Birth     |MAL-ED         |SOUTH AFRICA |Medium   |       1|      0|    53|
|Birth     |MAL-ED         |SOUTH AFRICA |High     |       0|     13|    53|
|Birth     |MAL-ED         |SOUTH AFRICA |High     |       1|      0|    53|
|Birth     |NIH-Crypto     |BANGLADESH   |Low      |       0|    177|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |Low      |       1|     16|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |Medium   |       0|    163|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |Medium   |       1|     12|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |High     |       0|    320|   707|
|Birth     |NIH-Crypto     |BANGLADESH   |High     |       1|     19|   707|
|Birth     |PROBIT         |BELARUS      |Low      |       0|   4918| 13366|
|Birth     |PROBIT         |BELARUS      |Low      |       1|    347| 13366|
|Birth     |PROBIT         |BELARUS      |Medium   |       0|   5522| 13366|
|Birth     |PROBIT         |BELARUS      |Medium   |       1|    401| 13366|
|Birth     |PROBIT         |BELARUS      |High     |       0|   2040| 13366|
|Birth     |PROBIT         |BELARUS      |High     |       1|    138| 13366|
|Birth     |PROVIDE        |BANGLADESH   |Low      |       0|    170|   532|
|Birth     |PROVIDE        |BANGLADESH   |Low      |       1|      7|   532|
|Birth     |PROVIDE        |BANGLADESH   |Medium   |       0|    174|   532|
|Birth     |PROVIDE        |BANGLADESH   |Medium   |       1|      4|   532|
|Birth     |PROVIDE        |BANGLADESH   |High     |       0|    175|   532|
|Birth     |PROVIDE        |BANGLADESH   |High     |       1|      2|   532|
|Birth     |SAS-CompFeed   |INDIA        |Low      |       0|    439|  1102|
|Birth     |SAS-CompFeed   |INDIA        |Low      |       1|     14|  1102|
|Birth     |SAS-CompFeed   |INDIA        |Medium   |       0|    365|  1102|
|Birth     |SAS-CompFeed   |INDIA        |Medium   |       1|      7|  1102|
|Birth     |SAS-CompFeed   |INDIA        |High     |       0|    269|  1102|
|Birth     |SAS-CompFeed   |INDIA        |High     |       1|      8|  1102|
|Birth     |ZVITAMBO       |ZIMBABWE     |Low      |       0|   1771| 12420|
|Birth     |ZVITAMBO       |ZIMBABWE     |Low      |       1|    112| 12420|
|Birth     |ZVITAMBO       |ZIMBABWE     |Medium   |       0|   8982| 12420|
|Birth     |ZVITAMBO       |ZIMBABWE     |Medium   |       1|    582| 12420|
|Birth     |ZVITAMBO       |ZIMBABWE     |High     |       0|    914| 12420|
|Birth     |ZVITAMBO       |ZIMBABWE     |High     |       1|     59| 12420|
|6 months  |COHORTS        |INDIA        |Low      |       0|    556|  1687|
|6 months  |COHORTS        |INDIA        |Low      |       1|     22|  1687|
|6 months  |COHORTS        |INDIA        |Medium   |       0|    464|  1687|
|6 months  |COHORTS        |INDIA        |Medium   |       1|     13|  1687|
|6 months  |COHORTS        |INDIA        |High     |       0|    607|  1687|
|6 months  |COHORTS        |INDIA        |High     |       1|     25|  1687|
|6 months  |COHORTS        |GUATEMALA    |Low      |       0|    435|   918|
|6 months  |COHORTS        |GUATEMALA    |Low      |       1|      2|   918|
|6 months  |COHORTS        |GUATEMALA    |Medium   |       0|    325|   918|
|6 months  |COHORTS        |GUATEMALA    |Medium   |       1|      2|   918|
|6 months  |COHORTS        |GUATEMALA    |High     |       0|    153|   918|
|6 months  |COHORTS        |GUATEMALA    |High     |       1|      1|   918|
|6 months  |COHORTS        |PHILIPPINES  |Low      |       0|    881|  2606|
|6 months  |COHORTS        |PHILIPPINES  |Low      |       1|     11|  2606|
|6 months  |COHORTS        |PHILIPPINES  |Medium   |       0|    652|  2606|
|6 months  |COHORTS        |PHILIPPINES  |Medium   |       1|     11|  2606|
|6 months  |COHORTS        |PHILIPPINES  |High     |       0|   1038|  2606|
|6 months  |COHORTS        |PHILIPPINES  |High     |       1|     13|  2606|
|6 months  |GMS-Nepal      |NEPAL        |Low      |       0|    243|   563|
|6 months  |GMS-Nepal      |NEPAL        |Low      |       1|      4|   563|
|6 months  |GMS-Nepal      |NEPAL        |Medium   |       0|    202|   563|
|6 months  |GMS-Nepal      |NEPAL        |Medium   |       1|      1|   563|
|6 months  |GMS-Nepal      |NEPAL        |High     |       0|    111|   563|
|6 months  |GMS-Nepal      |NEPAL        |High     |       1|      2|   563|
|6 months  |JiVitA-3       |BANGLADESH   |Low      |       0|   6330| 16100|
|6 months  |JiVitA-3       |BANGLADESH   |Low      |       1|     88| 16100|
|6 months  |JiVitA-3       |BANGLADESH   |Medium   |       0|   5506| 16100|
|6 months  |JiVitA-3       |BANGLADESH   |Medium   |       1|     74| 16100|
|6 months  |JiVitA-3       |BANGLADESH   |High     |       0|   4047| 16100|
|6 months  |JiVitA-3       |BANGLADESH   |High     |       1|     55| 16100|
|6 months  |JiVitA-4       |BANGLADESH   |Low      |       0|   1717|  4601|
|6 months  |JiVitA-4       |BANGLADESH   |Low      |       1|      7|  4601|
|6 months  |JiVitA-4       |BANGLADESH   |Medium   |       0|   1797|  4601|
|6 months  |JiVitA-4       |BANGLADESH   |Medium   |       1|     15|  4601|
|6 months  |JiVitA-4       |BANGLADESH   |High     |       0|   1058|  4601|
|6 months  |JiVitA-4       |BANGLADESH   |High     |       1|      7|  4601|
|6 months  |LCNI-5         |MALAWI       |Low      |       0|    281|   827|
|6 months  |LCNI-5         |MALAWI       |Low      |       1|      0|   827|
|6 months  |LCNI-5         |MALAWI       |Medium   |       0|    295|   827|
|6 months  |LCNI-5         |MALAWI       |Medium   |       1|      0|   827|
|6 months  |LCNI-5         |MALAWI       |High     |       0|    251|   827|
|6 months  |LCNI-5         |MALAWI       |High     |       1|      0|   827|
|6 months  |MAL-ED         |INDIA        |Low      |       0|     31|   119|
|6 months  |MAL-ED         |INDIA        |Low      |       1|      3|   119|
|6 months  |MAL-ED         |INDIA        |Medium   |       0|     33|   119|
|6 months  |MAL-ED         |INDIA        |Medium   |       1|      1|   119|
|6 months  |MAL-ED         |INDIA        |High     |       0|     51|   119|
|6 months  |MAL-ED         |INDIA        |High     |       1|      0|   119|
|6 months  |MAL-ED         |BANGLADESH   |Low      |       0|     37|   136|
|6 months  |MAL-ED         |BANGLADESH   |Low      |       1|      0|   136|
|6 months  |MAL-ED         |BANGLADESH   |Medium   |       0|     36|   136|
|6 months  |MAL-ED         |BANGLADESH   |Medium   |       1|      0|   136|
|6 months  |MAL-ED         |BANGLADESH   |High     |       0|     63|   136|
|6 months  |MAL-ED         |BANGLADESH   |High     |       1|      0|   136|
|6 months  |MAL-ED         |PERU         |Low      |       0|     80|   262|
|6 months  |MAL-ED         |PERU         |Low      |       1|      0|   262|
|6 months  |MAL-ED         |PERU         |Medium   |       0|     80|   262|
|6 months  |MAL-ED         |PERU         |Medium   |       1|      0|   262|
|6 months  |MAL-ED         |PERU         |High     |       0|    102|   262|
|6 months  |MAL-ED         |PERU         |High     |       1|      0|   262|
|6 months  |MAL-ED         |NEPAL        |Low      |       0|     21|    79|
|6 months  |MAL-ED         |NEPAL        |Low      |       1|      0|    79|
|6 months  |MAL-ED         |NEPAL        |Medium   |       0|     24|    79|
|6 months  |MAL-ED         |NEPAL        |Medium   |       1|      0|    79|
|6 months  |MAL-ED         |NEPAL        |High     |       0|     34|    79|
|6 months  |MAL-ED         |NEPAL        |High     |       1|      0|    79|
|6 months  |MAL-ED         |TANZANIA     |Low      |       0|     60|   232|
|6 months  |MAL-ED         |TANZANIA     |Low      |       1|      0|   232|
|6 months  |MAL-ED         |TANZANIA     |Medium   |       0|     51|   232|
|6 months  |MAL-ED         |TANZANIA     |Medium   |       1|      0|   232|
|6 months  |MAL-ED         |TANZANIA     |High     |       0|    121|   232|
|6 months  |MAL-ED         |TANZANIA     |High     |       1|      0|   232|
|6 months  |MAL-ED         |SOUTH AFRICA |Low      |       0|     57|   116|
|6 months  |MAL-ED         |SOUTH AFRICA |Low      |       1|      0|   116|
|6 months  |MAL-ED         |SOUTH AFRICA |Medium   |       0|     25|   116|
|6 months  |MAL-ED         |SOUTH AFRICA |Medium   |       1|      0|   116|
|6 months  |MAL-ED         |SOUTH AFRICA |High     |       0|     34|   116|
|6 months  |MAL-ED         |SOUTH AFRICA |High     |       1|      0|   116|
|6 months  |NIH-Crypto     |BANGLADESH   |Low      |       0|    191|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Low      |       1|      0|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Medium   |       0|    187|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Medium   |       1|      0|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |High     |       0|    337|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |High     |       1|      0|   715|
|6 months  |PROBIT         |BELARUS      |Low      |       0|   5995| 15232|
|6 months  |PROBIT         |BELARUS      |Low      |       1|      2| 15232|
|6 months  |PROBIT         |BELARUS      |Medium   |       0|   6685| 15232|
|6 months  |PROBIT         |BELARUS      |Medium   |       1|      5| 15232|
|6 months  |PROBIT         |BELARUS      |High     |       0|   2543| 15232|
|6 months  |PROBIT         |BELARUS      |High     |       1|      2| 15232|
|6 months  |PROVIDE        |BANGLADESH   |Low      |       0|    198|   603|
|6 months  |PROVIDE        |BANGLADESH   |Low      |       1|      0|   603|
|6 months  |PROVIDE        |BANGLADESH   |Medium   |       0|    198|   603|
|6 months  |PROVIDE        |BANGLADESH   |Medium   |       1|      3|   603|
|6 months  |PROVIDE        |BANGLADESH   |High     |       0|    202|   603|
|6 months  |PROVIDE        |BANGLADESH   |High     |       1|      2|   603|
|6 months  |SAS-CompFeed   |INDIA        |Low      |       0|    535|  1333|
|6 months  |SAS-CompFeed   |INDIA        |Low      |       1|     20|  1333|
|6 months  |SAS-CompFeed   |INDIA        |Medium   |       0|    421|  1333|
|6 months  |SAS-CompFeed   |INDIA        |Medium   |       1|      9|  1333|
|6 months  |SAS-CompFeed   |INDIA        |High     |       0|    335|  1333|
|6 months  |SAS-CompFeed   |INDIA        |High     |       1|     13|  1333|
|6 months  |SAS-FoodSuppl  |INDIA        |Low      |       0|    137|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |Low      |       1|      6|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |Medium   |       0|    133|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |Medium   |       1|      7|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |High     |       0|     91|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |High     |       1|      6|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |Low      |       0|   1045|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |Low      |       1|      6|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |Medium   |       0|    577|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |Medium   |       1|      2|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |High     |       0|    394|  2028|
|6 months  |TanzaniaChild2 |TANZANIA     |High     |       1|      4|  2028|
|6 months  |ZVITAMBO       |ZIMBABWE     |Low      |       0|   1258|  8231|
|6 months  |ZVITAMBO       |ZIMBABWE     |Low      |       1|     10|  8231|
|6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |       0|   6298|  8231|
|6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |       1|     61|  8231|
|6 months  |ZVITAMBO       |ZIMBABWE     |High     |       0|    599|  8231|
|6 months  |ZVITAMBO       |ZIMBABWE     |High     |       1|      5|  8231|
|24 months |COHORTS        |INDIA        |Low      |       0|    453|  1363|
|24 months |COHORTS        |INDIA        |Low      |       1|      9|  1363|
|24 months |COHORTS        |INDIA        |Medium   |       0|    383|  1363|
|24 months |COHORTS        |INDIA        |Medium   |       1|      6|  1363|
|24 months |COHORTS        |INDIA        |High     |       0|    510|  1363|
|24 months |COHORTS        |INDIA        |High     |       1|      2|  1363|
|24 months |COHORTS        |GUATEMALA    |Low      |       0|    494|  1028|
|24 months |COHORTS        |GUATEMALA    |Low      |       1|      0|  1028|
|24 months |COHORTS        |GUATEMALA    |Medium   |       0|    364|  1028|
|24 months |COHORTS        |GUATEMALA    |Medium   |       1|      2|  1028|
|24 months |COHORTS        |GUATEMALA    |High     |       0|    166|  1028|
|24 months |COHORTS        |GUATEMALA    |High     |       1|      2|  1028|
|24 months |COHORTS        |PHILIPPINES  |Low      |       0|    803|  2359|
|24 months |COHORTS        |PHILIPPINES  |Low      |       1|      9|  2359|
|24 months |COHORTS        |PHILIPPINES  |Medium   |       0|    585|  2359|
|24 months |COHORTS        |PHILIPPINES  |Medium   |       1|     11|  2359|
|24 months |COHORTS        |PHILIPPINES  |High     |       0|    946|  2359|
|24 months |COHORTS        |PHILIPPINES  |High     |       1|      5|  2359|
|24 months |GMS-Nepal      |NEPAL        |Low      |       0|    209|   486|
|24 months |GMS-Nepal      |NEPAL        |Low      |       1|      8|   486|
|24 months |GMS-Nepal      |NEPAL        |Medium   |       0|    167|   486|
|24 months |GMS-Nepal      |NEPAL        |Medium   |       1|      7|   486|
|24 months |GMS-Nepal      |NEPAL        |High     |       0|     95|   486|
|24 months |GMS-Nepal      |NEPAL        |High     |       1|      0|   486|
|24 months |JiVitA-3       |BANGLADESH   |Low      |       0|   3172|  8243|
|24 months |JiVitA-3       |BANGLADESH   |Low      |       1|    126|  8243|
|24 months |JiVitA-3       |BANGLADESH   |Medium   |       0|   2770|  8243|
|24 months |JiVitA-3       |BANGLADESH   |Medium   |       1|    113|  8243|
|24 months |JiVitA-3       |BANGLADESH   |High     |       0|   1981|  8243|
|24 months |JiVitA-3       |BANGLADESH   |High     |       1|     81|  8243|
|24 months |JiVitA-4       |BANGLADESH   |Low      |       0|   1590|  4504|
|24 months |JiVitA-4       |BANGLADESH   |Low      |       1|     44|  4504|
|24 months |JiVitA-4       |BANGLADESH   |Medium   |       0|   1753|  4504|
|24 months |JiVitA-4       |BANGLADESH   |Medium   |       1|     56|  4504|
|24 months |JiVitA-4       |BANGLADESH   |High     |       0|   1037|  4504|
|24 months |JiVitA-4       |BANGLADESH   |High     |       1|     24|  4504|
|24 months |LCNI-5         |MALAWI       |Low      |       0|    203|   558|
|24 months |LCNI-5         |MALAWI       |Low      |       1|      0|   558|
|24 months |LCNI-5         |MALAWI       |Medium   |       0|    197|   558|
|24 months |LCNI-5         |MALAWI       |Medium   |       1|      1|   558|
|24 months |LCNI-5         |MALAWI       |High     |       0|    157|   558|
|24 months |LCNI-5         |MALAWI       |High     |       1|      0|   558|
|24 months |MAL-ED         |INDIA        |Low      |       0|     34|   114|
|24 months |MAL-ED         |INDIA        |Low      |       1|      0|   114|
|24 months |MAL-ED         |INDIA        |Medium   |       0|     31|   114|
|24 months |MAL-ED         |INDIA        |Medium   |       1|      1|   114|
|24 months |MAL-ED         |INDIA        |High     |       0|     47|   114|
|24 months |MAL-ED         |INDIA        |High     |       1|      1|   114|
|24 months |MAL-ED         |BANGLADESH   |Low      |       0|     33|   124|
|24 months |MAL-ED         |BANGLADESH   |Low      |       1|      0|   124|
|24 months |MAL-ED         |BANGLADESH   |Medium   |       0|     32|   124|
|24 months |MAL-ED         |BANGLADESH   |Medium   |       1|      0|   124|
|24 months |MAL-ED         |BANGLADESH   |High     |       0|     59|   124|
|24 months |MAL-ED         |BANGLADESH   |High     |       1|      0|   124|
|24 months |MAL-ED         |PERU         |Low      |       0|     53|   193|
|24 months |MAL-ED         |PERU         |Low      |       1|      0|   193|
|24 months |MAL-ED         |PERU         |Medium   |       0|     56|   193|
|24 months |MAL-ED         |PERU         |Medium   |       1|      2|   193|
|24 months |MAL-ED         |PERU         |High     |       0|     82|   193|
|24 months |MAL-ED         |PERU         |High     |       1|      0|   193|
|24 months |MAL-ED         |NEPAL        |Low      |       0|     20|    77|
|24 months |MAL-ED         |NEPAL        |Low      |       1|      0|    77|
|24 months |MAL-ED         |NEPAL        |Medium   |       0|     24|    77|
|24 months |MAL-ED         |NEPAL        |Medium   |       1|      0|    77|
|24 months |MAL-ED         |NEPAL        |High     |       0|     33|    77|
|24 months |MAL-ED         |NEPAL        |High     |       1|      0|    77|
|24 months |MAL-ED         |TANZANIA     |Low      |       0|     55|   202|
|24 months |MAL-ED         |TANZANIA     |Low      |       1|      0|   202|
|24 months |MAL-ED         |TANZANIA     |Medium   |       0|     39|   202|
|24 months |MAL-ED         |TANZANIA     |Medium   |       1|      0|   202|
|24 months |MAL-ED         |TANZANIA     |High     |       0|    108|   202|
|24 months |MAL-ED         |TANZANIA     |High     |       1|      0|   202|
|24 months |MAL-ED         |SOUTH AFRICA |Low      |       0|     53|   109|
|24 months |MAL-ED         |SOUTH AFRICA |Low      |       1|      0|   109|
|24 months |MAL-ED         |SOUTH AFRICA |Medium   |       0|     23|   109|
|24 months |MAL-ED         |SOUTH AFRICA |Medium   |       1|      0|   109|
|24 months |MAL-ED         |SOUTH AFRICA |High     |       0|     33|   109|
|24 months |MAL-ED         |SOUTH AFRICA |High     |       1|      0|   109|
|24 months |NIH-Crypto     |BANGLADESH   |Low      |       0|    137|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Low      |       1|      0|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Medium   |       0|    127|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Medium   |       1|      2|   514|
|24 months |NIH-Crypto     |BANGLADESH   |High     |       0|    246|   514|
|24 months |NIH-Crypto     |BANGLADESH   |High     |       1|      2|   514|
|24 months |PROBIT         |BELARUS      |Low      |       0|   1493|  3835|
|24 months |PROBIT         |BELARUS      |Low      |       1|      3|  3835|
|24 months |PROBIT         |BELARUS      |Medium   |       0|   1701|  3835|
|24 months |PROBIT         |BELARUS      |Medium   |       1|      3|  3835|
|24 months |PROBIT         |BELARUS      |High     |       0|    635|  3835|
|24 months |PROBIT         |BELARUS      |High     |       1|      0|  3835|
|24 months |PROVIDE        |BANGLADESH   |Low      |       0|    189|   579|
|24 months |PROVIDE        |BANGLADESH   |Low      |       1|      4|   579|
|24 months |PROVIDE        |BANGLADESH   |Medium   |       0|    190|   579|
|24 months |PROVIDE        |BANGLADESH   |Medium   |       1|      3|   579|
|24 months |PROVIDE        |BANGLADESH   |High     |       0|    191|   579|
|24 months |PROVIDE        |BANGLADESH   |High     |       1|      2|   579|
|24 months |TanzaniaChild2 |TANZANIA     |Low      |       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Low      |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Medium   |       0|      4|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Medium   |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |High     |       0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |High     |       1|      0|     6|
|24 months |ZVITAMBO       |ZIMBABWE     |Low      |       0|     71|   415|
|24 months |ZVITAMBO       |ZIMBABWE     |Low      |       1|      0|   415|
|24 months |ZVITAMBO       |ZIMBABWE     |Medium   |       0|    291|   415|
|24 months |ZVITAMBO       |ZIMBABWE     |Medium   |       1|     27|   415|
|24 months |ZVITAMBO       |ZIMBABWE     |High     |       0|     24|   415|
|24 months |ZVITAMBO       |ZIMBABWE     |High     |       1|      2|   415|


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
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
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


