---
title: 'The Books I Read in 2021: Part 2'
author: 'James Gill'
date: '2024-11-15'
slug: []
categories:
  - ''
tags:
  - 'Books'
summary: 'Rapid Development by Steve McConnell'
---

{{< callout type="info" title="About This Series" >}}
<p>In 2021, I started a new job as the manager of the front-end reporting team on the electronic health records implementation programme at Guy's and St Thomas'. This was my first time managing a team, and my first time working on a programme rather than in a business-as-usual role. I was both excited, but also anxious - and so my usual coping mechanism of buying books kicked in! </p>

<p>Now, a year after our go-live, I want to look back at some of the books I read at the time, and what I took from them. </p>
{{< /callout >}}

- *Title*: Rapid Development
- *Author*: Steve McConnell
- *Publication Date*: 1996
- *How did I hear about it*: I'm honestly not sure. [Possibly from this blogpost on Coding Horror](https://blog.codinghorror.com/escaping-from-gilligans-island/).

The single-page table enumerating the "[classic mistakes](https://www.cs.nmsu.edu/~jcook/posts/classic-se-mistakes-mcconnell/)" of software projects is worth the cover price alone.

That being said, it would be reasonable to ask whether a book on software development is all that relevant to a team configuring reporting content within an electronic patient record (EPR). After all, quite a lot of our work is done in GUI editors. We write some SQL, but we aren't putting out reams of code. Certainly not complete consumer applications like the ones McConnell worked on at Microsoft.

But at a fundamental level, an EPR is a group of computer programs, running on some servers. And reporting analysts and database developers are in the business of altering and expanding those programs to create useful images on users' monitors. 

Just like scripters writing C code, reporting analysts are working with "[pure thought-stuff](https://www.goodreads.com/quotes/69102-the-programmer-like-the-poet-works-only-slightly-removed-from)". In the same way as developers at Microsoft or Airbus, they face the challenge of understanding business needs, and then making the computer behave accordingly. Akin to developers of large software packages, they must co-ordinate with many other technical colleagues and reason about the effects of changes on the system as a whole.

So I do think that many of the lessons are transferable. The discussion of "heroics" and "code-like-hell programming" were especially helpful to me in the context of a big-bang go-live with a team of motivated, dedicated people. 