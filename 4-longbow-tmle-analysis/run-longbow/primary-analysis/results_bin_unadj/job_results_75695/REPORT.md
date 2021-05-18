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

**Outcome Variable:** ever_swasted

## Predictor Variables

**Intervention Variable:** predexfd6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

|agecat                      |studyid        |country      |predexfd6 | ever_swasted| n_cell|     n|
|:---------------------------|:--------------|:------------|:---------|------------:|------:|-----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |1         |            0|     24|    27|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |1         |            1|      3|    27|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |0         |            0|      0|    27|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |0         |            1|      0|    27|
|0-24 months (no birth wast) |EE             |PAKISTAN     |1         |            0|     43|    55|
|0-24 months (no birth wast) |EE             |PAKISTAN     |1         |            1|     11|    55|
|0-24 months (no birth wast) |EE             |PAKISTAN     |0         |            0|      1|    55|
|0-24 months (no birth wast) |EE             |PAKISTAN     |0         |            1|      0|    55|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |1         |            0|    315|   519|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |1         |            1|     78|   519|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |0         |            0|    101|   519|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |0         |            1|     25|   519|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |1         |            0|  11684| 15687|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |1         |            1|    456| 15687|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |0         |            0|   3438| 15687|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |0         |            1|    109| 15687|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |1         |            0|   3462|  4725|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |1         |            1|    147|  4725|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |0         |            0|   1058|  4725|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |0         |            1|     58|  4725|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |1         |            0|    661|  2181|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |1         |            1|    117|  2181|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |0         |            0|   1229|  2181|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |0         |            1|    174|  2181|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |1         |            0|     36|   286|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |1         |            1|      0|   286|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |0         |            0|    247|   286|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |0         |            1|      3|   286|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |1         |            0|     11|   214|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |1         |            1|      0|   214|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |0         |            0|    193|   214|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |0         |            1|     10|   214|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |1         |            0|     81|   230|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |1         |            1|      3|   230|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |0         |            0|    140|   230|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |0         |            1|      6|   230|
|0-24 months (no birth wast) |MAL-ED         |PERU         |1         |            0|     86|   278|
|0-24 months (no birth wast) |MAL-ED         |PERU         |1         |            1|      0|   278|
|0-24 months (no birth wast) |MAL-ED         |PERU         |0         |            0|    188|   278|
|0-24 months (no birth wast) |MAL-ED         |PERU         |0         |            1|      4|   278|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |1         |            0|     16|   224|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |1         |            1|      0|   224|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |0         |            0|    206|   224|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |0         |            1|      2|   224|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |1         |            0|     30|   207|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |1         |            1|      1|   207|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |0         |            0|    173|   207|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |0         |            1|      3|   207|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |1         |            0|      0|   236|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |1         |            1|      0|   236|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |0         |            0|    228|   236|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |0         |            1|      8|   236|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |1         |            0|      1|   226|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |1         |            1|      0|   226|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |0         |            0|    216|   226|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |0         |            1|      9|   226|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |1         |            0|    178|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |1         |            1|      3|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |0         |            0|    490|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |0         |            1|     16|   687|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |1         |            0|    352|   413|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |1         |            1|     39|   413|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |0         |            0|     19|   413|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |0         |            1|      3|   413|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |1         |            0|      0|   160|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |1         |            1|      0|   160|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |0         |            0|    142|   160|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |0         |            1|     18|   160|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |1         |            0|      0|    10|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |1         |            1|      0|    10|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |0         |            0|      9|    10|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |0         |            1|      1|    10|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |1         |            0|     24|    26|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |1         |            1|      2|    26|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |0         |            0|      0|    26|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |0         |            1|      0|    26|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |1         |            0|     49|    54|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |1         |            1|      4|    54|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |0         |            0|      1|    54|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |0         |            1|      0|    54|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |1         |            0|    365|   505|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |1         |            1|     17|   505|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |0         |            0|    120|   505|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |0         |            1|      3|   505|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |1         |            0|  11793| 15514|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |1         |            1|    213| 15514|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |0         |            0|   3452| 15514|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |0         |            1|     56| 15514|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |1         |            0|   3309|  4346|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |1         |            1|     14|  4346|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |0         |            0|   1017|  4346|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |0         |            1|      6|  4346|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |1         |            0|    663|  1940|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |1         |            1|     24|  1940|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |0         |            0|   1205|  1940|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |0         |            1|     48|  1940|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |1         |            0|     14|   108|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |1         |            1|      0|   108|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |0         |            0|     94|   108|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |0         |            1|      0|   108|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |1         |            0|     10|   213|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |1         |            1|      0|   213|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |0         |            0|    198|   213|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |0         |            1|      5|   213|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |1         |            0|     82|   229|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |1         |            1|      2|   229|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |0         |            0|    143|   229|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |0         |            1|      2|   229|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |1         |            0|     86|   278|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |1         |            1|      0|   278|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |0         |            0|    191|   278|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |0         |            1|      1|   278|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |1         |            0|     16|   222|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |1         |            1|      0|   222|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |0         |            0|    205|   222|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |0         |            1|      1|   222|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |1         |            0|     31|   207|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |1         |            1|      0|   207|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |0         |            0|    173|   207|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |0         |            1|      3|   207|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |1         |            0|      0|   236|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |1         |            1|      0|   236|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |0         |            0|    233|   236|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |0         |            1|      3|   236|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |1         |            0|      1|   226|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |1         |            1|      0|   226|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |0         |            0|    222|   226|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |0         |            1|      3|   226|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |1         |            0|    180|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |1         |            1|      1|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |0         |            0|    497|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |0         |            1|      5|   683|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |1         |            0|    377|   408|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |1         |            1|      9|   408|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |0         |            0|     21|   408|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |0         |            1|      1|   408|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |1         |            0|      0|   140|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |1         |            1|      0|   140|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |0         |            0|    140|   140|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |0         |            1|      0|   140|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |1         |            0|      0|    10|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |1         |            1|      0|    10|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |0         |            0|     10|    10|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |0         |            1|      0|    10|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |1         |            0|     27|    28|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |1         |            1|      1|    28|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |0         |            0|      0|    28|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |0         |            1|      0|    28|
|6-24 months                 |EE             |PAKISTAN     |1         |            0|     46|    53|
|6-24 months                 |EE             |PAKISTAN     |1         |            1|      7|    53|
|6-24 months                 |EE             |PAKISTAN     |0         |            0|      0|    53|
|6-24 months                 |EE             |PAKISTAN     |0         |            1|      0|    53|
|6-24 months                 |GMS-Nepal      |NEPAL        |1         |            0|    286|   466|
|6-24 months                 |GMS-Nepal      |NEPAL        |1         |            1|     69|   466|
|6-24 months                 |GMS-Nepal      |NEPAL        |0         |            0|     88|   466|
|6-24 months                 |GMS-Nepal      |NEPAL        |0         |            1|     23|   466|
|6-24 months                 |JiVitA-3       |BANGLADESH   |1         |            0|   7607| 10179|
|6-24 months                 |JiVitA-3       |BANGLADESH   |1         |            1|    258| 10179|
|6-24 months                 |JiVitA-3       |BANGLADESH   |0         |            0|   2253| 10179|
|6-24 months                 |JiVitA-3       |BANGLADESH   |0         |            1|     61| 10179|
|6-24 months                 |JiVitA-4       |BANGLADESH   |1         |            0|   3475|  4753|
|6-24 months                 |JiVitA-4       |BANGLADESH   |1         |            1|    155|  4753|
|6-24 months                 |JiVitA-4       |BANGLADESH   |0         |            0|   1067|  4753|
|6-24 months                 |JiVitA-4       |BANGLADESH   |0         |            1|     56|  4753|
|6-24 months                 |Keneba         |GAMBIA       |1         |            0|    634|  2066|
|6-24 months                 |Keneba         |GAMBIA       |1         |            1|     98|  2066|
|6-24 months                 |Keneba         |GAMBIA       |0         |            0|   1197|  2066|
|6-24 months                 |Keneba         |GAMBIA       |0         |            1|    137|  2066|
|6-24 months                 |LCNI-5         |MALAWI       |1         |            0|     35|   282|
|6-24 months                 |LCNI-5         |MALAWI       |1         |            1|      0|   282|
|6-24 months                 |LCNI-5         |MALAWI       |0         |            0|    243|   282|
|6-24 months                 |LCNI-5         |MALAWI       |0         |            1|      4|   282|
|6-24 months                 |MAL-ED         |INDIA        |1         |            0|     10|   205|
|6-24 months                 |MAL-ED         |INDIA        |1         |            1|      0|   205|
|6-24 months                 |MAL-ED         |INDIA        |0         |            0|    190|   205|
|6-24 months                 |MAL-ED         |INDIA        |0         |            1|      5|   205|
|6-24 months                 |MAL-ED         |BANGLADESH   |1         |            0|     77|   209|
|6-24 months                 |MAL-ED         |BANGLADESH   |1         |            1|      1|   209|
|6-24 months                 |MAL-ED         |BANGLADESH   |0         |            0|    127|   209|
|6-24 months                 |MAL-ED         |BANGLADESH   |0         |            1|      4|   209|
|6-24 months                 |MAL-ED         |PERU         |1         |            0|     77|   247|
|6-24 months                 |MAL-ED         |PERU         |1         |            1|      0|   247|
|6-24 months                 |MAL-ED         |PERU         |0         |            0|    167|   247|
|6-24 months                 |MAL-ED         |PERU         |0         |            1|      3|   247|
|6-24 months                 |MAL-ED         |NEPAL        |1         |            0|     16|   221|
|6-24 months                 |MAL-ED         |NEPAL        |1         |            1|      0|   221|
|6-24 months                 |MAL-ED         |NEPAL        |0         |            0|    204|   221|
|6-24 months                 |MAL-ED         |NEPAL        |0         |            1|      1|   221|
|6-24 months                 |MAL-ED         |BRAZIL       |1         |            0|     28|   185|
|6-24 months                 |MAL-ED         |BRAZIL       |1         |            1|      1|   185|
|6-24 months                 |MAL-ED         |BRAZIL       |0         |            0|    156|   185|
|6-24 months                 |MAL-ED         |BRAZIL       |0         |            1|      0|   185|
|6-24 months                 |MAL-ED         |TANZANIA     |1         |            0|      0|   225|
|6-24 months                 |MAL-ED         |TANZANIA     |1         |            1|      0|   225|
|6-24 months                 |MAL-ED         |TANZANIA     |0         |            0|    220|   225|
|6-24 months                 |MAL-ED         |TANZANIA     |0         |            1|      5|   225|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |1         |            0|      1|   198|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |1         |            1|      0|   198|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |0         |            0|    191|   198|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |0         |            1|      6|   198|
|6-24 months                 |PROVIDE        |BANGLADESH   |1         |            0|    162|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |1         |            1|      2|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |0         |            0|    440|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |0         |            1|     11|   615|
|6-24 months                 |SAS-CompFeed   |INDIA        |1         |            0|    331|   383|
|6-24 months                 |SAS-CompFeed   |INDIA        |1         |            1|     32|   383|
|6-24 months                 |SAS-CompFeed   |INDIA        |0         |            0|     18|   383|
|6-24 months                 |SAS-CompFeed   |INDIA        |0         |            1|      2|   383|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |1         |            0|      0|   160|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |1         |            1|      0|   160|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |0         |            0|    136|   160|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |0         |            1|     24|   160|
|6-24 months                 |Vellore Crypto |INDIA        |1         |            0|      0|    10|
|6-24 months                 |Vellore Crypto |INDIA        |1         |            1|      0|    10|
|6-24 months                 |Vellore Crypto |INDIA        |0         |            0|      9|    10|
|6-24 months                 |Vellore Crypto |INDIA        |0         |            1|      1|    10|


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: Vellore Crypto, country: INDIA





```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```


