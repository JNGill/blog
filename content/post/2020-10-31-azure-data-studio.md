---
title: Azure Data Studio
author: James Gill
date: '2020-10-31'
slug: azure-data-studio
categories:
  - SQL
tags:
  - SQL
  - SQL Server
  - Git
summary: 'Why I''ve left SSMS for ADS.'
---

All the while I've worked in the NHS, I've used SQL Server Management Studio (SSMS) as my development environment for writing SQL queries. For trusts on the Microsoft stack, it's the standard approach, and it works fine.

From time-to-time I've experimented with writing my SQL in RStudio when working on R projects. It's nice to have everything in one place. But I always missed the code highlighting and completion, and the ability to view object definitions too much to stick with it.

Lately though I've left SSMS for a different Microsoft product, Azure Data Studio (ADS). Despite its name, ADS isn't just a tool for managing Azure cloud databases. The user experience for an analyst is similar to working with an on-premises database in SSMS. 

[Microsoft says](https://docs.microsoft.com/en-us/sql/azure-data-studio/what-is?view=sql-server-ver15) to use ADS if you "spend most of your time editing or executing queries", while you should prefer SSMS if you "spend most of your time on database administration tasks". The former certainly describes my workload better than the latter, so I gave it a try. 

The following is what won me over:

1. **Code formatting**. It's possible to auto-format code in SSMS but I never quite got it working to my satisfaction. The code formatting in ADS worked for me out of the box. You can choose to automatically format as you type or when you paste code, or with a keyboard short-cut. Auto-formatting is just such a quick win for writing code others can read.
2. **Syntax highlighting**. The same good highlighting as you get in SSMS - certainly better than RStudio's default attempt to highlight T-SQL.
3. **Auto-completion**. Code completion feels both a bit smarter and also less laggy than in SSMS.
4. **Object Explorer**. ADS retains the familiar Object Explorer from SSMS.
5. **Version control with Git**. Again, there are ways to use Git (or other VCS) with SSMS. But they tend to require a third-party plug-in. ADS on the other hand plays nicely with Git for Windows from the get-go. I also find it helpful to be able to diff code fragments on the fly.
6. **Notebooks**. ADS notebooks let you mix SQL and Markdown. I find this kind of literate programming approach is helpful for tasks such as investigating data quality issues. The notebooks are saved in the Jupyter Notebook format, so they can be converted (e.g. to PDF) with Pandoc.
7. **Code folding**. Another feature that is in SSMS but that just seems to work slightly better in ADS - in particular I like the folding of CTEs.
8. **Command Palette**. No more digging around SSMS menus to find that one tick-box.

There are only a couple of things which I miss from SSMS:

1. You can't hold Alt to make a rectangular selection in the SSMS editor (although there are other options for those kinds of edits - I just need to update my muscle memory).
2. The ability to filter in the ADS Object Explorer.