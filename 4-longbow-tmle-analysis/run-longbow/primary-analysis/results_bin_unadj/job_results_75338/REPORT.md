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

**Intervention Variable:** mage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat    |studyid        |country      |mage    | stunted| n_cell|     n|
|:---------|:--------------|:------------|:-------|-------:|------:|-----:|
|Birth     |CMC-V-BCS-2002 |INDIA        |[20-30) |       0|     56|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |[20-30) |       1|      9|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |<20     |       0|     10|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |<20     |       1|      6|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |>=30    |       0|      9|    92|
|Birth     |CMC-V-BCS-2002 |INDIA        |>=30    |       1|      2|    92|
|Birth     |COHORTS        |INDIA        |[20-30) |       0|   2958|  5508|
|Birth     |COHORTS        |INDIA        |[20-30) |       1|    386|  5508|
|Birth     |COHORTS        |INDIA        |<20     |       0|    767|  5508|
|Birth     |COHORTS        |INDIA        |<20     |       1|    104|  5508|
|Birth     |COHORTS        |INDIA        |>=30    |       0|   1140|  5508|
|Birth     |COHORTS        |INDIA        |>=30    |       1|    153|  5508|
|Birth     |COHORTS        |GUATEMALA    |[20-30) |       0|    364|   848|
|Birth     |COHORTS        |GUATEMALA    |[20-30) |       1|     20|   848|
|Birth     |COHORTS        |GUATEMALA    |<20     |       0|    164|   848|
|Birth     |COHORTS        |GUATEMALA    |<20     |       1|     10|   848|
|Birth     |COHORTS        |GUATEMALA    |>=30    |       0|    270|   848|
|Birth     |COHORTS        |GUATEMALA    |>=30    |       1|     20|   848|
|Birth     |COHORTS        |PHILIPPINES  |[20-30) |       0|   1483|  3050|
|Birth     |COHORTS        |PHILIPPINES  |[20-30) |       1|    101|  3050|
|Birth     |COHORTS        |PHILIPPINES  |<20     |       0|    488|  3050|
|Birth     |COHORTS        |PHILIPPINES  |<20     |       1|     37|  3050|
|Birth     |COHORTS        |PHILIPPINES  |>=30    |       0|    892|  3050|
|Birth     |COHORTS        |PHILIPPINES  |>=30    |       1|     49|  3050|
|Birth     |EE             |PAKISTAN     |[20-30) |       0|     57|   240|
|Birth     |EE             |PAKISTAN     |[20-30) |       1|     39|   240|
|Birth     |EE             |PAKISTAN     |<20     |       0|      1|   240|
|Birth     |EE             |PAKISTAN     |<20     |       1|      1|   240|
|Birth     |EE             |PAKISTAN     |>=30    |       0|     82|   240|
|Birth     |EE             |PAKISTAN     |>=30    |       1|     60|   240|
|Birth     |GMS-Nepal      |NEPAL        |[20-30) |       0|    341|   696|
|Birth     |GMS-Nepal      |NEPAL        |[20-30) |       1|     77|   696|
|Birth     |GMS-Nepal      |NEPAL        |<20     |       0|    146|   696|
|Birth     |GMS-Nepal      |NEPAL        |<20     |       1|     26|   696|
|Birth     |GMS-Nepal      |NEPAL        |>=30    |       0|     87|   696|
|Birth     |GMS-Nepal      |NEPAL        |>=30    |       1|     19|   696|
|Birth     |JiVitA-3       |BANGLADESH   |[20-30) |       0|   6929| 22452|
|Birth     |JiVitA-3       |BANGLADESH   |[20-30) |       1|   3359| 22452|
|Birth     |JiVitA-3       |BANGLADESH   |<20     |       0|   6786| 22452|
|Birth     |JiVitA-3       |BANGLADESH   |<20     |       1|   3358| 22452|
|Birth     |JiVitA-3       |BANGLADESH   |>=30    |       0|   1350| 22452|
|Birth     |JiVitA-3       |BANGLADESH   |>=30    |       1|    670| 22452|
|Birth     |Keneba         |GAMBIA       |[20-30) |       0|    473|  1541|
|Birth     |Keneba         |GAMBIA       |[20-30) |       1|     26|  1541|
|Birth     |Keneba         |GAMBIA       |<20     |       0|    140|  1541|
|Birth     |Keneba         |GAMBIA       |<20     |       1|      6|  1541|
|Birth     |Keneba         |GAMBIA       |>=30    |       0|    845|  1541|
|Birth     |Keneba         |GAMBIA       |>=30    |       1|     51|  1541|
|Birth     |MAL-ED         |INDIA        |[20-30) |       0|     25|    47|
|Birth     |MAL-ED         |INDIA        |[20-30) |       1|      5|    47|
|Birth     |MAL-ED         |INDIA        |<20     |       0|      4|    47|
|Birth     |MAL-ED         |INDIA        |<20     |       1|      2|    47|
|Birth     |MAL-ED         |INDIA        |>=30    |       0|      8|    47|
|Birth     |MAL-ED         |INDIA        |>=30    |       1|      3|    47|
|Birth     |MAL-ED         |BANGLADESH   |[20-30) |       0|    105|   231|
|Birth     |MAL-ED         |BANGLADESH   |[20-30) |       1|     27|   231|
|Birth     |MAL-ED         |BANGLADESH   |<20     |       0|     27|   231|
|Birth     |MAL-ED         |BANGLADESH   |<20     |       1|      8|   231|
|Birth     |MAL-ED         |BANGLADESH   |>=30    |       0|     55|   231|
|Birth     |MAL-ED         |BANGLADESH   |>=30    |       1|      9|   231|
|Birth     |MAL-ED         |PERU         |[20-30) |       0|     98|   233|
|Birth     |MAL-ED         |PERU         |[20-30) |       1|     14|   233|
|Birth     |MAL-ED         |PERU         |<20     |       0|     33|   233|
|Birth     |MAL-ED         |PERU         |<20     |       1|      6|   233|
|Birth     |MAL-ED         |PERU         |>=30    |       0|     76|   233|
|Birth     |MAL-ED         |PERU         |>=30    |       1|      6|   233|
|Birth     |MAL-ED         |NEPAL        |[20-30) |       0|     14|    27|
|Birth     |MAL-ED         |NEPAL        |[20-30) |       1|      2|    27|
|Birth     |MAL-ED         |NEPAL        |<20     |       0|      1|    27|
|Birth     |MAL-ED         |NEPAL        |<20     |       1|      0|    27|
|Birth     |MAL-ED         |NEPAL        |>=30    |       0|     10|    27|
|Birth     |MAL-ED         |NEPAL        |>=30    |       1|      0|    27|
|Birth     |MAL-ED         |BRAZIL       |[20-30) |       0|     29|    65|
|Birth     |MAL-ED         |BRAZIL       |[20-30) |       1|      3|    65|
|Birth     |MAL-ED         |BRAZIL       |<20     |       0|      8|    65|
|Birth     |MAL-ED         |BRAZIL       |<20     |       1|      3|    65|
|Birth     |MAL-ED         |BRAZIL       |>=30    |       0|     19|    65|
|Birth     |MAL-ED         |BRAZIL       |>=30    |       1|      3|    65|
|Birth     |MAL-ED         |TANZANIA     |[20-30) |       0|     48|   125|
|Birth     |MAL-ED         |TANZANIA     |[20-30) |       1|      8|   125|
|Birth     |MAL-ED         |TANZANIA     |<20     |       0|      9|   125|
|Birth     |MAL-ED         |TANZANIA     |<20     |       1|      0|   125|
|Birth     |MAL-ED         |TANZANIA     |>=30    |       0|     45|   125|
|Birth     |MAL-ED         |TANZANIA     |>=30    |       1|     15|   125|
|Birth     |MAL-ED         |SOUTH AFRICA |[20-30) |       0|     50|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |[20-30) |       1|      3|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |<20     |       0|     14|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |<20     |       1|      1|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |>=30    |       0|     49|   123|
|Birth     |MAL-ED         |SOUTH AFRICA |>=30    |       1|      6|   123|
|Birth     |NIH-Birth      |BANGLADESH   |[20-30) |       0|    306|   607|
|Birth     |NIH-Birth      |BANGLADESH   |[20-30) |       1|     56|   607|
|Birth     |NIH-Birth      |BANGLADESH   |<20     |       0|     96|   607|
|Birth     |NIH-Birth      |BANGLADESH   |<20     |       1|     20|   607|
|Birth     |NIH-Birth      |BANGLADESH   |>=30    |       0|    108|   607|
|Birth     |NIH-Birth      |BANGLADESH   |>=30    |       1|     21|   607|
|Birth     |NIH-Crypto     |BANGLADESH   |[20-30) |       0|    422|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |[20-30) |       1|     77|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |<20     |       0|     54|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |<20     |       1|      9|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |>=30    |       0|    155|   732|
|Birth     |NIH-Crypto     |BANGLADESH   |>=30    |       1|     15|   732|
|Birth     |PROBIT         |BELARUS      |[20-30) |       0|   9857| 13893|
|Birth     |PROBIT         |BELARUS      |[20-30) |       1|     24| 13893|
|Birth     |PROBIT         |BELARUS      |<20     |       0|   1481| 13893|
|Birth     |PROBIT         |BELARUS      |<20     |       1|      4| 13893|
|Birth     |PROBIT         |BELARUS      |>=30    |       0|   2521| 13893|
|Birth     |PROBIT         |BELARUS      |>=30    |       1|      6| 13893|
|Birth     |PROVIDE        |BANGLADESH   |[20-30) |       0|    317|   539|
|Birth     |PROVIDE        |BANGLADESH   |[20-30) |       1|     33|   539|
|Birth     |PROVIDE        |BANGLADESH   |<20     |       0|     51|   539|
|Birth     |PROVIDE        |BANGLADESH   |<20     |       1|      3|   539|
|Birth     |PROVIDE        |BANGLADESH   |>=30    |       0|    123|   539|
|Birth     |PROVIDE        |BANGLADESH   |>=30    |       1|     12|   539|
|Birth     |SAS-CompFeed   |INDIA        |[20-30) |       0|    664|  1251|
|Birth     |SAS-CompFeed   |INDIA        |[20-30) |       1|    257|  1251|
|Birth     |SAS-CompFeed   |INDIA        |<20     |       0|    137|  1251|
|Birth     |SAS-CompFeed   |INDIA        |<20     |       1|     51|  1251|
|Birth     |SAS-CompFeed   |INDIA        |>=30    |       0|    101|  1251|
|Birth     |SAS-CompFeed   |INDIA        |>=30    |       1|     41|  1251|
|Birth     |Vellore Crypto |INDIA        |[20-30) |       0|    236|   388|
|Birth     |Vellore Crypto |INDIA        |[20-30) |       1|     32|   388|
|Birth     |Vellore Crypto |INDIA        |<20     |       0|     48|   388|
|Birth     |Vellore Crypto |INDIA        |<20     |       1|      3|   388|
|Birth     |Vellore Crypto |INDIA        |>=30    |       0|     59|   388|
|Birth     |Vellore Crypto |INDIA        |>=30    |       1|     10|   388|
|Birth     |ZVITAMBO       |ZIMBABWE     |[20-30) |       0|   8597| 13854|
|Birth     |ZVITAMBO       |ZIMBABWE     |[20-30) |       1|    952| 13854|
|Birth     |ZVITAMBO       |ZIMBABWE     |<20     |       0|   2265| 13854|
|Birth     |ZVITAMBO       |ZIMBABWE     |<20     |       1|    311| 13854|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=30    |       0|   1563| 13854|
|Birth     |ZVITAMBO       |ZIMBABWE     |>=30    |       1|    166| 13854|
|6 months  |CMC-V-BCS-2002 |INDIA        |[20-30) |       0|    186|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |[20-30) |       1|     77|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |<20     |       0|     46|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |<20     |       1|     20|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |>=30    |       0|     26|   369|
|6 months  |CMC-V-BCS-2002 |INDIA        |>=30    |       1|     14|   369|
|6 months  |COHORTS        |INDIA        |[20-30) |       0|   2812|  5698|
|6 months  |COHORTS        |INDIA        |[20-30) |       1|    623|  5698|
|6 months  |COHORTS        |INDIA        |<20     |       0|    744|  5698|
|6 months  |COHORTS        |INDIA        |<20     |       1|    172|  5698|
|6 months  |COHORTS        |INDIA        |>=30    |       0|   1099|  5698|
|6 months  |COHORTS        |INDIA        |>=30    |       1|    248|  5698|
|6 months  |COHORTS        |GUATEMALA    |[20-30) |       0|    243|   958|
|6 months  |COHORTS        |GUATEMALA    |[20-30) |       1|    168|   958|
|6 months  |COHORTS        |GUATEMALA    |<20     |       0|    114|   958|
|6 months  |COHORTS        |GUATEMALA    |<20     |       1|     87|   958|
|6 months  |COHORTS        |GUATEMALA    |>=30    |       0|    208|   958|
|6 months  |COHORTS        |GUATEMALA    |>=30    |       1|    138|   958|
|6 months  |COHORTS        |PHILIPPINES  |[20-30) |       0|   1115|  2708|
|6 months  |COHORTS        |PHILIPPINES  |[20-30) |       1|    298|  2708|
|6 months  |COHORTS        |PHILIPPINES  |<20     |       0|    374|  2708|
|6 months  |COHORTS        |PHILIPPINES  |<20     |       1|     92|  2708|
|6 months  |COHORTS        |PHILIPPINES  |>=30    |       0|    647|  2708|
|6 months  |COHORTS        |PHILIPPINES  |>=30    |       1|    182|  2708|
|6 months  |EE             |PAKISTAN     |[20-30) |       0|     87|   372|
|6 months  |EE             |PAKISTAN     |[20-30) |       1|     68|   372|
|6 months  |EE             |PAKISTAN     |<20     |       0|      1|   372|
|6 months  |EE             |PAKISTAN     |<20     |       1|      1|   372|
|6 months  |EE             |PAKISTAN     |>=30    |       0|    102|   372|
|6 months  |EE             |PAKISTAN     |>=30    |       1|    113|   372|
|6 months  |GMS-Nepal      |NEPAL        |[20-30) |       0|    258|   564|
|6 months  |GMS-Nepal      |NEPAL        |[20-30) |       1|     77|   564|
|6 months  |GMS-Nepal      |NEPAL        |<20     |       0|    118|   564|
|6 months  |GMS-Nepal      |NEPAL        |<20     |       1|     23|   564|
|6 months  |GMS-Nepal      |NEPAL        |>=30    |       0|     66|   564|
|6 months  |GMS-Nepal      |NEPAL        |>=30    |       1|     22|   564|
|6 months  |Guatemala BSC  |GUATEMALA    |[20-30) |       0|     97|   286|
|6 months  |Guatemala BSC  |GUATEMALA    |[20-30) |       1|     49|   286|
|6 months  |Guatemala BSC  |GUATEMALA    |<20     |       0|     45|   286|
|6 months  |Guatemala BSC  |GUATEMALA    |<20     |       1|     13|   286|
|6 months  |Guatemala BSC  |GUATEMALA    |>=30    |       0|     58|   286|
|6 months  |Guatemala BSC  |GUATEMALA    |>=30    |       1|     24|   286|
|6 months  |JiVitA-3       |BANGLADESH   |[20-30) |       0|   5643| 16808|
|6 months  |JiVitA-3       |BANGLADESH   |[20-30) |       1|   1871| 16808|
|6 months  |JiVitA-3       |BANGLADESH   |<20     |       0|   5984| 16808|
|6 months  |JiVitA-3       |BANGLADESH   |<20     |       1|   2028| 16808|
|6 months  |JiVitA-3       |BANGLADESH   |>=30    |       0|    956| 16808|
|6 months  |JiVitA-3       |BANGLADESH   |>=30    |       1|    326| 16808|
|6 months  |Keneba         |GAMBIA       |[20-30) |       0|    568|  2086|
|6 months  |Keneba         |GAMBIA       |[20-30) |       1|     95|  2086|
|6 months  |Keneba         |GAMBIA       |<20     |       0|    170|  2086|
|6 months  |Keneba         |GAMBIA       |<20     |       1|     25|  2086|
|6 months  |Keneba         |GAMBIA       |>=30    |       0|   1053|  2086|
|6 months  |Keneba         |GAMBIA       |>=30    |       1|    175|  2086|
|6 months  |LCNI-5         |MALAWI       |[20-30) |       0|    265|   760|
|6 months  |LCNI-5         |MALAWI       |[20-30) |       1|    135|   760|
|6 months  |LCNI-5         |MALAWI       |<20     |       0|     92|   760|
|6 months  |LCNI-5         |MALAWI       |<20     |       1|     62|   760|
|6 months  |LCNI-5         |MALAWI       |>=30    |       0|    123|   760|
|6 months  |LCNI-5         |MALAWI       |>=30    |       1|     83|   760|
|6 months  |MAL-ED         |INDIA        |[20-30) |       0|    123|   236|
|6 months  |MAL-ED         |INDIA        |[20-30) |       1|     28|   236|
|6 months  |MAL-ED         |INDIA        |<20     |       0|     30|   236|
|6 months  |MAL-ED         |INDIA        |<20     |       1|      6|   236|
|6 months  |MAL-ED         |INDIA        |>=30    |       0|     38|   236|
|6 months  |MAL-ED         |INDIA        |>=30    |       1|     11|   236|
|6 months  |MAL-ED         |BANGLADESH   |[20-30) |       0|    115|   241|
|6 months  |MAL-ED         |BANGLADESH   |[20-30) |       1|     26|   241|
|6 months  |MAL-ED         |BANGLADESH   |<20     |       0|     27|   241|
|6 months  |MAL-ED         |BANGLADESH   |<20     |       1|      8|   241|
|6 months  |MAL-ED         |BANGLADESH   |>=30    |       0|     55|   241|
|6 months  |MAL-ED         |BANGLADESH   |>=30    |       1|     10|   241|
|6 months  |MAL-ED         |PERU         |[20-30) |       0|    106|   273|
|6 months  |MAL-ED         |PERU         |[20-30) |       1|     30|   273|
|6 months  |MAL-ED         |PERU         |<20     |       0|     33|   273|
|6 months  |MAL-ED         |PERU         |<20     |       1|     11|   273|
|6 months  |MAL-ED         |PERU         |>=30    |       0|     74|   273|
|6 months  |MAL-ED         |PERU         |>=30    |       1|     19|   273|
|6 months  |MAL-ED         |NEPAL        |[20-30) |       0|    139|   236|
|6 months  |MAL-ED         |NEPAL        |[20-30) |       1|      7|   236|
|6 months  |MAL-ED         |NEPAL        |<20     |       0|      8|   236|
|6 months  |MAL-ED         |NEPAL        |<20     |       1|      1|   236|
|6 months  |MAL-ED         |NEPAL        |>=30    |       0|     77|   236|
|6 months  |MAL-ED         |NEPAL        |>=30    |       1|      4|   236|
|6 months  |MAL-ED         |BRAZIL       |[20-30) |       0|    105|   209|
|6 months  |MAL-ED         |BRAZIL       |[20-30) |       1|      5|   209|
|6 months  |MAL-ED         |BRAZIL       |<20     |       0|     23|   209|
|6 months  |MAL-ED         |BRAZIL       |<20     |       1|      0|   209|
|6 months  |MAL-ED         |BRAZIL       |>=30    |       0|     75|   209|
|6 months  |MAL-ED         |BRAZIL       |>=30    |       1|      1|   209|
|6 months  |MAL-ED         |TANZANIA     |[20-30) |       0|     90|   247|
|6 months  |MAL-ED         |TANZANIA     |[20-30) |       1|     16|   247|
|6 months  |MAL-ED         |TANZANIA     |<20     |       0|     10|   247|
|6 months  |MAL-ED         |TANZANIA     |<20     |       1|      2|   247|
|6 months  |MAL-ED         |TANZANIA     |>=30    |       0|     88|   247|
|6 months  |MAL-ED         |TANZANIA     |>=30    |       1|     41|   247|
|6 months  |MAL-ED         |SOUTH AFRICA |[20-30) |       0|     86|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |[20-30) |       1|     28|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |<20     |       0|     31|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |<20     |       1|      2|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |>=30    |       0|     87|   254|
|6 months  |MAL-ED         |SOUTH AFRICA |>=30    |       1|     20|   254|
|6 months  |NIH-Birth      |BANGLADESH   |[20-30) |       0|    245|   536|
|6 months  |NIH-Birth      |BANGLADESH   |[20-30) |       1|     78|   536|
|6 months  |NIH-Birth      |BANGLADESH   |<20     |       0|     73|   536|
|6 months  |NIH-Birth      |BANGLADESH   |<20     |       1|     27|   536|
|6 months  |NIH-Birth      |BANGLADESH   |>=30    |       0|     74|   536|
|6 months  |NIH-Birth      |BANGLADESH   |>=30    |       1|     39|   536|
|6 months  |NIH-Crypto     |BANGLADESH   |[20-30) |       0|    376|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |[20-30) |       1|    111|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |<20     |       0|     50|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |<20     |       1|      9|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |>=30    |       0|    139|   715|
|6 months  |NIH-Crypto     |BANGLADESH   |>=30    |       1|     30|   715|
|6 months  |PROBIT         |BELARUS      |[20-30) |       0|  10817| 15760|
|6 months  |PROBIT         |BELARUS      |[20-30) |       1|    447| 15760|
|6 months  |PROBIT         |BELARUS      |<20     |       0|   1640| 15760|
|6 months  |PROBIT         |BELARUS      |<20     |       1|     66| 15760|
|6 months  |PROBIT         |BELARUS      |>=30    |       0|   2683| 15760|
|6 months  |PROBIT         |BELARUS      |>=30    |       1|    107| 15760|
|6 months  |PROVIDE        |BANGLADESH   |[20-30) |       0|    329|   604|
|6 months  |PROVIDE        |BANGLADESH   |[20-30) |       1|     62|   604|
|6 months  |PROVIDE        |BANGLADESH   |<20     |       0|     49|   604|
|6 months  |PROVIDE        |BANGLADESH   |<20     |       1|     11|   604|
|6 months  |PROVIDE        |BANGLADESH   |>=30    |       0|    130|   604|
|6 months  |PROVIDE        |BANGLADESH   |>=30    |       1|     23|   604|
|6 months  |SAS-CompFeed   |INDIA        |[20-30) |       0|    707|  1336|
|6 months  |SAS-CompFeed   |INDIA        |[20-30) |       1|    272|  1336|
|6 months  |SAS-CompFeed   |INDIA        |<20     |       0|    137|  1336|
|6 months  |SAS-CompFeed   |INDIA        |<20     |       1|     68|  1336|
|6 months  |SAS-CompFeed   |INDIA        |>=30    |       0|    112|  1336|
|6 months  |SAS-CompFeed   |INDIA        |>=30    |       1|     40|  1336|
|6 months  |SAS-FoodSuppl  |INDIA        |[20-30) |       0|    142|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |[20-30) |       1|    101|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |<20     |       0|     12|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |<20     |       1|     12|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |>=30    |       0|     63|   380|
|6 months  |SAS-FoodSuppl  |INDIA        |>=30    |       1|     50|   380|
|6 months  |TanzaniaChild2 |TANZANIA     |[20-30) |       0|    988|  2027|
|6 months  |TanzaniaChild2 |TANZANIA     |[20-30) |       1|    100|  2027|
|6 months  |TanzaniaChild2 |TANZANIA     |<20     |       0|    300|  2027|
|6 months  |TanzaniaChild2 |TANZANIA     |<20     |       1|     37|  2027|
|6 months  |TanzaniaChild2 |TANZANIA     |>=30    |       0|    542|  2027|
|6 months  |TanzaniaChild2 |TANZANIA     |>=30    |       1|     60|  2027|
|6 months  |Vellore Crypto |INDIA        |[20-30) |       0|    208|   407|
|6 months  |Vellore Crypto |INDIA        |[20-30) |       1|     71|   407|
|6 months  |Vellore Crypto |INDIA        |<20     |       0|     39|   407|
|6 months  |Vellore Crypto |INDIA        |<20     |       1|     15|   407|
|6 months  |Vellore Crypto |INDIA        |>=30    |       0|     60|   407|
|6 months  |Vellore Crypto |INDIA        |>=30    |       1|     14|   407|
|6 months  |ZVITAMBO       |ZIMBABWE     |[20-30) |       0|   5034|  8657|
|6 months  |ZVITAMBO       |ZIMBABWE     |[20-30) |       1|    955|  8657|
|6 months  |ZVITAMBO       |ZIMBABWE     |<20     |       0|   1259|  8657|
|6 months  |ZVITAMBO       |ZIMBABWE     |<20     |       1|    254|  8657|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=30    |       0|    954|  8657|
|6 months  |ZVITAMBO       |ZIMBABWE     |>=30    |       1|    201|  8657|
|24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |       0|     77|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |[20-30) |       1|    187|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |<20     |       0|     14|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |<20     |       1|     53|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |>=30    |       0|     14|   371|
|24 months |CMC-V-BCS-2002 |INDIA        |>=30    |       1|     26|   371|
|24 months |COHORTS        |INDIA        |[20-30) |       0|   1242|  4412|
|24 months |COHORTS        |INDIA        |[20-30) |       1|   1424|  4412|
|24 months |COHORTS        |INDIA        |<20     |       0|    352|  4412|
|24 months |COHORTS        |INDIA        |<20     |       1|    362|  4412|
|24 months |COHORTS        |INDIA        |>=30    |       0|    461|  4412|
|24 months |COHORTS        |INDIA        |>=30    |       1|    571|  4412|
|24 months |COHORTS        |GUATEMALA    |[20-30) |       0|     80|  1064|
|24 months |COHORTS        |GUATEMALA    |[20-30) |       1|    377|  1064|
|24 months |COHORTS        |GUATEMALA    |<20     |       0|     42|  1064|
|24 months |COHORTS        |GUATEMALA    |<20     |       1|    172|  1064|
|24 months |COHORTS        |GUATEMALA    |>=30    |       0|     79|  1064|
|24 months |COHORTS        |GUATEMALA    |>=30    |       1|    314|  1064|
|24 months |COHORTS        |PHILIPPINES  |[20-30) |       0|    466|  2445|
|24 months |COHORTS        |PHILIPPINES  |[20-30) |       1|    803|  2445|
|24 months |COHORTS        |PHILIPPINES  |<20     |       0|    150|  2445|
|24 months |COHORTS        |PHILIPPINES  |<20     |       1|    268|  2445|
|24 months |COHORTS        |PHILIPPINES  |>=30    |       0|    306|  2445|
|24 months |COHORTS        |PHILIPPINES  |>=30    |       1|    452|  2445|
|24 months |EE             |PAKISTAN     |[20-30) |       0|     21|   167|
|24 months |EE             |PAKISTAN     |[20-30) |       1|     44|   167|
|24 months |EE             |PAKISTAN     |<20     |       0|      0|   167|
|24 months |EE             |PAKISTAN     |<20     |       1|      2|   167|
|24 months |EE             |PAKISTAN     |>=30    |       0|     28|   167|
|24 months |EE             |PAKISTAN     |>=30    |       1|     72|   167|
|24 months |GMS-Nepal      |NEPAL        |[20-30) |       0|    157|   488|
|24 months |GMS-Nepal      |NEPAL        |[20-30) |       1|    131|   488|
|24 months |GMS-Nepal      |NEPAL        |<20     |       0|     67|   488|
|24 months |GMS-Nepal      |NEPAL        |<20     |       1|     58|   488|
|24 months |GMS-Nepal      |NEPAL        |>=30    |       0|     45|   488|
|24 months |GMS-Nepal      |NEPAL        |>=30    |       1|     30|   488|
|24 months |JiVitA-3       |BANGLADESH   |[20-30) |       0|   2007|  8630|
|24 months |JiVitA-3       |BANGLADESH   |[20-30) |       1|   1929|  8630|
|24 months |JiVitA-3       |BANGLADESH   |<20     |       0|   2034|  8630|
|24 months |JiVitA-3       |BANGLADESH   |<20     |       1|   1934|  8630|
|24 months |JiVitA-3       |BANGLADESH   |>=30    |       0|    352|  8630|
|24 months |JiVitA-3       |BANGLADESH   |>=30    |       1|    374|  8630|
|24 months |Keneba         |GAMBIA       |[20-30) |       0|    372|  1723|
|24 months |Keneba         |GAMBIA       |[20-30) |       1|    184|  1723|
|24 months |Keneba         |GAMBIA       |<20     |       0|    101|  1723|
|24 months |Keneba         |GAMBIA       |<20     |       1|     49|  1723|
|24 months |Keneba         |GAMBIA       |>=30    |       0|    669|  1723|
|24 months |Keneba         |GAMBIA       |>=30    |       1|    348|  1723|
|24 months |LCNI-5         |MALAWI       |[20-30) |       0|    152|   526|
|24 months |LCNI-5         |MALAWI       |[20-30) |       1|    110|   526|
|24 months |LCNI-5         |MALAWI       |<20     |       0|     61|   526|
|24 months |LCNI-5         |MALAWI       |<20     |       1|     54|   526|
|24 months |LCNI-5         |MALAWI       |>=30    |       0|     80|   526|
|24 months |LCNI-5         |MALAWI       |>=30    |       1|     69|   526|
|24 months |MAL-ED         |INDIA        |[20-30) |       0|     83|   227|
|24 months |MAL-ED         |INDIA        |[20-30) |       1|     60|   227|
|24 months |MAL-ED         |INDIA        |<20     |       0|     19|   227|
|24 months |MAL-ED         |INDIA        |<20     |       1|     17|   227|
|24 months |MAL-ED         |INDIA        |>=30    |       0|     28|   227|
|24 months |MAL-ED         |INDIA        |>=30    |       1|     20|   227|
|24 months |MAL-ED         |BANGLADESH   |[20-30) |       0|     65|   212|
|24 months |MAL-ED         |BANGLADESH   |[20-30) |       1|     60|   212|
|24 months |MAL-ED         |BANGLADESH   |<20     |       0|     15|   212|
|24 months |MAL-ED         |BANGLADESH   |<20     |       1|     16|   212|
|24 months |MAL-ED         |BANGLADESH   |>=30    |       0|     31|   212|
|24 months |MAL-ED         |BANGLADESH   |>=30    |       1|     25|   212|
|24 months |MAL-ED         |PERU         |[20-30) |       0|     59|   201|
|24 months |MAL-ED         |PERU         |[20-30) |       1|     38|   201|
|24 months |MAL-ED         |PERU         |<20     |       0|     20|   201|
|24 months |MAL-ED         |PERU         |<20     |       1|     13|   201|
|24 months |MAL-ED         |PERU         |>=30    |       0|     48|   201|
|24 months |MAL-ED         |PERU         |>=30    |       1|     23|   201|
|24 months |MAL-ED         |NEPAL        |[20-30) |       0|    109|   228|
|24 months |MAL-ED         |NEPAL        |[20-30) |       1|     32|   228|
|24 months |MAL-ED         |NEPAL        |<20     |       0|      5|   228|
|24 months |MAL-ED         |NEPAL        |<20     |       1|      4|   228|
|24 months |MAL-ED         |NEPAL        |>=30    |       0|     64|   228|
|24 months |MAL-ED         |NEPAL        |>=30    |       1|     14|   228|
|24 months |MAL-ED         |BRAZIL       |[20-30) |       0|     88|   169|
|24 months |MAL-ED         |BRAZIL       |[20-30) |       1|      3|   169|
|24 months |MAL-ED         |BRAZIL       |<20     |       0|     17|   169|
|24 months |MAL-ED         |BRAZIL       |<20     |       1|      0|   169|
|24 months |MAL-ED         |BRAZIL       |>=30    |       0|     57|   169|
|24 months |MAL-ED         |BRAZIL       |>=30    |       1|      4|   169|
|24 months |MAL-ED         |TANZANIA     |[20-30) |       0|     27|   214|
|24 months |MAL-ED         |TANZANIA     |[20-30) |       1|     60|   214|
|24 months |MAL-ED         |TANZANIA     |<20     |       0|      3|   214|
|24 months |MAL-ED         |TANZANIA     |<20     |       1|      7|   214|
|24 months |MAL-ED         |TANZANIA     |>=30    |       0|     29|   214|
|24 months |MAL-ED         |TANZANIA     |>=30    |       1|     88|   214|
|24 months |MAL-ED         |SOUTH AFRICA |[20-30) |       0|     65|   238|
|24 months |MAL-ED         |SOUTH AFRICA |[20-30) |       1|     43|   238|
|24 months |MAL-ED         |SOUTH AFRICA |<20     |       0|     27|   238|
|24 months |MAL-ED         |SOUTH AFRICA |<20     |       1|      4|   238|
|24 months |MAL-ED         |SOUTH AFRICA |>=30    |       0|     62|   238|
|24 months |MAL-ED         |SOUTH AFRICA |>=30    |       1|     37|   238|
|24 months |NIH-Birth      |BANGLADESH   |[20-30) |       0|    114|   428|
|24 months |NIH-Birth      |BANGLADESH   |[20-30) |       1|    143|   428|
|24 months |NIH-Birth      |BANGLADESH   |<20     |       0|     42|   428|
|24 months |NIH-Birth      |BANGLADESH   |<20     |       1|     38|   428|
|24 months |NIH-Birth      |BANGLADESH   |>=30    |       0|     28|   428|
|24 months |NIH-Birth      |BANGLADESH   |>=30    |       1|     63|   428|
|24 months |NIH-Crypto     |BANGLADESH   |[20-30) |       0|    250|   514|
|24 months |NIH-Crypto     |BANGLADESH   |[20-30) |       1|     99|   514|
|24 months |NIH-Crypto     |BANGLADESH   |<20     |       0|     41|   514|
|24 months |NIH-Crypto     |BANGLADESH   |<20     |       1|      8|   514|
|24 months |NIH-Crypto     |BANGLADESH   |>=30    |       0|     91|   514|
|24 months |NIH-Crypto     |BANGLADESH   |>=30    |       1|     25|   514|
|24 months |PROBIT         |BELARUS      |[20-30) |       0|   2665|  4035|
|24 months |PROBIT         |BELARUS      |[20-30) |       1|    192|  4035|
|24 months |PROBIT         |BELARUS      |<20     |       0|    403|  4035|
|24 months |PROBIT         |BELARUS      |<20     |       1|     34|  4035|
|24 months |PROBIT         |BELARUS      |>=30    |       0|    692|  4035|
|24 months |PROBIT         |BELARUS      |>=30    |       1|     49|  4035|
|24 months |PROVIDE        |BANGLADESH   |[20-30) |       0|    252|   578|
|24 months |PROVIDE        |BANGLADESH   |[20-30) |       1|    123|   578|
|24 months |PROVIDE        |BANGLADESH   |<20     |       0|     40|   578|
|24 months |PROVIDE        |BANGLADESH   |<20     |       1|     19|   578|
|24 months |PROVIDE        |BANGLADESH   |>=30    |       0|     96|   578|
|24 months |PROVIDE        |BANGLADESH   |>=30    |       1|     48|   578|
|24 months |TanzaniaChild2 |TANZANIA     |[20-30) |       0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |[20-30) |       1|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |<20     |       0|      2|     6|
|24 months |TanzaniaChild2 |TANZANIA     |<20     |       1|      0|     6|
|24 months |TanzaniaChild2 |TANZANIA     |>=30    |       0|      1|     6|
|24 months |TanzaniaChild2 |TANZANIA     |>=30    |       1|      0|     6|
|24 months |Vellore Crypto |INDIA        |[20-30) |       0|    159|   409|
|24 months |Vellore Crypto |INDIA        |[20-30) |       1|    121|   409|
|24 months |Vellore Crypto |INDIA        |<20     |       0|     34|   409|
|24 months |Vellore Crypto |INDIA        |<20     |       1|     20|   409|
|24 months |Vellore Crypto |INDIA        |>=30    |       0|     44|   409|
|24 months |Vellore Crypto |INDIA        |>=30    |       1|     31|   409|
|24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |       0|    734|  1636|
|24 months |ZVITAMBO       |ZIMBABWE     |[20-30) |       1|    393|  1636|
|24 months |ZVITAMBO       |ZIMBABWE     |<20     |       0|    191|  1636|
|24 months |ZVITAMBO       |ZIMBABWE     |<20     |       1|     97|  1636|
|24 months |ZVITAMBO       |ZIMBABWE     |>=30    |       0|    143|  1636|
|24 months |ZVITAMBO       |ZIMBABWE     |>=30    |       1|     78|  1636|


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
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: Vellore Crypto, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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


