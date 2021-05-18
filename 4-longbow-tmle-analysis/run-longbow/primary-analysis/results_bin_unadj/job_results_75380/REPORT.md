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

**Intervention Variable:** mage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |mage    | sstunted| n_cell|     n|
|:---------|:--------------|:------------|:-------|--------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |[20-30) |        0|     64|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |[20-30) |        1|      1|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |<20     |        0|     14|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |<20     |        1|      2|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |>=30    |        0|     10|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |>=30    |        1|      1|    92|
|Birth     |COHORTS        |INDIA        |[20-30) |        0|   3242|  5508|
|Birth     |COHORTS        |INDIA        |[20-30) |        1|    102|  5508|
|Birth     |COHORTS        |INDIA        |<20     |        0|    844|  5508|
|Birth     |COHORTS        |INDIA        |<20     |        1|     27|  5508|
|Birth     |COHORTS        |INDIA        |>=30    |        0|   1254|  5508|
|Birth     |COHORTS        |INDIA        |>=30    |        1|     39|  5508|
|Birth     |COHORTS        |GUATEMALA    |[20-30) |        0|    379|   848|
|Birth     |COHORTS        |GUATEMALA    |[20-30) |        1|      5|   848|
|Birth     |COHORTS        |GUATEMALA    |<20     |        0|    171|   848|
|Birth     |COHORTS        |GUATEMALA    |<20     |        1|      3|   848|
|Birth     |COHORTS        |GUATEMALA    |>=30    |        0|    287|   848|
|Birth     |COHORTS        |GUATEMALA    |>=30    |        1|      3|   848|
|Birth     |COHORTS        |PHILIPPINES  |[20-30) |        0|   1559|  3050|
|Birth     |COHORTS        |PHILIPPINES  |[20-30) |        1|     25|  3050|
|Birth     |COHORTS        |PHILIPPINES  |<20     |        0|    517|  3050|
|Birth     |COHORTS        |PHILIPPINES  |<20     |        1|      8|  3050|
|Birth     |COHORTS        |PHILIPPINES  |>=30    |        0|    928|  3050|
|Birth     |COHORTS        |PHILIPPINES  |>=30    |        1|     13|  3050|
|Birth     |EE             |PAKISTAN     |[20-30) |        0|     79|   240|
|Birth     |EE             |PAKISTAN     |[20-30) |        1|     17|   240|
|Birth     |EE             |PAKISTAN     |<20     |        0|      2|   240|
|Birth     |EE             |PAKISTAN     |<20     |        1|      0|   240|
|Birth     |EE             |PAKISTAN     |>=30    |        0|    111|   240|
|Birth     |EE             |PAKISTAN     |>=30    |        1|     31|   240|
|Birth     |GMS-Nepal      |NEPAL        |[20-30) |        0|    399|   696|
|Birth     |GMS-Nepal      |NEPAL        |[20-30) |        1|     19|   696|
|Birth     |GMS-Nepal      |NEPAL        |<20     |        0|    165|   696|
|Birth     |GMS-Nepal      |NEPAL        |<20     |        1|      7|   696|
|Birth     |GMS-Nepal      |NEPAL        |>=30    |        0|    101|   696|
|Birth     |GMS-Nepal      |NEPAL        |>=30    |        1|      5|   696|
|Birth     |JiVitA-3       |BANGLADESH   |[20-30) |        0|   9173| 22452|
|Birth     |JiVitA-3       |BANGLADESH   |[20-30) |        1|   1115| 22452|
|Birth     |JiVitA-3       |BANGLADESH   |<20     |        0|   9047| 22452|
|Birth     |JiVitA-3       |BANGLADESH   |<20     |        1|   1097| 22452|
|Birth     |JiVitA-3       |BANGLADESH   |>=30    |        0|   1784| 22452|
|Birth     |JiVitA-3       |BANGLADESH   |>=30    |        1|    236| 22452|
|Birth     |Keneba         |GAMBIA       |[20-30) |        0|    489|  1541|
|Birth     |Keneba         |GAMBIA       |[20-30) |        1|     10|  1541|
|Birth     |Keneba         |GAMBIA       |<20     |        0|    145|  1541|
|Birth     |Keneba         |GAMBIA       |<20     |        1|      1|  1541|
|Birth     |Keneba         |GAMBIA       |>=30    |        0|    878|  1541|
|Birth     |Keneba         |GAMBIA       |>=30    |        1|     18|  1541|
|Birth     |MAL-ED         |INDIA        |[20-30) |        0|     29|    47|
|Birth     |MAL-ED         |INDIA        |[20-30) |        1|      1|    47|
|Birth     |MAL-ED         |INDIA        |<20     |        0|      6|    47|
|Birth     |MAL-ED         |INDIA        |<20     |        1|      0|    47|
|Birth     |MAL-ED         |INDIA        |>=30    |        0|     10|    47|
|Birth     |MAL-ED         |INDIA        |>=30    |        1|      1|    47|
|Birth     |MAL-ED         |BANGLADESH   |[20-30) |        0|    127|   231|
|Birth     |MAL-ED         |BANGLADESH   |[20-30) |        1|      5|   231|
|Birth     |MAL-ED         |BANGLADESH   |<20     |        0|     33|   231|
|Birth     |MAL-ED         |BANGLADESH   |<20     |        1|      2|   231|
|Birth     |MAL-ED         |BANGLADESH   |>=30    |        0|     62|   231|
|Birth     |MAL-ED         |BANGLADESH   |>=30    |        1|      2|   231|
|Birth     |MAL-ED         |PERU         |[20-30) |        0|    111|   233|
|Birth     |MAL-ED         |PERU         |[20-30) |        1|      1|   233|
|Birth     |MAL-ED         |PERU         |<20     |        0|     38|   233|
|Birth     |MAL-ED         |PERU         |<20     |        1|      1|   233|
|Birth     |MAL-ED         |PERU         |>=30    |        0|     80|   233|
|Birth     |MAL-ED         |PERU         |>=30    |        1|      2|   233|
|Birth     |MAL-ED         |NEPAL        |[20-30) |        0|     15|    27|
|Birth     |MAL-ED         |NEPAL        |[20-30) |        1|      1|    27|
|Birth     |MAL-ED         |NEPAL        |<20     |        0|      1|    27|
|Birth     |MAL-ED         |NEPAL        |<20     |        1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |>=30    |        0|     10|    27|
|Birth     |MAL-ED         |NEPAL        |>=30    |        1|      0|    27|
|Birth     |MAL-ED         |BRAZIL       |[20-30) |        0|     32|    65|
|Birth     |MAL-ED         |BRAZIL       |[20-30) |        1|      0|    65|
|Birth     |MAL-ED         |BRAZIL       |<20     |        0|      9|    65|
|Birth     |MAL-ED         |BRAZIL       |<20     |        1|      2|    65|
|Birth     |MAL-ED         |BRAZIL       |>=30    |        0|     21|    65|
|Birth     |MAL-ED         |BRAZIL       |>=30    |        1|      1|    65|
|Birth     |MAL-ED         |TANZANIA     |[20-30) |        0|     53|   125|
|Birth     |MAL-ED         |TANZANIA     |[20-30) |        1|      3|   125|
|Birth     |MAL-ED         |TANZANIA     |<20     |        0|      9|   125|
|Birth     |MAL-ED         |TANZANIA     |<20     |        1|      0|   125|
|Birth     |MAL-ED         |TANZANIA     |>=30    |        0|     53|   125|
|Birth     |MAL-ED         |TANZANIA     |>=30    |        1|      7|   125|
|Birth     |MAL-ED         |SOUTH AFRICA |[20-30) |        0|     53|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |[20-30) |        1|      0|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |<20     |        0|     15|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |<20     |        1|      0|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |>=30    |        0|     53|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |>=30    |        1|      2|   123|
|Birth     |NIH-Birth      |BANGLADESH   |[20-30) |        0|    350|   607|
|Birth     |NIH-Birth      |BANGLADESH   |[20-30) |        1|     12|   607|
|Birth     |NIH-Birth      |BANGLADESH   |<20     |        0|    113|   607|
|Birth     |NIH-Birth      |BANGLADESH   |<20     |        1|      3|   607|
|Birth     |NIH-Birth      |BANGLADESH   |>=30    |        0|    125|   607|
|Birth     |NIH-Birth      |BANGLADESH   |>=30    |        1|      4|   607|
|Birth     |NIH-Crypto     |BANGLADESH   |[20-30) |        0|    490|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |[20-30) |        1|      9|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |<20     |        0|     62|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |<20     |        1|      1|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |>=30    |        0|    170|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |>=30    |        1|      0|   732|
|Birth     |PROBIT         |BELARUS      |[20-30) |        0|   9878| 13893|
|Birth     |PROBIT         |BELARUS      |[20-30) |        1|      3| 13893|
|Birth     |PROBIT         |BELARUS      |<20     |        0|   1485| 13893|
|Birth     |PROBIT         |BELARUS      |<20     |        1|      0| 13893|
|Birth     |PROBIT         |BELARUS      |>=30    |        0|   2525| 13893|
|Birth     |PROBIT         |BELARUS      |>=30    |        1|      2| 13893|
|Birth     |PROVIDE        |BANGLADESH   |[20-30) |        0|    346|   539|
|Birth     |PROVIDE        |BANGLADESH   |[20-30) |        1|      4|   539|
|Birth     |PROVIDE        |BANGLADESH   |<20     |        0|     54|   539|
|Birth     |PROVIDE        |BANGLADESH   |<20     |        1|      0|   539|
|Birth     |PROVIDE        |BANGLADESH   |>=30    |        0|    135|   539|
|Birth     |PROVIDE        |BANGLADESH   |>=30    |        1|      0|   539|
|Birth     |SAS-CompFeed   |INDIA        |[20-30) |        0|    854|  1251|
|Birth     |SAS-CompFeed   |INDIA        |[20-30) |        1|     67|  1251|
|Birth     |SAS-CompFeed   |INDIA        |<20     |        0|    171|  1251|
|Birth     |SAS-CompFeed   |INDIA        |<20     |        1|     17|  1251|
|Birth     |SAS-CompFeed   |INDIA        |>=30    |        0|    135|  1251|
|Birth     |SAS-CompFeed   |INDIA        |>=30    |        1|      7|  1251|
|Birth     |Vellore Crypto |INDIA        |[20-30) |        0|    257|   388|
|Birth     |Vellore Crypto |INDIA        |[20-30) |        1|     11|   388|
|Birth     |Vellore Crypto |INDIA        |<20     |        0|     51|   388|
|Birth     |Vellore Crypto |INDIA        |<20     |        1|      0|   388|
|Birth     |Vellore Crypto |INDIA        |>=30    |        0|     64|   388|
|Birth     |Vellore Crypto |INDIA        |>=30    |        1|      5|   388|
|Birth     |ZVITAMBO       |ZIMBABWE     |[20-30) |        0|   9261| 13854|
|Birth     |ZVITAMBO       |ZIMBABWE     |[20-30) |        1|    288| 13854|
|Birth     |ZVITAMBO       |ZIMBABWE     |<20     |        0|   2478| 13854|
|Birth     |ZVITAMBO       |ZIMBABWE     |<20     |        1|     98| 13854|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=30    |        0|   1675| 13854|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=30    |        1|     54| 13854|
|6 months  |CMC-V-BCS-2002 |INDIA        |[20-30) |        0|    232|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |[20-30) |        1|     31|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |<20     |        0|     61|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |<20     |        1|      5|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |>=30    |        0|     34|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |>=30    |        1|      6|   369|
|6 months  |COHORTS        |INDIA        |[20-30) |        0|   3280|  5698|
|6 months  |COHORTS        |INDIA        |[20-30) |        1|    155|  5698|
|6 months  |COHORTS        |INDIA        |<20     |        0|    876|  5698|
|6 months  |COHORTS        |INDIA        |<20     |        1|     40|  5698|
|6 months  |COHORTS        |INDIA        |>=30    |        0|   1285|  5698|
|6 months  |COHORTS        |INDIA        |>=30    |        1|     62|  5698|
|6 months  |COHORTS        |GUATEMALA    |[20-30) |        0|    364|   958|
|6 months  |COHORTS        |GUATEMALA    |[20-30) |        1|     47|   958|
|6 months  |COHORTS        |GUATEMALA    |<20     |        0|    176|   958|
|6 months  |COHORTS        |GUATEMALA    |<20     |        1|     25|   958|
|6 months  |COHORTS        |GUATEMALA    |>=30    |        0|    295|   958|
|6 months  |COHORTS        |GUATEMALA    |>=30    |        1|     51|   958|
|6 months  |COHORTS        |PHILIPPINES  |[20-30) |        0|   1338|  2708|
|6 months  |COHORTS        |PHILIPPINES  |[20-30) |        1|     75|  2708|
|6 months  |COHORTS        |PHILIPPINES  |<20     |        0|    444|  2708|
|6 months  |COHORTS        |PHILIPPINES  |<20     |        1|     22|  2708|
|6 months  |COHORTS        |PHILIPPINES  |>=30    |        0|    794|  2708|
|6 months  |COHORTS        |PHILIPPINES  |>=30    |        1|     35|  2708|
|6 months  |EE             |PAKISTAN     |[20-30) |        0|    128|   372|
|6 months  |EE             |PAKISTAN     |[20-30) |        1|     27|   372|
|6 months  |EE             |PAKISTAN     |<20     |        0|      1|   372|
|6 months  |EE             |PAKISTAN     |<20     |        1|      1|   372|
|6 months  |EE             |PAKISTAN     |>=30    |        0|    163|   372|
|6 months  |EE             |PAKISTAN     |>=30    |        1|     52|   372|
|6 months  |GMS-Nepal      |NEPAL        |[20-30) |        0|    319|   564|
|6 months  |GMS-Nepal      |NEPAL        |[20-30) |        1|     16|   564|
|6 months  |GMS-Nepal      |NEPAL        |<20     |        0|    140|   564|
|6 months  |GMS-Nepal      |NEPAL        |<20     |        1|      1|   564|
|6 months  |GMS-Nepal      |NEPAL        |>=30    |        0|     84|   564|
|6 months  |GMS-Nepal      |NEPAL        |>=30    |        1|      4|   564|
|6 months  |Guatemala BSC  |GUATEMALA    |[20-30) |        0|    130|   286|
|6 months  |Guatemala BSC  |GUATEMALA    |[20-30) |        1|     16|   286|
|6 months  |Guatemala BSC  |GUATEMALA    |<20     |        0|     56|   286|
|6 months  |Guatemala BSC  |GUATEMALA    |<20     |        1|      2|   286|
|6 months  |Guatemala BSC  |GUATEMALA    |>=30    |        0|     74|   286|
|6 months  |Guatemala BSC  |GUATEMALA    |>=30    |        1|      8|   286|
|6 months  |JiVitA-3       |BANGLADESH   |[20-30) |        0|   7081| 16808|
|6 months  |JiVitA-3       |BANGLADESH   |[20-30) |        1|    433| 16808|
|6 months  |JiVitA-3       |BANGLADESH   |<20     |        0|   7506| 16808|
|6 months  |JiVitA-3       |BANGLADESH   |<20     |        1|    506| 16808|
|6 months  |JiVitA-3       |BANGLADESH   |>=30    |        0|   1202| 16808|
|6 months  |JiVitA-3       |BANGLADESH   |>=30    |        1|     80| 16808|
|6 months  |Keneba         |GAMBIA       |[20-30) |        0|    648|  2086|
|6 months  |Keneba         |GAMBIA       |[20-30) |        1|     15|  2086|
|6 months  |Keneba         |GAMBIA       |<20     |        0|    188|  2086|
|6 months  |Keneba         |GAMBIA       |<20     |        1|      7|  2086|
|6 months  |Keneba         |GAMBIA       |>=30    |        0|   1180|  2086|
|6 months  |Keneba         |GAMBIA       |>=30    |        1|     48|  2086|
|6 months  |LCNI-5         |MALAWI       |[20-30) |        0|    368|   760|
|6 months  |LCNI-5         |MALAWI       |[20-30) |        1|     32|   760|
|6 months  |LCNI-5         |MALAWI       |<20     |        0|    140|   760|
|6 months  |LCNI-5         |MALAWI       |<20     |        1|     14|   760|
|6 months  |LCNI-5         |MALAWI       |>=30    |        0|    190|   760|
|6 months  |LCNI-5         |MALAWI       |>=30    |        1|     16|   760|
|6 months  |MAL-ED         |INDIA        |[20-30) |        0|    145|   236|
|6 months  |MAL-ED         |INDIA        |[20-30) |        1|      6|   236|
|6 months  |MAL-ED         |INDIA        |<20     |        0|     36|   236|
|6 months  |MAL-ED         |INDIA        |<20     |        1|      0|   236|
|6 months  |MAL-ED         |INDIA        |>=30    |        0|     46|   236|
|6 months  |MAL-ED         |INDIA        |>=30    |        1|      3|   236|
|6 months  |MAL-ED         |BANGLADESH   |[20-30) |        0|    137|   241|
|6 months  |MAL-ED         |BANGLADESH   |[20-30) |        1|      4|   241|
|6 months  |MAL-ED         |BANGLADESH   |<20     |        0|     32|   241|
|6 months  |MAL-ED         |BANGLADESH   |<20     |        1|      3|   241|
|6 months  |MAL-ED         |BANGLADESH   |>=30    |        0|     64|   241|
|6 months  |MAL-ED         |BANGLADESH   |>=30    |        1|      1|   241|
|6 months  |MAL-ED         |PERU         |[20-30) |        0|    132|   273|
|6 months  |MAL-ED         |PERU         |[20-30) |        1|      4|   273|
|6 months  |MAL-ED         |PERU         |<20     |        0|     40|   273|
|6 months  |MAL-ED         |PERU         |<20     |        1|      4|   273|
|6 months  |MAL-ED         |PERU         |>=30    |        0|     91|   273|
|6 months  |MAL-ED         |PERU         |>=30    |        1|      2|   273|
|6 months  |MAL-ED         |NEPAL        |[20-30) |        0|    146|   236|
|6 months  |MAL-ED         |NEPAL        |[20-30) |        1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |<20     |        0|      9|   236|
|6 months  |MAL-ED         |NEPAL        |<20     |        1|      0|   236|
|6 months  |MAL-ED         |NEPAL        |>=30    |        0|     80|   236|
|6 months  |MAL-ED         |NEPAL        |>=30    |        1|      1|   236|
|6 months  |MAL-ED         |BRAZIL       |[20-30) |        0|    110|   209|
|6 months  |MAL-ED         |BRAZIL       |[20-30) |        1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |<20     |        0|     23|   209|
|6 months  |MAL-ED         |BRAZIL       |<20     |        1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |>=30    |        0|     76|   209|
|6 months  |MAL-ED         |BRAZIL       |>=30    |        1|      0|   209|
|6 months  |MAL-ED         |TANZANIA     |[20-30) |        0|    102|   247|
|6 months  |MAL-ED         |TANZANIA     |[20-30) |        1|      4|   247|
|6 months  |MAL-ED         |TANZANIA     |<20     |        0|     12|   247|
|6 months  |MAL-ED         |TANZANIA     |<20     |        1|      0|   247|
|6 months  |MAL-ED         |TANZANIA     |>=30    |        0|    119|   247|
|6 months  |MAL-ED         |TANZANIA     |>=30    |        1|     10|   247|
|6 months  |MAL-ED         |SOUTH AFRICA |[20-30) |        0|    112|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |[20-30) |        1|      2|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |<20     |        0|     32|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |<20     |        1|      1|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |>=30    |        0|    104|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |>=30    |        1|      3|   254|
|6 months  |NIH-Birth      |BANGLADESH   |[20-30) |        0|    305|   536|
|6 months  |NIH-Birth      |BANGLADESH   |[20-30) |        1|     18|   536|
|6 months  |NIH-Birth      |BANGLADESH   |<20     |        0|     94|   536|
|6 months  |NIH-Birth      |BANGLADESH   |<20     |        1|      6|   536|
|6 months  |NIH-Birth      |BANGLADESH   |>=30    |        0|    102|   536|
|6 months  |NIH-Birth      |BANGLADESH   |>=30    |        1|     11|   536|
|6 months  |NIH-Crypto     |BANGLADESH   |[20-30) |        0|    471|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |[20-30) |        1|     16|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |<20     |        0|     55|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |<20     |        1|      4|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |>=30    |        0|    166|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |>=30    |        1|      3|   715|
|6 months  |PROBIT         |BELARUS      |[20-30) |        0|  11140| 15760|
|6 months  |PROBIT         |BELARUS      |[20-30) |        1|    124| 15760|
|6 months  |PROBIT         |BELARUS      |<20     |        0|   1686| 15760|
|6 months  |PROBIT         |BELARUS      |<20     |        1|     20| 15760|
|6 months  |PROBIT         |BELARUS      |>=30    |        0|   2757| 15760|
|6 months  |PROBIT         |BELARUS      |>=30    |        1|     33| 15760|
|6 months  |PROVIDE        |BANGLADESH   |[20-30) |        0|    379|   604|
|6 months  |PROVIDE        |BANGLADESH   |[20-30) |        1|     12|   604|
|6 months  |PROVIDE        |BANGLADESH   |<20     |        0|     60|   604|
|6 months  |PROVIDE        |BANGLADESH   |<20     |        1|      0|   604|
|6 months  |PROVIDE        |BANGLADESH   |>=30    |        0|    151|   604|
|6 months  |PROVIDE        |BANGLADESH   |>=30    |        1|      2|   604|
|6 months  |SAS-CompFeed   |INDIA        |[20-30) |        0|    885|  1336|
|6 months  |SAS-CompFeed   |INDIA        |[20-30) |        1|     94|  1336|
|6 months  |SAS-CompFeed   |INDIA        |<20     |        0|    185|  1336|
|6 months  |SAS-CompFeed   |INDIA        |<20     |        1|     20|  1336|
|6 months  |SAS-CompFeed   |INDIA        |>=30    |        0|    138|  1336|
|6 months  |SAS-CompFeed   |INDIA        |>=30    |        1|     14|  1336|
|6 months  |SAS-FoodSuppl  |INDIA        |[20-30) |        0|    207|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |[20-30) |        1|     36|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |<20     |        0|     22|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |<20     |        1|      2|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |>=30    |        0|     97|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |>=30    |        1|     16|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |[20-30) |        0|   1080|  2027|
|6 months  |TanzaniaChild2 |TANZANIA     |[20-30) |        1|      8|  2027|
|6 months  |TanzaniaChild2 |TANZANIA     |<20     |        0|    335|  2027|
|6 months  |TanzaniaChild2 |TANZANIA     |<20     |        1|      2|  2027|
|6 months  |TanzaniaChild2 |TANZANIA     |>=30    |        0|    593|  2027|
|6 months  |TanzaniaChild2 |TANZANIA     |>=30    |        1|      9|  2027|
|6 months  |Vellore Crypto |INDIA        |[20-30) |        0|    257|   407|
|6 months  |Vellore Crypto |INDIA        |[20-30) |        1|     22|   407|
|6 months  |Vellore Crypto |INDIA        |<20     |        0|     49|   407|
|6 months  |Vellore Crypto |INDIA        |<20     |        1|      5|   407|
|6 months  |Vellore Crypto |INDIA        |>=30    |        0|     72|   407|
|6 months  |Vellore Crypto |INDIA        |>=30    |        1|      2|   407|
|6 months  |ZVITAMBO       |ZIMBABWE     |[20-30) |        0|   5743|  8657|
|6 months  |ZVITAMBO       |ZIMBABWE     |[20-30) |        1|    246|  8657|
|6 months  |ZVITAMBO       |ZIMBABWE     |<20     |        0|   1450|  8657|
|6 months  |ZVITAMBO       |ZIMBABWE     |<20     |        1|     63|  8657|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=30    |        0|   1114|  8657|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=30    |        1|     41|  8657|
|24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |        0|    184|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |        1|     80|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |<20     |        0|     40|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |<20     |        1|     27|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |>=30    |        0|     22|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |>=30    |        1|     18|   371|
|24 months |COHORTS        |INDIA        |[20-30) |        0|   2100|  4412|
|24 months |COHORTS        |INDIA        |[20-30) |        1|    566|  4412|
|24 months |COHORTS        |INDIA        |<20     |        0|    545|  4412|
|24 months |COHORTS        |INDIA        |<20     |        1|    169|  4412|
|24 months |COHORTS        |INDIA        |>=30    |        0|    773|  4412|
|24 months |COHORTS        |INDIA        |>=30    |        1|    259|  4412|
|24 months |COHORTS        |GUATEMALA    |[20-30) |        0|    233|  1064|
|24 months |COHORTS        |GUATEMALA    |[20-30) |        1|    224|  1064|
|24 months |COHORTS        |GUATEMALA    |<20     |        0|    110|  1064|
|24 months |COHORTS        |GUATEMALA    |<20     |        1|    104|  1064|
|24 months |COHORTS        |GUATEMALA    |>=30    |        0|    201|  1064|
|24 months |COHORTS        |GUATEMALA    |>=30    |        1|    192|  1064|
|24 months |COHORTS        |PHILIPPINES  |[20-30) |        0|    897|  2445|
|24 months |COHORTS        |PHILIPPINES  |[20-30) |        1|    372|  2445|
|24 months |COHORTS        |PHILIPPINES  |<20     |        0|    288|  2445|
|24 months |COHORTS        |PHILIPPINES  |<20     |        1|    130|  2445|
|24 months |COHORTS        |PHILIPPINES  |>=30    |        0|    553|  2445|
|24 months |COHORTS        |PHILIPPINES  |>=30    |        1|    205|  2445|
|24 months |EE             |PAKISTAN     |[20-30) |        0|     44|   167|
|24 months |EE             |PAKISTAN     |[20-30) |        1|     21|   167|
|24 months |EE             |PAKISTAN     |<20     |        0|      1|   167|
|24 months |EE             |PAKISTAN     |<20     |        1|      1|   167|
|24 months |EE             |PAKISTAN     |>=30    |        0|     63|   167|
|24 months |EE             |PAKISTAN     |>=30    |        1|     37|   167|
|24 months |GMS-Nepal      |NEPAL        |[20-30) |        0|    256|   488|
|24 months |GMS-Nepal      |NEPAL        |[20-30) |        1|     32|   488|
|24 months |GMS-Nepal      |NEPAL        |<20     |        0|    110|   488|
|24 months |GMS-Nepal      |NEPAL        |<20     |        1|     15|   488|
|24 months |GMS-Nepal      |NEPAL        |>=30    |        0|     69|   488|
|24 months |GMS-Nepal      |NEPAL        |>=30    |        1|      6|   488|
|24 months |JiVitA-3       |BANGLADESH   |[20-30) |        0|   3339|  8630|
|24 months |JiVitA-3       |BANGLADESH   |[20-30) |        1|    597|  8630|
|24 months |JiVitA-3       |BANGLADESH   |<20     |        0|   3330|  8630|
|24 months |JiVitA-3       |BANGLADESH   |<20     |        1|    638|  8630|
|24 months |JiVitA-3       |BANGLADESH   |>=30    |        0|    615|  8630|
|24 months |JiVitA-3       |BANGLADESH   |>=30    |        1|    111|  8630|
|24 months |Keneba         |GAMBIA       |[20-30) |        0|    514|  1723|
|24 months |Keneba         |GAMBIA       |[20-30) |        1|     42|  1723|
|24 months |Keneba         |GAMBIA       |<20     |        0|    134|  1723|
|24 months |Keneba         |GAMBIA       |<20     |        1|     16|  1723|
|24 months |Keneba         |GAMBIA       |>=30    |        0|    935|  1723|
|24 months |Keneba         |GAMBIA       |>=30    |        1|     82|  1723|
|24 months |LCNI-5         |MALAWI       |[20-30) |        0|    237|   526|
|24 months |LCNI-5         |MALAWI       |[20-30) |        1|     25|   526|
|24 months |LCNI-5         |MALAWI       |<20     |        0|     95|   526|
|24 months |LCNI-5         |MALAWI       |<20     |        1|     20|   526|
|24 months |LCNI-5         |MALAWI       |>=30    |        0|    130|   526|
|24 months |LCNI-5         |MALAWI       |>=30    |        1|     19|   526|
|24 months |MAL-ED         |INDIA        |[20-30) |        0|    127|   227|
|24 months |MAL-ED         |INDIA        |[20-30) |        1|     16|   227|
|24 months |MAL-ED         |INDIA        |<20     |        0|     31|   227|
|24 months |MAL-ED         |INDIA        |<20     |        1|      5|   227|
|24 months |MAL-ED         |INDIA        |>=30    |        0|     39|   227|
|24 months |MAL-ED         |INDIA        |>=30    |        1|      9|   227|
|24 months |MAL-ED         |BANGLADESH   |[20-30) |        0|    107|   212|
|24 months |MAL-ED         |BANGLADESH   |[20-30) |        1|     18|   212|
|24 months |MAL-ED         |BANGLADESH   |<20     |        0|     28|   212|
|24 months |MAL-ED         |BANGLADESH   |<20     |        1|      3|   212|
|24 months |MAL-ED         |BANGLADESH   |>=30    |        0|     49|   212|
|24 months |MAL-ED         |BANGLADESH   |>=30    |        1|      7|   212|
|24 months |MAL-ED         |PERU         |[20-30) |        0|     90|   201|
|24 months |MAL-ED         |PERU         |[20-30) |        1|      7|   201|
|24 months |MAL-ED         |PERU         |<20     |        0|     30|   201|
|24 months |MAL-ED         |PERU         |<20     |        1|      3|   201|
|24 months |MAL-ED         |PERU         |>=30    |        0|     66|   201|
|24 months |MAL-ED         |PERU         |>=30    |        1|      5|   201|
|24 months |MAL-ED         |NEPAL        |[20-30) |        0|    135|   228|
|24 months |MAL-ED         |NEPAL        |[20-30) |        1|      6|   228|
|24 months |MAL-ED         |NEPAL        |<20     |        0|      8|   228|
|24 months |MAL-ED         |NEPAL        |<20     |        1|      1|   228|
|24 months |MAL-ED         |NEPAL        |>=30    |        0|     78|   228|
|24 months |MAL-ED         |NEPAL        |>=30    |        1|      0|   228|
|24 months |MAL-ED         |BRAZIL       |[20-30) |        0|     91|   169|
|24 months |MAL-ED         |BRAZIL       |[20-30) |        1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |<20     |        0|     17|   169|
|24 months |MAL-ED         |BRAZIL       |<20     |        1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |>=30    |        0|     60|   169|
|24 months |MAL-ED         |BRAZIL       |>=30    |        1|      1|   169|
|24 months |MAL-ED         |TANZANIA     |[20-30) |        0|     60|   214|
|24 months |MAL-ED         |TANZANIA     |[20-30) |        1|     27|   214|
|24 months |MAL-ED         |TANZANIA     |<20     |        0|      9|   214|
|24 months |MAL-ED         |TANZANIA     |<20     |        1|      1|   214|
|24 months |MAL-ED         |TANZANIA     |>=30    |        0|     75|   214|
|24 months |MAL-ED         |TANZANIA     |>=30    |        1|     42|   214|
|24 months |MAL-ED         |SOUTH AFRICA |[20-30) |        0|     93|   238|
|24 months |MAL-ED         |SOUTH AFRICA |[20-30) |        1|     15|   238|
|24 months |MAL-ED         |SOUTH AFRICA |<20     |        0|     31|   238|
|24 months |MAL-ED         |SOUTH AFRICA |<20     |        1|      0|   238|
|24 months |MAL-ED         |SOUTH AFRICA |>=30    |        0|     87|   238|
|24 months |MAL-ED         |SOUTH AFRICA |>=30    |        1|     12|   238|
|24 months |NIH-Birth      |BANGLADESH   |[20-30) |        0|    199|   428|
|24 months |NIH-Birth      |BANGLADESH   |[20-30) |        1|     58|   428|
|24 months |NIH-Birth      |BANGLADESH   |<20     |        0|     65|   428|
|24 months |NIH-Birth      |BANGLADESH   |<20     |        1|     15|   428|
|24 months |NIH-Birth      |BANGLADESH   |>=30    |        0|     69|   428|
|24 months |NIH-Birth      |BANGLADESH   |>=30    |        1|     22|   428|
|24 months |NIH-Crypto     |BANGLADESH   |[20-30) |        0|    322|   514|
|24 months |NIH-Crypto     |BANGLADESH   |[20-30) |        1|     27|   514|
|24 months |NIH-Crypto     |BANGLADESH   |<20     |        0|     46|   514|
|24 months |NIH-Crypto     |BANGLADESH   |<20     |        1|      3|   514|
|24 months |NIH-Crypto     |BANGLADESH   |>=30    |        0|    110|   514|
|24 months |NIH-Crypto     |BANGLADESH   |>=30    |        1|      6|   514|
|24 months |PROBIT         |BELARUS      |[20-30) |        0|   2816|  4035|
|24 months |PROBIT         |BELARUS      |[20-30) |        1|     41|  4035|
|24 months |PROBIT         |BELARUS      |<20     |        0|    428|  4035|
|24 months |PROBIT         |BELARUS      |<20     |        1|      9|  4035|
|24 months |PROBIT         |BELARUS      |>=30    |        0|    726|  4035|
|24 months |PROBIT         |BELARUS      |>=30    |        1|     15|  4035|
|24 months |PROVIDE        |BANGLADESH   |[20-30) |        0|    337|   578|
|24 months |PROVIDE        |BANGLADESH   |[20-30) |        1|     38|   578|
|24 months |PROVIDE        |BANGLADESH   |<20     |        0|     56|   578|
|24 months |PROVIDE        |BANGLADESH   |<20     |        1|      3|   578|
|24 months |PROVIDE        |BANGLADESH   |>=30    |        0|    133|   578|
|24 months |PROVIDE        |BANGLADESH   |>=30    |        1|     11|   578|
|24 months |TanzaniaChild2 |TANZANIA     |[20-30) |        0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |[20-30) |        1|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |<20     |        0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |<20     |        1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |>=30    |        0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |>=30    |        1|      0|     6|
|24 months |Vellore Crypto |INDIA        |[20-30) |        0|    250|   409|
|24 months |Vellore Crypto |INDIA        |[20-30) |        1|     30|   409|
|24 months |Vellore Crypto |INDIA        |<20     |        0|     46|   409|
|24 months |Vellore Crypto |INDIA        |<20     |        1|      8|   409|
|24 months |Vellore Crypto |INDIA        |>=30    |        0|     72|   409|
|24 months |Vellore Crypto |INDIA        |>=30    |        1|      3|   409|
|24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |        0|    997|  1636|
|24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |        1|    130|  1636|
|24 months |ZVITAMBO       |ZIMBABWE     |<20     |        0|    257|  1636|
|24 months |ZVITAMBO       |ZIMBABWE     |<20     |        1|     31|  1636|
|24 months |ZVITAMBO       |ZIMBABWE     |>=30    |        0|    205|  1636|
|24 months |ZVITAMBO       |ZIMBABWE     |>=30    |        1|     16|  1636|


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: Keneba, country: GAMBIA
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
* agecat: Birth, studyid: Keneba, country: GAMBIA
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
* agecat: Birth, studyid: Keneba, country: GAMBIA
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
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* agecat: 24 months, studyid: Vellore Crypto, country: INDIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


