---
layout: post
title: OSEP - Finding my limits
description: And losing my sanity.
summary: It's mixed.
tags: offsec certs rants
---

I have successfully cleared the OSEP exam in April on my 2nd attempt with 15 flags and secret.txt. I have some mixed feelings about the whole experience so I will try to put those thoughts in writing in this post.

**The platform**

I finally got an OSEP voucher in late November, after OffSec had already deployed their new learning platform. After I got used to the UI, I wanted to start going through the course and that is the point where the problems began. 

First issue reared its ugly head here. The course was only viewable on the OffSec learn platform, generally about one page at a time. Trying to move on to another page would cause the system to render it again, which could take anywhere from 5 seconds to 30 seconds or it would outright crash. This isn’t great when you’re quickly flicking through material when trying to solve a lab. Not to mention the platform has no CTRL+F functionality so you better remember where everything is. There is also an input box with notes for each page, for some bizarre reason. You can no longer access the reading material once your lab time expires, making the notes moot. The top of the page kept saying that the PDF and video download are being generated for weeks. I kept emailing help@offsec to ask if they could send me a link to download the pdf and video locally, and they kept saying I should receive a link automatically in my inbox. Which I did, **3 weeks later.**

**The content**

This one is actually really good, and by far the best part of the course. The PDF is thorough and explains things very well, although it goes weirdly in depth in some topics that aren’t very relevant and then skimps on some much more important topics, such as kerberos. Some of the examples in the PDF also assume that you’re also watching the videos at the same time and may use examples from them. Personally, I find video an awful way of learning content so I tend to skip them or watch them on fast forward to get the idea. Personally, I could’ve used a bit more details on how the lab works, such as the fact that the IPs used in the PDF/videos are the same as the IPs you get, except for the third octet, but that might just be me not paying enough attention. 

However, to admit that the content from the PDF prepares you to pass the exam is a stretch at best. Most of the content present in the exam can be found in the PDF, but the exam raises the stakes, size and difficulty substantially. Take what you get from the PDF as a starting point and seek outside sources to improve and build on your knowledge. 

As a whole, the PDF is still one of the best concentrated resources of knowledge when it comes to pentesting out there, and earns my full recommendation.

**The labs**

The borderline alpha state of the platform made its presence felt again here. The uptime for the labs was not good at all. There were frequent days, especially in my first month, where labs wouldn’t boot at all for multiple hours and I’d just get a generic error message. Offsec would just say something about how “they’re working on it” on the dedicated support channel for OSEP and nothing else. On other days when the labs worked, they often happened to be incredibly slow. This got worse as I progressed further into the lab, to the point where the final challenge labs were moving at a crawl’s pace. And lastly, some other times the functions to reset/stop a lab would also glitch out. Overall, I’d say I got about 50-60% of proper uptime during my time in the lab, which is disastrous by any metric. There was also very little communication from OffSec in regards to the performance of the labs. Which does bring me to my next point.

**The discord**

OffSec runs their own discord server which you can find by googling it. The server manages to strike a balance between being both overly moderated and too lax at the same time. Any mention whatsoever of course material or exam outside their specific channel is highly moderated and discouraged. If you want to discuss exercises or labs, you have to be manually verified by an OffSec staff member (your OSID and email) and then you’ll be granted access to those specific channels. Which does help a lot in keeping most complaints contained and hidden out of view. Many users, including myself, also feel a bit uneasy about sending OffSec your personally identifiable information over discord, but that is the only way. 

Regardless, the OffSec discord is the place to be if you need help, although do not count on OffSec support staff to provide this help. I ran into a really strange issue in lab 4 and asked a member of the staff for help, and after about 10 minutes of back and forth I was told what basically amounted to “it works on my machine, good luck fam". Luckily, another student asked me run wireshark on a specific program and we managed to get the problem fixed in 2 minutes. So the community is there and fairly nice. 

**The final prep**

It took me about 8 weeks to finish the PDF and the labs, not in small part thanks to the low activity at work around Christmas time which gave me enough time to power through the labs. I attempted the exam shortly after completing the labs, even if I was still exhausted from the experience. I assumed that the knowledge would be fresh in my mind and would make the exam more approachable. I did all the challenge labs about 3 times each and tried multiple alternate routes (of which there aren't many) and made sure to understand what I was doing and why things worked at every step. 

I felt prepared but still nervous. Unlike the OSCP, where I was prepared and expected to fail, I thought I had a decent shot at OSEP. I already had my CRTP and completed Offshore from HackTheBox, so that emboldened me even further. Oh how wrong I was.

**The 1st exam**

I started my exam around 10 AM on a Saturday, relatively well rested, and ran straight into problems. I won’t detail them here because I fear the OffSec ban hammer, but due to technical difficulties from OffSec’s side, my exam start was delayed by about 1 hour. I hit a wall as soon as I started, with a foothold considerably more involved than anything in the labs. A few hours in and I managed to land on my first host where I was once again greeted by a tougher environment than in the labs. I found my footing after a bit of back and forth and managed to grab about 6 flags in 24 hours so I was feeling confident. I went to sleep eager to get 4 more flags the next day.

Ha.

I woke up after a poor night's sleep and started working towards the next flag, and this is the point where everything unravelled. I could see my next target but the steps to reach it involved some heavy on the fly research and coming up with some things not taught in the PDF. After another 8 or so gruelling hours, I managed to get the 7th flag. I had hoped I could snatch 3 more flags before my time ran out, but it felt like I hit the end of the road. I could not see a way forward from this flag on. I spent the next 10 hours looking for alternate routes and trying to come up with new strategies to no avail. After sleeping for about 4 hours I went back at it and found a very hidden breadcrumb file to the next target, but once again, what was straight forward in the labs required many more hops in the exam. I managed to land on the next host with about 40 minutes left in my exam and didn’t find a flag on it. At this point I was absolutely crushed and effectively gave up. 

After about 10 minutes of wallowing in self pity, I remembered I had another hour courtesy of OffSec for their delay and decided to try some more. I kept trying to find the next target, but once again it felt like I hit a wall. After staring at bloodhound for a long time, I had some ideas. I checked the time and still had a bit over the courtesy hour to go on so I started testing those ideas, only to have my exam terminated. OffSec did not grant me the extra hour. 

I don’t think that hour would’ve made any difference, I was too tired and slow to find 3 more flags in that hour, but it felt in poor taste anyway. 

I want to say I was mad or salty, but I was too tired to feel anything. I just stared into space for a while and had some food. It was one of the most dreadful exams I have ever been in. 

**Post Exam**

After a few days spent resting, I went again over the exam notes. I spotted some details I’ve missed, including a flag on the final host I was on, but still nothing to go on. Since I ran into multiple things not covered by the training material in the exam, I threw all assumptions out the window and started doing my own research. 

I started by reading the Kerberos: The Definitive Guide book. This offered me a more complete picture on how kerberos tickets worked and some nice background trivia. Next, I bought and fully completed the Cybernetics lab from HackTheBox, one of their 2 hardest labs. I probably won’t review it since it shares the same pitfalls as Offshore, but overall it felt a tinge easier than the OSEP exam. I fully completed it in about a month after meeting many other OSEP strugglers along the path. I built my own AD lab on a spare old desktop I had lying around to test new payloads and see how things worked from the other side. I redid all the OSEP challenge labs. Essentially, I have spent the month after the exam fully engrossed in everything that involved Active Directory, Antivirus evasion and lateral movement. I couldn’t do anything else because the exam was the only thing on my mind. 

After about 5 weeks from my first attempt, I scheduled my second attempt. 

**The second attempt**

The few days before the second attempt I was so stressed I could barely eat and sleep. I genuinely felt like I aged years in those few days. I didn’t have a plan to cope with another failure so I just hoped it wouldn’t come to that.

I went into my exam more ghost than man. Thankfully no more technical difficulties, so I was able to start on time. Things went more smoothly this time, mainly because I started treating the exam like a CTF and not a proper exam designed to test my knowledge. I kept looking for weird angles, common CTF attacks and other CTF traps and it kept working. I had 9 flags after about 14 hours in and I could see secret.txt. I spent a few hours poking at it and went to sleep, feeling more confident. 

I woke up after about 6 hours and started working on secret.txt. It was fairly obvious what I had to do, but as usual, the process was needlessly padded with many more steps than would make sense. After about 4 hours I had secret.txt, which was also flag 10.  ̶I̶ ̶l̶o̶v̶e̶ ̶i̶t̶ ̶w̶h̶e̶n̶ ̶O̶f̶f̶s̶e̶c̶ ̶t̶r̶o̶l̶l̶s̶ ̶m̶e̶ ̶i̶n̶ ̶a̶n̶ ̶e̶x̶a̶m̶.̶ ̶I̶t̶ ̶j̶u̶s̶t̶ ̶m̶a̶k̶e̶s̶ ̶m̶y̶ ̶d̶a̶y̶.̶  After a short celebration, I started looking for the other flags, once again treating it like a CTF and not a realistic network. I found the other route and started making progress on it too. 8 hours later I had 5 more flags and I was too tired to go on. I started working on the report while still in the exam so I could double check any missing screenshots or flags. By the time the exam finished, I had most of my report done. After a short nap, I finished out the report and sent it. 

15 flags and secret.txt. 

I would like to say I felt happy, or proud, but I didn’t. It was a CTF exam that tested things that weren’t taught in the course and I felt no satisfaction from passing it. I received my pass email about 30 hours after submission and I was finally able to breathe a sigh of relief. At least it was over.

Unlike with the OSCP, I didn’t feel like I could take on the world now. I just felt hollow. I looked at myself in the mirror and noticed that my health had degraded noticeably after 5 months of OSEP + a demanding day job. I learned a lot, but I learned most of it on my own after my first failed attempt. 

**Conclusion**

Looking back at the experience a month later, I have a lot of mixed feelings. I genuinely think that what is in the course and videos is very good material. However, the lab performance was really lacklustre and the exam was a cruel joke. As much as I would like to praise it and sit atop my throne of smugness, I will say that this just continues the long string of disappointments I’ve had with OffSec. I cannot, in good faith, recommend the course to anyone in its current shape. If your employer is willing to pay for it, then the material in it is fantastic, the labs are hopefully fixed and maybe you can stomach the exam. Personally, I will be taking a break from OffSec certifications. I still intend to get my OSWE but I don’t feel inclined to rush it. Their other courses also sound interesting but unfortunately they are behind a very expensive paywall.  I'm just glad I'm done for now.

I tried harder OffSec. Now you can do better.


**Reading material**

Besides that I mentioned in the post exam section, here’s some useful links and books, in order of importance.

[https://zer1t0.gitlab.io/posts/attacking_ad/](https://zer1t0.gitlab.io/posts/attacking_ad/) - This rivals the PDF in its quality and thoroughness. I would highly, highly recommend going through it.

[https://github.com/BeichenDream/BadPotato](https://github.com/BeichenDream/BadPotato) - automated printspooler attack

[https://github.com/chvancooten/OSEP-Code-Snippets](https://github.com/chvancooten/OSEP-Code-Snippets) - the code snippets that everyone is using. Very useful in the lab.

[https://github.com/Octoberfest7/OSEP-Tools](https://github.com/Octoberfest7/OSEP-Tools) - I haven’t tested most of the tools in this repo as I had made my own by the time it got published, but there’s some really useful stuff in there.

[https://gtfobins.github.io/](https://gtfobins.github.io/) - self explanatory

[https://hausec.com/2021/03/04/creating-a-red-blue-team-home-lab/](https://hausec.com/2021/03/04/creating-a-red-blue-team-home-lab/) - guide on how to make a homelab. I wouldn’t say that the homelab was too useful but it was a fun experience.

[https://ippsec.rocks/](https://ippsec.rocks/) - While HTB doesn’t have many AD boxes, there are still some that are worth watching and ippsec explains things superbly as usual. 

The Hacker Playbook: Practical Guide to Penetration Testing - Not overly useful for the exam but a good read anyway.
