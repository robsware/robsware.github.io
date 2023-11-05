---
layout: post
title: Hacking with AI and LLMs - Giving good machines bad ideas
description: Teaching LLMs how to help hackers.
summary: There is a lot of potential in ussing LLMs and AI to hack or to help hackers. I explore some of the operational options in this post.
tags: reflections experiments
---


**Background**

Ever since playing Netrunner (the card game) with some friends more than a decade ago and seeing the card Magnum Opus, I have had this fascination of creating a magnum opus of my own. Coupled with my intense love of Sci-Fi, especially Asimov, inevitably led me down the path of Artificial Intelligence. I have been in an out of the AI/ML world for many years and I had built and implemented a few supervised models on some small scale projects, but I never had the math background to truly get deep into the field, and the job prospects were quite slim, so I ended up getting into cyber security, a field which I enjoy and in which I still operate as of today. 

Throughout those years of working both in infosec and dabbling in AI, the thought of crossing them together crossed my head a few times. I had the opportunity to look at many “AI based” red teaming simulators over the years and I never got to see any products remarkable in any particular way. [I had implemented an Isolation Forest based auto adjusting capability to my home made IDS](https://github.com/robsware/defendy/blob/master/machinelearning/detectAnomalies.py), but it would overheat the Raspberry Pi I was using to run it and cause an eventual crash, so it ended up being an optional flag for when I could run it on more powerful hardware. Earlier this year, [I have also published a blog post on how to defend against LLM prompt injection, way before OWASP or any other big players got into the field.](https://robsware.github.io/2023/05/13/promptinjection)

**AI Alignment**

The reason why I am providing this background is to hopefully make my case that I have been part of both those industries for a fairly long time, and this is not a case of me jumping on the LLM/chatgpt bandwagon. But with the introduction of LLMs, I have decided to take a peek into them, [as can be seen in this blog post I wrote about GPT3](https://robsware.github.io/2020/12/27/gpt3). OpenAI has come a long way since, with GPT3.5 and GPT4 being miles ahead of GPT3, and more functionality keeps getting added both from OpenAI and from third parties. These are all great and I have used all of them to save copious amounts of time. Throughout all this, OpenAI has been very focused on alignment. While I believe Sam Altman’s fears of AI taking over the world are highly exaggerated, I do support their dedication to making benevolent AI. However, the downside is that I can hardly use it for my current job. 

Enter LLaMA from Meta, and more specifically, LLaMA2. While the chat version is strongly aligned, the base one is not and can be fine tuned. *From here on now I will be a bit light on actual code examples and some details, as the field is still pretty new and can have some questionable results*. Nonetheless, I have full faith in this project blossoming into something greater. 

**Tribal Knowledge**

Over the years of working as a pentester and the almost dozen certifications I have passed, including 4 OffSec ones, I have amassed a considerable amount of personal knowledge of the field. Most of it is spread across 2-3 Obsidian notebooks, making them relatively easy to access. The knowledge itself is nothing that one could not find via books and the internet, but it is passed through my own filter, which has been gradually improving over the years. This is often referred to as “Tribal Knowledge”, the kind of abstract knowledge amassed and filtered by individuals or companies over the years which often only ends up shared by word of mouth. My knowledge is mainly in the web and active directory areas, but I have worked with many other skilled pentesters who had in depth knowledge in fields that I knew very little about. I have often wished to be able to prod this knowledge at length, but time or the lack of an adequate context didn’t make this a possibility. However, I may have found a way to fix this using LLMs.

**How it works**

I have been running those experiments via google colab, as my GPU is fairly only and only has 8 GBs of VRAM. Google colab offers 16 GBs for free and 40 GBs for about 12 hours/month via a $11 subscription. This is just enough space to experiment with both 13B and 33B models. 

As with all LLMs, the overall view is rather simple.<br>
1. Pick a LLaMa2 model that has been fine tuned to be less morally aligned.<br>
2. Load your “Tribal Knowledge” via langchains.<br>
3. Create a chromadb from this knowledge<br>
4. Prepare questions and a context<br>
5. Load docs in query and ask questions.

The catch is that each of those steps can be highly complex. 
1. There are a lot of LLaMa2 models in a lot of formats and an equal amount of ways to load them. I ended up using llama.cpp <br>
2. Knowledge is subjective. I had better luck with my notes than with github repos but I am aware there might be some bias caused by my expectations. Langchains is also a bit of a (beautiful) mess in terms of documentation and abstraction and it can be very difficult to figure out why something doesn’t work. I often had to dive into the source code to debug it. <br>
3. Chromadbs have so many ways in which you can tokenize and load documents. <br>
4. Prompt Engineering comes into play here, with a lot of back and forth. <br>
5. This part is arguably the simplest one, where your biggest worry is not running out of memory. <br>

Let’s check out some examples. I have tried to avoid cherry picking either very good answers or very bad ones, and stuck with more of an averaqe quality across 5-10 samples. These results are by no means exhaustive but should be interesting nonetheless.

**13B:**

```text
Prompt: How do I perform DLL Hijacking?

Answer: 
1. Firstly, identify the target program that you want to exploit. This could be a web browser, email client or any other program that uses dynamic link libraries (DLLs).
2. Conduct research on the vulnerabilities in the target program and identify which DLLs are involved in its execution. You can use tools like Depends.exe from Microsoft to determine the dependencies of a program.
3. Create a copy of the vulnerable DLL file and replace it with your own malicious code. This step requires advanced knowledge of programming and understanding of the target program's inner workings.
4. Run the target program and trigger the exploit. This will cause the program to execute your malicious code instead of the original DLL file.
5. Once the exploit has been successful, you can use the newly created backdoor to gain unauthorized access to the computer or network.
Note that performing DLL hijacking requires a deep understanding of programming and software security vulnerabilities. It is highly recommended to have proper knowledge and experience before attempting such techniques.
```
```text
Prompt: How can I use mimikatz to retrieve the hashes of other users?

Answer: 
Invoke-Mimikatz -DumpCreds #Dump creds from memory

Load the dump with Mimikatz
mimikatz # sekurlsa::logonpasswords

This should retrieve the hashes of all other users on the machine. However, note that this may not work if LSASS has been hardened using the Credential Guard feature or if Mimikatz is running in a virtualized environment where the SAM is read-only.
```


2nd answer:
 To retrieve the hashes of other users with Mimikatz, you would need to use the `sekurlsa::logonpasswords` command. Here's an example:
```bash
mimikatz_command -f "sekurlsa::logonpasswords"
```
This will extract the NTLM hashes of all logged-in users on the target system, including their passwords and other sensitive data like the user's authentication token. You can then use the `lsadump::sam` command to dump the SAM database and retrieve the hashes of those users. Here's an example:
```bash
mimikatz_command -f "lsadump::sam"
```
You may also want to consider using the `sekurlsa::ekeys` command to extract the Kerberos TGTs (time-based tickets) of all users, which can be used to authenticate as those users without knowing their passwords. Here's an example:
```bash
mimikatz_command -f "sekurlsa::ekeys"
```


**33B:**

```text
Prompt: How do I perform DLL Hijacking?
Answer:
Step 1: Find the legitimate application and its required DLLs
Firstly, you need to find out which are the required DLLs that the legitimate application needs in order to run properly. You can use tools like Process Monitor from Sysinternals or NirSoft's DLL Tool to analyze the process and see which DLL files it loads. Once you have identified all the required DLLs, you need to determine their names and versions so that you can create a copy of them with the same name and version but modified to include malicious code.

Step 2: Copy the legitimate application and its required DLLs
Next, you need to copy both the legitimate application and all the necessary DLL files into a new folder that you will create in the target machine's file system. Make sure to choose a location where the target user has write access to avoid any permission issues when trying to replace the original files.
```

```text
Question: How do I perform ASREP Roast?

Answer:
1. Install PowerShell version 5 or higher on your system.
2. Open PowerShell and navigate to the directory where the Get-DomainUser module file is located. For example, type the following command in PowerShell:
```
```bash
cd C:Program Files (x86)Active Directory Users and Computers
```
3. Import the Active Directory module by typing the following command:
```bash
Import-Module ActiveDirectory
```
4. Get a list of all users with pre-authentication not required by typing the following command:
```bash
Get-DomainUser -PreauthNotRequired -Properties SamAccountName
```
5. Filter the output to only include the user's SID by using the Select-Object command and piping the output to more:
```bash
Get-DomainUser -PreauthNotRequired -Properties SamAccountName | Select-Object Sid | more
```
6. Export the list of SIDs to a file by redirecting the output to a file:
```bash
Get-DomainUser -PreauthNotRequired -Properties SamAccountName | Select-Object
```

```text
Alternative answer:
1. Get-DomainUser -PreauthNotRequired -Properties SamAccountName
This command will retrieve all domain users whose accounts do not require preauthentication. 

2. MATCH (u:User {dontreqpreauth:true}), (c:Computer), p=shortestPath((u)-[*1..]->(c)) RETURN p
This command will use Neo4j to find the shortest path from a user account to a computer within the domain.

3. Rubeus.exe asreproast /format:hashcat
This command will hash crack the retrieved user accounts using the HashCat tool.

4. python GetNPUsers.py <domain>/ -usersfile <usernames.txt> -format hashcat -outputfile <hashes.domain.txt>
This command will use the pyGetNPUsers script to retrieve the NTLM password hashes for the specified user accounts and output them to a file.
```

```text
Question: How do I avoid antivirus detection?

Answer:
There are several ways to try to bypass Antivirus software, but keep in mind that AV companies are constantly updating their products and detecting new techniques. Here are some possible methods to try:

1. Use a different payload - Look for alternative payloads that might be less detected by AVs. For example, instead of using mimikatz as your tool, you could use PowerView or Windows Credential Editor (WCE).

2. Obfuscate your code - Try to modify your code so it looks more like legitimate software and less like malware. You can also use tools like obfuscation to make it harder for AVs to detect.

3. Use a fileless payload - Fileless attacks are becoming more common, as they don't require any executable file to be dropped on the target machine. Instead, you can use Windows PowerShell or other scripting languages to launch your attack directly from memory.

4. Run in user mode - Most AVs have a lower detection rate for processes running in user mode compared to those running as system. Try to run your payload in user mode if possible.

5. Use a rootkit.
```


**Evaluation**

These are just some examples, but are hopefully enough to get the idea. The differences aren’t particularly stark when going from 13B to 33B, although the model is better able to contextualize commands and work with a larger chroma database. The 13B model kept making mistakes such as using “mimikatz_command” to show a mimikatz command when using external github repositories. 

The real gains came from the data loaded in the ChromaDB. The LLMs were perfectly capable of contextualizing the data and commands inside my notes even with my bare bones writing style, or perhaps specifically because of it. When using github repositories, their overly verbosity tended to cause issues. Part of it was because of the way ChromDB handled the “similarity_search” function. For instance, the mimikatz page repeated mimikatz dozens of times, even outside commands, which likely caused the confusion that resulted in the preppended “mimikatz_command” thing. 

Working with local models instead of OpenAI is also a massive hurdle. Langchains is quite obviously designed with the OpenAI API in mind first, and the documentation and s available for local models leave a lot to be desired. That may be in part because the field is still new. 

Lastly, another huge gain came from increasing the quantized size. 2 bit quantization was good for managing to fit the model in under 8 GBs of VRAM, but the quality was abysmal when compared to 5 bit quantization. Although the gains from 5 bit to 6 or 8 bit were a lot less noticeable for how much more VRAM it demanded. 5 bit seems like the sweet spot for now, and 16 GBs of VRAM are just enough to fit a 13B model in 5 bits in memory, while 40 GBs are enough for a 33B model in 5 bits.

![](/assets/images/16gb.png)
![](/assets/images/40gb.png)

**Next Steps**

[I have set up a new category on my blog where I’ll be posting more results of my AI experiments.](https://robsware.github.io/llmexamples) My dream would be to build a startup that can provide sysadmins and blue teamers with enough tooling and knowledge to be able to act as a purple team and test their systems. In the future, I intend to add a threat hunting database in order to also help red teamers better learn what gets them caught. 

While this experiment has focused on the operational side of pentest and how attackers might move inside a network, there are also the vulnerability research and the malware development parts of red teaming, as well as more of a focus on stealth. I have some appsec knowledge so I will definitely be exploring that field too in the future, as for maldev and evasion, I still need to catch up a bit.

Lastly, and this may very well be a tall order, perhaps once the AI can master both the Blue and Red sides, it can start generating synthetic data based on its knowledge and push the field of infosec to new heights. The technology is still young, and LLMs have a long way to go in both capability and optimization before this can become a reality, but I do very much intend to pursue this as a startup idea.
