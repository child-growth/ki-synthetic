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

**Intervention Variable:** perdiar24

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat      |studyid       |country      |perdiar24 | wast_rec90d| n_cell|    n|
|:-----------|:-------------|:------------|:---------|-----------:|------:|----:|
|0-24 months |CMIN          |BANGLADESH   |(0%, 5%]  |           0|     36|  187|
|0-24 months |CMIN          |BANGLADESH   |(0%, 5%]  |           1|     50|  187|
|0-24 months |CMIN          |BANGLADESH   |>5%       |           0|     35|  187|
|0-24 months |CMIN          |BANGLADESH   |>5%       |           1|     49|  187|
|0-24 months |CMIN          |BANGLADESH   |0%        |           0|      9|  187|
|0-24 months |CMIN          |BANGLADESH   |0%        |           1|      8|  187|
|0-24 months |CONTENT       |PERU         |(0%, 5%]  |           0|      0|    7|
|0-24 months |CONTENT       |PERU         |(0%, 5%]  |           1|      2|    7|
|0-24 months |CONTENT       |PERU         |>5%       |           0|      0|    7|
|0-24 months |CONTENT       |PERU         |>5%       |           1|      2|    7|
|0-24 months |CONTENT       |PERU         |0%        |           0|      1|    7|
|0-24 months |CONTENT       |PERU         |0%        |           1|      2|    7|
|0-24 months |EE            |PAKISTAN     |(0%, 5%]  |           0|     45|  323|
|0-24 months |EE            |PAKISTAN     |(0%, 5%]  |           1|     50|  323|
|0-24 months |EE            |PAKISTAN     |>5%       |           0|      0|  323|
|0-24 months |EE            |PAKISTAN     |>5%       |           1|      0|  323|
|0-24 months |EE            |PAKISTAN     |0%        |           0|    115|  323|
|0-24 months |EE            |PAKISTAN     |0%        |           1|    113|  323|
|0-24 months |Guatemala BSC |GUATEMALA    |(0%, 5%]  |           0|      3|   37|
|0-24 months |Guatemala BSC |GUATEMALA    |(0%, 5%]  |           1|      4|   37|
|0-24 months |Guatemala BSC |GUATEMALA    |>5%       |           0|     16|   37|
|0-24 months |Guatemala BSC |GUATEMALA    |>5%       |           1|     12|   37|
|0-24 months |Guatemala BSC |GUATEMALA    |0%        |           0|      1|   37|
|0-24 months |Guatemala BSC |GUATEMALA    |0%        |           1|      1|   37|
|0-24 months |iLiNS-Zinc    |BURKINA FASO |(0%, 5%]  |           0|    294|  599|
|0-24 months |iLiNS-Zinc    |BURKINA FASO |(0%, 5%]  |           1|     11|  599|
|0-24 months |iLiNS-Zinc    |BURKINA FASO |>5%       |           0|    133|  599|
|0-24 months |iLiNS-Zinc    |BURKINA FASO |>5%       |           1|      3|  599|
|0-24 months |iLiNS-Zinc    |BURKINA FASO |0%        |           0|    152|  599|
|0-24 months |iLiNS-Zinc    |BURKINA FASO |0%        |           1|      6|  599|
|0-24 months |JiVitA-4      |BANGLADESH   |(0%, 5%]  |           0|   1314| 2069|
|0-24 months |JiVitA-4      |BANGLADESH   |(0%, 5%]  |           1|    464| 2069|
|0-24 months |JiVitA-4      |BANGLADESH   |>5%       |           0|    159| 2069|
|0-24 months |JiVitA-4      |BANGLADESH   |>5%       |           1|     49| 2069|
|0-24 months |JiVitA-4      |BANGLADESH   |0%        |           0|     61| 2069|
|0-24 months |JiVitA-4      |BANGLADESH   |0%        |           1|     22| 2069|
|0-24 months |MAL-ED        |INDIA        |(0%, 5%]  |           0|     54|  181|
|0-24 months |MAL-ED        |INDIA        |(0%, 5%]  |           1|     82|  181|
|0-24 months |MAL-ED        |INDIA        |>5%       |           0|     16|  181|
|0-24 months |MAL-ED        |INDIA        |>5%       |           1|     27|  181|
|0-24 months |MAL-ED        |INDIA        |0%        |           0|      1|  181|
|0-24 months |MAL-ED        |INDIA        |0%        |           1|      1|  181|
|0-24 months |MAL-ED        |BANGLADESH   |(0%, 5%]  |           0|     26|  124|
|0-24 months |MAL-ED        |BANGLADESH   |(0%, 5%]  |           1|     38|  124|
|0-24 months |MAL-ED        |BANGLADESH   |>5%       |           0|     17|  124|
|0-24 months |MAL-ED        |BANGLADESH   |>5%       |           1|     35|  124|
|0-24 months |MAL-ED        |BANGLADESH   |0%        |           0|      1|  124|
|0-24 months |MAL-ED        |BANGLADESH   |0%        |           1|      7|  124|
|0-24 months |MAL-ED        |PERU         |(0%, 5%]  |           0|      3|   35|
|0-24 months |MAL-ED        |PERU         |(0%, 5%]  |           1|      9|   35|
|0-24 months |MAL-ED        |PERU         |>5%       |           0|      3|   35|
|0-24 months |MAL-ED        |PERU         |>5%       |           1|     15|   35|
|0-24 months |MAL-ED        |PERU         |0%        |           0|      0|   35|
|0-24 months |MAL-ED        |PERU         |0%        |           1|      5|   35|
|0-24 months |MAL-ED        |NEPAL        |(0%, 5%]  |           0|     11|   98|
|0-24 months |MAL-ED        |NEPAL        |(0%, 5%]  |           1|     37|   98|
|0-24 months |MAL-ED        |NEPAL        |>5%       |           0|      9|   98|
|0-24 months |MAL-ED        |NEPAL        |>5%       |           1|     40|   98|
|0-24 months |MAL-ED        |NEPAL        |0%        |           0|      0|   98|
|0-24 months |MAL-ED        |NEPAL        |0%        |           1|      1|   98|
|0-24 months |MAL-ED        |BRAZIL       |(0%, 5%]  |           0|      5|   24|
|0-24 months |MAL-ED        |BRAZIL       |(0%, 5%]  |           1|     11|   24|
|0-24 months |MAL-ED        |BRAZIL       |>5%       |           0|      0|   24|
|0-24 months |MAL-ED        |BRAZIL       |>5%       |           1|      0|   24|
|0-24 months |MAL-ED        |BRAZIL       |0%        |           0|      1|   24|
|0-24 months |MAL-ED        |BRAZIL       |0%        |           1|      7|   24|
|0-24 months |MAL-ED        |TANZANIA     |(0%, 5%]  |           0|      6|   51|
|0-24 months |MAL-ED        |TANZANIA     |(0%, 5%]  |           1|     26|   51|
|0-24 months |MAL-ED        |TANZANIA     |>5%       |           0|      3|   51|
|0-24 months |MAL-ED        |TANZANIA     |>5%       |           1|     15|   51|
|0-24 months |MAL-ED        |TANZANIA     |0%        |           0|      0|   51|
|0-24 months |MAL-ED        |TANZANIA     |0%        |           1|      1|   51|
|0-24 months |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |           0|     11|   87|
|0-24 months |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |           1|     41|   87|
|0-24 months |MAL-ED        |SOUTH AFRICA |>5%       |           0|      0|   87|
|0-24 months |MAL-ED        |SOUTH AFRICA |>5%       |           1|      0|   87|
|0-24 months |MAL-ED        |SOUTH AFRICA |0%        |           0|      7|   87|
|0-24 months |MAL-ED        |SOUTH AFRICA |0%        |           1|     28|   87|
|0-24 months |NIH-Birth     |BANGLADESH   |(0%, 5%]  |           0|    115|  415|
|0-24 months |NIH-Birth     |BANGLADESH   |(0%, 5%]  |           1|    106|  415|
|0-24 months |NIH-Birth     |BANGLADESH   |>5%       |           0|     70|  415|
|0-24 months |NIH-Birth     |BANGLADESH   |>5%       |           1|     86|  415|
|0-24 months |NIH-Birth     |BANGLADESH   |0%        |           0|     13|  415|
|0-24 months |NIH-Birth     |BANGLADESH   |0%        |           1|     25|  415|
|0-24 months |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |           0|     70|  310|
|0-24 months |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |           1|    112|  310|
|0-24 months |NIH-Crypto    |BANGLADESH   |>5%       |           0|     27|  310|
|0-24 months |NIH-Crypto    |BANGLADESH   |>5%       |           1|     43|  310|
|0-24 months |NIH-Crypto    |BANGLADESH   |0%        |           0|     20|  310|
|0-24 months |NIH-Crypto    |BANGLADESH   |0%        |           1|     38|  310|
|0-24 months |PROVIDE       |BANGLADESH   |(0%, 5%]  |           0|     82|  308|
|0-24 months |PROVIDE       |BANGLADESH   |(0%, 5%]  |           1|    116|  308|
|0-24 months |PROVIDE       |BANGLADESH   |>5%       |           0|     37|  308|
|0-24 months |PROVIDE       |BANGLADESH   |>5%       |           1|     48|  308|
|0-24 months |PROVIDE       |BANGLADESH   |0%        |           0|     10|  308|
|0-24 months |PROVIDE       |BANGLADESH   |0%        |           1|     15|  308|
|0-24 months |SAS-FoodSuppl |INDIA        |(0%, 5%]  |           0|     30|  234|
|0-24 months |SAS-FoodSuppl |INDIA        |(0%, 5%]  |           1|      1|  234|
|0-24 months |SAS-FoodSuppl |INDIA        |>5%       |           0|    144|  234|
|0-24 months |SAS-FoodSuppl |INDIA        |>5%       |           1|      7|  234|
|0-24 months |SAS-FoodSuppl |INDIA        |0%        |           0|     47|  234|
|0-24 months |SAS-FoodSuppl |INDIA        |0%        |           1|      5|  234|
|0-6 months  |CMIN          |BANGLADESH   |(0%, 5%]  |           0|     13|   50|
|0-6 months  |CMIN          |BANGLADESH   |(0%, 5%]  |           1|     10|   50|
|0-6 months  |CMIN          |BANGLADESH   |>5%       |           0|      9|   50|
|0-6 months  |CMIN          |BANGLADESH   |>5%       |           1|     14|   50|
|0-6 months  |CMIN          |BANGLADESH   |0%        |           0|      3|   50|
|0-6 months  |CMIN          |BANGLADESH   |0%        |           1|      1|   50|
|0-6 months  |CONTENT       |PERU         |(0%, 5%]  |           0|      0|    4|
|0-6 months  |CONTENT       |PERU         |(0%, 5%]  |           1|      1|    4|
|0-6 months  |CONTENT       |PERU         |>5%       |           0|      0|    4|
|0-6 months  |CONTENT       |PERU         |>5%       |           1|      2|    4|
|0-6 months  |CONTENT       |PERU         |0%        |           0|      0|    4|
|0-6 months  |CONTENT       |PERU         |0%        |           1|      1|    4|
|0-6 months  |EE            |PAKISTAN     |(0%, 5%]  |           0|     19|  127|
|0-6 months  |EE            |PAKISTAN     |(0%, 5%]  |           1|     19|  127|
|0-6 months  |EE            |PAKISTAN     |>5%       |           0|      0|  127|
|0-6 months  |EE            |PAKISTAN     |>5%       |           1|      0|  127|
|0-6 months  |EE            |PAKISTAN     |0%        |           0|     36|  127|
|0-6 months  |EE            |PAKISTAN     |0%        |           1|     53|  127|
|0-6 months  |Guatemala BSC |GUATEMALA    |(0%, 5%]  |           0|      0|   10|
|0-6 months  |Guatemala BSC |GUATEMALA    |(0%, 5%]  |           1|      1|   10|
|0-6 months  |Guatemala BSC |GUATEMALA    |>5%       |           0|      6|   10|
|0-6 months  |Guatemala BSC |GUATEMALA    |>5%       |           1|      3|   10|
|0-6 months  |Guatemala BSC |GUATEMALA    |0%        |           0|      0|   10|
|0-6 months  |Guatemala BSC |GUATEMALA    |0%        |           1|      0|   10|
|0-6 months  |JiVitA-4      |BANGLADESH   |(0%, 5%]  |           0|    207|  553|
|0-6 months  |JiVitA-4      |BANGLADESH   |(0%, 5%]  |           1|    266|  553|
|0-6 months  |JiVitA-4      |BANGLADESH   |>5%       |           0|     29|  553|
|0-6 months  |JiVitA-4      |BANGLADESH   |>5%       |           1|     30|  553|
|0-6 months  |JiVitA-4      |BANGLADESH   |0%        |           0|      8|  553|
|0-6 months  |JiVitA-4      |BANGLADESH   |0%        |           1|     13|  553|
|0-6 months  |MAL-ED        |INDIA        |(0%, 5%]  |           0|     22|   86|
|0-6 months  |MAL-ED        |INDIA        |(0%, 5%]  |           1|     45|   86|
|0-6 months  |MAL-ED        |INDIA        |>5%       |           0|      5|   86|
|0-6 months  |MAL-ED        |INDIA        |>5%       |           1|     13|   86|
|0-6 months  |MAL-ED        |INDIA        |0%        |           0|      0|   86|
|0-6 months  |MAL-ED        |INDIA        |0%        |           1|      1|   86|
|0-6 months  |MAL-ED        |BANGLADESH   |(0%, 5%]  |           0|      9|   63|
|0-6 months  |MAL-ED        |BANGLADESH   |(0%, 5%]  |           1|     25|   63|
|0-6 months  |MAL-ED        |BANGLADESH   |>5%       |           0|      4|   63|
|0-6 months  |MAL-ED        |BANGLADESH   |>5%       |           1|     20|   63|
|0-6 months  |MAL-ED        |BANGLADESH   |0%        |           0|      0|   63|
|0-6 months  |MAL-ED        |BANGLADESH   |0%        |           1|      5|   63|
|0-6 months  |MAL-ED        |PERU         |(0%, 5%]  |           0|      0|   11|
|0-6 months  |MAL-ED        |PERU         |(0%, 5%]  |           1|      3|   11|
|0-6 months  |MAL-ED        |PERU         |>5%       |           0|      0|   11|
|0-6 months  |MAL-ED        |PERU         |>5%       |           1|      6|   11|
|0-6 months  |MAL-ED        |PERU         |0%        |           0|      0|   11|
|0-6 months  |MAL-ED        |PERU         |0%        |           1|      2|   11|
|0-6 months  |MAL-ED        |NEPAL        |(0%, 5%]  |           0|      5|   48|
|0-6 months  |MAL-ED        |NEPAL        |(0%, 5%]  |           1|     15|   48|
|0-6 months  |MAL-ED        |NEPAL        |>5%       |           0|      4|   48|
|0-6 months  |MAL-ED        |NEPAL        |>5%       |           1|     23|   48|
|0-6 months  |MAL-ED        |NEPAL        |0%        |           0|      0|   48|
|0-6 months  |MAL-ED        |NEPAL        |0%        |           1|      1|   48|
|0-6 months  |MAL-ED        |BRAZIL       |(0%, 5%]  |           0|      1|   15|
|0-6 months  |MAL-ED        |BRAZIL       |(0%, 5%]  |           1|      8|   15|
|0-6 months  |MAL-ED        |BRAZIL       |>5%       |           0|      0|   15|
|0-6 months  |MAL-ED        |BRAZIL       |>5%       |           1|      0|   15|
|0-6 months  |MAL-ED        |BRAZIL       |0%        |           0|      0|   15|
|0-6 months  |MAL-ED        |BRAZIL       |0%        |           1|      6|   15|
|0-6 months  |MAL-ED        |TANZANIA     |(0%, 5%]  |           0|      1|   14|
|0-6 months  |MAL-ED        |TANZANIA     |(0%, 5%]  |           1|      9|   14|
|0-6 months  |MAL-ED        |TANZANIA     |>5%       |           0|      0|   14|
|0-6 months  |MAL-ED        |TANZANIA     |>5%       |           1|      3|   14|
|0-6 months  |MAL-ED        |TANZANIA     |0%        |           0|      0|   14|
|0-6 months  |MAL-ED        |TANZANIA     |0%        |           1|      1|   14|
|0-6 months  |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |           0|      4|   36|
|0-6 months  |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |           1|     13|   36|
|0-6 months  |MAL-ED        |SOUTH AFRICA |>5%       |           0|      0|   36|
|0-6 months  |MAL-ED        |SOUTH AFRICA |>5%       |           1|      0|   36|
|0-6 months  |MAL-ED        |SOUTH AFRICA |0%        |           0|      5|   36|
|0-6 months  |MAL-ED        |SOUTH AFRICA |0%        |           1|     14|   36|
|0-6 months  |NIH-Birth     |BANGLADESH   |(0%, 5%]  |           0|     33|  221|
|0-6 months  |NIH-Birth     |BANGLADESH   |(0%, 5%]  |           1|     76|  221|
|0-6 months  |NIH-Birth     |BANGLADESH   |>5%       |           0|     25|  221|
|0-6 months  |NIH-Birth     |BANGLADESH   |>5%       |           1|     63|  221|
|0-6 months  |NIH-Birth     |BANGLADESH   |0%        |           0|      6|  221|
|0-6 months  |NIH-Birth     |BANGLADESH   |0%        |           1|     18|  221|
|0-6 months  |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |           0|     14|  197|
|0-6 months  |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |           1|    103|  197|
|0-6 months  |NIH-Crypto    |BANGLADESH   |>5%       |           0|      4|  197|
|0-6 months  |NIH-Crypto    |BANGLADESH   |>5%       |           1|     39|  197|
|0-6 months  |NIH-Crypto    |BANGLADESH   |0%        |           0|      3|  197|
|0-6 months  |NIH-Crypto    |BANGLADESH   |0%        |           1|     34|  197|
|0-6 months  |PROVIDE       |BANGLADESH   |(0%, 5%]  |           0|     25|  185|
|0-6 months  |PROVIDE       |BANGLADESH   |(0%, 5%]  |           1|     92|  185|
|0-6 months  |PROVIDE       |BANGLADESH   |>5%       |           0|     11|  185|
|0-6 months  |PROVIDE       |BANGLADESH   |>5%       |           1|     38|  185|
|0-6 months  |PROVIDE       |BANGLADESH   |0%        |           0|      4|  185|
|0-6 months  |PROVIDE       |BANGLADESH   |0%        |           1|     15|  185|
|0-6 months  |SAS-FoodSuppl |INDIA        |(0%, 5%]  |           0|     13|   78|
|0-6 months  |SAS-FoodSuppl |INDIA        |(0%, 5%]  |           1|      0|   78|
|0-6 months  |SAS-FoodSuppl |INDIA        |>5%       |           0|     50|   78|
|0-6 months  |SAS-FoodSuppl |INDIA        |>5%       |           1|      0|   78|
|0-6 months  |SAS-FoodSuppl |INDIA        |0%        |           0|     15|   78|
|0-6 months  |SAS-FoodSuppl |INDIA        |0%        |           1|      0|   78|
|6-24 months |CMIN          |BANGLADESH   |(0%, 5%]  |           0|     23|  137|
|6-24 months |CMIN          |BANGLADESH   |(0%, 5%]  |           1|     40|  137|
|6-24 months |CMIN          |BANGLADESH   |>5%       |           0|     26|  137|
|6-24 months |CMIN          |BANGLADESH   |>5%       |           1|     35|  137|
|6-24 months |CMIN          |BANGLADESH   |0%        |           0|      6|  137|
|6-24 months |CMIN          |BANGLADESH   |0%        |           1|      7|  137|
|6-24 months |CONTENT       |PERU         |(0%, 5%]  |           0|      0|    3|
|6-24 months |CONTENT       |PERU         |(0%, 5%]  |           1|      1|    3|
|6-24 months |CONTENT       |PERU         |>5%       |           0|      0|    3|
|6-24 months |CONTENT       |PERU         |>5%       |           1|      0|    3|
|6-24 months |CONTENT       |PERU         |0%        |           0|      1|    3|
|6-24 months |CONTENT       |PERU         |0%        |           1|      1|    3|
|6-24 months |EE            |PAKISTAN     |(0%, 5%]  |           0|     26|  196|
|6-24 months |EE            |PAKISTAN     |(0%, 5%]  |           1|     31|  196|
|6-24 months |EE            |PAKISTAN     |>5%       |           0|      0|  196|
|6-24 months |EE            |PAKISTAN     |>5%       |           1|      0|  196|
|6-24 months |EE            |PAKISTAN     |0%        |           0|     79|  196|
|6-24 months |EE            |PAKISTAN     |0%        |           1|     60|  196|
|6-24 months |Guatemala BSC |GUATEMALA    |(0%, 5%]  |           0|      3|   27|
|6-24 months |Guatemala BSC |GUATEMALA    |(0%, 5%]  |           1|      3|   27|
|6-24 months |Guatemala BSC |GUATEMALA    |>5%       |           0|     10|   27|
|6-24 months |Guatemala BSC |GUATEMALA    |>5%       |           1|      9|   27|
|6-24 months |Guatemala BSC |GUATEMALA    |0%        |           0|      1|   27|
|6-24 months |Guatemala BSC |GUATEMALA    |0%        |           1|      1|   27|
|6-24 months |iLiNS-Zinc    |BURKINA FASO |(0%, 5%]  |           0|    294|  599|
|6-24 months |iLiNS-Zinc    |BURKINA FASO |(0%, 5%]  |           1|     11|  599|
|6-24 months |iLiNS-Zinc    |BURKINA FASO |>5%       |           0|    133|  599|
|6-24 months |iLiNS-Zinc    |BURKINA FASO |>5%       |           1|      3|  599|
|6-24 months |iLiNS-Zinc    |BURKINA FASO |0%        |           0|    152|  599|
|6-24 months |iLiNS-Zinc    |BURKINA FASO |0%        |           1|      6|  599|
|6-24 months |JiVitA-4      |BANGLADESH   |(0%, 5%]  |           0|   1107| 1516|
|6-24 months |JiVitA-4      |BANGLADESH   |(0%, 5%]  |           1|    198| 1516|
|6-24 months |JiVitA-4      |BANGLADESH   |>5%       |           0|    130| 1516|
|6-24 months |JiVitA-4      |BANGLADESH   |>5%       |           1|     19| 1516|
|6-24 months |JiVitA-4      |BANGLADESH   |0%        |           0|     53| 1516|
|6-24 months |JiVitA-4      |BANGLADESH   |0%        |           1|      9| 1516|
|6-24 months |MAL-ED        |INDIA        |(0%, 5%]  |           0|     32|   95|
|6-24 months |MAL-ED        |INDIA        |(0%, 5%]  |           1|     37|   95|
|6-24 months |MAL-ED        |INDIA        |>5%       |           0|     11|   95|
|6-24 months |MAL-ED        |INDIA        |>5%       |           1|     14|   95|
|6-24 months |MAL-ED        |INDIA        |0%        |           0|      1|   95|
|6-24 months |MAL-ED        |INDIA        |0%        |           1|      0|   95|
|6-24 months |MAL-ED        |BANGLADESH   |(0%, 5%]  |           0|     17|   61|
|6-24 months |MAL-ED        |BANGLADESH   |(0%, 5%]  |           1|     13|   61|
|6-24 months |MAL-ED        |BANGLADESH   |>5%       |           0|     13|   61|
|6-24 months |MAL-ED        |BANGLADESH   |>5%       |           1|     15|   61|
|6-24 months |MAL-ED        |BANGLADESH   |0%        |           0|      1|   61|
|6-24 months |MAL-ED        |BANGLADESH   |0%        |           1|      2|   61|
|6-24 months |MAL-ED        |PERU         |(0%, 5%]  |           0|      3|   24|
|6-24 months |MAL-ED        |PERU         |(0%, 5%]  |           1|      6|   24|
|6-24 months |MAL-ED        |PERU         |>5%       |           0|      3|   24|
|6-24 months |MAL-ED        |PERU         |>5%       |           1|      9|   24|
|6-24 months |MAL-ED        |PERU         |0%        |           0|      0|   24|
|6-24 months |MAL-ED        |PERU         |0%        |           1|      3|   24|
|6-24 months |MAL-ED        |NEPAL        |(0%, 5%]  |           0|      6|   50|
|6-24 months |MAL-ED        |NEPAL        |(0%, 5%]  |           1|     22|   50|
|6-24 months |MAL-ED        |NEPAL        |>5%       |           0|      5|   50|
|6-24 months |MAL-ED        |NEPAL        |>5%       |           1|     17|   50|
|6-24 months |MAL-ED        |NEPAL        |0%        |           0|      0|   50|
|6-24 months |MAL-ED        |NEPAL        |0%        |           1|      0|   50|
|6-24 months |MAL-ED        |BRAZIL       |(0%, 5%]  |           0|      4|    9|
|6-24 months |MAL-ED        |BRAZIL       |(0%, 5%]  |           1|      3|    9|
|6-24 months |MAL-ED        |BRAZIL       |>5%       |           0|      0|    9|
|6-24 months |MAL-ED        |BRAZIL       |>5%       |           1|      0|    9|
|6-24 months |MAL-ED        |BRAZIL       |0%        |           0|      1|    9|
|6-24 months |MAL-ED        |BRAZIL       |0%        |           1|      1|    9|
|6-24 months |MAL-ED        |TANZANIA     |(0%, 5%]  |           0|      5|   37|
|6-24 months |MAL-ED        |TANZANIA     |(0%, 5%]  |           1|     17|   37|
|6-24 months |MAL-ED        |TANZANIA     |>5%       |           0|      3|   37|
|6-24 months |MAL-ED        |TANZANIA     |>5%       |           1|     12|   37|
|6-24 months |MAL-ED        |TANZANIA     |0%        |           0|      0|   37|
|6-24 months |MAL-ED        |TANZANIA     |0%        |           1|      0|   37|
|6-24 months |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |           0|      7|   51|
|6-24 months |MAL-ED        |SOUTH AFRICA |(0%, 5%]  |           1|     28|   51|
|6-24 months |MAL-ED        |SOUTH AFRICA |>5%       |           0|      0|   51|
|6-24 months |MAL-ED        |SOUTH AFRICA |>5%       |           1|      0|   51|
|6-24 months |MAL-ED        |SOUTH AFRICA |0%        |           0|      2|   51|
|6-24 months |MAL-ED        |SOUTH AFRICA |0%        |           1|     14|   51|
|6-24 months |NIH-Birth     |BANGLADESH   |(0%, 5%]  |           0|     82|  194|
|6-24 months |NIH-Birth     |BANGLADESH   |(0%, 5%]  |           1|     30|  194|
|6-24 months |NIH-Birth     |BANGLADESH   |>5%       |           0|     45|  194|
|6-24 months |NIH-Birth     |BANGLADESH   |>5%       |           1|     23|  194|
|6-24 months |NIH-Birth     |BANGLADESH   |0%        |           0|      7|  194|
|6-24 months |NIH-Birth     |BANGLADESH   |0%        |           1|      7|  194|
|6-24 months |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |           0|     56|  113|
|6-24 months |NIH-Crypto    |BANGLADESH   |(0%, 5%]  |           1|      9|  113|
|6-24 months |NIH-Crypto    |BANGLADESH   |>5%       |           0|     23|  113|
|6-24 months |NIH-Crypto    |BANGLADESH   |>5%       |           1|      4|  113|
|6-24 months |NIH-Crypto    |BANGLADESH   |0%        |           0|     17|  113|
|6-24 months |NIH-Crypto    |BANGLADESH   |0%        |           1|      4|  113|
|6-24 months |PROVIDE       |BANGLADESH   |(0%, 5%]  |           0|     57|  123|
|6-24 months |PROVIDE       |BANGLADESH   |(0%, 5%]  |           1|     24|  123|
|6-24 months |PROVIDE       |BANGLADESH   |>5%       |           0|     26|  123|
|6-24 months |PROVIDE       |BANGLADESH   |>5%       |           1|     10|  123|
|6-24 months |PROVIDE       |BANGLADESH   |0%        |           0|      6|  123|
|6-24 months |PROVIDE       |BANGLADESH   |0%        |           1|      0|  123|
|6-24 months |SAS-FoodSuppl |INDIA        |(0%, 5%]  |           0|     17|  156|
|6-24 months |SAS-FoodSuppl |INDIA        |(0%, 5%]  |           1|      1|  156|
|6-24 months |SAS-FoodSuppl |INDIA        |>5%       |           0|     94|  156|
|6-24 months |SAS-FoodSuppl |INDIA        |>5%       |           1|      7|  156|
|6-24 months |SAS-FoodSuppl |INDIA        |0%        |           0|     32|  156|
|6-24 months |SAS-FoodSuppl |INDIA        |0%        |           1|      5|  156|


The following strata were considered:

* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
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

* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


