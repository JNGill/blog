---
title: "{{ replace .TranslationBaseName '-' ' ' | title }}"
date: "{{ .Date }}"
summary: ''
output:
  blogdown::html_page:
    df_print: paged
    
---

```{r setup, include=FALSE}
library(odbc)

conmssql <- dbConnect(odbc(),
                 Driver   = "SQL Server",
                 Server   = "DESKTOP-5R64MMS\\SQLEXPRESS",
                 Database = "SynthNHS",
                 Trusted_Connection = "True")
                 
knitr::opts_chunk$set(connection = "conmssql")                 
```


```{sql example, output.var = "exampletbl", results = 'hide'}
SELECT TOP 100 *
        
FROM spell ips

```
``` {r exampleprint, echo = FALSE, rows.print = 20}
exampletbl
```