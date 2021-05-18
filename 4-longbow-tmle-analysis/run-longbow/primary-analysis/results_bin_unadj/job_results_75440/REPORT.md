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

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid        |country      |hhwealth_quart | ever_sstunted| n_cell|     n|
|:-----------|:--------------|:------------|:--------------|-------------:|------:|-----:|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |             0|     50|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ4       |             1|     63|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |             0|     26|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ1       |             1|     64|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |             0|     28|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ2       |             1|     52|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |             0|     32|   373|
|0-24 months |CMC-V-BCS-2002 |INDIA        |WealthQ3       |             1|     58|   373|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ4       |             0|    299|  1294|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ4       |             1|    195|  1294|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ1       |             0|    133|  1294|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ1       |             1|    147|  1294|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ2       |             0|    101|  1294|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ2       |             1|    134|  1294|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ3       |             0|    155|  1294|
|0-24 months |COHORTS        |GUATEMALA    |WealthQ3       |             1|    130|  1294|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ4       |             0|    648|  3055|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ4       |             1|    226|  3055|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ1       |             0|    419|  3055|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ1       |             1|    261|  3055|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ2       |             0|    324|  3055|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ2       |             1|    219|  3055|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ3       |             0|    575|  3055|
|0-24 months |COHORTS        |PHILIPPINES  |WealthQ3       |             1|    383|  3055|
|0-24 months |CONTENT        |PERU         |WealthQ4       |             0|     44|   215|
|0-24 months |CONTENT        |PERU         |WealthQ4       |             1|      3|   215|
|0-24 months |CONTENT        |PERU         |WealthQ1       |             0|     62|   215|
|0-24 months |CONTENT        |PERU         |WealthQ1       |             1|      4|   215|
|0-24 months |CONTENT        |PERU         |WealthQ2       |             0|     48|   215|
|0-24 months |CONTENT        |PERU         |WealthQ2       |             1|      2|   215|
|0-24 months |CONTENT        |PERU         |WealthQ3       |             0|     51|   215|
|0-24 months |CONTENT        |PERU         |WealthQ3       |             1|      1|   215|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ4       |             0|    135|   698|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ4       |             1|     36|   698|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ1       |             0|    129|   698|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ1       |             1|     41|   698|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ2       |             0|    129|   698|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ2       |             1|     46|   698|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ3       |             0|    136|   698|
|0-24 months |GMS-Nepal      |NEPAL        |WealthQ3       |             1|     46|   698|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |             0|   6027| 27200|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ4       |             1|   1172| 27200|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |             0|   5240| 27200|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ1       |             1|   1326| 27200|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |             0|   5368| 27200|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ2       |             1|   1286| 27200|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |             0|   5549| 27200|
|0-24 months |JiVitA-3       |BANGLADESH   |WealthQ3       |             1|   1232| 27200|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |             0|   1165|  5438|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ4       |             1|    207|  5438|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |             0|   1036|  5438|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ1       |             1|    338|  5438|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |             0|   1025|  5438|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ2       |             1|    286|  5438|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |             0|   1108|  5438|
|0-24 months |JiVitA-4       |BANGLADESH   |WealthQ3       |             1|    273|  5438|
|0-24 months |LCNI-5         |MALAWI       |WealthQ4       |             0|    153|   828|
|0-24 months |LCNI-5         |MALAWI       |WealthQ4       |             1|     49|   828|
|0-24 months |LCNI-5         |MALAWI       |WealthQ1       |             0|    182|   828|
|0-24 months |LCNI-5         |MALAWI       |WealthQ1       |             1|     36|   828|
|0-24 months |LCNI-5         |MALAWI       |WealthQ2       |             0|    152|   828|
|0-24 months |LCNI-5         |MALAWI       |WealthQ2       |             1|     48|   828|
|0-24 months |LCNI-5         |MALAWI       |WealthQ3       |             0|    167|   828|
|0-24 months |LCNI-5         |MALAWI       |WealthQ3       |             1|     41|   828|
|0-24 months |MAL-ED         |INDIA        |WealthQ4       |             0|     32|   240|
|0-24 months |MAL-ED         |INDIA        |WealthQ4       |             1|     15|   240|
|0-24 months |MAL-ED         |INDIA        |WealthQ1       |             0|     56|   240|
|0-24 months |MAL-ED         |INDIA        |WealthQ1       |             1|     13|   240|
|0-24 months |MAL-ED         |INDIA        |WealthQ2       |             0|     50|   240|
|0-24 months |MAL-ED         |INDIA        |WealthQ2       |             1|     19|   240|
|0-24 months |MAL-ED         |INDIA        |WealthQ3       |             0|     44|   240|
|0-24 months |MAL-ED         |INDIA        |WealthQ3       |             1|     11|   240|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ4       |             0|     44|   244|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ4       |             1|     12|   244|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ1       |             0|     58|   244|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ1       |             1|     18|   244|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ2       |             0|     39|   244|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ2       |             1|     11|   244|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ3       |             0|     53|   244|
|0-24 months |MAL-ED         |BANGLADESH   |WealthQ3       |             1|      9|   244|
|0-24 months |MAL-ED         |PERU         |WealthQ4       |             0|     61|   284|
|0-24 months |MAL-ED         |PERU         |WealthQ4       |             1|     15|   284|
|0-24 months |MAL-ED         |PERU         |WealthQ1       |             0|     45|   284|
|0-24 months |MAL-ED         |PERU         |WealthQ1       |             1|     12|   284|
|0-24 months |MAL-ED         |PERU         |WealthQ2       |             0|     51|   284|
|0-24 months |MAL-ED         |PERU         |WealthQ2       |             1|     20|   284|
|0-24 months |MAL-ED         |PERU         |WealthQ3       |             0|     68|   284|
|0-24 months |MAL-ED         |PERU         |WealthQ3       |             1|     12|   284|
|0-24 months |MAL-ED         |NEPAL        |WealthQ4       |             0|     67|   235|
|0-24 months |MAL-ED         |NEPAL        |WealthQ4       |             1|      7|   235|
|0-24 months |MAL-ED         |NEPAL        |WealthQ1       |             0|     52|   235|
|0-24 months |MAL-ED         |NEPAL        |WealthQ1       |             1|      6|   235|
|0-24 months |MAL-ED         |NEPAL        |WealthQ2       |             0|     56|   235|
|0-24 months |MAL-ED         |NEPAL        |WealthQ2       |             1|      5|   235|
|0-24 months |MAL-ED         |NEPAL        |WealthQ3       |             0|     39|   235|
|0-24 months |MAL-ED         |NEPAL        |WealthQ3       |             1|      3|   235|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ4       |             0|     42|   207|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ4       |             1|      3|   207|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ1       |             0|     56|   207|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ1       |             1|      6|   207|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ2       |             0|     45|   207|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ2       |             1|      4|   207|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ3       |             0|     44|   207|
|0-24 months |MAL-ED         |BRAZIL       |WealthQ3       |             1|      7|   207|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ4       |             0|     24|   251|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ4       |             1|     34|   251|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ1       |             0|     34|   251|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ1       |             1|     37|   251|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ2       |             0|     31|   251|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ2       |             1|     28|   251|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ3       |             0|     32|   251|
|0-24 months |MAL-ED         |TANZANIA     |WealthQ3       |             1|     31|   251|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |             0|     50|   271|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ4       |             1|     13|   271|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |             0|     62|   271|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ1       |             1|     19|   271|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |             0|     45|   271|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ2       |             1|      7|   271|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |             0|     49|   271|
|0-24 months |MAL-ED         |SOUTH AFRICA |WealthQ3       |             1|     26|   271|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ4       |             0|    134|   700|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ4       |             1|     27|   700|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ1       |             0|    147|   700|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ1       |             1|     27|   700|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ2       |             0|    158|   700|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ2       |             1|     18|   700|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ3       |             0|    166|   700|
|0-24 months |PROVIDE        |BANGLADESH   |WealthQ3       |             1|     23|   700|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |             0|    554|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ4       |             1|     62|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |             0|    616|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ1       |             1|     58|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |             0|    434|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ2       |             1|     47|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |             0|    551|  2393|
|0-24 months |TanzaniaChild2 |TANZANIA     |WealthQ3       |             1|     71|  2393|
|0-24 months |Vellore Crypto |INDIA        |WealthQ4       |             0|     70|   410|
|0-24 months |Vellore Crypto |INDIA        |WealthQ4       |             1|     24|   410|
|0-24 months |Vellore Crypto |INDIA        |WealthQ1       |             0|    102|   410|
|0-24 months |Vellore Crypto |INDIA        |WealthQ1       |             1|     30|   410|
|0-24 months |Vellore Crypto |INDIA        |WealthQ2       |             0|     83|   410|
|0-24 months |Vellore Crypto |INDIA        |WealthQ2       |             1|     30|   410|
|0-24 months |Vellore Crypto |INDIA        |WealthQ3       |             0|     53|   410|
|0-24 months |Vellore Crypto |INDIA        |WealthQ3       |             1|     18|   410|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ4       |             0|     88|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ4       |             1|     24|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ1       |             0|     62|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ1       |             1|     26|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ2       |             0|     59|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ2       |             1|     20|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ3       |             0|     68|   368|
|0-6 months  |CMC-V-BCS-2002 |INDIA        |WealthQ3       |             1|     21|   368|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ4       |             0|    358|  1045|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ4       |             1|     31|  1045|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ1       |             0|    195|  1045|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ1       |             1|     28|  1045|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ2       |             0|    161|  1045|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ2       |             1|     21|  1045|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ3       |             0|    225|  1045|
|0-6 months  |COHORTS        |GUATEMALA    |WealthQ3       |             1|     26|  1045|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ4       |             0|    836|  3055|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ4       |             1|     38|  3055|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ1       |             0|    627|  3055|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ1       |             1|     53|  3055|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ2       |             0|    506|  3055|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ2       |             1|     37|  3055|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ3       |             0|    895|  3055|
|0-6 months  |COHORTS        |PHILIPPINES  |WealthQ3       |             1|     63|  3055|
|0-6 months  |CONTENT        |PERU         |WealthQ4       |             0|     44|   215|
|0-6 months  |CONTENT        |PERU         |WealthQ4       |             1|      3|   215|
|0-6 months  |CONTENT        |PERU         |WealthQ1       |             0|     63|   215|
|0-6 months  |CONTENT        |PERU         |WealthQ1       |             1|      3|   215|
|0-6 months  |CONTENT        |PERU         |WealthQ2       |             0|     48|   215|
|0-6 months  |CONTENT        |PERU         |WealthQ2       |             1|      2|   215|
|0-6 months  |CONTENT        |PERU         |WealthQ3       |             0|     52|   215|
|0-6 months  |CONTENT        |PERU         |WealthQ3       |             1|      0|   215|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ4       |             0|    158|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ4       |             1|     13|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ1       |             0|    154|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ1       |             1|     16|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ2       |             0|    162|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ2       |             1|     13|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ3       |             0|    164|   698|
|0-6 months  |GMS-Nepal      |NEPAL        |WealthQ3       |             1|     18|   698|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ4       |             0|   6244| 27135|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ4       |             1|    928| 27135|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ1       |             0|   5473| 27135|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ1       |             1|   1083| 27135|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ2       |             0|   5612| 27135|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ2       |             1|   1024| 27135|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ3       |             0|   5807| 27135|
|0-6 months  |JiVitA-3       |BANGLADESH   |WealthQ3       |             1|    964| 27135|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ4       |             0|   1199|  5126|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ4       |             1|    103|  5126|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ1       |             0|   1127|  5126|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ1       |             1|    154|  5126|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ2       |             0|   1109|  5126|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ2       |             1|    129|  5126|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ3       |             0|   1172|  5126|
|0-6 months  |JiVitA-4       |BANGLADESH   |WealthQ3       |             1|    133|  5126|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ4       |             0|     62|   266|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ4       |             1|      1|   266|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ1       |             0|     61|   266|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ1       |             1|      4|   266|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ2       |             0|     58|   266|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ2       |             1|      6|   266|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ3       |             0|     65|   266|
|0-6 months  |LCNI-5         |MALAWI       |WealthQ3       |             1|      9|   266|
|0-6 months  |MAL-ED         |INDIA        |WealthQ4       |             0|     43|   240|
|0-6 months  |MAL-ED         |INDIA        |WealthQ4       |             1|      4|   240|
|0-6 months  |MAL-ED         |INDIA        |WealthQ1       |             0|     61|   240|
|0-6 months  |MAL-ED         |INDIA        |WealthQ1       |             1|      8|   240|
|0-6 months  |MAL-ED         |INDIA        |WealthQ2       |             0|     60|   240|
|0-6 months  |MAL-ED         |INDIA        |WealthQ2       |             1|      9|   240|
|0-6 months  |MAL-ED         |INDIA        |WealthQ3       |             0|     55|   240|
|0-6 months  |MAL-ED         |INDIA        |WealthQ3       |             1|      0|   240|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ4       |             0|     52|   244|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ4       |             1|      4|   244|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ1       |             0|     68|   244|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ1       |             1|      8|   244|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ2       |             0|     47|   244|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ2       |             1|      3|   244|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ3       |             0|     57|   244|
|0-6 months  |MAL-ED         |BANGLADESH   |WealthQ3       |             1|      5|   244|
|0-6 months  |MAL-ED         |PERU         |WealthQ4       |             0|     68|   284|
|0-6 months  |MAL-ED         |PERU         |WealthQ4       |             1|      8|   284|
|0-6 months  |MAL-ED         |PERU         |WealthQ1       |             0|     48|   284|
|0-6 months  |MAL-ED         |PERU         |WealthQ1       |             1|      9|   284|
|0-6 months  |MAL-ED         |PERU         |WealthQ2       |             0|     60|   284|
|0-6 months  |MAL-ED         |PERU         |WealthQ2       |             1|     11|   284|
|0-6 months  |MAL-ED         |PERU         |WealthQ3       |             0|     73|   284|
|0-6 months  |MAL-ED         |PERU         |WealthQ3       |             1|      7|   284|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ4       |             0|     71|   235|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ4       |             1|      3|   235|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ1       |             0|     55|   235|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ1       |             1|      3|   235|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ2       |             0|     58|   235|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ2       |             1|      3|   235|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ3       |             0|     41|   235|
|0-6 months  |MAL-ED         |NEPAL        |WealthQ3       |             1|      1|   235|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ4       |             0|     42|   207|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ4       |             1|      3|   207|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ1       |             0|     57|   207|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ1       |             1|      5|   207|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ2       |             0|     46|   207|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ2       |             1|      3|   207|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ3       |             0|     46|   207|
|0-6 months  |MAL-ED         |BRAZIL       |WealthQ3       |             1|      5|   207|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ4       |             0|     48|   251|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ4       |             1|     10|   251|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ1       |             0|     66|   251|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ1       |             1|      5|   251|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ2       |             0|     48|   251|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ2       |             1|     11|   251|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ3       |             0|     55|   251|
|0-6 months  |MAL-ED         |TANZANIA     |WealthQ3       |             1|      8|   251|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ4       |             0|     55|   271|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ4       |             1|      8|   271|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ1       |             0|     74|   271|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ1       |             1|      7|   271|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ2       |             0|     50|   271|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ2       |             1|      2|   271|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ3       |             0|     67|   271|
|0-6 months  |MAL-ED         |SOUTH AFRICA |WealthQ3       |             1|      8|   271|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ4       |             0|    154|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ4       |             1|      7|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ1       |             0|    162|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ1       |             1|     12|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ2       |             0|    170|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ2       |             1|      6|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ3       |             0|    183|   700|
|0-6 months  |PROVIDE        |BANGLADESH   |WealthQ3       |             1|      6|   700|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ4       |             0|    584|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ4       |             1|     32|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ1       |             0|    649|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ1       |             1|     25|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ2       |             0|    459|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ2       |             1|     22|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ3       |             0|    596|  2393|
|0-6 months  |TanzaniaChild2 |TANZANIA     |WealthQ3       |             1|     26|  2393|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ4       |             0|     82|   410|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ4       |             1|     12|   410|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ1       |             0|    114|   410|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ1       |             1|     18|   410|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ2       |             0|     92|   410|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ2       |             1|     21|   410|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ3       |             0|     60|   410|
|0-6 months  |Vellore Crypto |INDIA        |WealthQ3       |             1|     11|   410|


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


