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

**Intervention Variable:** mbmi

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |mbmi          | wast_rec90d| n_cell|    n|
|:-----------|:--------------|:------------|:-------------|-----------:|------:|----:|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |Normal weight |           0|    626|  799|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |Normal weight |           1|     28|  799|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |Underweight   |           0|    138|  799|
|0-24 months |iLiNS-Zinc     |BURKINA FASO |Underweight   |           1|      7|  799|
|0-24 months |JiVitA-3       |BANGLADESH   |Normal weight |           0|   2468| 7494|
|0-24 months |JiVitA-3       |BANGLADESH   |Normal weight |           1|   1914| 7494|
|0-24 months |JiVitA-3       |BANGLADESH   |Underweight   |           0|   1859| 7494|
|0-24 months |JiVitA-3       |BANGLADESH   |Underweight   |           1|   1253| 7494|
|0-24 months |LCNI-5         |MALAWI       |Normal weight |           0|     42|   78|
|0-24 months |LCNI-5         |MALAWI       |Normal weight |           1|      6|   78|
|0-24 months |LCNI-5         |MALAWI       |Underweight   |           0|     23|   78|
|0-24 months |LCNI-5         |MALAWI       |Underweight   |           1|      7|   78|
|0-24 months |MAL-ED         |INDIA        |Normal weight |           0|     47|  175|
|0-24 months |MAL-ED         |INDIA        |Normal weight |           1|     90|  175|
|0-24 months |MAL-ED         |INDIA        |Underweight   |           0|     21|  175|
|0-24 months |MAL-ED         |INDIA        |Underweight   |           1|     17|  175|
|0-24 months |MAL-ED         |BANGLADESH   |Normal weight |           0|     29|  115|
|0-24 months |MAL-ED         |BANGLADESH   |Normal weight |           1|     62|  115|
|0-24 months |MAL-ED         |BANGLADESH   |Underweight   |           0|     11|  115|
|0-24 months |MAL-ED         |BANGLADESH   |Underweight   |           1|     13|  115|
|0-24 months |MAL-ED         |PERU         |Normal weight |           0|      4|   30|
|0-24 months |MAL-ED         |PERU         |Normal weight |           1|     25|   30|
|0-24 months |MAL-ED         |PERU         |Underweight   |           0|      0|   30|
|0-24 months |MAL-ED         |PERU         |Underweight   |           1|      1|   30|
|0-24 months |MAL-ED         |NEPAL        |Normal weight |           0|     20|   97|
|0-24 months |MAL-ED         |NEPAL        |Normal weight |           1|     77|   97|
|0-24 months |MAL-ED         |NEPAL        |Underweight   |           0|      0|   97|
|0-24 months |MAL-ED         |NEPAL        |Underweight   |           1|      0|   97|
|0-24 months |MAL-ED         |BRAZIL       |Normal weight |           0|      6|   23|
|0-24 months |MAL-ED         |BRAZIL       |Normal weight |           1|     12|   23|
|0-24 months |MAL-ED         |BRAZIL       |Underweight   |           0|      0|   23|
|0-24 months |MAL-ED         |BRAZIL       |Underweight   |           1|      5|   23|
|0-24 months |MAL-ED         |TANZANIA     |Normal weight |           0|      7|   51|
|0-24 months |MAL-ED         |TANZANIA     |Normal weight |           1|     34|   51|
|0-24 months |MAL-ED         |TANZANIA     |Underweight   |           0|      2|   51|
|0-24 months |MAL-ED         |TANZANIA     |Underweight   |           1|      8|   51|
|0-24 months |MAL-ED         |SOUTH AFRICA |Normal weight |           0|     11|   74|
|0-24 months |MAL-ED         |SOUTH AFRICA |Normal weight |           1|     59|   74|
|0-24 months |MAL-ED         |SOUTH AFRICA |Underweight   |           0|      2|   74|
|0-24 months |MAL-ED         |SOUTH AFRICA |Underweight   |           1|      2|   74|
|0-24 months |NIH-Birth      |BANGLADESH   |Normal weight |           0|    154|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |Normal weight |           1|    176|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |Underweight   |           0|     48|  421|
|0-24 months |NIH-Birth      |BANGLADESH   |Underweight   |           1|     43|  421|
|0-24 months |NIH-Crypto     |BANGLADESH   |Normal weight |           0|    102|  309|
|0-24 months |NIH-Crypto     |BANGLADESH   |Normal weight |           1|    179|  309|
|0-24 months |NIH-Crypto     |BANGLADESH   |Underweight   |           0|     15|  309|
|0-24 months |NIH-Crypto     |BANGLADESH   |Underweight   |           1|     13|  309|
|0-24 months |PROBIT         |BELARUS      |Normal weight |           0|    415| 3958|
|0-24 months |PROBIT         |BELARUS      |Normal weight |           1|   3360| 3958|
|0-24 months |PROBIT         |BELARUS      |Underweight   |           0|     15| 3958|
|0-24 months |PROBIT         |BELARUS      |Underweight   |           1|    168| 3958|
|0-24 months |PROVIDE        |BANGLADESH   |Normal weight |           0|     88|  294|
|0-24 months |PROVIDE        |BANGLADESH   |Normal weight |           1|    128|  294|
|0-24 months |PROVIDE        |BANGLADESH   |Underweight   |           0|     35|  294|
|0-24 months |PROVIDE        |BANGLADESH   |Underweight   |           1|     43|  294|
|0-24 months |SAS-CompFeed   |INDIA        |Normal weight |           0|    279|  742|
|0-24 months |SAS-CompFeed   |INDIA        |Normal weight |           1|    178|  742|
|0-24 months |SAS-CompFeed   |INDIA        |Underweight   |           0|    176|  742|
|0-24 months |SAS-CompFeed   |INDIA        |Underweight   |           1|    109|  742|
|0-24 months |TanzaniaChild2 |TANZANIA     |Normal weight |           0|    257|  699|
|0-24 months |TanzaniaChild2 |TANZANIA     |Normal weight |           1|    431|  699|
|0-24 months |TanzaniaChild2 |TANZANIA     |Underweight   |           0|      4|  699|
|0-24 months |TanzaniaChild2 |TANZANIA     |Underweight   |           1|      7|  699|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Normal weight |           0|    953| 2612|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Normal weight |           1|   1460| 2612|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Underweight   |           0|     98| 2612|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Underweight   |           1|    101| 2612|
|0-6 months  |JiVitA-3       |BANGLADESH   |Normal weight |           0|    838| 4683|
|0-6 months  |JiVitA-3       |BANGLADESH   |Normal weight |           1|   1914| 4683|
|0-6 months  |JiVitA-3       |BANGLADESH   |Underweight   |           0|    678| 4683|
|0-6 months  |JiVitA-3       |BANGLADESH   |Underweight   |           1|   1253| 4683|
|0-6 months  |LCNI-5         |MALAWI       |Normal weight |           0|      3|    3|
|0-6 months  |LCNI-5         |MALAWI       |Normal weight |           1|      0|    3|
|0-6 months  |LCNI-5         |MALAWI       |Underweight   |           0|      0|    3|
|0-6 months  |LCNI-5         |MALAWI       |Underweight   |           1|      0|    3|
|0-6 months  |MAL-ED         |INDIA        |Normal weight |           0|     14|   82|
|0-6 months  |MAL-ED         |INDIA        |Normal weight |           1|     48|   82|
|0-6 months  |MAL-ED         |INDIA        |Underweight   |           0|     11|   82|
|0-6 months  |MAL-ED         |INDIA        |Underweight   |           1|      9|   82|
|0-6 months  |MAL-ED         |BANGLADESH   |Normal weight |           0|      7|   58|
|0-6 months  |MAL-ED         |BANGLADESH   |Normal weight |           1|     41|   58|
|0-6 months  |MAL-ED         |BANGLADESH   |Underweight   |           0|      4|   58|
|0-6 months  |MAL-ED         |BANGLADESH   |Underweight   |           1|      6|   58|
|0-6 months  |MAL-ED         |PERU         |Normal weight |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |Normal weight |           1|     11|   11|
|0-6 months  |MAL-ED         |PERU         |Underweight   |           0|      0|   11|
|0-6 months  |MAL-ED         |PERU         |Underweight   |           1|      0|   11|
|0-6 months  |MAL-ED         |NEPAL        |Normal weight |           0|      9|   48|
|0-6 months  |MAL-ED         |NEPAL        |Normal weight |           1|     39|   48|
|0-6 months  |MAL-ED         |NEPAL        |Underweight   |           0|      0|   48|
|0-6 months  |MAL-ED         |NEPAL        |Underweight   |           1|      0|   48|
|0-6 months  |MAL-ED         |BRAZIL       |Normal weight |           0|      1|   14|
|0-6 months  |MAL-ED         |BRAZIL       |Normal weight |           1|     11|   14|
|0-6 months  |MAL-ED         |BRAZIL       |Underweight   |           0|      0|   14|
|0-6 months  |MAL-ED         |BRAZIL       |Underweight   |           1|      2|   14|
|0-6 months  |MAL-ED         |TANZANIA     |Normal weight |           0|      1|   14|
|0-6 months  |MAL-ED         |TANZANIA     |Normal weight |           1|      9|   14|
|0-6 months  |MAL-ED         |TANZANIA     |Underweight   |           0|      0|   14|
|0-6 months  |MAL-ED         |TANZANIA     |Underweight   |           1|      4|   14|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Normal weight |           0|      5|   30|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Normal weight |           1|     23|   30|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Underweight   |           0|      2|   30|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Underweight   |           1|      0|   30|
|0-6 months  |NIH-Birth      |BANGLADESH   |Normal weight |           0|     52|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |Normal weight |           1|    128|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |Underweight   |           0|     12|  223|
|0-6 months  |NIH-Birth      |BANGLADESH   |Underweight   |           1|     31|  223|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Normal weight |           0|     20|  196|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Normal weight |           1|    165|  196|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Underweight   |           0|      1|  196|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Underweight   |           1|     10|  196|
|0-6 months  |PROBIT         |BELARUS      |Normal weight |           0|    324| 3831|
|0-6 months  |PROBIT         |BELARUS      |Normal weight |           1|   3329| 3831|
|0-6 months  |PROBIT         |BELARUS      |Underweight   |           0|     12| 3831|
|0-6 months  |PROBIT         |BELARUS      |Underweight   |           1|    166| 3831|
|0-6 months  |PROVIDE        |BANGLADESH   |Normal weight |           0|     22|  177|
|0-6 months  |PROVIDE        |BANGLADESH   |Normal weight |           1|    106|  177|
|0-6 months  |PROVIDE        |BANGLADESH   |Underweight   |           0|     15|  177|
|0-6 months  |PROVIDE        |BANGLADESH   |Underweight   |           1|     34|  177|
|0-6 months  |SAS-CompFeed   |INDIA        |Normal weight |           0|     99|  306|
|0-6 months  |SAS-CompFeed   |INDIA        |Normal weight |           1|     98|  306|
|0-6 months  |SAS-CompFeed   |INDIA        |Underweight   |           0|     47|  306|
|0-6 months  |SAS-CompFeed   |INDIA        |Underweight   |           1|     62|  306|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Normal weight |           0|     98|  333|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Normal weight |           1|    230|  333|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Underweight   |           0|      2|  333|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Underweight   |           1|      3|  333|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Normal weight |           0|    218| 1734|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Normal weight |           1|   1398| 1734|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Underweight   |           0|     22| 1734|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Underweight   |           1|     96| 1734|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |Normal weight |           0|    626|  799|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |Normal weight |           1|     28|  799|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |Underweight   |           0|    138|  799|
|6-24 months |iLiNS-Zinc     |BURKINA FASO |Underweight   |           1|      7|  799|
|6-24 months |JiVitA-3       |BANGLADESH   |Normal weight |           0|   1630| 2811|
|6-24 months |JiVitA-3       |BANGLADESH   |Normal weight |           1|      0| 2811|
|6-24 months |JiVitA-3       |BANGLADESH   |Underweight   |           0|   1181| 2811|
|6-24 months |JiVitA-3       |BANGLADESH   |Underweight   |           1|      0| 2811|
|6-24 months |LCNI-5         |MALAWI       |Normal weight |           0|     39|   75|
|6-24 months |LCNI-5         |MALAWI       |Normal weight |           1|      6|   75|
|6-24 months |LCNI-5         |MALAWI       |Underweight   |           0|     23|   75|
|6-24 months |LCNI-5         |MALAWI       |Underweight   |           1|      7|   75|
|6-24 months |MAL-ED         |INDIA        |Normal weight |           0|     33|   93|
|6-24 months |MAL-ED         |INDIA        |Normal weight |           1|     42|   93|
|6-24 months |MAL-ED         |INDIA        |Underweight   |           0|     10|   93|
|6-24 months |MAL-ED         |INDIA        |Underweight   |           1|      8|   93|
|6-24 months |MAL-ED         |BANGLADESH   |Normal weight |           0|     22|   57|
|6-24 months |MAL-ED         |BANGLADESH   |Normal weight |           1|     21|   57|
|6-24 months |MAL-ED         |BANGLADESH   |Underweight   |           0|      7|   57|
|6-24 months |MAL-ED         |BANGLADESH   |Underweight   |           1|      7|   57|
|6-24 months |MAL-ED         |PERU         |Normal weight |           0|      4|   19|
|6-24 months |MAL-ED         |PERU         |Normal weight |           1|     14|   19|
|6-24 months |MAL-ED         |PERU         |Underweight   |           0|      0|   19|
|6-24 months |MAL-ED         |PERU         |Underweight   |           1|      1|   19|
|6-24 months |MAL-ED         |NEPAL        |Normal weight |           0|     11|   49|
|6-24 months |MAL-ED         |NEPAL        |Normal weight |           1|     38|   49|
|6-24 months |MAL-ED         |NEPAL        |Underweight   |           0|      0|   49|
|6-24 months |MAL-ED         |NEPAL        |Underweight   |           1|      0|   49|
|6-24 months |MAL-ED         |BRAZIL       |Normal weight |           0|      5|    9|
|6-24 months |MAL-ED         |BRAZIL       |Normal weight |           1|      1|    9|
|6-24 months |MAL-ED         |BRAZIL       |Underweight   |           0|      0|    9|
|6-24 months |MAL-ED         |BRAZIL       |Underweight   |           1|      3|    9|
|6-24 months |MAL-ED         |TANZANIA     |Normal weight |           0|      6|   37|
|6-24 months |MAL-ED         |TANZANIA     |Normal weight |           1|     25|   37|
|6-24 months |MAL-ED         |TANZANIA     |Underweight   |           0|      2|   37|
|6-24 months |MAL-ED         |TANZANIA     |Underweight   |           1|      4|   37|
|6-24 months |MAL-ED         |SOUTH AFRICA |Normal weight |           0|      6|   44|
|6-24 months |MAL-ED         |SOUTH AFRICA |Normal weight |           1|     36|   44|
|6-24 months |MAL-ED         |SOUTH AFRICA |Underweight   |           0|      0|   44|
|6-24 months |MAL-ED         |SOUTH AFRICA |Underweight   |           1|      2|   44|
|6-24 months |NIH-Birth      |BANGLADESH   |Normal weight |           0|    102|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |Normal weight |           1|     48|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |Underweight   |           0|     36|  198|
|6-24 months |NIH-Birth      |BANGLADESH   |Underweight   |           1|     12|  198|
|6-24 months |NIH-Crypto     |BANGLADESH   |Normal weight |           0|     82|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |Normal weight |           1|     14|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |Underweight   |           0|     14|  113|
|6-24 months |NIH-Crypto     |BANGLADESH   |Underweight   |           1|      3|  113|
|6-24 months |PROBIT         |BELARUS      |Normal weight |           0|     91|  127|
|6-24 months |PROBIT         |BELARUS      |Normal weight |           1|     31|  127|
|6-24 months |PROBIT         |BELARUS      |Underweight   |           0|      3|  127|
|6-24 months |PROBIT         |BELARUS      |Underweight   |           1|      2|  127|
|6-24 months |PROVIDE        |BANGLADESH   |Normal weight |           0|     66|  117|
|6-24 months |PROVIDE        |BANGLADESH   |Normal weight |           1|     22|  117|
|6-24 months |PROVIDE        |BANGLADESH   |Underweight   |           0|     20|  117|
|6-24 months |PROVIDE        |BANGLADESH   |Underweight   |           1|      9|  117|
|6-24 months |SAS-CompFeed   |INDIA        |Normal weight |           0|    180|  436|
|6-24 months |SAS-CompFeed   |INDIA        |Normal weight |           1|     80|  436|
|6-24 months |SAS-CompFeed   |INDIA        |Underweight   |           0|    129|  436|
|6-24 months |SAS-CompFeed   |INDIA        |Underweight   |           1|     47|  436|
|6-24 months |TanzaniaChild2 |TANZANIA     |Normal weight |           0|    159|  366|
|6-24 months |TanzaniaChild2 |TANZANIA     |Normal weight |           1|    201|  366|
|6-24 months |TanzaniaChild2 |TANZANIA     |Underweight   |           0|      2|  366|
|6-24 months |TanzaniaChild2 |TANZANIA     |Underweight   |           1|      4|  366|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Normal weight |           0|    735|  878|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Normal weight |           1|     62|  878|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Underweight   |           0|     76|  878|
|6-24 months |ZVITAMBO       |ZIMBABWE     |Underweight   |           1|      5|  878|


The following strata were considered:

* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


