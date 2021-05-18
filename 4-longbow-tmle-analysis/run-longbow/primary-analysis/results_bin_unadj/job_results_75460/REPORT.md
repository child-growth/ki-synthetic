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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** perdiar24

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                     |studyid       |country      |perdiar24 | ever_stunted| n_cell|    n|
|:--------------------------|:-------------|:------------|:---------|------------:|------:|----:|
|0-24 months (no birth st.) |CMIN          |BANGLADESH   |(0%, 5%]  |            0|     15|  165|
|0-24 months (no birth st.) |CMIN          |BANGLADESH   |(0%, 5%]  |            1|     52|  165|
|0-24 months (no birth st.) |CMIN          |BANGLADESH   |>5%       |            0|     23|  165|
|0-24 months (no birth st.) |CMIN          |BANGLADESH   |>5%       |            1|     63|  165|
|0-24 months (no birth st.) |CMIN          |BANGLADESH   |0%        |            0|      1|  165|
|0-24 months (no birth st.) |CMIN          |BANGLADESH   |0%        |            1|     11|  165|
|0-24 months (no birth st.) |CONTENT       |PERU         |(0%, 5%]  |            0|    103|  195|
|0-24 months (no birth st.) |CONTENT       |PERU         |(0%, 5%]  |            1|     16|  195|
|0-24 months (no birth st.) |CONTENT       |PERU         |>5%       |            0|     58|  195|
|0-24 months (no birth st.) |CONTENT       |PERU         |>5%       |            1|     16|  195|
|0-24 months (no birth st.) |CONTENT       |PERU         |0%        |            0|      1|  195|
|0-24 months (no birth st.) |CONTENT       |PERU         |0%        |            1|      1|  195|
|0-24 months (no birth st.) |EE            |PAKISTAN     |(0%, 5%]  |            0|     11|  213|
|0-24 months (no birth st.) |EE            |PAKISTAN     |(0%, 5%]  |            1|     46|  213|
|0-24 months (no birth st.) |EE            |PAKISTAN     |>5%       |            0|      0|  213|
|0-24 months (no birth st.) |EE            |PAKISTAN     |>5%       |            1|      0|  213|
|0-24 months (no birth st.) |EE            |PAKISTAN     |0%        |            0|     30|  213|
|0-24 months (no birth st.) |EE            |PAKISTAN     |0%        |            1|    126|  213|
|0-24 months (no birth st.) |Guatemala BSC |GUATEMALA    |(0%, 5%]  |            0|     38|  236|
|0-24 months (no birth st.) |Guatemala BSC |GUATEMALA    |(0%, 5%]  |            1|     20|  236|
|0-24 months (no birth st.) |Guatemala BSC |GUATEMALA    |>5%       |            0|     86|  236|
|0-24 months (no birth st.) |Guatemala BSC |GUATEMALA    |>5%       |            1|     60|  236|
|0-24 months (no birth st.) |Guatemala BSC |GUATEMALA    |0%        |            0|     22|  236|
|0-24 months (no birth st.) |Guatemala BSC |GUATEMALA    |0%        |            1|     10|  236|
|0-24 months (no birth st.) |iLiNS-Zinc    |BURKINA FASO |(0%, 5%]  |            0|    779| 1916|
|0-24 months (no birth st.) |iLiNS-Zinc    |BURKINA FASO |(0%, 5%]  |            1|    177| 1916|
|0-24 months (no birth st.) |iLiNS-Zinc    |BURKINA FASO |>5%       |            0|    382| 1916|
|0-24 months (no birth st.) |iLiNS-Zinc    |BURKINA FASO |>5%       |            1|     75| 1916|
|0-24 months (no birth st.) |iLiNS-Zinc    |BURKINA FASO |0%        |            0|    411| 1916|
|0-24 months (no birth st.) |iLiNS-Zinc    |BURKINA FASO |0%        |            1|     92| 1916|
|0-24 months (no birth st.) |JiVitA-4      |BANGLADESH   |(0%, 5%]  |            0|   1929| 3886|
|0-24 months (no birth st.) |JiVitA-4      |BANGLADESH   |(0%, 5%]  |            1|   1355| 3886|
|0-24 months (no birth st.) |JiVitA-4      |BANGLADESH   |>5%       |            0|    264| 3886|
|0-24 months (no birth st.) |JiVitA-4      |BANGLADESH   |>5%       |            1|    188| 3886|
|0-24 months (no birth st.) |JiVitA-4      |BANGLADESH   |0%        |            0|     86| 3886|
|0-24 months (no birth st.) |JiVitA-4      |BANGLADESH   |0%        |            1|     64| 3886|
|0-24 months (no birth st.) |MAL-ED        |INDIA        |(0%, 5%]  |            0|     76|  210|
|0-24 months (no birth st.) |MAL-ED        |INDIA        |(0%, 5%]  |            1|     84|  210|
|0-24 months (no birth st.) |MAL-ED        |INDIA        |>5%       |            0|     23|  210|
|0-24 months (no birth st.) |MAL-ED        |INDIA        |>5%       |            1|     26|  210|
|0-24 months (no birth st.) |MAL-ED        |INDIA        |0%        |            0|      0|  210|
|0-24 months (no birth st.) |MAL-ED        |INDIA        |0%        |            1|      1|  210|
|0-24 months (no birth st.) |MAL-ED        |BANGLADESH   |(0%, 5%]  |            0|     53|  217|
|0-24 months (no birth st.) |MAL-ED        |BANGLADESH   |(0%, 5%]  |            1|     62|  217|
|0-24 months (no birth st.) |MAL-ED        |BANGLADESH   |>5%       |            0|     39|  217|
|0-24 months (no birth st.) |MAL-ED        |BANGLADESH   |>5%       |            1|     41|  217|
|0-24 months (no birth st.) |MAL-ED        |BANGLADESH   |0%        |            0|     11|  217|
|0-24 months (no birth st.) |MAL-ED        |BANGLADESH   |0%        |            1|     11|  217|
|0-24 months (no birth st.) |MAL-ED        |PERU         |(0%, 5%]  |            0|     48|  266|
|0-24 months (no birth st.) |MAL-ED        |PERU         |(0%, 5%]  |            1|     63|  266|
|0-24 months (no birth st.) |MAL-ED        |PERU         |>5%       |            0|     57|  266|
|0-24 months (no birth st.) |MAL-ED        |PERU         |>5%       |            1|     70|  266|
|0-24 months (no birth st.) |MAL-ED        |PERU         |0%        |            0|     10|  266|
|0-24 months (no birth st.) |MAL-ED        |PERU         |0%        |            1|     18|  266|
|0-24 months (no birth st.) |MAL-ED        |NEPAL        |(0%, 5%]  |            0|     97|  211|
|0-24 months (no birth st.) |MAL-ED        |NEPAL        |(0%, 5%]  |            1|     32|  211|
|0-24 months (no birth st.) |MAL-ED        |NEPAL        |>5%       |            0|     58|  211|
|0-24 months (no birth st.) |MAL-ED        |NEPAL        |>5%       |            1|     23|  211|
|0-24 months (no birth st.) |MAL-ED        |NEPAL        |0%        |            0|      1|  211|
|0-24 months (no birth st.) |MAL-ED        |NEPAL        |0%        |            1|      0|  211|
|0-24 months (no birth st.) |MAL-ED        |BRAZIL       |(0%, 5%]  |            0|     76|  202|
|0-24 months (no birth st.) |MAL-ED        |BRAZIL       |(0%, 5%]  |            1|     18|  202|
|0-24 months (no birth st.) |MAL-ED        |BRAZIL       |>5%       |            0|      3|  202|
|0-24 months (no birth st.) |MAL-ED        |BRAZIL       |>5%       |            1|      0|  202|
|0-24 months (no birth st.) |MAL-ED        |BRAZIL       |0%        |            0|     91|  202|
|0-24 months (no birth st.) |MAL-ED        |BRAZIL       |0%        |            1|     14|  202|
|0-24 months (no birth st.) |MAL-ED        |TANZANIA     |(0%, 5%]  |            0|     25|  219|
|0-24 months (no birth st.) |MAL-ED        |TANZANIA     |(0%, 5%]  |            1|    117|  219|
|0-24 months (no birth st.) |MAL-ED        |TANZANIA     |>5%       |            0|     15|  219|
|0-24 months (no birth st.) |MAL-ED        |TANZANIA     |>5%       |            1|     59|  219|
|0-24 months (no birth st.) |MAL-ED        |TANZANIA     |0%        |            0|      0|  219|
|0-24 months (no birth st.) |MAL-ED        |TANZANIA     |0%        |            1|      3|  219|
|0-24 months (no birth st.) |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |            0|     89|  274|
|0-24 months (no birth st.) |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |            1|     76|  274|
|0-24 months (no birth st.) |MAL-ED        |SOUTH AFRICA |>5%       |            0|      0|  274|
|0-24 months (no birth st.) |MAL-ED        |SOUTH AFRICA |>5%       |            1|      1|  274|
|0-24 months (no birth st.) |MAL-ED        |SOUTH AFRICA |0%        |            0|     48|  274|
|0-24 months (no birth st.) |MAL-ED        |SOUTH AFRICA |0%        |            1|     60|  274|
|0-24 months (no birth st.) |NIH-Birth     |BANGLADESH   |(0%, 5%]  |            0|    127|  527|
|0-24 months (no birth st.) |NIH-Birth     |BANGLADESH   |(0%, 5%]  |            1|    169|  527|
|0-24 months (no birth st.) |NIH-Birth     |BANGLADESH   |>5%       |            0|     63|  527|
|0-24 months (no birth st.) |NIH-Birth     |BANGLADESH   |>5%       |            1|    126|  527|
|0-24 months (no birth st.) |NIH-Birth     |BANGLADESH   |0%        |            0|     20|  527|
|0-24 months (no birth st.) |NIH-Birth     |BANGLADESH   |0%        |            1|     22|  527|
|0-24 months (no birth st.) |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |            0|    214|  653|
|0-24 months (no birth st.) |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |            1|    144|  653|
|0-24 months (no birth st.) |NIH-Crypto    |BANGLADESH   |>5%       |            0|    100|  653|
|0-24 months (no birth st.) |NIH-Crypto    |BANGLADESH   |>5%       |            1|     68|  653|
|0-24 months (no birth st.) |NIH-Crypto    |BANGLADESH   |0%        |            0|     82|  653|
|0-24 months (no birth st.) |NIH-Crypto    |BANGLADESH   |0%        |            1|     45|  653|
|0-24 months (no birth st.) |PROVIDE       |BANGLADESH   |(0%, 5%]  |            0|    243|  633|
|0-24 months (no birth st.) |PROVIDE       |BANGLADESH   |(0%, 5%]  |            1|    148|  633|
|0-24 months (no birth st.) |PROVIDE       |BANGLADESH   |>5%       |            0|    122|  633|
|0-24 months (no birth st.) |PROVIDE       |BANGLADESH   |>5%       |            1|     67|  633|
|0-24 months (no birth st.) |PROVIDE       |BANGLADESH   |0%        |            0|     30|  633|
|0-24 months (no birth st.) |PROVIDE       |BANGLADESH   |0%        |            1|     23|  633|
|0-24 months (no birth st.) |SAS-FoodSuppl |INDIA        |(0%, 5%]  |            0|     11|  257|
|0-24 months (no birth st.) |SAS-FoodSuppl |INDIA        |(0%, 5%]  |            1|     21|  257|
|0-24 months (no birth st.) |SAS-FoodSuppl |INDIA        |>5%       |            0|     39|  257|
|0-24 months (no birth st.) |SAS-FoodSuppl |INDIA        |>5%       |            1|    135|  257|
|0-24 months (no birth st.) |SAS-FoodSuppl |INDIA        |0%        |            0|     22|  257|
|0-24 months (no birth st.) |SAS-FoodSuppl |INDIA        |0%        |            1|     29|  257|
|0-6 months (no birth st.)  |CMIN          |BANGLADESH   |(0%, 5%]  |            0|     45|  165|
|0-6 months (no birth st.)  |CMIN          |BANGLADESH   |(0%, 5%]  |            1|     22|  165|
|0-6 months (no birth st.)  |CMIN          |BANGLADESH   |>5%       |            0|     64|  165|
|0-6 months (no birth st.)  |CMIN          |BANGLADESH   |>5%       |            1|     22|  165|
|0-6 months (no birth st.)  |CMIN          |BANGLADESH   |0%        |            0|      8|  165|
|0-6 months (no birth st.)  |CMIN          |BANGLADESH   |0%        |            1|      4|  165|
|0-6 months (no birth st.)  |CONTENT       |PERU         |(0%, 5%]  |            0|    115|  195|
|0-6 months (no birth st.)  |CONTENT       |PERU         |(0%, 5%]  |            1|      4|  195|
|0-6 months (no birth st.)  |CONTENT       |PERU         |>5%       |            0|     71|  195|
|0-6 months (no birth st.)  |CONTENT       |PERU         |>5%       |            1|      3|  195|
|0-6 months (no birth st.)  |CONTENT       |PERU         |0%        |            0|      2|  195|
|0-6 months (no birth st.)  |CONTENT       |PERU         |0%        |            1|      0|  195|
|0-6 months (no birth st.)  |EE            |PAKISTAN     |(0%, 5%]  |            0|     27|  213|
|0-6 months (no birth st.)  |EE            |PAKISTAN     |(0%, 5%]  |            1|     30|  213|
|0-6 months (no birth st.)  |EE            |PAKISTAN     |>5%       |            0|      0|  213|
|0-6 months (no birth st.)  |EE            |PAKISTAN     |>5%       |            1|      0|  213|
|0-6 months (no birth st.)  |EE            |PAKISTAN     |0%        |            0|     68|  213|
|0-6 months (no birth st.)  |EE            |PAKISTAN     |0%        |            1|     88|  213|
|0-6 months (no birth st.)  |Guatemala BSC |GUATEMALA    |(0%, 5%]  |            0|     52|  220|
|0-6 months (no birth st.)  |Guatemala BSC |GUATEMALA    |(0%, 5%]  |            1|      4|  220|
|0-6 months (no birth st.)  |Guatemala BSC |GUATEMALA    |>5%       |            0|    119|  220|
|0-6 months (no birth st.)  |Guatemala BSC |GUATEMALA    |>5%       |            1|     15|  220|
|0-6 months (no birth st.)  |Guatemala BSC |GUATEMALA    |0%        |            0|     28|  220|
|0-6 months (no birth st.)  |Guatemala BSC |GUATEMALA    |0%        |            1|      2|  220|
|0-6 months (no birth st.)  |JiVitA-4      |BANGLADESH   |(0%, 5%]  |            0|   2817| 3659|
|0-6 months (no birth st.)  |JiVitA-4      |BANGLADESH   |(0%, 5%]  |            1|    274| 3659|
|0-6 months (no birth st.)  |JiVitA-4      |BANGLADESH   |>5%       |            0|    399| 3659|
|0-6 months (no birth st.)  |JiVitA-4      |BANGLADESH   |>5%       |            1|     28| 3659|
|0-6 months (no birth st.)  |JiVitA-4      |BANGLADESH   |0%        |            0|    130| 3659|
|0-6 months (no birth st.)  |JiVitA-4      |BANGLADESH   |0%        |            1|     11| 3659|
|0-6 months (no birth st.)  |MAL-ED        |INDIA        |(0%, 5%]  |            0|    124|  210|
|0-6 months (no birth st.)  |MAL-ED        |INDIA        |(0%, 5%]  |            1|     36|  210|
|0-6 months (no birth st.)  |MAL-ED        |INDIA        |>5%       |            0|     39|  210|
|0-6 months (no birth st.)  |MAL-ED        |INDIA        |>5%       |            1|     10|  210|
|0-6 months (no birth st.)  |MAL-ED        |INDIA        |0%        |            0|      1|  210|
|0-6 months (no birth st.)  |MAL-ED        |INDIA        |0%        |            1|      0|  210|
|0-6 months (no birth st.)  |MAL-ED        |BANGLADESH   |(0%, 5%]  |            0|     89|  217|
|0-6 months (no birth st.)  |MAL-ED        |BANGLADESH   |(0%, 5%]  |            1|     26|  217|
|0-6 months (no birth st.)  |MAL-ED        |BANGLADESH   |>5%       |            0|     65|  217|
|0-6 months (no birth st.)  |MAL-ED        |BANGLADESH   |>5%       |            1|     15|  217|
|0-6 months (no birth st.)  |MAL-ED        |BANGLADESH   |0%        |            0|     16|  217|
|0-6 months (no birth st.)  |MAL-ED        |BANGLADESH   |0%        |            1|      6|  217|
|0-6 months (no birth st.)  |MAL-ED        |PERU         |(0%, 5%]  |            0|     68|  266|
|0-6 months (no birth st.)  |MAL-ED        |PERU         |(0%, 5%]  |            1|     43|  266|
|0-6 months (no birth st.)  |MAL-ED        |PERU         |>5%       |            0|     88|  266|
|0-6 months (no birth st.)  |MAL-ED        |PERU         |>5%       |            1|     39|  266|
|0-6 months (no birth st.)  |MAL-ED        |PERU         |0%        |            0|     18|  266|
|0-6 months (no birth st.)  |MAL-ED        |PERU         |0%        |            1|     10|  266|
|0-6 months (no birth st.)  |MAL-ED        |NEPAL        |(0%, 5%]  |            0|    118|  211|
|0-6 months (no birth st.)  |MAL-ED        |NEPAL        |(0%, 5%]  |            1|     11|  211|
|0-6 months (no birth st.)  |MAL-ED        |NEPAL        |>5%       |            0|     78|  211|
|0-6 months (no birth st.)  |MAL-ED        |NEPAL        |>5%       |            1|      3|  211|
|0-6 months (no birth st.)  |MAL-ED        |NEPAL        |0%        |            0|      1|  211|
|0-6 months (no birth st.)  |MAL-ED        |NEPAL        |0%        |            1|      0|  211|
|0-6 months (no birth st.)  |MAL-ED        |BRAZIL       |(0%, 5%]  |            0|     83|  202|
|0-6 months (no birth st.)  |MAL-ED        |BRAZIL       |(0%, 5%]  |            1|     11|  202|
|0-6 months (no birth st.)  |MAL-ED        |BRAZIL       |>5%       |            0|      3|  202|
|0-6 months (no birth st.)  |MAL-ED        |BRAZIL       |>5%       |            1|      0|  202|
|0-6 months (no birth st.)  |MAL-ED        |BRAZIL       |0%        |            0|     95|  202|
|0-6 months (no birth st.)  |MAL-ED        |BRAZIL       |0%        |            1|     10|  202|
|0-6 months (no birth st.)  |MAL-ED        |TANZANIA     |(0%, 5%]  |            0|     99|  219|
|0-6 months (no birth st.)  |MAL-ED        |TANZANIA     |(0%, 5%]  |            1|     43|  219|
|0-6 months (no birth st.)  |MAL-ED        |TANZANIA     |>5%       |            0|     52|  219|
|0-6 months (no birth st.)  |MAL-ED        |TANZANIA     |>5%       |            1|     22|  219|
|0-6 months (no birth st.)  |MAL-ED        |TANZANIA     |0%        |            0|      2|  219|
|0-6 months (no birth st.)  |MAL-ED        |TANZANIA     |0%        |            1|      1|  219|
|0-6 months (no birth st.)  |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |            0|    125|  274|
|0-6 months (no birth st.)  |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |            1|     40|  274|
|0-6 months (no birth st.)  |MAL-ED        |SOUTH AFRICA |>5%       |            0|      0|  274|
|0-6 months (no birth st.)  |MAL-ED        |SOUTH AFRICA |>5%       |            1|      1|  274|
|0-6 months (no birth st.)  |MAL-ED        |SOUTH AFRICA |0%        |            0|     72|  274|
|0-6 months (no birth st.)  |MAL-ED        |SOUTH AFRICA |0%        |            1|     36|  274|
|0-6 months (no birth st.)  |NIH-Birth     |BANGLADESH   |(0%, 5%]  |            0|    228|  527|
|0-6 months (no birth st.)  |NIH-Birth     |BANGLADESH   |(0%, 5%]  |            1|     68|  527|
|0-6 months (no birth st.)  |NIH-Birth     |BANGLADESH   |>5%       |            0|    148|  527|
|0-6 months (no birth st.)  |NIH-Birth     |BANGLADESH   |>5%       |            1|     41|  527|
|0-6 months (no birth st.)  |NIH-Birth     |BANGLADESH   |0%        |            0|     30|  527|
|0-6 months (no birth st.)  |NIH-Birth     |BANGLADESH   |0%        |            1|     12|  527|
|0-6 months (no birth st.)  |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |            0|    290|  653|
|0-6 months (no birth st.)  |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |            1|     68|  653|
|0-6 months (no birth st.)  |NIH-Crypto    |BANGLADESH   |>5%       |            0|    131|  653|
|0-6 months (no birth st.)  |NIH-Crypto    |BANGLADESH   |>5%       |            1|     37|  653|
|0-6 months (no birth st.)  |NIH-Crypto    |BANGLADESH   |0%        |            0|    108|  653|
|0-6 months (no birth st.)  |NIH-Crypto    |BANGLADESH   |0%        |            1|     19|  653|
|0-6 months (no birth st.)  |PROVIDE       |BANGLADESH   |(0%, 5%]  |            0|    321|  633|
|0-6 months (no birth st.)  |PROVIDE       |BANGLADESH   |(0%, 5%]  |            1|     70|  633|
|0-6 months (no birth st.)  |PROVIDE       |BANGLADESH   |>5%       |            0|    169|  633|
|0-6 months (no birth st.)  |PROVIDE       |BANGLADESH   |>5%       |            1|     20|  633|
|0-6 months (no birth st.)  |PROVIDE       |BANGLADESH   |0%        |            0|     42|  633|
|0-6 months (no birth st.)  |PROVIDE       |BANGLADESH   |0%        |            1|     11|  633|
|0-6 months (no birth st.)  |SAS-FoodSuppl |INDIA        |(0%, 5%]  |            0|     32|  257|
|0-6 months (no birth st.)  |SAS-FoodSuppl |INDIA        |(0%, 5%]  |            1|      0|  257|
|0-6 months (no birth st.)  |SAS-FoodSuppl |INDIA        |>5%       |            0|    172|  257|
|0-6 months (no birth st.)  |SAS-FoodSuppl |INDIA        |>5%       |            1|      2|  257|
|0-6 months (no birth st.)  |SAS-FoodSuppl |INDIA        |0%        |            0|     50|  257|
|0-6 months (no birth st.)  |SAS-FoodSuppl |INDIA        |0%        |            1|      1|  257|
|6-24 months                |CMIN          |BANGLADESH   |(0%, 5%]  |            0|     12|  108|
|6-24 months                |CMIN          |BANGLADESH   |(0%, 5%]  |            1|     30|  108|
|6-24 months                |CMIN          |BANGLADESH   |>5%       |            0|     17|  108|
|6-24 months                |CMIN          |BANGLADESH   |>5%       |            1|     41|  108|
|6-24 months                |CMIN          |BANGLADESH   |0%        |            0|      1|  108|
|6-24 months                |CMIN          |BANGLADESH   |0%        |            1|      7|  108|
|6-24 months                |CONTENT       |PERU         |(0%, 5%]  |            0|    103|  188|
|6-24 months                |CONTENT       |PERU         |(0%, 5%]  |            1|     12|  188|
|6-24 months                |CONTENT       |PERU         |>5%       |            0|     58|  188|
|6-24 months                |CONTENT       |PERU         |>5%       |            1|     13|  188|
|6-24 months                |CONTENT       |PERU         |0%        |            0|      1|  188|
|6-24 months                |CONTENT       |PERU         |0%        |            1|      1|  188|
|6-24 months                |EE            |PAKISTAN     |(0%, 5%]  |            0|     11|   93|
|6-24 months                |EE            |PAKISTAN     |(0%, 5%]  |            1|     16|   93|
|6-24 months                |EE            |PAKISTAN     |>5%       |            0|      0|   93|
|6-24 months                |EE            |PAKISTAN     |>5%       |            1|      0|   93|
|6-24 months                |EE            |PAKISTAN     |0%        |            0|     28|   93|
|6-24 months                |EE            |PAKISTAN     |0%        |            1|     38|   93|
|6-24 months                |Guatemala BSC |GUATEMALA    |(0%, 5%]  |            0|     32|  193|
|6-24 months                |Guatemala BSC |GUATEMALA    |(0%, 5%]  |            1|     17|  193|
|6-24 months                |Guatemala BSC |GUATEMALA    |>5%       |            0|     71|  193|
|6-24 months                |Guatemala BSC |GUATEMALA    |>5%       |            1|     48|  193|
|6-24 months                |Guatemala BSC |GUATEMALA    |0%        |            0|     17|  193|
|6-24 months                |Guatemala BSC |GUATEMALA    |0%        |            1|      8|  193|
|6-24 months                |iLiNS-Zinc    |BURKINA FASO |(0%, 5%]  |            0|    779| 2470|
|6-24 months                |iLiNS-Zinc    |BURKINA FASO |(0%, 5%]  |            1|    453| 2470|
|6-24 months                |iLiNS-Zinc    |BURKINA FASO |>5%       |            0|    382| 2470|
|6-24 months                |iLiNS-Zinc    |BURKINA FASO |>5%       |            1|    198| 2470|
|6-24 months                |iLiNS-Zinc    |BURKINA FASO |0%        |            0|    411| 2470|
|6-24 months                |iLiNS-Zinc    |BURKINA FASO |0%        |            1|    247| 2470|
|6-24 months                |JiVitA-4      |BANGLADESH   |(0%, 5%]  |            0|   1923| 3649|
|6-24 months                |JiVitA-4      |BANGLADESH   |(0%, 5%]  |            1|   1148| 3649|
|6-24 months                |JiVitA-4      |BANGLADESH   |>5%       |            0|    263| 3649|
|6-24 months                |JiVitA-4      |BANGLADESH   |>5%       |            1|    176| 3649|
|6-24 months                |JiVitA-4      |BANGLADESH   |0%        |            0|     84| 3649|
|6-24 months                |JiVitA-4      |BANGLADESH   |0%        |            1|     55| 3649|
|6-24 months                |MAL-ED        |INDIA        |(0%, 5%]  |            0|     67|  154|
|6-24 months                |MAL-ED        |INDIA        |(0%, 5%]  |            1|     48|  154|
|6-24 months                |MAL-ED        |INDIA        |>5%       |            0|     22|  154|
|6-24 months                |MAL-ED        |INDIA        |>5%       |            1|     16|  154|
|6-24 months                |MAL-ED        |INDIA        |0%        |            0|      0|  154|
|6-24 months                |MAL-ED        |INDIA        |0%        |            1|      1|  154|
|6-24 months                |MAL-ED        |BANGLADESH   |(0%, 5%]  |            0|     49|  158|
|6-24 months                |MAL-ED        |BANGLADESH   |(0%, 5%]  |            1|     36|  158|
|6-24 months                |MAL-ED        |BANGLADESH   |>5%       |            0|     32|  158|
|6-24 months                |MAL-ED        |BANGLADESH   |>5%       |            1|     26|  158|
|6-24 months                |MAL-ED        |BANGLADESH   |0%        |            0|     10|  158|
|6-24 months                |MAL-ED        |BANGLADESH   |0%        |            1|      5|  158|
|6-24 months                |MAL-ED        |PERU         |(0%, 5%]  |            0|     41|  149|
|6-24 months                |MAL-ED        |PERU         |(0%, 5%]  |            1|     20|  149|
|6-24 months                |MAL-ED        |PERU         |>5%       |            0|     43|  149|
|6-24 months                |MAL-ED        |PERU         |>5%       |            1|     31|  149|
|6-24 months                |MAL-ED        |PERU         |0%        |            0|      6|  149|
|6-24 months                |MAL-ED        |PERU         |0%        |            1|      8|  149|
|6-24 months                |MAL-ED        |NEPAL        |(0%, 5%]  |            0|     95|  194|
|6-24 months                |MAL-ED        |NEPAL        |(0%, 5%]  |            1|     21|  194|
|6-24 months                |MAL-ED        |NEPAL        |>5%       |            0|     57|  194|
|6-24 months                |MAL-ED        |NEPAL        |>5%       |            1|     20|  194|
|6-24 months                |MAL-ED        |NEPAL        |0%        |            0|      1|  194|
|6-24 months                |MAL-ED        |NEPAL        |0%        |            1|      0|  194|
|6-24 months                |MAL-ED        |BRAZIL       |(0%, 5%]  |            0|     66|  163|
|6-24 months                |MAL-ED        |BRAZIL       |(0%, 5%]  |            1|      7|  163|
|6-24 months                |MAL-ED        |BRAZIL       |>5%       |            0|      2|  163|
|6-24 months                |MAL-ED        |BRAZIL       |>5%       |            1|      0|  163|
|6-24 months                |MAL-ED        |BRAZIL       |0%        |            0|     84|  163|
|6-24 months                |MAL-ED        |BRAZIL       |0%        |            1|      4|  163|
|6-24 months                |MAL-ED        |TANZANIA     |(0%, 5%]  |            0|     21|  144|
|6-24 months                |MAL-ED        |TANZANIA     |(0%, 5%]  |            1|     74|  144|
|6-24 months                |MAL-ED        |TANZANIA     |>5%       |            0|     10|  144|
|6-24 months                |MAL-ED        |TANZANIA     |>5%       |            1|     37|  144|
|6-24 months                |MAL-ED        |TANZANIA     |0%        |            0|      0|  144|
|6-24 months                |MAL-ED        |TANZANIA     |0%        |            1|      2|  144|
|6-24 months                |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |            0|     67|  158|
|6-24 months                |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |            1|     36|  158|
|6-24 months                |MAL-ED        |SOUTH AFRICA |>5%       |            0|      0|  158|
|6-24 months                |MAL-ED        |SOUTH AFRICA |>5%       |            1|      0|  158|
|6-24 months                |MAL-ED        |SOUTH AFRICA |0%        |            0|     31|  158|
|6-24 months                |MAL-ED        |SOUTH AFRICA |0%        |            1|     24|  158|
|6-24 months                |NIH-Birth     |BANGLADESH   |(0%, 5%]  |            0|     92|  342|
|6-24 months                |NIH-Birth     |BANGLADESH   |(0%, 5%]  |            1|    101|  342|
|6-24 months                |NIH-Birth     |BANGLADESH   |>5%       |            0|     45|  342|
|6-24 months                |NIH-Birth     |BANGLADESH   |>5%       |            1|     85|  342|
|6-24 months                |NIH-Birth     |BANGLADESH   |0%        |            0|      9|  342|
|6-24 months                |NIH-Birth     |BANGLADESH   |0%        |            1|     10|  342|
|6-24 months                |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |            0|    200|  506|
|6-24 months                |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |            1|     76|  506|
|6-24 months                |NIH-Crypto    |BANGLADESH   |>5%       |            0|     95|  506|
|6-24 months                |NIH-Crypto    |BANGLADESH   |>5%       |            1|     31|  506|
|6-24 months                |NIH-Crypto    |BANGLADESH   |0%        |            0|     78|  506|
|6-24 months                |NIH-Crypto    |BANGLADESH   |0%        |            1|     26|  506|
|6-24 months                |PROVIDE       |BANGLADESH   |(0%, 5%]  |            0|    201|  456|
|6-24 months                |PROVIDE       |BANGLADESH   |(0%, 5%]  |            1|     78|  456|
|6-24 months                |PROVIDE       |BANGLADESH   |>5%       |            0|     97|  456|
|6-24 months                |PROVIDE       |BANGLADESH   |>5%       |            1|     47|  456|
|6-24 months                |PROVIDE       |BANGLADESH   |0%        |            0|     21|  456|
|6-24 months                |PROVIDE       |BANGLADESH   |0%        |            1|     12|  456|
|6-24 months                |SAS-FoodSuppl |INDIA        |(0%, 5%]  |            0|     11|  243|
|6-24 months                |SAS-FoodSuppl |INDIA        |(0%, 5%]  |            1|     21|  243|
|6-24 months                |SAS-FoodSuppl |INDIA        |>5%       |            0|     31|  243|
|6-24 months                |SAS-FoodSuppl |INDIA        |>5%       |            1|    135|  243|
|6-24 months                |SAS-FoodSuppl |INDIA        |0%        |            0|     17|  243|
|6-24 months                |SAS-FoodSuppl |INDIA        |0%        |            1|     28|  243|


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


