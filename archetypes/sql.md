---
title: "{{ replace .TranslationBaseName '-' ' ' | title }}"
date: "{{ .Date }}"
summary: ''
output:
  blogdown::html_page:
    df_print: paged
    
---

```{r connect, include=FALSE}
library(odbc)

conmssql <- dbConnect(odbc(),
                 Driver   = "SQL Server",
                 Server   = "DESKTOP-5R64MMS\\SQLEXPRESS",
                 Database = "SynthNHS",
                 Trusted_Connection = "True")
```


```{sql, connection = conmssql}
SELECT TOP 10 *
        
FROM spell ips

```