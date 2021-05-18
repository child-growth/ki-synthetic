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

**Intervention Variable:** meducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |meducyrs | stunted| n_cell|     n|
|:---------|:--------------|:------------|:--------|-------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |Low      |       0|     24|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |Low      |       1|      6|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |Medium   |       0|     17|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |Medium   |       1|      7|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |High     |       0|     34|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |High     |       1|      4|    92|
|Birth     |COHORTS        |INDIA        |Low      |       0|   1319|  5978|
|Birth     |COHORTS        |INDIA        |Low      |       1|    150|  5978|
|Birth     |COHORTS        |INDIA        |Medium   |       0|   2931|  5978|
|Birth     |COHORTS        |INDIA        |Medium   |       1|    433|  5978|
|Birth     |COHORTS        |INDIA        |High     |       0|   1013|  5978|
|Birth     |COHORTS        |INDIA        |High     |       1|    132|  5978|
|Birth     |COHORTS        |GUATEMALA    |Low      |       0|    372|   845|
|Birth     |COHORTS        |GUATEMALA    |Low      |       1|     33|   845|
|Birth     |COHORTS        |GUATEMALA    |Medium   |       0|    268|   845|
|Birth     |COHORTS        |GUATEMALA    |Medium   |       1|      9|   845|
|Birth     |COHORTS        |GUATEMALA    |High     |       0|    156|   845|
|Birth     |COHORTS        |GUATEMALA    |High     |       1|      7|   845|
|Birth     |COHORTS        |PHILIPPINES  |Low      |       0|   1039|  3050|
|Birth     |COHORTS        |PHILIPPINES  |Low      |       1|     87|  3050|
|Birth     |COHORTS        |PHILIPPINES  |Medium   |       0|    525|  3050|
|Birth     |COHORTS        |PHILIPPINES  |Medium   |       1|     31|  3050|
|Birth     |COHORTS        |PHILIPPINES  |High     |       0|   1299|  3050|
|Birth     |COHORTS        |PHILIPPINES  |High     |       1|     69|  3050|
|Birth     |EE             |PAKISTAN     |Low      |       0|    119|   238|
|Birth     |EE             |PAKISTAN     |Low      |       1|     85|   238|
|Birth     |EE             |PAKISTAN     |Medium   |       0|     10|   238|
|Birth     |EE             |PAKISTAN     |Medium   |       1|     11|   238|
|Birth     |EE             |PAKISTAN     |High     |       0|      9|   238|
|Birth     |EE             |PAKISTAN     |High     |       1|      4|   238|
|Birth     |GMS-Nepal      |NEPAL        |Low      |       0|    399|   694|
|Birth     |GMS-Nepal      |NEPAL        |Low      |       1|     82|   694|
|Birth     |GMS-Nepal      |NEPAL        |Medium   |       0|    107|   694|
|Birth     |GMS-Nepal      |NEPAL        |Medium   |       1|     24|   694|
|Birth     |GMS-Nepal      |NEPAL        |High     |       0|     66|   694|
|Birth     |GMS-Nepal      |NEPAL        |High     |       1|     16|   694|
|Birth     |JiVitA-3       |BANGLADESH   |Low      |       0|   5514| 22439|
|Birth     |JiVitA-3       |BANGLADESH   |Low      |       1|   2762| 22439|
|Birth     |JiVitA-3       |BANGLADESH   |Medium   |       0|   4522| 22439|
|Birth     |JiVitA-3       |BANGLADESH   |Medium   |       1|   2276| 22439|
|Birth     |JiVitA-3       |BANGLADESH   |High     |       0|   5020| 22439|
|Birth     |JiVitA-3       |BANGLADESH   |High     |       1|   2345| 22439|
|Birth     |JiVitA-4       |BANGLADESH   |Low      |       0|    647|  2818|
|Birth     |JiVitA-4       |BANGLADESH   |Low      |       1|    297|  2818|
|Birth     |JiVitA-4       |BANGLADESH   |Medium   |       0|    607|  2818|
|Birth     |JiVitA-4       |BANGLADESH   |Medium   |       1|    272|  2818|
|Birth     |JiVitA-4       |BANGLADESH   |High     |       0|    709|  2818|
|Birth     |JiVitA-4       |BANGLADESH   |High     |       1|    286|  2818|
|Birth     |MAL-ED         |INDIA        |Low      |       0|     11|    40|
|Birth     |MAL-ED         |INDIA        |Low      |       1|      4|    40|
|Birth     |MAL-ED         |INDIA        |Medium   |       0|      7|    40|
|Birth     |MAL-ED         |INDIA        |Medium   |       1|      2|    40|
|Birth     |MAL-ED         |INDIA        |High     |       0|     13|    40|
|Birth     |MAL-ED         |INDIA        |High     |       1|      3|    40|
|Birth     |MAL-ED         |BANGLADESH   |Low      |       0|     49|   223|
|Birth     |MAL-ED         |BANGLADESH   |Low      |       1|     16|   223|
|Birth     |MAL-ED         |BANGLADESH   |Medium   |       0|     39|   223|
|Birth     |MAL-ED         |BANGLADESH   |Medium   |       1|     12|   223|
|Birth     |MAL-ED         |BANGLADESH   |High     |       0|     93|   223|
|Birth     |MAL-ED         |BANGLADESH   |High     |       1|     14|   223|
|Birth     |MAL-ED         |PERU         |Low      |       0|     82|   232|
|Birth     |MAL-ED         |PERU         |Low      |       1|     10|   232|
|Birth     |MAL-ED         |PERU         |Medium   |       0|     65|   232|
|Birth     |MAL-ED         |PERU         |Medium   |       1|      9|   232|
|Birth     |MAL-ED         |PERU         |High     |       0|     59|   232|
|Birth     |MAL-ED         |PERU         |High     |       1|      7|   232|
|Birth     |MAL-ED         |NEPAL        |Low      |       0|     12|    25|
|Birth     |MAL-ED         |NEPAL        |Low      |       1|      1|    25|
|Birth     |MAL-ED         |NEPAL        |Medium   |       0|      3|    25|
|Birth     |MAL-ED         |NEPAL        |Medium   |       1|      1|    25|
|Birth     |MAL-ED         |NEPAL        |High     |       0|      8|    25|
|Birth     |MAL-ED         |NEPAL        |High     |       1|      0|    25|
|Birth     |MAL-ED         |BRAZIL       |Low      |       0|     29|    65|
|Birth     |MAL-ED         |BRAZIL       |Low      |       1|      1|    65|
|Birth     |MAL-ED         |BRAZIL       |Medium   |       0|     21|    65|
|Birth     |MAL-ED         |BRAZIL       |Medium   |       1|      7|    65|
|Birth     |MAL-ED         |BRAZIL       |High     |       0|      6|    65|
|Birth     |MAL-ED         |BRAZIL       |High     |       1|      1|    65|
|Birth     |MAL-ED         |TANZANIA     |Low      |       0|     26|   100|
|Birth     |MAL-ED         |TANZANIA     |Low      |       1|      5|   100|
|Birth     |MAL-ED         |TANZANIA     |Medium   |       0|     27|   100|
|Birth     |MAL-ED         |TANZANIA     |Medium   |       1|      9|   100|
|Birth     |MAL-ED         |TANZANIA     |High     |       0|     28|   100|
|Birth     |MAL-ED         |TANZANIA     |High     |       1|      5|   100|
|Birth     |MAL-ED         |SOUTH AFRICA |Low      |       0|     61|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |Low      |       1|      4|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |Medium   |       0|     16|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |Medium   |       1|      1|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |High     |       0|     36|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |High     |       1|      5|   123|
|Birth     |NIH-Birth      |BANGLADESH   |Low      |       0|    218|   608|
|Birth     |NIH-Birth      |BANGLADESH   |Low      |       1|     42|   608|
|Birth     |NIH-Birth      |BANGLADESH   |Medium   |       0|    158|   608|
|Birth     |NIH-Birth      |BANGLADESH   |Medium   |       1|     31|   608|
|Birth     |NIH-Birth      |BANGLADESH   |High     |       0|    135|   608|
|Birth     |NIH-Birth      |BANGLADESH   |High     |       1|     24|   608|
|Birth     |NIH-Crypto     |BANGLADESH   |Low      |       0|    198|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |Low      |       1|     33|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |Medium   |       0|    137|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |Medium   |       1|     26|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |High     |       0|    296|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |High     |       1|     42|   732|
|Birth     |PROBIT         |BELARUS      |Low      |       0|   4435| 13893|
|Birth     |PROBIT         |BELARUS      |Low      |       1|      9| 13893|
|Birth     |PROBIT         |BELARUS      |Medium   |       0|   7090| 13893|
|Birth     |PROBIT         |BELARUS      |Medium   |       1|     20| 13893|
|Birth     |PROBIT         |BELARUS      |High     |       0|   2334| 13893|
|Birth     |PROBIT         |BELARUS      |High     |       1|      5| 13893|
|Birth     |PROVIDE        |BANGLADESH   |Low      |       0|    144|   539|
|Birth     |PROVIDE        |BANGLADESH   |Low      |       1|     17|   539|
|Birth     |PROVIDE        |BANGLADESH   |Medium   |       0|    187|   539|
|Birth     |PROVIDE        |BANGLADESH   |Medium   |       1|     14|   539|
|Birth     |PROVIDE        |BANGLADESH   |High     |       0|    160|   539|
|Birth     |PROVIDE        |BANGLADESH   |High     |       1|     17|   539|
|Birth     |SAS-CompFeed   |INDIA        |Low      |       0|    399|  1250|
|Birth     |SAS-CompFeed   |INDIA        |Low      |       1|    154|  1250|
|Birth     |SAS-CompFeed   |INDIA        |Medium   |       0|    301|  1250|
|Birth     |SAS-CompFeed   |INDIA        |Medium   |       1|    112|  1250|
|Birth     |SAS-CompFeed   |INDIA        |High     |       0|    201|  1250|
|Birth     |SAS-CompFeed   |INDIA        |High     |       1|     83|  1250|
|Birth     |Vellore Crypto |INDIA        |Low      |       0|    125|   388|
|Birth     |Vellore Crypto |INDIA        |Low      |       1|     14|   388|
|Birth     |Vellore Crypto |INDIA        |Medium   |       0|    127|   388|
|Birth     |Vellore Crypto |INDIA        |Medium   |       1|     20|   388|
|Birth     |Vellore Crypto |INDIA        |High     |       0|     91|   388|
|Birth     |Vellore Crypto |INDIA        |High     |       1|     11|   388|
|Birth     |ZVITAMBO       |ZIMBABWE     |Low      |       0|   2255| 13866|
|Birth     |ZVITAMBO       |ZIMBABWE     |Low      |       1|    266| 13866|
|Birth     |ZVITAMBO       |ZIMBABWE     |Medium   |       0|   3160| 13866|
|Birth     |ZVITAMBO       |ZIMBABWE     |Medium   |       1|    393| 13866|
|Birth     |ZVITAMBO       |ZIMBABWE     |High     |       0|   7019| 13866|
|Birth     |ZVITAMBO       |ZIMBABWE     |High     |       1|    773| 13866|
|6 months  |CMC-V-BCS-2002 |INDIA        |Low      |       0|     76|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |Low      |       1|     33|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |Medium   |       0|     73|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |Medium   |       1|     28|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |High     |       0|    109|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |High     |       1|     50|   369|
|6 months  |COHORTS        |INDIA        |Low      |       0|   1234|  6178|
|6 months  |COHORTS        |INDIA        |Low      |       1|    305|  6178|
|6 months  |COHORTS        |INDIA        |Medium   |       0|   2828|  6178|
|6 months  |COHORTS        |INDIA        |Medium   |       1|    632|  6178|
|6 months  |COHORTS        |INDIA        |High     |       0|    976|  6178|
|6 months  |COHORTS        |INDIA        |High     |       1|    203|  6178|
|6 months  |COHORTS        |GUATEMALA    |Low      |       0|    249|   955|
|6 months  |COHORTS        |GUATEMALA    |Low      |       1|    205|   955|
|6 months  |COHORTS        |GUATEMALA    |Medium   |       0|    205|   955|
|6 months  |COHORTS        |GUATEMALA    |Medium   |       1|    115|   955|
|6 months  |COHORTS        |GUATEMALA    |High     |       0|    109|   955|
|6 months  |COHORTS        |GUATEMALA    |High     |       1|     72|   955|
|6 months  |COHORTS        |PHILIPPINES  |Low      |       0|    767|  2708|
|6 months  |COHORTS        |PHILIPPINES  |Low      |       1|    258|  2708|
|6 months  |COHORTS        |PHILIPPINES  |Medium   |       0|    370|  2708|
|6 months  |COHORTS        |PHILIPPINES  |Medium   |       1|    122|  2708|
|6 months  |COHORTS        |PHILIPPINES  |High     |       0|    999|  2708|
|6 months  |COHORTS        |PHILIPPINES  |High     |       1|    192|  2708|
|6 months  |EE             |PAKISTAN     |Low      |       0|    162|   369|
|6 months  |EE             |PAKISTAN     |Low      |       1|    152|   369|
|6 months  |EE             |PAKISTAN     |Medium   |       0|     13|   369|
|6 months  |EE             |PAKISTAN     |Medium   |       1|     21|   369|
|6 months  |EE             |PAKISTAN     |High     |       0|     12|   369|
|6 months  |EE             |PAKISTAN     |High     |       1|      9|   369|
|6 months  |GMS-Nepal      |NEPAL        |Low      |       0|    310|   564|
|6 months  |GMS-Nepal      |NEPAL        |Low      |       1|     83|   564|
|6 months  |GMS-Nepal      |NEPAL        |Medium   |       0|     83|   564|
|6 months  |GMS-Nepal      |NEPAL        |Medium   |       1|     24|   564|
|6 months  |GMS-Nepal      |NEPAL        |High     |       0|     49|   564|
|6 months  |GMS-Nepal      |NEPAL        |High     |       1|     15|   564|
|6 months  |Guatemala BSC  |GUATEMALA    |Low      |       0|     75|   288|
|6 months  |Guatemala BSC  |GUATEMALA    |Low      |       1|     27|   288|
|6 months  |Guatemala BSC  |GUATEMALA    |Medium   |       0|     53|   288|
|6 months  |Guatemala BSC  |GUATEMALA    |Medium   |       1|     28|   288|
|6 months  |Guatemala BSC  |GUATEMALA    |High     |       0|     74|   288|
|6 months  |Guatemala BSC  |GUATEMALA    |High     |       1|     31|   288|
|6 months  |JiVitA-3       |BANGLADESH   |Low      |       0|   4303| 16802|
|6 months  |JiVitA-3       |BANGLADESH   |Low      |       1|   1561| 16802|
|6 months  |JiVitA-3       |BANGLADESH   |Medium   |       0|   3883| 16802|
|6 months  |JiVitA-3       |BANGLADESH   |Medium   |       1|   1274| 16802|
|6 months  |JiVitA-3       |BANGLADESH   |High     |       0|   4392| 16802|
|6 months  |JiVitA-3       |BANGLADESH   |High     |       1|   1389| 16802|
|6 months  |JiVitA-4       |BANGLADESH   |Low      |       0|   1202|  4822|
|6 months  |JiVitA-4       |BANGLADESH   |Low      |       1|    392|  4822|
|6 months  |JiVitA-4       |BANGLADESH   |Medium   |       0|   1083|  4822|
|6 months  |JiVitA-4       |BANGLADESH   |Medium   |       1|    411|  4822|
|6 months  |JiVitA-4       |BANGLADESH   |High     |       0|   1321|  4822|
|6 months  |JiVitA-4       |BANGLADESH   |High     |       1|    413|  4822|
|6 months  |LCNI-5         |MALAWI       |Low      |       0|    167|   824|
|6 months  |LCNI-5         |MALAWI       |Low      |       1|    101|   824|
|6 months  |LCNI-5         |MALAWI       |Medium   |       0|    173|   824|
|6 months  |LCNI-5         |MALAWI       |Medium   |       1|     94|   824|
|6 months  |LCNI-5         |MALAWI       |High     |       0|    179|   824|
|6 months  |LCNI-5         |MALAWI       |High     |       1|    110|   824|
|6 months  |MAL-ED         |INDIA        |Low      |       0|     64|   199|
|6 months  |MAL-ED         |INDIA        |Low      |       1|     17|   199|
|6 months  |MAL-ED         |INDIA        |Medium   |       0|     40|   199|
|6 months  |MAL-ED         |INDIA        |Medium   |       1|      6|   199|
|6 months  |MAL-ED         |INDIA        |High     |       0|     56|   199|
|6 months  |MAL-ED         |INDIA        |High     |       1|     16|   199|
|6 months  |MAL-ED         |BANGLADESH   |Low      |       0|     55|   233|
|6 months  |MAL-ED         |BANGLADESH   |Low      |       1|     18|   233|
|6 months  |MAL-ED         |BANGLADESH   |Medium   |       0|     44|   233|
|6 months  |MAL-ED         |BANGLADESH   |Medium   |       1|      9|   233|
|6 months  |MAL-ED         |BANGLADESH   |High     |       0|     92|   233|
|6 months  |MAL-ED         |BANGLADESH   |High     |       1|     15|   233|
|6 months  |MAL-ED         |PERU         |Low      |       0|     82|   272|
|6 months  |MAL-ED         |PERU         |Low      |       1|     26|   272|
|6 months  |MAL-ED         |PERU         |Medium   |       0|     64|   272|
|6 months  |MAL-ED         |PERU         |Medium   |       1|     20|   272|
|6 months  |MAL-ED         |PERU         |High     |       0|     66|   272|
|6 months  |MAL-ED         |PERU         |High     |       1|     14|   272|
|6 months  |MAL-ED         |NEPAL        |Low      |       0|    104|   226|
|6 months  |MAL-ED         |NEPAL        |Low      |       1|      4|   226|
|6 months  |MAL-ED         |NEPAL        |Medium   |       0|     53|   226|
|6 months  |MAL-ED         |NEPAL        |Medium   |       1|      3|   226|
|6 months  |MAL-ED         |NEPAL        |High     |       0|     57|   226|
|6 months  |MAL-ED         |NEPAL        |High     |       1|      5|   226|
|6 months  |MAL-ED         |BRAZIL       |Low      |       0|     85|   209|
|6 months  |MAL-ED         |BRAZIL       |Low      |       1|      3|   209|
|6 months  |MAL-ED         |BRAZIL       |Medium   |       0|     86|   209|
|6 months  |MAL-ED         |BRAZIL       |Medium   |       1|      2|   209|
|6 months  |MAL-ED         |BRAZIL       |High     |       0|     32|   209|
|6 months  |MAL-ED         |BRAZIL       |High     |       1|      1|   209|
|6 months  |MAL-ED         |TANZANIA     |Low      |       0|     47|   200|
|6 months  |MAL-ED         |TANZANIA     |Low      |       1|     13|   200|
|6 months  |MAL-ED         |TANZANIA     |Medium   |       0|     52|   200|
|6 months  |MAL-ED         |TANZANIA     |Medium   |       1|     23|   200|
|6 months  |MAL-ED         |TANZANIA     |High     |       0|     49|   200|
|6 months  |MAL-ED         |TANZANIA     |High     |       1|     16|   200|
|6 months  |MAL-ED         |SOUTH AFRICA |Low      |       0|    108|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |Low      |       1|     30|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |Medium   |       0|     31|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |Medium   |       1|      4|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |High     |       0|     65|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |High     |       1|     16|   254|
|6 months  |NIH-Birth      |BANGLADESH   |Low      |       0|    155|   537|
|6 months  |NIH-Birth      |BANGLADESH   |Low      |       1|     67|   537|
|6 months  |NIH-Birth      |BANGLADESH   |Medium   |       0|    128|   537|
|6 months  |NIH-Birth      |BANGLADESH   |Medium   |       1|     47|   537|
|6 months  |NIH-Birth      |BANGLADESH   |High     |       0|    110|   537|
|6 months  |NIH-Birth      |BANGLADESH   |High     |       1|     30|   537|
|6 months  |NIH-Crypto     |BANGLADESH   |Low      |       0|    179|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Low      |       1|     49|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Medium   |       0|    125|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |Medium   |       1|     33|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |High     |       0|    261|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |High     |       1|     68|   715|
|6 months  |PROBIT         |BELARUS      |Low      |       0|   4918| 15760|
|6 months  |PROBIT         |BELARUS      |Low      |       1|    217| 15760|
|6 months  |PROBIT         |BELARUS      |Medium   |       0|   7620| 15760|
|6 months  |PROBIT         |BELARUS      |Medium   |       1|    305| 15760|
|6 months  |PROBIT         |BELARUS      |High     |       0|   2602| 15760|
|6 months  |PROBIT         |BELARUS      |High     |       1|     98| 15760|
|6 months  |PROVIDE        |BANGLADESH   |Low      |       0|    150|   604|
|6 months  |PROVIDE        |BANGLADESH   |Low      |       1|     32|   604|
|6 months  |PROVIDE        |BANGLADESH   |Medium   |       0|    189|   604|
|6 months  |PROVIDE        |BANGLADESH   |Medium   |       1|     41|   604|
|6 months  |PROVIDE        |BANGLADESH   |High     |       0|    169|   604|
|6 months  |PROVIDE        |BANGLADESH   |High     |       1|     23|   604|
|6 months  |SAS-CompFeed   |INDIA        |Low      |       0|    429|  1335|
|6 months  |SAS-CompFeed   |INDIA        |Low      |       1|    170|  1335|
|6 months  |SAS-CompFeed   |INDIA        |Medium   |       0|    314|  1335|
|6 months  |SAS-CompFeed   |INDIA        |Medium   |       1|    129|  1335|
|6 months  |SAS-CompFeed   |INDIA        |High     |       0|    212|  1335|
|6 months  |SAS-CompFeed   |INDIA        |High     |       1|     81|  1335|
|6 months  |SAS-FoodSuppl  |INDIA        |Low      |       0|    173|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |Low      |       1|    133|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |Medium   |       0|     23|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |Medium   |       1|     14|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |High     |       0|     21|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |High     |       1|     16|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |Low      |       0|     78|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |Low      |       1|      7|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |Medium   |       0|   1267|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |Medium   |       1|    141|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |High     |       0|    487|  2029|
|6 months  |TanzaniaChild2 |TANZANIA     |High     |       1|     49|  2029|
|6 months  |Vellore Crypto |INDIA        |Low      |       0|    112|   407|
|6 months  |Vellore Crypto |INDIA        |Low      |       1|     34|   407|
|6 months  |Vellore Crypto |INDIA        |Medium   |       0|    113|   407|
|6 months  |Vellore Crypto |INDIA        |Medium   |       1|     37|   407|
|6 months  |Vellore Crypto |INDIA        |High     |       0|     82|   407|
|6 months  |Vellore Crypto |INDIA        |High     |       1|     29|   407|
|6 months  |ZVITAMBO       |ZIMBABWE     |Low      |       0|   1323|  8666|
|6 months  |ZVITAMBO       |ZIMBABWE     |Low      |       1|    237|  8666|
|6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |       0|   1839|  8666|
|6 months  |ZVITAMBO       |ZIMBABWE     |Medium   |       1|    378|  8666|
|6 months  |ZVITAMBO       |ZIMBABWE     |High     |       0|   4092|  8666|
|6 months  |ZVITAMBO       |ZIMBABWE     |High     |       1|    797|  8666|
|24 months |CMC-V-BCS-2002 |INDIA        |Low      |       0|     34|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |Low      |       1|     76|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |Medium   |       0|     25|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |Medium   |       1|     75|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |High     |       0|     46|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |High     |       1|    115|   371|
|24 months |COHORTS        |INDIA        |Low      |       0|    518|  4790|
|24 months |COHORTS        |INDIA        |Low      |       1|    667|  4790|
|24 months |COHORTS        |INDIA        |Medium   |       0|   1250|  4790|
|24 months |COHORTS        |INDIA        |Medium   |       1|   1450|  4790|
|24 months |COHORTS        |INDIA        |High     |       0|    460|  4790|
|24 months |COHORTS        |INDIA        |High     |       1|    445|  4790|
|24 months |COHORTS        |GUATEMALA    |Low      |       0|     82|  1062|
|24 months |COHORTS        |GUATEMALA    |Low      |       1|    415|  1062|
|24 months |COHORTS        |GUATEMALA    |Medium   |       0|     80|  1062|
|24 months |COHORTS        |GUATEMALA    |Medium   |       1|    269|  1062|
|24 months |COHORTS        |GUATEMALA    |High     |       0|     38|  1062|
|24 months |COHORTS        |GUATEMALA    |High     |       1|    178|  1062|
|24 months |COHORTS        |PHILIPPINES  |Low      |       0|    259|  2445|
|24 months |COHORTS        |PHILIPPINES  |Low      |       1|    657|  2445|
|24 months |COHORTS        |PHILIPPINES  |Medium   |       0|    135|  2445|
|24 months |COHORTS        |PHILIPPINES  |Medium   |       1|    315|  2445|
|24 months |COHORTS        |PHILIPPINES  |High     |       0|    528|  2445|
|24 months |COHORTS        |PHILIPPINES  |High     |       1|    551|  2445|
|24 months |EE             |PAKISTAN     |Low      |       0|     42|   164|
|24 months |EE             |PAKISTAN     |Low      |       1|     96|   164|
|24 months |EE             |PAKISTAN     |Medium   |       0|      6|   164|
|24 months |EE             |PAKISTAN     |Medium   |       1|     15|   164|
|24 months |EE             |PAKISTAN     |High     |       0|      1|   164|
|24 months |EE             |PAKISTAN     |High     |       1|      4|   164|
|24 months |GMS-Nepal      |NEPAL        |Low      |       0|    187|   488|
|24 months |GMS-Nepal      |NEPAL        |Low      |       1|    157|   488|
|24 months |GMS-Nepal      |NEPAL        |Medium   |       0|     54|   488|
|24 months |GMS-Nepal      |NEPAL        |Medium   |       1|     40|   488|
|24 months |GMS-Nepal      |NEPAL        |High     |       0|     28|   488|
|24 months |GMS-Nepal      |NEPAL        |High     |       1|     22|   488|
|24 months |JiVitA-3       |BANGLADESH   |Low      |       0|   1501|  8628|
|24 months |JiVitA-3       |BANGLADESH   |Low      |       1|   1545|  8628|
|24 months |JiVitA-3       |BANGLADESH   |Medium   |       0|   1348|  8628|
|24 months |JiVitA-3       |BANGLADESH   |Medium   |       1|   1299|  8628|
|24 months |JiVitA-3       |BANGLADESH   |High     |       0|   1542|  8628|
|24 months |JiVitA-3       |BANGLADESH   |High     |       1|   1393|  8628|
|24 months |JiVitA-4       |BANGLADESH   |Low      |       0|    895|  4744|
|24 months |JiVitA-4       |BANGLADESH   |Low      |       1|    636|  4744|
|24 months |JiVitA-4       |BANGLADESH   |Medium   |       0|    885|  4744|
|24 months |JiVitA-4       |BANGLADESH   |Medium   |       1|    598|  4744|
|24 months |JiVitA-4       |BANGLADESH   |High     |       0|   1065|  4744|
|24 months |JiVitA-4       |BANGLADESH   |High     |       1|    665|  4744|
|24 months |LCNI-5         |MALAWI       |Low      |       0|     91|   571|
|24 months |LCNI-5         |MALAWI       |Low      |       1|     88|   571|
|24 months |LCNI-5         |MALAWI       |Medium   |       0|    122|   571|
|24 months |LCNI-5         |MALAWI       |Medium   |       1|     76|   571|
|24 months |LCNI-5         |MALAWI       |High     |       0|    102|   571|
|24 months |LCNI-5         |MALAWI       |High     |       1|     92|   571|
|24 months |MAL-ED         |INDIA        |Low      |       0|     42|   192|
|24 months |MAL-ED         |INDIA        |Low      |       1|     38|   192|
|24 months |MAL-ED         |INDIA        |Medium   |       0|     26|   192|
|24 months |MAL-ED         |INDIA        |Medium   |       1|     17|   192|
|24 months |MAL-ED         |INDIA        |High     |       0|     39|   192|
|24 months |MAL-ED         |INDIA        |High     |       1|     30|   192|
|24 months |MAL-ED         |BANGLADESH   |Low      |       0|     31|   204|
|24 months |MAL-ED         |BANGLADESH   |Low      |       1|     29|   204|
|24 months |MAL-ED         |BANGLADESH   |Medium   |       0|     26|   204|
|24 months |MAL-ED         |BANGLADESH   |Medium   |       1|     23|   204|
|24 months |MAL-ED         |BANGLADESH   |High     |       0|     49|   204|
|24 months |MAL-ED         |BANGLADESH   |High     |       1|     46|   204|
|24 months |MAL-ED         |PERU         |Low      |       0|     52|   200|
|24 months |MAL-ED         |PERU         |Low      |       1|     21|   200|
|24 months |MAL-ED         |PERU         |Medium   |       0|     39|   200|
|24 months |MAL-ED         |PERU         |Medium   |       1|     27|   200|
|24 months |MAL-ED         |PERU         |High     |       0|     35|   200|
|24 months |MAL-ED         |PERU         |High     |       1|     26|   200|
|24 months |MAL-ED         |NEPAL        |Low      |       0|     86|   218|
|24 months |MAL-ED         |NEPAL        |Low      |       1|     21|   218|
|24 months |MAL-ED         |NEPAL        |Medium   |       0|     43|   218|
|24 months |MAL-ED         |NEPAL        |Medium   |       1|     10|   218|
|24 months |MAL-ED         |NEPAL        |High     |       0|     42|   218|
|24 months |MAL-ED         |NEPAL        |High     |       1|     16|   218|
|24 months |MAL-ED         |BRAZIL       |Low      |       0|     69|   169|
|24 months |MAL-ED         |BRAZIL       |Low      |       1|      3|   169|
|24 months |MAL-ED         |BRAZIL       |Medium   |       0|     69|   169|
|24 months |MAL-ED         |BRAZIL       |Medium   |       1|      1|   169|
|24 months |MAL-ED         |BRAZIL       |High     |       0|     24|   169|
|24 months |MAL-ED         |BRAZIL       |High     |       1|      3|   169|
|24 months |MAL-ED         |TANZANIA     |Low      |       0|     12|   174|
|24 months |MAL-ED         |TANZANIA     |Low      |       1|     42|   174|
|24 months |MAL-ED         |TANZANIA     |Medium   |       0|     14|   174|
|24 months |MAL-ED         |TANZANIA     |Medium   |       1|     51|   174|
|24 months |MAL-ED         |TANZANIA     |High     |       0|     20|   174|
|24 months |MAL-ED         |TANZANIA     |High     |       1|     35|   174|
|24 months |MAL-ED         |SOUTH AFRICA |Low      |       0|     84|   238|
|24 months |MAL-ED         |SOUTH AFRICA |Low      |       1|     48|   238|
|24 months |MAL-ED         |SOUTH AFRICA |Medium   |       0|     18|   238|
|24 months |MAL-ED         |SOUTH AFRICA |Medium   |       1|     13|   238|
|24 months |MAL-ED         |SOUTH AFRICA |High     |       0|     52|   238|
|24 months |MAL-ED         |SOUTH AFRICA |High     |       1|     23|   238|
|24 months |NIH-Birth      |BANGLADESH   |Low      |       0|     78|   429|
|24 months |NIH-Birth      |BANGLADESH   |Low      |       1|    100|   429|
|24 months |NIH-Birth      |BANGLADESH   |Medium   |       0|     54|   429|
|24 months |NIH-Birth      |BANGLADESH   |Medium   |       1|     84|   429|
|24 months |NIH-Birth      |BANGLADESH   |High     |       0|     53|   429|
|24 months |NIH-Birth      |BANGLADESH   |High     |       1|     60|   429|
|24 months |NIH-Crypto     |BANGLADESH   |Low      |       0|    114|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Low      |       1|     42|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Medium   |       0|     84|   514|
|24 months |NIH-Crypto     |BANGLADESH   |Medium   |       1|     27|   514|
|24 months |NIH-Crypto     |BANGLADESH   |High     |       0|    184|   514|
|24 months |NIH-Crypto     |BANGLADESH   |High     |       1|     63|   514|
|24 months |PROBIT         |BELARUS      |Low      |       0|   1170|  4035|
|24 months |PROBIT         |BELARUS      |Low      |       1|     98|  4035|
|24 months |PROBIT         |BELARUS      |Medium   |       0|   1972|  4035|
|24 months |PROBIT         |BELARUS      |Medium   |       1|    131|  4035|
|24 months |PROBIT         |BELARUS      |High     |       0|    618|  4035|
|24 months |PROBIT         |BELARUS      |High     |       1|     46|  4035|
|24 months |PROVIDE        |BANGLADESH   |Low      |       0|    118|   578|
|24 months |PROVIDE        |BANGLADESH   |Low      |       1|     57|   578|
|24 months |PROVIDE        |BANGLADESH   |Medium   |       0|    136|   578|
|24 months |PROVIDE        |BANGLADESH   |Medium   |       1|     80|   578|
|24 months |PROVIDE        |BANGLADESH   |High     |       0|    134|   578|
|24 months |PROVIDE        |BANGLADESH   |High     |       1|     53|   578|
|24 months |TanzaniaChild2 |TANZANIA     |Low      |       0|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Low      |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Medium   |       0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |Medium   |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |High     |       0|      3|     6|
|24 months |TanzaniaChild2 |TANZANIA     |High     |       1|      1|     6|
|24 months |Vellore Crypto |INDIA        |Low      |       0|     92|   409|
|24 months |Vellore Crypto |INDIA        |Low      |       1|     55|   409|
|24 months |Vellore Crypto |INDIA        |Medium   |       0|     85|   409|
|24 months |Vellore Crypto |INDIA        |Medium   |       1|     66|   409|
|24 months |Vellore Crypto |INDIA        |High     |       0|     60|   409|
|24 months |Vellore Crypto |INDIA        |High     |       1|     51|   409|
|24 months |ZVITAMBO       |ZIMBABWE     |Low      |       0|    204|  1639|
|24 months |ZVITAMBO       |ZIMBABWE     |Low      |       1|     91|  1639|
|24 months |ZVITAMBO       |ZIMBABWE     |Medium   |       0|    264|  1639|
|24 months |ZVITAMBO       |ZIMBABWE     |Medium   |       1|    138|  1639|
|24 months |ZVITAMBO       |ZIMBABWE     |High     |       0|    603|  1639|
|24 months |ZVITAMBO       |ZIMBABWE     |High     |       1|    339|  1639|


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
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


