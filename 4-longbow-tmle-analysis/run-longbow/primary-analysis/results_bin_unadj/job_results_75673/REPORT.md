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

**Outcome Variable:** ever_wasted

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

|agecat                      |studyid        |country      |predexfd6 | ever_wasted| n_cell|     n|
|:---------------------------|:--------------|:------------|:---------|-----------:|------:|-----:|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |1         |           0|     14|    27|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |1         |           1|     13|    27|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |0         |           0|      0|    27|
|0-24 months (no birth wast) |CMC-V-BCS-2002 |INDIA        |0         |           1|      0|    27|
|0-24 months (no birth wast) |EE             |PAKISTAN     |1         |           0|     28|    55|
|0-24 months (no birth wast) |EE             |PAKISTAN     |1         |           1|     26|    55|
|0-24 months (no birth wast) |EE             |PAKISTAN     |0         |           0|      1|    55|
|0-24 months (no birth wast) |EE             |PAKISTAN     |0         |           1|      0|    55|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |1         |           0|    189|   519|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |1         |           1|    204|   519|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |0         |           0|     64|   519|
|0-24 months (no birth wast) |GMS-Nepal      |NEPAL        |0         |           1|     62|   519|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |1         |           0|  10067| 15687|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |1         |           1|   2073| 15687|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |0         |           0|   2944| 15687|
|0-24 months (no birth wast) |JiVitA-3       |BANGLADESH   |0         |           1|    603| 15687|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |1         |           0|   2712|  4725|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |1         |           1|    897|  4725|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |0         |           0|    816|  4725|
|0-24 months (no birth wast) |JiVitA-4       |BANGLADESH   |0         |           1|    300|  4725|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |1         |           0|    493|  2181|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |1         |           1|    285|  2181|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |0         |           0|    932|  2181|
|0-24 months (no birth wast) |Keneba         |GAMBIA       |0         |           1|    471|  2181|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |1         |           0|     34|   286|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |1         |           1|      2|   286|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |0         |           0|    229|   286|
|0-24 months (no birth wast) |LCNI-5         |MALAWI       |0         |           1|     21|   286|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |1         |           0|      7|   214|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |1         |           1|      4|   214|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |0         |           0|    130|   214|
|0-24 months (no birth wast) |MAL-ED         |INDIA        |0         |           1|     73|   214|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |1         |           0|     70|   230|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |1         |           1|     14|   230|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |0         |           0|    110|   230|
|0-24 months (no birth wast) |MAL-ED         |BANGLADESH   |0         |           1|     36|   230|
|0-24 months (no birth wast) |MAL-ED         |PERU         |1         |           0|     83|   278|
|0-24 months (no birth wast) |MAL-ED         |PERU         |1         |           1|      3|   278|
|0-24 months (no birth wast) |MAL-ED         |PERU         |0         |           0|    176|   278|
|0-24 months (no birth wast) |MAL-ED         |PERU         |0         |           1|     16|   278|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |1         |           0|     13|   224|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |1         |           1|      3|   224|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |0         |           0|    167|   224|
|0-24 months (no birth wast) |MAL-ED         |NEPAL        |0         |           1|     41|   224|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |1         |           0|     29|   207|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |1         |           1|      2|   207|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |0         |           0|    166|   207|
|0-24 months (no birth wast) |MAL-ED         |BRAZIL       |0         |           1|     10|   207|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |1         |           0|      0|   236|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |1         |           1|      0|   236|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |0         |           0|    203|   236|
|0-24 months (no birth wast) |MAL-ED         |TANZANIA     |0         |           1|     33|   236|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |1         |           0|      1|   226|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |1         |           1|      0|   226|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |0         |           0|    195|   226|
|0-24 months (no birth wast) |MAL-ED         |SOUTH AFRICA |0         |           1|     30|   226|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |1         |           0|    152|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |1         |           1|     29|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |0         |           0|    413|   687|
|0-24 months (no birth wast) |PROVIDE        |BANGLADESH   |0         |           1|     93|   687|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |1         |           0|    254|   413|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |1         |           1|    137|   413|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |0         |           0|     16|   413|
|0-24 months (no birth wast) |SAS-CompFeed   |INDIA        |0         |           1|      6|   413|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |1         |           0|      0|   160|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |1         |           1|      0|   160|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |0         |           0|     97|   160|
|0-24 months (no birth wast) |SAS-FoodSuppl  |INDIA        |0         |           1|     63|   160|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |1         |           0|      0|    10|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |1         |           1|      0|    10|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |0         |           0|      5|    10|
|0-24 months (no birth wast) |Vellore Crypto |INDIA        |0         |           1|      5|    10|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |1         |           0|     18|    26|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |1         |           1|      8|    26|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |0         |           0|      0|    26|
|0-6 months (no birth wast)  |CMC-V-BCS-2002 |INDIA        |0         |           1|      0|    26|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |1         |           0|     43|    54|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |1         |           1|     10|    54|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |0         |           0|      1|    54|
|0-6 months (no birth wast)  |EE             |PAKISTAN     |0         |           1|      0|    54|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |1         |           0|    316|   505|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |1         |           1|     66|   505|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |0         |           0|     95|   505|
|0-6 months (no birth wast)  |GMS-Nepal      |NEPAL        |0         |           1|     28|   505|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |1         |           0|  11163| 15514|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |1         |           1|    843| 15514|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |0         |           0|   3243| 15514|
|0-6 months (no birth wast)  |JiVitA-3       |BANGLADESH   |0         |           1|    265| 15514|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |1         |           0|   3235|  4346|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |1         |           1|     88|  4346|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |0         |           0|    995|  4346|
|0-6 months (no birth wast)  |JiVitA-4       |BANGLADESH   |0         |           1|     28|  4346|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |1         |           0|    608|  1940|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |1         |           1|     79|  1940|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |0         |           0|   1118|  1940|
|0-6 months (no birth wast)  |Keneba         |GAMBIA       |0         |           1|    135|  1940|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |1         |           0|     14|   108|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |1         |           1|      0|   108|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |0         |           0|     94|   108|
|0-6 months (no birth wast)  |LCNI-5         |MALAWI       |0         |           1|      0|   108|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |1         |           0|      9|   213|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |1         |           1|      1|   213|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |0         |           0|    172|   213|
|0-6 months (no birth wast)  |MAL-ED         |INDIA        |0         |           1|     31|   213|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |1         |           0|     79|   229|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |1         |           1|      5|   229|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |0         |           0|    134|   229|
|0-6 months (no birth wast)  |MAL-ED         |BANGLADESH   |0         |           1|     11|   229|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |1         |           0|     86|   278|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |1         |           1|      0|   278|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |0         |           0|    187|   278|
|0-6 months (no birth wast)  |MAL-ED         |PERU         |0         |           1|      5|   278|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |1         |           0|     16|   222|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |1         |           1|      0|   222|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |0         |           0|    191|   222|
|0-6 months (no birth wast)  |MAL-ED         |NEPAL        |0         |           1|     15|   222|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |1         |           0|     30|   207|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |1         |           1|      1|   207|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |0         |           0|    169|   207|
|0-6 months (no birth wast)  |MAL-ED         |BRAZIL       |0         |           1|      7|   207|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |1         |           0|      0|   236|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |1         |           1|      0|   236|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |0         |           0|    226|   236|
|0-6 months (no birth wast)  |MAL-ED         |TANZANIA     |0         |           1|     10|   236|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |1         |           0|      1|   226|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |1         |           1|      0|   226|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |0         |           0|    217|   226|
|0-6 months (no birth wast)  |MAL-ED         |SOUTH AFRICA |0         |           1|      8|   226|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |1         |           0|    174|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |1         |           1|      7|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |0         |           0|    472|   683|
|0-6 months (no birth wast)  |PROVIDE        |BANGLADESH   |0         |           1|     30|   683|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |1         |           0|    348|   408|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |1         |           1|     38|   408|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |0         |           0|     18|   408|
|0-6 months (no birth wast)  |SAS-CompFeed   |INDIA        |0         |           1|      4|   408|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |1         |           0|      0|   140|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |1         |           1|      0|   140|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |0         |           0|    140|   140|
|0-6 months (no birth wast)  |SAS-FoodSuppl  |INDIA        |0         |           1|      0|   140|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |1         |           0|      0|    10|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |1         |           1|      0|    10|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |0         |           0|      8|    10|
|0-6 months (no birth wast)  |Vellore Crypto |INDIA        |0         |           1|      2|    10|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |1         |           0|     19|    28|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |1         |           1|      9|    28|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |0         |           0|      0|    28|
|6-24 months                 |CMC-V-BCS-2002 |INDIA        |0         |           1|      0|    28|
|6-24 months                 |EE             |PAKISTAN     |1         |           0|     32|    53|
|6-24 months                 |EE             |PAKISTAN     |1         |           1|     21|    53|
|6-24 months                 |EE             |PAKISTAN     |0         |           0|      0|    53|
|6-24 months                 |EE             |PAKISTAN     |0         |           1|      0|    53|
|6-24 months                 |GMS-Nepal      |NEPAL        |1         |           0|    176|   466|
|6-24 months                 |GMS-Nepal      |NEPAL        |1         |           1|    179|   466|
|6-24 months                 |GMS-Nepal      |NEPAL        |0         |           0|     61|   466|
|6-24 months                 |GMS-Nepal      |NEPAL        |0         |           1|     50|   466|
|6-24 months                 |JiVitA-3       |BANGLADESH   |1         |           0|   6534| 10179|
|6-24 months                 |JiVitA-3       |BANGLADESH   |1         |           1|   1331| 10179|
|6-24 months                 |JiVitA-3       |BANGLADESH   |0         |           0|   1945| 10179|
|6-24 months                 |JiVitA-3       |BANGLADESH   |0         |           1|    369| 10179|
|6-24 months                 |JiVitA-4       |BANGLADESH   |1         |           0|   2765|  4753|
|6-24 months                 |JiVitA-4       |BANGLADESH   |1         |           1|    865|  4753|
|6-24 months                 |JiVitA-4       |BANGLADESH   |0         |           0|    835|  4753|
|6-24 months                 |JiVitA-4       |BANGLADESH   |0         |           1|    288|  4753|
|6-24 months                 |Keneba         |GAMBIA       |1         |           0|    490|  2066|
|6-24 months                 |Keneba         |GAMBIA       |1         |           1|    242|  2066|
|6-24 months                 |Keneba         |GAMBIA       |0         |           0|    919|  2066|
|6-24 months                 |Keneba         |GAMBIA       |0         |           1|    415|  2066|
|6-24 months                 |LCNI-5         |MALAWI       |1         |           0|     32|   282|
|6-24 months                 |LCNI-5         |MALAWI       |1         |           1|      3|   282|
|6-24 months                 |LCNI-5         |MALAWI       |0         |           0|    223|   282|
|6-24 months                 |LCNI-5         |MALAWI       |0         |           1|     24|   282|
|6-24 months                 |MAL-ED         |INDIA        |1         |           0|      7|   205|
|6-24 months                 |MAL-ED         |INDIA        |1         |           1|      3|   205|
|6-24 months                 |MAL-ED         |INDIA        |0         |           0|    143|   205|
|6-24 months                 |MAL-ED         |INDIA        |0         |           1|     52|   205|
|6-24 months                 |MAL-ED         |BANGLADESH   |1         |           0|     67|   209|
|6-24 months                 |MAL-ED         |BANGLADESH   |1         |           1|     11|   209|
|6-24 months                 |MAL-ED         |BANGLADESH   |0         |           0|    105|   209|
|6-24 months                 |MAL-ED         |BANGLADESH   |0         |           1|     26|   209|
|6-24 months                 |MAL-ED         |PERU         |1         |           0|     74|   247|
|6-24 months                 |MAL-ED         |PERU         |1         |           1|      3|   247|
|6-24 months                 |MAL-ED         |PERU         |0         |           0|    157|   247|
|6-24 months                 |MAL-ED         |PERU         |0         |           1|     13|   247|
|6-24 months                 |MAL-ED         |NEPAL        |1         |           0|     13|   221|
|6-24 months                 |MAL-ED         |NEPAL        |1         |           1|      3|   221|
|6-24 months                 |MAL-ED         |NEPAL        |0         |           0|    174|   221|
|6-24 months                 |MAL-ED         |NEPAL        |0         |           1|     31|   221|
|6-24 months                 |MAL-ED         |BRAZIL       |1         |           0|     27|   185|
|6-24 months                 |MAL-ED         |BRAZIL       |1         |           1|      2|   185|
|6-24 months                 |MAL-ED         |BRAZIL       |0         |           0|    153|   185|
|6-24 months                 |MAL-ED         |BRAZIL       |0         |           1|      3|   185|
|6-24 months                 |MAL-ED         |TANZANIA     |1         |           0|      0|   225|
|6-24 months                 |MAL-ED         |TANZANIA     |1         |           1|      0|   225|
|6-24 months                 |MAL-ED         |TANZANIA     |0         |           0|    198|   225|
|6-24 months                 |MAL-ED         |TANZANIA     |0         |           1|     27|   225|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |1         |           0|      1|   198|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |1         |           1|      0|   198|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |0         |           0|    171|   198|
|6-24 months                 |MAL-ED         |SOUTH AFRICA |0         |           1|     26|   198|
|6-24 months                 |PROVIDE        |BANGLADESH   |1         |           0|    140|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |1         |           1|     24|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |0         |           0|    376|   615|
|6-24 months                 |PROVIDE        |BANGLADESH   |0         |           1|     75|   615|
|6-24 months                 |SAS-CompFeed   |INDIA        |1         |           0|    253|   383|
|6-24 months                 |SAS-CompFeed   |INDIA        |1         |           1|    110|   383|
|6-24 months                 |SAS-CompFeed   |INDIA        |0         |           0|     16|   383|
|6-24 months                 |SAS-CompFeed   |INDIA        |0         |           1|      4|   383|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |1         |           0|      0|   160|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |1         |           1|      0|   160|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |0         |           0|     97|   160|
|6-24 months                 |SAS-FoodSuppl  |INDIA        |0         |           1|     63|   160|
|6-24 months                 |Vellore Crypto |INDIA        |1         |           0|      0|    10|
|6-24 months                 |Vellore Crypto |INDIA        |1         |           1|      0|    10|
|6-24 months                 |Vellore Crypto |INDIA        |0         |           0|      7|    10|
|6-24 months                 |Vellore Crypto |INDIA        |0         |           1|      3|    10|


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
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: Vellore Crypto, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: Vellore Crypto, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
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


