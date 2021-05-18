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

**Intervention Variable:** perdiar24

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid       |country      |perdiar24 | swasted| n_cell|    n|
|:---------|:-------------|:------------|:---------|-------:|------:|----:|
|Birth     |CMIN          |BANGLADESH   |(0%, 5%]  |       0|      7|   18|
|Birth     |CMIN          |BANGLADESH   |(0%, 5%]  |       1|      1|   18|
|Birth     |CMIN          |BANGLADESH   |>5%       |       0|      9|   18|
|Birth     |CMIN          |BANGLADESH   |>5%       |       1|      0|   18|
|Birth     |CMIN          |BANGLADESH   |0%        |       0|      1|   18|
|Birth     |CMIN          |BANGLADESH   |0%        |       1|      0|   18|
|Birth     |CONTENT       |PERU         |(0%, 5%]  |       0|      1|    2|
|Birth     |CONTENT       |PERU         |(0%, 5%]  |       1|      0|    2|
|Birth     |CONTENT       |PERU         |>5%       |       0|      1|    2|
|Birth     |CONTENT       |PERU         |>5%       |       1|      0|    2|
|Birth     |CONTENT       |PERU         |0%        |       0|      0|    2|
|Birth     |CONTENT       |PERU         |0%        |       1|      0|    2|
|Birth     |EE            |PAKISTAN     |(0%, 5%]  |       0|     52|  177|
|Birth     |EE            |PAKISTAN     |(0%, 5%]  |       1|      2|  177|
|Birth     |EE            |PAKISTAN     |>5%       |       0|      0|  177|
|Birth     |EE            |PAKISTAN     |>5%       |       1|      0|  177|
|Birth     |EE            |PAKISTAN     |0%        |       0|    119|  177|
|Birth     |EE            |PAKISTAN     |0%        |       1|      4|  177|
|Birth     |JiVitA-4      |BANGLADESH   |(0%, 5%]  |       0|   2032| 2396|
|Birth     |JiVitA-4      |BANGLADESH   |(0%, 5%]  |       1|     24| 2396|
|Birth     |JiVitA-4      |BANGLADESH   |>5%       |       0|    240| 2396|
|Birth     |JiVitA-4      |BANGLADESH   |>5%       |       1|      5| 2396|
|Birth     |JiVitA-4      |BANGLADESH   |0%        |       0|     93| 2396|
|Birth     |JiVitA-4      |BANGLADESH   |0%        |       1|      2| 2396|
|Birth     |MAL-ED        |INDIA        |(0%, 5%]  |       0|     30|   45|
|Birth     |MAL-ED        |INDIA        |(0%, 5%]  |       1|      0|   45|
|Birth     |MAL-ED        |INDIA        |>5%       |       0|     14|   45|
|Birth     |MAL-ED        |INDIA        |>5%       |       1|      0|   45|
|Birth     |MAL-ED        |INDIA        |0%        |       0|      1|   45|
|Birth     |MAL-ED        |INDIA        |0%        |       1|      0|   45|
|Birth     |MAL-ED        |BANGLADESH   |(0%, 5%]  |       0|    105|  215|
|Birth     |MAL-ED        |BANGLADESH   |(0%, 5%]  |       1|      3|  215|
|Birth     |MAL-ED        |BANGLADESH   |>5%       |       0|     81|  215|
|Birth     |MAL-ED        |BANGLADESH   |>5%       |       1|      3|  215|
|Birth     |MAL-ED        |BANGLADESH   |0%        |       0|     21|  215|
|Birth     |MAL-ED        |BANGLADESH   |0%        |       1|      2|  215|
|Birth     |MAL-ED        |PERU         |(0%, 5%]  |       0|    103|  228|
|Birth     |MAL-ED        |PERU         |(0%, 5%]  |       1|      0|  228|
|Birth     |MAL-ED        |PERU         |>5%       |       0|    100|  228|
|Birth     |MAL-ED        |PERU         |>5%       |       1|      0|  228|
|Birth     |MAL-ED        |PERU         |0%        |       0|     25|  228|
|Birth     |MAL-ED        |PERU         |0%        |       1|      0|  228|
|Birth     |MAL-ED        |NEPAL        |(0%, 5%]  |       0|     14|   26|
|Birth     |MAL-ED        |NEPAL        |(0%, 5%]  |       1|      0|   26|
|Birth     |MAL-ED        |NEPAL        |>5%       |       0|     11|   26|
|Birth     |MAL-ED        |NEPAL        |>5%       |       1|      0|   26|
|Birth     |MAL-ED        |NEPAL        |0%        |       0|      0|   26|
|Birth     |MAL-ED        |NEPAL        |0%        |       1|      1|   26|
|Birth     |MAL-ED        |BRAZIL       |(0%, 5%]  |       0|     26|   62|
|Birth     |MAL-ED        |BRAZIL       |(0%, 5%]  |       1|      0|   62|
|Birth     |MAL-ED        |BRAZIL       |>5%       |       0|      0|   62|
|Birth     |MAL-ED        |BRAZIL       |>5%       |       1|      0|   62|
|Birth     |MAL-ED        |BRAZIL       |0%        |       0|     36|   62|
|Birth     |MAL-ED        |BRAZIL       |0%        |       1|      0|   62|
|Birth     |MAL-ED        |TANZANIA     |(0%, 5%]  |       0|     72|  115|
|Birth     |MAL-ED        |TANZANIA     |(0%, 5%]  |       1|      0|  115|
|Birth     |MAL-ED        |TANZANIA     |>5%       |       0|     41|  115|
|Birth     |MAL-ED        |TANZANIA     |>5%       |       1|      0|  115|
|Birth     |MAL-ED        |TANZANIA     |0%        |       0|      2|  115|
|Birth     |MAL-ED        |TANZANIA     |0%        |       1|      0|  115|
|Birth     |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |       0|     77|  120|
|Birth     |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |       1|      0|  120|
|Birth     |MAL-ED        |SOUTH AFRICA |>5%       |       0|      0|  120|
|Birth     |MAL-ED        |SOUTH AFRICA |>5%       |       1|      0|  120|
|Birth     |MAL-ED        |SOUTH AFRICA |0%        |       0|     43|  120|
|Birth     |MAL-ED        |SOUTH AFRICA |0%        |       1|      0|  120|
|Birth     |NIH-Birth     |BANGLADESH   |(0%, 5%]  |       0|    296|  572|
|Birth     |NIH-Birth     |BANGLADESH   |(0%, 5%]  |       1|     20|  572|
|Birth     |NIH-Birth     |BANGLADESH   |>5%       |       0|    196|  572|
|Birth     |NIH-Birth     |BANGLADESH   |>5%       |       1|     15|  572|
|Birth     |NIH-Birth     |BANGLADESH   |0%        |       0|     42|  572|
|Birth     |NIH-Birth     |BANGLADESH   |0%        |       1|      3|  572|
|Birth     |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |       0|    363|  707|
|Birth     |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |       1|     28|  707|
|Birth     |NIH-Crypto    |BANGLADESH   |>5%       |       0|    171|  707|
|Birth     |NIH-Crypto    |BANGLADESH   |>5%       |       1|     12|  707|
|Birth     |NIH-Crypto    |BANGLADESH   |0%        |       0|    126|  707|
|Birth     |NIH-Crypto    |BANGLADESH   |0%        |       1|      7|  707|
|Birth     |PROVIDE       |BANGLADESH   |(0%, 5%]  |       0|    329|  532|
|Birth     |PROVIDE       |BANGLADESH   |(0%, 5%]  |       1|      7|  532|
|Birth     |PROVIDE       |BANGLADESH   |>5%       |       0|    146|  532|
|Birth     |PROVIDE       |BANGLADESH   |>5%       |       1|      4|  532|
|Birth     |PROVIDE       |BANGLADESH   |0%        |       0|     44|  532|
|Birth     |PROVIDE       |BANGLADESH   |0%        |       1|      2|  532|
|6 months  |CMIN          |BANGLADESH   |(0%, 5%]  |       0|    100|  241|
|6 months  |CMIN          |BANGLADESH   |(0%, 5%]  |       1|      4|  241|
|6 months  |CMIN          |BANGLADESH   |>5%       |       0|    116|  241|
|6 months  |CMIN          |BANGLADESH   |>5%       |       1|      1|  241|
|6 months  |CMIN          |BANGLADESH   |0%        |       0|     20|  241|
|6 months  |CMIN          |BANGLADESH   |0%        |       1|      0|  241|
|6 months  |CONTENT       |PERU         |(0%, 5%]  |       0|    132|  215|
|6 months  |CONTENT       |PERU         |(0%, 5%]  |       1|      0|  215|
|6 months  |CONTENT       |PERU         |>5%       |       0|     81|  215|
|6 months  |CONTENT       |PERU         |>5%       |       1|      0|  215|
|6 months  |CONTENT       |PERU         |0%        |       0|      2|  215|
|6 months  |CONTENT       |PERU         |0%        |       1|      0|  215|
|6 months  |EE            |PAKISTAN     |(0%, 5%]  |       0|    109|  375|
|6 months  |EE            |PAKISTAN     |(0%, 5%]  |       1|      6|  375|
|6 months  |EE            |PAKISTAN     |>5%       |       0|      0|  375|
|6 months  |EE            |PAKISTAN     |>5%       |       1|      0|  375|
|6 months  |EE            |PAKISTAN     |0%        |       0|    253|  375|
|6 months  |EE            |PAKISTAN     |0%        |       1|      7|  375|
|6 months  |Guatemala BSC |GUATEMALA    |(0%, 5%]  |       0|     72|  296|
|6 months  |Guatemala BSC |GUATEMALA    |(0%, 5%]  |       1|      0|  296|
|6 months  |Guatemala BSC |GUATEMALA    |>5%       |       0|    188|  296|
|6 months  |Guatemala BSC |GUATEMALA    |>5%       |       1|      0|  296|
|6 months  |Guatemala BSC |GUATEMALA    |0%        |       0|     36|  296|
|6 months  |Guatemala BSC |GUATEMALA    |0%        |       1|      0|  296|
|6 months  |JiVitA-4      |BANGLADESH   |(0%, 5%]  |       0|   4061| 4833|
|6 months  |JiVitA-4      |BANGLADESH   |(0%, 5%]  |       1|     30| 4833|
|6 months  |JiVitA-4      |BANGLADESH   |>5%       |       0|    552| 4833|
|6 months  |JiVitA-4      |BANGLADESH   |>5%       |       1|      3| 4833|
|6 months  |JiVitA-4      |BANGLADESH   |0%        |       0|    187| 4833|
|6 months  |JiVitA-4      |BANGLADESH   |0%        |       1|      0| 4833|
|6 months  |MAL-ED        |INDIA        |(0%, 5%]  |       0|    173|  236|
|6 months  |MAL-ED        |INDIA        |(0%, 5%]  |       1|      6|  236|
|6 months  |MAL-ED        |INDIA        |>5%       |       0|     56|  236|
|6 months  |MAL-ED        |INDIA        |>5%       |       1|      0|  236|
|6 months  |MAL-ED        |INDIA        |0%        |       0|      1|  236|
|6 months  |MAL-ED        |INDIA        |0%        |       1|      0|  236|
|6 months  |MAL-ED        |BANGLADESH   |(0%, 5%]  |       0|    128|  241|
|6 months  |MAL-ED        |BANGLADESH   |(0%, 5%]  |       1|      2|  241|
|6 months  |MAL-ED        |BANGLADESH   |>5%       |       0|     85|  241|
|6 months  |MAL-ED        |BANGLADESH   |>5%       |       1|      0|  241|
|6 months  |MAL-ED        |BANGLADESH   |0%        |       0|     26|  241|
|6 months  |MAL-ED        |BANGLADESH   |0%        |       1|      0|  241|
|6 months  |MAL-ED        |PERU         |(0%, 5%]  |       0|    120|  273|
|6 months  |MAL-ED        |PERU         |(0%, 5%]  |       1|      0|  273|
|6 months  |MAL-ED        |PERU         |>5%       |       0|    125|  273|
|6 months  |MAL-ED        |PERU         |>5%       |       1|      0|  273|
|6 months  |MAL-ED        |PERU         |0%        |       0|     28|  273|
|6 months  |MAL-ED        |PERU         |0%        |       1|      0|  273|
|6 months  |MAL-ED        |NEPAL        |(0%, 5%]  |       0|    141|  236|
|6 months  |MAL-ED        |NEPAL        |(0%, 5%]  |       1|      0|  236|
|6 months  |MAL-ED        |NEPAL        |>5%       |       0|     94|  236|
|6 months  |MAL-ED        |NEPAL        |>5%       |       1|      0|  236|
|6 months  |MAL-ED        |NEPAL        |0%        |       0|      1|  236|
|6 months  |MAL-ED        |NEPAL        |0%        |       1|      0|  236|
|6 months  |MAL-ED        |BRAZIL       |(0%, 5%]  |       0|     92|  209|
|6 months  |MAL-ED        |BRAZIL       |(0%, 5%]  |       1|      0|  209|
|6 months  |MAL-ED        |BRAZIL       |>5%       |       0|      3|  209|
|6 months  |MAL-ED        |BRAZIL       |>5%       |       1|      0|  209|
|6 months  |MAL-ED        |BRAZIL       |0%        |       0|    114|  209|
|6 months  |MAL-ED        |BRAZIL       |0%        |       1|      0|  209|
|6 months  |MAL-ED        |TANZANIA     |(0%, 5%]  |       0|    163|  247|
|6 months  |MAL-ED        |TANZANIA     |(0%, 5%]  |       1|      0|  247|
|6 months  |MAL-ED        |TANZANIA     |>5%       |       0|     80|  247|
|6 months  |MAL-ED        |TANZANIA     |>5%       |       1|      0|  247|
|6 months  |MAL-ED        |TANZANIA     |0%        |       0|      4|  247|
|6 months  |MAL-ED        |TANZANIA     |0%        |       1|      0|  247|
|6 months  |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |       0|    148|  253|
|6 months  |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |       1|      2|  253|
|6 months  |MAL-ED        |SOUTH AFRICA |>5%       |       0|      1|  253|
|6 months  |MAL-ED        |SOUTH AFRICA |>5%       |       1|      0|  253|
|6 months  |MAL-ED        |SOUTH AFRICA |0%        |       0|    101|  253|
|6 months  |MAL-ED        |SOUTH AFRICA |0%        |       1|      1|  253|
|6 months  |NIH-Birth     |BANGLADESH   |(0%, 5%]  |       0|    291|  534|
|6 months  |NIH-Birth     |BANGLADESH   |(0%, 5%]  |       1|      1|  534|
|6 months  |NIH-Birth     |BANGLADESH   |>5%       |       0|    198|  534|
|6 months  |NIH-Birth     |BANGLADESH   |>5%       |       1|      5|  534|
|6 months  |NIH-Birth     |BANGLADESH   |0%        |       0|     39|  534|
|6 months  |NIH-Birth     |BANGLADESH   |0%        |       1|      0|  534|
|6 months  |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |       0|    394|  715|
|6 months  |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |       1|      0|  715|
|6 months  |NIH-Crypto    |BANGLADESH   |>5%       |       0|    184|  715|
|6 months  |NIH-Crypto    |BANGLADESH   |>5%       |       1|      0|  715|
|6 months  |NIH-Crypto    |BANGLADESH   |0%        |       0|    137|  715|
|6 months  |NIH-Crypto    |BANGLADESH   |0%        |       1|      0|  715|
|6 months  |PROVIDE       |BANGLADESH   |(0%, 5%]  |       0|    374|  603|
|6 months  |PROVIDE       |BANGLADESH   |(0%, 5%]  |       1|      3|  603|
|6 months  |PROVIDE       |BANGLADESH   |>5%       |       0|    177|  603|
|6 months  |PROVIDE       |BANGLADESH   |>5%       |       1|      2|  603|
|6 months  |PROVIDE       |BANGLADESH   |0%        |       0|     47|  603|
|6 months  |PROVIDE       |BANGLADESH   |0%        |       1|      0|  603|
|6 months  |SAS-FoodSuppl |INDIA        |(0%, 5%]  |       0|     41|  380|
|6 months  |SAS-FoodSuppl |INDIA        |(0%, 5%]  |       1|      6|  380|
|6 months  |SAS-FoodSuppl |INDIA        |>5%       |       0|    251|  380|
|6 months  |SAS-FoodSuppl |INDIA        |>5%       |       1|     10|  380|
|6 months  |SAS-FoodSuppl |INDIA        |0%        |       0|     69|  380|
|6 months  |SAS-FoodSuppl |INDIA        |0%        |       1|      3|  380|
|24 months |CMIN          |BANGLADESH   |(0%, 5%]  |       0|     99|  240|
|24 months |CMIN          |BANGLADESH   |(0%, 5%]  |       1|      1|  240|
|24 months |CMIN          |BANGLADESH   |>5%       |       0|    120|  240|
|24 months |CMIN          |BANGLADESH   |>5%       |       1|      1|  240|
|24 months |CMIN          |BANGLADESH   |0%        |       0|     19|  240|
|24 months |CMIN          |BANGLADESH   |0%        |       1|      0|  240|
|24 months |CONTENT       |PERU         |(0%, 5%]  |       0|    104|  164|
|24 months |CONTENT       |PERU         |(0%, 5%]  |       1|      0|  164|
|24 months |CONTENT       |PERU         |>5%       |       0|     58|  164|
|24 months |CONTENT       |PERU         |>5%       |       1|      0|  164|
|24 months |CONTENT       |PERU         |0%        |       0|      2|  164|
|24 months |CONTENT       |PERU         |0%        |       1|      0|  164|
|24 months |EE            |PAKISTAN     |(0%, 5%]  |       0|     56|  168|
|24 months |EE            |PAKISTAN     |(0%, 5%]  |       1|      0|  168|
|24 months |EE            |PAKISTAN     |>5%       |       0|      0|  168|
|24 months |EE            |PAKISTAN     |>5%       |       1|      0|  168|
|24 months |EE            |PAKISTAN     |0%        |       0|    108|  168|
|24 months |EE            |PAKISTAN     |0%        |       1|      4|  168|
|24 months |JiVitA-4      |BANGLADESH   |(0%, 5%]  |       0|   3904| 4735|
|24 months |JiVitA-4      |BANGLADESH   |(0%, 5%]  |       1|    109| 4735|
|24 months |JiVitA-4      |BANGLADESH   |>5%       |       0|    518| 4735|
|24 months |JiVitA-4      |BANGLADESH   |>5%       |       1|     15| 4735|
|24 months |JiVitA-4      |BANGLADESH   |0%        |       0|    184| 4735|
|24 months |JiVitA-4      |BANGLADESH   |0%        |       1|      5| 4735|
|24 months |MAL-ED        |INDIA        |(0%, 5%]  |       0|    171|  227|
|24 months |MAL-ED        |INDIA        |(0%, 5%]  |       1|      1|  227|
|24 months |MAL-ED        |INDIA        |>5%       |       0|     53|  227|
|24 months |MAL-ED        |INDIA        |>5%       |       1|      1|  227|
|24 months |MAL-ED        |INDIA        |0%        |       0|      1|  227|
|24 months |MAL-ED        |INDIA        |0%        |       1|      0|  227|
|24 months |MAL-ED        |BANGLADESH   |(0%, 5%]  |       0|    111|  212|
|24 months |MAL-ED        |BANGLADESH   |(0%, 5%]  |       1|      0|  212|
|24 months |MAL-ED        |BANGLADESH   |>5%       |       0|     79|  212|
|24 months |MAL-ED        |BANGLADESH   |>5%       |       1|      0|  212|
|24 months |MAL-ED        |BANGLADESH   |0%        |       0|     22|  212|
|24 months |MAL-ED        |BANGLADESH   |0%        |       1|      0|  212|
|24 months |MAL-ED        |PERU         |(0%, 5%]  |       0|     85|  201|
|24 months |MAL-ED        |PERU         |(0%, 5%]  |       1|      2|  201|
|24 months |MAL-ED        |PERU         |>5%       |       0|     95|  201|
|24 months |MAL-ED        |PERU         |>5%       |       1|      0|  201|
|24 months |MAL-ED        |PERU         |0%        |       0|     19|  201|
|24 months |MAL-ED        |PERU         |0%        |       1|      0|  201|
|24 months |MAL-ED        |NEPAL        |(0%, 5%]  |       0|    137|  228|
|24 months |MAL-ED        |NEPAL        |(0%, 5%]  |       1|      0|  228|
|24 months |MAL-ED        |NEPAL        |>5%       |       0|     90|  228|
|24 months |MAL-ED        |NEPAL        |>5%       |       1|      0|  228|
|24 months |MAL-ED        |NEPAL        |0%        |       0|      1|  228|
|24 months |MAL-ED        |NEPAL        |0%        |       1|      0|  228|
|24 months |MAL-ED        |BRAZIL       |(0%, 5%]  |       0|     72|  169|
|24 months |MAL-ED        |BRAZIL       |(0%, 5%]  |       1|      1|  169|
|24 months |MAL-ED        |BRAZIL       |>5%       |       0|      3|  169|
|24 months |MAL-ED        |BRAZIL       |>5%       |       1|      0|  169|
|24 months |MAL-ED        |BRAZIL       |0%        |       0|     93|  169|
|24 months |MAL-ED        |BRAZIL       |0%        |       1|      0|  169|
|24 months |MAL-ED        |TANZANIA     |(0%, 5%]  |       0|    141|  214|
|24 months |MAL-ED        |TANZANIA     |(0%, 5%]  |       1|      0|  214|
|24 months |MAL-ED        |TANZANIA     |>5%       |       0|     70|  214|
|24 months |MAL-ED        |TANZANIA     |>5%       |       1|      0|  214|
|24 months |MAL-ED        |TANZANIA     |0%        |       0|      3|  214|
|24 months |MAL-ED        |TANZANIA     |0%        |       1|      0|  214|
|24 months |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |       0|    141|  237|
|24 months |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |       1|      0|  237|
|24 months |MAL-ED        |SOUTH AFRICA |>5%       |       0|      1|  237|
|24 months |MAL-ED        |SOUTH AFRICA |>5%       |       1|      0|  237|
|24 months |MAL-ED        |SOUTH AFRICA |0%        |       0|     95|  237|
|24 months |MAL-ED        |SOUTH AFRICA |0%        |       1|      0|  237|
|24 months |NIH-Birth     |BANGLADESH   |(0%, 5%]  |       0|    233|  425|
|24 months |NIH-Birth     |BANGLADESH   |(0%, 5%]  |       1|      6|  425|
|24 months |NIH-Birth     |BANGLADESH   |>5%       |       0|    152|  425|
|24 months |NIH-Birth     |BANGLADESH   |>5%       |       1|      2|  425|
|24 months |NIH-Birth     |BANGLADESH   |0%        |       0|     31|  425|
|24 months |NIH-Birth     |BANGLADESH   |0%        |       1|      1|  425|
|24 months |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |       0|    281|  514|
|24 months |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |       1|      3|  514|
|24 months |NIH-Crypto    |BANGLADESH   |>5%       |       0|    132|  514|
|24 months |NIH-Crypto    |BANGLADESH   |>5%       |       1|      1|  514|
|24 months |NIH-Crypto    |BANGLADESH   |0%        |       0|     97|  514|
|24 months |NIH-Crypto    |BANGLADESH   |0%        |       1|      0|  514|
|24 months |PROVIDE       |BANGLADESH   |(0%, 5%]  |       0|    347|  579|
|24 months |PROVIDE       |BANGLADESH   |(0%, 5%]  |       1|      9|  579|
|24 months |PROVIDE       |BANGLADESH   |>5%       |       0|    174|  579|
|24 months |PROVIDE       |BANGLADESH   |>5%       |       1|      0|  579|
|24 months |PROVIDE       |BANGLADESH   |0%        |       0|     49|  579|
|24 months |PROVIDE       |BANGLADESH   |0%        |       1|      0|  579|


The following strata were considered:

* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


