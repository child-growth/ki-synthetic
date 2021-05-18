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

**Outcome Variable:** stunted

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

|agecat    |studyid       |country      |perdiar24 | stunted| n_cell|    n|
|:---------|:-------------|:------------|:---------|-------:|------:|----:|
|Birth     |CMIN          |BANGLADESH   |(0%, 5%]  |       0|      8|   25|
|Birth     |CMIN          |BANGLADESH   |(0%, 5%]  |       1|      1|   25|
|Birth     |CMIN          |BANGLADESH   |>5%       |       0|      7|   25|
|Birth     |CMIN          |BANGLADESH   |>5%       |       1|      8|   25|
|Birth     |CMIN          |BANGLADESH   |0%        |       0|      1|   25|
|Birth     |CMIN          |BANGLADESH   |0%        |       1|      0|   25|
|Birth     |CONTENT       |PERU         |(0%, 5%]  |       0|      1|    2|
|Birth     |CONTENT       |PERU         |(0%, 5%]  |       1|      0|    2|
|Birth     |CONTENT       |PERU         |>5%       |       0|      1|    2|
|Birth     |CONTENT       |PERU         |>5%       |       1|      0|    2|
|Birth     |CONTENT       |PERU         |0%        |       0|      0|    2|
|Birth     |CONTENT       |PERU         |0%        |       1|      0|    2|
|Birth     |EE            |PAKISTAN     |(0%, 5%]  |       0|     39|  240|
|Birth     |EE            |PAKISTAN     |(0%, 5%]  |       1|     36|  240|
|Birth     |EE            |PAKISTAN     |>5%       |       0|      0|  240|
|Birth     |EE            |PAKISTAN     |>5%       |       1|      0|  240|
|Birth     |EE            |PAKISTAN     |0%        |       0|    101|  240|
|Birth     |EE            |PAKISTAN     |0%        |       1|     64|  240|
|Birth     |JiVitA-4      |BANGLADESH   |(0%, 5%]  |       0|   1683| 2823|
|Birth     |JiVitA-4      |BANGLADESH   |(0%, 5%]  |       1|    745| 2823|
|Birth     |JiVitA-4      |BANGLADESH   |>5%       |       0|    209| 2823|
|Birth     |JiVitA-4      |BANGLADESH   |>5%       |       1|     76| 2823|
|Birth     |JiVitA-4      |BANGLADESH   |0%        |       0|     74| 2823|
|Birth     |JiVitA-4      |BANGLADESH   |0%        |       1|     36| 2823|
|Birth     |MAL-ED        |INDIA        |(0%, 5%]  |       0|     22|   47|
|Birth     |MAL-ED        |INDIA        |(0%, 5%]  |       1|      9|   47|
|Birth     |MAL-ED        |INDIA        |>5%       |       0|     14|   47|
|Birth     |MAL-ED        |INDIA        |>5%       |       1|      1|   47|
|Birth     |MAL-ED        |INDIA        |0%        |       0|      1|   47|
|Birth     |MAL-ED        |INDIA        |0%        |       1|      0|   47|
|Birth     |MAL-ED        |BANGLADESH   |(0%, 5%]  |       0|     98|  231|
|Birth     |MAL-ED        |BANGLADESH   |(0%, 5%]  |       1|     22|  231|
|Birth     |MAL-ED        |BANGLADESH   |>5%       |       0|     71|  231|
|Birth     |MAL-ED        |BANGLADESH   |>5%       |       1|     17|  231|
|Birth     |MAL-ED        |BANGLADESH   |0%        |       0|     18|  231|
|Birth     |MAL-ED        |BANGLADESH   |0%        |       1|      5|  231|
|Birth     |MAL-ED        |PERU         |(0%, 5%]  |       0|     92|  233|
|Birth     |MAL-ED        |PERU         |(0%, 5%]  |       1|     13|  233|
|Birth     |MAL-ED        |PERU         |>5%       |       0|     92|  233|
|Birth     |MAL-ED        |PERU         |>5%       |       1|      9|  233|
|Birth     |MAL-ED        |PERU         |0%        |       0|     23|  233|
|Birth     |MAL-ED        |PERU         |0%        |       1|      4|  233|
|Birth     |MAL-ED        |NEPAL        |(0%, 5%]  |       0|     14|   27|
|Birth     |MAL-ED        |NEPAL        |(0%, 5%]  |       1|      0|   27|
|Birth     |MAL-ED        |NEPAL        |>5%       |       0|     10|   27|
|Birth     |MAL-ED        |NEPAL        |>5%       |       1|      2|   27|
|Birth     |MAL-ED        |NEPAL        |0%        |       0|      1|   27|
|Birth     |MAL-ED        |NEPAL        |0%        |       1|      0|   27|
|Birth     |MAL-ED        |BRAZIL       |(0%, 5%]  |       0|     24|   65|
|Birth     |MAL-ED        |BRAZIL       |(0%, 5%]  |       1|      3|   65|
|Birth     |MAL-ED        |BRAZIL       |>5%       |       0|      0|   65|
|Birth     |MAL-ED        |BRAZIL       |>5%       |       1|      0|   65|
|Birth     |MAL-ED        |BRAZIL       |0%        |       0|     32|   65|
|Birth     |MAL-ED        |BRAZIL       |0%        |       1|      6|   65|
|Birth     |MAL-ED        |TANZANIA     |(0%, 5%]  |       0|     63|  125|
|Birth     |MAL-ED        |TANZANIA     |(0%, 5%]  |       1|     19|  125|
|Birth     |MAL-ED        |TANZANIA     |>5%       |       0|     38|  125|
|Birth     |MAL-ED        |TANZANIA     |>5%       |       1|      3|  125|
|Birth     |MAL-ED        |TANZANIA     |0%        |       0|      1|  125|
|Birth     |MAL-ED        |TANZANIA     |0%        |       1|      1|  125|
|Birth     |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |       0|     73|  123|
|Birth     |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |       1|      6|  123|
|Birth     |MAL-ED        |SOUTH AFRICA |>5%       |       0|      0|  123|
|Birth     |MAL-ED        |SOUTH AFRICA |>5%       |       1|      0|  123|
|Birth     |MAL-ED        |SOUTH AFRICA |0%        |       0|     40|  123|
|Birth     |MAL-ED        |SOUTH AFRICA |0%        |       1|      4|  123|
|Birth     |NIH-Birth     |BANGLADESH   |(0%, 5%]  |       0|    284|  605|
|Birth     |NIH-Birth     |BANGLADESH   |(0%, 5%]  |       1|     51|  605|
|Birth     |NIH-Birth     |BANGLADESH   |>5%       |       0|    183|  605|
|Birth     |NIH-Birth     |BANGLADESH   |>5%       |       1|     38|  605|
|Birth     |NIH-Birth     |BANGLADESH   |0%        |       0|     41|  605|
|Birth     |NIH-Birth     |BANGLADESH   |0%        |       1|      8|  605|
|Birth     |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |       0|    344|  732|
|Birth     |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |       1|     59|  732|
|Birth     |NIH-Crypto    |BANGLADESH   |>5%       |       0|    166|  732|
|Birth     |NIH-Crypto    |BANGLADESH   |>5%       |       1|     25|  732|
|Birth     |NIH-Crypto    |BANGLADESH   |0%        |       0|    121|  732|
|Birth     |NIH-Crypto    |BANGLADESH   |0%        |       1|     17|  732|
|Birth     |PROVIDE       |BANGLADESH   |(0%, 5%]  |       0|    309|  539|
|Birth     |PROVIDE       |BANGLADESH   |(0%, 5%]  |       1|     29|  539|
|Birth     |PROVIDE       |BANGLADESH   |>5%       |       0|    139|  539|
|Birth     |PROVIDE       |BANGLADESH   |>5%       |       1|     14|  539|
|Birth     |PROVIDE       |BANGLADESH   |0%        |       0|     43|  539|
|Birth     |PROVIDE       |BANGLADESH   |0%        |       1|      5|  539|
|6 months  |CMIN          |BANGLADESH   |(0%, 5%]  |       0|     62|  241|
|6 months  |CMIN          |BANGLADESH   |(0%, 5%]  |       1|     42|  241|
|6 months  |CMIN          |BANGLADESH   |>5%       |       0|     73|  241|
|6 months  |CMIN          |BANGLADESH   |>5%       |       1|     44|  241|
|6 months  |CMIN          |BANGLADESH   |0%        |       0|     13|  241|
|6 months  |CMIN          |BANGLADESH   |0%        |       1|      7|  241|
|6 months  |CONTENT       |PERU         |(0%, 5%]  |       0|    126|  215|
|6 months  |CONTENT       |PERU         |(0%, 5%]  |       1|      6|  215|
|6 months  |CONTENT       |PERU         |>5%       |       0|     78|  215|
|6 months  |CONTENT       |PERU         |>5%       |       1|      3|  215|
|6 months  |CONTENT       |PERU         |0%        |       0|      2|  215|
|6 months  |CONTENT       |PERU         |0%        |       1|      0|  215|
|6 months  |EE            |PAKISTAN     |(0%, 5%]  |       0|     59|  373|
|6 months  |EE            |PAKISTAN     |(0%, 5%]  |       1|     54|  373|
|6 months  |EE            |PAKISTAN     |>5%       |       0|      0|  373|
|6 months  |EE            |PAKISTAN     |>5%       |       1|      0|  373|
|6 months  |EE            |PAKISTAN     |0%        |       0|    131|  373|
|6 months  |EE            |PAKISTAN     |0%        |       1|    129|  373|
|6 months  |Guatemala BSC |GUATEMALA    |(0%, 5%]  |       0|     50|  296|
|6 months  |Guatemala BSC |GUATEMALA    |(0%, 5%]  |       1|     22|  296|
|6 months  |Guatemala BSC |GUATEMALA    |>5%       |       0|    128|  296|
|6 months  |Guatemala BSC |GUATEMALA    |>5%       |       1|     60|  296|
|6 months  |Guatemala BSC |GUATEMALA    |0%        |       0|     29|  296|
|6 months  |Guatemala BSC |GUATEMALA    |0%        |       1|      7|  296|
|6 months  |JiVitA-4      |BANGLADESH   |(0%, 5%]  |       0|   3066| 4831|
|6 months  |JiVitA-4      |BANGLADESH   |(0%, 5%]  |       1|   1024| 4831|
|6 months  |JiVitA-4      |BANGLADESH   |>5%       |       0|    400| 4831|
|6 months  |JiVitA-4      |BANGLADESH   |>5%       |       1|    154| 4831|
|6 months  |JiVitA-4      |BANGLADESH   |0%        |       0|    144| 4831|
|6 months  |JiVitA-4      |BANGLADESH   |0%        |       1|     43| 4831|
|6 months  |MAL-ED        |INDIA        |(0%, 5%]  |       0|    146|  236|
|6 months  |MAL-ED        |INDIA        |(0%, 5%]  |       1|     33|  236|
|6 months  |MAL-ED        |INDIA        |>5%       |       0|     45|  236|
|6 months  |MAL-ED        |INDIA        |>5%       |       1|     11|  236|
|6 months  |MAL-ED        |INDIA        |0%        |       0|      0|  236|
|6 months  |MAL-ED        |INDIA        |0%        |       1|      1|  236|
|6 months  |MAL-ED        |BANGLADESH   |(0%, 5%]  |       0|    106|  241|
|6 months  |MAL-ED        |BANGLADESH   |(0%, 5%]  |       1|     24|  241|
|6 months  |MAL-ED        |BANGLADESH   |>5%       |       0|     69|  241|
|6 months  |MAL-ED        |BANGLADESH   |>5%       |       1|     16|  241|
|6 months  |MAL-ED        |BANGLADESH   |0%        |       0|     22|  241|
|6 months  |MAL-ED        |BANGLADESH   |0%        |       1|      4|  241|
|6 months  |MAL-ED        |PERU         |(0%, 5%]  |       0|     90|  273|
|6 months  |MAL-ED        |PERU         |(0%, 5%]  |       1|     30|  273|
|6 months  |MAL-ED        |PERU         |>5%       |       0|     99|  273|
|6 months  |MAL-ED        |PERU         |>5%       |       1|     26|  273|
|6 months  |MAL-ED        |PERU         |0%        |       0|     24|  273|
|6 months  |MAL-ED        |PERU         |0%        |       1|      4|  273|
|6 months  |MAL-ED        |NEPAL        |(0%, 5%]  |       0|    136|  236|
|6 months  |MAL-ED        |NEPAL        |(0%, 5%]  |       1|      5|  236|
|6 months  |MAL-ED        |NEPAL        |>5%       |       0|     87|  236|
|6 months  |MAL-ED        |NEPAL        |>5%       |       1|      7|  236|
|6 months  |MAL-ED        |NEPAL        |0%        |       0|      1|  236|
|6 months  |MAL-ED        |NEPAL        |0%        |       1|      0|  236|
|6 months  |MAL-ED        |BRAZIL       |(0%, 5%]  |       0|     89|  209|
|6 months  |MAL-ED        |BRAZIL       |(0%, 5%]  |       1|      3|  209|
|6 months  |MAL-ED        |BRAZIL       |>5%       |       0|      3|  209|
|6 months  |MAL-ED        |BRAZIL       |>5%       |       1|      0|  209|
|6 months  |MAL-ED        |BRAZIL       |0%        |       0|    111|  209|
|6 months  |MAL-ED        |BRAZIL       |0%        |       1|      3|  209|
|6 months  |MAL-ED        |TANZANIA     |(0%, 5%]  |       0|    128|  247|
|6 months  |MAL-ED        |TANZANIA     |(0%, 5%]  |       1|     35|  247|
|6 months  |MAL-ED        |TANZANIA     |>5%       |       0|     57|  247|
|6 months  |MAL-ED        |TANZANIA     |>5%       |       1|     23|  247|
|6 months  |MAL-ED        |TANZANIA     |0%        |       0|      3|  247|
|6 months  |MAL-ED        |TANZANIA     |0%        |       1|      1|  247|
|6 months  |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |       0|    124|  253|
|6 months  |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |       1|     26|  253|
|6 months  |MAL-ED        |SOUTH AFRICA |>5%       |       0|      0|  253|
|6 months  |MAL-ED        |SOUTH AFRICA |>5%       |       1|      1|  253|
|6 months  |MAL-ED        |SOUTH AFRICA |0%        |       0|     79|  253|
|6 months  |MAL-ED        |SOUTH AFRICA |0%        |       1|     23|  253|
|6 months  |NIH-Birth     |BANGLADESH   |(0%, 5%]  |       0|    218|  534|
|6 months  |NIH-Birth     |BANGLADESH   |(0%, 5%]  |       1|     74|  534|
|6 months  |NIH-Birth     |BANGLADESH   |>5%       |       0|    151|  534|
|6 months  |NIH-Birth     |BANGLADESH   |>5%       |       1|     52|  534|
|6 months  |NIH-Birth     |BANGLADESH   |0%        |       0|     21|  534|
|6 months  |NIH-Birth     |BANGLADESH   |0%        |       1|     18|  534|
|6 months  |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |       0|    301|  715|
|6 months  |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |       1|     93|  715|
|6 months  |NIH-Crypto    |BANGLADESH   |>5%       |       0|    152|  715|
|6 months  |NIH-Crypto    |BANGLADESH   |>5%       |       1|     32|  715|
|6 months  |NIH-Crypto    |BANGLADESH   |0%        |       0|    112|  715|
|6 months  |NIH-Crypto    |BANGLADESH   |0%        |       1|     25|  715|
|6 months  |PROVIDE       |BANGLADESH   |(0%, 5%]  |       0|    320|  604|
|6 months  |PROVIDE       |BANGLADESH   |(0%, 5%]  |       1|     58|  604|
|6 months  |PROVIDE       |BANGLADESH   |>5%       |       0|    152|  604|
|6 months  |PROVIDE       |BANGLADESH   |>5%       |       1|     27|  604|
|6 months  |PROVIDE       |BANGLADESH   |0%        |       0|     36|  604|
|6 months  |PROVIDE       |BANGLADESH   |0%        |       1|     11|  604|
|6 months  |SAS-FoodSuppl |INDIA        |(0%, 5%]  |       0|     29|  380|
|6 months  |SAS-FoodSuppl |INDIA        |(0%, 5%]  |       1|     18|  380|
|6 months  |SAS-FoodSuppl |INDIA        |>5%       |       0|    150|  380|
|6 months  |SAS-FoodSuppl |INDIA        |>5%       |       1|    111|  380|
|6 months  |SAS-FoodSuppl |INDIA        |0%        |       0|     38|  380|
|6 months  |SAS-FoodSuppl |INDIA        |0%        |       1|     34|  380|
|24 months |CMIN          |BANGLADESH   |(0%, 5%]  |       0|     30|  239|
|24 months |CMIN          |BANGLADESH   |(0%, 5%]  |       1|     69|  239|
|24 months |CMIN          |BANGLADESH   |>5%       |       0|     40|  239|
|24 months |CMIN          |BANGLADESH   |>5%       |       1|     81|  239|
|24 months |CMIN          |BANGLADESH   |0%        |       0|      5|  239|
|24 months |CMIN          |BANGLADESH   |0%        |       1|     14|  239|
|24 months |CONTENT       |PERU         |(0%, 5%]  |       0|     96|  164|
|24 months |CONTENT       |PERU         |(0%, 5%]  |       1|      8|  164|
|24 months |CONTENT       |PERU         |>5%       |       0|     53|  164|
|24 months |CONTENT       |PERU         |>5%       |       1|      5|  164|
|24 months |CONTENT       |PERU         |0%        |       0|      2|  164|
|24 months |CONTENT       |PERU         |0%        |       1|      0|  164|
|24 months |EE            |PAKISTAN     |(0%, 5%]  |       0|     21|  167|
|24 months |EE            |PAKISTAN     |(0%, 5%]  |       1|     35|  167|
|24 months |EE            |PAKISTAN     |>5%       |       0|      0|  167|
|24 months |EE            |PAKISTAN     |>5%       |       1|      0|  167|
|24 months |EE            |PAKISTAN     |0%        |       0|     28|  167|
|24 months |EE            |PAKISTAN     |0%        |       1|     83|  167|
|24 months |JiVitA-4      |BANGLADESH   |(0%, 5%]  |       0|   2416| 4752|
|24 months |JiVitA-4      |BANGLADESH   |(0%, 5%]  |       1|   1612| 4752|
|24 months |JiVitA-4      |BANGLADESH   |>5%       |       0|    314| 4752|
|24 months |JiVitA-4      |BANGLADESH   |>5%       |       1|    221| 4752|
|24 months |JiVitA-4      |BANGLADESH   |0%        |       0|    117| 4752|
|24 months |JiVitA-4      |BANGLADESH   |0%        |       1|     72| 4752|
|24 months |MAL-ED        |INDIA        |(0%, 5%]  |       0|    100|  227|
|24 months |MAL-ED        |INDIA        |(0%, 5%]  |       1|     72|  227|
|24 months |MAL-ED        |INDIA        |>5%       |       0|     30|  227|
|24 months |MAL-ED        |INDIA        |>5%       |       1|     24|  227|
|24 months |MAL-ED        |INDIA        |0%        |       0|      0|  227|
|24 months |MAL-ED        |INDIA        |0%        |       1|      1|  227|
|24 months |MAL-ED        |BANGLADESH   |(0%, 5%]  |       0|     59|  212|
|24 months |MAL-ED        |BANGLADESH   |(0%, 5%]  |       1|     52|  212|
|24 months |MAL-ED        |BANGLADESH   |>5%       |       0|     40|  212|
|24 months |MAL-ED        |BANGLADESH   |>5%       |       1|     39|  212|
|24 months |MAL-ED        |BANGLADESH   |0%        |       0|     12|  212|
|24 months |MAL-ED        |BANGLADESH   |0%        |       1|     10|  212|
|24 months |MAL-ED        |PERU         |(0%, 5%]  |       0|     54|  201|
|24 months |MAL-ED        |PERU         |(0%, 5%]  |       1|     33|  201|
|24 months |MAL-ED        |PERU         |>5%       |       0|     62|  201|
|24 months |MAL-ED        |PERU         |>5%       |       1|     33|  201|
|24 months |MAL-ED        |PERU         |0%        |       0|     11|  201|
|24 months |MAL-ED        |PERU         |0%        |       1|      8|  201|
|24 months |MAL-ED        |NEPAL        |(0%, 5%]  |       0|    112|  228|
|24 months |MAL-ED        |NEPAL        |(0%, 5%]  |       1|     25|  228|
|24 months |MAL-ED        |NEPAL        |>5%       |       0|     65|  228|
|24 months |MAL-ED        |NEPAL        |>5%       |       1|     25|  228|
|24 months |MAL-ED        |NEPAL        |0%        |       0|      1|  228|
|24 months |MAL-ED        |NEPAL        |0%        |       1|      0|  228|
|24 months |MAL-ED        |BRAZIL       |(0%, 5%]  |       0|     69|  169|
|24 months |MAL-ED        |BRAZIL       |(0%, 5%]  |       1|      4|  169|
|24 months |MAL-ED        |BRAZIL       |>5%       |       0|      3|  169|
|24 months |MAL-ED        |BRAZIL       |>5%       |       1|      0|  169|
|24 months |MAL-ED        |BRAZIL       |0%        |       0|     90|  169|
|24 months |MAL-ED        |BRAZIL       |0%        |       1|      3|  169|
|24 months |MAL-ED        |TANZANIA     |(0%, 5%]  |       0|     35|  214|
|24 months |MAL-ED        |TANZANIA     |(0%, 5%]  |       1|    106|  214|
|24 months |MAL-ED        |TANZANIA     |>5%       |       0|     23|  214|
|24 months |MAL-ED        |TANZANIA     |>5%       |       1|     47|  214|
|24 months |MAL-ED        |TANZANIA     |0%        |       0|      1|  214|
|24 months |MAL-ED        |TANZANIA     |0%        |       1|      2|  214|
|24 months |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |       0|     95|  237|
|24 months |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |       1|     46|  237|
|24 months |MAL-ED        |SOUTH AFRICA |>5%       |       0|      0|  237|
|24 months |MAL-ED        |SOUTH AFRICA |>5%       |       1|      1|  237|
|24 months |MAL-ED        |SOUTH AFRICA |0%        |       0|     58|  237|
|24 months |MAL-ED        |SOUTH AFRICA |0%        |       1|     37|  237|
|24 months |NIH-Birth     |BANGLADESH   |(0%, 5%]  |       0|    106|  426|
|24 months |NIH-Birth     |BANGLADESH   |(0%, 5%]  |       1|    134|  426|
|24 months |NIH-Birth     |BANGLADESH   |>5%       |       0|     67|  426|
|24 months |NIH-Birth     |BANGLADESH   |>5%       |       1|     87|  426|
|24 months |NIH-Birth     |BANGLADESH   |0%        |       0|     10|  426|
|24 months |NIH-Birth     |BANGLADESH   |0%        |       1|     22|  426|
|24 months |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |       0|    205|  514|
|24 months |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |       1|     79|  514|
|24 months |NIH-Crypto    |BANGLADESH   |>5%       |       0|     97|  514|
|24 months |NIH-Crypto    |BANGLADESH   |>5%       |       1|     36|  514|
|24 months |NIH-Crypto    |BANGLADESH   |0%        |       0|     80|  514|
|24 months |NIH-Crypto    |BANGLADESH   |0%        |       1|     17|  514|
|24 months |PROVIDE       |BANGLADESH   |(0%, 5%]  |       0|    238|  578|
|24 months |PROVIDE       |BANGLADESH   |(0%, 5%]  |       1|    117|  578|
|24 months |PROVIDE       |BANGLADESH   |>5%       |       0|    121|  578|
|24 months |PROVIDE       |BANGLADESH   |>5%       |       1|     53|  578|
|24 months |PROVIDE       |BANGLADESH   |0%        |       0|     29|  578|
|24 months |PROVIDE       |BANGLADESH   |0%        |       1|     20|  578|


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
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


