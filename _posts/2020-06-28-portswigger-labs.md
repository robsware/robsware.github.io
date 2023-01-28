---
layout: post
title: The Port Swigger Labs
description: Port Swigger Labs
summary: Reaching the hall of fame in just over a month
tags: CTF burp
---


<h1>The Post Swigger Academy Labs experience</h1>
<h3>Often called the Burp Labs</h3>
<p>Posted on June 28, 2020 <br><br>
<a href="https://github.com/robsware/Burp-Lab-Solutions">Walkthrough helpers for almost all labs can be found here</a>.
In an attempt to further boost and hone my pentesting skills, I decided to spend some time in the Port Swigger Labs. What started as a simple desire to improve on my weaker points turned into a 6 week long journey throughout which I got exposed to some really interesting vectors, learned a lot and finished ranked 7th worldwide in the <a href="https://portswigger.net/web-security/hall-of-fame">Hall of Fame </a> (at the time of writing).
</p>
<br>
<span class="center"><img src="/assets/images/halloffame.png" alt="Hall of Fame" /></span><br><br>
<p>Initially, I started writing down a few thoughts after every week, but I think they clutter the Rants section a bit too much, so I'll just quick link them here:
<h4><a href="/assets/old_files/burpweek1.html">Burp labs week 1: Starting the labs</a></h4>
<h4><a href="/assets/old_files/burpweek2.html">Burp labs week 2: Continuining the labs</a></h4>
<h4><a href="/assets/old_files/burpweek3.html">Burp labs week 3: Building momentum and my methodology</a></h4>
<h4><a href="/assets/old_files/burpweek4.html">Burp labs week 4: Errors in my methodology</a></h4>
<h4><a href="/assets/old_files/burpweek5.html">Burp labs week 5: Keeping busy and a screeching halt</a></h4>
<h4><a href="/assets/old_files/burpweek6.html">Burp labs week 6: Done!</a></h4>
<br>
</p>
<p>
The labs have been one of the best, if not the best, kind of infosec related material that I have ever experienced. It keeps the same gamified experience that HackTheBox offers, but the topics are much more constrained in scope. The vast majority of the labs focus on one specific vector and how to achieve it. Generally they are pretty flexible with the payload used, but sometimes the "Lab Complete" prompt doesn't show up even if you achieved the desired exploit. Feel free to refer to the solution if this happens. 
<br><br>
A lab instance expires after 15 minutes of inactivity or 1 hour since its creation has passed, whichever occurs first. For Apprentice and a good part of the Practioner labs, you probably won't hit the 1 hour mark, but once you start dealing with Expert labs, you'll get very familiar with the "This session has expired" message. Which can be a bit annoying and can straight up prevent you from completing a lab. Such is the case for the "2FA bypass using a brute-force attack" lab. A writeup with the correct answer is available in my <a href="https://github.com/robsware/Burp-Lab-Solutions/blob/master/2FA%20bypass%20using%20a%20brute-force%20attack.txt">github repo.</a>
</p>
<h3>The writeups</h3>
<p>
Once I started encountering some of the more difficult labs, I figured I'd upload the payloads used in a github repo. I know there is already a video series on most of the labs, but I tend to find video as a less efficient way of doing things. If anything, my writeups will at least complement the video solutions. To the best of my knowledge, none of the labs require Burp Pro, but it does help substantially in some cases - such as the CSRF labs. <br>
The solutions provided by Port Swigger are generally good to very good with some exceptions. I think there are 2 lab solutions that are missing some steps, one of them being the one mentioned above. My Github repo should contain the exact payloads used for almost all the labs, bar some trivial ones that I did in my first week. I hope it helps people, especially those without Burp Pro. <br>
Besides providing a hand to other students, I used the writeups as a way to go over the attack vector again. In a way, <span style="color: #FC9C04">I decided to write in order to learn.</span> This helped solidify the material in my mind, which proved to be useful in many of my real engagements. 
</p>
<h3>Recommended for all skill levels</h3>
<p>
To reiterate, the labs are fantastic. The quality is fantastic. If you have any interest in pen testing and understanding how web vulnerabilities work, go do them right now. If you already are a pen tester, even an experienced one, I'd still recommend going through at least some of the labs. Have a go at the expert ones and see how that goes. While I haven't shied away from checking the solution if stuck on a lab, I do intend to return every now and then and try to do some of the labs without checking the solution, just as a way to test my knowledge and gauge my progress.<br><br>
For now, it's time to put my new skills to the test.
</p>
<h3>Update July 2nd 2020</h3>
<p>
A new section got added to the labs, deserialization. I managed to complete some of them before the solutions got uploaded, but they were really tough. I was able to snag 7th place in the Hall of Fame!
</p>



