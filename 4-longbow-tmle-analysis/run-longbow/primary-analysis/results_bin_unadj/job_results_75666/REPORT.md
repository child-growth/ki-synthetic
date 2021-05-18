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

**Outcome Variable:** ever_wasted

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

|agecat                      |studyid       |country      |perdiar24 | ever_wasted| n_cell|    n|
|:---------------------------|:-------------|:------------|:---------|-----------:|------:|----:|
|0-24 months (no birth wast) |CMIN          |BANGLADESH   |(0%, 5%]  |           0|     59|  265|
|0-24 months (no birth wast) |CMIN          |BANGLADESH   |(0%, 5%]  |           1|     51|  265|
|0-24 months (no birth wast) |CMIN          |BANGLADESH   |>5%       |           0|     85|  265|
|0-24 months (no birth wast) |CMIN          |BANGLADESH   |>5%       |           1|     49|  265|
|0-24 months (no birth wast) |CMIN          |BANGLADESH   |0%        |           0|      8|  265|
|0-24 months (no birth wast) |CMIN          |BANGLADESH   |0%        |           1|     13|  265|
|0-24 months (no birth wast) |CONTENT       |PERU         |(0%, 5%]  |           0|    130|  215|
|0-24 months (no birth wast) |CONTENT       |PERU         |(0%, 5%]  |           1|      2|  215|
|0-24 months (no birth wast) |CONTENT       |PERU         |>5%       |           0|     80|  215|
|0-24 months (no birth wast) |CONTENT       |PERU         |>5%       |           1|      1|  215|
|0-24 months (no birth wast) |CONTENT       |PERU         |0%        |           0|      1|  215|
|0-24 months (no birth wast) |CONTENT       |PERU         |0%        |           1|      1|  215|
|0-24 months (no birth wast) |EE            |PAKISTAN     |(0%, 5%]  |           0|     56|  377|
|0-24 months (no birth wast) |EE            |PAKISTAN     |(0%, 5%]  |           1|     58|  377|
|0-24 months (no birth wast) |EE            |PAKISTAN     |>5%       |           0|      0|  377|
|0-24 months (no birth wast) |EE            |PAKISTAN     |>5%       |           1|      0|  377|
|0-24 months (no birth wast) |EE            |PAKISTAN     |0%        |           0|    118|  377|
|0-24 months (no birth wast) |EE            |PAKISTAN     |0%        |           1|    145|  377|
|0-24 months (no birth wast) |Guatemala BSC |GUATEMALA    |(0%, 5%]  |           0|     71|  309|
|0-24 months (no birth wast) |Guatemala BSC |GUATEMALA    |(0%, 5%]  |           1|      5|  309|
|0-24 months (no birth wast) |Guatemala BSC |GUATEMALA    |>5%       |           0|    177|  309|
|0-24 months (no birth wast) |Guatemala BSC |GUATEMALA    |>5%       |           1|     18|  309|
|0-24 months (no birth wast) |Guatemala BSC |GUATEMALA    |0%        |           0|     36|  309|
|0-24 months (no birth wast) |Guatemala BSC |GUATEMALA    |0%        |           1|      2|  309|
|0-24 months (no birth wast) |iLiNS-Zinc    |BURKINA FASO |(0%, 5%]  |           0|   1069| 2341|
|0-24 months (no birth wast) |iLiNS-Zinc    |BURKINA FASO |(0%, 5%]  |           1|    109| 2341|
|0-24 months (no birth wast) |iLiNS-Zinc    |BURKINA FASO |>5%       |           0|    513| 2341|
|0-24 months (no birth wast) |iLiNS-Zinc    |BURKINA FASO |>5%       |           1|     28| 2341|
|0-24 months (no birth wast) |iLiNS-Zinc    |BURKINA FASO |0%        |           0|    572| 2341|
|0-24 months (no birth wast) |iLiNS-Zinc    |BURKINA FASO |0%        |           1|     50| 2341|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH   |(0%, 5%]  |           0|   3382| 5396|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH   |(0%, 5%]  |           1|   1190| 5396|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH   |>5%       |           0|    470| 5396|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH   |>5%       |           1|    146| 5396|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH   |0%        |           0|    153| 5396|
|0-24 months (no birth wast) |JiVitA-4      |BANGLADESH   |0%        |           1|     55| 5396|
|0-24 months (no birth wast) |MAL-ED        |INDIA        |(0%, 5%]  |           0|    120|  246|
|0-24 months (no birth wast) |MAL-ED        |INDIA        |(0%, 5%]  |           1|     69|  246|
|0-24 months (no birth wast) |MAL-ED        |INDIA        |>5%       |           0|     35|  246|
|0-24 months (no birth wast) |MAL-ED        |INDIA        |>5%       |           1|     21|  246|
|0-24 months (no birth wast) |MAL-ED        |INDIA        |0%        |           0|      0|  246|
|0-24 months (no birth wast) |MAL-ED        |INDIA        |0%        |           1|      1|  246|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH   |(0%, 5%]  |           0|    105|  263|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH   |(0%, 5%]  |           1|     33|  263|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH   |>5%       |           0|     76|  263|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH   |>5%       |           1|     22|  263|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH   |0%        |           0|     24|  263|
|0-24 months (no birth wast) |MAL-ED        |BANGLADESH   |0%        |           1|      3|  263|
|0-24 months (no birth wast) |MAL-ED        |PERU         |(0%, 5%]  |           0|    118|  302|
|0-24 months (no birth wast) |MAL-ED        |PERU         |(0%, 5%]  |           1|      9|  302|
|0-24 months (no birth wast) |MAL-ED        |PERU         |>5%       |           0|    134|  302|
|0-24 months (no birth wast) |MAL-ED        |PERU         |>5%       |           1|      9|  302|
|0-24 months (no birth wast) |MAL-ED        |PERU         |0%        |           0|     29|  302|
|0-24 months (no birth wast) |MAL-ED        |PERU         |0%        |           1|      3|  302|
|0-24 months (no birth wast) |MAL-ED        |NEPAL        |(0%, 5%]  |           0|    118|  239|
|0-24 months (no birth wast) |MAL-ED        |NEPAL        |(0%, 5%]  |           1|     26|  239|
|0-24 months (no birth wast) |MAL-ED        |NEPAL        |>5%       |           0|     74|  239|
|0-24 months (no birth wast) |MAL-ED        |NEPAL        |>5%       |           1|     20|  239|
|0-24 months (no birth wast) |MAL-ED        |NEPAL        |0%        |           0|      1|  239|
|0-24 months (no birth wast) |MAL-ED        |NEPAL        |0%        |           1|      0|  239|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL       |(0%, 5%]  |           0|     95|  233|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL       |(0%, 5%]  |           1|      8|  233|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL       |>5%       |           0|      4|  233|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL       |>5%       |           1|      0|  233|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL       |0%        |           0|    121|  233|
|0-24 months (no birth wast) |MAL-ED        |BRAZIL       |0%        |           1|      5|  233|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA     |(0%, 5%]  |           0|    152|  261|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA     |(0%, 5%]  |           1|     21|  261|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA     |>5%       |           0|     72|  261|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA     |>5%       |           1|     12|  261|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA     |0%        |           0|      3|  261|
|0-24 months (no birth wast) |MAL-ED        |TANZANIA     |0%        |           1|      1|  261|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |           0|    147|  306|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |           1|     30|  306|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA |>5%       |           0|      2|  306|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA |>5%       |           1|      0|  306|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA |0%        |           0|    112|  306|
|0-24 months (no birth wast) |MAL-ED        |SOUTH AFRICA |0%        |           1|     15|  306|
|0-24 months (no birth wast) |NIH-Birth     |BANGLADESH   |(0%, 5%]  |           0|    235|  599|
|0-24 months (no birth wast) |NIH-Birth     |BANGLADESH   |(0%, 5%]  |           1|     98|  599|
|0-24 months (no birth wast) |NIH-Birth     |BANGLADESH   |>5%       |           0|    156|  599|
|0-24 months (no birth wast) |NIH-Birth     |BANGLADESH   |>5%       |           1|     64|  599|
|0-24 months (no birth wast) |NIH-Birth     |BANGLADESH   |0%        |           0|     33|  599|
|0-24 months (no birth wast) |NIH-Birth     |BANGLADESH   |0%        |           1|     13|  599|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |           0|    355|  754|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |           1|     61|  754|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH   |>5%       |           0|    167|  754|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH   |>5%       |           1|     27|  754|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH   |0%        |           0|    124|  754|
|0-24 months (no birth wast) |NIH-Crypto    |BANGLADESH   |0%        |           1|     20|  754|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH   |(0%, 5%]  |           0|    349|  687|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH   |(0%, 5%]  |           1|     75|  687|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH   |>5%       |           0|    166|  687|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH   |>5%       |           1|     38|  687|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH   |0%        |           0|     50|  687|
|0-24 months (no birth wast) |PROVIDE       |BANGLADESH   |0%        |           1|      9|  687|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA        |(0%, 5%]  |           0|     29|  397|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA        |(0%, 5%]  |           1|     18|  397|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA        |>5%       |           0|    178|  397|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA        |>5%       |           1|     93|  397|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA        |0%        |           0|     47|  397|
|0-24 months (no birth wast) |SAS-FoodSuppl |INDIA        |0%        |           1|     32|  397|
|0-6 months (no birth wast)  |CMIN          |BANGLADESH   |(0%, 5%]  |           0|     97|  264|
|0-6 months (no birth wast)  |CMIN          |BANGLADESH   |(0%, 5%]  |           1|     13|  264|
|0-6 months (no birth wast)  |CMIN          |BANGLADESH   |>5%       |           0|    119|  264|
|0-6 months (no birth wast)  |CMIN          |BANGLADESH   |>5%       |           1|     15|  264|
|0-6 months (no birth wast)  |CMIN          |BANGLADESH   |0%        |           0|     18|  264|
|0-6 months (no birth wast)  |CMIN          |BANGLADESH   |0%        |           1|      2|  264|
|0-6 months (no birth wast)  |CONTENT       |PERU         |(0%, 5%]  |           0|    131|  215|
|0-6 months (no birth wast)  |CONTENT       |PERU         |(0%, 5%]  |           1|      1|  215|
|0-6 months (no birth wast)  |CONTENT       |PERU         |>5%       |           0|     80|  215|
|0-6 months (no birth wast)  |CONTENT       |PERU         |>5%       |           1|      1|  215|
|0-6 months (no birth wast)  |CONTENT       |PERU         |0%        |           0|      1|  215|
|0-6 months (no birth wast)  |CONTENT       |PERU         |0%        |           1|      1|  215|
|0-6 months (no birth wast)  |EE            |PAKISTAN     |(0%, 5%]  |           0|     90|  375|
|0-6 months (no birth wast)  |EE            |PAKISTAN     |(0%, 5%]  |           1|     22|  375|
|0-6 months (no birth wast)  |EE            |PAKISTAN     |>5%       |           0|      0|  375|
|0-6 months (no birth wast)  |EE            |PAKISTAN     |>5%       |           1|      0|  375|
|0-6 months (no birth wast)  |EE            |PAKISTAN     |0%        |           0|    204|  375|
|0-6 months (no birth wast)  |EE            |PAKISTAN     |0%        |           1|     59|  375|
|0-6 months (no birth wast)  |Guatemala BSC |GUATEMALA    |(0%, 5%]  |           0|     72|  286|
|0-6 months (no birth wast)  |Guatemala BSC |GUATEMALA    |(0%, 5%]  |           1|      1|  286|
|0-6 months (no birth wast)  |Guatemala BSC |GUATEMALA    |>5%       |           0|    173|  286|
|0-6 months (no birth wast)  |Guatemala BSC |GUATEMALA    |>5%       |           1|      4|  286|
|0-6 months (no birth wast)  |Guatemala BSC |GUATEMALA    |0%        |           0|     36|  286|
|0-6 months (no birth wast)  |Guatemala BSC |GUATEMALA    |0%        |           1|      0|  286|
|0-6 months (no birth wast)  |JiVitA-4      |BANGLADESH   |(0%, 5%]  |           0|   4091| 4957|
|0-6 months (no birth wast)  |JiVitA-4      |BANGLADESH   |(0%, 5%]  |           1|    108| 4957|
|0-6 months (no birth wast)  |JiVitA-4      |BANGLADESH   |>5%       |           0|    551| 4957|
|0-6 months (no birth wast)  |JiVitA-4      |BANGLADESH   |>5%       |           1|     15| 4957|
|0-6 months (no birth wast)  |JiVitA-4      |BANGLADESH   |0%        |           0|    188| 4957|
|0-6 months (no birth wast)  |JiVitA-4      |BANGLADESH   |0%        |           1|      4| 4957|
|0-6 months (no birth wast)  |MAL-ED        |INDIA        |(0%, 5%]  |           0|    157|  244|
|0-6 months (no birth wast)  |MAL-ED        |INDIA        |(0%, 5%]  |           1|     30|  244|
|0-6 months (no birth wast)  |MAL-ED        |INDIA        |>5%       |           0|     48|  244|
|0-6 months (no birth wast)  |MAL-ED        |INDIA        |>5%       |           1|      8|  244|
|0-6 months (no birth wast)  |MAL-ED        |INDIA        |0%        |           0|      0|  244|
|0-6 months (no birth wast)  |MAL-ED        |INDIA        |0%        |           1|      1|  244|
|0-6 months (no birth wast)  |MAL-ED        |BANGLADESH   |(0%, 5%]  |           0|    125|  262|
|0-6 months (no birth wast)  |MAL-ED        |BANGLADESH   |(0%, 5%]  |           1|     12|  262|
|0-6 months (no birth wast)  |MAL-ED        |BANGLADESH   |>5%       |           0|     92|  262|
|0-6 months (no birth wast)  |MAL-ED        |BANGLADESH   |>5%       |           1|      6|  262|
|0-6 months (no birth wast)  |MAL-ED        |BANGLADESH   |0%        |           0|     26|  262|
|0-6 months (no birth wast)  |MAL-ED        |BANGLADESH   |0%        |           1|      1|  262|
|0-6 months (no birth wast)  |MAL-ED        |PERU         |(0%, 5%]  |           0|    125|  302|
|0-6 months (no birth wast)  |MAL-ED        |PERU         |(0%, 5%]  |           1|      2|  302|
|0-6 months (no birth wast)  |MAL-ED        |PERU         |>5%       |           0|    141|  302|
|0-6 months (no birth wast)  |MAL-ED        |PERU         |>5%       |           1|      2|  302|
|0-6 months (no birth wast)  |MAL-ED        |PERU         |0%        |           0|     31|  302|
|0-6 months (no birth wast)  |MAL-ED        |PERU         |0%        |           1|      1|  302|
|0-6 months (no birth wast)  |MAL-ED        |NEPAL        |(0%, 5%]  |           0|    136|  237|
|0-6 months (no birth wast)  |MAL-ED        |NEPAL        |(0%, 5%]  |           1|      7|  237|
|0-6 months (no birth wast)  |MAL-ED        |NEPAL        |>5%       |           0|     84|  237|
|0-6 months (no birth wast)  |MAL-ED        |NEPAL        |>5%       |           1|      9|  237|
|0-6 months (no birth wast)  |MAL-ED        |NEPAL        |0%        |           0|      1|  237|
|0-6 months (no birth wast)  |MAL-ED        |NEPAL        |0%        |           1|      0|  237|
|0-6 months (no birth wast)  |MAL-ED        |BRAZIL       |(0%, 5%]  |           0|     99|  233|
|0-6 months (no birth wast)  |MAL-ED        |BRAZIL       |(0%, 5%]  |           1|      4|  233|
|0-6 months (no birth wast)  |MAL-ED        |BRAZIL       |>5%       |           0|      4|  233|
|0-6 months (no birth wast)  |MAL-ED        |BRAZIL       |>5%       |           1|      0|  233|
|0-6 months (no birth wast)  |MAL-ED        |BRAZIL       |0%        |           0|    122|  233|
|0-6 months (no birth wast)  |MAL-ED        |BRAZIL       |0%        |           1|      4|  233|
|0-6 months (no birth wast)  |MAL-ED        |TANZANIA     |(0%, 5%]  |           0|    166|  261|
|0-6 months (no birth wast)  |MAL-ED        |TANZANIA     |(0%, 5%]  |           1|      7|  261|
|0-6 months (no birth wast)  |MAL-ED        |TANZANIA     |>5%       |           0|     82|  261|
|0-6 months (no birth wast)  |MAL-ED        |TANZANIA     |>5%       |           1|      2|  261|
|0-6 months (no birth wast)  |MAL-ED        |TANZANIA     |0%        |           0|      3|  261|
|0-6 months (no birth wast)  |MAL-ED        |TANZANIA     |0%        |           1|      1|  261|
|0-6 months (no birth wast)  |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |           0|    169|  305|
|0-6 months (no birth wast)  |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |           1|      8|  305|
|0-6 months (no birth wast)  |MAL-ED        |SOUTH AFRICA |>5%       |           0|      2|  305|
|0-6 months (no birth wast)  |MAL-ED        |SOUTH AFRICA |>5%       |           1|      0|  305|
|0-6 months (no birth wast)  |MAL-ED        |SOUTH AFRICA |0%        |           0|    120|  305|
|0-6 months (no birth wast)  |MAL-ED        |SOUTH AFRICA |0%        |           1|      6|  305|
|0-6 months (no birth wast)  |NIH-Birth     |BANGLADESH   |(0%, 5%]  |           0|    302|  581|
|0-6 months (no birth wast)  |NIH-Birth     |BANGLADESH   |(0%, 5%]  |           1|     22|  581|
|0-6 months (no birth wast)  |NIH-Birth     |BANGLADESH   |>5%       |           0|    193|  581|
|0-6 months (no birth wast)  |NIH-Birth     |BANGLADESH   |>5%       |           1|     18|  581|
|0-6 months (no birth wast)  |NIH-Birth     |BANGLADESH   |0%        |           0|     41|  581|
|0-6 months (no birth wast)  |NIH-Birth     |BANGLADESH   |0%        |           1|      5|  581|
|0-6 months (no birth wast)  |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |           0|    399|  749|
|0-6 months (no birth wast)  |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |           1|     12|  749|
|0-6 months (no birth wast)  |NIH-Crypto    |BANGLADESH   |>5%       |           0|    188|  749|
|0-6 months (no birth wast)  |NIH-Crypto    |BANGLADESH   |>5%       |           1|      6|  749|
|0-6 months (no birth wast)  |NIH-Crypto    |BANGLADESH   |0%        |           0|    142|  749|
|0-6 months (no birth wast)  |NIH-Crypto    |BANGLADESH   |0%        |           1|      2|  749|
|0-6 months (no birth wast)  |PROVIDE       |BANGLADESH   |(0%, 5%]  |           0|    401|  683|
|0-6 months (no birth wast)  |PROVIDE       |BANGLADESH   |(0%, 5%]  |           1|     21|  683|
|0-6 months (no birth wast)  |PROVIDE       |BANGLADESH   |>5%       |           0|    190|  683|
|0-6 months (no birth wast)  |PROVIDE       |BANGLADESH   |>5%       |           1|     12|  683|
|0-6 months (no birth wast)  |PROVIDE       |BANGLADESH   |0%        |           0|     55|  683|
|0-6 months (no birth wast)  |PROVIDE       |BANGLADESH   |0%        |           1|      4|  683|
|0-6 months (no birth wast)  |SAS-FoodSuppl |INDIA        |(0%, 5%]  |           0|     37|  341|
|0-6 months (no birth wast)  |SAS-FoodSuppl |INDIA        |(0%, 5%]  |           1|      0|  341|
|0-6 months (no birth wast)  |SAS-FoodSuppl |INDIA        |>5%       |           0|    235|  341|
|0-6 months (no birth wast)  |SAS-FoodSuppl |INDIA        |>5%       |           1|      0|  341|
|0-6 months (no birth wast)  |SAS-FoodSuppl |INDIA        |0%        |           0|     69|  341|
|0-6 months (no birth wast)  |SAS-FoodSuppl |INDIA        |0%        |           1|      0|  341|
|6-24 months                 |CMIN          |BANGLADESH   |(0%, 5%]  |           0|     61|  249|
|6-24 months                 |CMIN          |BANGLADESH   |(0%, 5%]  |           1|     43|  249|
|6-24 months                 |CMIN          |BANGLADESH   |>5%       |           0|     82|  249|
|6-24 months                 |CMIN          |BANGLADESH   |>5%       |           1|     42|  249|
|6-24 months                 |CMIN          |BANGLADESH   |0%        |           0|     10|  249|
|6-24 months                 |CMIN          |BANGLADESH   |0%        |           1|     11|  249|
|6-24 months                 |CONTENT       |PERU         |(0%, 5%]  |           0|    131|  215|
|6-24 months                 |CONTENT       |PERU         |(0%, 5%]  |           1|      1|  215|
|6-24 months                 |CONTENT       |PERU         |>5%       |           0|     81|  215|
|6-24 months                 |CONTENT       |PERU         |>5%       |           1|      0|  215|
|6-24 months                 |CONTENT       |PERU         |0%        |           0|      1|  215|
|6-24 months                 |CONTENT       |PERU         |0%        |           1|      1|  215|
|6-24 months                 |EE            |PAKISTAN     |(0%, 5%]  |           0|     70|  374|
|6-24 months                 |EE            |PAKISTAN     |(0%, 5%]  |           1|     45|  374|
|6-24 months                 |EE            |PAKISTAN     |>5%       |           0|      0|  374|
|6-24 months                 |EE            |PAKISTAN     |>5%       |           1|      0|  374|
|6-24 months                 |EE            |PAKISTAN     |0%        |           0|    143|  374|
|6-24 months                 |EE            |PAKISTAN     |0%        |           1|    116|  374|
|6-24 months                 |Guatemala BSC |GUATEMALA    |(0%, 5%]  |           0|     60|  274|
|6-24 months                 |Guatemala BSC |GUATEMALA    |(0%, 5%]  |           1|      6|  274|
|6-24 months                 |Guatemala BSC |GUATEMALA    |>5%       |           0|    162|  274|
|6-24 months                 |Guatemala BSC |GUATEMALA    |>5%       |           1|     14|  274|
|6-24 months                 |Guatemala BSC |GUATEMALA    |0%        |           0|     30|  274|
|6-24 months                 |Guatemala BSC |GUATEMALA    |0%        |           1|      2|  274|
|6-24 months                 |iLiNS-Zinc    |BURKINA FASO |(0%, 5%]  |           0|    955| 2471|
|6-24 months                 |iLiNS-Zinc    |BURKINA FASO |(0%, 5%]  |           1|    278| 2471|
|6-24 months                 |iLiNS-Zinc    |BURKINA FASO |>5%       |           0|    448| 2471|
|6-24 months                 |iLiNS-Zinc    |BURKINA FASO |>5%       |           1|    132| 2471|
|6-24 months                 |iLiNS-Zinc    |BURKINA FASO |0%        |           0|    514| 2471|
|6-24 months                 |iLiNS-Zinc    |BURKINA FASO |0%        |           1|    144| 2471|
|6-24 months                 |JiVitA-4      |BANGLADESH   |(0%, 5%]  |           0|   3454| 5430|
|6-24 months                 |JiVitA-4      |BANGLADESH   |(0%, 5%]  |           1|   1150| 5430|
|6-24 months                 |JiVitA-4      |BANGLADESH   |>5%       |           0|    480| 5430|
|6-24 months                 |JiVitA-4      |BANGLADESH   |>5%       |           1|    139| 5430|
|6-24 months                 |JiVitA-4      |BANGLADESH   |0%        |           0|    153| 5430|
|6-24 months                 |JiVitA-4      |BANGLADESH   |0%        |           1|     54| 5430|
|6-24 months                 |MAL-ED        |INDIA        |(0%, 5%]  |           0|    131|  235|
|6-24 months                 |MAL-ED        |INDIA        |(0%, 5%]  |           1|     47|  235|
|6-24 months                 |MAL-ED        |INDIA        |>5%       |           0|     40|  235|
|6-24 months                 |MAL-ED        |INDIA        |>5%       |           1|     16|  235|
|6-24 months                 |MAL-ED        |INDIA        |0%        |           0|      0|  235|
|6-24 months                 |MAL-ED        |INDIA        |0%        |           1|      1|  235|
|6-24 months                 |MAL-ED        |BANGLADESH   |(0%, 5%]  |           0|    106|  240|
|6-24 months                 |MAL-ED        |BANGLADESH   |(0%, 5%]  |           1|     23|  240|
|6-24 months                 |MAL-ED        |BANGLADESH   |>5%       |           0|     67|  240|
|6-24 months                 |MAL-ED        |BANGLADESH   |>5%       |           1|     18|  240|
|6-24 months                 |MAL-ED        |BANGLADESH   |0%        |           0|     24|  240|
|6-24 months                 |MAL-ED        |BANGLADESH   |0%        |           1|      2|  240|
|6-24 months                 |MAL-ED        |PERU         |(0%, 5%]  |           0|    110|  270|
|6-24 months                 |MAL-ED        |PERU         |(0%, 5%]  |           1|      7|  270|
|6-24 months                 |MAL-ED        |PERU         |>5%       |           0|    116|  270|
|6-24 months                 |MAL-ED        |PERU         |>5%       |           1|      9|  270|
|6-24 months                 |MAL-ED        |PERU         |0%        |           0|     26|  270|
|6-24 months                 |MAL-ED        |PERU         |0%        |           1|      2|  270|
|6-24 months                 |MAL-ED        |NEPAL        |(0%, 5%]  |           0|    120|  235|
|6-24 months                 |MAL-ED        |NEPAL        |(0%, 5%]  |           1|     21|  235|
|6-24 months                 |MAL-ED        |NEPAL        |>5%       |           0|     78|  235|
|6-24 months                 |MAL-ED        |NEPAL        |>5%       |           1|     15|  235|
|6-24 months                 |MAL-ED        |NEPAL        |0%        |           0|      1|  235|
|6-24 months                 |MAL-ED        |NEPAL        |0%        |           1|      0|  235|
|6-24 months                 |MAL-ED        |BRAZIL       |(0%, 5%]  |           0|     88|  207|
|6-24 months                 |MAL-ED        |BRAZIL       |(0%, 5%]  |           1|      4|  207|
|6-24 months                 |MAL-ED        |BRAZIL       |>5%       |           0|      3|  207|
|6-24 months                 |MAL-ED        |BRAZIL       |>5%       |           1|      0|  207|
|6-24 months                 |MAL-ED        |BRAZIL       |0%        |           0|    110|  207|
|6-24 months                 |MAL-ED        |BRAZIL       |0%        |           1|      2|  207|
|6-24 months                 |MAL-ED        |TANZANIA     |(0%, 5%]  |           0|    147|  245|
|6-24 months                 |MAL-ED        |TANZANIA     |(0%, 5%]  |           1|     16|  245|
|6-24 months                 |MAL-ED        |TANZANIA     |>5%       |           0|     66|  245|
|6-24 months                 |MAL-ED        |TANZANIA     |>5%       |           1|     12|  245|
|6-24 months                 |MAL-ED        |TANZANIA     |0%        |           0|      4|  245|
|6-24 months                 |MAL-ED        |TANZANIA     |0%        |           1|      0|  245|
|6-24 months                 |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |           0|    126|  258|
|6-24 months                 |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |           1|     27|  258|
|6-24 months                 |MAL-ED        |SOUTH AFRICA |>5%       |           0|      1|  258|
|6-24 months                 |MAL-ED        |SOUTH AFRICA |>5%       |           1|      0|  258|
|6-24 months                 |MAL-ED        |SOUTH AFRICA |0%        |           0|     94|  258|
|6-24 months                 |MAL-ED        |SOUTH AFRICA |0%        |           1|     10|  258|
|6-24 months                 |NIH-Birth     |BANGLADESH   |(0%, 5%]  |           0|    206|  539|
|6-24 months                 |NIH-Birth     |BANGLADESH   |(0%, 5%]  |           1|     89|  539|
|6-24 months                 |NIH-Birth     |BANGLADESH   |>5%       |           0|    149|  539|
|6-24 months                 |NIH-Birth     |BANGLADESH   |>5%       |           1|     56|  539|
|6-24 months                 |NIH-Birth     |BANGLADESH   |0%        |           0|     28|  539|
|6-24 months                 |NIH-Birth     |BANGLADESH   |0%        |           1|     11|  539|
|6-24 months                 |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |           0|    346|  730|
|6-24 months                 |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |           1|     55|  730|
|6-24 months                 |NIH-Crypto    |BANGLADESH   |>5%       |           0|    166|  730|
|6-24 months                 |NIH-Crypto    |BANGLADESH   |>5%       |           1|     22|  730|
|6-24 months                 |NIH-Crypto    |BANGLADESH   |0%        |           0|    122|  730|
|6-24 months                 |NIH-Crypto    |BANGLADESH   |0%        |           1|     19|  730|
|6-24 months                 |PROVIDE       |BANGLADESH   |(0%, 5%]  |           0|    323|  615|
|6-24 months                 |PROVIDE       |BANGLADESH   |(0%, 5%]  |           1|     62|  615|
|6-24 months                 |PROVIDE       |BANGLADESH   |>5%       |           0|    150|  615|
|6-24 months                 |PROVIDE       |BANGLADESH   |>5%       |           1|     31|  615|
|6-24 months                 |PROVIDE       |BANGLADESH   |0%        |           0|     43|  615|
|6-24 months                 |PROVIDE       |BANGLADESH   |0%        |           1|      6|  615|
|6-24 months                 |SAS-FoodSuppl |INDIA        |(0%, 5%]  |           0|     32|  402|
|6-24 months                 |SAS-FoodSuppl |INDIA        |(0%, 5%]  |           1|     18|  402|
|6-24 months                 |SAS-FoodSuppl |INDIA        |>5%       |           0|    180|  402|
|6-24 months                 |SAS-FoodSuppl |INDIA        |>5%       |           1|     93|  402|
|6-24 months                 |SAS-FoodSuppl |INDIA        |0%        |           0|     47|  402|
|6-24 months                 |SAS-FoodSuppl |INDIA        |0%        |           1|     32|  402|


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

* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
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
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
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





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


