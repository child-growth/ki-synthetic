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

**Intervention Variable:** meducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |meducyrs | sstunted| n_cell|     n|
|:---------|:--------------|:------------|:--------|--------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |Low      |        0|     28|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |Low      |        1|      2|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |Medium   |        0|     23|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |Medium   |        1|      1|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |High     |        0|     37|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |High     |        1|      1|    92|
|Birth     |COHORTS        |INDIA        |Low      |        0|   1436|  5978|
|Birth     |COHORTS        |INDIA        |Low      |        1|     33|  5978|
|Birth     |COHORTS        |INDIA        |Medium   |        0|   3255|  5978|
|Birth     |COHORTS        |INDIA        |Medium   |        1|    109|  5978|
|Birth     |COHORTS        |INDIA        |High     |        0|   1102|  5978|
|Birth     |COHORTS        |INDIA        |High     |        1|     43|  5978|
|Birth     |COHORTS        |GUATEMALA    |Low      |        0|    398|   845|
|Birth     |COHORTS        |GUATEMALA    |Low      |        1|      7|   845|
|Birth     |COHORTS        |GUATEMALA    |Medium   |        0|    275|   845|
|Birth     |COHORTS        |GUATEMALA    |Medium   |        1|      2|   845|
|Birth     |COHORTS        |GUATEMALA    |High     |        0|    161|   845|
|Birth     |COHORTS        |GUATEMALA    |High     |        1|      2|   845|
|Birth     |COHORTS        |PHILIPPINES  |Low      |        0|   1104|  3050|
|Birth     |COHORTS        |PHILIPPINES  |Low      |        1|     22|  3050|
|Birth     |COHORTS        |PHILIPPINES  |Medium   |        0|    551|  3050|
|Birth     |COHORTS        |PHILIPPINES  |Medium   |        1|      5|  3050|
|Birth     |COHORTS        |PHILIPPINES  |High     |        0|   1349|  3050|
|Birth     |COHORTS        |PHILIPPINES  |High     |        1|     19|  3050|
|Birth     |EE             |PAKISTAN     |Low      |        0|    161|   238|
|Birth     |EE             |PAKISTAN     |Low      |        1|     43|   238|
|Birth     |EE             |PAKISTAN     |Medium   |        0|     17|   238|
|Birth     |EE             |PAKISTAN     |Medium   |        1|      4|   238|
|Birth     |EE             |PAKISTAN     |High     |        0|     12|   238|
|Birth     |EE             |PAKISTAN     |High     |        1|      1|   238|
|Birth     |GMS-Nepal      |NEPAL        |Low      |        0|    467|   694|
|Birth     |GMS-Nepal      |NEPAL        |Low      |        1|     14|   694|
|Birth     |GMS-Nepal      |NEPAL        |Medium   |        0|    120|   694|
|Birth     |GMS-Nepal      |NEPAL        |Medium   |        1|     11|   694|
|Birth     |GMS-Nepal      |NEPAL        |High     |        0|     76|   694|
|Birth     |GMS-Nepal      |NEPAL        |High     |        1|      6|   694|
|Birth     |JiVitA-3       |BANGLADESH   |Low      |        0|   7344| 22439|
|Birth     |JiVitA-3       |BANGLADESH   |Low      |        1|    932| 22439|
|Birth     |JiVitA-3       |BANGLADESH   |Medium   |        0|   6048| 22439|
|Birth     |JiVitA-3       |BANGLADESH   |Medium   |        1|    750| 22439|
|Birth     |JiVitA-3       |BANGLADESH   |High     |        0|   6599| 22439|
|Birth     |JiVitA-3       |BANGLADESH   |High     |        1|    766| 22439|
|Birth     |JiVitA-4       |BANGLADESH   |Low      |        0|    861|  2818|
|Birth     |JiVitA-4       |BANGLADESH   |Low      |        1|     83|  2818|
|Birth     |JiVitA-4       |BANGLADESH   |Medium   |        0|    804|  2818|
|Birth     |JiVitA-4       |BANGLADESH   |Medium   |        1|     75|  2818|
|Birth     |JiVitA-4       |BANGLADESH   |High     |        0|    921|  2818|
|Birth     |JiVitA-4       |BANGLADESH   |High     |        1|     74|  2818|
|Birth     |MAL-ED         |INDIA        |Low      |        0|     14|    40|
|Birth     |MAL-ED         |INDIA        |Low      |        1|      1|    40|
|Birth     |MAL-ED         |INDIA        |Medium   |        0|      8|    40|
|Birth     |MAL-ED         |INDIA        |Medium   |        1|      1|    40|
|Birth     |MAL-ED         |INDIA        |High     |        0|     16|    40|
|Birth     |MAL-ED         |INDIA        |High     |        1|      0|    40|
|Birth     |MAL-ED         |BANGLADESH   |Low      |        0|     61|   223|
|Birth     |MAL-ED         |BANGLADESH   |Low      |        1|      4|   223|
|Birth     |MAL-ED         |BANGLADESH   |Medium   |        0|     48|   223|
|Birth     |MAL-ED         |BANGLADESH   |Medium   |        1|      3|   223|
|Birth     |MAL-ED         |BANGLADESH   |High     |        0|    105|   223|
|Birth     |MAL-ED         |BANGLADESH   |High     |        1|      2|   223|
|Birth     |MAL-ED         |PERU         |Low      |        0|     90|   232|
|Birth     |MAL-ED         |PERU         |Low      |        1|      2|   232|
|Birth     |MAL-ED         |PERU         |Medium   |        0|     72|   232|
|Birth     |MAL-ED         |PERU         |Medium   |        1|      2|   232|
|Birth     |MAL-ED         |PERU         |High     |        0|     66|   232|
|Birth     |MAL-ED         |PERU         |High     |        1|      0|   232|
|Birth     |MAL-ED         |NEPAL        |Low      |        0|     12|    25|
|Birth     |MAL-ED         |NEPAL        |Low      |        1|      1|    25|
|Birth     |MAL-ED         |NEPAL        |Medium   |        0|      4|    25|
|Birth     |MAL-ED         |NEPAL        |Medium   |        1|      0|    25|
|Birth     |MAL-ED         |NEPAL        |High     |        0|      8|    25|
|Birth     |MAL-ED         |NEPAL        |High     |        1|      0|    25|
|Birth     |MAL-ED         |BRAZIL       |Low      |        0|     29|    65|
|Birth     |MAL-ED         |BRAZIL       |Low      |        1|      1|    65|
|Birth     |MAL-ED         |BRAZIL       |Medium   |        0|     26|    65|
|Birth     |MAL-ED         |BRAZIL       |Medium   |        1|      2|    65|
|Birth     |MAL-ED         |BRAZIL       |High     |        0|      7|    65|
|Birth     |MAL-ED         |BRAZIL       |High     |        1|      0|    65|
|Birth     |MAL-ED         |TANZANIA     |Low      |        0|     29|   100|
|Birth     |MAL-ED         |TANZANIA     |Low      |        1|      2|   100|
|Birth     |MAL-ED         |TANZANIA     |Medium   |        0|     33|   100|
|Birth     |MAL-ED         |TANZANIA     |Medium   |        1|      3|   100|
|Birth     |MAL-ED         |TANZANIA     |High     |        0|     29|   100|
|Birth     |MAL-ED         |TANZANIA     |High     |        1|      4|   100|
|Birth     |MAL-ED         |SOUTH AFRICA |Low      |        0|     64|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |Low      |        1|      1|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |Medium   |        0|     17|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |Medium   |        1|      0|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |High     |        0|     40|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |High     |        1|      1|   123|
|Birth     |NIH-Birth      |BANGLADESH   |Low      |        0|    251|   608|
|Birth     |NIH-Birth      |BANGLADESH   |Low      |        1|      9|   608|
|Birth     |NIH-Birth      |BANGLADESH   |Medium   |        0|    186|   608|
|Birth     |NIH-Birth      |BANGLADESH   |Medium   |        1|      3|   608|
|Birth     |NIH-Birth      |BANGLADESH   |High     |        0|    152|   608|
|Birth     |NIH-Birth      |BANGLADESH   |High     |        1|      7|   608|
|Birth     |NIH-Crypto     |BANGLADESH   |Low      |        0|    229|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |Low      |        1|      2|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |Medium   |        0|    161|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |Medium   |        1|      2|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |High     |        0|    332|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |High     |        1|      6|   732|
|Birth     |PROBIT         |BELARUS      |Low      |        0|   4442| 13893|
|Birth     |PROBIT         |BELARUS      |Low      |        1|      2| 13893|
|Birth     |PROBIT         |BELARUS      |Medium   |        0|   7107| 13893|
|Birth     |PROBIT         |BELARUS      |Medium   |        1|      3| 13893|
|Birth     |PROBIT         |BELARUS      |High     |        0|   2339| 13893|
|Birth     |PROBIT         |BELARUS      |High     |        1|      0| 13893|
|Birth     |PROVIDE        |BANGLADESH   |Low      |        0|    160|   539|
|Birth     |PROVIDE        |BANGLADESH   |Low      |        1|      1|   539|
|Birth     |PROVIDE        |BANGLADESH   |Medium   |        0|    199|   539|
|Birth     |PROVIDE        |BANGLADESH   |Medium   |        1|      2|   539|
|Birth     |PROVIDE        |BANGLADESH   |High     |        0|    176|   539|
|Birth     |PROVIDE        |BANGLADESH   |High     |        1|      1|   539|
|Birth     |SAS-CompFeed   |INDIA        |Low      |        0|    513|  1250|
|Birth     |SAS-CompFeed   |INDIA        |Low      |        1|     40|  1250|
|Birth     |SAS-CompFeed   |INDIA        |Medium   |        0|    383|  1250|
|Birth     |SAS-CompFeed   |INDIA        |Medium   |        1|     30|  1250|
|Birth     |SAS-CompFeed   |INDIA        |High     |        0|    263|  1250|
|Birth     |SAS-CompFeed   |INDIA        |High     |        1|     21|  1250|
|Birth     |Vellore Crypto |INDIA        |Low      |        0|    134|   388|
|Birth     |Vellore Crypto |INDIA        |Low      |        1|      5|   388|
|Birth     |Vellore Crypto |INDIA        |Medium   |        0|    141|   388|
|Birth     |Vellore Crypto |INDIA        |Medium   |        1|      6|   388|
|Birth     |Vellore Crypto |INDIA        |High     |        0|     97|   388|
|Birth     |Vellore Crypto |INDIA        |High     |        1|      5|   388|
|Birth     |ZVITAMBO       |ZIMBABWE     |Low      |        0|   2435| 13866|
|Birth     |ZVITAMBO       |ZIMBABWE     |Low      |        1|     86| 13866|
|Birth     |ZVITAMBO       |ZIMBABWE     |Medium   |        0|   3428| 13866|
|Birth     |ZVITAMBO       |ZIMBABWE     |Medium   |        1|    125| 13866|
|Birth     |ZVITAMBO       |ZIMBABWE     |High     |        0|   7561| 13866|
|Birth     |ZVITAMBO       |ZIMBABWE     |High     |        1|    231| 13866|
|6 months  |CMC-V-BCS-2002 |INDIA        |Low      |        0|     99|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |Low      |        1|     10|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |Medium   |        0|     91|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |Medium   |        1|     10|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |High     |        0|    137|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |High     |        1|     22|   369|
|6 months  |COHORTS        |INDIA        |Low      |        0|   1467|  6178|
|6 months  |COHORTS        |INDIA        |Low      |        1|     72|  6178|
|6 months  |COHORTS        |INDIA        |Medium   |        0|   3298|  6178|
|6 months  |COHORTS        |INDIA        |Medium   |        1|    162|  6178|
|6 months  |COHORTS        |INDIA        |High     |        0|   1137|  6178|
|6 months  |COHORTS        |INDIA        |High     |        1|     42|  6178|
|6 months  |COHORTS        |GUATEMALA    |Low      |        0|    385|   955|
|6 months  |COHORTS        |GUATEMALA    |Low      |        1|     69|   955|
|6 months  |COHORTS        |GUATEMALA    |Medium   |        0|    292|   955|
|6 months  |COHORTS        |GUATEMALA    |Medium   |        1|     28|   955|
|6 months  |COHORTS        |GUATEMALA    |High     |        0|    154|   955|
|6 months  |COHORTS        |GUATEMALA    |High     |        1|     27|   955|
|6 months  |COHORTS        |PHILIPPINES  |Low      |        0|    955|  2708|
|6 months  |COHORTS        |PHILIPPINES  |Low      |        1|     70|  2708|
|6 months  |COHORTS        |PHILIPPINES  |Medium   |        0|    468|  2708|
|6 months  |COHORTS        |PHILIPPINES  |Medium   |        1|     24|  2708|
|6 months  |COHORTS        |PHILIPPINES  |High     |        0|   1153|  2708|
|6 months  |COHORTS        |PHILIPPINES  |High     |        1|     38|  2708|
|6 months  |EE             |PAKISTAN     |Low      |        0|    249|   369|
|6 months  |EE             |PAKISTAN     |Low      |        1|     65|   369|
|6 months  |EE             |PAKISTAN     |Medium   |        0|     22|   369|
|6 months  |EE             |PAKISTAN     |Medium   |        1|     12|   369|
|6 months  |EE             |PAKISTAN     |High     |        0|     17|   369|
|6 months  |EE             |PAKISTAN     |High     |        1|      4|   369|
|6 months  |GMS-Nepal      |NEPAL        |Low      |        0|    377|   564|
|6 months  |GMS-Nepal      |NEPAL        |Low      |        1|     16|   564|
|6 months  |GMS-Nepal      |NEPAL        |Medium   |        0|    103|   564|
|6 months  |GMS-Nepal      |NEPAL        |Medium   |        1|      4|   564|
|6 months  |GMS-Nepal      |NEPAL        |High     |        0|     63|   564|
|6 months  |GMS-Nepal      |NEPAL        |High     |        1|      1|   564|
|6 months  |Guatemala BSC  |GUATEMALA    |Low      |        0|     91|   288|
|6 months  |Guatemala BSC  |GUATEMALA    |Low      |        1|     11|   288|
|6 months  |Guatemala BSC  |GUATEMALA    |Medium   |        0|     76|   288|
|6 months  |Guatemala BSC  |GUATEMALA    |Medium   |        1|      5|   288|
|6 months  |Guatemala BSC  |GUATEMALA    |High     |        0|     95|   288|
|6 months  |Guatemala BSC  |GUATEMALA    |High     |        1|     10|   288|
|6 months  |JiVitA-3       |BANGLADESH   |Low      |        0|   5495| 16802|
|6 months  |JiVitA-3       |BANGLADESH   |Low      |        1|    369| 16802|
|6 months  |JiVitA-3       |BANGLADESH   |Medium   |        0|   4842| 16802|
|6 months  |JiVitA-3       |BANGLADESH   |Medium   |        1|    315| 16802|
|6 months  |JiVitA-3       |BANGLADESH   |High     |        0|   5446| 16802|
|6 months  |JiVitA-3       |BANGLADESH   |High     |        1|    335| 16802|
|6 months  |JiVitA-4       |BANGLADESH   |Low      |        0|   1502|  4822|
|6 months  |JiVitA-4       |BANGLADESH   |Low      |        1|     92|  4822|
|6 months  |JiVitA-4       |BANGLADESH   |Medium   |        0|   1412|  4822|
|6 months  |JiVitA-4       |BANGLADESH   |Medium   |        1|     82|  4822|
|6 months  |JiVitA-4       |BANGLADESH   |High     |        0|   1639|  4822|
|6 months  |JiVitA-4       |BANGLADESH   |High     |        1|     95|  4822|
|6 months  |LCNI-5         |MALAWI       |Low      |        0|    245|   824|
|6 months  |LCNI-5         |MALAWI       |Low      |        1|     23|   824|
|6 months  |LCNI-5         |MALAWI       |Medium   |        0|    247|   824|
|6 months  |LCNI-5         |MALAWI       |Medium   |        1|     20|   824|
|6 months  |LCNI-5         |MALAWI       |High     |        0|    262|   824|
|6 months  |LCNI-5         |MALAWI       |High     |        1|     27|   824|
|6 months  |MAL-ED         |INDIA        |Low      |        0|     79|   199|
|6 months  |MAL-ED         |INDIA        |Low      |        1|      2|   199|
|6 months  |MAL-ED         |INDIA        |Medium   |        0|     45|   199|
|6 months  |MAL-ED         |INDIA        |Medium   |        1|      1|   199|
|6 months  |MAL-ED         |INDIA        |High     |        0|     69|   199|
|6 months  |MAL-ED         |INDIA        |High     |        1|      3|   199|
|6 months  |MAL-ED         |BANGLADESH   |Low      |        0|     70|   233|
|6 months  |MAL-ED         |BANGLADESH   |Low      |        1|      3|   233|
|6 months  |MAL-ED         |BANGLADESH   |Medium   |        0|     51|   233|
|6 months  |MAL-ED         |BANGLADESH   |Medium   |        1|      2|   233|
|6 months  |MAL-ED         |BANGLADESH   |High     |        0|    105|   233|
|6 months  |MAL-ED         |BANGLADESH   |High     |        1|      2|   233|
|6 months  |MAL-ED         |PERU         |Low      |        0|    103|   272|
|6 months  |MAL-ED         |PERU         |Low      |        1|      5|   272|
|6 months  |MAL-ED         |PERU         |Medium   |        0|     80|   272|
|6 months  |MAL-ED         |PERU         |Medium   |        1|      4|   272|
|6 months  |MAL-ED         |PERU         |High     |        0|     79|   272|
|6 months  |MAL-ED         |PERU         |High     |        1|      1|   272|
|6 months  |MAL-ED         |NEPAL        |Low      |        0|    108|   226|
|6 months  |MAL-ED         |NEPAL        |Low      |        1|      0|   226|
|6 months  |MAL-ED         |NEPAL        |Medium   |        0|     55|   226|
|6 months  |MAL-ED         |NEPAL        |Medium   |        1|      1|   226|
|6 months  |MAL-ED         |NEPAL        |High     |        0|     62|   226|
|6 months  |MAL-ED         |NEPAL        |High     |        1|      0|   226|
|6 months  |MAL-ED         |BRAZIL       |Low      |        0|     88|   209|
|6 months  |MAL-ED         |BRAZIL       |Low      |        1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |Medium   |        0|     88|   209|
|6 months  |MAL-ED         |BRAZIL       |Medium   |        1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |High     |        0|     33|   209|
|6 months  |MAL-ED         |BRAZIL       |High     |        1|      0|   209|
|6 months  |MAL-ED         |TANZANIA     |Low      |        0|     57|   200|
|6 months  |MAL-ED         |TANZANIA     |Low      |        1|      3|   200|
|6 months  |MAL-ED         |TANZANIA     |Medium   |        0|     68|   200|
|6 months  |MAL-ED         |TANZANIA     |Medium   |        1|      7|   200|
|6 months  |MAL-ED         |TANZANIA     |High     |        0|     63|   200|
|6 months  |MAL-ED         |TANZANIA     |High     |        1|      2|   200|
|6 months  |MAL-ED         |SOUTH AFRICA |Low      |        0|    134|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |Low      |        1|      4|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |Medium   |        0|     35|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |Medium   |        1|      0|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |High     |        0|     79|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |High     |        1|      2|   254|
|6 months  |NIH-Birth      |BANGLADESH   |Low      |        0|    203|   537|
|6 months  |NIH-Birth      |BANGLADESH   |Low      |        1|     19|   537|
|6 months  |NIH-Birth      |BANGLADESH   |Medium   |        0|    165|   537|
|6 months  |NIH-Birth      |BANGLADESH   |Medium   |        1|     10|   537|
|6 months  |NIH-Birth      |BANGLADESH   |High     |        0|    134|   537|
|6 months  |NIH-Birth      |BANGLADESH   |High     |        1|      6|   537|
|6 months  |NIH-Crypto     |BANGLADESH   |Low      |        0|    221|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Low      |        1|      7|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Medium   |        0|    154|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Medium   |        1|      4|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |High     |        0|    317|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |High     |        1|     12|   715|
|6 months  |PROBIT         |BELARUS      |Low      |        0|   5064| 15760|
|6 months  |PROBIT         |BELARUS      |Low      |        1|     71| 15760|
|6 months  |PROBIT         |BELARUS      |Medium   |        0|   7845| 15760|
|6 months  |PROBIT         |BELARUS      |Medium   |        1|     80| 15760|
|6 months  |PROBIT         |BELARUS      |High     |        0|   2674| 15760|
|6 months  |PROBIT         |BELARUS      |High     |        1|     26| 15760|
|6 months  |PROVIDE        |BANGLADESH   |Low      |        0|    179|   604|
|6 months  |PROVIDE        |BANGLADESH   |Low      |        1|      3|   604|
|6 months  |PROVIDE        |BANGLADESH   |Medium   |        0|    222|   604|
|6 months  |PROVIDE        |BANGLADESH   |Medium   |        1|      8|   604|
|6 months  |PROVIDE        |BANGLADESH   |High     |        0|    189|   604|
|6 months  |PROVIDE        |BANGLADESH   |High     |        1|      3|   604|
|6 months  |SAS-CompFeed   |INDIA        |Low      |        0|    538|  1335|
|6 months  |SAS-CompFeed   |INDIA        |Low      |        1|     61|  1335|
|6 months  |SAS-CompFeed   |INDIA        |Medium   |        0|    405|  1335|
|6 months  |SAS-CompFeed   |INDIA        |Medium   |        1|     38|  1335|
|6 months  |SAS-CompFeed   |INDIA        |High     |        0|    264|  1335|
|6 months  |SAS-CompFeed   |INDIA        |High     |        1|     29|  1335|
|6 months  |SAS-FoodSuppl  |INDIA        |Low      |        0|    262|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |Low      |        1|     44|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |Medium   |        0|     32|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |Medium   |        1|      5|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |High     |        0|     32|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |High     |        1|      5|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |Low      |        0|     85|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |Low      |        1|      0|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |Medium   |        0|   1391|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |Medium   |        1|     17|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |High     |        0|    534|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |High     |        1|      2|  2029|
|6 months  |Vellore Crypto |INDIA        |Low      |        0|    134|   407|
|6 months  |Vellore Crypto |INDIA        |Low      |        1|     12|   407|
|6 months  |Vellore Crypto |INDIA        |Medium   |        0|    141|   407|
|6 months  |Vellore Crypto |INDIA        |Medium   |        1|      9|   407|
|6 months  |Vellore Crypto |INDIA        |High     |        0|    103|   407|
|6 months  |Vellore Crypto |INDIA        |High     |        1|      8|   407|
|6 months  |ZVITAMBO       |ZIMBABWE     |Low      |        0|   1501|  8666|
|6 months  |ZVITAMBO       |ZIMBABWE     |Low      |        1|     59|  8666|
|6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |        0|   2113|  8666|
|6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |        1|    104|  8666|
|6 months  |ZVITAMBO       |ZIMBABWE     |High     |        0|   4701|  8666|
|6 months  |ZVITAMBO       |ZIMBABWE     |High     |        1|    188|  8666|
|24 months |CMC-V-BCS-2002 |INDIA        |Low      |        0|     75|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |Low      |        1|     35|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |Medium   |        0|     71|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |Medium   |        1|     29|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |High     |        0|    100|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |High     |        1|     61|   371|
|24 months |COHORTS        |INDIA        |Low      |        0|    881|  4790|
|24 months |COHORTS        |INDIA        |Low      |        1|    304|  4790|
|24 months |COHORTS        |INDIA        |Medium   |        0|   2100|  4790|
|24 months |COHORTS        |INDIA        |Medium   |        1|    600|  4790|
|24 months |COHORTS        |INDIA        |High     |        0|    725|  4790|
|24 months |COHORTS        |INDIA        |High     |        1|    180|  4790|
|24 months |COHORTS        |GUATEMALA    |Low      |        0|    238|  1062|
|24 months |COHORTS        |GUATEMALA    |Low      |        1|    259|  1062|
|24 months |COHORTS        |GUATEMALA    |Medium   |        0|    195|  1062|
|24 months |COHORTS        |GUATEMALA    |Medium   |        1|    154|  1062|
|24 months |COHORTS        |GUATEMALA    |High     |        0|    110|  1062|
|24 months |COHORTS        |GUATEMALA    |High     |        1|    106|  1062|
|24 months |COHORTS        |PHILIPPINES  |Low      |        0|    574|  2445|
|24 months |COHORTS        |PHILIPPINES  |Low      |        1|    342|  2445|
|24 months |COHORTS        |PHILIPPINES  |Medium   |        0|    300|  2445|
|24 months |COHORTS        |PHILIPPINES  |Medium   |        1|    150|  2445|
|24 months |COHORTS        |PHILIPPINES  |High     |        0|    864|  2445|
|24 months |COHORTS        |PHILIPPINES  |High     |        1|    215|  2445|
|24 months |EE             |PAKISTAN     |Low      |        0|     89|   164|
|24 months |EE             |PAKISTAN     |Low      |        1|     49|   164|
|24 months |EE             |PAKISTAN     |Medium   |        0|     14|   164|
|24 months |EE             |PAKISTAN     |Medium   |        1|      7|   164|
|24 months |EE             |PAKISTAN     |High     |        0|      2|   164|
|24 months |EE             |PAKISTAN     |High     |        1|      3|   164|
|24 months |GMS-Nepal      |NEPAL        |Low      |        0|    308|   488|
|24 months |GMS-Nepal      |NEPAL        |Low      |        1|     36|   488|
|24 months |GMS-Nepal      |NEPAL        |Medium   |        0|     85|   488|
|24 months |GMS-Nepal      |NEPAL        |Medium   |        1|      9|   488|
|24 months |GMS-Nepal      |NEPAL        |High     |        0|     42|   488|
|24 months |GMS-Nepal      |NEPAL        |High     |        1|      8|   488|
|24 months |JiVitA-3       |BANGLADESH   |Low      |        0|   2521|  8628|
|24 months |JiVitA-3       |BANGLADESH   |Low      |        1|    525|  8628|
|24 months |JiVitA-3       |BANGLADESH   |Medium   |        0|   2252|  8628|
|24 months |JiVitA-3       |BANGLADESH   |Medium   |        1|    395|  8628|
|24 months |JiVitA-3       |BANGLADESH   |High     |        0|   2509|  8628|
|24 months |JiVitA-3       |BANGLADESH   |High     |        1|    426|  8628|
|24 months |JiVitA-4       |BANGLADESH   |Low      |        0|   1368|  4744|
|24 months |JiVitA-4       |BANGLADESH   |Low      |        1|    163|  4744|
|24 months |JiVitA-4       |BANGLADESH   |Medium   |        0|   1350|  4744|
|24 months |JiVitA-4       |BANGLADESH   |Medium   |        1|    133|  4744|
|24 months |JiVitA-4       |BANGLADESH   |High     |        0|   1576|  4744|
|24 months |JiVitA-4       |BANGLADESH   |High     |        1|    154|  4744|
|24 months |LCNI-5         |MALAWI       |Low      |        0|    151|   571|
|24 months |LCNI-5         |MALAWI       |Low      |        1|     28|   571|
|24 months |LCNI-5         |MALAWI       |Medium   |        0|    183|   571|
|24 months |LCNI-5         |MALAWI       |Medium   |        1|     15|   571|
|24 months |LCNI-5         |MALAWI       |High     |        0|    167|   571|
|24 months |LCNI-5         |MALAWI       |High     |        1|     27|   571|
|24 months |MAL-ED         |INDIA        |Low      |        0|     66|   192|
|24 months |MAL-ED         |INDIA        |Low      |        1|     14|   192|
|24 months |MAL-ED         |INDIA        |Medium   |        0|     39|   192|
|24 months |MAL-ED         |INDIA        |Medium   |        1|      4|   192|
|24 months |MAL-ED         |INDIA        |High     |        0|     60|   192|
|24 months |MAL-ED         |INDIA        |High     |        1|      9|   192|
|24 months |MAL-ED         |BANGLADESH   |Low      |        0|     50|   204|
|24 months |MAL-ED         |BANGLADESH   |Low      |        1|     10|   204|
|24 months |MAL-ED         |BANGLADESH   |Medium   |        0|     44|   204|
|24 months |MAL-ED         |BANGLADESH   |Medium   |        1|      5|   204|
|24 months |MAL-ED         |BANGLADESH   |High     |        0|     83|   204|
|24 months |MAL-ED         |BANGLADESH   |High     |        1|     12|   204|
|24 months |MAL-ED         |PERU         |Low      |        0|     68|   200|
|24 months |MAL-ED         |PERU         |Low      |        1|      5|   200|
|24 months |MAL-ED         |PERU         |Medium   |        0|     61|   200|
|24 months |MAL-ED         |PERU         |Medium   |        1|      5|   200|
|24 months |MAL-ED         |PERU         |High     |        0|     56|   200|
|24 months |MAL-ED         |PERU         |High     |        1|      5|   200|
|24 months |MAL-ED         |NEPAL        |Low      |        0|    106|   218|
|24 months |MAL-ED         |NEPAL        |Low      |        1|      1|   218|
|24 months |MAL-ED         |NEPAL        |Medium   |        0|     52|   218|
|24 months |MAL-ED         |NEPAL        |Medium   |        1|      1|   218|
|24 months |MAL-ED         |NEPAL        |High     |        0|     53|   218|
|24 months |MAL-ED         |NEPAL        |High     |        1|      5|   218|
|24 months |MAL-ED         |BRAZIL       |Low      |        0|     71|   169|
|24 months |MAL-ED         |BRAZIL       |Low      |        1|      1|   169|
|24 months |MAL-ED         |BRAZIL       |Medium   |        0|     70|   169|
|24 months |MAL-ED         |BRAZIL       |Medium   |        1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |High     |        0|     27|   169|
|24 months |MAL-ED         |BRAZIL       |High     |        1|      0|   169|
|24 months |MAL-ED         |TANZANIA     |Low      |        0|     38|   174|
|24 months |MAL-ED         |TANZANIA     |Low      |        1|     16|   174|
|24 months |MAL-ED         |TANZANIA     |Medium   |        0|     41|   174|
|24 months |MAL-ED         |TANZANIA     |Medium   |        1|     24|   174|
|24 months |MAL-ED         |TANZANIA     |High     |        0|     37|   174|
|24 months |MAL-ED         |TANZANIA     |High     |        1|     18|   174|
|24 months |MAL-ED         |SOUTH AFRICA |Low      |        0|    115|   238|
|24 months |MAL-ED         |SOUTH AFRICA |Low      |        1|     17|   238|
|24 months |MAL-ED         |SOUTH AFRICA |Medium   |        0|     29|   238|
|24 months |MAL-ED         |SOUTH AFRICA |Medium   |        1|      2|   238|
|24 months |MAL-ED         |SOUTH AFRICA |High     |        0|     67|   238|
|24 months |MAL-ED         |SOUTH AFRICA |High     |        1|      8|   238|
|24 months |NIH-Birth      |BANGLADESH   |Low      |        0|    140|   429|
|24 months |NIH-Birth      |BANGLADESH   |Low      |        1|     38|   429|
|24 months |NIH-Birth      |BANGLADESH   |Medium   |        0|    102|   429|
|24 months |NIH-Birth      |BANGLADESH   |Medium   |        1|     36|   429|
|24 months |NIH-Birth      |BANGLADESH   |High     |        0|     92|   429|
|24 months |NIH-Birth      |BANGLADESH   |High     |        1|     21|   429|
|24 months |NIH-Crypto     |BANGLADESH   |Low      |        0|    143|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Low      |        1|     13|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Medium   |        0|    104|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Medium   |        1|      7|   514|
|24 months |NIH-Crypto     |BANGLADESH   |High     |        0|    231|   514|
|24 months |NIH-Crypto     |BANGLADESH   |High     |        1|     16|   514|
|24 months |PROBIT         |BELARUS      |Low      |        0|   1246|  4035|
|24 months |PROBIT         |BELARUS      |Low      |        1|     22|  4035|
|24 months |PROBIT         |BELARUS      |Medium   |        0|   2067|  4035|
|24 months |PROBIT         |BELARUS      |Medium   |        1|     36|  4035|
|24 months |PROBIT         |BELARUS      |High     |        0|    657|  4035|
|24 months |PROBIT         |BELARUS      |High     |        1|      7|  4035|
|24 months |PROVIDE        |BANGLADESH   |Low      |        0|    159|   578|
|24 months |PROVIDE        |BANGLADESH   |Low      |        1|     16|   578|
|24 months |PROVIDE        |BANGLADESH   |Medium   |        0|    194|   578|
|24 months |PROVIDE        |BANGLADESH   |Medium   |        1|     22|   578|
|24 months |PROVIDE        |BANGLADESH   |High     |        0|    173|   578|
|24 months |PROVIDE        |BANGLADESH   |High     |        1|     14|   578|
|24 months |TanzaniaChild2 |TANZANIA     |Low      |        0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Low      |        1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Medium   |        0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Medium   |        1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |High     |        0|      3|     6|
|24 months |TanzaniaChild2 |TANZANIA     |High     |        1|      1|     6|
|24 months |Vellore Crypto |INDIA        |Low      |        0|    134|   409|
|24 months |Vellore Crypto |INDIA        |Low      |        1|     13|   409|
|24 months |Vellore Crypto |INDIA        |Medium   |        0|    135|   409|
|24 months |Vellore Crypto |INDIA        |Medium   |        1|     16|   409|
|24 months |Vellore Crypto |INDIA        |High     |        0|     99|   409|
|24 months |Vellore Crypto |INDIA        |High     |        1|     12|   409|
|24 months |ZVITAMBO       |ZIMBABWE     |Low      |        0|    272|  1639|
|24 months |ZVITAMBO       |ZIMBABWE     |Low      |        1|     23|  1639|
|24 months |ZVITAMBO       |ZIMBABWE     |Medium   |        0|    363|  1639|
|24 months |ZVITAMBO       |ZIMBABWE     |Medium   |        1|     39|  1639|
|24 months |ZVITAMBO       |ZIMBABWE     |High     |        0|    827|  1639|
|24 months |ZVITAMBO       |ZIMBABWE     |High     |        1|    115|  1639|


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
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
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
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
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
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
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
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
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


