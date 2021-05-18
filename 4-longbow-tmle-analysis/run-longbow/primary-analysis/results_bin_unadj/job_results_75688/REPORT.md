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

**Outcome Variable:** ever_swasted

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

|agecat                      |studyid       |country      |perdiar24 | ever_swasted| n_cell|    n|
|:---------------------------|:-------------|:------------|:---------|------------:|------:|----:|
|0-24 months (no birth wast) |CMIN          |BANGLADESH   |(0%, 5%]  |            0|     93|  265|
|0-24 months (no birth wast) |CMIN          |BANGLADESH   |(0%, 5%]  |            1|     17|  265|
|0-24 months (no birth wast) |CMIN          |BANGLADESH   |>5%       |            0|    115|  265|
|0-24 months (no birth wast) |CMIN          |BANGLADESH   |>5%       |            1|     19|  265|
|0-24 months (no birth wast) |CMIN          |BANGLADESH   |0%        |            0|     20|  265|
|0-24 months (no birth wast) |CMIN          |BANGLADESH   |0%        |            1|      1|  265|
|0-24 months (no birth wast) |CONTENT       |PERU         |(0%, 5%]  |            0|    132|  215|
|0-24 months (no birth wast) |CONTENT       |PERU         |(0%, 5%]  |            1|      0|  215|
|0-24 months (no birth wast) |CONTENT       |PERU         |>5%       |            0|     81|  215|
|0-24 months (no birth wast) |CONTENT       |PERU         |>5%       |            1|      0|  215|
|0-24 months (no birth wast) |CONTENT       |PERU         |0%        |            0|      1|  215|
|0-24 months (no birth wast) |CONTENT       |PERU         |0%        |            1|      1|  215|
|0-24 months (no birth wast) |EE            |PAKISTAN     |(0%, 5%]  |            0|     96|  377|
|0-24 months (no birth wast) |EE            |PAKISTAN     |(0%, 5%]  |            1|     18|  377|
|0-24 months (no birth wast) |EE            |PAKISTAN     |>5%       |            0|      0|  377|
|0-24 months (no birth wast) |EE            |PAKISTAN     |>5%       |            1|      0|  377|
|0-24 months (no birth wast) |EE            |PAKISTAN     |0%        |            0|    215|  377|
|0-24 months (no birth wast) |EE            |PAKISTAN     |0%        |            1|     48|  377|
|0-24 months (no birth wast) |Guatemala BSC |GUATEMALA    |(0%, 5%]  |            0|     76|  309|
|0-24 months (no birth wast) |Guatemala BSC |GUATEMALA    |(0%, 5%]  |            1|      0|  309|
|0-24 months (no birth wast) |Guatemala BSC |GUATEMALA    |>5%       |            0|    193|  309|
|0-24 months (no birth wast) |Guatemala BSC |GUATEMALA    |>5%       |            1|      2|  309|
|0-24 months (no birth wast) |Guatemala BSC |GUATEMALA    |0%        |            0|     38|  309|
|0-24 months (no birth wast) |Guatemala BSC |GUATEMALA    |0%        |            1|      0|  309|
|0-24 months (no birth wast) |iLiNS-Zinc    |BURKINA FASO |(0%, 5%]  |            0|   1167| 2341|
|0-24 months (no birth wast) |iLiNS-Zinc    |BURKINA FASO |(0%, 5%]  |            1|     11| 2341|
|0-24 months (no birth wast) |iLiNS-Zinc    |BURKINA FASO |>5%       |            0|    537| 2341|
|0-24 months (no birth wast) |iLiNS-Zinc    |BURKINA FASO |>5%       |            1|      4| 2341|
|0-24 months (no birth wast) |iLiNS-Zinc    |BURKINA FASO |0%        |            0|    617| 2341|
|0-24 months (no birth wast) |iLiNS-Zinc    |BURKINA FASO |0%        |            1|      5| 2341|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH   |(0%, 5%]  |            0|   4374| 5396|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH   |(0%, 5%]  |            1|    198| 5396|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH   |>5%       |            0|    594| 5396|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH   |>5%       |            1|     22| 5396|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH   |0%        |            0|    196| 5396|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH   |0%        |            1|     12| 5396|
|0-24 months (no birth wast) |MAL-ED        |INDIA        |(0%, 5%]  |            0|    179|  246|
|0-24 months (no birth wast) |MAL-ED        |INDIA        |(0%, 5%]  |            1|     10|  246|
|0-24 months (no birth wast) |MAL-ED        |INDIA        |>5%       |            0|     53|  246|
|0-24 months (no birth wast) |MAL-ED        |INDIA        |>5%       |            1|      3|  246|
|0-24 months (no birth wast) |MAL-ED        |INDIA        |0%        |            0|      1|  246|
|0-24 months (no birth wast) |MAL-ED        |INDIA        |0%        |            1|      0|  246|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH   |(0%, 5%]  |            0|    131|  263|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH   |(0%, 5%]  |            1|      7|  263|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH   |>5%       |            0|     93|  263|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH   |>5%       |            1|      5|  263|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH   |0%        |            0|     27|  263|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH   |0%        |            1|      0|  263|
|0-24 months (no birth wast) |MAL-ED        |PERU         |(0%, 5%]  |            0|    124|  302|
|0-24 months (no birth wast) |MAL-ED        |PERU         |(0%, 5%]  |            1|      3|  302|
|0-24 months (no birth wast) |MAL-ED        |PERU         |>5%       |            0|    142|  302|
|0-24 months (no birth wast) |MAL-ED        |PERU         |>5%       |            1|      1|  302|
|0-24 months (no birth wast) |MAL-ED        |PERU         |0%        |            0|     32|  302|
|0-24 months (no birth wast) |MAL-ED        |PERU         |0%        |            1|      0|  302|
|0-24 months (no birth wast) |MAL-ED        |NEPAL        |(0%, 5%]  |            0|    142|  239|
|0-24 months (no birth wast) |MAL-ED        |NEPAL        |(0%, 5%]  |            1|      2|  239|
|0-24 months (no birth wast) |MAL-ED        |NEPAL        |>5%       |            0|     93|  239|
|0-24 months (no birth wast) |MAL-ED        |NEPAL        |>5%       |            1|      1|  239|
|0-24 months (no birth wast) |MAL-ED        |NEPAL        |0%        |            0|      1|  239|
|0-24 months (no birth wast) |MAL-ED        |NEPAL        |0%        |            1|      0|  239|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL       |(0%, 5%]  |            0|    100|  233|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL       |(0%, 5%]  |            1|      3|  233|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL       |>5%       |            0|      4|  233|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL       |>5%       |            1|      0|  233|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL       |0%        |            0|    125|  233|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL       |0%        |            1|      1|  233|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA     |(0%, 5%]  |            0|    170|  261|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA     |(0%, 5%]  |            1|      3|  261|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA     |>5%       |            0|     80|  261|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA     |>5%       |            1|      4|  261|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA     |0%        |            0|      3|  261|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA     |0%        |            1|      1|  261|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |            0|    167|  306|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |            1|     10|  306|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA |>5%       |            0|      2|  306|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA |>5%       |            1|      0|  306|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA |0%        |            0|    125|  306|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA |0%        |            1|      2|  306|
|0-24 months (no birth wast) |NIH-Birth     |BANGLADESH   |(0%, 5%]  |            0|    301|  599|
|0-24 months (no birth wast) |NIH-Birth     |BANGLADESH   |(0%, 5%]  |            1|     32|  599|
|0-24 months (no birth wast) |NIH-Birth     |BANGLADESH   |>5%       |            0|    205|  599|
|0-24 months (no birth wast) |NIH-Birth     |BANGLADESH   |>5%       |            1|     15|  599|
|0-24 months (no birth wast) |NIH-Birth     |BANGLADESH   |0%        |            0|     40|  599|
|0-24 months (no birth wast) |NIH-Birth     |BANGLADESH   |0%        |            1|      6|  599|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |            0|    401|  754|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |            1|     15|  754|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH   |>5%       |            0|    190|  754|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH   |>5%       |            1|      4|  754|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH   |0%        |            0|    143|  754|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH   |0%        |            1|      1|  754|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH   |(0%, 5%]  |            0|    412|  687|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH   |(0%, 5%]  |            1|     12|  687|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH   |>5%       |            0|    199|  687|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH   |>5%       |            1|      5|  687|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH   |0%        |            0|     57|  687|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH   |0%        |            1|      2|  687|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA        |(0%, 5%]  |            0|     43|  397|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA        |(0%, 5%]  |            1|      4|  397|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA        |>5%       |            0|    245|  397|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA        |>5%       |            1|     26|  397|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA        |0%        |            0|     69|  397|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA        |0%        |            1|     10|  397|
|0-6 months (no birth wast)  |CMIN          |BANGLADESH   |(0%, 5%]  |            0|    104|  264|
|0-6 months (no birth wast)  |CMIN          |BANGLADESH   |(0%, 5%]  |            1|      6|  264|
|0-6 months (no birth wast)  |CMIN          |BANGLADESH   |>5%       |            0|    131|  264|
|0-6 months (no birth wast)  |CMIN          |BANGLADESH   |>5%       |            1|      3|  264|
|0-6 months (no birth wast)  |CMIN          |BANGLADESH   |0%        |            0|     20|  264|
|0-6 months (no birth wast)  |CMIN          |BANGLADESH   |0%        |            1|      0|  264|
|0-6 months (no birth wast)  |CONTENT       |PERU         |(0%, 5%]  |            0|    132|  215|
|0-6 months (no birth wast)  |CONTENT       |PERU         |(0%, 5%]  |            1|      0|  215|
|0-6 months (no birth wast)  |CONTENT       |PERU         |>5%       |            0|     81|  215|
|0-6 months (no birth wast)  |CONTENT       |PERU         |>5%       |            1|      0|  215|
|0-6 months (no birth wast)  |CONTENT       |PERU         |0%        |            0|      1|  215|
|0-6 months (no birth wast)  |CONTENT       |PERU         |0%        |            1|      1|  215|
|0-6 months (no birth wast)  |EE            |PAKISTAN     |(0%, 5%]  |            0|    104|  375|
|0-6 months (no birth wast)  |EE            |PAKISTAN     |(0%, 5%]  |            1|      8|  375|
|0-6 months (no birth wast)  |EE            |PAKISTAN     |>5%       |            0|      0|  375|
|0-6 months (no birth wast)  |EE            |PAKISTAN     |>5%       |            1|      0|  375|
|0-6 months (no birth wast)  |EE            |PAKISTAN     |0%        |            0|    251|  375|
|0-6 months (no birth wast)  |EE            |PAKISTAN     |0%        |            1|     12|  375|
|0-6 months (no birth wast)  |Guatemala BSC |GUATEMALA    |(0%, 5%]  |            0|     73|  286|
|0-6 months (no birth wast)  |Guatemala BSC |GUATEMALA    |(0%, 5%]  |            1|      0|  286|
|0-6 months (no birth wast)  |Guatemala BSC |GUATEMALA    |>5%       |            0|    177|  286|
|0-6 months (no birth wast)  |Guatemala BSC |GUATEMALA    |>5%       |            1|      0|  286|
|0-6 months (no birth wast)  |Guatemala BSC |GUATEMALA    |0%        |            0|     36|  286|
|0-6 months (no birth wast)  |Guatemala BSC |GUATEMALA    |0%        |            1|      0|  286|
|0-6 months (no birth wast)  |JiVitA-4      |BANGLADESH   |(0%, 5%]  |            0|   4181| 4957|
|0-6 months (no birth wast)  |JiVitA-4      |BANGLADESH   |(0%, 5%]  |            1|     18| 4957|
|0-6 months (no birth wast)  |JiVitA-4      |BANGLADESH   |>5%       |            0|    564| 4957|
|0-6 months (no birth wast)  |JiVitA-4      |BANGLADESH   |>5%       |            1|      2| 4957|
|0-6 months (no birth wast)  |JiVitA-4      |BANGLADESH   |0%        |            0|    191| 4957|
|0-6 months (no birth wast)  |JiVitA-4      |BANGLADESH   |0%        |            1|      1| 4957|
|0-6 months (no birth wast)  |MAL-ED        |INDIA        |(0%, 5%]  |            0|    181|  244|
|0-6 months (no birth wast)  |MAL-ED        |INDIA        |(0%, 5%]  |            1|      6|  244|
|0-6 months (no birth wast)  |MAL-ED        |INDIA        |>5%       |            0|     55|  244|
|0-6 months (no birth wast)  |MAL-ED        |INDIA        |>5%       |            1|      1|  244|
|0-6 months (no birth wast)  |MAL-ED        |INDIA        |0%        |            0|      1|  244|
|0-6 months (no birth wast)  |MAL-ED        |INDIA        |0%        |            1|      0|  244|
|0-6 months (no birth wast)  |MAL-ED        |BANGLADESH   |(0%, 5%]  |            0|    133|  262|
|0-6 months (no birth wast)  |MAL-ED        |BANGLADESH   |(0%, 5%]  |            1|      4|  262|
|0-6 months (no birth wast)  |MAL-ED        |BANGLADESH   |>5%       |            0|     95|  262|
|0-6 months (no birth wast)  |MAL-ED        |BANGLADESH   |>5%       |            1|      3|  262|
|0-6 months (no birth wast)  |MAL-ED        |BANGLADESH   |0%        |            0|     27|  262|
|0-6 months (no birth wast)  |MAL-ED        |BANGLADESH   |0%        |            1|      0|  262|
|0-6 months (no birth wast)  |MAL-ED        |PERU         |(0%, 5%]  |            0|    127|  302|
|0-6 months (no birth wast)  |MAL-ED        |PERU         |(0%, 5%]  |            1|      0|  302|
|0-6 months (no birth wast)  |MAL-ED        |PERU         |>5%       |            0|    142|  302|
|0-6 months (no birth wast)  |MAL-ED        |PERU         |>5%       |            1|      1|  302|
|0-6 months (no birth wast)  |MAL-ED        |PERU         |0%        |            0|     32|  302|
|0-6 months (no birth wast)  |MAL-ED        |PERU         |0%        |            1|      0|  302|
|0-6 months (no birth wast)  |MAL-ED        |NEPAL        |(0%, 5%]  |            0|    142|  237|
|0-6 months (no birth wast)  |MAL-ED        |NEPAL        |(0%, 5%]  |            1|      1|  237|
|0-6 months (no birth wast)  |MAL-ED        |NEPAL        |>5%       |            0|     93|  237|
|0-6 months (no birth wast)  |MAL-ED        |NEPAL        |>5%       |            1|      0|  237|
|0-6 months (no birth wast)  |MAL-ED        |NEPAL        |0%        |            0|      1|  237|
|0-6 months (no birth wast)  |MAL-ED        |NEPAL        |0%        |            1|      0|  237|
|0-6 months (no birth wast)  |MAL-ED        |BRAZIL       |(0%, 5%]  |            0|    100|  233|
|0-6 months (no birth wast)  |MAL-ED        |BRAZIL       |(0%, 5%]  |            1|      3|  233|
|0-6 months (no birth wast)  |MAL-ED        |BRAZIL       |>5%       |            0|      4|  233|
|0-6 months (no birth wast)  |MAL-ED        |BRAZIL       |>5%       |            1|      0|  233|
|0-6 months (no birth wast)  |MAL-ED        |BRAZIL       |0%        |            0|    126|  233|
|0-6 months (no birth wast)  |MAL-ED        |BRAZIL       |0%        |            1|      0|  233|
|0-6 months (no birth wast)  |MAL-ED        |TANZANIA     |(0%, 5%]  |            0|    172|  261|
|0-6 months (no birth wast)  |MAL-ED        |TANZANIA     |(0%, 5%]  |            1|      1|  261|
|0-6 months (no birth wast)  |MAL-ED        |TANZANIA     |>5%       |            0|     83|  261|
|0-6 months (no birth wast)  |MAL-ED        |TANZANIA     |>5%       |            1|      1|  261|
|0-6 months (no birth wast)  |MAL-ED        |TANZANIA     |0%        |            0|      3|  261|
|0-6 months (no birth wast)  |MAL-ED        |TANZANIA     |0%        |            1|      1|  261|
|0-6 months (no birth wast)  |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |            0|    175|  305|
|0-6 months (no birth wast)  |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |            1|      2|  305|
|0-6 months (no birth wast)  |MAL-ED        |SOUTH AFRICA |>5%       |            0|      2|  305|
|0-6 months (no birth wast)  |MAL-ED        |SOUTH AFRICA |>5%       |            1|      0|  305|
|0-6 months (no birth wast)  |MAL-ED        |SOUTH AFRICA |0%        |            0|    125|  305|
|0-6 months (no birth wast)  |MAL-ED        |SOUTH AFRICA |0%        |            1|      1|  305|
|0-6 months (no birth wast)  |NIH-Birth     |BANGLADESH   |(0%, 5%]  |            0|    319|  581|
|0-6 months (no birth wast)  |NIH-Birth     |BANGLADESH   |(0%, 5%]  |            1|      5|  581|
|0-6 months (no birth wast)  |NIH-Birth     |BANGLADESH   |>5%       |            0|    207|  581|
|0-6 months (no birth wast)  |NIH-Birth     |BANGLADESH   |>5%       |            1|      4|  581|
|0-6 months (no birth wast)  |NIH-Birth     |BANGLADESH   |0%        |            0|     46|  581|
|0-6 months (no birth wast)  |NIH-Birth     |BANGLADESH   |0%        |            1|      0|  581|
|0-6 months (no birth wast)  |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |            0|    410|  749|
|0-6 months (no birth wast)  |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |            1|      1|  749|
|0-6 months (no birth wast)  |NIH-Crypto    |BANGLADESH   |>5%       |            0|    194|  749|
|0-6 months (no birth wast)  |NIH-Crypto    |BANGLADESH   |>5%       |            1|      0|  749|
|0-6 months (no birth wast)  |NIH-Crypto    |BANGLADESH   |0%        |            0|    144|  749|
|0-6 months (no birth wast)  |NIH-Crypto    |BANGLADESH   |0%        |            1|      0|  749|
|0-6 months (no birth wast)  |PROVIDE       |BANGLADESH   |(0%, 5%]  |            0|    419|  683|
|0-6 months (no birth wast)  |PROVIDE       |BANGLADESH   |(0%, 5%]  |            1|      3|  683|
|0-6 months (no birth wast)  |PROVIDE       |BANGLADESH   |>5%       |            0|    199|  683|
|0-6 months (no birth wast)  |PROVIDE       |BANGLADESH   |>5%       |            1|      3|  683|
|0-6 months (no birth wast)  |PROVIDE       |BANGLADESH   |0%        |            0|     59|  683|
|0-6 months (no birth wast)  |PROVIDE       |BANGLADESH   |0%        |            1|      0|  683|
|0-6 months (no birth wast)  |SAS-FoodSuppl |INDIA        |(0%, 5%]  |            0|     37|  341|
|0-6 months (no birth wast)  |SAS-FoodSuppl |INDIA        |(0%, 5%]  |            1|      0|  341|
|0-6 months (no birth wast)  |SAS-FoodSuppl |INDIA        |>5%       |            0|    235|  341|
|0-6 months (no birth wast)  |SAS-FoodSuppl |INDIA        |>5%       |            1|      0|  341|
|0-6 months (no birth wast)  |SAS-FoodSuppl |INDIA        |0%        |            0|     69|  341|
|0-6 months (no birth wast)  |SAS-FoodSuppl |INDIA        |0%        |            1|      0|  341|
|6-24 months                 |CMIN          |BANGLADESH   |(0%, 5%]  |            0|     93|  249|
|6-24 months                 |CMIN          |BANGLADESH   |(0%, 5%]  |            1|     11|  249|
|6-24 months                 |CMIN          |BANGLADESH   |>5%       |            0|    108|  249|
|6-24 months                 |CMIN          |BANGLADESH   |>5%       |            1|     16|  249|
|6-24 months                 |CMIN          |BANGLADESH   |0%        |            0|     19|  249|
|6-24 months                 |CMIN          |BANGLADESH   |0%        |            1|      2|  249|
|6-24 months                 |CONTENT       |PERU         |(0%, 5%]  |            0|    132|  215|
|6-24 months                 |CONTENT       |PERU         |(0%, 5%]  |            1|      0|  215|
|6-24 months                 |CONTENT       |PERU         |>5%       |            0|     81|  215|
|6-24 months                 |CONTENT       |PERU         |>5%       |            1|      0|  215|
|6-24 months                 |CONTENT       |PERU         |0%        |            0|      2|  215|
|6-24 months                 |CONTENT       |PERU         |0%        |            1|      0|  215|
|6-24 months                 |EE            |PAKISTAN     |(0%, 5%]  |            0|    102|  374|
|6-24 months                 |EE            |PAKISTAN     |(0%, 5%]  |            1|     13|  374|
|6-24 months                 |EE            |PAKISTAN     |>5%       |            0|      0|  374|
|6-24 months                 |EE            |PAKISTAN     |>5%       |            1|      0|  374|
|6-24 months                 |EE            |PAKISTAN     |0%        |            0|    221|  374|
|6-24 months                 |EE            |PAKISTAN     |0%        |            1|     38|  374|
|6-24 months                 |Guatemala BSC |GUATEMALA    |(0%, 5%]  |            0|     66|  274|
|6-24 months                 |Guatemala BSC |GUATEMALA    |(0%, 5%]  |            1|      0|  274|
|6-24 months                 |Guatemala BSC |GUATEMALA    |>5%       |            0|    174|  274|
|6-24 months                 |Guatemala BSC |GUATEMALA    |>5%       |            1|      2|  274|
|6-24 months                 |Guatemala BSC |GUATEMALA    |0%        |            0|     32|  274|
|6-24 months                 |Guatemala BSC |GUATEMALA    |0%        |            1|      0|  274|
|6-24 months                 |iLiNS-Zinc    |BURKINA FASO |(0%, 5%]  |            0|   1176| 2471|
|6-24 months                 |iLiNS-Zinc    |BURKINA FASO |(0%, 5%]  |            1|     57| 2471|
|6-24 months                 |iLiNS-Zinc    |BURKINA FASO |>5%       |            0|    550| 2471|
|6-24 months                 |iLiNS-Zinc    |BURKINA FASO |>5%       |            1|     30| 2471|
|6-24 months                 |iLiNS-Zinc    |BURKINA FASO |0%        |            0|    628| 2471|
|6-24 months                 |iLiNS-Zinc    |BURKINA FASO |0%        |            1|     30| 2471|
|6-24 months                 |JiVitA-4      |BANGLADESH   |(0%, 5%]  |            0|   4401| 5430|
|6-24 months                 |JiVitA-4      |BANGLADESH   |(0%, 5%]  |            1|    203| 5430|
|6-24 months                 |JiVitA-4      |BANGLADESH   |>5%       |            0|    596| 5430|
|6-24 months                 |JiVitA-4      |BANGLADESH   |>5%       |            1|     23| 5430|
|6-24 months                 |JiVitA-4      |BANGLADESH   |0%        |            0|    194| 5430|
|6-24 months                 |JiVitA-4      |BANGLADESH   |0%        |            1|     13| 5430|
|6-24 months                 |MAL-ED        |INDIA        |(0%, 5%]  |            0|    174|  235|
|6-24 months                 |MAL-ED        |INDIA        |(0%, 5%]  |            1|      4|  235|
|6-24 months                 |MAL-ED        |INDIA        |>5%       |            0|     54|  235|
|6-24 months                 |MAL-ED        |INDIA        |>5%       |            1|      2|  235|
|6-24 months                 |MAL-ED        |INDIA        |0%        |            0|      1|  235|
|6-24 months                 |MAL-ED        |INDIA        |0%        |            1|      0|  235|
|6-24 months                 |MAL-ED        |BANGLADESH   |(0%, 5%]  |            0|    126|  240|
|6-24 months                 |MAL-ED        |BANGLADESH   |(0%, 5%]  |            1|      3|  240|
|6-24 months                 |MAL-ED        |BANGLADESH   |>5%       |            0|     83|  240|
|6-24 months                 |MAL-ED        |BANGLADESH   |>5%       |            1|      2|  240|
|6-24 months                 |MAL-ED        |BANGLADESH   |0%        |            0|     26|  240|
|6-24 months                 |MAL-ED        |BANGLADESH   |0%        |            1|      0|  240|
|6-24 months                 |MAL-ED        |PERU         |(0%, 5%]  |            0|    114|  270|
|6-24 months                 |MAL-ED        |PERU         |(0%, 5%]  |            1|      3|  270|
|6-24 months                 |MAL-ED        |PERU         |>5%       |            0|    125|  270|
|6-24 months                 |MAL-ED        |PERU         |>5%       |            1|      0|  270|
|6-24 months                 |MAL-ED        |PERU         |0%        |            0|     28|  270|
|6-24 months                 |MAL-ED        |PERU         |0%        |            1|      0|  270|
|6-24 months                 |MAL-ED        |NEPAL        |(0%, 5%]  |            0|    140|  235|
|6-24 months                 |MAL-ED        |NEPAL        |(0%, 5%]  |            1|      1|  235|
|6-24 months                 |MAL-ED        |NEPAL        |>5%       |            0|     92|  235|
|6-24 months                 |MAL-ED        |NEPAL        |>5%       |            1|      1|  235|
|6-24 months                 |MAL-ED        |NEPAL        |0%        |            0|      1|  235|
|6-24 months                 |MAL-ED        |NEPAL        |0%        |            1|      0|  235|
|6-24 months                 |MAL-ED        |BRAZIL       |(0%, 5%]  |            0|     92|  207|
|6-24 months                 |MAL-ED        |BRAZIL       |(0%, 5%]  |            1|      0|  207|
|6-24 months                 |MAL-ED        |BRAZIL       |>5%       |            0|      3|  207|
|6-24 months                 |MAL-ED        |BRAZIL       |>5%       |            1|      0|  207|
|6-24 months                 |MAL-ED        |BRAZIL       |0%        |            0|    111|  207|
|6-24 months                 |MAL-ED        |BRAZIL       |0%        |            1|      1|  207|
|6-24 months                 |MAL-ED        |TANZANIA     |(0%, 5%]  |            0|    161|  245|
|6-24 months                 |MAL-ED        |TANZANIA     |(0%, 5%]  |            1|      2|  245|
|6-24 months                 |MAL-ED        |TANZANIA     |>5%       |            0|     75|  245|
|6-24 months                 |MAL-ED        |TANZANIA     |>5%       |            1|      3|  245|
|6-24 months                 |MAL-ED        |TANZANIA     |0%        |            0|      4|  245|
|6-24 months                 |MAL-ED        |TANZANIA     |0%        |            1|      0|  245|
|6-24 months                 |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |            0|    145|  258|
|6-24 months                 |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |            1|      8|  258|
|6-24 months                 |MAL-ED        |SOUTH AFRICA |>5%       |            0|      1|  258|
|6-24 months                 |MAL-ED        |SOUTH AFRICA |>5%       |            1|      0|  258|
|6-24 months                 |MAL-ED        |SOUTH AFRICA |0%        |            0|    102|  258|
|6-24 months                 |MAL-ED        |SOUTH AFRICA |0%        |            1|      2|  258|
|6-24 months                 |NIH-Birth     |BANGLADESH   |(0%, 5%]  |            0|    266|  539|
|6-24 months                 |NIH-Birth     |BANGLADESH   |(0%, 5%]  |            1|     29|  539|
|6-24 months                 |NIH-Birth     |BANGLADESH   |>5%       |            0|    193|  539|
|6-24 months                 |NIH-Birth     |BANGLADESH   |>5%       |            1|     12|  539|
|6-24 months                 |NIH-Birth     |BANGLADESH   |0%        |            0|     33|  539|
|6-24 months                 |NIH-Birth     |BANGLADESH   |0%        |            1|      6|  539|
|6-24 months                 |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |            0|    387|  730|
|6-24 months                 |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |            1|     14|  730|
|6-24 months                 |NIH-Crypto    |BANGLADESH   |>5%       |            0|    184|  730|
|6-24 months                 |NIH-Crypto    |BANGLADESH   |>5%       |            1|      4|  730|
|6-24 months                 |NIH-Crypto    |BANGLADESH   |0%        |            0|    139|  730|
|6-24 months                 |NIH-Crypto    |BANGLADESH   |0%        |            1|      2|  730|
|6-24 months                 |PROVIDE       |BANGLADESH   |(0%, 5%]  |            0|    376|  615|
|6-24 months                 |PROVIDE       |BANGLADESH   |(0%, 5%]  |            1|      9|  615|
|6-24 months                 |PROVIDE       |BANGLADESH   |>5%       |            0|    179|  615|
|6-24 months                 |PROVIDE       |BANGLADESH   |>5%       |            1|      2|  615|
|6-24 months                 |PROVIDE       |BANGLADESH   |0%        |            0|     47|  615|
|6-24 months                 |PROVIDE       |BANGLADESH   |0%        |            1|      2|  615|
|6-24 months                 |SAS-FoodSuppl |INDIA        |(0%, 5%]  |            0|     45|  402|
|6-24 months                 |SAS-FoodSuppl |INDIA        |(0%, 5%]  |            1|      5|  402|
|6-24 months                 |SAS-FoodSuppl |INDIA        |>5%       |            0|    240|  402|
|6-24 months                 |SAS-FoodSuppl |INDIA        |>5%       |            1|     33|  402|
|6-24 months                 |SAS-FoodSuppl |INDIA        |0%        |            0|     66|  402|
|6-24 months                 |SAS-FoodSuppl |INDIA        |0%        |            1|     13|  402|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
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

* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


