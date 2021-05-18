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

**Outcome Variable:** ever_sstunted

## Predictor Variables

**Intervention Variable:** meducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |meducyrs | ever_sstunted| n_cell|     n|
|:-----------|:--------------|:------------|:--------|-------------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Low      |             0|     38|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Low      |             1|     73|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Medium   |             0|     41|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |Medium   |             1|     60|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |High     |             0|     57|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |High     |             1|    104|   373|
|0-24 months |COHORTS        |INDIA        |Low      |             0|   1423|  6687|
|0-24 months |COHORTS        |INDIA        |Low      |             1|    229|  6687|
|0-24 months |COHORTS        |INDIA        |Medium   |             0|   3300|  6687|
|0-24 months |COHORTS        |INDIA        |Medium   |             1|    458|  6687|
|0-24 months |COHORTS        |INDIA        |High     |             0|   1124|  6687|
|0-24 months |COHORTS        |INDIA        |High     |             1|    153|  6687|
|0-24 months |COHORTS        |GUATEMALA    |Low      |             0|    330|  1352|
|0-24 months |COHORTS        |GUATEMALA    |Low      |             1|    314|  1352|
|0-24 months |COHORTS        |GUATEMALA    |Medium   |             0|    250|  1352|
|0-24 months |COHORTS        |GUATEMALA    |Medium   |             1|    193|  1352|
|0-24 months |COHORTS        |GUATEMALA    |High     |             0|    147|  1352|
|0-24 months |COHORTS        |GUATEMALA    |High     |             1|    118|  1352|
|0-24 months |COHORTS        |PHILIPPINES  |Low      |             0|    629|  3058|
|0-24 months |COHORTS        |PHILIPPINES  |Low      |             1|    501|  3058|
|0-24 months |COHORTS        |PHILIPPINES  |Medium   |             0|    335|  3058|
|0-24 months |COHORTS        |PHILIPPINES  |Medium   |             1|    221|  3058|
|0-24 months |COHORTS        |PHILIPPINES  |High     |             0|   1005|  3058|
|0-24 months |COHORTS        |PHILIPPINES  |High     |             1|    367|  3058|
|0-24 months |EE             |PAKISTAN     |Low      |             0|    127|   375|
|0-24 months |EE             |PAKISTAN     |Low      |             1|    191|   375|
|0-24 months |EE             |PAKISTAN     |Medium   |             0|     12|   375|
|0-24 months |EE             |PAKISTAN     |Medium   |             1|     23|   375|
|0-24 months |EE             |PAKISTAN     |High     |             0|      9|   375|
|0-24 months |EE             |PAKISTAN     |High     |             1|     13|   375|
|0-24 months |GMS-Nepal      |NEPAL        |Low      |             0|    374|   696|
|0-24 months |GMS-Nepal      |NEPAL        |Low      |             1|    109|   696|
|0-24 months |GMS-Nepal      |NEPAL        |Medium   |             0|     94|   696|
|0-24 months |GMS-Nepal      |NEPAL        |Medium   |             1|     37|   696|
|0-24 months |GMS-Nepal      |NEPAL        |High     |             0|     59|   696|
|0-24 months |GMS-Nepal      |NEPAL        |High     |             1|     23|   696|
|0-24 months |Guatemala BSC  |GUATEMALA    |Low      |             0|     88|   301|
|0-24 months |Guatemala BSC  |GUATEMALA    |Low      |             1|     17|   301|
|0-24 months |Guatemala BSC  |GUATEMALA    |Medium   |             0|     70|   301|
|0-24 months |Guatemala BSC  |GUATEMALA    |Medium   |             1|     13|   301|
|0-24 months |Guatemala BSC  |GUATEMALA    |High     |             0|     90|   301|
|0-24 months |Guatemala BSC  |GUATEMALA    |High     |             1|     23|   301|
|0-24 months |JiVitA-3       |BANGLADESH   |Low      |             0|   8026| 27208|
|0-24 months |JiVitA-3       |BANGLADESH   |Low      |             1|   1916| 27208|
|0-24 months |JiVitA-3       |BANGLADESH   |Medium   |             0|   6721| 27208|
|0-24 months |JiVitA-3       |BANGLADESH   |Medium   |             1|   1517| 27208|
|0-24 months |JiVitA-3       |BANGLADESH   |High     |             0|   7440| 27208|
|0-24 months |JiVitA-3       |BANGLADESH   |High     |             1|   1588| 27208|
|0-24 months |JiVitA-4       |BANGLADESH   |Low      |             0|   1385|  5433|
|0-24 months |JiVitA-4       |BANGLADESH   |Low      |             1|    396|  5433|
|0-24 months |JiVitA-4       |BANGLADESH   |Medium   |             0|   1354|  5433|
|0-24 months |JiVitA-4       |BANGLADESH   |Medium   |             1|    351|  5433|
|0-24 months |JiVitA-4       |BANGLADESH   |High     |             0|   1593|  5433|
|0-24 months |JiVitA-4       |BANGLADESH   |High     |             1|    354|  5433|
|0-24 months |LCNI-5         |MALAWI       |Low      |             0|    207|   825|
|0-24 months |LCNI-5         |MALAWI       |Low      |             1|     62|   825|
|0-24 months |LCNI-5         |MALAWI       |Medium   |             0|    215|   825|
|0-24 months |LCNI-5         |MALAWI       |Medium   |             1|     52|   825|
|0-24 months |LCNI-5         |MALAWI       |High     |             0|    230|   825|
|0-24 months |LCNI-5         |MALAWI       |High     |             1|     59|   825|
|0-24 months |MAL-ED         |INDIA        |Low      |             0|     60|   210|
|0-24 months |MAL-ED         |INDIA        |Low      |             1|     24|   210|
|0-24 months |MAL-ED         |INDIA        |Medium   |             0|     41|   210|
|0-24 months |MAL-ED         |INDIA        |Medium   |             1|      9|   210|
|0-24 months |MAL-ED         |INDIA        |High     |             0|     58|   210|
|0-24 months |MAL-ED         |INDIA        |High     |             1|     18|   210|
|0-24 months |MAL-ED         |BANGLADESH   |Low      |             0|     64|   256|
|0-24 months |MAL-ED         |BANGLADESH   |Low      |             1|     15|   256|
|0-24 months |MAL-ED         |BANGLADESH   |Medium   |             0|     43|   256|
|0-24 months |MAL-ED         |BANGLADESH   |Medium   |             1|     15|   256|
|0-24 months |MAL-ED         |BANGLADESH   |High     |             0|     92|   256|
|0-24 months |MAL-ED         |BANGLADESH   |High     |             1|     27|   256|
|0-24 months |MAL-ED         |PERU         |Low      |             0|     97|   302|
|0-24 months |MAL-ED         |PERU         |Low      |             1|     23|   302|
|0-24 months |MAL-ED         |PERU         |Medium   |             0|     70|   302|
|0-24 months |MAL-ED         |PERU         |Medium   |             1|     25|   302|
|0-24 months |MAL-ED         |PERU         |High     |             0|     71|   302|
|0-24 months |MAL-ED         |PERU         |High     |             1|     16|   302|
|0-24 months |MAL-ED         |NEPAL        |Low      |             0|    104|   229|
|0-24 months |MAL-ED         |NEPAL        |Low      |             1|      7|   229|
|0-24 months |MAL-ED         |NEPAL        |Medium   |             0|     51|   229|
|0-24 months |MAL-ED         |NEPAL        |Medium   |             1|      5|   229|
|0-24 months |MAL-ED         |NEPAL        |High     |             0|     54|   229|
|0-24 months |MAL-ED         |NEPAL        |High     |             1|      8|   229|
|0-24 months |MAL-ED         |BRAZIL       |Low      |             0|     90|   233|
|0-24 months |MAL-ED         |BRAZIL       |Low      |             1|     11|   233|
|0-24 months |MAL-ED         |BRAZIL       |Medium   |             0|     89|   233|
|0-24 months |MAL-ED         |BRAZIL       |Medium   |             1|      7|   233|
|0-24 months |MAL-ED         |BRAZIL       |High     |             0|     32|   233|
|0-24 months |MAL-ED         |BRAZIL       |High     |             1|      4|   233|
|0-24 months |MAL-ED         |TANZANIA     |Low      |             0|     30|   212|
|0-24 months |MAL-ED         |TANZANIA     |Low      |             1|     34|   212|
|0-24 months |MAL-ED         |TANZANIA     |Medium   |             0|     33|   212|
|0-24 months |MAL-ED         |TANZANIA     |Medium   |             1|     48|   212|
|0-24 months |MAL-ED         |TANZANIA     |High     |             0|     32|   212|
|0-24 months |MAL-ED         |TANZANIA     |High     |             1|     35|   212|
|0-24 months |MAL-ED         |SOUTH AFRICA |Low      |             0|    129|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |Low      |             1|     44|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |Medium   |             0|     36|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |Medium   |             1|      5|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |High     |             0|     76|   314|
|0-24 months |MAL-ED         |SOUTH AFRICA |High     |             1|     24|   314|
|0-24 months |NIH-Birth      |BANGLADESH   |Low      |             0|    180|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |Low      |             1|     91|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |Medium   |             0|    138|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |Medium   |             1|     58|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |High     |             0|    115|   629|
|0-24 months |NIH-Birth      |BANGLADESH   |High     |             1|     47|   629|
|0-24 months |NIH-Crypto     |BANGLADESH   |Low      |             0|    205|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |Low      |             1|     36|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |Medium   |             0|    147|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |Medium   |             1|     20|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |High     |             0|    307|   758|
|0-24 months |NIH-Crypto     |BANGLADESH   |High     |             1|     43|   758|
|0-24 months |PROBIT         |BELARUS      |Low      |             0|   5305| 16897|
|0-24 months |PROBIT         |BELARUS      |Low      |             1|    175| 16897|
|0-24 months |PROBIT         |BELARUS      |Medium   |             0|   8309| 16897|
|0-24 months |PROBIT         |BELARUS      |Medium   |             1|    213| 16897|
|0-24 months |PROBIT         |BELARUS      |High     |             0|   2816| 16897|
|0-24 months |PROBIT         |BELARUS      |High     |             1|     79| 16897|
|0-24 months |PROVIDE        |BANGLADESH   |Low      |             0|    169|   700|
|0-24 months |PROVIDE        |BANGLADESH   |Low      |             1|     34|   700|
|0-24 months |PROVIDE        |BANGLADESH   |Medium   |             0|    232|   700|
|0-24 months |PROVIDE        |BANGLADESH   |Medium   |             1|     39|   700|
|0-24 months |PROVIDE        |BANGLADESH   |High     |             0|    204|   700|
|0-24 months |PROVIDE        |BANGLADESH   |High     |             1|     22|   700|
|0-24 months |SAS-CompFeed   |INDIA        |Low      |             0|    452|  1530|
|0-24 months |SAS-CompFeed   |INDIA        |Low      |             1|    224|  1530|
|0-24 months |SAS-CompFeed   |INDIA        |Medium   |             0|    343|  1530|
|0-24 months |SAS-CompFeed   |INDIA        |Medium   |             1|    171|  1530|
|0-24 months |SAS-CompFeed   |INDIA        |High     |             0|    229|  1530|
|0-24 months |SAS-CompFeed   |INDIA        |High     |             1|    111|  1530|
|0-24 months |SAS-FoodSuppl  |INDIA        |Low      |             0|    171|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |Low      |             1|    166|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |Medium   |             0|     24|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |Medium   |             1|     16|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |High     |             0|     22|   418|
|0-24 months |SAS-FoodSuppl  |INDIA        |High     |             1|     19|   418|
|0-24 months |TanzaniaChild2 |TANZANIA     |Low      |             0|     97|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |Low      |             1|      7|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |Medium   |             0|   1492|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |Medium   |             1|    174|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |High     |             0|    568|  2396|
|0-24 months |TanzaniaChild2 |TANZANIA     |High     |             1|     58|  2396|
|0-24 months |Vellore Crypto |INDIA        |Low      |             0|    114|   410|
|0-24 months |Vellore Crypto |INDIA        |Low      |             1|     33|   410|
|0-24 months |Vellore Crypto |INDIA        |Medium   |             0|    112|   410|
|0-24 months |Vellore Crypto |INDIA        |Medium   |             1|     40|   410|
|0-24 months |Vellore Crypto |INDIA        |High     |             0|     82|   410|
|0-24 months |Vellore Crypto |INDIA        |High     |             1|     29|   410|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Low      |             0|   2143| 14064|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Low      |             1|    423| 14064|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |             0|   3018| 14064|
|0-24 months |ZVITAMBO       |ZIMBABWE     |Medium   |             1|    591| 14064|
|0-24 months |ZVITAMBO       |ZIMBABWE     |High     |             0|   6537| 14064|
|0-24 months |ZVITAMBO       |ZIMBABWE     |High     |             1|   1352| 14064|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Low      |             0|     78|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Low      |             1|     31|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Medium   |             0|     80|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |Medium   |             1|     20|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |High     |             0|    119|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |High     |             1|     40|   368|
|0-6 months  |COHORTS        |INDIA        |Low      |             0|   1529|  6466|
|0-6 months  |COHORTS        |INDIA        |Low      |             1|     71|  6466|
|0-6 months  |COHORTS        |INDIA        |Medium   |             0|   3452|  6466|
|0-6 months  |COHORTS        |INDIA        |Medium   |             1|    180|  6466|
|0-6 months  |COHORTS        |INDIA        |High     |             0|   1169|  6466|
|0-6 months  |COHORTS        |INDIA        |High     |             1|     65|  6466|
|0-6 months  |COHORTS        |GUATEMALA    |Low      |             0|    457|  1083|
|0-6 months  |COHORTS        |GUATEMALA    |Low      |             1|     64|  1083|
|0-6 months  |COHORTS        |GUATEMALA    |Medium   |             0|    328|  1083|
|0-6 months  |COHORTS        |GUATEMALA    |Medium   |             1|     27|  1083|
|0-6 months  |COHORTS        |GUATEMALA    |High     |             0|    189|  1083|
|0-6 months  |COHORTS        |GUATEMALA    |High     |             1|     18|  1083|
|0-6 months  |COHORTS        |PHILIPPINES  |Low      |             0|   1033|  3058|
|0-6 months  |COHORTS        |PHILIPPINES  |Low      |             1|     97|  3058|
|0-6 months  |COHORTS        |PHILIPPINES  |Medium   |             0|    525|  3058|
|0-6 months  |COHORTS        |PHILIPPINES  |Medium   |             1|     31|  3058|
|0-6 months  |COHORTS        |PHILIPPINES  |High     |             0|   1309|  3058|
|0-6 months  |COHORTS        |PHILIPPINES  |High     |             1|     63|  3058|
|0-6 months  |EE             |PAKISTAN     |Low      |             0|    182|   375|
|0-6 months  |EE             |PAKISTAN     |Low      |             1|    136|   375|
|0-6 months  |EE             |PAKISTAN     |Medium   |             0|     18|   375|
|0-6 months  |EE             |PAKISTAN     |Medium   |             1|     17|   375|
|0-6 months  |EE             |PAKISTAN     |High     |             0|     14|   375|
|0-6 months  |EE             |PAKISTAN     |High     |             1|      8|   375|
|0-6 months  |GMS-Nepal      |NEPAL        |Low      |             0|    446|   696|
|0-6 months  |GMS-Nepal      |NEPAL        |Low      |             1|     37|   696|
|0-6 months  |GMS-Nepal      |NEPAL        |Medium   |             0|    115|   696|
|0-6 months  |GMS-Nepal      |NEPAL        |Medium   |             1|     16|   696|
|0-6 months  |GMS-Nepal      |NEPAL        |High     |             0|     75|   696|
|0-6 months  |GMS-Nepal      |NEPAL        |High     |             1|      7|   696|
|0-6 months  |Guatemala BSC  |GUATEMALA    |Low      |             0|     88|   281|
|0-6 months  |Guatemala BSC  |GUATEMALA    |Low      |             1|     11|   281|
|0-6 months  |Guatemala BSC  |GUATEMALA    |Medium   |             0|     73|   281|
|0-6 months  |Guatemala BSC  |GUATEMALA    |Medium   |             1|      4|   281|
|0-6 months  |Guatemala BSC  |GUATEMALA    |High     |             0|     95|   281|
|0-6 months  |Guatemala BSC  |GUATEMALA    |High     |             1|     10|   281|
|0-6 months  |JiVitA-3       |BANGLADESH   |Low      |             0|   8389| 27142|
|0-6 months  |JiVitA-3       |BANGLADESH   |Low      |             1|   1530| 27142|
|0-6 months  |JiVitA-3       |BANGLADESH   |Medium   |             0|   7005| 27142|
|0-6 months  |JiVitA-3       |BANGLADESH   |Medium   |             1|   1211| 27142|
|0-6 months  |JiVitA-3       |BANGLADESH   |High     |             0|   7745| 27142|
|0-6 months  |JiVitA-3       |BANGLADESH   |High     |             1|   1262| 27142|
|0-6 months  |JiVitA-4       |BANGLADESH   |Low      |             0|   1484|  5121|
|0-6 months  |JiVitA-4       |BANGLADESH   |Low      |             1|    181|  5121|
|0-6 months  |JiVitA-4       |BANGLADESH   |Medium   |             0|   1433|  5121|
|0-6 months  |JiVitA-4       |BANGLADESH   |Medium   |             1|    179|  5121|
|0-6 months  |JiVitA-4       |BANGLADESH   |High     |             0|   1686|  5121|
|0-6 months  |JiVitA-4       |BANGLADESH   |High     |             1|    158|  5121|
|0-6 months  |LCNI-5         |MALAWI       |Low      |             0|     81|   265|
|0-6 months  |LCNI-5         |MALAWI       |Low      |             1|      8|   265|
|0-6 months  |LCNI-5         |MALAWI       |Medium   |             0|     84|   265|
|0-6 months  |LCNI-5         |MALAWI       |Medium   |             1|      8|   265|
|0-6 months  |LCNI-5         |MALAWI       |High     |             0|     80|   265|
|0-6 months  |LCNI-5         |MALAWI       |High     |             1|      4|   265|
|0-6 months  |MAL-ED         |INDIA        |Low      |             0|     78|   210|
|0-6 months  |MAL-ED         |INDIA        |Low      |             1|      6|   210|
|0-6 months  |MAL-ED         |INDIA        |Medium   |             0|     47|   210|
|0-6 months  |MAL-ED         |INDIA        |Medium   |             1|      3|   210|
|0-6 months  |MAL-ED         |INDIA        |High     |             0|     70|   210|
|0-6 months  |MAL-ED         |INDIA        |High     |             1|      6|   210|
|0-6 months  |MAL-ED         |BANGLADESH   |Low      |             0|     73|   256|
|0-6 months  |MAL-ED         |BANGLADESH   |Low      |             1|      6|   256|
|0-6 months  |MAL-ED         |BANGLADESH   |Medium   |             0|     52|   256|
|0-6 months  |MAL-ED         |BANGLADESH   |Medium   |             1|      6|   256|
|0-6 months  |MAL-ED         |BANGLADESH   |High     |             0|    111|   256|
|0-6 months  |MAL-ED         |BANGLADESH   |High     |             1|      8|   256|
|0-6 months  |MAL-ED         |PERU         |Low      |             0|    103|   302|
|0-6 months  |MAL-ED         |PERU         |Low      |             1|     17|   302|
|0-6 months  |MAL-ED         |PERU         |Medium   |             0|     81|   302|
|0-6 months  |MAL-ED         |PERU         |Medium   |             1|     14|   302|
|0-6 months  |MAL-ED         |PERU         |High     |             0|     80|   302|
|0-6 months  |MAL-ED         |PERU         |High     |             1|      7|   302|
|0-6 months  |MAL-ED         |NEPAL        |Low      |             0|    108|   229|
|0-6 months  |MAL-ED         |NEPAL        |Low      |             1|      3|   229|
|0-6 months  |MAL-ED         |NEPAL        |Medium   |             0|     53|   229|
|0-6 months  |MAL-ED         |NEPAL        |Medium   |             1|      3|   229|
|0-6 months  |MAL-ED         |NEPAL        |High     |             0|     58|   229|
|0-6 months  |MAL-ED         |NEPAL        |High     |             1|      4|   229|
|0-6 months  |MAL-ED         |BRAZIL       |Low      |             0|     93|   233|
|0-6 months  |MAL-ED         |BRAZIL       |Low      |             1|      8|   233|
|0-6 months  |MAL-ED         |BRAZIL       |Medium   |             0|     90|   233|
|0-6 months  |MAL-ED         |BRAZIL       |Medium   |             1|      6|   233|
|0-6 months  |MAL-ED         |BRAZIL       |High     |             0|     33|   233|
|0-6 months  |MAL-ED         |BRAZIL       |High     |             1|      3|   233|
|0-6 months  |MAL-ED         |TANZANIA     |Low      |             0|     56|   212|
|0-6 months  |MAL-ED         |TANZANIA     |Low      |             1|      8|   212|
|0-6 months  |MAL-ED         |TANZANIA     |Medium   |             0|     64|   212|
|0-6 months  |MAL-ED         |TANZANIA     |Medium   |             1|     17|   212|
|0-6 months  |MAL-ED         |TANZANIA     |High     |             0|     59|   212|
|0-6 months  |MAL-ED         |TANZANIA     |High     |             1|      8|   212|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Low      |             0|    156|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Low      |             1|     17|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Medium   |             0|     38|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |Medium   |             1|      3|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |High     |             0|     91|   314|
|0-6 months  |MAL-ED         |SOUTH AFRICA |High     |             1|      9|   314|
|0-6 months  |NIH-Birth      |BANGLADESH   |Low      |             0|    245|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |Low      |             1|     26|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |Medium   |             0|    181|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |Medium   |             1|     15|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |High     |             0|    144|   629|
|0-6 months  |NIH-Birth      |BANGLADESH   |High     |             1|     18|   629|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Low      |             0|    224|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Low      |             1|     17|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Medium   |             0|    156|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |Medium   |             1|     11|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |High     |             0|    331|   758|
|0-6 months  |NIH-Crypto     |BANGLADESH   |High     |             1|     19|   758|
|0-6 months  |PROBIT         |BELARUS      |Low      |             0|   5408| 16892|
|0-6 months  |PROBIT         |BELARUS      |Low      |             1|     71| 16892|
|0-6 months  |PROBIT         |BELARUS      |Medium   |             0|   8439| 16892|
|0-6 months  |PROBIT         |BELARUS      |Medium   |             1|     81| 16892|
|0-6 months  |PROBIT         |BELARUS      |High     |             0|   2860| 16892|
|0-6 months  |PROBIT         |BELARUS      |High     |             1|     33| 16892|
|0-6 months  |PROVIDE        |BANGLADESH   |Low      |             0|    190|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |Low      |             1|     13|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |Medium   |             0|    259|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |Medium   |             1|     12|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |High     |             0|    220|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |High     |             1|      6|   700|
|0-6 months  |SAS-CompFeed   |INDIA        |Low      |             0|    573|  1527|
|0-6 months  |SAS-CompFeed   |INDIA        |Low      |             1|    101|  1527|
|0-6 months  |SAS-CompFeed   |INDIA        |Medium   |             0|    439|  1527|
|0-6 months  |SAS-CompFeed   |INDIA        |Medium   |             1|     74|  1527|
|0-6 months  |SAS-CompFeed   |INDIA        |High     |             0|    286|  1527|
|0-6 months  |SAS-CompFeed   |INDIA        |High     |             1|     54|  1527|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Low      |             0|    293|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Low      |             1|     42|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Medium   |             0|     37|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |Medium   |             1|      3|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |High     |             0|     36|   416|
|0-6 months  |SAS-FoodSuppl  |INDIA        |High     |             1|      5|   416|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Low      |             0|    102|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Low      |             1|      2|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Medium   |             0|   1589|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |Medium   |             1|     77|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |High     |             0|    600|  2396|
|0-6 months  |TanzaniaChild2 |TANZANIA     |High     |             1|     26|  2396|
|0-6 months  |Vellore Crypto |INDIA        |Low      |             0|    124|   410|
|0-6 months  |Vellore Crypto |INDIA        |Low      |             1|     23|   410|
|0-6 months  |Vellore Crypto |INDIA        |Medium   |             0|    131|   410|
|0-6 months  |Vellore Crypto |INDIA        |Medium   |             1|     21|   410|
|0-6 months  |Vellore Crypto |INDIA        |High     |             0|     93|   410|
|0-6 months  |Vellore Crypto |INDIA        |High     |             1|     18|   410|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Low      |             0|   2331| 14047|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Low      |             1|    230| 14047|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |             0|   3289| 14047|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |             1|    315| 14047|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |High     |             0|   7145| 14047|
|0-6 months  |ZVITAMBO       |ZIMBABWE     |High     |             1|    737| 14047|


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
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
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
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
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 0-6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


