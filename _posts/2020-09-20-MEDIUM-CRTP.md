---
layout: post
title: A review of the Certified Red Team Professional (CRTP) and the Attacking and Defending Active Directory Course
description: This is a collection of short CSS snippets I thought might be useful for beginners
summary: This is a collection of short CSS snippets I thought might be useful for beginners.
tags: css coding
---

Introduction
Quick question: What’s a technology that almost every company out there is using, which is often very dangerous and can lead to a complete compromise of company assets in case of breach? That’s right, it’s Active Directory. Unfortunately, there are not a lot of resources when it comes to attacking and defending Active Directory, and those that already exist have various drawbacks: HTB Pro Labs can be a bit pricey and the first boxes are a nightmare as everybody is swarming them and ruining the experience, PWK/OSCP just recently added an AD module to the syllabus but it is still rather expensive, and the stand alone HTB Boxes that involve AD usually do it in a superfluous way.

Enter the Red Team Labs from Pentester Academy, which seeks to fill this niche — https://www.pentesteracademy.com/redlabs. About a week ago I attempted (and passed) my CRTP exam, the first in terms of difficulty in the series. I’ll review it with my (not) patented way of splitting it into 3 categories: The Good, The Bad and The Great. I’ll mention the exam and compare it to the OSCP at the end.

**The Good**

The course focuses entirely on AD and holds your hand throughout it. Comes with ample video content and a PDF that go through all 23 Learning Objectives. While the course will also cover brute forcing and other more complex attacks, the focus is on learning the methodology and being able to work efficiently from just powershell. Powershell tends to have the learning curve of a brick wall, but the course does a fantastic job of easing you into it and often offers alternative commands and ways to achieve your goals. Furthermore, a few videos and the last 100 slides or so of the PDF dedicated to AD Defense and Detection, making this course even more valuable for blue teamers.

You are granted a foothold box in a rather small network, already loaded with tools and with most of the FW and AV disabled. By following the Learning Objectives you will learn how to completely compromise the network and reach Forest admin through multiple paths. The syllabus is available here: https://www.pentesteracademy.com/course?id=47

If you’re coming from HTB, you’ll be pleased to know that the AD lab is a lot emptier, and often you won’t even notice other students. According to Bloodhound there were 7 other students with access to the lab at the same time as me but I’ve personally only noticed one active. The labs reset every night so in case you’ve screwed something up, you can just try again the next day. You can connect to the lab via VPN + RDP or via web based RDP. I chose the first since the web version didn’t scale very well with my 4k screen. Both US and EU based connection packs are available. I’ve used the EU one and had no latency issues.

The PDF is very comprehensive and constantly updated so you can safely rely on it. Overall, I’ve put in about 2–3 hours of study per day and 5–6 on a weekend day and I was able to watch all the videos and complete all the exercises twice over in about 3 weeks. Given that the lab is quite affordable, you can go for the 30 days option and dedicate some time to it. I was able to schedule my exam about 2 weeks after I finished the Learning Objectives.

For someone brand new to AD, the guided experience was very valuable. It’s way more difficult to practice and prepare AD Security since there is no VulnHub for AD and the other solutions have their drawbacks as mentioned before. From a technical point of view, the lab is fantastic.

**The Bad**

While none of these are a deal breaker, there are a few nitpicks that I have to make.

The video quality varies quite a bit, in both presentation and content. This is understandable given that we’re dealing with Microsoft and proprietary software, and shooting a new video for every update and change would be overkill. Fortunately, the videos mainly follow the PDF so you can rely on that instead. I’d advise against trying to follow along the videos as it can get a bit confusing and Nikhil can occasionally jump around quite a bit. You can safely watch the videos at 1.2x to 1.5x speed and just focus on understanding the concepts.

Another nitpick is that the last Learning Objective can often fizzle and end up with a bricked foothold box that you have to get fixed by contacting Lab Support. It’s a fairly complex attack with a lot of prerequisites, so in the end it’s not very relevant, so just focus on the video and PDF instead until you get it.

Last would be the scheduling aspect, which can be a bit cumbersome, but I have been informed that a solution for it will be rolled out in the very near future. I asked for a 9 AM UK time time slot and they were able to accommodate that request with no issues. Which brings me to my final point.

**The Great**

The customer service is absolutely incredible. They are very quick to reply, and were able to accommodate all my elaborate payment and invoice requirements. Whenever I broke something they’d be quick to fix it and they were extremely communicative in regards to the exam. A master class in customer service.

The affordable prices are also a nice addition :)

**The Exam**

I’ll refer to the OSCP as my main point of reference. Just like the OSCP, the CRTP exam is 24 hours long, but unlike the OSCP, you get 48 hours after to write the report. The exam involves 5 boxes and your foothold box, your goal being achieving code execution on all of them, although not necessarily as Administrator. The 5 boxes must be done in a sequential order and do not include your foodhold box, as I painfully had to learn.

In terms of difficulty, the first 2 boxes are the hardest and I’d say they are comparable to some OSCP boxes, but a bit easier since there won’t be that many rabbit holes. Perhaps not as difficult as a 20 pointer and not as easy as the 10 pointer, but somewhere in between. The exam is fair and designed to test your knowledge, not to torture you. Even then, do not underestimate it. It took me 7 hours to own my first box and then 2 more hours to own the entire network. If you get past the 2 first boxes, the others drastically drop in difficulty. There is no clear number of boxes that you need to own, the rumour is that you can get by with 3 boxes and a good lab report, but if you’ve compromised 3 boxes you can easily do the other 2 unless you somehow forget about them.

Unlike the OSCP, there is no clear Exam Report template you can follow. I’ve used the old reliable OffSec Sample report here:

https://www.offensive-security.com/reports/penetration-testing-sample-report-2013.pdf

Kept the format but changed the content. Personally I struggled a bit more with the report than with the OSCP one as you have to provide a solid defense plan at the end of it and document all your tools.

Overall, the course somewhat covers everything you need in the exam. I would still recommend using the lab to experiment on your own. I would also advise getting very familiar with Boodhound and trying to come up with your own vectors. Some useful resources:

https://adsecurity.org/

Lab of a Penetration Tester
Home of Nikhil SamratAshok Mittal. Posts about Red Teaming, Offensive PowerShell, Active Directory and Pen Testing.
www.labofapenetrationtester.com

https://www.harmj0y.net/blog/

Also consider stalking Nikhil on twitter, he posts a lot of a great stuff:

https://twitter.com/nikhil_mitt

Conclusion

I dove into this course with 0 knowledge of AD. I didn’t even know how to import a Powershell module. Now that I’m done and I can look back at it, I can tell I’ve come a long way but I’m not quite sure I’m ready to call myself a “Professional” yet. I can certainly find my way around an AD network now and I feel confident enough do some whitebox pentest engagements. Red teaming or anything more advanced would require substantially more training, most likely the CRTE, their next level AD lab. For now I’ll work on setting up my own AD lab and maybe hit some of the Pro Labs on HTB. I learned a lot from the CRTP and I think it’s a fantastic introductory course and exam for anyone interested in Active Directory Security, read teamers and blue teamers alike.


![](/assets/images/crtp.png)


Thanks for reading.

I sporadically post things on twitter, check me out if you’d like @robsware.