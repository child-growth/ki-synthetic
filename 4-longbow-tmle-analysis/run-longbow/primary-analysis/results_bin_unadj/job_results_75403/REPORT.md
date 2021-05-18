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

**Intervention Variable:** perdiar24

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid       |country      |perdiar24 | sstunted| n_cell|    n|
|:---------|:-------------|:------------|:---------|--------:|------:|----:|
|Birth     |CMIN          |BANGLADESH   |(0%, 5%]  |        0|      8|   25|
|Birth     |CMIN          |BANGLADESH   |(0%, 5%]  |        1|      1|   25|
|Birth     |CMIN          |BANGLADESH   |>5%       |        0|     10|   25|
|Birth     |CMIN          |BANGLADESH   |>5%       |        1|      5|   25|
|Birth     |CMIN          |BANGLADESH   |0%        |        0|      1|   25|
|Birth     |CMIN          |BANGLADESH   |0%        |        1|      0|   25|
|Birth     |CONTENT       |PERU         |(0%, 5%]  |        0|      1|    2|
|Birth     |CONTENT       |PERU         |(0%, 5%]  |        1|      0|    2|
|Birth     |CONTENT       |PERU         |>5%       |        0|      1|    2|
|Birth     |CONTENT       |PERU         |>5%       |        1|      0|    2|
|Birth     |CONTENT       |PERU         |0%        |        0|      0|    2|
|Birth     |CONTENT       |PERU         |0%        |        1|      0|    2|
|Birth     |EE            |PAKISTAN     |(0%, 5%]  |        0|     62|  240|
|Birth     |EE            |PAKISTAN     |(0%, 5%]  |        1|     13|  240|
|Birth     |EE            |PAKISTAN     |>5%       |        0|      0|  240|
|Birth     |EE            |PAKISTAN     |>5%       |        1|      0|  240|
|Birth     |EE            |PAKISTAN     |0%        |        0|    130|  240|
|Birth     |EE            |PAKISTAN     |0%        |        1|     35|  240|
|Birth     |JiVitA-4      |BANGLADESH   |(0%, 5%]  |        0|   2232| 2823|
|Birth     |JiVitA-4      |BANGLADESH   |(0%, 5%]  |        1|    196| 2823|
|Birth     |JiVitA-4      |BANGLADESH   |>5%       |        0|    259| 2823|
|Birth     |JiVitA-4      |BANGLADESH   |>5%       |        1|     26| 2823|
|Birth     |JiVitA-4      |BANGLADESH   |0%        |        0|     99| 2823|
|Birth     |JiVitA-4      |BANGLADESH   |0%        |        1|     11| 2823|
|Birth     |MAL-ED        |INDIA        |(0%, 5%]  |        0|     30|   47|
|Birth     |MAL-ED        |INDIA        |(0%, 5%]  |        1|      1|   47|
|Birth     |MAL-ED        |INDIA        |>5%       |        0|     14|   47|
|Birth     |MAL-ED        |INDIA        |>5%       |        1|      1|   47|
|Birth     |MAL-ED        |INDIA        |0%        |        0|      1|   47|
|Birth     |MAL-ED        |INDIA        |0%        |        1|      0|   47|
|Birth     |MAL-ED        |BANGLADESH   |(0%, 5%]  |        0|    114|  231|
|Birth     |MAL-ED        |BANGLADESH   |(0%, 5%]  |        1|      6|  231|
|Birth     |MAL-ED        |BANGLADESH   |>5%       |        0|     85|  231|
|Birth     |MAL-ED        |BANGLADESH   |>5%       |        1|      3|  231|
|Birth     |MAL-ED        |BANGLADESH   |0%        |        0|     23|  231|
|Birth     |MAL-ED        |BANGLADESH   |0%        |        1|      0|  231|
|Birth     |MAL-ED        |PERU         |(0%, 5%]  |        0|    102|  233|
|Birth     |MAL-ED        |PERU         |(0%, 5%]  |        1|      3|  233|
|Birth     |MAL-ED        |PERU         |>5%       |        0|    101|  233|
|Birth     |MAL-ED        |PERU         |>5%       |        1|      0|  233|
|Birth     |MAL-ED        |PERU         |0%        |        0|     26|  233|
|Birth     |MAL-ED        |PERU         |0%        |        1|      1|  233|
|Birth     |MAL-ED        |NEPAL        |(0%, 5%]  |        0|     14|   27|
|Birth     |MAL-ED        |NEPAL        |(0%, 5%]  |        1|      0|   27|
|Birth     |MAL-ED        |NEPAL        |>5%       |        0|     11|   27|
|Birth     |MAL-ED        |NEPAL        |>5%       |        1|      1|   27|
|Birth     |MAL-ED        |NEPAL        |0%        |        0|      1|   27|
|Birth     |MAL-ED        |NEPAL        |0%        |        1|      0|   27|
|Birth     |MAL-ED        |BRAZIL       |(0%, 5%]  |        0|     26|   65|
|Birth     |MAL-ED        |BRAZIL       |(0%, 5%]  |        1|      1|   65|
|Birth     |MAL-ED        |BRAZIL       |>5%       |        0|      0|   65|
|Birth     |MAL-ED        |BRAZIL       |>5%       |        1|      0|   65|
|Birth     |MAL-ED        |BRAZIL       |0%        |        0|     36|   65|
|Birth     |MAL-ED        |BRAZIL       |0%        |        1|      2|   65|
|Birth     |MAL-ED        |TANZANIA     |(0%, 5%]  |        0|     72|  125|
|Birth     |MAL-ED        |TANZANIA     |(0%, 5%]  |        1|     10|  125|
|Birth     |MAL-ED        |TANZANIA     |>5%       |        0|     41|  125|
|Birth     |MAL-ED        |TANZANIA     |>5%       |        1|      0|  125|
|Birth     |MAL-ED        |TANZANIA     |0%        |        0|      2|  125|
|Birth     |MAL-ED        |TANZANIA     |0%        |        1|      0|  125|
|Birth     |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |        0|     77|  123|
|Birth     |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |        1|      2|  123|
|Birth     |MAL-ED        |SOUTH AFRICA |>5%       |        0|      0|  123|
|Birth     |MAL-ED        |SOUTH AFRICA |>5%       |        1|      0|  123|
|Birth     |MAL-ED        |SOUTH AFRICA |0%        |        0|     44|  123|
|Birth     |MAL-ED        |SOUTH AFRICA |0%        |        1|      0|  123|
|Birth     |NIH-Birth     |BANGLADESH   |(0%, 5%]  |        0|    325|  605|
|Birth     |NIH-Birth     |BANGLADESH   |(0%, 5%]  |        1|     10|  605|
|Birth     |NIH-Birth     |BANGLADESH   |>5%       |        0|    215|  605|
|Birth     |NIH-Birth     |BANGLADESH   |>5%       |        1|      6|  605|
|Birth     |NIH-Birth     |BANGLADESH   |0%        |        0|     46|  605|
|Birth     |NIH-Birth     |BANGLADESH   |0%        |        1|      3|  605|
|Birth     |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |        0|    400|  732|
|Birth     |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |        1|      3|  732|
|Birth     |NIH-Crypto    |BANGLADESH   |>5%       |        0|    186|  732|
|Birth     |NIH-Crypto    |BANGLADESH   |>5%       |        1|      5|  732|
|Birth     |NIH-Crypto    |BANGLADESH   |0%        |        0|    136|  732|
|Birth     |NIH-Crypto    |BANGLADESH   |0%        |        1|      2|  732|
|Birth     |PROVIDE       |BANGLADESH   |(0%, 5%]  |        0|    337|  539|
|Birth     |PROVIDE       |BANGLADESH   |(0%, 5%]  |        1|      1|  539|
|Birth     |PROVIDE       |BANGLADESH   |>5%       |        0|    151|  539|
|Birth     |PROVIDE       |BANGLADESH   |>5%       |        1|      2|  539|
|Birth     |PROVIDE       |BANGLADESH   |0%        |        0|     47|  539|
|Birth     |PROVIDE       |BANGLADESH   |0%        |        1|      1|  539|
|6 months  |CMIN          |BANGLADESH   |(0%, 5%]  |        0|     90|  241|
|6 months  |CMIN          |BANGLADESH   |(0%, 5%]  |        1|     14|  241|
|6 months  |CMIN          |BANGLADESH   |>5%       |        0|    105|  241|
|6 months  |CMIN          |BANGLADESH   |>5%       |        1|     12|  241|
|6 months  |CMIN          |BANGLADESH   |0%        |        0|     18|  241|
|6 months  |CMIN          |BANGLADESH   |0%        |        1|      2|  241|
|6 months  |CONTENT       |PERU         |(0%, 5%]  |        0|    132|  215|
|6 months  |CONTENT       |PERU         |(0%, 5%]  |        1|      0|  215|
|6 months  |CONTENT       |PERU         |>5%       |        0|     80|  215|
|6 months  |CONTENT       |PERU         |>5%       |        1|      1|  215|
|6 months  |CONTENT       |PERU         |0%        |        0|      2|  215|
|6 months  |CONTENT       |PERU         |0%        |        1|      0|  215|
|6 months  |EE            |PAKISTAN     |(0%, 5%]  |        0|     85|  373|
|6 months  |EE            |PAKISTAN     |(0%, 5%]  |        1|     28|  373|
|6 months  |EE            |PAKISTAN     |>5%       |        0|      0|  373|
|6 months  |EE            |PAKISTAN     |>5%       |        1|      0|  373|
|6 months  |EE            |PAKISTAN     |0%        |        0|    207|  373|
|6 months  |EE            |PAKISTAN     |0%        |        1|     53|  373|
|6 months  |Guatemala BSC |GUATEMALA    |(0%, 5%]  |        0|     65|  296|
|6 months  |Guatemala BSC |GUATEMALA    |(0%, 5%]  |        1|      7|  296|
|6 months  |Guatemala BSC |GUATEMALA    |>5%       |        0|    168|  296|
|6 months  |Guatemala BSC |GUATEMALA    |>5%       |        1|     20|  296|
|6 months  |Guatemala BSC |GUATEMALA    |0%        |        0|     36|  296|
|6 months  |Guatemala BSC |GUATEMALA    |0%        |        1|      0|  296|
|6 months  |JiVitA-4      |BANGLADESH   |(0%, 5%]  |        0|   3860| 4831|
|6 months  |JiVitA-4      |BANGLADESH   |(0%, 5%]  |        1|    230| 4831|
|6 months  |JiVitA-4      |BANGLADESH   |>5%       |        0|    524| 4831|
|6 months  |JiVitA-4      |BANGLADESH   |>5%       |        1|     30| 4831|
|6 months  |JiVitA-4      |BANGLADESH   |0%        |        0|    176| 4831|
|6 months  |JiVitA-4      |BANGLADESH   |0%        |        1|     11| 4831|
|6 months  |MAL-ED        |INDIA        |(0%, 5%]  |        0|    172|  236|
|6 months  |MAL-ED        |INDIA        |(0%, 5%]  |        1|      7|  236|
|6 months  |MAL-ED        |INDIA        |>5%       |        0|     54|  236|
|6 months  |MAL-ED        |INDIA        |>5%       |        1|      2|  236|
|6 months  |MAL-ED        |INDIA        |0%        |        0|      1|  236|
|6 months  |MAL-ED        |INDIA        |0%        |        1|      0|  236|
|6 months  |MAL-ED        |BANGLADESH   |(0%, 5%]  |        0|    125|  241|
|6 months  |MAL-ED        |BANGLADESH   |(0%, 5%]  |        1|      5|  241|
|6 months  |MAL-ED        |BANGLADESH   |>5%       |        0|     83|  241|
|6 months  |MAL-ED        |BANGLADESH   |>5%       |        1|      2|  241|
|6 months  |MAL-ED        |BANGLADESH   |0%        |        0|     25|  241|
|6 months  |MAL-ED        |BANGLADESH   |0%        |        1|      1|  241|
|6 months  |MAL-ED        |PERU         |(0%, 5%]  |        0|    116|  273|
|6 months  |MAL-ED        |PERU         |(0%, 5%]  |        1|      4|  273|
|6 months  |MAL-ED        |PERU         |>5%       |        0|    120|  273|
|6 months  |MAL-ED        |PERU         |>5%       |        1|      5|  273|
|6 months  |MAL-ED        |PERU         |0%        |        0|     27|  273|
|6 months  |MAL-ED        |PERU         |0%        |        1|      1|  273|
|6 months  |MAL-ED        |NEPAL        |(0%, 5%]  |        0|    141|  236|
|6 months  |MAL-ED        |NEPAL        |(0%, 5%]  |        1|      0|  236|
|6 months  |MAL-ED        |NEPAL        |>5%       |        0|     93|  236|
|6 months  |MAL-ED        |NEPAL        |>5%       |        1|      1|  236|
|6 months  |MAL-ED        |NEPAL        |0%        |        0|      1|  236|
|6 months  |MAL-ED        |NEPAL        |0%        |        1|      0|  236|
|6 months  |MAL-ED        |BRAZIL       |(0%, 5%]  |        0|     92|  209|
|6 months  |MAL-ED        |BRAZIL       |(0%, 5%]  |        1|      0|  209|
|6 months  |MAL-ED        |BRAZIL       |>5%       |        0|      3|  209|
|6 months  |MAL-ED        |BRAZIL       |>5%       |        1|      0|  209|
|6 months  |MAL-ED        |BRAZIL       |0%        |        0|    114|  209|
|6 months  |MAL-ED        |BRAZIL       |0%        |        1|      0|  209|
|6 months  |MAL-ED        |TANZANIA     |(0%, 5%]  |        0|    155|  247|
|6 months  |MAL-ED        |TANZANIA     |(0%, 5%]  |        1|      8|  247|
|6 months  |MAL-ED        |TANZANIA     |>5%       |        0|     74|  247|
|6 months  |MAL-ED        |TANZANIA     |>5%       |        1|      6|  247|
|6 months  |MAL-ED        |TANZANIA     |0%        |        0|      4|  247|
|6 months  |MAL-ED        |TANZANIA     |0%        |        1|      0|  247|
|6 months  |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |        0|    146|  253|
|6 months  |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |        1|      4|  253|
|6 months  |MAL-ED        |SOUTH AFRICA |>5%       |        0|      0|  253|
|6 months  |MAL-ED        |SOUTH AFRICA |>5%       |        1|      1|  253|
|6 months  |MAL-ED        |SOUTH AFRICA |0%        |        0|    101|  253|
|6 months  |MAL-ED        |SOUTH AFRICA |0%        |        1|      1|  253|
|6 months  |NIH-Birth     |BANGLADESH   |(0%, 5%]  |        0|    274|  534|
|6 months  |NIH-Birth     |BANGLADESH   |(0%, 5%]  |        1|     18|  534|
|6 months  |NIH-Birth     |BANGLADESH   |>5%       |        0|    190|  534|
|6 months  |NIH-Birth     |BANGLADESH   |>5%       |        1|     13|  534|
|6 months  |NIH-Birth     |BANGLADESH   |0%        |        0|     35|  534|
|6 months  |NIH-Birth     |BANGLADESH   |0%        |        1|      4|  534|
|6 months  |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |        0|    381|  715|
|6 months  |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |        1|     13|  715|
|6 months  |NIH-Crypto    |BANGLADESH   |>5%       |        0|    178|  715|
|6 months  |NIH-Crypto    |BANGLADESH   |>5%       |        1|      6|  715|
|6 months  |NIH-Crypto    |BANGLADESH   |0%        |        0|    133|  715|
|6 months  |NIH-Crypto    |BANGLADESH   |0%        |        1|      4|  715|
|6 months  |PROVIDE       |BANGLADESH   |(0%, 5%]  |        0|    373|  604|
|6 months  |PROVIDE       |BANGLADESH   |(0%, 5%]  |        1|      5|  604|
|6 months  |PROVIDE       |BANGLADESH   |>5%       |        0|    174|  604|
|6 months  |PROVIDE       |BANGLADESH   |>5%       |        1|      5|  604|
|6 months  |PROVIDE       |BANGLADESH   |0%        |        0|     43|  604|
|6 months  |PROVIDE       |BANGLADESH   |0%        |        1|      4|  604|
|6 months  |SAS-FoodSuppl |INDIA        |(0%, 5%]  |        0|     41|  380|
|6 months  |SAS-FoodSuppl |INDIA        |(0%, 5%]  |        1|      6|  380|
|6 months  |SAS-FoodSuppl |INDIA        |>5%       |        0|    223|  380|
|6 months  |SAS-FoodSuppl |INDIA        |>5%       |        1|     38|  380|
|6 months  |SAS-FoodSuppl |INDIA        |0%        |        0|     62|  380|
|6 months  |SAS-FoodSuppl |INDIA        |0%        |        1|     10|  380|
|24 months |CMIN          |BANGLADESH   |(0%, 5%]  |        0|     70|  239|
|24 months |CMIN          |BANGLADESH   |(0%, 5%]  |        1|     29|  239|
|24 months |CMIN          |BANGLADESH   |>5%       |        0|     89|  239|
|24 months |CMIN          |BANGLADESH   |>5%       |        1|     32|  239|
|24 months |CMIN          |BANGLADESH   |0%        |        0|     13|  239|
|24 months |CMIN          |BANGLADESH   |0%        |        1|      6|  239|
|24 months |CONTENT       |PERU         |(0%, 5%]  |        0|    103|  164|
|24 months |CONTENT       |PERU         |(0%, 5%]  |        1|      1|  164|
|24 months |CONTENT       |PERU         |>5%       |        0|     58|  164|
|24 months |CONTENT       |PERU         |>5%       |        1|      0|  164|
|24 months |CONTENT       |PERU         |0%        |        0|      2|  164|
|24 months |CONTENT       |PERU         |0%        |        1|      0|  164|
|24 months |EE            |PAKISTAN     |(0%, 5%]  |        0|     36|  167|
|24 months |EE            |PAKISTAN     |(0%, 5%]  |        1|     20|  167|
|24 months |EE            |PAKISTAN     |>5%       |        0|      0|  167|
|24 months |EE            |PAKISTAN     |>5%       |        1|      0|  167|
|24 months |EE            |PAKISTAN     |0%        |        0|     72|  167|
|24 months |EE            |PAKISTAN     |0%        |        1|     39|  167|
|24 months |JiVitA-4      |BANGLADESH   |(0%, 5%]  |        0|   3633| 4752|
|24 months |JiVitA-4      |BANGLADESH   |(0%, 5%]  |        1|    395| 4752|
|24 months |JiVitA-4      |BANGLADESH   |>5%       |        0|    492| 4752|
|24 months |JiVitA-4      |BANGLADESH   |>5%       |        1|     43| 4752|
|24 months |JiVitA-4      |BANGLADESH   |0%        |        0|    174| 4752|
|24 months |JiVitA-4      |BANGLADESH   |0%        |        1|     15| 4752|
|24 months |MAL-ED        |INDIA        |(0%, 5%]  |        0|    150|  227|
|24 months |MAL-ED        |INDIA        |(0%, 5%]  |        1|     22|  227|
|24 months |MAL-ED        |INDIA        |>5%       |        0|     47|  227|
|24 months |MAL-ED        |INDIA        |>5%       |        1|      7|  227|
|24 months |MAL-ED        |INDIA        |0%        |        0|      0|  227|
|24 months |MAL-ED        |INDIA        |0%        |        1|      1|  227|
|24 months |MAL-ED        |BANGLADESH   |(0%, 5%]  |        0|     96|  212|
|24 months |MAL-ED        |BANGLADESH   |(0%, 5%]  |        1|     15|  212|
|24 months |MAL-ED        |BANGLADESH   |>5%       |        0|     69|  212|
|24 months |MAL-ED        |BANGLADESH   |>5%       |        1|     10|  212|
|24 months |MAL-ED        |BANGLADESH   |0%        |        0|     19|  212|
|24 months |MAL-ED        |BANGLADESH   |0%        |        1|      3|  212|
|24 months |MAL-ED        |PERU         |(0%, 5%]  |        0|     81|  201|
|24 months |MAL-ED        |PERU         |(0%, 5%]  |        1|      6|  201|
|24 months |MAL-ED        |PERU         |>5%       |        0|     86|  201|
|24 months |MAL-ED        |PERU         |>5%       |        1|      9|  201|
|24 months |MAL-ED        |PERU         |0%        |        0|     19|  201|
|24 months |MAL-ED        |PERU         |0%        |        1|      0|  201|
|24 months |MAL-ED        |NEPAL        |(0%, 5%]  |        0|    134|  228|
|24 months |MAL-ED        |NEPAL        |(0%, 5%]  |        1|      3|  228|
|24 months |MAL-ED        |NEPAL        |>5%       |        0|     86|  228|
|24 months |MAL-ED        |NEPAL        |>5%       |        1|      4|  228|
|24 months |MAL-ED        |NEPAL        |0%        |        0|      1|  228|
|24 months |MAL-ED        |NEPAL        |0%        |        1|      0|  228|
|24 months |MAL-ED        |BRAZIL       |(0%, 5%]  |        0|     73|  169|
|24 months |MAL-ED        |BRAZIL       |(0%, 5%]  |        1|      0|  169|
|24 months |MAL-ED        |BRAZIL       |>5%       |        0|      3|  169|
|24 months |MAL-ED        |BRAZIL       |>5%       |        1|      0|  169|
|24 months |MAL-ED        |BRAZIL       |0%        |        0|     92|  169|
|24 months |MAL-ED        |BRAZIL       |0%        |        1|      1|  169|
|24 months |MAL-ED        |TANZANIA     |(0%, 5%]  |        0|     96|  214|
|24 months |MAL-ED        |TANZANIA     |(0%, 5%]  |        1|     45|  214|
|24 months |MAL-ED        |TANZANIA     |>5%       |        0|     46|  214|
|24 months |MAL-ED        |TANZANIA     |>5%       |        1|     24|  214|
|24 months |MAL-ED        |TANZANIA     |0%        |        0|      2|  214|
|24 months |MAL-ED        |TANZANIA     |0%        |        1|      1|  214|
|24 months |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |        0|    128|  237|
|24 months |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |        1|     13|  237|
|24 months |MAL-ED        |SOUTH AFRICA |>5%       |        0|      1|  237|
|24 months |MAL-ED        |SOUTH AFRICA |>5%       |        1|      0|  237|
|24 months |MAL-ED        |SOUTH AFRICA |0%        |        0|     81|  237|
|24 months |MAL-ED        |SOUTH AFRICA |0%        |        1|     14|  237|
|24 months |NIH-Birth     |BANGLADESH   |(0%, 5%]  |        0|    191|  426|
|24 months |NIH-Birth     |BANGLADESH   |(0%, 5%]  |        1|     49|  426|
|24 months |NIH-Birth     |BANGLADESH   |>5%       |        0|    121|  426|
|24 months |NIH-Birth     |BANGLADESH   |>5%       |        1|     33|  426|
|24 months |NIH-Birth     |BANGLADESH   |0%        |        0|     19|  426|
|24 months |NIH-Birth     |BANGLADESH   |0%        |        1|     13|  426|
|24 months |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |        0|    262|  514|
|24 months |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |        1|     22|  514|
|24 months |NIH-Crypto    |BANGLADESH   |>5%       |        0|    122|  514|
|24 months |NIH-Crypto    |BANGLADESH   |>5%       |        1|     11|  514|
|24 months |NIH-Crypto    |BANGLADESH   |0%        |        0|     94|  514|
|24 months |NIH-Crypto    |BANGLADESH   |0%        |        1|      3|  514|
|24 months |PROVIDE       |BANGLADESH   |(0%, 5%]  |        0|    326|  578|
|24 months |PROVIDE       |BANGLADESH   |(0%, 5%]  |        1|     29|  578|
|24 months |PROVIDE       |BANGLADESH   |>5%       |        0|    160|  578|
|24 months |PROVIDE       |BANGLADESH   |>5%       |        1|     14|  578|
|24 months |PROVIDE       |BANGLADESH   |0%        |        0|     40|  578|
|24 months |PROVIDE       |BANGLADESH   |0%        |        1|      9|  578|


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
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
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
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


