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

**Intervention Variable:** impsan

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid    |country      |impsan | swasted| n_cell|     n|
|:---------|:----------|:------------|:------|-------:|------:|-----:|
|Birth     |COHORTS    |INDIA        |1      |       0|   2009|  4889|
|Birth     |COHORTS    |INDIA        |1      |       1|    106|  4889|
|Birth     |COHORTS    |INDIA        |0      |       0|   2621|  4889|
|Birth     |COHORTS    |INDIA        |0      |       1|    153|  4889|
|Birth     |COHORTS    |GUATEMALA    |1      |       0|     47|   531|
|Birth     |COHORTS    |GUATEMALA    |1      |       1|      6|   531|
|Birth     |COHORTS    |GUATEMALA    |0      |       0|    442|   531|
|Birth     |COHORTS    |GUATEMALA    |0      |       1|     36|   531|
|Birth     |COHORTS    |PHILIPPINES  |1      |       0|    198|  1209|
|Birth     |COHORTS    |PHILIPPINES  |1      |       1|     11|  1209|
|Birth     |COHORTS    |PHILIPPINES  |0      |       0|    959|  1209|
|Birth     |COHORTS    |PHILIPPINES  |0      |       1|     41|  1209|
|Birth     |CONTENT    |PERU         |1      |       0|      2|     2|
|Birth     |CONTENT    |PERU         |1      |       1|      0|     2|
|Birth     |CONTENT    |PERU         |0      |       0|      0|     2|
|Birth     |CONTENT    |PERU         |0      |       1|      0|     2|
|Birth     |JiVitA-3   |BANGLADESH   |1      |       0|  12239| 17995|
|Birth     |JiVitA-3   |BANGLADESH   |1      |       1|    231| 17995|
|Birth     |JiVitA-3   |BANGLADESH   |0      |       0|   5409| 17995|
|Birth     |JiVitA-3   |BANGLADESH   |0      |       1|    116| 17995|
|Birth     |JiVitA-4   |BANGLADESH   |1      |       0|   1801|  2394|
|Birth     |JiVitA-4   |BANGLADESH   |1      |       1|     26|  2394|
|Birth     |JiVitA-4   |BANGLADESH   |0      |       0|    562|  2394|
|Birth     |JiVitA-4   |BANGLADESH   |0      |       1|      5|  2394|
|Birth     |MAL-ED     |INDIA        |1      |       0|     18|    44|
|Birth     |MAL-ED     |INDIA        |1      |       1|      0|    44|
|Birth     |MAL-ED     |INDIA        |0      |       0|     26|    44|
|Birth     |MAL-ED     |INDIA        |0      |       1|      0|    44|
|Birth     |MAL-ED     |BANGLADESH   |1      |       0|    157|   198|
|Birth     |MAL-ED     |BANGLADESH   |1      |       1|      7|   198|
|Birth     |MAL-ED     |BANGLADESH   |0      |       0|     33|   198|
|Birth     |MAL-ED     |BANGLADESH   |0      |       1|      1|   198|
|Birth     |MAL-ED     |PERU         |1      |       0|     48|   198|
|Birth     |MAL-ED     |PERU         |1      |       1|      0|   198|
|Birth     |MAL-ED     |PERU         |0      |       0|    150|   198|
|Birth     |MAL-ED     |PERU         |0      |       1|      0|   198|
|Birth     |MAL-ED     |NEPAL        |1      |       0|     25|    26|
|Birth     |MAL-ED     |NEPAL        |1      |       1|      1|    26|
|Birth     |MAL-ED     |NEPAL        |0      |       0|      0|    26|
|Birth     |MAL-ED     |NEPAL        |0      |       1|      0|    26|
|Birth     |MAL-ED     |BRAZIL       |1      |       0|     51|    52|
|Birth     |MAL-ED     |BRAZIL       |1      |       1|      0|    52|
|Birth     |MAL-ED     |BRAZIL       |0      |       0|      1|    52|
|Birth     |MAL-ED     |BRAZIL       |0      |       1|      0|    52|
|Birth     |MAL-ED     |TANZANIA     |1      |       0|      0|   107|
|Birth     |MAL-ED     |TANZANIA     |1      |       1|      0|   107|
|Birth     |MAL-ED     |TANZANIA     |0      |       0|    107|   107|
|Birth     |MAL-ED     |TANZANIA     |0      |       1|      0|   107|
|Birth     |MAL-ED     |SOUTH AFRICA |1      |       0|      2|   103|
|Birth     |MAL-ED     |SOUTH AFRICA |1      |       1|      0|   103|
|Birth     |MAL-ED     |SOUTH AFRICA |0      |       0|    101|   103|
|Birth     |MAL-ED     |SOUTH AFRICA |0      |       1|      0|   103|
|Birth     |NIH-Birth  |BANGLADESH   |1      |       0|    192|   575|
|Birth     |NIH-Birth  |BANGLADESH   |1      |       1|     11|   575|
|Birth     |NIH-Birth  |BANGLADESH   |0      |       0|    345|   575|
|Birth     |NIH-Birth  |BANGLADESH   |0      |       1|     27|   575|
|Birth     |NIH-Crypto |BANGLADESH   |1      |       0|    566|   700|
|Birth     |NIH-Crypto |BANGLADESH   |1      |       1|     39|   700|
|Birth     |NIH-Crypto |BANGLADESH   |0      |       0|     88|   700|
|Birth     |NIH-Crypto |BANGLADESH   |0      |       1|      7|   700|
|Birth     |PROVIDE    |BANGLADESH   |1      |       0|     50|    53|
|Birth     |PROVIDE    |BANGLADESH   |1      |       1|      3|    53|
|Birth     |PROVIDE    |BANGLADESH   |0      |       0|      0|    53|
|Birth     |PROVIDE    |BANGLADESH   |0      |       1|      0|    53|
|6 months  |COHORTS    |INDIA        |1      |       0|   2299|  5427|
|6 months  |COHORTS    |INDIA        |1      |       1|     72|  5427|
|6 months  |COHORTS    |INDIA        |0      |       0|   2963|  5427|
|6 months  |COHORTS    |INDIA        |0      |       1|     93|  5427|
|6 months  |COHORTS    |GUATEMALA    |1      |       0|     75|   693|
|6 months  |COHORTS    |GUATEMALA    |1      |       1|      0|   693|
|6 months  |COHORTS    |GUATEMALA    |0      |       0|    615|   693|
|6 months  |COHORTS    |GUATEMALA    |0      |       1|      3|   693|
|6 months  |COHORTS    |PHILIPPINES  |1      |       0|    185|  1147|
|6 months  |COHORTS    |PHILIPPINES  |1      |       1|      2|  1147|
|6 months  |COHORTS    |PHILIPPINES  |0      |       0|    948|  1147|
|6 months  |COHORTS    |PHILIPPINES  |0      |       1|     12|  1147|
|6 months  |CONTENT    |PERU         |1      |       0|    195|   215|
|6 months  |CONTENT    |PERU         |1      |       1|      0|   215|
|6 months  |CONTENT    |PERU         |0      |       0|     20|   215|
|6 months  |CONTENT    |PERU         |0      |       1|      0|   215|
|6 months  |JiVitA-3   |BANGLADESH   |1      |       0|  11640| 16773|
|6 months  |JiVitA-3   |BANGLADESH   |1      |       1|    167| 16773|
|6 months  |JiVitA-3   |BANGLADESH   |0      |       0|   4903| 16773|
|6 months  |JiVitA-3   |BANGLADESH   |0      |       1|     63| 16773|
|6 months  |JiVitA-4   |BANGLADESH   |1      |       0|   3737|  4829|
|6 months  |JiVitA-4   |BANGLADESH   |1      |       1|     26|  4829|
|6 months  |JiVitA-4   |BANGLADESH   |0      |       0|   1059|  4829|
|6 months  |JiVitA-4   |BANGLADESH   |0      |       1|      7|  4829|
|6 months  |LCNI-5     |MALAWI       |1      |       0|      2|   823|
|6 months  |LCNI-5     |MALAWI       |1      |       1|      0|   823|
|6 months  |LCNI-5     |MALAWI       |0      |       0|    821|   823|
|6 months  |LCNI-5     |MALAWI       |0      |       1|      0|   823|
|6 months  |MAL-ED     |INDIA        |1      |       0|    116|   226|
|6 months  |MAL-ED     |INDIA        |1      |       1|      1|   226|
|6 months  |MAL-ED     |INDIA        |0      |       0|    105|   226|
|6 months  |MAL-ED     |INDIA        |0      |       1|      4|   226|
|6 months  |MAL-ED     |BANGLADESH   |1      |       0|    187|   224|
|6 months  |MAL-ED     |BANGLADESH   |1      |       1|      1|   224|
|6 months  |MAL-ED     |BANGLADESH   |0      |       0|     36|   224|
|6 months  |MAL-ED     |BANGLADESH   |0      |       1|      0|   224|
|6 months  |MAL-ED     |PERU         |1      |       0|     57|   241|
|6 months  |MAL-ED     |PERU         |1      |       1|      0|   241|
|6 months  |MAL-ED     |PERU         |0      |       0|    184|   241|
|6 months  |MAL-ED     |PERU         |0      |       1|      0|   241|
|6 months  |MAL-ED     |NEPAL        |1      |       0|    234|   234|
|6 months  |MAL-ED     |NEPAL        |1      |       1|      0|   234|
|6 months  |MAL-ED     |NEPAL        |0      |       0|      0|   234|
|6 months  |MAL-ED     |NEPAL        |0      |       1|      0|   234|
|6 months  |MAL-ED     |BRAZIL       |1      |       0|    182|   187|
|6 months  |MAL-ED     |BRAZIL       |1      |       1|      0|   187|
|6 months  |MAL-ED     |BRAZIL       |0      |       0|      5|   187|
|6 months  |MAL-ED     |BRAZIL       |0      |       1|      0|   187|
|6 months  |MAL-ED     |TANZANIA     |1      |       0|      0|   236|
|6 months  |MAL-ED     |TANZANIA     |1      |       1|      0|   236|
|6 months  |MAL-ED     |TANZANIA     |0      |       0|    236|   236|
|6 months  |MAL-ED     |TANZANIA     |0      |       1|      0|   236|
|6 months  |MAL-ED     |SOUTH AFRICA |1      |       0|      6|   224|
|6 months  |MAL-ED     |SOUTH AFRICA |1      |       1|      0|   224|
|6 months  |MAL-ED     |SOUTH AFRICA |0      |       0|    215|   224|
|6 months  |MAL-ED     |SOUTH AFRICA |0      |       1|      3|   224|
|6 months  |NIH-Birth  |BANGLADESH   |1      |       0|    190|   537|
|6 months  |NIH-Birth  |BANGLADESH   |1      |       1|      2|   537|
|6 months  |NIH-Birth  |BANGLADESH   |0      |       0|    341|   537|
|6 months  |NIH-Birth  |BANGLADESH   |0      |       1|      4|   537|
|6 months  |NIH-Crypto |BANGLADESH   |1      |       0|    608|   708|
|6 months  |NIH-Crypto |BANGLADESH   |1      |       1|      0|   708|
|6 months  |NIH-Crypto |BANGLADESH   |0      |       0|    100|   708|
|6 months  |NIH-Crypto |BANGLADESH   |0      |       1|      0|   708|
|6 months  |PROVIDE    |BANGLADESH   |1      |       0|     49|    49|
|6 months  |PROVIDE    |BANGLADESH   |1      |       1|      0|    49|
|6 months  |PROVIDE    |BANGLADESH   |0      |       0|      0|    49|
|6 months  |PROVIDE    |BANGLADESH   |0      |       1|      0|    49|
|24 months |COHORTS    |INDIA        |1      |       0|   1823|  4159|
|24 months |COHORTS    |INDIA        |1      |       1|     20|  4159|
|24 months |COHORTS    |INDIA        |0      |       0|   2290|  4159|
|24 months |COHORTS    |INDIA        |0      |       1|     26|  4159|
|24 months |COHORTS    |GUATEMALA    |1      |       0|     81|   791|
|24 months |COHORTS    |GUATEMALA    |1      |       1|      1|   791|
|24 months |COHORTS    |GUATEMALA    |0      |       0|    706|   791|
|24 months |COHORTS    |GUATEMALA    |0      |       1|      3|   791|
|24 months |COHORTS    |PHILIPPINES  |1      |       0|    169|  1045|
|24 months |COHORTS    |PHILIPPINES  |1      |       1|      0|  1045|
|24 months |COHORTS    |PHILIPPINES  |0      |       0|    864|  1045|
|24 months |COHORTS    |PHILIPPINES  |0      |       1|     12|  1045|
|24 months |CONTENT    |PERU         |1      |       0|    151|   164|
|24 months |CONTENT    |PERU         |1      |       1|      0|   164|
|24 months |CONTENT    |PERU         |0      |       0|     13|   164|
|24 months |CONTENT    |PERU         |0      |       1|      0|   164|
|24 months |JiVitA-3   |BANGLADESH   |1      |       0|   5756|  8598|
|24 months |JiVitA-3   |BANGLADESH   |1      |       1|    246|  8598|
|24 months |JiVitA-3   |BANGLADESH   |0      |       0|   2507|  8598|
|24 months |JiVitA-3   |BANGLADESH   |0      |       1|     89|  8598|
|24 months |JiVitA-4   |BANGLADESH   |1      |       0|   3594|  4731|
|24 months |JiVitA-4   |BANGLADESH   |1      |       1|     95|  4731|
|24 months |JiVitA-4   |BANGLADESH   |0      |       0|   1008|  4731|
|24 months |JiVitA-4   |BANGLADESH   |0      |       1|     34|  4731|
|24 months |LCNI-5     |MALAWI       |1      |       0|      2|   554|
|24 months |LCNI-5     |MALAWI       |1      |       1|      0|   554|
|24 months |LCNI-5     |MALAWI       |0      |       0|    551|   554|
|24 months |LCNI-5     |MALAWI       |0      |       1|      1|   554|
|24 months |MAL-ED     |INDIA        |1      |       0|    111|   218|
|24 months |MAL-ED     |INDIA        |1      |       1|      1|   218|
|24 months |MAL-ED     |INDIA        |0      |       0|    106|   218|
|24 months |MAL-ED     |INDIA        |0      |       1|      0|   218|
|24 months |MAL-ED     |BANGLADESH   |1      |       0|    162|   195|
|24 months |MAL-ED     |BANGLADESH   |1      |       1|      0|   195|
|24 months |MAL-ED     |BANGLADESH   |0      |       0|     33|   195|
|24 months |MAL-ED     |BANGLADESH   |0      |       1|      0|   195|
|24 months |MAL-ED     |PERU         |1      |       0|     41|   174|
|24 months |MAL-ED     |PERU         |1      |       1|      0|   174|
|24 months |MAL-ED     |PERU         |0      |       0|    132|   174|
|24 months |MAL-ED     |PERU         |0      |       1|      1|   174|
|24 months |MAL-ED     |NEPAL        |1      |       0|    226|   226|
|24 months |MAL-ED     |NEPAL        |1      |       1|      0|   226|
|24 months |MAL-ED     |NEPAL        |0      |       0|      0|   226|
|24 months |MAL-ED     |NEPAL        |0      |       1|      0|   226|
|24 months |MAL-ED     |BRAZIL       |1      |       0|    142|   148|
|24 months |MAL-ED     |BRAZIL       |1      |       1|      1|   148|
|24 months |MAL-ED     |BRAZIL       |0      |       0|      5|   148|
|24 months |MAL-ED     |BRAZIL       |0      |       1|      0|   148|
|24 months |MAL-ED     |TANZANIA     |1      |       0|      0|   204|
|24 months |MAL-ED     |TANZANIA     |1      |       1|      0|   204|
|24 months |MAL-ED     |TANZANIA     |0      |       0|    204|   204|
|24 months |MAL-ED     |TANZANIA     |0      |       1|      0|   204|
|24 months |MAL-ED     |SOUTH AFRICA |1      |       0|      5|   210|
|24 months |MAL-ED     |SOUTH AFRICA |1      |       1|      0|   210|
|24 months |MAL-ED     |SOUTH AFRICA |0      |       0|    205|   210|
|24 months |MAL-ED     |SOUTH AFRICA |0      |       1|      0|   210|
|24 months |NIH-Birth  |BANGLADESH   |1      |       0|    149|   428|
|24 months |NIH-Birth  |BANGLADESH   |1      |       1|      3|   428|
|24 months |NIH-Birth  |BANGLADESH   |0      |       0|    269|   428|
|24 months |NIH-Birth  |BANGLADESH   |0      |       1|      7|   428|
|24 months |NIH-Crypto |BANGLADESH   |1      |       0|    433|   508|
|24 months |NIH-Crypto |BANGLADESH   |1      |       1|      3|   508|
|24 months |NIH-Crypto |BANGLADESH   |0      |       0|     71|   508|
|24 months |NIH-Crypto |BANGLADESH   |0      |       1|      1|   508|
|24 months |PROVIDE    |BANGLADESH   |1      |       0|     46|    46|
|24 months |PROVIDE    |BANGLADESH   |1      |       1|      0|    46|
|24 months |PROVIDE    |BANGLADESH   |0      |       0|      0|    46|
|24 months |PROVIDE    |BANGLADESH   |0      |       1|      0|    46|


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
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
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
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

* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


