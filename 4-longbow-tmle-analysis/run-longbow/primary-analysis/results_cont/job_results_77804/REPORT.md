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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** month

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* syntype
* agecat
* studyid
* country

## Data Summary

|syntype |agecat    |studyid        |country      |month | n_cell|     n|
|:-------|:---------|:--------------|:------------|:-----|------:|-----:|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA        |1     |      9|    86|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA        |2     |      1|    86|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA        |3     |      7|    86|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA        |4     |      9|    86|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA        |5     |     10|    86|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA        |6     |      9|    86|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA        |7     |      7|    86|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA        |8     |      4|    86|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA        |9     |      8|    86|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA        |10    |      8|    86|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA        |11    |     11|    86|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA        |12    |      3|    86|
|BC      |Birth     |CMC-V-BCS-2002 |INDIA        |NaN   |      0|    86|
|BC      |Birth     |CMIN           |BANGLADESH   |1     |      0|    19|
|BC      |Birth     |CMIN           |BANGLADESH   |2     |      4|    19|
|BC      |Birth     |CMIN           |BANGLADESH   |3     |      2|    19|
|BC      |Birth     |CMIN           |BANGLADESH   |4     |      0|    19|
|BC      |Birth     |CMIN           |BANGLADESH   |5     |      3|    19|
|BC      |Birth     |CMIN           |BANGLADESH   |6     |      0|    19|
|BC      |Birth     |CMIN           |BANGLADESH   |7     |      0|    19|
|BC      |Birth     |CMIN           |BANGLADESH   |8     |      5|    19|
|BC      |Birth     |CMIN           |BANGLADESH   |9     |      2|    19|
|BC      |Birth     |CMIN           |BANGLADESH   |10    |      1|    19|
|BC      |Birth     |CMIN           |BANGLADESH   |11    |      2|    19|
|BC      |Birth     |CMIN           |BANGLADESH   |12    |      0|    19|
|BC      |Birth     |CMIN           |BANGLADESH   |NaN   |      0|    19|
|BC      |Birth     |CONTENT        |PERU         |1     |      0|     2|
|BC      |Birth     |CONTENT        |PERU         |2     |      0|     2|
|BC      |Birth     |CONTENT        |PERU         |3     |      0|     2|
|BC      |Birth     |CONTENT        |PERU         |4     |      0|     2|
|BC      |Birth     |CONTENT        |PERU         |5     |      2|     2|
|BC      |Birth     |CONTENT        |PERU         |6     |      0|     2|
|BC      |Birth     |CONTENT        |PERU         |7     |      0|     2|
|BC      |Birth     |CONTENT        |PERU         |8     |      0|     2|
|BC      |Birth     |CONTENT        |PERU         |9     |      0|     2|
|BC      |Birth     |CONTENT        |PERU         |10    |      0|     2|
|BC      |Birth     |CONTENT        |PERU         |11    |      0|     2|
|BC      |Birth     |CONTENT        |PERU         |12    |      0|     2|
|BC      |Birth     |CONTENT        |PERU         |NaN   |      0|     2|
|BC      |Birth     |EE             |PAKISTAN     |1     |     39|   177|
|BC      |Birth     |EE             |PAKISTAN     |2     |     36|   177|
|BC      |Birth     |EE             |PAKISTAN     |3     |     16|   177|
|BC      |Birth     |EE             |PAKISTAN     |4     |      7|   177|
|BC      |Birth     |EE             |PAKISTAN     |5     |      0|   177|
|BC      |Birth     |EE             |PAKISTAN     |6     |      0|   177|
|BC      |Birth     |EE             |PAKISTAN     |7     |      0|   177|
|BC      |Birth     |EE             |PAKISTAN     |8     |      0|   177|
|BC      |Birth     |EE             |PAKISTAN     |9     |      0|   177|
|BC      |Birth     |EE             |PAKISTAN     |10    |      0|   177|
|BC      |Birth     |EE             |PAKISTAN     |11    |     41|   177|
|BC      |Birth     |EE             |PAKISTAN     |12    |     38|   177|
|BC      |Birth     |EE             |PAKISTAN     |NaN   |      0|   177|
|BC      |Birth     |GMS-Nepal      |NEPAL        |1     |      0|   641|
|BC      |Birth     |GMS-Nepal      |NEPAL        |2     |      0|   641|
|BC      |Birth     |GMS-Nepal      |NEPAL        |3     |      0|   641|
|BC      |Birth     |GMS-Nepal      |NEPAL        |4     |      1|   641|
|BC      |Birth     |GMS-Nepal      |NEPAL        |5     |      0|   641|
|BC      |Birth     |GMS-Nepal      |NEPAL        |6     |    151|   641|
|BC      |Birth     |GMS-Nepal      |NEPAL        |7     |    240|   641|
|BC      |Birth     |GMS-Nepal      |NEPAL        |8     |    249|   641|
|BC      |Birth     |GMS-Nepal      |NEPAL        |9     |      0|   641|
|BC      |Birth     |GMS-Nepal      |NEPAL        |10    |      0|   641|
|BC      |Birth     |GMS-Nepal      |NEPAL        |11    |      0|   641|
|BC      |Birth     |GMS-Nepal      |NEPAL        |12    |      0|   641|
|BC      |Birth     |GMS-Nepal      |NEPAL        |NaN   |      0|   641|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |1     |   1628| 18014|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |2     |   1411| 18014|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |3     |   1715| 18014|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |4     |   1254| 18014|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |5     |    895| 18014|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |6     |    918| 18014|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |7     |   1052| 18014|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |8     |   1382| 18014|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |9     |   1863| 18014|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |10    |   1913| 18014|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |11    |   1905| 18014|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |12    |   2078| 18014|
|BC      |Birth     |JiVitA-3       |BANGLADESH   |NaN   |      0| 18014|
|BC      |Birth     |JiVitA-4       |BANGLADESH   |1     |      0|  2396|
|BC      |Birth     |JiVitA-4       |BANGLADESH   |2     |    277|  2396|
|BC      |Birth     |JiVitA-4       |BANGLADESH   |3     |    316|  2396|
|BC      |Birth     |JiVitA-4       |BANGLADESH   |4     |    395|  2396|
|BC      |Birth     |JiVitA-4       |BANGLADESH   |5     |    377|  2396|
|BC      |Birth     |JiVitA-4       |BANGLADESH   |6     |    295|  2396|
|BC      |Birth     |JiVitA-4       |BANGLADESH   |7     |    315|  2396|
|BC      |Birth     |JiVitA-4       |BANGLADESH   |8     |    226|  2396|
|BC      |Birth     |JiVitA-4       |BANGLADESH   |9     |    134|  2396|
|BC      |Birth     |JiVitA-4       |BANGLADESH   |10    |     61|  2396|
|BC      |Birth     |JiVitA-4       |BANGLADESH   |11    |      0|  2396|
|BC      |Birth     |JiVitA-4       |BANGLADESH   |12    |      0|  2396|
|BC      |Birth     |JiVitA-4       |BANGLADESH   |NaN   |      0|  2396|
|BC      |Birth     |Keneba         |GAMBIA       |1     |    133|  1466|
|BC      |Birth     |Keneba         |GAMBIA       |2     |    153|  1466|
|BC      |Birth     |Keneba         |GAMBIA       |3     |    140|  1466|
|BC      |Birth     |Keneba         |GAMBIA       |4     |    159|  1466|
|BC      |Birth     |Keneba         |GAMBIA       |5     |    103|  1466|
|BC      |Birth     |Keneba         |GAMBIA       |6     |    102|  1466|
|BC      |Birth     |Keneba         |GAMBIA       |7     |     85|  1466|
|BC      |Birth     |Keneba         |GAMBIA       |8     |     74|  1466|
|BC      |Birth     |Keneba         |GAMBIA       |9     |    116|  1466|
|BC      |Birth     |Keneba         |GAMBIA       |10    |    118|  1466|
|BC      |Birth     |Keneba         |GAMBIA       |11    |    168|  1466|
|BC      |Birth     |Keneba         |GAMBIA       |12    |    115|  1466|
|BC      |Birth     |Keneba         |GAMBIA       |NaN   |      0|  1466|
|BC      |Birth     |MAL-ED         |INDIA        |1     |      2|    45|
|BC      |Birth     |MAL-ED         |INDIA        |2     |      6|    45|
|BC      |Birth     |MAL-ED         |INDIA        |3     |      3|    45|
|BC      |Birth     |MAL-ED         |INDIA        |4     |      5|    45|
|BC      |Birth     |MAL-ED         |INDIA        |5     |      4|    45|
|BC      |Birth     |MAL-ED         |INDIA        |6     |      1|    45|
|BC      |Birth     |MAL-ED         |INDIA        |7     |      3|    45|
|BC      |Birth     |MAL-ED         |INDIA        |8     |      9|    45|
|BC      |Birth     |MAL-ED         |INDIA        |9     |      3|    45|
|BC      |Birth     |MAL-ED         |INDIA        |10    |      6|    45|
|BC      |Birth     |MAL-ED         |INDIA        |11    |      3|    45|
|BC      |Birth     |MAL-ED         |INDIA        |12    |      0|    45|
|BC      |Birth     |MAL-ED         |INDIA        |NaN   |      0|    45|
|BC      |Birth     |MAL-ED         |BANGLADESH   |1     |     19|   215|
|BC      |Birth     |MAL-ED         |BANGLADESH   |2     |     19|   215|
|BC      |Birth     |MAL-ED         |BANGLADESH   |3     |     24|   215|
|BC      |Birth     |MAL-ED         |BANGLADESH   |4     |     19|   215|
|BC      |Birth     |MAL-ED         |BANGLADESH   |5     |     17|   215|
|BC      |Birth     |MAL-ED         |BANGLADESH   |6     |      6|   215|
|BC      |Birth     |MAL-ED         |BANGLADESH   |7     |     14|   215|
|BC      |Birth     |MAL-ED         |BANGLADESH   |8     |     22|   215|
|BC      |Birth     |MAL-ED         |BANGLADESH   |9     |     17|   215|
|BC      |Birth     |MAL-ED         |BANGLADESH   |10    |     19|   215|
|BC      |Birth     |MAL-ED         |BANGLADESH   |11    |     15|   215|
|BC      |Birth     |MAL-ED         |BANGLADESH   |12    |     24|   215|
|BC      |Birth     |MAL-ED         |BANGLADESH   |NaN   |      0|   215|
|BC      |Birth     |MAL-ED         |PERU         |1     |     27|   228|
|BC      |Birth     |MAL-ED         |PERU         |2     |     19|   228|
|BC      |Birth     |MAL-ED         |PERU         |3     |     19|   228|
|BC      |Birth     |MAL-ED         |PERU         |4     |     14|   228|
|BC      |Birth     |MAL-ED         |PERU         |5     |     19|   228|
|BC      |Birth     |MAL-ED         |PERU         |6     |     14|   228|
|BC      |Birth     |MAL-ED         |PERU         |7     |     19|   228|
|BC      |Birth     |MAL-ED         |PERU         |8     |     16|   228|
|BC      |Birth     |MAL-ED         |PERU         |9     |     19|   228|
|BC      |Birth     |MAL-ED         |PERU         |10    |     20|   228|
|BC      |Birth     |MAL-ED         |PERU         |11    |     28|   228|
|BC      |Birth     |MAL-ED         |PERU         |12    |     14|   228|
|BC      |Birth     |MAL-ED         |PERU         |NaN   |      0|   228|
|BC      |Birth     |MAL-ED         |NEPAL        |1     |      2|    26|
|BC      |Birth     |MAL-ED         |NEPAL        |2     |      2|    26|
|BC      |Birth     |MAL-ED         |NEPAL        |3     |      1|    26|
|BC      |Birth     |MAL-ED         |NEPAL        |4     |      2|    26|
|BC      |Birth     |MAL-ED         |NEPAL        |5     |      2|    26|
|BC      |Birth     |MAL-ED         |NEPAL        |6     |      3|    26|
|BC      |Birth     |MAL-ED         |NEPAL        |7     |      2|    26|
|BC      |Birth     |MAL-ED         |NEPAL        |8     |      1|    26|
|BC      |Birth     |MAL-ED         |NEPAL        |9     |      2|    26|
|BC      |Birth     |MAL-ED         |NEPAL        |10    |      4|    26|
|BC      |Birth     |MAL-ED         |NEPAL        |11    |      4|    26|
|BC      |Birth     |MAL-ED         |NEPAL        |12    |      1|    26|
|BC      |Birth     |MAL-ED         |NEPAL        |NaN   |      0|    26|
|BC      |Birth     |MAL-ED         |BRAZIL       |1     |      5|    62|
|BC      |Birth     |MAL-ED         |BRAZIL       |2     |     10|    62|
|BC      |Birth     |MAL-ED         |BRAZIL       |3     |      7|    62|
|BC      |Birth     |MAL-ED         |BRAZIL       |4     |      4|    62|
|BC      |Birth     |MAL-ED         |BRAZIL       |5     |      1|    62|
|BC      |Birth     |MAL-ED         |BRAZIL       |6     |      5|    62|
|BC      |Birth     |MAL-ED         |BRAZIL       |7     |      6|    62|
|BC      |Birth     |MAL-ED         |BRAZIL       |8     |      6|    62|
|BC      |Birth     |MAL-ED         |BRAZIL       |9     |      5|    62|
|BC      |Birth     |MAL-ED         |BRAZIL       |10    |      5|    62|
|BC      |Birth     |MAL-ED         |BRAZIL       |11    |      4|    62|
|BC      |Birth     |MAL-ED         |BRAZIL       |12    |      4|    62|
|BC      |Birth     |MAL-ED         |BRAZIL       |NaN   |      0|    62|
|BC      |Birth     |MAL-ED         |TANZANIA     |1     |     10|   115|
|BC      |Birth     |MAL-ED         |TANZANIA     |2     |     14|   115|
|BC      |Birth     |MAL-ED         |TANZANIA     |3     |     13|   115|
|BC      |Birth     |MAL-ED         |TANZANIA     |4     |      7|   115|
|BC      |Birth     |MAL-ED         |TANZANIA     |5     |     10|   115|
|BC      |Birth     |MAL-ED         |TANZANIA     |6     |      8|   115|
|BC      |Birth     |MAL-ED         |TANZANIA     |7     |     15|   115|
|BC      |Birth     |MAL-ED         |TANZANIA     |8     |      7|   115|
|BC      |Birth     |MAL-ED         |TANZANIA     |9     |      1|   115|
|BC      |Birth     |MAL-ED         |TANZANIA     |10    |      8|   115|
|BC      |Birth     |MAL-ED         |TANZANIA     |11    |     13|   115|
|BC      |Birth     |MAL-ED         |TANZANIA     |12    |      9|   115|
|BC      |Birth     |MAL-ED         |TANZANIA     |NaN   |      0|   115|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |1     |      9|   120|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |2     |     13|   120|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |3     |      8|   120|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |4     |      6|   120|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |5     |      6|   120|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |6     |      7|   120|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |7     |     13|   120|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |8     |      4|   120|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |9     |     10|   120|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |10    |     13|   120|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |11    |     13|   120|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |12    |     18|   120|
|BC      |Birth     |MAL-ED         |SOUTH AFRICA |NaN   |      0|   120|
|BC      |Birth     |NIH-Birth      |BANGLADESH   |1     |     54|   575|
|BC      |Birth     |NIH-Birth      |BANGLADESH   |2     |     55|   575|
|BC      |Birth     |NIH-Birth      |BANGLADESH   |3     |     58|   575|
|BC      |Birth     |NIH-Birth      |BANGLADESH   |4     |     48|   575|
|BC      |Birth     |NIH-Birth      |BANGLADESH   |5     |     45|   575|
|BC      |Birth     |NIH-Birth      |BANGLADESH   |6     |     40|   575|
|BC      |Birth     |NIH-Birth      |BANGLADESH   |7     |     45|   575|
|BC      |Birth     |NIH-Birth      |BANGLADESH   |8     |     41|   575|
|BC      |Birth     |NIH-Birth      |BANGLADESH   |9     |     31|   575|
|BC      |Birth     |NIH-Birth      |BANGLADESH   |10    |     58|   575|
|BC      |Birth     |NIH-Birth      |BANGLADESH   |11    |     49|   575|
|BC      |Birth     |NIH-Birth      |BANGLADESH   |12    |     51|   575|
|BC      |Birth     |NIH-Birth      |BANGLADESH   |NaN   |      0|   575|
|BC      |Birth     |PROBIT         |BELARUS      |1     |    855| 13817|
|BC      |Birth     |PROBIT         |BELARUS      |2     |    785| 13817|
|BC      |Birth     |PROBIT         |BELARUS      |3     |    960| 13817|
|BC      |Birth     |PROBIT         |BELARUS      |4     |    955| 13817|
|BC      |Birth     |PROBIT         |BELARUS      |5     |    949| 13817|
|BC      |Birth     |PROBIT         |BELARUS      |6     |   1006| 13817|
|BC      |Birth     |PROBIT         |BELARUS      |7     |   1275| 13817|
|BC      |Birth     |PROBIT         |BELARUS      |8     |   1318| 13817|
|BC      |Birth     |PROBIT         |BELARUS      |9     |   1311| 13817|
|BC      |Birth     |PROBIT         |BELARUS      |10    |   1496| 13817|
|BC      |Birth     |PROBIT         |BELARUS      |11    |   1392| 13817|
|BC      |Birth     |PROBIT         |BELARUS      |12    |   1515| 13817|
|BC      |Birth     |PROBIT         |BELARUS      |NaN   |      0| 13817|
|BC      |Birth     |PROVIDE        |BANGLADESH   |1     |     21|   532|
|BC      |Birth     |PROVIDE        |BANGLADESH   |2     |     30|   532|
|BC      |Birth     |PROVIDE        |BANGLADESH   |3     |     24|   532|
|BC      |Birth     |PROVIDE        |BANGLADESH   |4     |     45|   532|
|BC      |Birth     |PROVIDE        |BANGLADESH   |5     |     28|   532|
|BC      |Birth     |PROVIDE        |BANGLADESH   |6     |     45|   532|
|BC      |Birth     |PROVIDE        |BANGLADESH   |7     |     75|   532|
|BC      |Birth     |PROVIDE        |BANGLADESH   |8     |     75|   532|
|BC      |Birth     |PROVIDE        |BANGLADESH   |9     |     53|   532|
|BC      |Birth     |PROVIDE        |BANGLADESH   |10    |     55|   532|
|BC      |Birth     |PROVIDE        |BANGLADESH   |11    |     54|   532|
|BC      |Birth     |PROVIDE        |BANGLADESH   |12    |     27|   532|
|BC      |Birth     |PROVIDE        |BANGLADESH   |NaN   |      0|   532|
|BC      |Birth     |ResPak         |PAKISTAN     |1     |      0|    38|
|BC      |Birth     |ResPak         |PAKISTAN     |2     |      2|    38|
|BC      |Birth     |ResPak         |PAKISTAN     |3     |      1|    38|
|BC      |Birth     |ResPak         |PAKISTAN     |4     |      1|    38|
|BC      |Birth     |ResPak         |PAKISTAN     |5     |      6|    38|
|BC      |Birth     |ResPak         |PAKISTAN     |6     |      7|    38|
|BC      |Birth     |ResPak         |PAKISTAN     |7     |      7|    38|
|BC      |Birth     |ResPak         |PAKISTAN     |8     |      8|    38|
|BC      |Birth     |ResPak         |PAKISTAN     |9     |      4|    38|
|BC      |Birth     |ResPak         |PAKISTAN     |10    |      1|    38|
|BC      |Birth     |ResPak         |PAKISTAN     |11    |      1|    38|
|BC      |Birth     |ResPak         |PAKISTAN     |12    |      0|    38|
|BC      |Birth     |ResPak         |PAKISTAN     |NaN   |      0|    38|
|BC      |Birth     |SAS-CompFeed   |INDIA        |1     |     65|  1103|
|BC      |Birth     |SAS-CompFeed   |INDIA        |2     |     62|  1103|
|BC      |Birth     |SAS-CompFeed   |INDIA        |3     |     67|  1103|
|BC      |Birth     |SAS-CompFeed   |INDIA        |4     |     60|  1103|
|BC      |Birth     |SAS-CompFeed   |INDIA        |5     |     65|  1103|
|BC      |Birth     |SAS-CompFeed   |INDIA        |6     |     92|  1103|
|BC      |Birth     |SAS-CompFeed   |INDIA        |7     |     94|  1103|
|BC      |Birth     |SAS-CompFeed   |INDIA        |8     |    123|  1103|
|BC      |Birth     |SAS-CompFeed   |INDIA        |9     |    135|  1103|
|BC      |Birth     |SAS-CompFeed   |INDIA        |10    |    123|  1103|
|BC      |Birth     |SAS-CompFeed   |INDIA        |11    |    113|  1103|
|BC      |Birth     |SAS-CompFeed   |INDIA        |12    |    104|  1103|
|BC      |Birth     |SAS-CompFeed   |INDIA        |NaN   |      0|  1103|
|BC      |Birth     |Vellore Crypto |INDIA        |1     |     30|   343|
|BC      |Birth     |Vellore Crypto |INDIA        |2     |     22|   343|
|BC      |Birth     |Vellore Crypto |INDIA        |3     |     26|   343|
|BC      |Birth     |Vellore Crypto |INDIA        |4     |     19|   343|
|BC      |Birth     |Vellore Crypto |INDIA        |5     |     15|   343|
|BC      |Birth     |Vellore Crypto |INDIA        |6     |     25|   343|
|BC      |Birth     |Vellore Crypto |INDIA        |7     |     31|   343|
|BC      |Birth     |Vellore Crypto |INDIA        |8     |     37|   343|
|BC      |Birth     |Vellore Crypto |INDIA        |9     |     24|   343|
|BC      |Birth     |Vellore Crypto |INDIA        |10    |     32|   343|
|BC      |Birth     |Vellore Crypto |INDIA        |11    |     39|   343|
|BC      |Birth     |Vellore Crypto |INDIA        |12    |     43|   343|
|BC      |Birth     |Vellore Crypto |INDIA        |NaN   |      0|   343|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE     |1     |   1238| 12917|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE     |2     |    948| 12917|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE     |3     |   1060| 12917|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE     |4     |    941| 12917|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE     |5     |    914| 12917|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE     |6     |   1047| 12917|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE     |7     |   1098| 12917|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE     |8     |   1166| 12917|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE     |9     |   1268| 12917|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE     |10    |    984| 12917|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE     |11    |   1070| 12917|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE     |12    |   1183| 12917|
|BC      |Birth     |ZVITAMBO       |ZIMBABWE     |NaN   |      0| 12917|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA        |1     |     34|   368|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA        |2     |     16|   368|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA        |3     |     32|   368|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA        |4     |     43|   368|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA        |5     |     32|   368|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA        |6     |     38|   368|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA        |7     |     40|   368|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA        |8     |     17|   368|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA        |9     |     19|   368|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA        |10    |     29|   368|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA        |11    |     43|   368|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA        |12    |     25|   368|
|BC      |6 months  |CMC-V-BCS-2002 |INDIA        |NaN   |      0|   368|
|BC      |6 months  |CMIN           |BANGLADESH   |1     |     28|   243|
|BC      |6 months  |CMIN           |BANGLADESH   |2     |     30|   243|
|BC      |6 months  |CMIN           |BANGLADESH   |3     |     18|   243|
|BC      |6 months  |CMIN           |BANGLADESH   |4     |     17|   243|
|BC      |6 months  |CMIN           |BANGLADESH   |5     |     20|   243|
|BC      |6 months  |CMIN           |BANGLADESH   |6     |     23|   243|
|BC      |6 months  |CMIN           |BANGLADESH   |7     |     12|   243|
|BC      |6 months  |CMIN           |BANGLADESH   |8     |     13|   243|
|BC      |6 months  |CMIN           |BANGLADESH   |9     |     16|   243|
|BC      |6 months  |CMIN           |BANGLADESH   |10    |     20|   243|
|BC      |6 months  |CMIN           |BANGLADESH   |11    |      2|   243|
|BC      |6 months  |CMIN           |BANGLADESH   |12    |     44|   243|
|BC      |6 months  |CMIN           |BANGLADESH   |NaN   |      0|   243|
|BC      |6 months  |CONTENT        |PERU         |1     |      9|   215|
|BC      |6 months  |CONTENT        |PERU         |2     |     13|   215|
|BC      |6 months  |CONTENT        |PERU         |3     |     27|   215|
|BC      |6 months  |CONTENT        |PERU         |4     |     18|   215|
|BC      |6 months  |CONTENT        |PERU         |5     |     25|   215|
|BC      |6 months  |CONTENT        |PERU         |6     |     14|   215|
|BC      |6 months  |CONTENT        |PERU         |7     |     16|   215|
|BC      |6 months  |CONTENT        |PERU         |8     |     26|   215|
|BC      |6 months  |CONTENT        |PERU         |9     |     19|   215|
|BC      |6 months  |CONTENT        |PERU         |10    |     23|   215|
|BC      |6 months  |CONTENT        |PERU         |11    |     18|   215|
|BC      |6 months  |CONTENT        |PERU         |12    |      7|   215|
|BC      |6 months  |CONTENT        |PERU         |NaN   |      0|   215|
|BC      |6 months  |EE             |PAKISTAN     |1     |     92|   375|
|BC      |6 months  |EE             |PAKISTAN     |2     |     66|   375|
|BC      |6 months  |EE             |PAKISTAN     |3     |     43|   375|
|BC      |6 months  |EE             |PAKISTAN     |4     |     16|   375|
|BC      |6 months  |EE             |PAKISTAN     |5     |      0|   375|
|BC      |6 months  |EE             |PAKISTAN     |6     |      0|   375|
|BC      |6 months  |EE             |PAKISTAN     |7     |      0|   375|
|BC      |6 months  |EE             |PAKISTAN     |8     |      0|   375|
|BC      |6 months  |EE             |PAKISTAN     |9     |      0|   375|
|BC      |6 months  |EE             |PAKISTAN     |10    |      4|   375|
|BC      |6 months  |EE             |PAKISTAN     |11    |     70|   375|
|BC      |6 months  |EE             |PAKISTAN     |12    |     84|   375|
|BC      |6 months  |EE             |PAKISTAN     |NaN   |      0|   375|
|BC      |6 months  |GMS-Nepal      |NEPAL        |1     |      0|   564|
|BC      |6 months  |GMS-Nepal      |NEPAL        |2     |      0|   564|
|BC      |6 months  |GMS-Nepal      |NEPAL        |3     |      0|   564|
|BC      |6 months  |GMS-Nepal      |NEPAL        |4     |      1|   564|
|BC      |6 months  |GMS-Nepal      |NEPAL        |5     |      0|   564|
|BC      |6 months  |GMS-Nepal      |NEPAL        |6     |    115|   564|
|BC      |6 months  |GMS-Nepal      |NEPAL        |7     |    211|   564|
|BC      |6 months  |GMS-Nepal      |NEPAL        |8     |    237|   564|
|BC      |6 months  |GMS-Nepal      |NEPAL        |9     |      0|   564|
|BC      |6 months  |GMS-Nepal      |NEPAL        |10    |      0|   564|
|BC      |6 months  |GMS-Nepal      |NEPAL        |11    |      0|   564|
|BC      |6 months  |GMS-Nepal      |NEPAL        |12    |      0|   564|
|BC      |6 months  |GMS-Nepal      |NEPAL        |NaN   |      0|   564|
|BC      |6 months  |Guatemala BSC  |GUATEMALA    |1     |     18|   299|
|BC      |6 months  |Guatemala BSC  |GUATEMALA    |2     |     19|   299|
|BC      |6 months  |Guatemala BSC  |GUATEMALA    |3     |     21|   299|
|BC      |6 months  |Guatemala BSC  |GUATEMALA    |4     |     27|   299|
|BC      |6 months  |Guatemala BSC  |GUATEMALA    |5     |     31|   299|
|BC      |6 months  |Guatemala BSC  |GUATEMALA    |6     |     39|   299|
|BC      |6 months  |Guatemala BSC  |GUATEMALA    |7     |     24|   299|
|BC      |6 months  |Guatemala BSC  |GUATEMALA    |8     |     19|   299|
|BC      |6 months  |Guatemala BSC  |GUATEMALA    |9     |     34|   299|
|BC      |6 months  |Guatemala BSC  |GUATEMALA    |10    |     29|   299|
|BC      |6 months  |Guatemala BSC  |GUATEMALA    |11    |     28|   299|
|BC      |6 months  |Guatemala BSC  |GUATEMALA    |12    |     10|   299|
|BC      |6 months  |Guatemala BSC  |GUATEMALA    |NaN   |      0|   299|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |1     |   1365| 16784|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |2     |   1178| 16784|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |3     |   1421| 16784|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |4     |   1193| 16784|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |5     |   1141| 16784|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |6     |   1160| 16784|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |7     |   1246| 16784|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |8     |   1469| 16784|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |9     |   1558| 16784|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |10    |   1674| 16784|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |11    |   1679| 16784|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |12    |   1700| 16784|
|BC      |6 months  |JiVitA-3       |BANGLADESH   |NaN   |      0| 16784|
|BC      |6 months  |JiVitA-4       |BANGLADESH   |1     |     50|  4833|
|BC      |6 months  |JiVitA-4       |BANGLADESH   |2     |    165|  4833|
|BC      |6 months  |JiVitA-4       |BANGLADESH   |3     |    432|  4833|
|BC      |6 months  |JiVitA-4       |BANGLADESH   |4     |    856|  4833|
|BC      |6 months  |JiVitA-4       |BANGLADESH   |5     |    591|  4833|
|BC      |6 months  |JiVitA-4       |BANGLADESH   |6     |    436|  4833|
|BC      |6 months  |JiVitA-4       |BANGLADESH   |7     |    839|  4833|
|BC      |6 months  |JiVitA-4       |BANGLADESH   |8     |    517|  4833|
|BC      |6 months  |JiVitA-4       |BANGLADESH   |9     |    418|  4833|
|BC      |6 months  |JiVitA-4       |BANGLADESH   |10    |    300|  4833|
|BC      |6 months  |JiVitA-4       |BANGLADESH   |11    |    153|  4833|
|BC      |6 months  |JiVitA-4       |BANGLADESH   |12    |     76|  4833|
|BC      |6 months  |JiVitA-4       |BANGLADESH   |NaN   |      0|  4833|
|BC      |6 months  |Keneba         |GAMBIA       |1     |    180|  2089|
|BC      |6 months  |Keneba         |GAMBIA       |2     |    224|  2089|
|BC      |6 months  |Keneba         |GAMBIA       |3     |    180|  2089|
|BC      |6 months  |Keneba         |GAMBIA       |4     |    220|  2089|
|BC      |6 months  |Keneba         |GAMBIA       |5     |    161|  2089|
|BC      |6 months  |Keneba         |GAMBIA       |6     |    148|  2089|
|BC      |6 months  |Keneba         |GAMBIA       |7     |    122|  2089|
|BC      |6 months  |Keneba         |GAMBIA       |8     |    114|  2089|
|BC      |6 months  |Keneba         |GAMBIA       |9     |    166|  2089|
|BC      |6 months  |Keneba         |GAMBIA       |10    |    162|  2089|
|BC      |6 months  |Keneba         |GAMBIA       |11    |    233|  2089|
|BC      |6 months  |Keneba         |GAMBIA       |12    |    179|  2089|
|BC      |6 months  |Keneba         |GAMBIA       |NaN   |      0|  2089|
|BC      |6 months  |LCNI-5         |MALAWI       |1     |     55|   839|
|BC      |6 months  |LCNI-5         |MALAWI       |2     |    114|   839|
|BC      |6 months  |LCNI-5         |MALAWI       |3     |     98|   839|
|BC      |6 months  |LCNI-5         |MALAWI       |4     |    110|   839|
|BC      |6 months  |LCNI-5         |MALAWI       |5     |    111|   839|
|BC      |6 months  |LCNI-5         |MALAWI       |6     |     91|   839|
|BC      |6 months  |LCNI-5         |MALAWI       |7     |     72|   839|
|BC      |6 months  |LCNI-5         |MALAWI       |8     |     41|   839|
|BC      |6 months  |LCNI-5         |MALAWI       |9     |     29|   839|
|BC      |6 months  |LCNI-5         |MALAWI       |10    |     35|   839|
|BC      |6 months  |LCNI-5         |MALAWI       |11    |     49|   839|
|BC      |6 months  |LCNI-5         |MALAWI       |12    |     34|   839|
|BC      |6 months  |LCNI-5         |MALAWI       |NaN   |      0|   839|
|BC      |6 months  |MAL-ED         |INDIA        |1     |     19|   236|
|BC      |6 months  |MAL-ED         |INDIA        |2     |     18|   236|
|BC      |6 months  |MAL-ED         |INDIA        |3     |     21|   236|
|BC      |6 months  |MAL-ED         |INDIA        |4     |     16|   236|
|BC      |6 months  |MAL-ED         |INDIA        |5     |      8|   236|
|BC      |6 months  |MAL-ED         |INDIA        |6     |     18|   236|
|BC      |6 months  |MAL-ED         |INDIA        |7     |     22|   236|
|BC      |6 months  |MAL-ED         |INDIA        |8     |     23|   236|
|BC      |6 months  |MAL-ED         |INDIA        |9     |     20|   236|
|BC      |6 months  |MAL-ED         |INDIA        |10    |     27|   236|
|BC      |6 months  |MAL-ED         |INDIA        |11    |     25|   236|
|BC      |6 months  |MAL-ED         |INDIA        |12    |     19|   236|
|BC      |6 months  |MAL-ED         |INDIA        |NaN   |      0|   236|
|BC      |6 months  |MAL-ED         |BANGLADESH   |1     |     17|   241|
|BC      |6 months  |MAL-ED         |BANGLADESH   |2     |     20|   241|
|BC      |6 months  |MAL-ED         |BANGLADESH   |3     |     25|   241|
|BC      |6 months  |MAL-ED         |BANGLADESH   |4     |     22|   241|
|BC      |6 months  |MAL-ED         |BANGLADESH   |5     |     21|   241|
|BC      |6 months  |MAL-ED         |BANGLADESH   |6     |      8|   241|
|BC      |6 months  |MAL-ED         |BANGLADESH   |7     |     20|   241|
|BC      |6 months  |MAL-ED         |BANGLADESH   |8     |     22|   241|
|BC      |6 months  |MAL-ED         |BANGLADESH   |9     |     22|   241|
|BC      |6 months  |MAL-ED         |BANGLADESH   |10    |     22|   241|
|BC      |6 months  |MAL-ED         |BANGLADESH   |11    |     16|   241|
|BC      |6 months  |MAL-ED         |BANGLADESH   |12    |     26|   241|
|BC      |6 months  |MAL-ED         |BANGLADESH   |NaN   |      0|   241|
|BC      |6 months  |MAL-ED         |PERU         |1     |     36|   273|
|BC      |6 months  |MAL-ED         |PERU         |2     |     21|   273|
|BC      |6 months  |MAL-ED         |PERU         |3     |     21|   273|
|BC      |6 months  |MAL-ED         |PERU         |4     |     20|   273|
|BC      |6 months  |MAL-ED         |PERU         |5     |     25|   273|
|BC      |6 months  |MAL-ED         |PERU         |6     |     18|   273|
|BC      |6 months  |MAL-ED         |PERU         |7     |     22|   273|
|BC      |6 months  |MAL-ED         |PERU         |8     |     16|   273|
|BC      |6 months  |MAL-ED         |PERU         |9     |     23|   273|
|BC      |6 months  |MAL-ED         |PERU         |10    |     19|   273|
|BC      |6 months  |MAL-ED         |PERU         |11    |     32|   273|
|BC      |6 months  |MAL-ED         |PERU         |12    |     20|   273|
|BC      |6 months  |MAL-ED         |PERU         |NaN   |      0|   273|
|BC      |6 months  |MAL-ED         |NEPAL        |1     |     20|   236|
|BC      |6 months  |MAL-ED         |NEPAL        |2     |     19|   236|
|BC      |6 months  |MAL-ED         |NEPAL        |3     |     17|   236|
|BC      |6 months  |MAL-ED         |NEPAL        |4     |     19|   236|
|BC      |6 months  |MAL-ED         |NEPAL        |5     |     19|   236|
|BC      |6 months  |MAL-ED         |NEPAL        |6     |     22|   236|
|BC      |6 months  |MAL-ED         |NEPAL        |7     |     18|   236|
|BC      |6 months  |MAL-ED         |NEPAL        |8     |     24|   236|
|BC      |6 months  |MAL-ED         |NEPAL        |9     |     14|   236|
|BC      |6 months  |MAL-ED         |NEPAL        |10    |     22|   236|
|BC      |6 months  |MAL-ED         |NEPAL        |11    |     23|   236|
|BC      |6 months  |MAL-ED         |NEPAL        |12    |     19|   236|
|BC      |6 months  |MAL-ED         |NEPAL        |NaN   |      0|   236|
|BC      |6 months  |MAL-ED         |BRAZIL       |1     |     13|   209|
|BC      |6 months  |MAL-ED         |BRAZIL       |2     |     24|   209|
|BC      |6 months  |MAL-ED         |BRAZIL       |3     |     17|   209|
|BC      |6 months  |MAL-ED         |BRAZIL       |4     |     11|   209|
|BC      |6 months  |MAL-ED         |BRAZIL       |5     |     21|   209|
|BC      |6 months  |MAL-ED         |BRAZIL       |6     |      7|   209|
|BC      |6 months  |MAL-ED         |BRAZIL       |7     |     17|   209|
|BC      |6 months  |MAL-ED         |BRAZIL       |8     |     16|   209|
|BC      |6 months  |MAL-ED         |BRAZIL       |9     |     29|   209|
|BC      |6 months  |MAL-ED         |BRAZIL       |10    |     21|   209|
|BC      |6 months  |MAL-ED         |BRAZIL       |11    |     18|   209|
|BC      |6 months  |MAL-ED         |BRAZIL       |12    |     15|   209|
|BC      |6 months  |MAL-ED         |BRAZIL       |NaN   |      0|   209|
|BC      |6 months  |MAL-ED         |TANZANIA     |1     |     23|   247|
|BC      |6 months  |MAL-ED         |TANZANIA     |2     |     27|   247|
|BC      |6 months  |MAL-ED         |TANZANIA     |3     |     21|   247|
|BC      |6 months  |MAL-ED         |TANZANIA     |4     |     10|   247|
|BC      |6 months  |MAL-ED         |TANZANIA     |5     |     13|   247|
|BC      |6 months  |MAL-ED         |TANZANIA     |6     |     20|   247|
|BC      |6 months  |MAL-ED         |TANZANIA     |7     |     24|   247|
|BC      |6 months  |MAL-ED         |TANZANIA     |8     |     12|   247|
|BC      |6 months  |MAL-ED         |TANZANIA     |9     |     21|   247|
|BC      |6 months  |MAL-ED         |TANZANIA     |10    |     18|   247|
|BC      |6 months  |MAL-ED         |TANZANIA     |11    |     29|   247|
|BC      |6 months  |MAL-ED         |TANZANIA     |12    |     29|   247|
|BC      |6 months  |MAL-ED         |TANZANIA     |NaN   |      0|   247|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |1     |     38|   254|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |2     |     22|   254|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |3     |     16|   254|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |4     |     13|   254|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |5     |     12|   254|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |6     |     17|   254|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |7     |     24|   254|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |8     |      9|   254|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |9     |     18|   254|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |10    |     26|   254|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |11    |     23|   254|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |12    |     36|   254|
|BC      |6 months  |MAL-ED         |SOUTH AFRICA |NaN   |      0|   254|
|BC      |6 months  |NIH-Birth      |BANGLADESH   |1     |     50|   537|
|BC      |6 months  |NIH-Birth      |BANGLADESH   |2     |     50|   537|
|BC      |6 months  |NIH-Birth      |BANGLADESH   |3     |     50|   537|
|BC      |6 months  |NIH-Birth      |BANGLADESH   |4     |     44|   537|
|BC      |6 months  |NIH-Birth      |BANGLADESH   |5     |     40|   537|
|BC      |6 months  |NIH-Birth      |BANGLADESH   |6     |     39|   537|
|BC      |6 months  |NIH-Birth      |BANGLADESH   |7     |     45|   537|
|BC      |6 months  |NIH-Birth      |BANGLADESH   |8     |     38|   537|
|BC      |6 months  |NIH-Birth      |BANGLADESH   |9     |     30|   537|
|BC      |6 months  |NIH-Birth      |BANGLADESH   |10    |     52|   537|
|BC      |6 months  |NIH-Birth      |BANGLADESH   |11    |     49|   537|
|BC      |6 months  |NIH-Birth      |BANGLADESH   |12    |     50|   537|
|BC      |6 months  |NIH-Birth      |BANGLADESH   |NaN   |      0|   537|
|BC      |6 months  |PROBIT         |BELARUS      |1     |   1100| 15757|
|BC      |6 months  |PROBIT         |BELARUS      |2     |    950| 15757|
|BC      |6 months  |PROBIT         |BELARUS      |3     |   1114| 15757|
|BC      |6 months  |PROBIT         |BELARUS      |4     |   1070| 15757|
|BC      |6 months  |PROBIT         |BELARUS      |5     |   1096| 15757|
|BC      |6 months  |PROBIT         |BELARUS      |6     |   1121| 15757|
|BC      |6 months  |PROBIT         |BELARUS      |7     |   1365| 15757|
|BC      |6 months  |PROBIT         |BELARUS      |8     |   1498| 15757|
|BC      |6 months  |PROBIT         |BELARUS      |9     |   1482| 15757|
|BC      |6 months  |PROBIT         |BELARUS      |10    |   1668| 15757|
|BC      |6 months  |PROBIT         |BELARUS      |11    |   1590| 15757|
|BC      |6 months  |PROBIT         |BELARUS      |12    |   1703| 15757|
|BC      |6 months  |PROBIT         |BELARUS      |NaN   |      0| 15757|
|BC      |6 months  |PROVIDE        |BANGLADESH   |1     |     29|   603|
|BC      |6 months  |PROVIDE        |BANGLADESH   |2     |     35|   603|
|BC      |6 months  |PROVIDE        |BANGLADESH   |3     |     32|   603|
|BC      |6 months  |PROVIDE        |BANGLADESH   |4     |     43|   603|
|BC      |6 months  |PROVIDE        |BANGLADESH   |5     |     36|   603|
|BC      |6 months  |PROVIDE        |BANGLADESH   |6     |     40|   603|
|BC      |6 months  |PROVIDE        |BANGLADESH   |7     |     77|   603|
|BC      |6 months  |PROVIDE        |BANGLADESH   |8     |     76|   603|
|BC      |6 months  |PROVIDE        |BANGLADESH   |9     |     61|   603|
|BC      |6 months  |PROVIDE        |BANGLADESH   |10    |     66|   603|
|BC      |6 months  |PROVIDE        |BANGLADESH   |11    |     67|   603|
|BC      |6 months  |PROVIDE        |BANGLADESH   |12    |     41|   603|
|BC      |6 months  |PROVIDE        |BANGLADESH   |NaN   |      0|   603|
|BC      |6 months  |ResPak         |PAKISTAN     |1     |      2|   239|
|BC      |6 months  |ResPak         |PAKISTAN     |2     |      8|   239|
|BC      |6 months  |ResPak         |PAKISTAN     |3     |     10|   239|
|BC      |6 months  |ResPak         |PAKISTAN     |4     |     20|   239|
|BC      |6 months  |ResPak         |PAKISTAN     |5     |     30|   239|
|BC      |6 months  |ResPak         |PAKISTAN     |6     |     39|   239|
|BC      |6 months  |ResPak         |PAKISTAN     |7     |     43|   239|
|BC      |6 months  |ResPak         |PAKISTAN     |8     |     26|   239|
|BC      |6 months  |ResPak         |PAKISTAN     |9     |     37|   239|
|BC      |6 months  |ResPak         |PAKISTAN     |10    |     15|   239|
|BC      |6 months  |ResPak         |PAKISTAN     |11    |      6|   239|
|BC      |6 months  |ResPak         |PAKISTAN     |12    |      3|   239|
|BC      |6 months  |ResPak         |PAKISTAN     |NaN   |      0|   239|
|BC      |6 months  |SAS-CompFeed   |INDIA        |1     |     85|  1334|
|BC      |6 months  |SAS-CompFeed   |INDIA        |2     |     81|  1334|
|BC      |6 months  |SAS-CompFeed   |INDIA        |3     |     79|  1334|
|BC      |6 months  |SAS-CompFeed   |INDIA        |4     |     74|  1334|
|BC      |6 months  |SAS-CompFeed   |INDIA        |5     |     76|  1334|
|BC      |6 months  |SAS-CompFeed   |INDIA        |6     |    102|  1334|
|BC      |6 months  |SAS-CompFeed   |INDIA        |7     |    115|  1334|
|BC      |6 months  |SAS-CompFeed   |INDIA        |8     |    152|  1334|
|BC      |6 months  |SAS-CompFeed   |INDIA        |9     |    165|  1334|
|BC      |6 months  |SAS-CompFeed   |INDIA        |10    |    150|  1334|
|BC      |6 months  |SAS-CompFeed   |INDIA        |11    |    126|  1334|
|BC      |6 months  |SAS-CompFeed   |INDIA        |12    |    129|  1334|
|BC      |6 months  |SAS-CompFeed   |INDIA        |NaN   |      0|  1334|
|BC      |6 months  |SAS-FoodSuppl  |INDIA        |1     |     61|   380|
|BC      |6 months  |SAS-FoodSuppl  |INDIA        |2     |     37|   380|
|BC      |6 months  |SAS-FoodSuppl  |INDIA        |3     |     36|   380|
|BC      |6 months  |SAS-FoodSuppl  |INDIA        |4     |     26|   380|
|BC      |6 months  |SAS-FoodSuppl  |INDIA        |5     |     29|   380|
|BC      |6 months  |SAS-FoodSuppl  |INDIA        |6     |     31|   380|
|BC      |6 months  |SAS-FoodSuppl  |INDIA        |7     |     16|   380|
|BC      |6 months  |SAS-FoodSuppl  |INDIA        |8     |      0|   380|
|BC      |6 months  |SAS-FoodSuppl  |INDIA        |9     |     12|   380|
|BC      |6 months  |SAS-FoodSuppl  |INDIA        |10    |     26|   380|
|BC      |6 months  |SAS-FoodSuppl  |INDIA        |11    |     44|   380|
|BC      |6 months  |SAS-FoodSuppl  |INDIA        |12    |     62|   380|
|BC      |6 months  |SAS-FoodSuppl  |INDIA        |NaN   |      0|   380|
|BC      |6 months  |TanzaniaChild2 |TANZANIA     |1     |    138|  2028|
|BC      |6 months  |TanzaniaChild2 |TANZANIA     |2     |    149|  2028|
|BC      |6 months  |TanzaniaChild2 |TANZANIA     |3     |    146|  2028|
|BC      |6 months  |TanzaniaChild2 |TANZANIA     |4     |    147|  2028|
|BC      |6 months  |TanzaniaChild2 |TANZANIA     |5     |    153|  2028|
|BC      |6 months  |TanzaniaChild2 |TANZANIA     |6     |    142|  2028|
|BC      |6 months  |TanzaniaChild2 |TANZANIA     |7     |    187|  2028|
|BC      |6 months  |TanzaniaChild2 |TANZANIA     |8     |    206|  2028|
|BC      |6 months  |TanzaniaChild2 |TANZANIA     |9     |    180|  2028|
|BC      |6 months  |TanzaniaChild2 |TANZANIA     |10    |    210|  2028|
|BC      |6 months  |TanzaniaChild2 |TANZANIA     |11    |    192|  2028|
|BC      |6 months  |TanzaniaChild2 |TANZANIA     |12    |    178|  2028|
|BC      |6 months  |TanzaniaChild2 |TANZANIA     |NaN   |      0|  2028|
|BC      |6 months  |Vellore Crypto |INDIA        |1     |     36|   408|
|BC      |6 months  |Vellore Crypto |INDIA        |2     |     28|   408|
|BC      |6 months  |Vellore Crypto |INDIA        |3     |     29|   408|
|BC      |6 months  |Vellore Crypto |INDIA        |4     |     22|   408|
|BC      |6 months  |Vellore Crypto |INDIA        |5     |     21|   408|
|BC      |6 months  |Vellore Crypto |INDIA        |6     |     37|   408|
|BC      |6 months  |Vellore Crypto |INDIA        |7     |     36|   408|
|BC      |6 months  |Vellore Crypto |INDIA        |8     |     45|   408|
|BC      |6 months  |Vellore Crypto |INDIA        |9     |     25|   408|
|BC      |6 months  |Vellore Crypto |INDIA        |10    |     37|   408|
|BC      |6 months  |Vellore Crypto |INDIA        |11    |     41|   408|
|BC      |6 months  |Vellore Crypto |INDIA        |12    |     51|   408|
|BC      |6 months  |Vellore Crypto |INDIA        |NaN   |      0|   408|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE     |1     |    816|  8505|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE     |2     |    602|  8505|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE     |3     |    735|  8505|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE     |4     |    661|  8505|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE     |5     |    617|  8505|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE     |6     |    666|  8505|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE     |7     |    660|  8505|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE     |8     |    760|  8505|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE     |9     |    785|  8505|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE     |10    |    618|  8505|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE     |11    |    746|  8505|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE     |12    |    839|  8505|
|BC      |6 months  |ZVITAMBO       |ZIMBABWE     |NaN   |      0|  8505|
|BC      |24 months |CMC-V-BCS-2002 |INDIA        |1     |     34|   372|
|BC      |24 months |CMC-V-BCS-2002 |INDIA        |2     |     16|   372|
|BC      |24 months |CMC-V-BCS-2002 |INDIA        |3     |     32|   372|
|BC      |24 months |CMC-V-BCS-2002 |INDIA        |4     |     44|   372|
|BC      |24 months |CMC-V-BCS-2002 |INDIA        |5     |     34|   372|
|BC      |24 months |CMC-V-BCS-2002 |INDIA        |6     |     38|   372|
|BC      |24 months |CMC-V-BCS-2002 |INDIA        |7     |     40|   372|
|BC      |24 months |CMC-V-BCS-2002 |INDIA        |8     |     17|   372|
|BC      |24 months |CMC-V-BCS-2002 |INDIA        |9     |     19|   372|
|BC      |24 months |CMC-V-BCS-2002 |INDIA        |10    |     29|   372|
|BC      |24 months |CMC-V-BCS-2002 |INDIA        |11    |     44|   372|
|BC      |24 months |CMC-V-BCS-2002 |INDIA        |12    |     25|   372|
|BC      |24 months |CMC-V-BCS-2002 |INDIA        |NaN   |      0|   372|
|BC      |24 months |CMIN           |BANGLADESH   |1     |     27|   243|
|BC      |24 months |CMIN           |BANGLADESH   |2     |     31|   243|
|BC      |24 months |CMIN           |BANGLADESH   |3     |     19|   243|
|BC      |24 months |CMIN           |BANGLADESH   |4     |     18|   243|
|BC      |24 months |CMIN           |BANGLADESH   |5     |     19|   243|
|BC      |24 months |CMIN           |BANGLADESH   |6     |     22|   243|
|BC      |24 months |CMIN           |BANGLADESH   |7     |     12|   243|
|BC      |24 months |CMIN           |BANGLADESH   |8     |     13|   243|
|BC      |24 months |CMIN           |BANGLADESH   |9     |     18|   243|
|BC      |24 months |CMIN           |BANGLADESH   |10    |     19|   243|
|BC      |24 months |CMIN           |BANGLADESH   |11    |      2|   243|
|BC      |24 months |CMIN           |BANGLADESH   |12    |     43|   243|
|BC      |24 months |CMIN           |BANGLADESH   |NaN   |      0|   243|
|BC      |24 months |CONTENT        |PERU         |1     |      8|   164|
|BC      |24 months |CONTENT        |PERU         |2     |     10|   164|
|BC      |24 months |CONTENT        |PERU         |3     |     20|   164|
|BC      |24 months |CONTENT        |PERU         |4     |     13|   164|
|BC      |24 months |CONTENT        |PERU         |5     |     22|   164|
|BC      |24 months |CONTENT        |PERU         |6     |     11|   164|
|BC      |24 months |CONTENT        |PERU         |7     |     13|   164|
|BC      |24 months |CONTENT        |PERU         |8     |     23|   164|
|BC      |24 months |CONTENT        |PERU         |9     |     11|   164|
|BC      |24 months |CONTENT        |PERU         |10    |     12|   164|
|BC      |24 months |CONTENT        |PERU         |11    |     17|   164|
|BC      |24 months |CONTENT        |PERU         |12    |      4|   164|
|BC      |24 months |CONTENT        |PERU         |NaN   |      0|   164|
|BC      |24 months |EE             |PAKISTAN     |1     |     14|   168|
|BC      |24 months |EE             |PAKISTAN     |2     |      4|   168|
|BC      |24 months |EE             |PAKISTAN     |3     |      0|   168|
|BC      |24 months |EE             |PAKISTAN     |4     |      0|   168|
|BC      |24 months |EE             |PAKISTAN     |5     |      0|   168|
|BC      |24 months |EE             |PAKISTAN     |6     |      0|   168|
|BC      |24 months |EE             |PAKISTAN     |7     |      0|   168|
|BC      |24 months |EE             |PAKISTAN     |8     |      0|   168|
|BC      |24 months |EE             |PAKISTAN     |9     |      0|   168|
|BC      |24 months |EE             |PAKISTAN     |10    |      4|   168|
|BC      |24 months |EE             |PAKISTAN     |11    |     66|   168|
|BC      |24 months |EE             |PAKISTAN     |12    |     80|   168|
|BC      |24 months |EE             |PAKISTAN     |NaN   |      0|   168|
|BC      |24 months |GMS-Nepal      |NEPAL        |1     |      0|   487|
|BC      |24 months |GMS-Nepal      |NEPAL        |2     |      0|   487|
|BC      |24 months |GMS-Nepal      |NEPAL        |3     |      0|   487|
|BC      |24 months |GMS-Nepal      |NEPAL        |4     |      0|   487|
|BC      |24 months |GMS-Nepal      |NEPAL        |5     |      0|   487|
|BC      |24 months |GMS-Nepal      |NEPAL        |6     |     72|   487|
|BC      |24 months |GMS-Nepal      |NEPAL        |7     |    200|   487|
|BC      |24 months |GMS-Nepal      |NEPAL        |8     |    215|   487|
|BC      |24 months |GMS-Nepal      |NEPAL        |9     |      0|   487|
|BC      |24 months |GMS-Nepal      |NEPAL        |10    |      0|   487|
|BC      |24 months |GMS-Nepal      |NEPAL        |11    |      0|   487|
|BC      |24 months |GMS-Nepal      |NEPAL        |12    |      0|   487|
|BC      |24 months |GMS-Nepal      |NEPAL        |NaN   |      0|   487|
|BC      |24 months |JiVitA-3       |BANGLADESH   |1     |    704|  8603|
|BC      |24 months |JiVitA-3       |BANGLADESH   |2     |    605|  8603|
|BC      |24 months |JiVitA-3       |BANGLADESH   |3     |    730|  8603|
|BC      |24 months |JiVitA-3       |BANGLADESH   |4     |    535|  8603|
|BC      |24 months |JiVitA-3       |BANGLADESH   |5     |    385|  8603|
|BC      |24 months |JiVitA-3       |BANGLADESH   |6     |    564|  8603|
|BC      |24 months |JiVitA-3       |BANGLADESH   |7     |    652|  8603|
|BC      |24 months |JiVitA-3       |BANGLADESH   |8     |    648|  8603|
|BC      |24 months |JiVitA-3       |BANGLADESH   |9     |    734|  8603|
|BC      |24 months |JiVitA-3       |BANGLADESH   |10    |    874|  8603|
|BC      |24 months |JiVitA-3       |BANGLADESH   |11    |    947|  8603|
|BC      |24 months |JiVitA-3       |BANGLADESH   |12    |   1225|  8603|
|BC      |24 months |JiVitA-3       |BANGLADESH   |NaN   |      0|  8603|
|BC      |24 months |JiVitA-4       |BANGLADESH   |1     |     45|  4735|
|BC      |24 months |JiVitA-4       |BANGLADESH   |2     |    323|  4735|
|BC      |24 months |JiVitA-4       |BANGLADESH   |3     |    403|  4735|
|BC      |24 months |JiVitA-4       |BANGLADESH   |4     |    804|  4735|
|BC      |24 months |JiVitA-4       |BANGLADESH   |5     |    562|  4735|
|BC      |24 months |JiVitA-4       |BANGLADESH   |6     |    423|  4735|
|BC      |24 months |JiVitA-4       |BANGLADESH   |7     |    788|  4735|
|BC      |24 months |JiVitA-4       |BANGLADESH   |8     |    480|  4735|
|BC      |24 months |JiVitA-4       |BANGLADESH   |9     |    425|  4735|
|BC      |24 months |JiVitA-4       |BANGLADESH   |10    |    270|  4735|
|BC      |24 months |JiVitA-4       |BANGLADESH   |11    |    142|  4735|
|BC      |24 months |JiVitA-4       |BANGLADESH   |12    |     70|  4735|
|BC      |24 months |JiVitA-4       |BANGLADESH   |NaN   |      0|  4735|
|BC      |24 months |Keneba         |GAMBIA       |1     |    155|  1726|
|BC      |24 months |Keneba         |GAMBIA       |2     |    174|  1726|
|BC      |24 months |Keneba         |GAMBIA       |3     |    154|  1726|
|BC      |24 months |Keneba         |GAMBIA       |4     |    169|  1726|
|BC      |24 months |Keneba         |GAMBIA       |5     |    125|  1726|
|BC      |24 months |Keneba         |GAMBIA       |6     |    131|  1726|
|BC      |24 months |Keneba         |GAMBIA       |7     |     95|  1726|
|BC      |24 months |Keneba         |GAMBIA       |8     |     94|  1726|
|BC      |24 months |Keneba         |GAMBIA       |9     |    154|  1726|
|BC      |24 months |Keneba         |GAMBIA       |10    |    154|  1726|
|BC      |24 months |Keneba         |GAMBIA       |11    |    189|  1726|
|BC      |24 months |Keneba         |GAMBIA       |12    |    132|  1726|
|BC      |24 months |Keneba         |GAMBIA       |NaN   |      0|  1726|
|BC      |24 months |LCNI-5         |MALAWI       |1     |     40|   563|
|BC      |24 months |LCNI-5         |MALAWI       |2     |     86|   563|
|BC      |24 months |LCNI-5         |MALAWI       |3     |     67|   563|
|BC      |24 months |LCNI-5         |MALAWI       |4     |     74|   563|
|BC      |24 months |LCNI-5         |MALAWI       |5     |     62|   563|
|BC      |24 months |LCNI-5         |MALAWI       |6     |     64|   563|
|BC      |24 months |LCNI-5         |MALAWI       |7     |     39|   563|
|BC      |24 months |LCNI-5         |MALAWI       |8     |     27|   563|
|BC      |24 months |LCNI-5         |MALAWI       |9     |     20|   563|
|BC      |24 months |LCNI-5         |MALAWI       |10    |     25|   563|
|BC      |24 months |LCNI-5         |MALAWI       |11    |     35|   563|
|BC      |24 months |LCNI-5         |MALAWI       |12    |     24|   563|
|BC      |24 months |LCNI-5         |MALAWI       |NaN   |      0|   563|
|BC      |24 months |MAL-ED         |INDIA        |1     |     19|   227|
|BC      |24 months |MAL-ED         |INDIA        |2     |     18|   227|
|BC      |24 months |MAL-ED         |INDIA        |3     |     18|   227|
|BC      |24 months |MAL-ED         |INDIA        |4     |     15|   227|
|BC      |24 months |MAL-ED         |INDIA        |5     |      8|   227|
|BC      |24 months |MAL-ED         |INDIA        |6     |     17|   227|
|BC      |24 months |MAL-ED         |INDIA        |7     |     22|   227|
|BC      |24 months |MAL-ED         |INDIA        |8     |     22|   227|
|BC      |24 months |MAL-ED         |INDIA        |9     |     18|   227|
|BC      |24 months |MAL-ED         |INDIA        |10    |     27|   227|
|BC      |24 months |MAL-ED         |INDIA        |11    |     24|   227|
|BC      |24 months |MAL-ED         |INDIA        |12    |     19|   227|
|BC      |24 months |MAL-ED         |INDIA        |NaN   |      0|   227|
|BC      |24 months |MAL-ED         |BANGLADESH   |1     |     15|   212|
|BC      |24 months |MAL-ED         |BANGLADESH   |2     |     17|   212|
|BC      |24 months |MAL-ED         |BANGLADESH   |3     |     20|   212|
|BC      |24 months |MAL-ED         |BANGLADESH   |4     |     20|   212|
|BC      |24 months |MAL-ED         |BANGLADESH   |5     |     19|   212|
|BC      |24 months |MAL-ED         |BANGLADESH   |6     |      5|   212|
|BC      |24 months |MAL-ED         |BANGLADESH   |7     |     20|   212|
|BC      |24 months |MAL-ED         |BANGLADESH   |8     |     21|   212|
|BC      |24 months |MAL-ED         |BANGLADESH   |9     |     19|   212|
|BC      |24 months |MAL-ED         |BANGLADESH   |10    |     20|   212|
|BC      |24 months |MAL-ED         |BANGLADESH   |11    |     10|   212|
|BC      |24 months |MAL-ED         |BANGLADESH   |12    |     26|   212|
|BC      |24 months |MAL-ED         |BANGLADESH   |NaN   |      0|   212|
|BC      |24 months |MAL-ED         |PERU         |1     |     28|   201|
|BC      |24 months |MAL-ED         |PERU         |2     |     19|   201|
|BC      |24 months |MAL-ED         |PERU         |3     |     14|   201|
|BC      |24 months |MAL-ED         |PERU         |4     |     12|   201|
|BC      |24 months |MAL-ED         |PERU         |5     |     19|   201|
|BC      |24 months |MAL-ED         |PERU         |6     |     11|   201|
|BC      |24 months |MAL-ED         |PERU         |7     |     15|   201|
|BC      |24 months |MAL-ED         |PERU         |8     |     12|   201|
|BC      |24 months |MAL-ED         |PERU         |9     |     21|   201|
|BC      |24 months |MAL-ED         |PERU         |10    |     13|   201|
|BC      |24 months |MAL-ED         |PERU         |11    |     21|   201|
|BC      |24 months |MAL-ED         |PERU         |12    |     16|   201|
|BC      |24 months |MAL-ED         |PERU         |NaN   |      0|   201|
|BC      |24 months |MAL-ED         |NEPAL        |1     |     19|   228|
|BC      |24 months |MAL-ED         |NEPAL        |2     |     17|   228|
|BC      |24 months |MAL-ED         |NEPAL        |3     |     17|   228|
|BC      |24 months |MAL-ED         |NEPAL        |4     |     19|   228|
|BC      |24 months |MAL-ED         |NEPAL        |5     |     18|   228|
|BC      |24 months |MAL-ED         |NEPAL        |6     |     22|   228|
|BC      |24 months |MAL-ED         |NEPAL        |7     |     17|   228|
|BC      |24 months |MAL-ED         |NEPAL        |8     |     24|   228|
|BC      |24 months |MAL-ED         |NEPAL        |9     |     13|   228|
|BC      |24 months |MAL-ED         |NEPAL        |10    |     21|   228|
|BC      |24 months |MAL-ED         |NEPAL        |11    |     23|   228|
|BC      |24 months |MAL-ED         |NEPAL        |12    |     18|   228|
|BC      |24 months |MAL-ED         |NEPAL        |NaN   |      0|   228|
|BC      |24 months |MAL-ED         |BRAZIL       |1     |     13|   169|
|BC      |24 months |MAL-ED         |BRAZIL       |2     |     17|   169|
|BC      |24 months |MAL-ED         |BRAZIL       |3     |     15|   169|
|BC      |24 months |MAL-ED         |BRAZIL       |4     |     10|   169|
|BC      |24 months |MAL-ED         |BRAZIL       |5     |     15|   169|
|BC      |24 months |MAL-ED         |BRAZIL       |6     |      5|   169|
|BC      |24 months |MAL-ED         |BRAZIL       |7     |     11|   169|
|BC      |24 months |MAL-ED         |BRAZIL       |8     |     13|   169|
|BC      |24 months |MAL-ED         |BRAZIL       |9     |     26|   169|
|BC      |24 months |MAL-ED         |BRAZIL       |10    |     15|   169|
|BC      |24 months |MAL-ED         |BRAZIL       |11    |     15|   169|
|BC      |24 months |MAL-ED         |BRAZIL       |12    |     14|   169|
|BC      |24 months |MAL-ED         |BRAZIL       |NaN   |      0|   169|
|BC      |24 months |MAL-ED         |TANZANIA     |1     |     19|   214|
|BC      |24 months |MAL-ED         |TANZANIA     |2     |     18|   214|
|BC      |24 months |MAL-ED         |TANZANIA     |3     |     21|   214|
|BC      |24 months |MAL-ED         |TANZANIA     |4     |      8|   214|
|BC      |24 months |MAL-ED         |TANZANIA     |5     |     14|   214|
|BC      |24 months |MAL-ED         |TANZANIA     |6     |     19|   214|
|BC      |24 months |MAL-ED         |TANZANIA     |7     |     24|   214|
|BC      |24 months |MAL-ED         |TANZANIA     |8     |     12|   214|
|BC      |24 months |MAL-ED         |TANZANIA     |9     |     17|   214|
|BC      |24 months |MAL-ED         |TANZANIA     |10    |     15|   214|
|BC      |24 months |MAL-ED         |TANZANIA     |11    |     23|   214|
|BC      |24 months |MAL-ED         |TANZANIA     |12    |     24|   214|
|BC      |24 months |MAL-ED         |TANZANIA     |NaN   |      0|   214|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |1     |     34|   238|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |2     |     21|   238|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |3     |     15|   238|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |4     |     12|   238|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |5     |     11|   238|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |6     |     15|   238|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |7     |     24|   238|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |8     |      8|   238|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |9     |     19|   238|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |10    |     25|   238|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |11    |     22|   238|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |12    |     32|   238|
|BC      |24 months |MAL-ED         |SOUTH AFRICA |NaN   |      0|   238|
|BC      |24 months |NIH-Birth      |BANGLADESH   |1     |     42|   428|
|BC      |24 months |NIH-Birth      |BANGLADESH   |2     |     36|   428|
|BC      |24 months |NIH-Birth      |BANGLADESH   |3     |     41|   428|
|BC      |24 months |NIH-Birth      |BANGLADESH   |4     |     34|   428|
|BC      |24 months |NIH-Birth      |BANGLADESH   |5     |     34|   428|
|BC      |24 months |NIH-Birth      |BANGLADESH   |6     |     30|   428|
|BC      |24 months |NIH-Birth      |BANGLADESH   |7     |     37|   428|
|BC      |24 months |NIH-Birth      |BANGLADESH   |8     |     30|   428|
|BC      |24 months |NIH-Birth      |BANGLADESH   |9     |     19|   428|
|BC      |24 months |NIH-Birth      |BANGLADESH   |10    |     40|   428|
|BC      |24 months |NIH-Birth      |BANGLADESH   |11    |     40|   428|
|BC      |24 months |NIH-Birth      |BANGLADESH   |12    |     45|   428|
|BC      |24 months |NIH-Birth      |BANGLADESH   |NaN   |      0|   428|
|BC      |24 months |PROBIT         |BELARUS      |1     |    264|  3970|
|BC      |24 months |PROBIT         |BELARUS      |2     |    210|  3970|
|BC      |24 months |PROBIT         |BELARUS      |3     |    320|  3970|
|BC      |24 months |PROBIT         |BELARUS      |4     |    322|  3970|
|BC      |24 months |PROBIT         |BELARUS      |5     |    301|  3970|
|BC      |24 months |PROBIT         |BELARUS      |6     |    264|  3970|
|BC      |24 months |PROBIT         |BELARUS      |7     |    364|  3970|
|BC      |24 months |PROBIT         |BELARUS      |8     |    346|  3970|
|BC      |24 months |PROBIT         |BELARUS      |9     |    375|  3970|
|BC      |24 months |PROBIT         |BELARUS      |10    |    389|  3970|
|BC      |24 months |PROBIT         |BELARUS      |11    |    386|  3970|
|BC      |24 months |PROBIT         |BELARUS      |12    |    429|  3970|
|BC      |24 months |PROBIT         |BELARUS      |NaN   |      0|  3970|
|BC      |24 months |PROVIDE        |BANGLADESH   |1     |     28|   579|
|BC      |24 months |PROVIDE        |BANGLADESH   |2     |     32|   579|
|BC      |24 months |PROVIDE        |BANGLADESH   |3     |     30|   579|
|BC      |24 months |PROVIDE        |BANGLADESH   |4     |     40|   579|
|BC      |24 months |PROVIDE        |BANGLADESH   |5     |     33|   579|
|BC      |24 months |PROVIDE        |BANGLADESH   |6     |     42|   579|
|BC      |24 months |PROVIDE        |BANGLADESH   |7     |     75|   579|
|BC      |24 months |PROVIDE        |BANGLADESH   |8     |     70|   579|
|BC      |24 months |PROVIDE        |BANGLADESH   |9     |     60|   579|
|BC      |24 months |PROVIDE        |BANGLADESH   |10    |     67|   579|
|BC      |24 months |PROVIDE        |BANGLADESH   |11    |     64|   579|
|BC      |24 months |PROVIDE        |BANGLADESH   |12    |     38|   579|
|BC      |24 months |PROVIDE        |BANGLADESH   |NaN   |      0|   579|
|BC      |24 months |TanzaniaChild2 |TANZANIA     |1     |      0|     6|
|BC      |24 months |TanzaniaChild2 |TANZANIA     |2     |      0|     6|
|BC      |24 months |TanzaniaChild2 |TANZANIA     |3     |      2|     6|
|BC      |24 months |TanzaniaChild2 |TANZANIA     |4     |      1|     6|
|BC      |24 months |TanzaniaChild2 |TANZANIA     |5     |      1|     6|
|BC      |24 months |TanzaniaChild2 |TANZANIA     |6     |      1|     6|
|BC      |24 months |TanzaniaChild2 |TANZANIA     |7     |      1|     6|
|BC      |24 months |TanzaniaChild2 |TANZANIA     |8     |      0|     6|
|BC      |24 months |TanzaniaChild2 |TANZANIA     |9     |      0|     6|
|BC      |24 months |TanzaniaChild2 |TANZANIA     |10    |      0|     6|
|BC      |24 months |TanzaniaChild2 |TANZANIA     |11    |      0|     6|
|BC      |24 months |TanzaniaChild2 |TANZANIA     |12    |      0|     6|
|BC      |24 months |TanzaniaChild2 |TANZANIA     |NaN   |      0|     6|
|BC      |24 months |Vellore Crypto |INDIA        |1     |     36|   409|
|BC      |24 months |Vellore Crypto |INDIA        |2     |     28|   409|
|BC      |24 months |Vellore Crypto |INDIA        |3     |     29|   409|
|BC      |24 months |Vellore Crypto |INDIA        |4     |     22|   409|
|BC      |24 months |Vellore Crypto |INDIA        |5     |     21|   409|
|BC      |24 months |Vellore Crypto |INDIA        |6     |     37|   409|
|BC      |24 months |Vellore Crypto |INDIA        |7     |     36|   409|
|BC      |24 months |Vellore Crypto |INDIA        |8     |     45|   409|
|BC      |24 months |Vellore Crypto |INDIA        |9     |     27|   409|
|BC      |24 months |Vellore Crypto |INDIA        |10    |     36|   409|
|BC      |24 months |Vellore Crypto |INDIA        |11    |     41|   409|
|BC      |24 months |Vellore Crypto |INDIA        |12    |     51|   409|
|BC      |24 months |Vellore Crypto |INDIA        |NaN   |      0|   409|
|BC      |24 months |ZVITAMBO       |ZIMBABWE     |1     |     49|   433|
|BC      |24 months |ZVITAMBO       |ZIMBABWE     |2     |     63|   433|
|BC      |24 months |ZVITAMBO       |ZIMBABWE     |3     |     56|   433|
|BC      |24 months |ZVITAMBO       |ZIMBABWE     |4     |     45|   433|
|BC      |24 months |ZVITAMBO       |ZIMBABWE     |5     |     50|   433|
|BC      |24 months |ZVITAMBO       |ZIMBABWE     |6     |     44|   433|
|BC      |24 months |ZVITAMBO       |ZIMBABWE     |7     |     32|   433|
|BC      |24 months |ZVITAMBO       |ZIMBABWE     |8     |     30|   433|
|BC      |24 months |ZVITAMBO       |ZIMBABWE     |9     |      2|   433|
|BC      |24 months |ZVITAMBO       |ZIMBABWE     |10    |      4|   433|
|BC      |24 months |ZVITAMBO       |ZIMBABWE     |11    |     20|   433|
|BC      |24 months |ZVITAMBO       |ZIMBABWE     |12    |     38|   433|
|BC      |24 months |ZVITAMBO       |ZIMBABWE     |NaN   |      0|   433|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA        |1     |      9|    86|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA        |2     |      1|    86|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA        |3     |      7|    86|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA        |4     |      9|    86|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA        |5     |     10|    86|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA        |6     |      9|    86|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA        |7     |      7|    86|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA        |8     |      4|    86|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA        |9     |      8|    86|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA        |10    |      8|    86|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA        |11    |     11|    86|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA        |12    |      3|    86|
|FULL    |Birth     |CMC-V-BCS-2002 |INDIA        |NaN   |      0|    86|
|FULL    |Birth     |CMIN           |BANGLADESH   |1     |      0|    19|
|FULL    |Birth     |CMIN           |BANGLADESH   |2     |      4|    19|
|FULL    |Birth     |CMIN           |BANGLADESH   |3     |      2|    19|
|FULL    |Birth     |CMIN           |BANGLADESH   |4     |      0|    19|
|FULL    |Birth     |CMIN           |BANGLADESH   |5     |      3|    19|
|FULL    |Birth     |CMIN           |BANGLADESH   |6     |      0|    19|
|FULL    |Birth     |CMIN           |BANGLADESH   |7     |      0|    19|
|FULL    |Birth     |CMIN           |BANGLADESH   |8     |      5|    19|
|FULL    |Birth     |CMIN           |BANGLADESH   |9     |      2|    19|
|FULL    |Birth     |CMIN           |BANGLADESH   |10    |      1|    19|
|FULL    |Birth     |CMIN           |BANGLADESH   |11    |      2|    19|
|FULL    |Birth     |CMIN           |BANGLADESH   |12    |      0|    19|
|FULL    |Birth     |CMIN           |BANGLADESH   |NaN   |      0|    19|
|FULL    |Birth     |CONTENT        |PERU         |1     |      0|     2|
|FULL    |Birth     |CONTENT        |PERU         |2     |      0|     2|
|FULL    |Birth     |CONTENT        |PERU         |3     |      0|     2|
|FULL    |Birth     |CONTENT        |PERU         |4     |      0|     2|
|FULL    |Birth     |CONTENT        |PERU         |5     |      2|     2|
|FULL    |Birth     |CONTENT        |PERU         |6     |      0|     2|
|FULL    |Birth     |CONTENT        |PERU         |7     |      0|     2|
|FULL    |Birth     |CONTENT        |PERU         |8     |      0|     2|
|FULL    |Birth     |CONTENT        |PERU         |9     |      0|     2|
|FULL    |Birth     |CONTENT        |PERU         |10    |      0|     2|
|FULL    |Birth     |CONTENT        |PERU         |11    |      0|     2|
|FULL    |Birth     |CONTENT        |PERU         |12    |      0|     2|
|FULL    |Birth     |CONTENT        |PERU         |NaN   |      0|     2|
|FULL    |Birth     |EE             |PAKISTAN     |1     |     39|   177|
|FULL    |Birth     |EE             |PAKISTAN     |2     |     36|   177|
|FULL    |Birth     |EE             |PAKISTAN     |3     |     16|   177|
|FULL    |Birth     |EE             |PAKISTAN     |4     |      7|   177|
|FULL    |Birth     |EE             |PAKISTAN     |5     |      0|   177|
|FULL    |Birth     |EE             |PAKISTAN     |6     |      0|   177|
|FULL    |Birth     |EE             |PAKISTAN     |7     |      0|   177|
|FULL    |Birth     |EE             |PAKISTAN     |8     |      0|   177|
|FULL    |Birth     |EE             |PAKISTAN     |9     |      0|   177|
|FULL    |Birth     |EE             |PAKISTAN     |10    |      0|   177|
|FULL    |Birth     |EE             |PAKISTAN     |11    |     41|   177|
|FULL    |Birth     |EE             |PAKISTAN     |12    |     38|   177|
|FULL    |Birth     |EE             |PAKISTAN     |NaN   |      0|   177|
|FULL    |Birth     |GMS-Nepal      |NEPAL        |1     |      0|   641|
|FULL    |Birth     |GMS-Nepal      |NEPAL        |2     |      0|   641|
|FULL    |Birth     |GMS-Nepal      |NEPAL        |3     |      0|   641|
|FULL    |Birth     |GMS-Nepal      |NEPAL        |4     |      1|   641|
|FULL    |Birth     |GMS-Nepal      |NEPAL        |5     |      0|   641|
|FULL    |Birth     |GMS-Nepal      |NEPAL        |6     |    151|   641|
|FULL    |Birth     |GMS-Nepal      |NEPAL        |7     |    240|   641|
|FULL    |Birth     |GMS-Nepal      |NEPAL        |8     |    249|   641|
|FULL    |Birth     |GMS-Nepal      |NEPAL        |9     |      0|   641|
|FULL    |Birth     |GMS-Nepal      |NEPAL        |10    |      0|   641|
|FULL    |Birth     |GMS-Nepal      |NEPAL        |11    |      0|   641|
|FULL    |Birth     |GMS-Nepal      |NEPAL        |12    |      0|   641|
|FULL    |Birth     |GMS-Nepal      |NEPAL        |NaN   |      0|   641|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |1     |   1628| 18014|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |2     |   1411| 18014|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |3     |   1715| 18014|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |4     |   1254| 18014|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |5     |    895| 18014|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |6     |    918| 18014|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |7     |   1052| 18014|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |8     |   1382| 18014|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |9     |   1863| 18014|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |10    |   1913| 18014|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |11    |   1905| 18014|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |12    |   2078| 18014|
|FULL    |Birth     |JiVitA-3       |BANGLADESH   |NaN   |      0| 18014|
|FULL    |Birth     |JiVitA-4       |BANGLADESH   |1     |      0|  2396|
|FULL    |Birth     |JiVitA-4       |BANGLADESH   |2     |    277|  2396|
|FULL    |Birth     |JiVitA-4       |BANGLADESH   |3     |    316|  2396|
|FULL    |Birth     |JiVitA-4       |BANGLADESH   |4     |    395|  2396|
|FULL    |Birth     |JiVitA-4       |BANGLADESH   |5     |    377|  2396|
|FULL    |Birth     |JiVitA-4       |BANGLADESH   |6     |    295|  2396|
|FULL    |Birth     |JiVitA-4       |BANGLADESH   |7     |    315|  2396|
|FULL    |Birth     |JiVitA-4       |BANGLADESH   |8     |    226|  2396|
|FULL    |Birth     |JiVitA-4       |BANGLADESH   |9     |    134|  2396|
|FULL    |Birth     |JiVitA-4       |BANGLADESH   |10    |     61|  2396|
|FULL    |Birth     |JiVitA-4       |BANGLADESH   |11    |      0|  2396|
|FULL    |Birth     |JiVitA-4       |BANGLADESH   |12    |      0|  2396|
|FULL    |Birth     |JiVitA-4       |BANGLADESH   |NaN   |      0|  2396|
|FULL    |Birth     |Keneba         |GAMBIA       |1     |    133|  1466|
|FULL    |Birth     |Keneba         |GAMBIA       |2     |    153|  1466|
|FULL    |Birth     |Keneba         |GAMBIA       |3     |    140|  1466|
|FULL    |Birth     |Keneba         |GAMBIA       |4     |    159|  1466|
|FULL    |Birth     |Keneba         |GAMBIA       |5     |    103|  1466|
|FULL    |Birth     |Keneba         |GAMBIA       |6     |    102|  1466|
|FULL    |Birth     |Keneba         |GAMBIA       |7     |     85|  1466|
|FULL    |Birth     |Keneba         |GAMBIA       |8     |     74|  1466|
|FULL    |Birth     |Keneba         |GAMBIA       |9     |    116|  1466|
|FULL    |Birth     |Keneba         |GAMBIA       |10    |    118|  1466|
|FULL    |Birth     |Keneba         |GAMBIA       |11    |    168|  1466|
|FULL    |Birth     |Keneba         |GAMBIA       |12    |    115|  1466|
|FULL    |Birth     |Keneba         |GAMBIA       |NaN   |      0|  1466|
|FULL    |Birth     |MAL-ED         |INDIA        |1     |      2|    45|
|FULL    |Birth     |MAL-ED         |INDIA        |2     |      6|    45|
|FULL    |Birth     |MAL-ED         |INDIA        |3     |      3|    45|
|FULL    |Birth     |MAL-ED         |INDIA        |4     |      5|    45|
|FULL    |Birth     |MAL-ED         |INDIA        |5     |      4|    45|
|FULL    |Birth     |MAL-ED         |INDIA        |6     |      1|    45|
|FULL    |Birth     |MAL-ED         |INDIA        |7     |      3|    45|
|FULL    |Birth     |MAL-ED         |INDIA        |8     |      9|    45|
|FULL    |Birth     |MAL-ED         |INDIA        |9     |      3|    45|
|FULL    |Birth     |MAL-ED         |INDIA        |10    |      6|    45|
|FULL    |Birth     |MAL-ED         |INDIA        |11    |      3|    45|
|FULL    |Birth     |MAL-ED         |INDIA        |12    |      0|    45|
|FULL    |Birth     |MAL-ED         |INDIA        |NaN   |      0|    45|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |1     |     19|   215|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |2     |     19|   215|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |3     |     24|   215|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |4     |     19|   215|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |5     |     17|   215|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |6     |      6|   215|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |7     |     14|   215|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |8     |     22|   215|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |9     |     17|   215|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |10    |     19|   215|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |11    |     15|   215|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |12    |     24|   215|
|FULL    |Birth     |MAL-ED         |BANGLADESH   |NaN   |      0|   215|
|FULL    |Birth     |MAL-ED         |PERU         |1     |     27|   228|
|FULL    |Birth     |MAL-ED         |PERU         |2     |     19|   228|
|FULL    |Birth     |MAL-ED         |PERU         |3     |     19|   228|
|FULL    |Birth     |MAL-ED         |PERU         |4     |     14|   228|
|FULL    |Birth     |MAL-ED         |PERU         |5     |     19|   228|
|FULL    |Birth     |MAL-ED         |PERU         |6     |     14|   228|
|FULL    |Birth     |MAL-ED         |PERU         |7     |     19|   228|
|FULL    |Birth     |MAL-ED         |PERU         |8     |     16|   228|
|FULL    |Birth     |MAL-ED         |PERU         |9     |     19|   228|
|FULL    |Birth     |MAL-ED         |PERU         |10    |     20|   228|
|FULL    |Birth     |MAL-ED         |PERU         |11    |     28|   228|
|FULL    |Birth     |MAL-ED         |PERU         |12    |     14|   228|
|FULL    |Birth     |MAL-ED         |PERU         |NaN   |      0|   228|
|FULL    |Birth     |MAL-ED         |NEPAL        |1     |      2|    26|
|FULL    |Birth     |MAL-ED         |NEPAL        |2     |      2|    26|
|FULL    |Birth     |MAL-ED         |NEPAL        |3     |      1|    26|
|FULL    |Birth     |MAL-ED         |NEPAL        |4     |      2|    26|
|FULL    |Birth     |MAL-ED         |NEPAL        |5     |      2|    26|
|FULL    |Birth     |MAL-ED         |NEPAL        |6     |      3|    26|
|FULL    |Birth     |MAL-ED         |NEPAL        |7     |      2|    26|
|FULL    |Birth     |MAL-ED         |NEPAL        |8     |      1|    26|
|FULL    |Birth     |MAL-ED         |NEPAL        |9     |      2|    26|
|FULL    |Birth     |MAL-ED         |NEPAL        |10    |      4|    26|
|FULL    |Birth     |MAL-ED         |NEPAL        |11    |      4|    26|
|FULL    |Birth     |MAL-ED         |NEPAL        |12    |      1|    26|
|FULL    |Birth     |MAL-ED         |NEPAL        |NaN   |      0|    26|
|FULL    |Birth     |MAL-ED         |BRAZIL       |1     |      5|    62|
|FULL    |Birth     |MAL-ED         |BRAZIL       |2     |     10|    62|
|FULL    |Birth     |MAL-ED         |BRAZIL       |3     |      7|    62|
|FULL    |Birth     |MAL-ED         |BRAZIL       |4     |      4|    62|
|FULL    |Birth     |MAL-ED         |BRAZIL       |5     |      1|    62|
|FULL    |Birth     |MAL-ED         |BRAZIL       |6     |      5|    62|
|FULL    |Birth     |MAL-ED         |BRAZIL       |7     |      6|    62|
|FULL    |Birth     |MAL-ED         |BRAZIL       |8     |      6|    62|
|FULL    |Birth     |MAL-ED         |BRAZIL       |9     |      5|    62|
|FULL    |Birth     |MAL-ED         |BRAZIL       |10    |      5|    62|
|FULL    |Birth     |MAL-ED         |BRAZIL       |11    |      4|    62|
|FULL    |Birth     |MAL-ED         |BRAZIL       |12    |      4|    62|
|FULL    |Birth     |MAL-ED         |BRAZIL       |NaN   |      0|    62|
|FULL    |Birth     |MAL-ED         |TANZANIA     |1     |     10|   115|
|FULL    |Birth     |MAL-ED         |TANZANIA     |2     |     14|   115|
|FULL    |Birth     |MAL-ED         |TANZANIA     |3     |     13|   115|
|FULL    |Birth     |MAL-ED         |TANZANIA     |4     |      7|   115|
|FULL    |Birth     |MAL-ED         |TANZANIA     |5     |     10|   115|
|FULL    |Birth     |MAL-ED         |TANZANIA     |6     |      8|   115|
|FULL    |Birth     |MAL-ED         |TANZANIA     |7     |     15|   115|
|FULL    |Birth     |MAL-ED         |TANZANIA     |8     |      7|   115|
|FULL    |Birth     |MAL-ED         |TANZANIA     |9     |      1|   115|
|FULL    |Birth     |MAL-ED         |TANZANIA     |10    |      8|   115|
|FULL    |Birth     |MAL-ED         |TANZANIA     |11    |     13|   115|
|FULL    |Birth     |MAL-ED         |TANZANIA     |12    |      9|   115|
|FULL    |Birth     |MAL-ED         |TANZANIA     |NaN   |      0|   115|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |1     |      9|   120|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |2     |     13|   120|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |3     |      8|   120|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |4     |      6|   120|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |5     |      6|   120|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |6     |      7|   120|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |7     |     13|   120|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |8     |      4|   120|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |9     |     10|   120|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |10    |     13|   120|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |11    |     13|   120|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |12    |     18|   120|
|FULL    |Birth     |MAL-ED         |SOUTH AFRICA |NaN   |      0|   120|
|FULL    |Birth     |NIH-Birth      |BANGLADESH   |1     |     54|   575|
|FULL    |Birth     |NIH-Birth      |BANGLADESH   |2     |     55|   575|
|FULL    |Birth     |NIH-Birth      |BANGLADESH   |3     |     58|   575|
|FULL    |Birth     |NIH-Birth      |BANGLADESH   |4     |     48|   575|
|FULL    |Birth     |NIH-Birth      |BANGLADESH   |5     |     45|   575|
|FULL    |Birth     |NIH-Birth      |BANGLADESH   |6     |     40|   575|
|FULL    |Birth     |NIH-Birth      |BANGLADESH   |7     |     45|   575|
|FULL    |Birth     |NIH-Birth      |BANGLADESH   |8     |     41|   575|
|FULL    |Birth     |NIH-Birth      |BANGLADESH   |9     |     31|   575|
|FULL    |Birth     |NIH-Birth      |BANGLADESH   |10    |     58|   575|
|FULL    |Birth     |NIH-Birth      |BANGLADESH   |11    |     49|   575|
|FULL    |Birth     |NIH-Birth      |BANGLADESH   |12    |     51|   575|
|FULL    |Birth     |NIH-Birth      |BANGLADESH   |NaN   |      0|   575|
|FULL    |Birth     |PROBIT         |BELARUS      |1     |    855| 13817|
|FULL    |Birth     |PROBIT         |BELARUS      |2     |    785| 13817|
|FULL    |Birth     |PROBIT         |BELARUS      |3     |    960| 13817|
|FULL    |Birth     |PROBIT         |BELARUS      |4     |    955| 13817|
|FULL    |Birth     |PROBIT         |BELARUS      |5     |    949| 13817|
|FULL    |Birth     |PROBIT         |BELARUS      |6     |   1006| 13817|
|FULL    |Birth     |PROBIT         |BELARUS      |7     |   1275| 13817|
|FULL    |Birth     |PROBIT         |BELARUS      |8     |   1318| 13817|
|FULL    |Birth     |PROBIT         |BELARUS      |9     |   1311| 13817|
|FULL    |Birth     |PROBIT         |BELARUS      |10    |   1496| 13817|
|FULL    |Birth     |PROBIT         |BELARUS      |11    |   1392| 13817|
|FULL    |Birth     |PROBIT         |BELARUS      |12    |   1515| 13817|
|FULL    |Birth     |PROBIT         |BELARUS      |NaN   |      0| 13817|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |1     |     21|   532|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |2     |     30|   532|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |3     |     24|   532|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |4     |     45|   532|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |5     |     28|   532|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |6     |     45|   532|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |7     |     75|   532|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |8     |     75|   532|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |9     |     53|   532|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |10    |     55|   532|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |11    |     54|   532|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |12    |     27|   532|
|FULL    |Birth     |PROVIDE        |BANGLADESH   |NaN   |      0|   532|
|FULL    |Birth     |ResPak         |PAKISTAN     |1     |      0|    38|
|FULL    |Birth     |ResPak         |PAKISTAN     |2     |      2|    38|
|FULL    |Birth     |ResPak         |PAKISTAN     |3     |      1|    38|
|FULL    |Birth     |ResPak         |PAKISTAN     |4     |      1|    38|
|FULL    |Birth     |ResPak         |PAKISTAN     |5     |      6|    38|
|FULL    |Birth     |ResPak         |PAKISTAN     |6     |      7|    38|
|FULL    |Birth     |ResPak         |PAKISTAN     |7     |      7|    38|
|FULL    |Birth     |ResPak         |PAKISTAN     |8     |      8|    38|
|FULL    |Birth     |ResPak         |PAKISTAN     |9     |      4|    38|
|FULL    |Birth     |ResPak         |PAKISTAN     |10    |      1|    38|
|FULL    |Birth     |ResPak         |PAKISTAN     |11    |      1|    38|
|FULL    |Birth     |ResPak         |PAKISTAN     |12    |      0|    38|
|FULL    |Birth     |ResPak         |PAKISTAN     |NaN   |      0|    38|
|FULL    |Birth     |SAS-CompFeed   |INDIA        |1     |     65|  1103|
|FULL    |Birth     |SAS-CompFeed   |INDIA        |2     |     62|  1103|
|FULL    |Birth     |SAS-CompFeed   |INDIA        |3     |     67|  1103|
|FULL    |Birth     |SAS-CompFeed   |INDIA        |4     |     60|  1103|
|FULL    |Birth     |SAS-CompFeed   |INDIA        |5     |     65|  1103|
|FULL    |Birth     |SAS-CompFeed   |INDIA        |6     |     92|  1103|
|FULL    |Birth     |SAS-CompFeed   |INDIA        |7     |     94|  1103|
|FULL    |Birth     |SAS-CompFeed   |INDIA        |8     |    123|  1103|
|FULL    |Birth     |SAS-CompFeed   |INDIA        |9     |    135|  1103|
|FULL    |Birth     |SAS-CompFeed   |INDIA        |10    |    123|  1103|
|FULL    |Birth     |SAS-CompFeed   |INDIA        |11    |    113|  1103|
|FULL    |Birth     |SAS-CompFeed   |INDIA        |12    |    104|  1103|
|FULL    |Birth     |SAS-CompFeed   |INDIA        |NaN   |      0|  1103|
|FULL    |Birth     |Vellore Crypto |INDIA        |1     |     30|   343|
|FULL    |Birth     |Vellore Crypto |INDIA        |2     |     22|   343|
|FULL    |Birth     |Vellore Crypto |INDIA        |3     |     26|   343|
|FULL    |Birth     |Vellore Crypto |INDIA        |4     |     19|   343|
|FULL    |Birth     |Vellore Crypto |INDIA        |5     |     15|   343|
|FULL    |Birth     |Vellore Crypto |INDIA        |6     |     25|   343|
|FULL    |Birth     |Vellore Crypto |INDIA        |7     |     31|   343|
|FULL    |Birth     |Vellore Crypto |INDIA        |8     |     37|   343|
|FULL    |Birth     |Vellore Crypto |INDIA        |9     |     24|   343|
|FULL    |Birth     |Vellore Crypto |INDIA        |10    |     32|   343|
|FULL    |Birth     |Vellore Crypto |INDIA        |11    |     39|   343|
|FULL    |Birth     |Vellore Crypto |INDIA        |12    |     43|   343|
|FULL    |Birth     |Vellore Crypto |INDIA        |NaN   |      0|   343|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE     |1     |   1238| 12917|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE     |2     |    948| 12917|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE     |3     |   1060| 12917|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE     |4     |    941| 12917|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE     |5     |    914| 12917|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE     |6     |   1047| 12917|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE     |7     |   1098| 12917|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE     |8     |   1166| 12917|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE     |9     |   1268| 12917|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE     |10    |    984| 12917|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE     |11    |   1070| 12917|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE     |12    |   1183| 12917|
|FULL    |Birth     |ZVITAMBO       |ZIMBABWE     |NaN   |      0| 12917|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA        |1     |     34|   368|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA        |2     |     16|   368|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA        |3     |     32|   368|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA        |4     |     43|   368|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA        |5     |     32|   368|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA        |6     |     38|   368|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA        |7     |     40|   368|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA        |8     |     17|   368|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA        |9     |     19|   368|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA        |10    |     29|   368|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA        |11    |     43|   368|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA        |12    |     25|   368|
|FULL    |6 months  |CMC-V-BCS-2002 |INDIA        |NaN   |      0|   368|
|FULL    |6 months  |CMIN           |BANGLADESH   |1     |     28|   243|
|FULL    |6 months  |CMIN           |BANGLADESH   |2     |     30|   243|
|FULL    |6 months  |CMIN           |BANGLADESH   |3     |     18|   243|
|FULL    |6 months  |CMIN           |BANGLADESH   |4     |     17|   243|
|FULL    |6 months  |CMIN           |BANGLADESH   |5     |     20|   243|
|FULL    |6 months  |CMIN           |BANGLADESH   |6     |     23|   243|
|FULL    |6 months  |CMIN           |BANGLADESH   |7     |     12|   243|
|FULL    |6 months  |CMIN           |BANGLADESH   |8     |     13|   243|
|FULL    |6 months  |CMIN           |BANGLADESH   |9     |     16|   243|
|FULL    |6 months  |CMIN           |BANGLADESH   |10    |     20|   243|
|FULL    |6 months  |CMIN           |BANGLADESH   |11    |      2|   243|
|FULL    |6 months  |CMIN           |BANGLADESH   |12    |     44|   243|
|FULL    |6 months  |CMIN           |BANGLADESH   |NaN   |      0|   243|
|FULL    |6 months  |CONTENT        |PERU         |1     |      9|   215|
|FULL    |6 months  |CONTENT        |PERU         |2     |     13|   215|
|FULL    |6 months  |CONTENT        |PERU         |3     |     27|   215|
|FULL    |6 months  |CONTENT        |PERU         |4     |     18|   215|
|FULL    |6 months  |CONTENT        |PERU         |5     |     25|   215|
|FULL    |6 months  |CONTENT        |PERU         |6     |     14|   215|
|FULL    |6 months  |CONTENT        |PERU         |7     |     16|   215|
|FULL    |6 months  |CONTENT        |PERU         |8     |     26|   215|
|FULL    |6 months  |CONTENT        |PERU         |9     |     19|   215|
|FULL    |6 months  |CONTENT        |PERU         |10    |     23|   215|
|FULL    |6 months  |CONTENT        |PERU         |11    |     18|   215|
|FULL    |6 months  |CONTENT        |PERU         |12    |      7|   215|
|FULL    |6 months  |CONTENT        |PERU         |NaN   |      0|   215|
|FULL    |6 months  |EE             |PAKISTAN     |1     |     92|   375|
|FULL    |6 months  |EE             |PAKISTAN     |2     |     66|   375|
|FULL    |6 months  |EE             |PAKISTAN     |3     |     43|   375|
|FULL    |6 months  |EE             |PAKISTAN     |4     |     16|   375|
|FULL    |6 months  |EE             |PAKISTAN     |5     |      0|   375|
|FULL    |6 months  |EE             |PAKISTAN     |6     |      0|   375|
|FULL    |6 months  |EE             |PAKISTAN     |7     |      0|   375|
|FULL    |6 months  |EE             |PAKISTAN     |8     |      0|   375|
|FULL    |6 months  |EE             |PAKISTAN     |9     |      0|   375|
|FULL    |6 months  |EE             |PAKISTAN     |10    |      4|   375|
|FULL    |6 months  |EE             |PAKISTAN     |11    |     70|   375|
|FULL    |6 months  |EE             |PAKISTAN     |12    |     84|   375|
|FULL    |6 months  |EE             |PAKISTAN     |NaN   |      0|   375|
|FULL    |6 months  |GMS-Nepal      |NEPAL        |1     |      0|   564|
|FULL    |6 months  |GMS-Nepal      |NEPAL        |2     |      0|   564|
|FULL    |6 months  |GMS-Nepal      |NEPAL        |3     |      0|   564|
|FULL    |6 months  |GMS-Nepal      |NEPAL        |4     |      1|   564|
|FULL    |6 months  |GMS-Nepal      |NEPAL        |5     |      0|   564|
|FULL    |6 months  |GMS-Nepal      |NEPAL        |6     |    115|   564|
|FULL    |6 months  |GMS-Nepal      |NEPAL        |7     |    211|   564|
|FULL    |6 months  |GMS-Nepal      |NEPAL        |8     |    237|   564|
|FULL    |6 months  |GMS-Nepal      |NEPAL        |9     |      0|   564|
|FULL    |6 months  |GMS-Nepal      |NEPAL        |10    |      0|   564|
|FULL    |6 months  |GMS-Nepal      |NEPAL        |11    |      0|   564|
|FULL    |6 months  |GMS-Nepal      |NEPAL        |12    |      0|   564|
|FULL    |6 months  |GMS-Nepal      |NEPAL        |NaN   |      0|   564|
|FULL    |6 months  |Guatemala BSC  |GUATEMALA    |1     |     18|   299|
|FULL    |6 months  |Guatemala BSC  |GUATEMALA    |2     |     19|   299|
|FULL    |6 months  |Guatemala BSC  |GUATEMALA    |3     |     21|   299|
|FULL    |6 months  |Guatemala BSC  |GUATEMALA    |4     |     27|   299|
|FULL    |6 months  |Guatemala BSC  |GUATEMALA    |5     |     31|   299|
|FULL    |6 months  |Guatemala BSC  |GUATEMALA    |6     |     39|   299|
|FULL    |6 months  |Guatemala BSC  |GUATEMALA    |7     |     24|   299|
|FULL    |6 months  |Guatemala BSC  |GUATEMALA    |8     |     19|   299|
|FULL    |6 months  |Guatemala BSC  |GUATEMALA    |9     |     34|   299|
|FULL    |6 months  |Guatemala BSC  |GUATEMALA    |10    |     29|   299|
|FULL    |6 months  |Guatemala BSC  |GUATEMALA    |11    |     28|   299|
|FULL    |6 months  |Guatemala BSC  |GUATEMALA    |12    |     10|   299|
|FULL    |6 months  |Guatemala BSC  |GUATEMALA    |NaN   |      0|   299|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |1     |   1365| 16784|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |2     |   1178| 16784|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |3     |   1421| 16784|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |4     |   1193| 16784|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |5     |   1141| 16784|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |6     |   1160| 16784|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |7     |   1246| 16784|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |8     |   1469| 16784|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |9     |   1558| 16784|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |10    |   1674| 16784|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |11    |   1679| 16784|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |12    |   1700| 16784|
|FULL    |6 months  |JiVitA-3       |BANGLADESH   |NaN   |      0| 16784|
|FULL    |6 months  |JiVitA-4       |BANGLADESH   |1     |     50|  4833|
|FULL    |6 months  |JiVitA-4       |BANGLADESH   |2     |    165|  4833|
|FULL    |6 months  |JiVitA-4       |BANGLADESH   |3     |    432|  4833|
|FULL    |6 months  |JiVitA-4       |BANGLADESH   |4     |    856|  4833|
|FULL    |6 months  |JiVitA-4       |BANGLADESH   |5     |    591|  4833|
|FULL    |6 months  |JiVitA-4       |BANGLADESH   |6     |    436|  4833|
|FULL    |6 months  |JiVitA-4       |BANGLADESH   |7     |    839|  4833|
|FULL    |6 months  |JiVitA-4       |BANGLADESH   |8     |    517|  4833|
|FULL    |6 months  |JiVitA-4       |BANGLADESH   |9     |    418|  4833|
|FULL    |6 months  |JiVitA-4       |BANGLADESH   |10    |    300|  4833|
|FULL    |6 months  |JiVitA-4       |BANGLADESH   |11    |    153|  4833|
|FULL    |6 months  |JiVitA-4       |BANGLADESH   |12    |     76|  4833|
|FULL    |6 months  |JiVitA-4       |BANGLADESH   |NaN   |      0|  4833|
|FULL    |6 months  |Keneba         |GAMBIA       |1     |    180|  2089|
|FULL    |6 months  |Keneba         |GAMBIA       |2     |    224|  2089|
|FULL    |6 months  |Keneba         |GAMBIA       |3     |    180|  2089|
|FULL    |6 months  |Keneba         |GAMBIA       |4     |    220|  2089|
|FULL    |6 months  |Keneba         |GAMBIA       |5     |    161|  2089|
|FULL    |6 months  |Keneba         |GAMBIA       |6     |    148|  2089|
|FULL    |6 months  |Keneba         |GAMBIA       |7     |    122|  2089|
|FULL    |6 months  |Keneba         |GAMBIA       |8     |    114|  2089|
|FULL    |6 months  |Keneba         |GAMBIA       |9     |    166|  2089|
|FULL    |6 months  |Keneba         |GAMBIA       |10    |    162|  2089|
|FULL    |6 months  |Keneba         |GAMBIA       |11    |    233|  2089|
|FULL    |6 months  |Keneba         |GAMBIA       |12    |    179|  2089|
|FULL    |6 months  |Keneba         |GAMBIA       |NaN   |      0|  2089|
|FULL    |6 months  |LCNI-5         |MALAWI       |1     |     55|   839|
|FULL    |6 months  |LCNI-5         |MALAWI       |2     |    114|   839|
|FULL    |6 months  |LCNI-5         |MALAWI       |3     |     98|   839|
|FULL    |6 months  |LCNI-5         |MALAWI       |4     |    110|   839|
|FULL    |6 months  |LCNI-5         |MALAWI       |5     |    111|   839|
|FULL    |6 months  |LCNI-5         |MALAWI       |6     |     91|   839|
|FULL    |6 months  |LCNI-5         |MALAWI       |7     |     72|   839|
|FULL    |6 months  |LCNI-5         |MALAWI       |8     |     41|   839|
|FULL    |6 months  |LCNI-5         |MALAWI       |9     |     29|   839|
|FULL    |6 months  |LCNI-5         |MALAWI       |10    |     35|   839|
|FULL    |6 months  |LCNI-5         |MALAWI       |11    |     49|   839|
|FULL    |6 months  |LCNI-5         |MALAWI       |12    |     34|   839|
|FULL    |6 months  |LCNI-5         |MALAWI       |NaN   |      0|   839|
|FULL    |6 months  |MAL-ED         |INDIA        |1     |     19|   236|
|FULL    |6 months  |MAL-ED         |INDIA        |2     |     18|   236|
|FULL    |6 months  |MAL-ED         |INDIA        |3     |     21|   236|
|FULL    |6 months  |MAL-ED         |INDIA        |4     |     16|   236|
|FULL    |6 months  |MAL-ED         |INDIA        |5     |      8|   236|
|FULL    |6 months  |MAL-ED         |INDIA        |6     |     18|   236|
|FULL    |6 months  |MAL-ED         |INDIA        |7     |     22|   236|
|FULL    |6 months  |MAL-ED         |INDIA        |8     |     23|   236|
|FULL    |6 months  |MAL-ED         |INDIA        |9     |     20|   236|
|FULL    |6 months  |MAL-ED         |INDIA        |10    |     27|   236|
|FULL    |6 months  |MAL-ED         |INDIA        |11    |     25|   236|
|FULL    |6 months  |MAL-ED         |INDIA        |12    |     19|   236|
|FULL    |6 months  |MAL-ED         |INDIA        |NaN   |      0|   236|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |1     |     17|   241|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |2     |     20|   241|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |3     |     25|   241|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |4     |     22|   241|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |5     |     21|   241|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |6     |      8|   241|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |7     |     20|   241|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |8     |     22|   241|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |9     |     22|   241|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |10    |     22|   241|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |11    |     16|   241|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |12    |     26|   241|
|FULL    |6 months  |MAL-ED         |BANGLADESH   |NaN   |      0|   241|
|FULL    |6 months  |MAL-ED         |PERU         |1     |     36|   273|
|FULL    |6 months  |MAL-ED         |PERU         |2     |     21|   273|
|FULL    |6 months  |MAL-ED         |PERU         |3     |     21|   273|
|FULL    |6 months  |MAL-ED         |PERU         |4     |     20|   273|
|FULL    |6 months  |MAL-ED         |PERU         |5     |     25|   273|
|FULL    |6 months  |MAL-ED         |PERU         |6     |     18|   273|
|FULL    |6 months  |MAL-ED         |PERU         |7     |     22|   273|
|FULL    |6 months  |MAL-ED         |PERU         |8     |     16|   273|
|FULL    |6 months  |MAL-ED         |PERU         |9     |     23|   273|
|FULL    |6 months  |MAL-ED         |PERU         |10    |     19|   273|
|FULL    |6 months  |MAL-ED         |PERU         |11    |     32|   273|
|FULL    |6 months  |MAL-ED         |PERU         |12    |     20|   273|
|FULL    |6 months  |MAL-ED         |PERU         |NaN   |      0|   273|
|FULL    |6 months  |MAL-ED         |NEPAL        |1     |     20|   236|
|FULL    |6 months  |MAL-ED         |NEPAL        |2     |     19|   236|
|FULL    |6 months  |MAL-ED         |NEPAL        |3     |     17|   236|
|FULL    |6 months  |MAL-ED         |NEPAL        |4     |     19|   236|
|FULL    |6 months  |MAL-ED         |NEPAL        |5     |     19|   236|
|FULL    |6 months  |MAL-ED         |NEPAL        |6     |     22|   236|
|FULL    |6 months  |MAL-ED         |NEPAL        |7     |     18|   236|
|FULL    |6 months  |MAL-ED         |NEPAL        |8     |     24|   236|
|FULL    |6 months  |MAL-ED         |NEPAL        |9     |     14|   236|
|FULL    |6 months  |MAL-ED         |NEPAL        |10    |     22|   236|
|FULL    |6 months  |MAL-ED         |NEPAL        |11    |     23|   236|
|FULL    |6 months  |MAL-ED         |NEPAL        |12    |     19|   236|
|FULL    |6 months  |MAL-ED         |NEPAL        |NaN   |      0|   236|
|FULL    |6 months  |MAL-ED         |BRAZIL       |1     |     13|   209|
|FULL    |6 months  |MAL-ED         |BRAZIL       |2     |     24|   209|
|FULL    |6 months  |MAL-ED         |BRAZIL       |3     |     17|   209|
|FULL    |6 months  |MAL-ED         |BRAZIL       |4     |     11|   209|
|FULL    |6 months  |MAL-ED         |BRAZIL       |5     |     21|   209|
|FULL    |6 months  |MAL-ED         |BRAZIL       |6     |      7|   209|
|FULL    |6 months  |MAL-ED         |BRAZIL       |7     |     17|   209|
|FULL    |6 months  |MAL-ED         |BRAZIL       |8     |     16|   209|
|FULL    |6 months  |MAL-ED         |BRAZIL       |9     |     29|   209|
|FULL    |6 months  |MAL-ED         |BRAZIL       |10    |     21|   209|
|FULL    |6 months  |MAL-ED         |BRAZIL       |11    |     18|   209|
|FULL    |6 months  |MAL-ED         |BRAZIL       |12    |     15|   209|
|FULL    |6 months  |MAL-ED         |BRAZIL       |NaN   |      0|   209|
|FULL    |6 months  |MAL-ED         |TANZANIA     |1     |     23|   247|
|FULL    |6 months  |MAL-ED         |TANZANIA     |2     |     27|   247|
|FULL    |6 months  |MAL-ED         |TANZANIA     |3     |     21|   247|
|FULL    |6 months  |MAL-ED         |TANZANIA     |4     |     10|   247|
|FULL    |6 months  |MAL-ED         |TANZANIA     |5     |     13|   247|
|FULL    |6 months  |MAL-ED         |TANZANIA     |6     |     20|   247|
|FULL    |6 months  |MAL-ED         |TANZANIA     |7     |     24|   247|
|FULL    |6 months  |MAL-ED         |TANZANIA     |8     |     12|   247|
|FULL    |6 months  |MAL-ED         |TANZANIA     |9     |     21|   247|
|FULL    |6 months  |MAL-ED         |TANZANIA     |10    |     18|   247|
|FULL    |6 months  |MAL-ED         |TANZANIA     |11    |     29|   247|
|FULL    |6 months  |MAL-ED         |TANZANIA     |12    |     29|   247|
|FULL    |6 months  |MAL-ED         |TANZANIA     |NaN   |      0|   247|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |1     |     38|   254|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |2     |     22|   254|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |3     |     16|   254|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |4     |     13|   254|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |5     |     12|   254|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |6     |     17|   254|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |7     |     24|   254|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |8     |      9|   254|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |9     |     18|   254|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |10    |     26|   254|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |11    |     23|   254|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |12    |     36|   254|
|FULL    |6 months  |MAL-ED         |SOUTH AFRICA |NaN   |      0|   254|
|FULL    |6 months  |NIH-Birth      |BANGLADESH   |1     |     50|   537|
|FULL    |6 months  |NIH-Birth      |BANGLADESH   |2     |     50|   537|
|FULL    |6 months  |NIH-Birth      |BANGLADESH   |3     |     50|   537|
|FULL    |6 months  |NIH-Birth      |BANGLADESH   |4     |     44|   537|
|FULL    |6 months  |NIH-Birth      |BANGLADESH   |5     |     40|   537|
|FULL    |6 months  |NIH-Birth      |BANGLADESH   |6     |     39|   537|
|FULL    |6 months  |NIH-Birth      |BANGLADESH   |7     |     45|   537|
|FULL    |6 months  |NIH-Birth      |BANGLADESH   |8     |     38|   537|
|FULL    |6 months  |NIH-Birth      |BANGLADESH   |9     |     30|   537|
|FULL    |6 months  |NIH-Birth      |BANGLADESH   |10    |     52|   537|
|FULL    |6 months  |NIH-Birth      |BANGLADESH   |11    |     49|   537|
|FULL    |6 months  |NIH-Birth      |BANGLADESH   |12    |     50|   537|
|FULL    |6 months  |NIH-Birth      |BANGLADESH   |NaN   |      0|   537|
|FULL    |6 months  |PROBIT         |BELARUS      |1     |   1100| 15757|
|FULL    |6 months  |PROBIT         |BELARUS      |2     |    950| 15757|
|FULL    |6 months  |PROBIT         |BELARUS      |3     |   1114| 15757|
|FULL    |6 months  |PROBIT         |BELARUS      |4     |   1070| 15757|
|FULL    |6 months  |PROBIT         |BELARUS      |5     |   1096| 15757|
|FULL    |6 months  |PROBIT         |BELARUS      |6     |   1121| 15757|
|FULL    |6 months  |PROBIT         |BELARUS      |7     |   1365| 15757|
|FULL    |6 months  |PROBIT         |BELARUS      |8     |   1498| 15757|
|FULL    |6 months  |PROBIT         |BELARUS      |9     |   1482| 15757|
|FULL    |6 months  |PROBIT         |BELARUS      |10    |   1668| 15757|
|FULL    |6 months  |PROBIT         |BELARUS      |11    |   1590| 15757|
|FULL    |6 months  |PROBIT         |BELARUS      |12    |   1703| 15757|
|FULL    |6 months  |PROBIT         |BELARUS      |NaN   |      0| 15757|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |1     |     29|   603|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |2     |     35|   603|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |3     |     32|   603|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |4     |     43|   603|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |5     |     36|   603|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |6     |     40|   603|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |7     |     77|   603|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |8     |     76|   603|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |9     |     61|   603|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |10    |     66|   603|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |11    |     67|   603|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |12    |     41|   603|
|FULL    |6 months  |PROVIDE        |BANGLADESH   |NaN   |      0|   603|
|FULL    |6 months  |ResPak         |PAKISTAN     |1     |      2|   239|
|FULL    |6 months  |ResPak         |PAKISTAN     |2     |      8|   239|
|FULL    |6 months  |ResPak         |PAKISTAN     |3     |     10|   239|
|FULL    |6 months  |ResPak         |PAKISTAN     |4     |     20|   239|
|FULL    |6 months  |ResPak         |PAKISTAN     |5     |     30|   239|
|FULL    |6 months  |ResPak         |PAKISTAN     |6     |     39|   239|
|FULL    |6 months  |ResPak         |PAKISTAN     |7     |     43|   239|
|FULL    |6 months  |ResPak         |PAKISTAN     |8     |     26|   239|
|FULL    |6 months  |ResPak         |PAKISTAN     |9     |     37|   239|
|FULL    |6 months  |ResPak         |PAKISTAN     |10    |     15|   239|
|FULL    |6 months  |ResPak         |PAKISTAN     |11    |      6|   239|
|FULL    |6 months  |ResPak         |PAKISTAN     |12    |      3|   239|
|FULL    |6 months  |ResPak         |PAKISTAN     |NaN   |      0|   239|
|FULL    |6 months  |SAS-CompFeed   |INDIA        |1     |     85|  1334|
|FULL    |6 months  |SAS-CompFeed   |INDIA        |2     |     81|  1334|
|FULL    |6 months  |SAS-CompFeed   |INDIA        |3     |     79|  1334|
|FULL    |6 months  |SAS-CompFeed   |INDIA        |4     |     74|  1334|
|FULL    |6 months  |SAS-CompFeed   |INDIA        |5     |     76|  1334|
|FULL    |6 months  |SAS-CompFeed   |INDIA        |6     |    102|  1334|
|FULL    |6 months  |SAS-CompFeed   |INDIA        |7     |    115|  1334|
|FULL    |6 months  |SAS-CompFeed   |INDIA        |8     |    152|  1334|
|FULL    |6 months  |SAS-CompFeed   |INDIA        |9     |    165|  1334|
|FULL    |6 months  |SAS-CompFeed   |INDIA        |10    |    150|  1334|
|FULL    |6 months  |SAS-CompFeed   |INDIA        |11    |    126|  1334|
|FULL    |6 months  |SAS-CompFeed   |INDIA        |12    |    129|  1334|
|FULL    |6 months  |SAS-CompFeed   |INDIA        |NaN   |      0|  1334|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA        |1     |     61|   380|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA        |2     |     37|   380|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA        |3     |     36|   380|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA        |4     |     26|   380|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA        |5     |     29|   380|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA        |6     |     31|   380|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA        |7     |     16|   380|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA        |8     |      0|   380|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA        |9     |     12|   380|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA        |10    |     26|   380|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA        |11    |     44|   380|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA        |12    |     62|   380|
|FULL    |6 months  |SAS-FoodSuppl  |INDIA        |NaN   |      0|   380|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA     |1     |    138|  2028|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA     |2     |    149|  2028|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA     |3     |    146|  2028|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA     |4     |    147|  2028|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA     |5     |    153|  2028|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA     |6     |    142|  2028|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA     |7     |    187|  2028|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA     |8     |    206|  2028|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA     |9     |    180|  2028|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA     |10    |    210|  2028|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA     |11    |    192|  2028|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA     |12    |    178|  2028|
|FULL    |6 months  |TanzaniaChild2 |TANZANIA     |NaN   |      0|  2028|
|FULL    |6 months  |Vellore Crypto |INDIA        |1     |     36|   408|
|FULL    |6 months  |Vellore Crypto |INDIA        |2     |     28|   408|
|FULL    |6 months  |Vellore Crypto |INDIA        |3     |     29|   408|
|FULL    |6 months  |Vellore Crypto |INDIA        |4     |     22|   408|
|FULL    |6 months  |Vellore Crypto |INDIA        |5     |     21|   408|
|FULL    |6 months  |Vellore Crypto |INDIA        |6     |     37|   408|
|FULL    |6 months  |Vellore Crypto |INDIA        |7     |     36|   408|
|FULL    |6 months  |Vellore Crypto |INDIA        |8     |     45|   408|
|FULL    |6 months  |Vellore Crypto |INDIA        |9     |     25|   408|
|FULL    |6 months  |Vellore Crypto |INDIA        |10    |     37|   408|
|FULL    |6 months  |Vellore Crypto |INDIA        |11    |     41|   408|
|FULL    |6 months  |Vellore Crypto |INDIA        |12    |     51|   408|
|FULL    |6 months  |Vellore Crypto |INDIA        |NaN   |      0|   408|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE     |1     |    816|  8505|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE     |2     |    602|  8505|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE     |3     |    735|  8505|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE     |4     |    661|  8505|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE     |5     |    617|  8505|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE     |6     |    666|  8505|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE     |7     |    660|  8505|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE     |8     |    760|  8505|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE     |9     |    785|  8505|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE     |10    |    618|  8505|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE     |11    |    746|  8505|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE     |12    |    839|  8505|
|FULL    |6 months  |ZVITAMBO       |ZIMBABWE     |NaN   |      0|  8505|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA        |1     |     34|   372|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA        |2     |     16|   372|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA        |3     |     32|   372|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA        |4     |     44|   372|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA        |5     |     34|   372|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA        |6     |     38|   372|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA        |7     |     40|   372|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA        |8     |     17|   372|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA        |9     |     19|   372|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA        |10    |     29|   372|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA        |11    |     44|   372|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA        |12    |     25|   372|
|FULL    |24 months |CMC-V-BCS-2002 |INDIA        |NaN   |      0|   372|
|FULL    |24 months |CMIN           |BANGLADESH   |1     |     27|   243|
|FULL    |24 months |CMIN           |BANGLADESH   |2     |     31|   243|
|FULL    |24 months |CMIN           |BANGLADESH   |3     |     19|   243|
|FULL    |24 months |CMIN           |BANGLADESH   |4     |     18|   243|
|FULL    |24 months |CMIN           |BANGLADESH   |5     |     19|   243|
|FULL    |24 months |CMIN           |BANGLADESH   |6     |     22|   243|
|FULL    |24 months |CMIN           |BANGLADESH   |7     |     12|   243|
|FULL    |24 months |CMIN           |BANGLADESH   |8     |     13|   243|
|FULL    |24 months |CMIN           |BANGLADESH   |9     |     18|   243|
|FULL    |24 months |CMIN           |BANGLADESH   |10    |     19|   243|
|FULL    |24 months |CMIN           |BANGLADESH   |11    |      2|   243|
|FULL    |24 months |CMIN           |BANGLADESH   |12    |     43|   243|
|FULL    |24 months |CMIN           |BANGLADESH   |NaN   |      0|   243|
|FULL    |24 months |CONTENT        |PERU         |1     |      8|   164|
|FULL    |24 months |CONTENT        |PERU         |2     |     10|   164|
|FULL    |24 months |CONTENT        |PERU         |3     |     20|   164|
|FULL    |24 months |CONTENT        |PERU         |4     |     13|   164|
|FULL    |24 months |CONTENT        |PERU         |5     |     22|   164|
|FULL    |24 months |CONTENT        |PERU         |6     |     11|   164|
|FULL    |24 months |CONTENT        |PERU         |7     |     13|   164|
|FULL    |24 months |CONTENT        |PERU         |8     |     23|   164|
|FULL    |24 months |CONTENT        |PERU         |9     |     11|   164|
|FULL    |24 months |CONTENT        |PERU         |10    |     12|   164|
|FULL    |24 months |CONTENT        |PERU         |11    |     17|   164|
|FULL    |24 months |CONTENT        |PERU         |12    |      4|   164|
|FULL    |24 months |CONTENT        |PERU         |NaN   |      0|   164|
|FULL    |24 months |EE             |PAKISTAN     |1     |     14|   168|
|FULL    |24 months |EE             |PAKISTAN     |2     |      4|   168|
|FULL    |24 months |EE             |PAKISTAN     |3     |      0|   168|
|FULL    |24 months |EE             |PAKISTAN     |4     |      0|   168|
|FULL    |24 months |EE             |PAKISTAN     |5     |      0|   168|
|FULL    |24 months |EE             |PAKISTAN     |6     |      0|   168|
|FULL    |24 months |EE             |PAKISTAN     |7     |      0|   168|
|FULL    |24 months |EE             |PAKISTAN     |8     |      0|   168|
|FULL    |24 months |EE             |PAKISTAN     |9     |      0|   168|
|FULL    |24 months |EE             |PAKISTAN     |10    |      4|   168|
|FULL    |24 months |EE             |PAKISTAN     |11    |     66|   168|
|FULL    |24 months |EE             |PAKISTAN     |12    |     80|   168|
|FULL    |24 months |EE             |PAKISTAN     |NaN   |      0|   168|
|FULL    |24 months |GMS-Nepal      |NEPAL        |1     |      0|   487|
|FULL    |24 months |GMS-Nepal      |NEPAL        |2     |      0|   487|
|FULL    |24 months |GMS-Nepal      |NEPAL        |3     |      0|   487|
|FULL    |24 months |GMS-Nepal      |NEPAL        |4     |      0|   487|
|FULL    |24 months |GMS-Nepal      |NEPAL        |5     |      0|   487|
|FULL    |24 months |GMS-Nepal      |NEPAL        |6     |     72|   487|
|FULL    |24 months |GMS-Nepal      |NEPAL        |7     |    200|   487|
|FULL    |24 months |GMS-Nepal      |NEPAL        |8     |    215|   487|
|FULL    |24 months |GMS-Nepal      |NEPAL        |9     |      0|   487|
|FULL    |24 months |GMS-Nepal      |NEPAL        |10    |      0|   487|
|FULL    |24 months |GMS-Nepal      |NEPAL        |11    |      0|   487|
|FULL    |24 months |GMS-Nepal      |NEPAL        |12    |      0|   487|
|FULL    |24 months |GMS-Nepal      |NEPAL        |NaN   |      0|   487|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |1     |    704|  8603|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |2     |    605|  8603|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |3     |    730|  8603|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |4     |    535|  8603|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |5     |    385|  8603|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |6     |    564|  8603|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |7     |    652|  8603|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |8     |    648|  8603|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |9     |    734|  8603|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |10    |    874|  8603|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |11    |    947|  8603|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |12    |   1225|  8603|
|FULL    |24 months |JiVitA-3       |BANGLADESH   |NaN   |      0|  8603|
|FULL    |24 months |JiVitA-4       |BANGLADESH   |1     |     45|  4735|
|FULL    |24 months |JiVitA-4       |BANGLADESH   |2     |    323|  4735|
|FULL    |24 months |JiVitA-4       |BANGLADESH   |3     |    403|  4735|
|FULL    |24 months |JiVitA-4       |BANGLADESH   |4     |    804|  4735|
|FULL    |24 months |JiVitA-4       |BANGLADESH   |5     |    562|  4735|
|FULL    |24 months |JiVitA-4       |BANGLADESH   |6     |    423|  4735|
|FULL    |24 months |JiVitA-4       |BANGLADESH   |7     |    788|  4735|
|FULL    |24 months |JiVitA-4       |BANGLADESH   |8     |    480|  4735|
|FULL    |24 months |JiVitA-4       |BANGLADESH   |9     |    425|  4735|
|FULL    |24 months |JiVitA-4       |BANGLADESH   |10    |    270|  4735|
|FULL    |24 months |JiVitA-4       |BANGLADESH   |11    |    142|  4735|
|FULL    |24 months |JiVitA-4       |BANGLADESH   |12    |     70|  4735|
|FULL    |24 months |JiVitA-4       |BANGLADESH   |NaN   |      0|  4735|
|FULL    |24 months |Keneba         |GAMBIA       |1     |    155|  1726|
|FULL    |24 months |Keneba         |GAMBIA       |2     |    174|  1726|
|FULL    |24 months |Keneba         |GAMBIA       |3     |    154|  1726|
|FULL    |24 months |Keneba         |GAMBIA       |4     |    169|  1726|
|FULL    |24 months |Keneba         |GAMBIA       |5     |    125|  1726|
|FULL    |24 months |Keneba         |GAMBIA       |6     |    131|  1726|
|FULL    |24 months |Keneba         |GAMBIA       |7     |     95|  1726|
|FULL    |24 months |Keneba         |GAMBIA       |8     |     94|  1726|
|FULL    |24 months |Keneba         |GAMBIA       |9     |    154|  1726|
|FULL    |24 months |Keneba         |GAMBIA       |10    |    154|  1726|
|FULL    |24 months |Keneba         |GAMBIA       |11    |    189|  1726|
|FULL    |24 months |Keneba         |GAMBIA       |12    |    132|  1726|
|FULL    |24 months |Keneba         |GAMBIA       |NaN   |      0|  1726|
|FULL    |24 months |LCNI-5         |MALAWI       |1     |     40|   563|
|FULL    |24 months |LCNI-5         |MALAWI       |2     |     86|   563|
|FULL    |24 months |LCNI-5         |MALAWI       |3     |     67|   563|
|FULL    |24 months |LCNI-5         |MALAWI       |4     |     74|   563|
|FULL    |24 months |LCNI-5         |MALAWI       |5     |     62|   563|
|FULL    |24 months |LCNI-5         |MALAWI       |6     |     64|   563|
|FULL    |24 months |LCNI-5         |MALAWI       |7     |     39|   563|
|FULL    |24 months |LCNI-5         |MALAWI       |8     |     27|   563|
|FULL    |24 months |LCNI-5         |MALAWI       |9     |     20|   563|
|FULL    |24 months |LCNI-5         |MALAWI       |10    |     25|   563|
|FULL    |24 months |LCNI-5         |MALAWI       |11    |     35|   563|
|FULL    |24 months |LCNI-5         |MALAWI       |12    |     24|   563|
|FULL    |24 months |LCNI-5         |MALAWI       |NaN   |      0|   563|
|FULL    |24 months |MAL-ED         |INDIA        |1     |     19|   227|
|FULL    |24 months |MAL-ED         |INDIA        |2     |     18|   227|
|FULL    |24 months |MAL-ED         |INDIA        |3     |     18|   227|
|FULL    |24 months |MAL-ED         |INDIA        |4     |     15|   227|
|FULL    |24 months |MAL-ED         |INDIA        |5     |      8|   227|
|FULL    |24 months |MAL-ED         |INDIA        |6     |     17|   227|
|FULL    |24 months |MAL-ED         |INDIA        |7     |     22|   227|
|FULL    |24 months |MAL-ED         |INDIA        |8     |     22|   227|
|FULL    |24 months |MAL-ED         |INDIA        |9     |     18|   227|
|FULL    |24 months |MAL-ED         |INDIA        |10    |     27|   227|
|FULL    |24 months |MAL-ED         |INDIA        |11    |     24|   227|
|FULL    |24 months |MAL-ED         |INDIA        |12    |     19|   227|
|FULL    |24 months |MAL-ED         |INDIA        |NaN   |      0|   227|
|FULL    |24 months |MAL-ED         |BANGLADESH   |1     |     15|   212|
|FULL    |24 months |MAL-ED         |BANGLADESH   |2     |     17|   212|
|FULL    |24 months |MAL-ED         |BANGLADESH   |3     |     20|   212|
|FULL    |24 months |MAL-ED         |BANGLADESH   |4     |     20|   212|
|FULL    |24 months |MAL-ED         |BANGLADESH   |5     |     19|   212|
|FULL    |24 months |MAL-ED         |BANGLADESH   |6     |      5|   212|
|FULL    |24 months |MAL-ED         |BANGLADESH   |7     |     20|   212|
|FULL    |24 months |MAL-ED         |BANGLADESH   |8     |     21|   212|
|FULL    |24 months |MAL-ED         |BANGLADESH   |9     |     19|   212|
|FULL    |24 months |MAL-ED         |BANGLADESH   |10    |     20|   212|
|FULL    |24 months |MAL-ED         |BANGLADESH   |11    |     10|   212|
|FULL    |24 months |MAL-ED         |BANGLADESH   |12    |     26|   212|
|FULL    |24 months |MAL-ED         |BANGLADESH   |NaN   |      0|   212|
|FULL    |24 months |MAL-ED         |PERU         |1     |     28|   201|
|FULL    |24 months |MAL-ED         |PERU         |2     |     19|   201|
|FULL    |24 months |MAL-ED         |PERU         |3     |     14|   201|
|FULL    |24 months |MAL-ED         |PERU         |4     |     12|   201|
|FULL    |24 months |MAL-ED         |PERU         |5     |     19|   201|
|FULL    |24 months |MAL-ED         |PERU         |6     |     11|   201|
|FULL    |24 months |MAL-ED         |PERU         |7     |     15|   201|
|FULL    |24 months |MAL-ED         |PERU         |8     |     12|   201|
|FULL    |24 months |MAL-ED         |PERU         |9     |     21|   201|
|FULL    |24 months |MAL-ED         |PERU         |10    |     13|   201|
|FULL    |24 months |MAL-ED         |PERU         |11    |     21|   201|
|FULL    |24 months |MAL-ED         |PERU         |12    |     16|   201|
|FULL    |24 months |MAL-ED         |PERU         |NaN   |      0|   201|
|FULL    |24 months |MAL-ED         |NEPAL        |1     |     19|   228|
|FULL    |24 months |MAL-ED         |NEPAL        |2     |     17|   228|
|FULL    |24 months |MAL-ED         |NEPAL        |3     |     17|   228|
|FULL    |24 months |MAL-ED         |NEPAL        |4     |     19|   228|
|FULL    |24 months |MAL-ED         |NEPAL        |5     |     18|   228|
|FULL    |24 months |MAL-ED         |NEPAL        |6     |     22|   228|
|FULL    |24 months |MAL-ED         |NEPAL        |7     |     17|   228|
|FULL    |24 months |MAL-ED         |NEPAL        |8     |     24|   228|
|FULL    |24 months |MAL-ED         |NEPAL        |9     |     13|   228|
|FULL    |24 months |MAL-ED         |NEPAL        |10    |     21|   228|
|FULL    |24 months |MAL-ED         |NEPAL        |11    |     23|   228|
|FULL    |24 months |MAL-ED         |NEPAL        |12    |     18|   228|
|FULL    |24 months |MAL-ED         |NEPAL        |NaN   |      0|   228|
|FULL    |24 months |MAL-ED         |BRAZIL       |1     |     13|   169|
|FULL    |24 months |MAL-ED         |BRAZIL       |2     |     17|   169|
|FULL    |24 months |MAL-ED         |BRAZIL       |3     |     15|   169|
|FULL    |24 months |MAL-ED         |BRAZIL       |4     |     10|   169|
|FULL    |24 months |MAL-ED         |BRAZIL       |5     |     15|   169|
|FULL    |24 months |MAL-ED         |BRAZIL       |6     |      5|   169|
|FULL    |24 months |MAL-ED         |BRAZIL       |7     |     11|   169|
|FULL    |24 months |MAL-ED         |BRAZIL       |8     |     13|   169|
|FULL    |24 months |MAL-ED         |BRAZIL       |9     |     26|   169|
|FULL    |24 months |MAL-ED         |BRAZIL       |10    |     15|   169|
|FULL    |24 months |MAL-ED         |BRAZIL       |11    |     15|   169|
|FULL    |24 months |MAL-ED         |BRAZIL       |12    |     14|   169|
|FULL    |24 months |MAL-ED         |BRAZIL       |NaN   |      0|   169|
|FULL    |24 months |MAL-ED         |TANZANIA     |1     |     19|   214|
|FULL    |24 months |MAL-ED         |TANZANIA     |2     |     18|   214|
|FULL    |24 months |MAL-ED         |TANZANIA     |3     |     21|   214|
|FULL    |24 months |MAL-ED         |TANZANIA     |4     |      8|   214|
|FULL    |24 months |MAL-ED         |TANZANIA     |5     |     14|   214|
|FULL    |24 months |MAL-ED         |TANZANIA     |6     |     19|   214|
|FULL    |24 months |MAL-ED         |TANZANIA     |7     |     24|   214|
|FULL    |24 months |MAL-ED         |TANZANIA     |8     |     12|   214|
|FULL    |24 months |MAL-ED         |TANZANIA     |9     |     17|   214|
|FULL    |24 months |MAL-ED         |TANZANIA     |10    |     15|   214|
|FULL    |24 months |MAL-ED         |TANZANIA     |11    |     23|   214|
|FULL    |24 months |MAL-ED         |TANZANIA     |12    |     24|   214|
|FULL    |24 months |MAL-ED         |TANZANIA     |NaN   |      0|   214|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |1     |     34|   238|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |2     |     21|   238|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |3     |     15|   238|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |4     |     12|   238|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |5     |     11|   238|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |6     |     15|   238|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |7     |     24|   238|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |8     |      8|   238|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |9     |     19|   238|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |10    |     25|   238|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |11    |     22|   238|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |12    |     32|   238|
|FULL    |24 months |MAL-ED         |SOUTH AFRICA |NaN   |      0|   238|
|FULL    |24 months |NIH-Birth      |BANGLADESH   |1     |     42|   428|
|FULL    |24 months |NIH-Birth      |BANGLADESH   |2     |     36|   428|
|FULL    |24 months |NIH-Birth      |BANGLADESH   |3     |     41|   428|
|FULL    |24 months |NIH-Birth      |BANGLADESH   |4     |     34|   428|
|FULL    |24 months |NIH-Birth      |BANGLADESH   |5     |     34|   428|
|FULL    |24 months |NIH-Birth      |BANGLADESH   |6     |     30|   428|
|FULL    |24 months |NIH-Birth      |BANGLADESH   |7     |     37|   428|
|FULL    |24 months |NIH-Birth      |BANGLADESH   |8     |     30|   428|
|FULL    |24 months |NIH-Birth      |BANGLADESH   |9     |     19|   428|
|FULL    |24 months |NIH-Birth      |BANGLADESH   |10    |     40|   428|
|FULL    |24 months |NIH-Birth      |BANGLADESH   |11    |     40|   428|
|FULL    |24 months |NIH-Birth      |BANGLADESH   |12    |     45|   428|
|FULL    |24 months |NIH-Birth      |BANGLADESH   |NaN   |      0|   428|
|FULL    |24 months |PROBIT         |BELARUS      |1     |    264|  3970|
|FULL    |24 months |PROBIT         |BELARUS      |2     |    210|  3970|
|FULL    |24 months |PROBIT         |BELARUS      |3     |    320|  3970|
|FULL    |24 months |PROBIT         |BELARUS      |4     |    322|  3970|
|FULL    |24 months |PROBIT         |BELARUS      |5     |    301|  3970|
|FULL    |24 months |PROBIT         |BELARUS      |6     |    264|  3970|
|FULL    |24 months |PROBIT         |BELARUS      |7     |    364|  3970|
|FULL    |24 months |PROBIT         |BELARUS      |8     |    346|  3970|
|FULL    |24 months |PROBIT         |BELARUS      |9     |    375|  3970|
|FULL    |24 months |PROBIT         |BELARUS      |10    |    389|  3970|
|FULL    |24 months |PROBIT         |BELARUS      |11    |    386|  3970|
|FULL    |24 months |PROBIT         |BELARUS      |12    |    429|  3970|
|FULL    |24 months |PROBIT         |BELARUS      |NaN   |      0|  3970|
|FULL    |24 months |PROVIDE        |BANGLADESH   |1     |     28|   579|
|FULL    |24 months |PROVIDE        |BANGLADESH   |2     |     32|   579|
|FULL    |24 months |PROVIDE        |BANGLADESH   |3     |     30|   579|
|FULL    |24 months |PROVIDE        |BANGLADESH   |4     |     40|   579|
|FULL    |24 months |PROVIDE        |BANGLADESH   |5     |     33|   579|
|FULL    |24 months |PROVIDE        |BANGLADESH   |6     |     42|   579|
|FULL    |24 months |PROVIDE        |BANGLADESH   |7     |     75|   579|
|FULL    |24 months |PROVIDE        |BANGLADESH   |8     |     70|   579|
|FULL    |24 months |PROVIDE        |BANGLADESH   |9     |     60|   579|
|FULL    |24 months |PROVIDE        |BANGLADESH   |10    |     67|   579|
|FULL    |24 months |PROVIDE        |BANGLADESH   |11    |     64|   579|
|FULL    |24 months |PROVIDE        |BANGLADESH   |12    |     38|   579|
|FULL    |24 months |PROVIDE        |BANGLADESH   |NaN   |      0|   579|
|FULL    |24 months |TanzaniaChild2 |TANZANIA     |1     |      0|     6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA     |2     |      0|     6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA     |3     |      2|     6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA     |4     |      1|     6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA     |5     |      1|     6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA     |6     |      1|     6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA     |7     |      1|     6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA     |8     |      0|     6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA     |9     |      0|     6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA     |10    |      0|     6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA     |11    |      0|     6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA     |12    |      0|     6|
|FULL    |24 months |TanzaniaChild2 |TANZANIA     |NaN   |      0|     6|
|FULL    |24 months |Vellore Crypto |INDIA        |1     |     36|   409|
|FULL    |24 months |Vellore Crypto |INDIA        |2     |     28|   409|
|FULL    |24 months |Vellore Crypto |INDIA        |3     |     29|   409|
|FULL    |24 months |Vellore Crypto |INDIA        |4     |     22|   409|
|FULL    |24 months |Vellore Crypto |INDIA        |5     |     21|   409|
|FULL    |24 months |Vellore Crypto |INDIA        |6     |     37|   409|
|FULL    |24 months |Vellore Crypto |INDIA        |7     |     36|   409|
|FULL    |24 months |Vellore Crypto |INDIA        |8     |     45|   409|
|FULL    |24 months |Vellore Crypto |INDIA        |9     |     27|   409|
|FULL    |24 months |Vellore Crypto |INDIA        |10    |     36|   409|
|FULL    |24 months |Vellore Crypto |INDIA        |11    |     41|   409|
|FULL    |24 months |Vellore Crypto |INDIA        |12    |     51|   409|
|FULL    |24 months |Vellore Crypto |INDIA        |NaN   |      0|   409|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE     |1     |     49|   433|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE     |2     |     63|   433|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE     |3     |     56|   433|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE     |4     |     45|   433|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE     |5     |     50|   433|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE     |6     |     44|   433|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE     |7     |     32|   433|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE     |8     |     30|   433|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE     |9     |      2|   433|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE     |10    |      4|   433|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE     |11    |     20|   433|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE     |12    |     38|   433|
|FULL    |24 months |ZVITAMBO       |ZIMBABWE     |NaN   |      0|   433|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA        |1     |     22|   363|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA        |2     |     34|   363|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA        |3     |     17|   363|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA        |4     |     35|   363|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA        |5     |     42|   363|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA        |6     |     28|   363|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA        |7     |     38|   363|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA        |8     |     43|   363|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA        |9     |     12|   363|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA        |10    |     18|   363|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA        |11    |     34|   363|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA        |12    |     40|   363|
|QI      |Birth     |CMC-V-BCS-2002 |INDIA        |NaN   |      0|   363|
|QI      |Birth     |CMIN           |BANGLADESH   |1     |      2|    21|
|QI      |Birth     |CMIN           |BANGLADESH   |2     |      3|    21|
|QI      |Birth     |CMIN           |BANGLADESH   |3     |      3|    21|
|QI      |Birth     |CMIN           |BANGLADESH   |4     |      0|    21|
|QI      |Birth     |CMIN           |BANGLADESH   |5     |      5|    21|
|QI      |Birth     |CMIN           |BANGLADESH   |6     |      0|    21|
|QI      |Birth     |CMIN           |BANGLADESH   |7     |      2|    21|
|QI      |Birth     |CMIN           |BANGLADESH   |8     |      0|    21|
|QI      |Birth     |CMIN           |BANGLADESH   |9     |      2|    21|
|QI      |Birth     |CMIN           |BANGLADESH   |10    |      1|    21|
|QI      |Birth     |CMIN           |BANGLADESH   |11    |      0|    21|
|QI      |Birth     |CMIN           |BANGLADESH   |12    |      3|    21|
|QI      |Birth     |CMIN           |BANGLADESH   |NaN   |      0|    21|
|QI      |Birth     |COHORTS        |INDIA        |1     |      0|  6666|
|QI      |Birth     |COHORTS        |INDIA        |2     |      0|  6666|
|QI      |Birth     |COHORTS        |INDIA        |3     |      0|  6666|
|QI      |Birth     |COHORTS        |INDIA        |4     |      0|  6666|
|QI      |Birth     |COHORTS        |INDIA        |5     |      0|  6666|
|QI      |Birth     |COHORTS        |INDIA        |6     |      0|  6666|
|QI      |Birth     |COHORTS        |INDIA        |7     |      0|  6666|
|QI      |Birth     |COHORTS        |INDIA        |8     |      0|  6666|
|QI      |Birth     |COHORTS        |INDIA        |9     |      0|  6666|
|QI      |Birth     |COHORTS        |INDIA        |10    |      0|  6666|
|QI      |Birth     |COHORTS        |INDIA        |11    |      0|  6666|
|QI      |Birth     |COHORTS        |INDIA        |12    |      0|  6666|
|QI      |Birth     |COHORTS        |INDIA        |NaN   |   6666|  6666|
|QI      |Birth     |COHORTS        |GUATEMALA    |1     |      0|   569|
|QI      |Birth     |COHORTS        |GUATEMALA    |2     |      0|   569|
|QI      |Birth     |COHORTS        |GUATEMALA    |3     |      0|   569|
|QI      |Birth     |COHORTS        |GUATEMALA    |4     |      0|   569|
|QI      |Birth     |COHORTS        |GUATEMALA    |5     |      0|   569|
|QI      |Birth     |COHORTS        |GUATEMALA    |6     |      0|   569|
|QI      |Birth     |COHORTS        |GUATEMALA    |7     |      0|   569|
|QI      |Birth     |COHORTS        |GUATEMALA    |8     |      0|   569|
|QI      |Birth     |COHORTS        |GUATEMALA    |9     |      0|   569|
|QI      |Birth     |COHORTS        |GUATEMALA    |10    |      0|   569|
|QI      |Birth     |COHORTS        |GUATEMALA    |11    |      0|   569|
|QI      |Birth     |COHORTS        |GUATEMALA    |12    |      0|   569|
|QI      |Birth     |COHORTS        |GUATEMALA    |NaN   |    569|   569|
|QI      |Birth     |COHORTS        |PHILIPPINES  |1     |      0|  3050|
|QI      |Birth     |COHORTS        |PHILIPPINES  |2     |      0|  3050|
|QI      |Birth     |COHORTS        |PHILIPPINES  |3     |      0|  3050|
|QI      |Birth     |COHORTS        |PHILIPPINES  |4     |      0|  3050|
|QI      |Birth     |COHORTS        |PHILIPPINES  |5     |      0|  3050|
|QI      |Birth     |COHORTS        |PHILIPPINES  |6     |      0|  3050|
|QI      |Birth     |COHORTS        |PHILIPPINES  |7     |      0|  3050|
|QI      |Birth     |COHORTS        |PHILIPPINES  |8     |      0|  3050|
|QI      |Birth     |COHORTS        |PHILIPPINES  |9     |      0|  3050|
|QI      |Birth     |COHORTS        |PHILIPPINES  |10    |      0|  3050|
|QI      |Birth     |COHORTS        |PHILIPPINES  |11    |      0|  3050|
|QI      |Birth     |COHORTS        |PHILIPPINES  |12    |      0|  3050|
|QI      |Birth     |COHORTS        |PHILIPPINES  |NaN   |   3050|  3050|
|QI      |Birth     |CONTENT        |PERU         |1     |      0|     3|
|QI      |Birth     |CONTENT        |PERU         |2     |      0|     3|
|QI      |Birth     |CONTENT        |PERU         |3     |      2|     3|
|QI      |Birth     |CONTENT        |PERU         |4     |      1|     3|
|QI      |Birth     |CONTENT        |PERU         |5     |      0|     3|
|QI      |Birth     |CONTENT        |PERU         |6     |      0|     3|
|QI      |Birth     |CONTENT        |PERU         |7     |      0|     3|
|QI      |Birth     |CONTENT        |PERU         |8     |      0|     3|
|QI      |Birth     |CONTENT        |PERU         |9     |      0|     3|
|QI      |Birth     |CONTENT        |PERU         |10    |      0|     3|
|QI      |Birth     |CONTENT        |PERU         |11    |      0|     3|
|QI      |Birth     |CONTENT        |PERU         |12    |      0|     3|
|QI      |Birth     |CONTENT        |PERU         |NaN   |      0|     3|
|QI      |Birth     |EE             |PAKISTAN     |1     |     87|   378|
|QI      |Birth     |EE             |PAKISTAN     |2     |     90|   378|
|QI      |Birth     |EE             |PAKISTAN     |3     |     77|   378|
|QI      |Birth     |EE             |PAKISTAN     |4     |     40|   378|
|QI      |Birth     |EE             |PAKISTAN     |5     |     13|   378|
|QI      |Birth     |EE             |PAKISTAN     |6     |      0|   378|
|QI      |Birth     |EE             |PAKISTAN     |7     |      0|   378|
|QI      |Birth     |EE             |PAKISTAN     |8     |      0|   378|
|QI      |Birth     |EE             |PAKISTAN     |9     |      0|   378|
|QI      |Birth     |EE             |PAKISTAN     |10    |      0|   378|
|QI      |Birth     |EE             |PAKISTAN     |11    |      4|   378|
|QI      |Birth     |EE             |PAKISTAN     |12    |     67|   378|
|QI      |Birth     |EE             |PAKISTAN     |NaN   |      0|   378|
|QI      |Birth     |GMS-Nepal      |NEPAL        |1     |      0|   692|
|QI      |Birth     |GMS-Nepal      |NEPAL        |2     |      0|   692|
|QI      |Birth     |GMS-Nepal      |NEPAL        |3     |      0|   692|
|QI      |Birth     |GMS-Nepal      |NEPAL        |4     |      0|   692|
|QI      |Birth     |GMS-Nepal      |NEPAL        |5     |      1|   692|
|QI      |Birth     |GMS-Nepal      |NEPAL        |6     |      0|   692|
|QI      |Birth     |GMS-Nepal      |NEPAL        |7     |    189|   692|
|QI      |Birth     |GMS-Nepal      |NEPAL        |8     |    250|   692|
|QI      |Birth     |GMS-Nepal      |NEPAL        |9     |    252|   692|
|QI      |Birth     |GMS-Nepal      |NEPAL        |10    |      0|   692|
|QI      |Birth     |GMS-Nepal      |NEPAL        |11    |      0|   692|
|QI      |Birth     |GMS-Nepal      |NEPAL        |12    |      0|   692|
|QI      |Birth     |GMS-Nepal      |NEPAL        |NaN   |      0|   692|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |1     |   1274| 11319|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |2     |   1030| 11319|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |3     |    805| 11319|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |4     |    986| 11319|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |5     |    725| 11319|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |6     |    579| 11319|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |7     |    615| 11319|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |8     |    647| 11319|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |9     |    915| 11319|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |10    |   1227| 11319|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |11    |   1261| 11319|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |12    |   1255| 11319|
|QI      |Birth     |JiVitA-3       |BANGLADESH   |NaN   |      0| 11319|
|QI      |Birth     |JiVitA-4       |BANGLADESH   |1     |      0|   734|
|QI      |Birth     |JiVitA-4       |BANGLADESH   |2     |      0|   734|
|QI      |Birth     |JiVitA-4       |BANGLADESH   |3     |     82|   734|
|QI      |Birth     |JiVitA-4       |BANGLADESH   |4     |    110|   734|
|QI      |Birth     |JiVitA-4       |BANGLADESH   |5     |    116|   734|
|QI      |Birth     |JiVitA-4       |BANGLADESH   |6     |    143|   734|
|QI      |Birth     |JiVitA-4       |BANGLADESH   |7     |     75|   734|
|QI      |Birth     |JiVitA-4       |BANGLADESH   |8     |     99|   734|
|QI      |Birth     |JiVitA-4       |BANGLADESH   |9     |     61|   734|
|QI      |Birth     |JiVitA-4       |BANGLADESH   |10    |     39|   734|
|QI      |Birth     |JiVitA-4       |BANGLADESH   |11    |      9|   734|
|QI      |Birth     |JiVitA-4       |BANGLADESH   |12    |      0|   734|
|QI      |Birth     |JiVitA-4       |BANGLADESH   |NaN   |      0|   734|
|QI      |Birth     |Keneba         |GAMBIA       |1     |    177|  2107|
|QI      |Birth     |Keneba         |GAMBIA       |2     |    212|  2107|
|QI      |Birth     |Keneba         |GAMBIA       |3     |    208|  2107|
|QI      |Birth     |Keneba         |GAMBIA       |4     |    241|  2107|
|QI      |Birth     |Keneba         |GAMBIA       |5     |    126|  2107|
|QI      |Birth     |Keneba         |GAMBIA       |6     |    129|  2107|
|QI      |Birth     |Keneba         |GAMBIA       |7     |    121|  2107|
|QI      |Birth     |Keneba         |GAMBIA       |8     |    112|  2107|
|QI      |Birth     |Keneba         |GAMBIA       |9     |    165|  2107|
|QI      |Birth     |Keneba         |GAMBIA       |10    |    188|  2107|
|QI      |Birth     |Keneba         |GAMBIA       |11    |    261|  2107|
|QI      |Birth     |Keneba         |GAMBIA       |12    |    167|  2107|
|QI      |Birth     |Keneba         |GAMBIA       |NaN   |      0|  2107|
|QI      |Birth     |MAL-ED         |INDIA        |1     |     17|   244|
|QI      |Birth     |MAL-ED         |INDIA        |2     |     21|   244|
|QI      |Birth     |MAL-ED         |INDIA        |3     |     21|   244|
|QI      |Birth     |MAL-ED         |INDIA        |4     |     23|   244|
|QI      |Birth     |MAL-ED         |INDIA        |5     |     17|   244|
|QI      |Birth     |MAL-ED         |INDIA        |6     |      5|   244|
|QI      |Birth     |MAL-ED         |INDIA        |7     |     24|   244|
|QI      |Birth     |MAL-ED         |INDIA        |8     |     18|   244|
|QI      |Birth     |MAL-ED         |INDIA        |9     |     20|   244|
|QI      |Birth     |MAL-ED         |INDIA        |10    |     22|   244|
|QI      |Birth     |MAL-ED         |INDIA        |11    |     30|   244|
|QI      |Birth     |MAL-ED         |INDIA        |12    |     26|   244|
|QI      |Birth     |MAL-ED         |INDIA        |NaN   |      0|   244|
|QI      |Birth     |MAL-ED         |BANGLADESH   |1     |     34|   262|
|QI      |Birth     |MAL-ED         |BANGLADESH   |2     |     18|   262|
|QI      |Birth     |MAL-ED         |BANGLADESH   |3     |     19|   262|
|QI      |Birth     |MAL-ED         |BANGLADESH   |4     |     25|   262|
|QI      |Birth     |MAL-ED         |BANGLADESH   |5     |     28|   262|
|QI      |Birth     |MAL-ED         |BANGLADESH   |6     |     18|   262|
|QI      |Birth     |MAL-ED         |BANGLADESH   |7     |     16|   262|
|QI      |Birth     |MAL-ED         |BANGLADESH   |8     |     19|   262|
|QI      |Birth     |MAL-ED         |BANGLADESH   |9     |     25|   262|
|QI      |Birth     |MAL-ED         |BANGLADESH   |10    |     14|   262|
|QI      |Birth     |MAL-ED         |BANGLADESH   |11    |     25|   262|
|QI      |Birth     |MAL-ED         |BANGLADESH   |12    |     21|   262|
|QI      |Birth     |MAL-ED         |BANGLADESH   |NaN   |      0|   262|
|QI      |Birth     |MAL-ED         |PERU         |1     |     25|   302|
|QI      |Birth     |MAL-ED         |PERU         |2     |     46|   302|
|QI      |Birth     |MAL-ED         |PERU         |3     |     24|   302|
|QI      |Birth     |MAL-ED         |PERU         |4     |     12|   302|
|QI      |Birth     |MAL-ED         |PERU         |5     |     19|   302|
|QI      |Birth     |MAL-ED         |PERU         |6     |     22|   302|
|QI      |Birth     |MAL-ED         |PERU         |7     |     17|   302|
|QI      |Birth     |MAL-ED         |PERU         |8     |     29|   302|
|QI      |Birth     |MAL-ED         |PERU         |9     |     27|   302|
|QI      |Birth     |MAL-ED         |PERU         |10    |     23|   302|
|QI      |Birth     |MAL-ED         |PERU         |11    |     30|   302|
|QI      |Birth     |MAL-ED         |PERU         |12    |     28|   302|
|QI      |Birth     |MAL-ED         |PERU         |NaN   |      0|   302|
|QI      |Birth     |MAL-ED         |NEPAL        |1     |     13|   236|
|QI      |Birth     |MAL-ED         |NEPAL        |2     |     26|   236|
|QI      |Birth     |MAL-ED         |NEPAL        |3     |     14|   236|
|QI      |Birth     |MAL-ED         |NEPAL        |4     |     13|   236|
|QI      |Birth     |MAL-ED         |NEPAL        |5     |     24|   236|
|QI      |Birth     |MAL-ED         |NEPAL        |6     |     26|   236|
|QI      |Birth     |MAL-ED         |NEPAL        |7     |     22|   236|
|QI      |Birth     |MAL-ED         |NEPAL        |8     |     17|   236|
|QI      |Birth     |MAL-ED         |NEPAL        |9     |     26|   236|
|QI      |Birth     |MAL-ED         |NEPAL        |10    |     18|   236|
|QI      |Birth     |MAL-ED         |NEPAL        |11    |     23|   236|
|QI      |Birth     |MAL-ED         |NEPAL        |12    |     14|   236|
|QI      |Birth     |MAL-ED         |NEPAL        |NaN   |      0|   236|
|QI      |Birth     |MAL-ED         |BRAZIL       |1     |     13|   233|
|QI      |Birth     |MAL-ED         |BRAZIL       |2     |      9|   233|
|QI      |Birth     |MAL-ED         |BRAZIL       |3     |     24|   233|
|QI      |Birth     |MAL-ED         |BRAZIL       |4     |     20|   233|
|QI      |Birth     |MAL-ED         |BRAZIL       |5     |     20|   233|
|QI      |Birth     |MAL-ED         |BRAZIL       |6     |     20|   233|
|QI      |Birth     |MAL-ED         |BRAZIL       |7     |      4|   233|
|QI      |Birth     |MAL-ED         |BRAZIL       |8     |     15|   233|
|QI      |Birth     |MAL-ED         |BRAZIL       |9     |     24|   233|
|QI      |Birth     |MAL-ED         |BRAZIL       |10    |     35|   233|
|QI      |Birth     |MAL-ED         |BRAZIL       |11    |     21|   233|
|QI      |Birth     |MAL-ED         |BRAZIL       |12    |     28|   233|
|QI      |Birth     |MAL-ED         |BRAZIL       |NaN   |      0|   233|
|QI      |Birth     |MAL-ED         |TANZANIA     |1     |     22|   208|
|QI      |Birth     |MAL-ED         |TANZANIA     |2     |     19|   208|
|QI      |Birth     |MAL-ED         |TANZANIA     |3     |     23|   208|
|QI      |Birth     |MAL-ED         |TANZANIA     |4     |     13|   208|
|QI      |Birth     |MAL-ED         |TANZANIA     |5     |     13|   208|
|QI      |Birth     |MAL-ED         |TANZANIA     |6     |     12|   208|
|QI      |Birth     |MAL-ED         |TANZANIA     |7     |     21|   208|
|QI      |Birth     |MAL-ED         |TANZANIA     |8     |     20|   208|
|QI      |Birth     |MAL-ED         |TANZANIA     |9     |     10|   208|
|QI      |Birth     |MAL-ED         |TANZANIA     |10    |     11|   208|
|QI      |Birth     |MAL-ED         |TANZANIA     |11    |     22|   208|
|QI      |Birth     |MAL-ED         |TANZANIA     |12    |     22|   208|
|QI      |Birth     |MAL-ED         |TANZANIA     |NaN   |      0|   208|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |1     |     53|   314|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |2     |     31|   314|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |3     |     29|   314|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |4     |     21|   314|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |5     |     19|   314|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |6     |     19|   314|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |7     |     29|   314|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |8     |     32|   314|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |9     |      9|   314|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |10    |     25|   314|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |11    |     30|   314|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |12    |     17|   314|
|QI      |Birth     |MAL-ED         |SOUTH AFRICA |NaN   |      0|   314|
|QI      |Birth     |NIH-Birth      |BANGLADESH   |1     |     66|   606|
|QI      |Birth     |NIH-Birth      |BANGLADESH   |2     |     74|   606|
|QI      |Birth     |NIH-Birth      |BANGLADESH   |3     |     71|   606|
|QI      |Birth     |NIH-Birth      |BANGLADESH   |4     |     58|   606|
|QI      |Birth     |NIH-Birth      |BANGLADESH   |5     |     49|   606|
|QI      |Birth     |NIH-Birth      |BANGLADESH   |6     |     42|   606|
|QI      |Birth     |NIH-Birth      |BANGLADESH   |7     |     36|   606|
|QI      |Birth     |NIH-Birth      |BANGLADESH   |8     |     31|   606|
|QI      |Birth     |NIH-Birth      |BANGLADESH   |9     |     29|   606|
|QI      |Birth     |NIH-Birth      |BANGLADESH   |10    |     40|   606|
|QI      |Birth     |NIH-Birth      |BANGLADESH   |11    |     50|   606|
|QI      |Birth     |NIH-Birth      |BANGLADESH   |12    |     60|   606|
|QI      |Birth     |NIH-Birth      |BANGLADESH   |NaN   |      0|   606|
|QI      |Birth     |NIH-Crypto     |BANGLADESH   |1     |      0|   756|
|QI      |Birth     |NIH-Crypto     |BANGLADESH   |2     |      0|   756|
|QI      |Birth     |NIH-Crypto     |BANGLADESH   |3     |      0|   756|
|QI      |Birth     |NIH-Crypto     |BANGLADESH   |4     |      0|   756|
|QI      |Birth     |NIH-Crypto     |BANGLADESH   |5     |      0|   756|
|QI      |Birth     |NIH-Crypto     |BANGLADESH   |6     |      0|   756|
|QI      |Birth     |NIH-Crypto     |BANGLADESH   |7     |      0|   756|
|QI      |Birth     |NIH-Crypto     |BANGLADESH   |8     |      0|   756|
|QI      |Birth     |NIH-Crypto     |BANGLADESH   |9     |      0|   756|
|QI      |Birth     |NIH-Crypto     |BANGLADESH   |10    |      0|   756|
|QI      |Birth     |NIH-Crypto     |BANGLADESH   |11    |      0|   756|
|QI      |Birth     |NIH-Crypto     |BANGLADESH   |12    |      0|   756|
|QI      |Birth     |NIH-Crypto     |BANGLADESH   |NaN   |    756|   756|
|QI      |Birth     |PROBIT         |BELARUS      |1     |    722|  6687|
|QI      |Birth     |PROBIT         |BELARUS      |2     |    405|  6687|
|QI      |Birth     |PROBIT         |BELARUS      |3     |    411|  6687|
|QI      |Birth     |PROBIT         |BELARUS      |4     |    437|  6687|
|QI      |Birth     |PROBIT         |BELARUS      |5     |    478|  6687|
|QI      |Birth     |PROBIT         |BELARUS      |6     |    483|  6687|
|QI      |Birth     |PROBIT         |BELARUS      |7     |    520|  6687|
|QI      |Birth     |PROBIT         |BELARUS      |8     |    665|  6687|
|QI      |Birth     |PROBIT         |BELARUS      |9     |    654|  6687|
|QI      |Birth     |PROBIT         |BELARUS      |10    |    624|  6687|
|QI      |Birth     |PROBIT         |BELARUS      |11    |    690|  6687|
|QI      |Birth     |PROBIT         |BELARUS      |12    |    598|  6687|
|QI      |Birth     |PROBIT         |BELARUS      |NaN   |      0|  6687|
|QI      |Birth     |PROVIDE        |BANGLADESH   |1     |     25|   531|
|QI      |Birth     |PROVIDE        |BANGLADESH   |2     |     23|   531|
|QI      |Birth     |PROVIDE        |BANGLADESH   |3     |     27|   531|
|QI      |Birth     |PROVIDE        |BANGLADESH   |4     |     43|   531|
|QI      |Birth     |PROVIDE        |BANGLADESH   |5     |     18|   531|
|QI      |Birth     |PROVIDE        |BANGLADESH   |6     |     57|   531|
|QI      |Birth     |PROVIDE        |BANGLADESH   |7     |     79|   531|
|QI      |Birth     |PROVIDE        |BANGLADESH   |8     |     88|   531|
|QI      |Birth     |PROVIDE        |BANGLADESH   |9     |     44|   531|
|QI      |Birth     |PROVIDE        |BANGLADESH   |10    |     55|   531|
|QI      |Birth     |PROVIDE        |BANGLADESH   |11    |     52|   531|
|QI      |Birth     |PROVIDE        |BANGLADESH   |12    |     20|   531|
|QI      |Birth     |PROVIDE        |BANGLADESH   |NaN   |      0|   531|
|QI      |Birth     |ResPak         |PAKISTAN     |1     |      0|    42|
|QI      |Birth     |ResPak         |PAKISTAN     |2     |      1|    42|
|QI      |Birth     |ResPak         |PAKISTAN     |3     |      1|    42|
|QI      |Birth     |ResPak         |PAKISTAN     |4     |      1|    42|
|QI      |Birth     |ResPak         |PAKISTAN     |5     |      6|    42|
|QI      |Birth     |ResPak         |PAKISTAN     |6     |      7|    42|
|QI      |Birth     |ResPak         |PAKISTAN     |7     |      9|    42|
|QI      |Birth     |ResPak         |PAKISTAN     |8     |      6|    42|
|QI      |Birth     |ResPak         |PAKISTAN     |9     |      6|    42|
|QI      |Birth     |ResPak         |PAKISTAN     |10    |      3|    42|
|QI      |Birth     |ResPak         |PAKISTAN     |11    |      0|    42|
|QI      |Birth     |ResPak         |PAKISTAN     |12    |      2|    42|
|QI      |Birth     |ResPak         |PAKISTAN     |NaN   |      0|    42|
|QI      |Birth     |SAS-CompFeed   |INDIA        |1     |     83|   397|
|QI      |Birth     |SAS-CompFeed   |INDIA        |2     |     39|   397|
|QI      |Birth     |SAS-CompFeed   |INDIA        |3     |     41|   397|
|QI      |Birth     |SAS-CompFeed   |INDIA        |4     |     38|   397|
|QI      |Birth     |SAS-CompFeed   |INDIA        |5     |     16|   397|
|QI      |Birth     |SAS-CompFeed   |INDIA        |6     |     33|   397|
|QI      |Birth     |SAS-CompFeed   |INDIA        |7     |     54|   397|
|QI      |Birth     |SAS-CompFeed   |INDIA        |8     |      0|   397|
|QI      |Birth     |SAS-CompFeed   |INDIA        |9     |      0|   397|
|QI      |Birth     |SAS-CompFeed   |INDIA        |10    |      0|   397|
|QI      |Birth     |SAS-CompFeed   |INDIA        |11    |     57|   397|
|QI      |Birth     |SAS-CompFeed   |INDIA        |12    |     36|   397|
|QI      |Birth     |SAS-CompFeed   |INDIA        |NaN   |      0|   397|
|QI      |Birth     |TanzaniaChild2 |TANZANIA     |1     |    226|  2378|
|QI      |Birth     |TanzaniaChild2 |TANZANIA     |2     |    169|  2378|
|QI      |Birth     |TanzaniaChild2 |TANZANIA     |3     |    177|  2378|
|QI      |Birth     |TanzaniaChild2 |TANZANIA     |4     |    142|  2378|
|QI      |Birth     |TanzaniaChild2 |TANZANIA     |5     |    184|  2378|
|QI      |Birth     |TanzaniaChild2 |TANZANIA     |6     |    197|  2378|
|QI      |Birth     |TanzaniaChild2 |TANZANIA     |7     |    144|  2378|
|QI      |Birth     |TanzaniaChild2 |TANZANIA     |8     |    214|  2378|
|QI      |Birth     |TanzaniaChild2 |TANZANIA     |9     |    256|  2378|
|QI      |Birth     |TanzaniaChild2 |TANZANIA     |10    |    189|  2378|
|QI      |Birth     |TanzaniaChild2 |TANZANIA     |11    |    247|  2378|
|QI      |Birth     |TanzaniaChild2 |TANZANIA     |12    |    233|  2378|
|QI      |Birth     |TanzaniaChild2 |TANZANIA     |NaN   |      0|  2378|
|QI      |Birth     |Vellore Crypto |INDIA        |1     |     55|   379|
|QI      |Birth     |Vellore Crypto |INDIA        |2     |     38|   379|
|QI      |Birth     |Vellore Crypto |INDIA        |3     |     30|   379|
|QI      |Birth     |Vellore Crypto |INDIA        |4     |     27|   379|
|QI      |Birth     |Vellore Crypto |INDIA        |5     |     24|   379|
|QI      |Birth     |Vellore Crypto |INDIA        |6     |     19|   379|
|QI      |Birth     |Vellore Crypto |INDIA        |7     |     26|   379|
|QI      |Birth     |Vellore Crypto |INDIA        |8     |     29|   379|
|QI      |Birth     |Vellore Crypto |INDIA        |9     |     42|   379|
|QI      |Birth     |Vellore Crypto |INDIA        |10    |     29|   379|
|QI      |Birth     |Vellore Crypto |INDIA        |11    |     35|   379|
|QI      |Birth     |Vellore Crypto |INDIA        |12    |     25|   379|
|QI      |Birth     |Vellore Crypto |INDIA        |NaN   |      0|   379|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE     |1     |   1114| 12855|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE     |2     |   1330| 12855|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE     |3     |    957| 12855|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE     |4     |   1080| 12855|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE     |5     |    904| 12855|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE     |6     |    923| 12855|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE     |7     |   1063| 12855|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE     |8     |   1104| 12855|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE     |9     |   1152| 12855|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE     |10    |   1201| 12855|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE     |11    |    947| 12855|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE     |12    |   1080| 12855|
|QI      |Birth     |ZVITAMBO       |ZIMBABWE     |NaN   |      0| 12855|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA        |1     |     20|   347|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA        |2     |     31|   347|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA        |3     |     16|   347|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA        |4     |     36|   347|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA        |5     |     38|   347|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA        |6     |     26|   347|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA        |7     |     38|   347|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA        |8     |     43|   347|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA        |9     |     11|   347|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA        |10    |     16|   347|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA        |11    |     35|   347|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA        |12    |     37|   347|
|QI      |6 months  |CMC-V-BCS-2002 |INDIA        |NaN   |      0|   347|
|QI      |6 months  |CMIN           |BANGLADESH   |1     |     29|   234|
|QI      |6 months  |CMIN           |BANGLADESH   |2     |     25|   234|
|QI      |6 months  |CMIN           |BANGLADESH   |3     |     21|   234|
|QI      |6 months  |CMIN           |BANGLADESH   |4     |     20|   234|
|QI      |6 months  |CMIN           |BANGLADESH   |5     |     27|   234|
|QI      |6 months  |CMIN           |BANGLADESH   |6     |     11|   234|
|QI      |6 months  |CMIN           |BANGLADESH   |7     |     11|   234|
|QI      |6 months  |CMIN           |BANGLADESH   |8     |     16|   234|
|QI      |6 months  |CMIN           |BANGLADESH   |9     |      9|   234|
|QI      |6 months  |CMIN           |BANGLADESH   |10    |     22|   234|
|QI      |6 months  |CMIN           |BANGLADESH   |11    |     20|   234|
|QI      |6 months  |CMIN           |BANGLADESH   |12    |     23|   234|
|QI      |6 months  |CMIN           |BANGLADESH   |NaN   |      0|   234|
|QI      |6 months  |COHORTS        |INDIA        |1     |      0|  4368|
|QI      |6 months  |COHORTS        |INDIA        |2     |      0|  4368|
|QI      |6 months  |COHORTS        |INDIA        |3     |      0|  4368|
|QI      |6 months  |COHORTS        |INDIA        |4     |      0|  4368|
|QI      |6 months  |COHORTS        |INDIA        |5     |      0|  4368|
|QI      |6 months  |COHORTS        |INDIA        |6     |      0|  4368|
|QI      |6 months  |COHORTS        |INDIA        |7     |      0|  4368|
|QI      |6 months  |COHORTS        |INDIA        |8     |      0|  4368|
|QI      |6 months  |COHORTS        |INDIA        |9     |      0|  4368|
|QI      |6 months  |COHORTS        |INDIA        |10    |      0|  4368|
|QI      |6 months  |COHORTS        |INDIA        |11    |      0|  4368|
|QI      |6 months  |COHORTS        |INDIA        |12    |      0|  4368|
|QI      |6 months  |COHORTS        |INDIA        |NaN   |   4368|  4368|
|QI      |6 months  |COHORTS        |GUATEMALA    |1     |      0|   409|
|QI      |6 months  |COHORTS        |GUATEMALA    |2     |      0|   409|
|QI      |6 months  |COHORTS        |GUATEMALA    |3     |      0|   409|
|QI      |6 months  |COHORTS        |GUATEMALA    |4     |      0|   409|
|QI      |6 months  |COHORTS        |GUATEMALA    |5     |      0|   409|
|QI      |6 months  |COHORTS        |GUATEMALA    |6     |      0|   409|
|QI      |6 months  |COHORTS        |GUATEMALA    |7     |      0|   409|
|QI      |6 months  |COHORTS        |GUATEMALA    |8     |      0|   409|
|QI      |6 months  |COHORTS        |GUATEMALA    |9     |      0|   409|
|QI      |6 months  |COHORTS        |GUATEMALA    |10    |      0|   409|
|QI      |6 months  |COHORTS        |GUATEMALA    |11    |      0|   409|
|QI      |6 months  |COHORTS        |GUATEMALA    |12    |      0|   409|
|QI      |6 months  |COHORTS        |GUATEMALA    |NaN   |    409|   409|
|QI      |6 months  |COHORTS        |PHILIPPINES  |1     |      0|  2412|
|QI      |6 months  |COHORTS        |PHILIPPINES  |2     |      0|  2412|
|QI      |6 months  |COHORTS        |PHILIPPINES  |3     |      0|  2412|
|QI      |6 months  |COHORTS        |PHILIPPINES  |4     |      0|  2412|
|QI      |6 months  |COHORTS        |PHILIPPINES  |5     |      0|  2412|
|QI      |6 months  |COHORTS        |PHILIPPINES  |6     |      0|  2412|
|QI      |6 months  |COHORTS        |PHILIPPINES  |7     |      0|  2412|
|QI      |6 months  |COHORTS        |PHILIPPINES  |8     |      0|  2412|
|QI      |6 months  |COHORTS        |PHILIPPINES  |9     |      0|  2412|
|QI      |6 months  |COHORTS        |PHILIPPINES  |10    |      0|  2412|
|QI      |6 months  |COHORTS        |PHILIPPINES  |11    |      0|  2412|
|QI      |6 months  |COHORTS        |PHILIPPINES  |12    |      0|  2412|
|QI      |6 months  |COHORTS        |PHILIPPINES  |NaN   |   2412|  2412|
|QI      |6 months  |CONTENT        |PERU         |1     |     15|   207|
|QI      |6 months  |CONTENT        |PERU         |2     |     13|   207|
|QI      |6 months  |CONTENT        |PERU         |3     |     25|   207|
|QI      |6 months  |CONTENT        |PERU         |4     |     27|   207|
|QI      |6 months  |CONTENT        |PERU         |5     |     12|   207|
|QI      |6 months  |CONTENT        |PERU         |6     |     14|   207|
|QI      |6 months  |CONTENT        |PERU         |7     |     12|   207|
|QI      |6 months  |CONTENT        |PERU         |8     |     16|   207|
|QI      |6 months  |CONTENT        |PERU         |9     |     32|   207|
|QI      |6 months  |CONTENT        |PERU         |10    |     20|   207|
|QI      |6 months  |CONTENT        |PERU         |11    |     14|   207|
|QI      |6 months  |CONTENT        |PERU         |12    |      7|   207|
|QI      |6 months  |CONTENT        |PERU         |NaN   |      0|   207|
|QI      |6 months  |EE             |PAKISTAN     |1     |     80|   343|
|QI      |6 months  |EE             |PAKISTAN     |2     |     79|   343|
|QI      |6 months  |EE             |PAKISTAN     |3     |     71|   343|
|QI      |6 months  |EE             |PAKISTAN     |4     |     36|   343|
|QI      |6 months  |EE             |PAKISTAN     |5     |     12|   343|
|QI      |6 months  |EE             |PAKISTAN     |6     |      0|   343|
|QI      |6 months  |EE             |PAKISTAN     |7     |      0|   343|
|QI      |6 months  |EE             |PAKISTAN     |8     |      0|   343|
|QI      |6 months  |EE             |PAKISTAN     |9     |      0|   343|
|QI      |6 months  |EE             |PAKISTAN     |10    |      0|   343|
|QI      |6 months  |EE             |PAKISTAN     |11    |      4|   343|
|QI      |6 months  |EE             |PAKISTAN     |12    |     61|   343|
|QI      |6 months  |EE             |PAKISTAN     |NaN   |      0|   343|
|QI      |6 months  |GMS-Nepal      |NEPAL        |1     |      0|   552|
|QI      |6 months  |GMS-Nepal      |NEPAL        |2     |      0|   552|
|QI      |6 months  |GMS-Nepal      |NEPAL        |3     |      0|   552|
|QI      |6 months  |GMS-Nepal      |NEPAL        |4     |      0|   552|
|QI      |6 months  |GMS-Nepal      |NEPAL        |5     |      1|   552|
|QI      |6 months  |GMS-Nepal      |NEPAL        |6     |      0|   552|
|QI      |6 months  |GMS-Nepal      |NEPAL        |7     |    140|   552|
|QI      |6 months  |GMS-Nepal      |NEPAL        |8     |    202|   552|
|QI      |6 months  |GMS-Nepal      |NEPAL        |9     |    209|   552|
|QI      |6 months  |GMS-Nepal      |NEPAL        |10    |      0|   552|
|QI      |6 months  |GMS-Nepal      |NEPAL        |11    |      0|   552|
|QI      |6 months  |GMS-Nepal      |NEPAL        |12    |      0|   552|
|QI      |6 months  |GMS-Nepal      |NEPAL        |NaN   |      0|   552|
|QI      |6 months  |Guatemala BSC  |GUATEMALA    |1     |      8|   258|
|QI      |6 months  |Guatemala BSC  |GUATEMALA    |2     |      8|   258|
|QI      |6 months  |Guatemala BSC  |GUATEMALA    |3     |     21|   258|
|QI      |6 months  |Guatemala BSC  |GUATEMALA    |4     |     27|   258|
|QI      |6 months  |Guatemala BSC  |GUATEMALA    |5     |     29|   258|
|QI      |6 months  |Guatemala BSC  |GUATEMALA    |6     |     28|   258|
|QI      |6 months  |Guatemala BSC  |GUATEMALA    |7     |     26|   258|
|QI      |6 months  |Guatemala BSC  |GUATEMALA    |8     |     15|   258|
|QI      |6 months  |Guatemala BSC  |GUATEMALA    |9     |     26|   258|
|QI      |6 months  |Guatemala BSC  |GUATEMALA    |10    |     29|   258|
|QI      |6 months  |Guatemala BSC  |GUATEMALA    |11    |     19|   258|
|QI      |6 months  |Guatemala BSC  |GUATEMALA    |12    |     22|   258|
|QI      |6 months  |Guatemala BSC  |GUATEMALA    |NaN   |      0|   258|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |1     |    455|  4854|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |2     |    432|  4854|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |3     |    356|  4854|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |4     |    441|  4854|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |5     |    329|  4854|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |6     |    344|  4854|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |7     |    342|  4854|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |8     |    318|  4854|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |9     |    417|  4854|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |10    |    475|  4854|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |11    |    501|  4854|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |12    |    444|  4854|
|QI      |6 months  |JiVitA-3       |BANGLADESH   |NaN   |      0|  4854|
|QI      |6 months  |JiVitA-4       |BANGLADESH   |1     |     12|   846|
|QI      |6 months  |JiVitA-4       |BANGLADESH   |2     |     12|   846|
|QI      |6 months  |JiVitA-4       |BANGLADESH   |3     |     65|   846|
|QI      |6 months  |JiVitA-4       |BANGLADESH   |4     |    113|   846|
|QI      |6 months  |JiVitA-4       |BANGLADESH   |5     |     98|   846|
|QI      |6 months  |JiVitA-4       |BANGLADESH   |6     |     99|   846|
|QI      |6 months  |JiVitA-4       |BANGLADESH   |7     |     90|   846|
|QI      |6 months  |JiVitA-4       |BANGLADESH   |8     |    117|   846|
|QI      |6 months  |JiVitA-4       |BANGLADESH   |9     |    111|   846|
|QI      |6 months  |JiVitA-4       |BANGLADESH   |10    |     67|   846|
|QI      |6 months  |JiVitA-4       |BANGLADESH   |11    |     38|   846|
|QI      |6 months  |JiVitA-4       |BANGLADESH   |12    |     24|   846|
|QI      |6 months  |JiVitA-4       |BANGLADESH   |NaN   |      0|   846|
|QI      |6 months  |Keneba         |GAMBIA       |1     |    176|  2130|
|QI      |6 months  |Keneba         |GAMBIA       |2     |    215|  2130|
|QI      |6 months  |Keneba         |GAMBIA       |3     |    208|  2130|
|QI      |6 months  |Keneba         |GAMBIA       |4     |    243|  2130|
|QI      |6 months  |Keneba         |GAMBIA       |5     |    139|  2130|
|QI      |6 months  |Keneba         |GAMBIA       |6     |    139|  2130|
|QI      |6 months  |Keneba         |GAMBIA       |7     |    127|  2130|
|QI      |6 months  |Keneba         |GAMBIA       |8     |    121|  2130|
|QI      |6 months  |Keneba         |GAMBIA       |9     |    151|  2130|
|QI      |6 months  |Keneba         |GAMBIA       |10    |    194|  2130|
|QI      |6 months  |Keneba         |GAMBIA       |11    |    244|  2130|
|QI      |6 months  |Keneba         |GAMBIA       |12    |    173|  2130|
|QI      |6 months  |Keneba         |GAMBIA       |NaN   |      0|  2130|
|QI      |6 months  |LCNI-5         |MALAWI       |1     |     33|   840|
|QI      |6 months  |LCNI-5         |MALAWI       |2     |     93|   840|
|QI      |6 months  |LCNI-5         |MALAWI       |3     |     93|   840|
|QI      |6 months  |LCNI-5         |MALAWI       |4     |    112|   840|
|QI      |6 months  |LCNI-5         |MALAWI       |5     |    121|   840|
|QI      |6 months  |LCNI-5         |MALAWI       |6     |    108|   840|
|QI      |6 months  |LCNI-5         |MALAWI       |7     |    115|   840|
|QI      |6 months  |LCNI-5         |MALAWI       |8     |     17|   840|
|QI      |6 months  |LCNI-5         |MALAWI       |9     |     40|   840|
|QI      |6 months  |LCNI-5         |MALAWI       |10    |     24|   840|
|QI      |6 months  |LCNI-5         |MALAWI       |11    |     40|   840|
|QI      |6 months  |LCNI-5         |MALAWI       |12    |     44|   840|
|QI      |6 months  |LCNI-5         |MALAWI       |NaN   |      0|   840|
|QI      |6 months  |MAL-ED         |INDIA        |1     |     15|   236|
|QI      |6 months  |MAL-ED         |INDIA        |2     |     20|   236|
|QI      |6 months  |MAL-ED         |INDIA        |3     |     20|   236|
|QI      |6 months  |MAL-ED         |INDIA        |4     |     23|   236|
|QI      |6 months  |MAL-ED         |INDIA        |5     |     16|   236|
|QI      |6 months  |MAL-ED         |INDIA        |6     |      5|   236|
|QI      |6 months  |MAL-ED         |INDIA        |7     |     24|   236|
|QI      |6 months  |MAL-ED         |INDIA        |8     |     18|   236|
|QI      |6 months  |MAL-ED         |INDIA        |9     |     20|   236|
|QI      |6 months  |MAL-ED         |INDIA        |10    |     22|   236|
|QI      |6 months  |MAL-ED         |INDIA        |11    |     27|   236|
|QI      |6 months  |MAL-ED         |INDIA        |12    |     26|   236|
|QI      |6 months  |MAL-ED         |INDIA        |NaN   |      0|   236|
|QI      |6 months  |MAL-ED         |BANGLADESH   |1     |     32|   249|
|QI      |6 months  |MAL-ED         |BANGLADESH   |2     |     18|   249|
|QI      |6 months  |MAL-ED         |BANGLADESH   |3     |     17|   249|
|QI      |6 months  |MAL-ED         |BANGLADESH   |4     |     23|   249|
|QI      |6 months  |MAL-ED         |BANGLADESH   |5     |     27|   249|
|QI      |6 months  |MAL-ED         |BANGLADESH   |6     |     16|   249|
|QI      |6 months  |MAL-ED         |BANGLADESH   |7     |     14|   249|
|QI      |6 months  |MAL-ED         |BANGLADESH   |8     |     19|   249|
|QI      |6 months  |MAL-ED         |BANGLADESH   |9     |     25|   249|
|QI      |6 months  |MAL-ED         |BANGLADESH   |10    |     16|   249|
|QI      |6 months  |MAL-ED         |BANGLADESH   |11    |     22|   249|
|QI      |6 months  |MAL-ED         |BANGLADESH   |12    |     20|   249|
|QI      |6 months  |MAL-ED         |BANGLADESH   |NaN   |      0|   249|
|QI      |6 months  |MAL-ED         |PERU         |1     |     21|   269|
|QI      |6 months  |MAL-ED         |PERU         |2     |     45|   269|
|QI      |6 months  |MAL-ED         |PERU         |3     |     20|   269|
|QI      |6 months  |MAL-ED         |PERU         |4     |      8|   269|
|QI      |6 months  |MAL-ED         |PERU         |5     |     16|   269|
|QI      |6 months  |MAL-ED         |PERU         |6     |     18|   269|
|QI      |6 months  |MAL-ED         |PERU         |7     |     15|   269|
|QI      |6 months  |MAL-ED         |PERU         |8     |     29|   269|
|QI      |6 months  |MAL-ED         |PERU         |9     |     24|   269|
|QI      |6 months  |MAL-ED         |PERU         |10    |     19|   269|
|QI      |6 months  |MAL-ED         |PERU         |11    |     27|   269|
|QI      |6 months  |MAL-ED         |PERU         |12    |     27|   269|
|QI      |6 months  |MAL-ED         |PERU         |NaN   |      0|   269|
|QI      |6 months  |MAL-ED         |NEPAL        |1     |     11|   222|
|QI      |6 months  |MAL-ED         |NEPAL        |2     |     24|   222|
|QI      |6 months  |MAL-ED         |NEPAL        |3     |     14|   222|
|QI      |6 months  |MAL-ED         |NEPAL        |4     |     14|   222|
|QI      |6 months  |MAL-ED         |NEPAL        |5     |     22|   222|
|QI      |6 months  |MAL-ED         |NEPAL        |6     |     24|   222|
|QI      |6 months  |MAL-ED         |NEPAL        |7     |     21|   222|
|QI      |6 months  |MAL-ED         |NEPAL        |8     |     15|   222|
|QI      |6 months  |MAL-ED         |NEPAL        |9     |     25|   222|
|QI      |6 months  |MAL-ED         |NEPAL        |10    |     16|   222|
|QI      |6 months  |MAL-ED         |NEPAL        |11    |     24|   222|
|QI      |6 months  |MAL-ED         |NEPAL        |12    |     12|   222|
|QI      |6 months  |MAL-ED         |NEPAL        |NaN   |      0|   222|
|QI      |6 months  |MAL-ED         |BRAZIL       |1     |     10|   215|
|QI      |6 months  |MAL-ED         |BRAZIL       |2     |      9|   215|
|QI      |6 months  |MAL-ED         |BRAZIL       |3     |     24|   215|
|QI      |6 months  |MAL-ED         |BRAZIL       |4     |     20|   215|
|QI      |6 months  |MAL-ED         |BRAZIL       |5     |     17|   215|
|QI      |6 months  |MAL-ED         |BRAZIL       |6     |     19|   215|
|QI      |6 months  |MAL-ED         |BRAZIL       |7     |      3|   215|
|QI      |6 months  |MAL-ED         |BRAZIL       |8     |     13|   215|
|QI      |6 months  |MAL-ED         |BRAZIL       |9     |     22|   215|
|QI      |6 months  |MAL-ED         |BRAZIL       |10    |     33|   215|
|QI      |6 months  |MAL-ED         |BRAZIL       |11    |     20|   215|
|QI      |6 months  |MAL-ED         |BRAZIL       |12    |     25|   215|
|QI      |6 months  |MAL-ED         |BRAZIL       |NaN   |      0|   215|
|QI      |6 months  |MAL-ED         |TANZANIA     |1     |     28|   243|
|QI      |6 months  |MAL-ED         |TANZANIA     |2     |     22|   243|
|QI      |6 months  |MAL-ED         |TANZANIA     |3     |     29|   243|
|QI      |6 months  |MAL-ED         |TANZANIA     |4     |     15|   243|
|QI      |6 months  |MAL-ED         |TANZANIA     |5     |     17|   243|
|QI      |6 months  |MAL-ED         |TANZANIA     |6     |     17|   243|
|QI      |6 months  |MAL-ED         |TANZANIA     |7     |     26|   243|
|QI      |6 months  |MAL-ED         |TANZANIA     |8     |     20|   243|
|QI      |6 months  |MAL-ED         |TANZANIA     |9     |     10|   243|
|QI      |6 months  |MAL-ED         |TANZANIA     |10    |     16|   243|
|QI      |6 months  |MAL-ED         |TANZANIA     |11    |     23|   243|
|QI      |6 months  |MAL-ED         |TANZANIA     |12    |     20|   243|
|QI      |6 months  |MAL-ED         |TANZANIA     |NaN   |      0|   243|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |1     |     46|   285|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |2     |     30|   285|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |3     |     26|   285|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |4     |     19|   285|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |5     |     18|   285|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |6     |     18|   285|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |7     |     24|   285|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |8     |     29|   285|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |9     |      9|   285|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |10    |     23|   285|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |11    |     27|   285|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |12    |     16|   285|
|QI      |6 months  |MAL-ED         |SOUTH AFRICA |NaN   |      0|   285|
|QI      |6 months  |NIH-Birth      |BANGLADESH   |1     |     48|   391|
|QI      |6 months  |NIH-Birth      |BANGLADESH   |2     |     50|   391|
|QI      |6 months  |NIH-Birth      |BANGLADESH   |3     |     43|   391|
|QI      |6 months  |NIH-Birth      |BANGLADESH   |4     |     32|   391|
|QI      |6 months  |NIH-Birth      |BANGLADESH   |5     |     27|   391|
|QI      |6 months  |NIH-Birth      |BANGLADESH   |6     |     32|   391|
|QI      |6 months  |NIH-Birth      |BANGLADESH   |7     |     24|   391|
|QI      |6 months  |NIH-Birth      |BANGLADESH   |8     |     26|   391|
|QI      |6 months  |NIH-Birth      |BANGLADESH   |9     |     17|   391|
|QI      |6 months  |NIH-Birth      |BANGLADESH   |10    |     22|   391|
|QI      |6 months  |NIH-Birth      |BANGLADESH   |11    |     36|   391|
|QI      |6 months  |NIH-Birth      |BANGLADESH   |12    |     34|   391|
|QI      |6 months  |NIH-Birth      |BANGLADESH   |NaN   |      0|   391|
|QI      |6 months  |NIH-Crypto     |BANGLADESH   |1     |      0|   537|
|QI      |6 months  |NIH-Crypto     |BANGLADESH   |2     |      0|   537|
|QI      |6 months  |NIH-Crypto     |BANGLADESH   |3     |      0|   537|
|QI      |6 months  |NIH-Crypto     |BANGLADESH   |4     |      0|   537|
|QI      |6 months  |NIH-Crypto     |BANGLADESH   |5     |      0|   537|
|QI      |6 months  |NIH-Crypto     |BANGLADESH   |6     |      0|   537|
|QI      |6 months  |NIH-Crypto     |BANGLADESH   |7     |      0|   537|
|QI      |6 months  |NIH-Crypto     |BANGLADESH   |8     |      0|   537|
|QI      |6 months  |NIH-Crypto     |BANGLADESH   |9     |      0|   537|
|QI      |6 months  |NIH-Crypto     |BANGLADESH   |10    |      0|   537|
|QI      |6 months  |NIH-Crypto     |BANGLADESH   |11    |      0|   537|
|QI      |6 months  |NIH-Crypto     |BANGLADESH   |12    |      0|   537|
|QI      |6 months  |NIH-Crypto     |BANGLADESH   |NaN   |    537|   537|
|QI      |6 months  |PROBIT         |BELARUS      |1     |    570|  5179|
|QI      |6 months  |PROBIT         |BELARUS      |2     |    369|  5179|
|QI      |6 months  |PROBIT         |BELARUS      |3     |    310|  5179|
|QI      |6 months  |PROBIT         |BELARUS      |4     |    331|  5179|
|QI      |6 months  |PROBIT         |BELARUS      |5     |    394|  5179|
|QI      |6 months  |PROBIT         |BELARUS      |6     |    384|  5179|
|QI      |6 months  |PROBIT         |BELARUS      |7     |    404|  5179|
|QI      |6 months  |PROBIT         |BELARUS      |8     |    491|  5179|
|QI      |6 months  |PROBIT         |BELARUS      |9     |    508|  5179|
|QI      |6 months  |PROBIT         |BELARUS      |10    |    461|  5179|
|QI      |6 months  |PROBIT         |BELARUS      |11    |    496|  5179|
|QI      |6 months  |PROBIT         |BELARUS      |12    |    461|  5179|
|QI      |6 months  |PROBIT         |BELARUS      |NaN   |      0|  5179|
|QI      |6 months  |PROVIDE        |BANGLADESH   |1     |     35|   611|
|QI      |6 months  |PROVIDE        |BANGLADESH   |2     |     25|   611|
|QI      |6 months  |PROVIDE        |BANGLADESH   |3     |     33|   611|
|QI      |6 months  |PROVIDE        |BANGLADESH   |4     |     39|   611|
|QI      |6 months  |PROVIDE        |BANGLADESH   |5     |     30|   611|
|QI      |6 months  |PROVIDE        |BANGLADESH   |6     |     62|   611|
|QI      |6 months  |PROVIDE        |BANGLADESH   |7     |     83|   611|
|QI      |6 months  |PROVIDE        |BANGLADESH   |8     |     93|   611|
|QI      |6 months  |PROVIDE        |BANGLADESH   |9     |     61|   611|
|QI      |6 months  |PROVIDE        |BANGLADESH   |10    |     60|   611|
|QI      |6 months  |PROVIDE        |BANGLADESH   |11    |     64|   611|
|QI      |6 months  |PROVIDE        |BANGLADESH   |12    |     26|   611|
|QI      |6 months  |PROVIDE        |BANGLADESH   |NaN   |      0|   611|
|QI      |6 months  |ResPak         |PAKISTAN     |1     |      1|   209|
|QI      |6 months  |ResPak         |PAKISTAN     |2     |      5|   209|
|QI      |6 months  |ResPak         |PAKISTAN     |3     |      4|   209|
|QI      |6 months  |ResPak         |PAKISTAN     |4     |     12|   209|
|QI      |6 months  |ResPak         |PAKISTAN     |5     |     27|   209|
|QI      |6 months  |ResPak         |PAKISTAN     |6     |     35|   209|
|QI      |6 months  |ResPak         |PAKISTAN     |7     |     34|   209|
|QI      |6 months  |ResPak         |PAKISTAN     |8     |     27|   209|
|QI      |6 months  |ResPak         |PAKISTAN     |9     |     23|   209|
|QI      |6 months  |ResPak         |PAKISTAN     |10    |     22|   209|
|QI      |6 months  |ResPak         |PAKISTAN     |11    |     12|   209|
|QI      |6 months  |ResPak         |PAKISTAN     |12    |      7|   209|
|QI      |6 months  |ResPak         |PAKISTAN     |NaN   |      0|   209|
|QI      |6 months  |SAS-CompFeed   |INDIA        |1     |     54|   273|
|QI      |6 months  |SAS-CompFeed   |INDIA        |2     |     35|   273|
|QI      |6 months  |SAS-CompFeed   |INDIA        |3     |     29|   273|
|QI      |6 months  |SAS-CompFeed   |INDIA        |4     |     23|   273|
|QI      |6 months  |SAS-CompFeed   |INDIA        |5     |      8|   273|
|QI      |6 months  |SAS-CompFeed   |INDIA        |6     |     28|   273|
|QI      |6 months  |SAS-CompFeed   |INDIA        |7     |     42|   273|
|QI      |6 months  |SAS-CompFeed   |INDIA        |8     |      0|   273|
|QI      |6 months  |SAS-CompFeed   |INDIA        |9     |      0|   273|
|QI      |6 months  |SAS-CompFeed   |INDIA        |10    |      0|   273|
|QI      |6 months  |SAS-CompFeed   |INDIA        |11    |     37|   273|
|QI      |6 months  |SAS-CompFeed   |INDIA        |12    |     17|   273|
|QI      |6 months  |SAS-CompFeed   |INDIA        |NaN   |      0|   273|
|QI      |6 months  |SAS-FoodSuppl  |INDIA        |1     |     38|   255|
|QI      |6 months  |SAS-FoodSuppl  |INDIA        |2     |     27|   255|
|QI      |6 months  |SAS-FoodSuppl  |INDIA        |3     |     19|   255|
|QI      |6 months  |SAS-FoodSuppl  |INDIA        |4     |     17|   255|
|QI      |6 months  |SAS-FoodSuppl  |INDIA        |5     |     14|   255|
|QI      |6 months  |SAS-FoodSuppl  |INDIA        |6     |     19|   255|
|QI      |6 months  |SAS-FoodSuppl  |INDIA        |7     |     21|   255|
|QI      |6 months  |SAS-FoodSuppl  |INDIA        |8     |      1|   255|
|QI      |6 months  |SAS-FoodSuppl  |INDIA        |9     |      5|   255|
|QI      |6 months  |SAS-FoodSuppl  |INDIA        |10    |     14|   255|
|QI      |6 months  |SAS-FoodSuppl  |INDIA        |11    |     34|   255|
|QI      |6 months  |SAS-FoodSuppl  |INDIA        |12    |     46|   255|
|QI      |6 months  |SAS-FoodSuppl  |INDIA        |NaN   |      0|   255|
|QI      |6 months  |TanzaniaChild2 |TANZANIA     |1     |    180|  1943|
|QI      |6 months  |TanzaniaChild2 |TANZANIA     |2     |    135|  1943|
|QI      |6 months  |TanzaniaChild2 |TANZANIA     |3     |    137|  1943|
|QI      |6 months  |TanzaniaChild2 |TANZANIA     |4     |    111|  1943|
|QI      |6 months  |TanzaniaChild2 |TANZANIA     |5     |    153|  1943|
|QI      |6 months  |TanzaniaChild2 |TANZANIA     |6     |    171|  1943|
|QI      |6 months  |TanzaniaChild2 |TANZANIA     |7     |    122|  1943|
|QI      |6 months  |TanzaniaChild2 |TANZANIA     |8     |    176|  1943|
|QI      |6 months  |TanzaniaChild2 |TANZANIA     |9     |    212|  1943|
|QI      |6 months  |TanzaniaChild2 |TANZANIA     |10    |    155|  1943|
|QI      |6 months  |TanzaniaChild2 |TANZANIA     |11    |    208|  1943|
|QI      |6 months  |TanzaniaChild2 |TANZANIA     |12    |    183|  1943|
|QI      |6 months  |TanzaniaChild2 |TANZANIA     |NaN   |      0|  1943|
|QI      |6 months  |Vellore Crypto |INDIA        |1     |     56|   383|
|QI      |6 months  |Vellore Crypto |INDIA        |2     |     36|   383|
|QI      |6 months  |Vellore Crypto |INDIA        |3     |     28|   383|
|QI      |6 months  |Vellore Crypto |INDIA        |4     |     30|   383|
|QI      |6 months  |Vellore Crypto |INDIA        |5     |     21|   383|
|QI      |6 months  |Vellore Crypto |INDIA        |6     |     25|   383|
|QI      |6 months  |Vellore Crypto |INDIA        |7     |     30|   383|
|QI      |6 months  |Vellore Crypto |INDIA        |8     |     28|   383|
|QI      |6 months  |Vellore Crypto |INDIA        |9     |     40|   383|
|QI      |6 months  |Vellore Crypto |INDIA        |10    |     29|   383|
|QI      |6 months  |Vellore Crypto |INDIA        |11    |     36|   383|
|QI      |6 months  |Vellore Crypto |INDIA        |12    |     24|   383|
|QI      |6 months  |Vellore Crypto |INDIA        |NaN   |      0|   383|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE     |1     |    550|  6305|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE     |2     |    669|  6305|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE     |3     |    472|  6305|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE     |4     |    547|  6305|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE     |5     |    476|  6305|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE     |6     |    436|  6305|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE     |7     |    544|  6305|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE     |8     |    538|  6305|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE     |9     |    552|  6305|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE     |10    |    574|  6305|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE     |11    |    450|  6305|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE     |12    |    497|  6305|
|QI      |6 months  |ZVITAMBO       |ZIMBABWE     |NaN   |      0|  6305|
|QI      |24 months |CMC-V-BCS-2002 |INDIA        |1     |      9|   145|
|QI      |24 months |CMC-V-BCS-2002 |INDIA        |2     |     13|   145|
|QI      |24 months |CMC-V-BCS-2002 |INDIA        |3     |      6|   145|
|QI      |24 months |CMC-V-BCS-2002 |INDIA        |4     |     10|   145|
|QI      |24 months |CMC-V-BCS-2002 |INDIA        |5     |     18|   145|
|QI      |24 months |CMC-V-BCS-2002 |INDIA        |6     |     18|   145|
|QI      |24 months |CMC-V-BCS-2002 |INDIA        |7     |     17|   145|
|QI      |24 months |CMC-V-BCS-2002 |INDIA        |8     |     20|   145|
|QI      |24 months |CMC-V-BCS-2002 |INDIA        |9     |      4|   145|
|QI      |24 months |CMC-V-BCS-2002 |INDIA        |10    |      8|   145|
|QI      |24 months |CMC-V-BCS-2002 |INDIA        |11    |     12|   145|
|QI      |24 months |CMC-V-BCS-2002 |INDIA        |12    |     10|   145|
|QI      |24 months |CMC-V-BCS-2002 |INDIA        |NaN   |      0|   145|
|QI      |24 months |CMIN           |BANGLADESH   |1     |     14|    86|
|QI      |24 months |CMIN           |BANGLADESH   |2     |     12|    86|
|QI      |24 months |CMIN           |BANGLADESH   |3     |      7|    86|
|QI      |24 months |CMIN           |BANGLADESH   |4     |      6|    86|
|QI      |24 months |CMIN           |BANGLADESH   |5     |      7|    86|
|QI      |24 months |CMIN           |BANGLADESH   |6     |      2|    86|
|QI      |24 months |CMIN           |BANGLADESH   |7     |      6|    86|
|QI      |24 months |CMIN           |BANGLADESH   |8     |      3|    86|
|QI      |24 months |CMIN           |BANGLADESH   |9     |      2|    86|
|QI      |24 months |CMIN           |BANGLADESH   |10    |     10|    86|
|QI      |24 months |CMIN           |BANGLADESH   |11    |      7|    86|
|QI      |24 months |CMIN           |BANGLADESH   |12    |     10|    86|
|QI      |24 months |CMIN           |BANGLADESH   |NaN   |      0|    86|
|QI      |24 months |COHORTS        |GUATEMALA    |1     |      0|    31|
|QI      |24 months |COHORTS        |GUATEMALA    |2     |      0|    31|
|QI      |24 months |COHORTS        |GUATEMALA    |3     |      0|    31|
|QI      |24 months |COHORTS        |GUATEMALA    |4     |      0|    31|
|QI      |24 months |COHORTS        |GUATEMALA    |5     |      0|    31|
|QI      |24 months |COHORTS        |GUATEMALA    |6     |      0|    31|
|QI      |24 months |COHORTS        |GUATEMALA    |7     |      0|    31|
|QI      |24 months |COHORTS        |GUATEMALA    |8     |      0|    31|
|QI      |24 months |COHORTS        |GUATEMALA    |9     |      0|    31|
|QI      |24 months |COHORTS        |GUATEMALA    |10    |      0|    31|
|QI      |24 months |COHORTS        |GUATEMALA    |11    |      0|    31|
|QI      |24 months |COHORTS        |GUATEMALA    |12    |      0|    31|
|QI      |24 months |COHORTS        |GUATEMALA    |NaN   |     31|    31|
|QI      |24 months |COHORTS        |PHILIPPINES  |1     |      0|   295|
|QI      |24 months |COHORTS        |PHILIPPINES  |2     |      0|   295|
|QI      |24 months |COHORTS        |PHILIPPINES  |3     |      0|   295|
|QI      |24 months |COHORTS        |PHILIPPINES  |4     |      0|   295|
|QI      |24 months |COHORTS        |PHILIPPINES  |5     |      0|   295|
|QI      |24 months |COHORTS        |PHILIPPINES  |6     |      0|   295|
|QI      |24 months |COHORTS        |PHILIPPINES  |7     |      0|   295|
|QI      |24 months |COHORTS        |PHILIPPINES  |8     |      0|   295|
|QI      |24 months |COHORTS        |PHILIPPINES  |9     |      0|   295|
|QI      |24 months |COHORTS        |PHILIPPINES  |10    |      0|   295|
|QI      |24 months |COHORTS        |PHILIPPINES  |11    |      0|   295|
|QI      |24 months |COHORTS        |PHILIPPINES  |12    |      0|   295|
|QI      |24 months |COHORTS        |PHILIPPINES  |NaN   |    295|   295|
|QI      |24 months |CONTENT        |PERU         |1     |      9|   104|
|QI      |24 months |CONTENT        |PERU         |2     |      7|   104|
|QI      |24 months |CONTENT        |PERU         |3     |      8|   104|
|QI      |24 months |CONTENT        |PERU         |4     |     14|   104|
|QI      |24 months |CONTENT        |PERU         |5     |      5|   104|
|QI      |24 months |CONTENT        |PERU         |6     |      5|   104|
|QI      |24 months |CONTENT        |PERU         |7     |      4|   104|
|QI      |24 months |CONTENT        |PERU         |8     |     10|   104|
|QI      |24 months |CONTENT        |PERU         |9     |     20|   104|
|QI      |24 months |CONTENT        |PERU         |10    |     13|   104|
|QI      |24 months |CONTENT        |PERU         |11    |      6|   104|
|QI      |24 months |CONTENT        |PERU         |12    |      3|   104|
|QI      |24 months |CONTENT        |PERU         |NaN   |      0|   104|
|QI      |24 months |EE             |PAKISTAN     |1     |     32|   113|
|QI      |24 months |EE             |PAKISTAN     |2     |     22|   113|
|QI      |24 months |EE             |PAKISTAN     |3     |     20|   113|
|QI      |24 months |EE             |PAKISTAN     |4     |      8|   113|
|QI      |24 months |EE             |PAKISTAN     |5     |      4|   113|
|QI      |24 months |EE             |PAKISTAN     |6     |      0|   113|
|QI      |24 months |EE             |PAKISTAN     |7     |      0|   113|
|QI      |24 months |EE             |PAKISTAN     |8     |      0|   113|
|QI      |24 months |EE             |PAKISTAN     |9     |      0|   113|
|QI      |24 months |EE             |PAKISTAN     |10    |      0|   113|
|QI      |24 months |EE             |PAKISTAN     |11    |      1|   113|
|QI      |24 months |EE             |PAKISTAN     |12    |     26|   113|
|QI      |24 months |EE             |PAKISTAN     |NaN   |      0|   113|
|QI      |24 months |GMS-Nepal      |NEPAL        |1     |      0|   193|
|QI      |24 months |GMS-Nepal      |NEPAL        |2     |      0|   193|
|QI      |24 months |GMS-Nepal      |NEPAL        |3     |      0|   193|
|QI      |24 months |GMS-Nepal      |NEPAL        |4     |      0|   193|
|QI      |24 months |GMS-Nepal      |NEPAL        |5     |      1|   193|
|QI      |24 months |GMS-Nepal      |NEPAL        |6     |      0|   193|
|QI      |24 months |GMS-Nepal      |NEPAL        |7     |     46|   193|
|QI      |24 months |GMS-Nepal      |NEPAL        |8     |     63|   193|
|QI      |24 months |GMS-Nepal      |NEPAL        |9     |     83|   193|
|QI      |24 months |GMS-Nepal      |NEPAL        |10    |      0|   193|
|QI      |24 months |GMS-Nepal      |NEPAL        |11    |      0|   193|
|QI      |24 months |GMS-Nepal      |NEPAL        |12    |      0|   193|
|QI      |24 months |GMS-Nepal      |NEPAL        |NaN   |      0|   193|
|QI      |24 months |Guatemala BSC  |GUATEMALA    |1     |      0|     3|
|QI      |24 months |Guatemala BSC  |GUATEMALA    |2     |      0|     3|
|QI      |24 months |Guatemala BSC  |GUATEMALA    |3     |      0|     3|
|QI      |24 months |Guatemala BSC  |GUATEMALA    |4     |      1|     3|
|QI      |24 months |Guatemala BSC  |GUATEMALA    |5     |      0|     3|
|QI      |24 months |Guatemala BSC  |GUATEMALA    |6     |      0|     3|
|QI      |24 months |Guatemala BSC  |GUATEMALA    |7     |      1|     3|
|QI      |24 months |Guatemala BSC  |GUATEMALA    |8     |      0|     3|
|QI      |24 months |Guatemala BSC  |GUATEMALA    |9     |      0|     3|
|QI      |24 months |Guatemala BSC  |GUATEMALA    |10    |      1|     3|
|QI      |24 months |Guatemala BSC  |GUATEMALA    |11    |      0|     3|
|QI      |24 months |Guatemala BSC  |GUATEMALA    |12    |      0|     3|
|QI      |24 months |Guatemala BSC  |GUATEMALA    |NaN   |      0|     3|
|QI      |24 months |iLiNS-Zinc     |BURKINA FASO |1     |      1|    19|
|QI      |24 months |iLiNS-Zinc     |BURKINA FASO |2     |      2|    19|
|QI      |24 months |iLiNS-Zinc     |BURKINA FASO |3     |      2|    19|
|QI      |24 months |iLiNS-Zinc     |BURKINA FASO |4     |      3|    19|
|QI      |24 months |iLiNS-Zinc     |BURKINA FASO |5     |      0|    19|
|QI      |24 months |iLiNS-Zinc     |BURKINA FASO |6     |      1|    19|
|QI      |24 months |iLiNS-Zinc     |BURKINA FASO |7     |      1|    19|
|QI      |24 months |iLiNS-Zinc     |BURKINA FASO |8     |      2|    19|
|QI      |24 months |iLiNS-Zinc     |BURKINA FASO |9     |      1|    19|
|QI      |24 months |iLiNS-Zinc     |BURKINA FASO |10    |      5|    19|
|QI      |24 months |iLiNS-Zinc     |BURKINA FASO |11    |      1|    19|
|QI      |24 months |iLiNS-Zinc     |BURKINA FASO |12    |      0|    19|
|QI      |24 months |iLiNS-Zinc     |BURKINA FASO |NaN   |      0|    19|
|QI      |24 months |JiVitA-3       |BANGLADESH   |1     |      0|     6|
|QI      |24 months |JiVitA-3       |BANGLADESH   |2     |      1|     6|
|QI      |24 months |JiVitA-3       |BANGLADESH   |3     |      0|     6|
|QI      |24 months |JiVitA-3       |BANGLADESH   |4     |      0|     6|
|QI      |24 months |JiVitA-3       |BANGLADESH   |5     |      1|     6|
|QI      |24 months |JiVitA-3       |BANGLADESH   |6     |      0|     6|
|QI      |24 months |JiVitA-3       |BANGLADESH   |7     |      0|     6|
|QI      |24 months |JiVitA-3       |BANGLADESH   |8     |      2|     6|
|QI      |24 months |JiVitA-3       |BANGLADESH   |9     |      1|     6|
|QI      |24 months |JiVitA-3       |BANGLADESH   |10    |      0|     6|
|QI      |24 months |JiVitA-3       |BANGLADESH   |11    |      1|     6|
|QI      |24 months |JiVitA-3       |BANGLADESH   |12    |      0|     6|
|QI      |24 months |JiVitA-3       |BANGLADESH   |NaN   |      0|     6|
|QI      |24 months |JiVitA-4       |BANGLADESH   |1     |      1|    58|
|QI      |24 months |JiVitA-4       |BANGLADESH   |2     |      0|    58|
|QI      |24 months |JiVitA-4       |BANGLADESH   |3     |      3|    58|
|QI      |24 months |JiVitA-4       |BANGLADESH   |4     |     10|    58|
|QI      |24 months |JiVitA-4       |BANGLADESH   |5     |      6|    58|
|QI      |24 months |JiVitA-4       |BANGLADESH   |6     |      6|    58|
|QI      |24 months |JiVitA-4       |BANGLADESH   |7     |      7|    58|
|QI      |24 months |JiVitA-4       |BANGLADESH   |8     |     11|    58|
|QI      |24 months |JiVitA-4       |BANGLADESH   |9     |      4|    58|
|QI      |24 months |JiVitA-4       |BANGLADESH   |10    |      6|    58|
|QI      |24 months |JiVitA-4       |BANGLADESH   |11    |      1|    58|
|QI      |24 months |JiVitA-4       |BANGLADESH   |12    |      3|    58|
|QI      |24 months |JiVitA-4       |BANGLADESH   |NaN   |      0|    58|
|QI      |24 months |Keneba         |GAMBIA       |1     |     41|   408|
|QI      |24 months |Keneba         |GAMBIA       |2     |     42|   408|
|QI      |24 months |Keneba         |GAMBIA       |3     |     44|   408|
|QI      |24 months |Keneba         |GAMBIA       |4     |     38|   408|
|QI      |24 months |Keneba         |GAMBIA       |5     |     28|   408|
|QI      |24 months |Keneba         |GAMBIA       |6     |     26|   408|
|QI      |24 months |Keneba         |GAMBIA       |7     |     32|   408|
|QI      |24 months |Keneba         |GAMBIA       |8     |     25|   408|
|QI      |24 months |Keneba         |GAMBIA       |9     |     25|   408|
|QI      |24 months |Keneba         |GAMBIA       |10    |     36|   408|
|QI      |24 months |Keneba         |GAMBIA       |11    |     37|   408|
|QI      |24 months |Keneba         |GAMBIA       |12    |     34|   408|
|QI      |24 months |Keneba         |GAMBIA       |NaN   |      0|   408|
|QI      |24 months |LCNI-5         |MALAWI       |1     |      4|    84|
|QI      |24 months |LCNI-5         |MALAWI       |2     |      9|    84|
|QI      |24 months |LCNI-5         |MALAWI       |3     |      6|    84|
|QI      |24 months |LCNI-5         |MALAWI       |4     |     12|    84|
|QI      |24 months |LCNI-5         |MALAWI       |5     |      9|    84|
|QI      |24 months |LCNI-5         |MALAWI       |6     |     10|    84|
|QI      |24 months |LCNI-5         |MALAWI       |7     |     15|    84|
|QI      |24 months |LCNI-5         |MALAWI       |8     |      2|    84|
|QI      |24 months |LCNI-5         |MALAWI       |9     |      3|    84|
|QI      |24 months |LCNI-5         |MALAWI       |10    |      3|    84|
|QI      |24 months |LCNI-5         |MALAWI       |11    |      5|    84|
|QI      |24 months |LCNI-5         |MALAWI       |12    |      6|    84|
|QI      |24 months |LCNI-5         |MALAWI       |NaN   |      0|    84|
|QI      |24 months |MAL-ED         |INDIA        |1     |      5|   102|
|QI      |24 months |MAL-ED         |INDIA        |2     |      7|   102|
|QI      |24 months |MAL-ED         |INDIA        |3     |      8|   102|
|QI      |24 months |MAL-ED         |INDIA        |4     |     13|   102|
|QI      |24 months |MAL-ED         |INDIA        |5     |      6|   102|
|QI      |24 months |MAL-ED         |INDIA        |6     |      3|   102|
|QI      |24 months |MAL-ED         |INDIA        |7     |      8|   102|
|QI      |24 months |MAL-ED         |INDIA        |8     |     14|   102|
|QI      |24 months |MAL-ED         |INDIA        |9     |      5|   102|
|QI      |24 months |MAL-ED         |INDIA        |10    |     11|   102|
|QI      |24 months |MAL-ED         |INDIA        |11    |      9|   102|
|QI      |24 months |MAL-ED         |INDIA        |12    |     13|   102|
|QI      |24 months |MAL-ED         |INDIA        |NaN   |      0|   102|
|QI      |24 months |MAL-ED         |BANGLADESH   |1     |     18|    97|
|QI      |24 months |MAL-ED         |BANGLADESH   |2     |      5|    97|
|QI      |24 months |MAL-ED         |BANGLADESH   |3     |      3|    97|
|QI      |24 months |MAL-ED         |BANGLADESH   |4     |      4|    97|
|QI      |24 months |MAL-ED         |BANGLADESH   |5     |     11|    97|
|QI      |24 months |MAL-ED         |BANGLADESH   |6     |      8|    97|
|QI      |24 months |MAL-ED         |BANGLADESH   |7     |     11|    97|
|QI      |24 months |MAL-ED         |BANGLADESH   |8     |      4|    97|
|QI      |24 months |MAL-ED         |BANGLADESH   |9     |     12|    97|
|QI      |24 months |MAL-ED         |BANGLADESH   |10    |      5|    97|
|QI      |24 months |MAL-ED         |BANGLADESH   |11    |      8|    97|
|QI      |24 months |MAL-ED         |BANGLADESH   |12    |      8|    97|
|QI      |24 months |MAL-ED         |BANGLADESH   |NaN   |      0|    97|
|QI      |24 months |MAL-ED         |PERU         |1     |      4|    67|
|QI      |24 months |MAL-ED         |PERU         |2     |      8|    67|
|QI      |24 months |MAL-ED         |PERU         |3     |      5|    67|
|QI      |24 months |MAL-ED         |PERU         |4     |      0|    67|
|QI      |24 months |MAL-ED         |PERU         |5     |      3|    67|
|QI      |24 months |MAL-ED         |PERU         |6     |      8|    67|
|QI      |24 months |MAL-ED         |PERU         |7     |      4|    67|
|QI      |24 months |MAL-ED         |PERU         |8     |     10|    67|
|QI      |24 months |MAL-ED         |PERU         |9     |      6|    67|
|QI      |24 months |MAL-ED         |PERU         |10    |      4|    67|
|QI      |24 months |MAL-ED         |PERU         |11    |      7|    67|
|QI      |24 months |MAL-ED         |PERU         |12    |      8|    67|
|QI      |24 months |MAL-ED         |PERU         |NaN   |      0|    67|
|QI      |24 months |MAL-ED         |NEPAL        |1     |      8|   100|
|QI      |24 months |MAL-ED         |NEPAL        |2     |     10|   100|
|QI      |24 months |MAL-ED         |NEPAL        |3     |      6|   100|
|QI      |24 months |MAL-ED         |NEPAL        |4     |      5|   100|
|QI      |24 months |MAL-ED         |NEPAL        |5     |     10|   100|
|QI      |24 months |MAL-ED         |NEPAL        |6     |     10|   100|
|QI      |24 months |MAL-ED         |NEPAL        |7     |     10|   100|
|QI      |24 months |MAL-ED         |NEPAL        |8     |      7|   100|
|QI      |24 months |MAL-ED         |NEPAL        |9     |     12|   100|
|QI      |24 months |MAL-ED         |NEPAL        |10    |      7|   100|
|QI      |24 months |MAL-ED         |NEPAL        |11    |     11|   100|
|QI      |24 months |MAL-ED         |NEPAL        |12    |      4|   100|
|QI      |24 months |MAL-ED         |NEPAL        |NaN   |      0|   100|
|QI      |24 months |MAL-ED         |BRAZIL       |1     |      3|    71|
|QI      |24 months |MAL-ED         |BRAZIL       |2     |      2|    71|
|QI      |24 months |MAL-ED         |BRAZIL       |3     |      3|    71|
|QI      |24 months |MAL-ED         |BRAZIL       |4     |      9|    71|
|QI      |24 months |MAL-ED         |BRAZIL       |5     |      9|    71|
|QI      |24 months |MAL-ED         |BRAZIL       |6     |      7|    71|
|QI      |24 months |MAL-ED         |BRAZIL       |7     |      0|    71|
|QI      |24 months |MAL-ED         |BRAZIL       |8     |      6|    71|
|QI      |24 months |MAL-ED         |BRAZIL       |9     |      1|    71|
|QI      |24 months |MAL-ED         |BRAZIL       |10    |     12|    71|
|QI      |24 months |MAL-ED         |BRAZIL       |11    |      6|    71|
|QI      |24 months |MAL-ED         |BRAZIL       |12    |     13|    71|
|QI      |24 months |MAL-ED         |BRAZIL       |NaN   |      0|    71|
|QI      |24 months |MAL-ED         |TANZANIA     |1     |      8|    80|
|QI      |24 months |MAL-ED         |TANZANIA     |2     |      8|    80|
|QI      |24 months |MAL-ED         |TANZANIA     |3     |     13|    80|
|QI      |24 months |MAL-ED         |TANZANIA     |4     |      3|    80|
|QI      |24 months |MAL-ED         |TANZANIA     |5     |      6|    80|
|QI      |24 months |MAL-ED         |TANZANIA     |6     |      8|    80|
|QI      |24 months |MAL-ED         |TANZANIA     |7     |      7|    80|
|QI      |24 months |MAL-ED         |TANZANIA     |8     |      6|    80|
|QI      |24 months |MAL-ED         |TANZANIA     |9     |      3|    80|
|QI      |24 months |MAL-ED         |TANZANIA     |10    |      3|    80|
|QI      |24 months |MAL-ED         |TANZANIA     |11    |      9|    80|
|QI      |24 months |MAL-ED         |TANZANIA     |12    |      6|    80|
|QI      |24 months |MAL-ED         |TANZANIA     |NaN   |      0|    80|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |1     |     17|    89|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |2     |     12|    89|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |3     |      6|    89|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |4     |      4|    89|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |5     |      6|    89|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |6     |      8|    89|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |7     |      9|    89|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |8     |      6|    89|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |9     |      0|    89|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |10    |      8|    89|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |11    |      8|    89|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |12    |      5|    89|
|QI      |24 months |MAL-ED         |SOUTH AFRICA |NaN   |      0|    89|
|QI      |24 months |NIH-Birth      |BANGLADESH   |1     |      8|    32|
|QI      |24 months |NIH-Birth      |BANGLADESH   |2     |      3|    32|
|QI      |24 months |NIH-Birth      |BANGLADESH   |3     |      3|    32|
|QI      |24 months |NIH-Birth      |BANGLADESH   |4     |      3|    32|
|QI      |24 months |NIH-Birth      |BANGLADESH   |5     |      1|    32|
|QI      |24 months |NIH-Birth      |BANGLADESH   |6     |      2|    32|
|QI      |24 months |NIH-Birth      |BANGLADESH   |7     |      2|    32|
|QI      |24 months |NIH-Birth      |BANGLADESH   |8     |      2|    32|
|QI      |24 months |NIH-Birth      |BANGLADESH   |9     |      1|    32|
|QI      |24 months |NIH-Birth      |BANGLADESH   |10    |      1|    32|
|QI      |24 months |NIH-Birth      |BANGLADESH   |11    |      2|    32|
|QI      |24 months |NIH-Birth      |BANGLADESH   |12    |      4|    32|
|QI      |24 months |NIH-Birth      |BANGLADESH   |NaN   |      0|    32|
|QI      |24 months |NIH-Crypto     |BANGLADESH   |1     |      0|    47|
|QI      |24 months |NIH-Crypto     |BANGLADESH   |2     |      0|    47|
|QI      |24 months |NIH-Crypto     |BANGLADESH   |3     |      0|    47|
|QI      |24 months |NIH-Crypto     |BANGLADESH   |4     |      0|    47|
|QI      |24 months |NIH-Crypto     |BANGLADESH   |5     |      0|    47|
|QI      |24 months |NIH-Crypto     |BANGLADESH   |6     |      0|    47|
|QI      |24 months |NIH-Crypto     |BANGLADESH   |7     |      0|    47|
|QI      |24 months |NIH-Crypto     |BANGLADESH   |8     |      0|    47|
|QI      |24 months |NIH-Crypto     |BANGLADESH   |9     |      0|    47|
|QI      |24 months |NIH-Crypto     |BANGLADESH   |10    |      0|    47|
|QI      |24 months |NIH-Crypto     |BANGLADESH   |11    |      0|    47|
|QI      |24 months |NIH-Crypto     |BANGLADESH   |12    |      0|    47|
|QI      |24 months |NIH-Crypto     |BANGLADESH   |NaN   |     47|    47|
|QI      |24 months |PROBIT         |BELARUS      |1     |     14|   143|
|QI      |24 months |PROBIT         |BELARUS      |2     |     11|   143|
|QI      |24 months |PROBIT         |BELARUS      |3     |      9|   143|
|QI      |24 months |PROBIT         |BELARUS      |4     |      8|   143|
|QI      |24 months |PROBIT         |BELARUS      |5     |     13|   143|
|QI      |24 months |PROBIT         |BELARUS      |6     |      8|   143|
|QI      |24 months |PROBIT         |BELARUS      |7     |     12|   143|
|QI      |24 months |PROBIT         |BELARUS      |8     |     15|   143|
|QI      |24 months |PROBIT         |BELARUS      |9     |     11|   143|
|QI      |24 months |PROBIT         |BELARUS      |10    |     17|   143|
|QI      |24 months |PROBIT         |BELARUS      |11    |     12|   143|
|QI      |24 months |PROBIT         |BELARUS      |12    |     13|   143|
|QI      |24 months |PROBIT         |BELARUS      |NaN   |      0|   143|
|QI      |24 months |PROVIDE        |BANGLADESH   |1     |      5|    55|
|QI      |24 months |PROVIDE        |BANGLADESH   |2     |      1|    55|
|QI      |24 months |PROVIDE        |BANGLADESH   |3     |      0|    55|
|QI      |24 months |PROVIDE        |BANGLADESH   |4     |      6|    55|
|QI      |24 months |PROVIDE        |BANGLADESH   |5     |      3|    55|
|QI      |24 months |PROVIDE        |BANGLADESH   |6     |      7|    55|
|QI      |24 months |PROVIDE        |BANGLADESH   |7     |      4|    55|
|QI      |24 months |PROVIDE        |BANGLADESH   |8     |     10|    55|
|QI      |24 months |PROVIDE        |BANGLADESH   |9     |      5|    55|
|QI      |24 months |PROVIDE        |BANGLADESH   |10    |      4|    55|
|QI      |24 months |PROVIDE        |BANGLADESH   |11    |      7|    55|
|QI      |24 months |PROVIDE        |BANGLADESH   |12    |      3|    55|
|QI      |24 months |PROVIDE        |BANGLADESH   |NaN   |      0|    55|
|QI      |24 months |ResPak         |PAKISTAN     |1     |      0|     3|
|QI      |24 months |ResPak         |PAKISTAN     |2     |      0|     3|
|QI      |24 months |ResPak         |PAKISTAN     |3     |      0|     3|
|QI      |24 months |ResPak         |PAKISTAN     |4     |      0|     3|
|QI      |24 months |ResPak         |PAKISTAN     |5     |      0|     3|
|QI      |24 months |ResPak         |PAKISTAN     |6     |      1|     3|
|QI      |24 months |ResPak         |PAKISTAN     |7     |      1|     3|
|QI      |24 months |ResPak         |PAKISTAN     |8     |      1|     3|
|QI      |24 months |ResPak         |PAKISTAN     |9     |      0|     3|
|QI      |24 months |ResPak         |PAKISTAN     |10    |      0|     3|
|QI      |24 months |ResPak         |PAKISTAN     |11    |      0|     3|
|QI      |24 months |ResPak         |PAKISTAN     |12    |      0|     3|
|QI      |24 months |ResPak         |PAKISTAN     |NaN   |      0|     3|
|QI      |24 months |SAS-CompFeed   |INDIA        |1     |      1|     3|
|QI      |24 months |SAS-CompFeed   |INDIA        |2     |      1|     3|
|QI      |24 months |SAS-CompFeed   |INDIA        |3     |      0|     3|
|QI      |24 months |SAS-CompFeed   |INDIA        |4     |      0|     3|
|QI      |24 months |SAS-CompFeed   |INDIA        |5     |      0|     3|
|QI      |24 months |SAS-CompFeed   |INDIA        |6     |      0|     3|
|QI      |24 months |SAS-CompFeed   |INDIA        |7     |      0|     3|
|QI      |24 months |SAS-CompFeed   |INDIA        |8     |      0|     3|
|QI      |24 months |SAS-CompFeed   |INDIA        |9     |      0|     3|
|QI      |24 months |SAS-CompFeed   |INDIA        |10    |      0|     3|
|QI      |24 months |SAS-CompFeed   |INDIA        |11    |      0|     3|
|QI      |24 months |SAS-CompFeed   |INDIA        |12    |      1|     3|
|QI      |24 months |SAS-CompFeed   |INDIA        |NaN   |      0|     3|
|QI      |24 months |SAS-FoodSuppl  |INDIA        |1     |      4|     6|
|QI      |24 months |SAS-FoodSuppl  |INDIA        |2     |      0|     6|
|QI      |24 months |SAS-FoodSuppl  |INDIA        |3     |      2|     6|
|QI      |24 months |SAS-FoodSuppl  |INDIA        |4     |      0|     6|
|QI      |24 months |SAS-FoodSuppl  |INDIA        |5     |      0|     6|
|QI      |24 months |SAS-FoodSuppl  |INDIA        |6     |      0|     6|
|QI      |24 months |SAS-FoodSuppl  |INDIA        |7     |      0|     6|
|QI      |24 months |SAS-FoodSuppl  |INDIA        |8     |      0|     6|
|QI      |24 months |SAS-FoodSuppl  |INDIA        |9     |      0|     6|
|QI      |24 months |SAS-FoodSuppl  |INDIA        |10    |      0|     6|
|QI      |24 months |SAS-FoodSuppl  |INDIA        |11    |      0|     6|
|QI      |24 months |SAS-FoodSuppl  |INDIA        |12    |      0|     6|
|QI      |24 months |SAS-FoodSuppl  |INDIA        |NaN   |      0|     6|
|QI      |24 months |TanzaniaChild2 |TANZANIA     |1     |      3|    54|
|QI      |24 months |TanzaniaChild2 |TANZANIA     |2     |      3|    54|
|QI      |24 months |TanzaniaChild2 |TANZANIA     |3     |      4|    54|
|QI      |24 months |TanzaniaChild2 |TANZANIA     |4     |      2|    54|
|QI      |24 months |TanzaniaChild2 |TANZANIA     |5     |      1|    54|
|QI      |24 months |TanzaniaChild2 |TANZANIA     |6     |      2|    54|
|QI      |24 months |TanzaniaChild2 |TANZANIA     |7     |      7|    54|
|QI      |24 months |TanzaniaChild2 |TANZANIA     |8     |     11|    54|
|QI      |24 months |TanzaniaChild2 |TANZANIA     |9     |      7|    54|
|QI      |24 months |TanzaniaChild2 |TANZANIA     |10    |      4|    54|
|QI      |24 months |TanzaniaChild2 |TANZANIA     |11    |      4|    54|
|QI      |24 months |TanzaniaChild2 |TANZANIA     |12    |      6|    54|
|QI      |24 months |TanzaniaChild2 |TANZANIA     |NaN   |      0|    54|
|QI      |24 months |Vellore Crypto |INDIA        |1     |     25|   161|
|QI      |24 months |Vellore Crypto |INDIA        |2     |     18|   161|
|QI      |24 months |Vellore Crypto |INDIA        |3     |     11|   161|
|QI      |24 months |Vellore Crypto |INDIA        |4     |     11|   161|
|QI      |24 months |Vellore Crypto |INDIA        |5     |     11|   161|
|QI      |24 months |Vellore Crypto |INDIA        |6     |     10|   161|
|QI      |24 months |Vellore Crypto |INDIA        |7     |      9|   161|
|QI      |24 months |Vellore Crypto |INDIA        |8     |     13|   161|
|QI      |24 months |Vellore Crypto |INDIA        |9     |     19|   161|
|QI      |24 months |Vellore Crypto |INDIA        |10    |     10|   161|
|QI      |24 months |Vellore Crypto |INDIA        |11    |     15|   161|
|QI      |24 months |Vellore Crypto |INDIA        |12    |      9|   161|
|QI      |24 months |Vellore Crypto |INDIA        |NaN   |      0|   161|
|QI      |24 months |ZVITAMBO       |ZIMBABWE     |1     |     14|   152|
|QI      |24 months |ZVITAMBO       |ZIMBABWE     |2     |     17|   152|
|QI      |24 months |ZVITAMBO       |ZIMBABWE     |3     |      7|   152|
|QI      |24 months |ZVITAMBO       |ZIMBABWE     |4     |     19|   152|
|QI      |24 months |ZVITAMBO       |ZIMBABWE     |5     |     13|   152|
|QI      |24 months |ZVITAMBO       |ZIMBABWE     |6     |     16|   152|
|QI      |24 months |ZVITAMBO       |ZIMBABWE     |7     |     16|   152|
|QI      |24 months |ZVITAMBO       |ZIMBABWE     |8     |      7|   152|
|QI      |24 months |ZVITAMBO       |ZIMBABWE     |9     |     10|   152|
|QI      |24 months |ZVITAMBO       |ZIMBABWE     |10    |     14|   152|
|QI      |24 months |ZVITAMBO       |ZIMBABWE     |11    |      6|   152|
|QI      |24 months |ZVITAMBO       |ZIMBABWE     |12    |     13|   152|
|QI      |24 months |ZVITAMBO       |ZIMBABWE     |NaN   |      0|   152|


The following strata were considered:

* syntype: BC, agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: BC, agecat: 24 months, studyid: CMIN, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: CONTENT, country: PERU
* syntype: BC, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: Keneba, country: GAMBIA
* syntype: BC, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: BC, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: BC, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: BC, agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: BC, agecat: 6 months, studyid: CMIN, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: CONTENT, country: PERU
* syntype: BC, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* syntype: BC, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: Keneba, country: GAMBIA
* syntype: BC, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: ResPak, country: PAKISTAN
* syntype: BC, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: BC, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: BC, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: BC, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: BC, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: BC, agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: BC, agecat: Birth, studyid: CMIN, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: BC, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: Keneba, country: GAMBIA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: ResPak, country: PAKISTAN
* syntype: BC, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: BC, agecat: Birth, studyid: Vellore Crypto, country: INDIA
* syntype: BC, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: CMIN, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: CONTENT, country: PERU
* syntype: FULL, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: Keneba, country: GAMBIA
* syntype: FULL, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: CMIN, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: CONTENT, country: PERU
* syntype: FULL, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* syntype: FULL, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: Keneba, country: GAMBIA
* syntype: FULL, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: ResPak, country: PAKISTAN
* syntype: FULL, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: FULL, agecat: Birth, studyid: CMIN, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: FULL, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: Keneba, country: GAMBIA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: ResPak, country: PAKISTAN
* syntype: FULL, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: FULL, agecat: Birth, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: QI, agecat: 24 months, studyid: CMIN, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: 24 months, studyid: CONTENT, country: PERU
* syntype: QI, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: 24 months, studyid: Guatemala BSC, country: GUATEMALA
* syntype: QI, agecat: 24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* syntype: QI, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: Keneba, country: GAMBIA
* syntype: QI, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: ResPak, country: PAKISTAN
* syntype: QI, agecat: 24 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 24 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: QI, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: QI, agecat: 6 months, studyid: CMIN, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: INDIA
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: 6 months, studyid: CONTENT, country: PERU
* syntype: QI, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* syntype: QI, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: Keneba, country: GAMBIA
* syntype: QI, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: ResPak, country: PAKISTAN
* syntype: QI, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: QI, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: QI, agecat: Birth, studyid: CMIN, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: Birth, studyid: COHORTS, country: INDIA
* syntype: QI, agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: QI, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: Keneba, country: GAMBIA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: ResPak, country: PAKISTAN
* syntype: QI, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: Birth, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* syntype: BC, agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: BC, agecat: Birth, studyid: CMIN, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: BC, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: Keneba, country: GAMBIA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: Birth, studyid: ResPak, country: PAKISTAN
* syntype: BC, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: BC, agecat: Birth, studyid: Vellore Crypto, country: INDIA
* syntype: BC, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: BC, agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: BC, agecat: 6 months, studyid: CMIN, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: CONTENT, country: PERU
* syntype: BC, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* syntype: BC, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: Keneba, country: GAMBIA
* syntype: BC, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: 6 months, studyid: ResPak, country: PAKISTAN
* syntype: BC, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: BC, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: BC, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: BC, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: BC, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: BC, agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: BC, agecat: 24 months, studyid: CMIN, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: CONTENT, country: PERU
* syntype: BC, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: BC, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: BC, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: Keneba, country: GAMBIA
* syntype: BC, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: BC, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: BC, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: BC, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: BC, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: BC, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: BC, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: FULL, agecat: Birth, studyid: CMIN, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: FULL, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: Keneba, country: GAMBIA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: Birth, studyid: ResPak, country: PAKISTAN
* syntype: FULL, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: FULL, agecat: Birth, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: CMIN, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: CONTENT, country: PERU
* syntype: FULL, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* syntype: FULL, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: Keneba, country: GAMBIA
* syntype: FULL, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 6 months, studyid: ResPak, country: PAKISTAN
* syntype: FULL, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: FULL, agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: CMIN, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: CONTENT, country: PERU
* syntype: FULL, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: FULL, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: FULL, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: Keneba, country: GAMBIA
* syntype: FULL, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: FULL, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: FULL, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: FULL, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: FULL, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: FULL, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: FULL, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: QI, agecat: Birth, studyid: CMIN, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: COHORTS, country: INDIA
* syntype: QI, agecat: Birth, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: Birth, studyid: CONTENT, country: PERU
* syntype: QI, agecat: Birth, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: Keneba, country: GAMBIA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: Birth, studyid: ResPak, country: PAKISTAN
* syntype: QI, agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: Birth, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: Birth, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: QI, agecat: 6 months, studyid: CMIN, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: INDIA
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: 6 months, studyid: CONTENT, country: PERU
* syntype: QI, agecat: 6 months, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* syntype: QI, agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: Keneba, country: GAMBIA
* syntype: QI, agecat: 6 months, studyid: LCNI-5, country: MALAWI
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 6 months, studyid: ResPak, country: PAKISTAN
* syntype: QI, agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: QI, agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: 6 months, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* syntype: QI, agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* syntype: QI, agecat: 24 months, studyid: CMIN, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* syntype: QI, agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* syntype: QI, agecat: 24 months, studyid: CONTENT, country: PERU
* syntype: QI, agecat: 24 months, studyid: EE, country: PAKISTAN
* syntype: QI, agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* syntype: QI, agecat: 24 months, studyid: Guatemala BSC, country: GUATEMALA
* syntype: QI, agecat: 24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* syntype: QI, agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: Keneba, country: GAMBIA
* syntype: QI, agecat: 24 months, studyid: LCNI-5, country: MALAWI
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: INDIA
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: PERU
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: NEPAL
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* syntype: QI, agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: PROBIT, country: BELARUS
* syntype: QI, agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* syntype: QI, agecat: 24 months, studyid: ResPak, country: PAKISTAN
* syntype: QI, agecat: 24 months, studyid: SAS-CompFeed, country: INDIA
* syntype: QI, agecat: 24 months, studyid: SAS-FoodSuppl, country: INDIA
* syntype: QI, agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA
* syntype: QI, agecat: 24 months, studyid: Vellore Crypto, country: INDIA
* syntype: QI, agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE


ALL STRATA DROPPED. JOB FINISHED




