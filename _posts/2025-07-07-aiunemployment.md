---
layout: post
title: The Great AI Reconfiguration - A look at unemployment over the next 10 years
description: A year by year overview at AI and employment
tags: ai unemployment economics future predictions
---

<style>
/* Keep normal content width and position sidebar adjacent */
.unemployment-sidebar {
    position: fixed;
    top: 2rem;
    left: calc(50% + 24.5rem);
    width: 350px;
    height: fit-content;
    background: var(--code-bg-color);
    border-radius: 12px;
    padding: 1.5rem;
    border: 1px solid var(--very-light-text-color);
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    z-index: 100;
}

html[data-theme="dark"] .unemployment-sidebar {
    background: rgba(36, 38, 42, 0.8);
    border-color: rgba(255, 255, 255, 0.1);
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.3);
}

.sidebar-content {
    display: flex;
    flex-direction: column;
    gap: 1.5rem;
}

.current-year-display {
    text-align: center;
    border-bottom: 2px solid var(--light-text-color);
    padding-bottom: 1rem;
}

.year-badge {
    font-size: 2.5rem;
    font-weight: bold;
    color: var(--link-color);
    margin-bottom: 0.5rem;
}

.year-description {
    font-size: 1rem;
    color: var(--main-text-color);
    font-weight: 500;
}

.unemployment-stats {
    text-align: center;
}

.main-stat {
    margin-bottom: 1rem;
}

.stat-label {
    font-size: 0.9rem;
    color: var(--medium-text-color);
    margin-bottom: 0.3rem;
}

.stat-value {
    font-size: 3rem;
    font-weight: bold;
    color: var(--link-color);
    line-height: 1;
}

.change-indicator {
    background: rgba(255, 255, 255, 0.1);
    padding: 0.8rem;
    border-radius: 8px;
    border-left: 4px solid var(--light-text-color);
}

html[data-theme="dark"] .change-indicator {
    background: rgba(255, 255, 255, 0.05);
}

.change-label {
    font-size: 0.8rem;
    color: var(--medium-text-color);
    margin-bottom: 0.3rem;
}

.change-value {
    font-size: 1.2rem;
    font-weight: bold;
    color: var(--main-text-color);
}

.progress-section {
    margin: 1rem 0;
}

.progress-label {
    font-size: 0.9rem;
    color: var(--medium-text-color);
    margin-bottom: 0.5rem;
}

.timeline-progress {
    position: relative;
}

.progress-track {
    height: 6px;
    background: var(--very-light-text-color);
    border-radius: 3px;
    position: relative;
    margin: 1rem 0;
}

.progress-indicator {
    position: absolute;
    top: -4px;
    width: 14px;
    height: 14px;
    background: var(--link-color);
    border-radius: 50%;
    transition: left 0.6s ease;
    box-shadow: 0 0 8px rgba(var(--link-color), 0.5);
}

.year-markers {
    display: flex;
    justify-content: space-between;
    font-size: 0.8rem;
    color: var(--medium-text-color);
}

.additional-info {
    border-top: 1px solid var(--very-light-text-color);
    padding-top: 1rem;
}

.info-item {
    margin-bottom: 0.8rem;
}

.info-label {
    font-size: 0.8rem;
    color: var(--medium-text-color);
    margin-bottom: 0.3rem;
}

.info-value {
    font-size: 0.9rem;
    color: var(--main-text-color);
    font-weight: 500;
}

@media (max-width: 1350px) {
    .unemployment-sidebar {
        position: static;
        width: auto;
        margin: 2rem 0;
        left: auto;
        top: auto;
    }
    
    .year-badge {
        font-size: 2rem;
    }
    
    .stat-value {
        font-size: 2.5rem;
    }
}

.highlight-section {
    background: var(--code-bg-color);
    padding: 1.5rem;
    border-radius: 8px;
    margin: 2rem 0;
    border-left: 4px solid var(--highlight-text-color);
}

.ai-quote {
    font-style: italic;
    font-size: 1.1rem;
    color: var(--medium-text-color);
    text-align: center;
    margin: 2rem 0;
    padding: 1rem;
    background: rgba(108, 180, 160, 0.1);
    border-radius: 8px;
}

html[data-theme="dark"] .ai-quote {
    color: #FFA500; /* Orange color for dark mode */
}

html[data-theme="dark"] .stat-label,
html[data-theme="dark"] .change-label,
html[data-theme="dark"] .progress-label,
html[data-theme="dark"] .year-markers,
html[data-theme="dark"] .info-label {
    color: #FFA500;
}

.section-divider {
    text-align: center;
    margin: 3rem 0;
    position: relative;
}

.section-divider::before {
    content: '';
    position: absolute;
    top: 50%;
    left: 0;
    right: 0;
    height: 1px;
    background: var(--light-text-color);
    z-index: 1;
}

.section-divider span {
    background: var(--code-bg-color);
    padding: 0 1rem;
    color: var(--main-text-color);
    font-weight: bold;
    position: relative;
    z-index: 2;
}

html[data-theme="dark"] .section-divider span {
    background: rgb(19, 20, 24);
}

/* Enhanced scroll-based transitions */
.sidebar-content {
    transition: opacity 0.4s ease;
}

/* Smooth section transitions */
[id^="section-"] {
    scroll-margin-top: 2rem;
    min-height: 100px;
    padding-top: 1rem;
}

/* Animated transitions for sidebar updates */
.year-badge, .stat-value, .change-value, .info-value {
    transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
}

.year-badge {
    transform-origin: center;
    will-change: transform;
}

.stat-value {
    will-change: color;
}

.change-value {
    will-change: color;
}

.progress-indicator {
    transition: left 0.6s cubic-bezier(0.4, 0, 0.2, 1);
    will-change: left;
}

.change-indicator {
    transition: border-left-color 0.3s ease;
    will-change: border-left-color;
}

/* Subtle animation for content sections */
h2, h3 {
    transition: color 0.3s ease;
}

/* Remove the target color change that was causing 2031 to be different */
/* h2:target, h3:target {
    color: var(--link-color);
} */

/* Add subtle hover effect to sidebar */
.unemployment-sidebar:hover {
    transform: translateY(-2px);
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
}

html[data-theme="dark"] .unemployment-sidebar:hover {
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.4);
}

/* Smooth transitions for all sidebar elements */
.unemployment-sidebar {
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

/* Active year indicator */
.year-badge.updating {
    animation: pulse 0.3s ease;
}

@keyframes pulse {
    0% { transform: scale(1); }
    50% { transform: scale(1.05); }
    100% { transform: scale(1); }
}

/* Mobile bottom timeline */
.mobile-timeline {
    position: fixed;
    bottom: 0;
    left: 0;
    right: 0;
    background: var(--code-bg-color);
    border-top: 1px solid var(--very-light-text-color);
    padding: 0.5rem 0;
    z-index: 200;
    display: none; /* Hidden by default */
    overflow-x: auto;
    -webkit-overflow-scrolling: touch;
}

.timeline-scroller {
    display: flex;
    justify-content: flex-start;
    gap: 1rem;
    padding: 0 1rem;
    min-width: max-content;
}

.mobile-timeline a {
    color: var(--medium-text-color);
    text-decoration: none;
    font-weight: bold;
    font-size: 1rem;
    padding: 0.5rem;
    border-radius: 6px;
    transition: all 0.3s ease;
}

.mobile-timeline a.active {
    background-color: var(--link-color);
    color: white;
}

html[data-theme="dark"] .mobile-timeline {
    background: rgba(19, 20, 24, 0.95);
    backdrop-filter: blur(5px);
    border-top-color: rgba(255, 255, 255, 0.1);
}

@media (max-width: 768px) {
    .mobile-timeline {
        display: block;
    }
    .unemployment-sidebar {
        display: none;
    }
    body {
        padding-bottom: 60px; /* To avoid content being hidden by the fixed bar */
    }
}

.conclusion-padding {
    height: 60vh;
    display: flex;
    flex-direction: column;
    justify-content: center;
    text-align: center;
    color: var(--main-text-color);
}
</style>

<div class="mobile-timeline">
    <div class="timeline-scroller">
        <a href="#section-2025" data-year="2025" class="active">'25</a>
        <a href="#section-2026" data-year="2026">'26</a>
        <a href="#section-2027" data-year="2027">'27</a>
        <a href="#section-2028" data-year="2028">'28</a>
        <a href="#section-2029" data-year="2029">'29</a>
        <a href="#section-2030" data-year="2030">'30</a>
        <a href="#section-2031" data-year="2031">'31</a>
        <a href="#section-2032" data-year="2032">'32</a>
        <a href="#section-2033" data-year="2033">'33</a>
        <a href="#section-2034" data-year="2034">'34</a>
        <a href="#section-2035" data-year="2035">'35</a>
    </div>
</div>

<div class="unemployment-sidebar">
    <div class="sidebar-content">
        <div class="current-year-display">
            <div class="year-badge">2025</div>
            <div class="year-description">The Beginning of Change</div>
        </div>
        
        <div class="unemployment-stats">
            <div class="main-stat">
                <div class="stat-label">Unemployment Rate</div>
                <div class="stat-value">4.5%</div>
            </div>
            
            <div class="change-indicator">
                <div class="change-label">Change from 2024</div>
                <div class="change-value">+0.5%</div>
            </div>
        </div>
        
        <div class="progress-section">
            <div class="progress-label">Timeline Progress</div>
            <div class="timeline-progress">
                <div class="progress-track">
                    <div class="progress-indicator" style="left: 0%"></div>
                </div>
                <div class="year-markers">
                    <span class="marker start">2025</span>
                    <span class="marker end">2035</span>
                </div>
            </div>
        </div>
        
        <div class="additional-info">
            <div class="info-item">
                <div class="info-label">Key Development</div>
                <div class="info-value">AI agents become mainstream</div>
            </div>
        </div>
    </div>
</div>

<div class="ai-quote">
    "The future is already here – it's just not evenly distributed." - William Gibson
</div>

<p>History does not announce its turning points with a thunderclap. They arrive quietly, as a series of seemingly disconnected events: a niche academic paper, a corporate research project, a subtle shift in the job market for recent graduates. Only in retrospect does the pattern become clear.</p><p>We are living through the quiet beginning of such a turn right now. The tectonic plates of the global economy are shifting beneath our feet, driven by the unprecedented force of automated cognition. This document is an attempt to map the tremors before the earthquake, to trace the hairline fractures that will define the coming decade. The future described here is not inevitable, but it is the default path we are on.</p>

<div class="section-divider">
    <span>The Decade of Disruption</span>
</div>

<h2 id="section-2025">2025: The White-Collar Canary</h2>

<p>You are here. The tech world is just now experimenting with agents that go beyond RAG. There is still a lot of debate over what AGI means, how long it will take to reach it and if it’s even reachable. There are layoffs, particularly in tech, primarily caused by overhiring during covid, but also due to economic uncertainty and LLM usage. Right now most affected are people just out of college with computer science graduates sitting at 6.1% unemployment<sup><a href="#ref1">[1]</a></sup>, among the highest. But this headline number masks a more pervasive trend: wage stagnation. For every graduate who can't find a job, there are several more who accept positions with flat or declining real wages, as their roles are increasingly defined by supervising or prompting AI assistants rather than direct creation.</p>

<p>Releases from big labs and companies are starting to take longer and the improvements are less spectacular. Even within the field of programming LLMs are exceedingly good at certain verifiable tasks (backend programming) and do quite poorly on other tasks (front end work). MCP servers are popping up left and right and all the big models have adopted the protocol, which has caused certain tasks to become exceedingly fast. LaurieWired created a GhidraMCP implementation which can tackle malware reverse engineering up to an intermediate level with great ease<sup><a href="#ref2">[2]</a></sup>.</p>

<p>YCombinator had its AI Startup School event, which highlights that we are entering a ballistic trajectory for AI related startups. Subtle foreshadowing. There is a lot of hype around AI and LLMs, and reasoning has been an impressive breakthrough in achieving higher performance and reducing hallucinations. The Apple paper on AI dampened the hype wave a little bit, but everyone moved on. Dario Amodei posted about how about 50% of entry level white collar jobs are at risk in the next 5 years<sup><a href="#ref3">[3]</a></sup>, and a few weeks later Claude went bankrupt trying to run a vending machine<sup><a href="#ref4">[4]</a></sup>. We are in the experimentation phase and a lot of companies are holding their breath as they try to strategize about the future. ChatGPT 5 will come out this year, and it will likely wrap up the release of big models for 2025. AI datacenters have started being built quite aggressively and we'll see some crude robots come out, mainly as a novelty.</p>


<div class="highlight-section">
    <h3>Key Development: The White-Collar Canary</h3>
    <p>The true signal isn't mass adoption, but the acute pain in a specific demographic: recent computer science graduates. Like the canary in the coal mine, their struggle to find entry-level work is the first tangible warning that the foundational structure of the knowledge economy is becoming unstable.</p>
</div>

<h2 id="section-2026">2026: The Plateau and the Foundation</h2>

<p>This is the year of incremental increases. There may be some new big models coming out, but I mostly expect a lot of .5 and .7 versions of things. Iterative improvements on the existing models. The plateau for multimodal models and the text based thinking is starting to be felt. LLMs have a certain kind of intelligence that is not applicable 1:1 to human processes. Agents will keep evolving, but will struggle with an internet created for human eyes. Attempting to book and plan a full trip using LLMs will result in similar results to what we’ve seen in 2025; mostly work, but wrong often enough to not be worth it<sup><a href="#ref5">[5]</a></sup>.</p>

<p>We’ll start seeing more noise about wearables from Meta, OpenAI and Google. They will try to package it in a way that is useful and promise some AR features, but nothing will come out in 2026.</p>

<p>Computer usage, which represents the great roadblock for the mass automation of white collar jobs, will become more of a talking point, but everyone is still focusing on raw intelligence and reasoning for models. One crucial development I expect in 2026 is further improvements in reasoning and building world models, which will be particularly useful for image and video generations, which will get cheaper to do as datacenters expand, though this expansion is already causing strain on local power grids and sparking the first serious conversations about the staggering energy cost of running millions of agentic processes simultaneously. There will be posts and articles from big companies exploring how they are using LLMs and agents in certain segments of their business, but adoption will be relatively slow due to the jagged knowledge of LLMs. More research of intelligence sweet spots and context prompting will come out and unlock new efficiencies.</p>

<p>Overall, it will not be a terribly exciting year for most people. Datacenters are still being built, robots are still a novelty but there’s more of them.</p>

<div class="highlight-section">
    <h3>Key Development: The Plateau and the Foundation</h3>
    <p>Progress on the surface feels stagnant as models offer only iterative improvements. But beneath the plateau, a massive foundation is being laid. The frantic, global expansion of datacenter capacity and the first serious research into the looming energy constraints set the stage for the decade's central conflict: the battle between computational demand and physical resources.</p>
</div>

<h2 id="section-2027">2027: The Agentic Assembly Line</h2>

<p>2 years from now, agents will start hitting their stride. Within certain restrictions, agents will be able to operate at super human capability. Back end and infrastructure code will have dozens of options for using agents to manage and develop things. A lot of foundational companies, such as Stripe, Vercel and some cloud providers have or will have LLM friendly ways of interacting with them. A lot of builders will be able to sit down, prompt an agentic framework to  “build a prototype for an app that uses LLM vision and search to identify local artists from a work of art”, or a similarly complex idea, leave for a few hours, and come back to a fully build app, including payment processing, mailing list, and authentication, ready to be tested and submitted to the mobile stores. Planning a full trip or doing your taxes will still be error prone, but agents will know when to fail gracefully and call a human in the loop.</p>

<p>The level of intelligence isn’t quite at the level where mass automation can happen, and web navigation is improving in part thanks to the massive amount of compute that is coming online around 2027. China’s total compute may reach quite close to the US’s around this time as they have invested heavily into infrastructure and can support gigantic data centers. Unemployment actually goes down as some companies give up on the promised AI future.</p>

<p>The improvements in reasoning and image generation allowed for mock websites and applications to be generated that resemble real world ones in complexity. This technique will be used for synthetic data training, which will also happen quite quickly given the above mentioned compute power. However, a worrying new paper from a rival lab begins to circulate, codifying a concern long whispered about in the field: the 'Ouroboros Problem,' or model collapse. The fear is that training new models on the torrent of synthetic, AI-generated data is a form of intellectual inbreeding. While it works for now, it may be creating a brittle, less innovative, and ultimately stagnant foundation for the intelligence of tomorrow. The computer usage rankings will start improving a lot. 2027 results will still be a bit shoddy, but the trajectory is clearly upwards. Reward modelling can be done on any kind of data<sup><a href="#ref6">[6]</a></sup>, so once the original kinks are ironed out, things will pick up speed.</p>

<p>A new wave of frontier models will come out this year, setting the baseline for computer usage. Wearables will be more prominent although actual releases might not happen this year. We will see a lot of demos and hype creation from large orgs and startups alike.</p>

<div class="highlight-section">
    <h3>Key Development: The Agentic Assembly Line</h3>
    <p>For the first time, agents become reliably effective within specific, sandboxed digital environments. Complex, multi-step tasks like building a prototype application or managing backend infrastructure can be automated, creating the first "agentic assembly lines" for digital products and kicking off the Cambrian explosion of AI-native startups.</p>
</div>

<h2 id="section-2028">2028: The Collapse of the Career Ladder</h2>

<p>The true impact isn't replacement, but reconfiguration. A single human junior, armed with the new generation of computer-literate agents, can now manage the output of five 'AI juniors.' They are no longer a creator, but a foreman. This creates a massive productivity spike for companies, but a catastrophic career bottleneck for individuals. The career ladder to a senior position evaporates, and the market becomes flooded with people who can perform these new 'AI wrangler' roles. The result is plummeting wages for entry-level white-collar work and a hiring freeze on traditional junior positions, causing the unemployment rate to climb to 6%. For the first time since 2020, when GPT3 was released to the public, after 8 years of the tech world going from hype to doom and gloom, and then back to hype, every day people are starting to feel the impact.</p>

<p>The agents that developers have been building over the past years are the perfect scaffolding for this new generation of models. New agents start appearing, and new startups are born that attempt to automate the holy grail of knowledge, research and development.</p>

<p>The results are mixed. As with GPT 3.5, a lot of people overestimate the capability of new models even with decent computer usage capabilities. But the knowledge of previous years and experiments compounds, and by the end of the year we start seeing LLM agents capable enough to act as internet personas, capable of relatively complex interaction. This timeline also matches with Dwarkesh’s feelings<sup><a href="#ref7">[7]</a></sup>, and is even more optimistic.</p>

<p>This year we’re also finally seeing the release of XR devices. Meta and Google glasses, and OpenAI’s magic gizmo alongside dozens more products from startups and smaller companies all hit the market or are close to. Synthetic data was a crutch that worked so far, but for LLMs to move beyond the realm of the digital, real, spatial data is needed and those gadgets will collect it.</p>

<div class="highlight-section">
    <h3>Key Development: The Collapse of the Career Ladder</h3>
    <p>The crisis arrives not as mass replacement, but as mass reconfiguration. The role of a "junior" employee is transformed into an "AI wrangler," collapsing the value of entry-level cognitive labor. This doesn't just eliminate jobs; it evaporates the traditional career ladder, leading to widespread wage stagnation and the first significant spike in structural unemployment.</p>
</div>

<h2 id="section-2029">2029: The Cambrian Explosion and the Energy Debt</h2>

<p>All the development, research, scaffolding, circuit analysis, computer usage and state of the art models culminate into creating packaged agents that are extremely easy to run and can do most entry level jobs and some intermediate level ones. The agents are able to act and receive visual feedback which can be processed back in a way that allows them to learn on the job. There is some friction because all new agents will effectively need to be on-boarded and have a human show them how to work and verify their results for a while, but the effects on the job market are starting to be felt.</p>

<p>The explosion of startups is unprecedented, with dozens of new companies being created on a daily basis. Partly because of the opportunities of AI, partly because of the laid off people needing an income, and partly because people will try to have an agent create and run an entire startup. Many end up in flames, but the ones that succeed only exacerbate the impact of automation as people figure out how to create agents fine tuned for any job they have intimate knowledge of with varying levels of success. Companies are still largely staffed by humans as a lot of jobs aren’t verifiable in a way that works with LLMs, but new about layoffs start becoming more frequent and the glut of new startups isn’t enough to absorb it.</p>

<p>The energy debt, accumulating since 2026, finally comes due. The constant, ravenous demand for electricity to power the agentic economy and process vast streams of new spatial data can no longer be ignored. It is now the primary bottleneck for growth. Countries and governments scramble to initiate massive, long-term power generation projects, but such undertakings are a decade-long solution to a crisis that is happening now. In 2029, the best way to increase performance is to increase the wafer size instead of trying to make transistors even smaller, so new datacenters are designed to take advantage of the upcoming power projects and of a truly titanic size. Other aspects, such as robots, receive marginal upgrades year by year. Much like with agents, there are improvements in the supply chain that will be critical later.</p>

<div class="highlight-section">
    <h3>Key Development: The Cambrian Explosion and the Energy Debt</h3>
    <p>Packaged, easy-to-use agents trigger an unprecedented explosion of one-person startups. However, the sheer volume of automated processes running 24/7 means the energy debt, accumulating for years, finally comes due. The cost of electricity becomes a primary bottleneck, creating a clear divide between compute-rich corporations and everyone else.</p>
</div>

<h2 id="section-2030">2030: The Digital Workforce and the Analog Eye</h2>

<p>Office worker agents are quite good by now. They can do over 50% of all entry level jobs and about 30% of intermediate level jobs. Better ways to package, deliver and integrate those agents are developed by large companies and startups alike. After experimenting for the past 2 years, forward looking companies start adopting a workforce geared towards automation. There is a mix of both wonder and discontentment among the general population as they see AI being able to do their job, but also do all the frustrating things in life such as dealing with government documentation and doing taxes. Mistakes are very rare at this level.</p>

<p>XR devices start experimenting with endless context windows that are able to always listen and retain knowledge from previous activities. Each of those devices will build an accurate and complex simulacrum of its owner and it will use that data whenever it is called upon. This may make some privacy advocates uncomfortable, but a lot of normal people will find it tremendously useful. XR starts becoming an industry again as AI project plateaus temporarily. People are able to rely on those devices to do things around the house, including housework and repairs. All this time, those devices also transmit data to their parent companies.</p>

<p>No significant improvements in robotics, but everyone who could assemble a robot by this point has caught the wind of a solution to the spatial data problem and they’re trying to be the first ones ready to take advantage of it.</p>

<div class="highlight-section">
    <h3>Key Development: The Digital Workforce and the Analog Eye</h3>
    <p>AI agents mature into a reliable "digital workforce," capable of handling over half of all entry-level office tasks with minimal errors. As this digital automation solidifies, the frontier of development shifts. The mass release of XR devices begins the great project of the 2030s: using an "analog eye" to collect the spatial, real-world data needed to train the next paradigm of AI.</p>
</div>

<h2 id="section-2031">2031: The Emergence of Creativity and the Spatial Blueprint</h2>

<p>Research papers about spatial data training, usage and generation start being published. It’s still an ongoing project, but Google level companies are showing off interesting demos of robots being capable helpers around the house. A lot of them are early prototypes, but a vision of actual sci-fi level robots is starting to take place.</p>

<p>Small datacenters are built wherever there’s space and power availability. The big ones are still some years away. The processing continues, the needs only going up. A new emergent behaviour from LLM, as they keep increasing in size and finesse, enters the scene: actual, genuine creativity. It feels less like a stochastic parrot and more like a true intelligence. Yet, the debate rages: is this genuine novelty, or is it an incredibly sophisticated remix, the final, beautiful bloom of an ecosystem feeding on itself before the 'Ouroboros Problem' leads to an inevitable decline? This phenomenon, of course, hits the job market hard. The number of entry level jobs done by AI goes up to 70%, and intermediate jobs to 40% with senior jobs being affected too.</p>

<p>This high level of unemployment is starting to seriously affect governments and politics, as they scramble and bicker for the most optimal solution. Different solutions are proposed and implemented according to the economic and cultural factors of each country/economic zone.</p>

<p>There is still ongoing research and publishing on how to make LLM and agents feel less like newborns every time you start a new conversation, and knowledge sets for specific tasks are developed as well as effective knowledge sharing between agents. With the increased level of knowledge and creativity, now entire mini departments can be made entirely of agents.</p>

<div class="highlight-section">
    <h3>Key Development: The Emergence of Creativity and the Spatial Blueprint</h3>
    <p>Fed by a torrent of new data and scaled to unprecedented size, models exhibit what can only be described as genuine creativity. Simultaneously, research labs begin publishing the first "spatial blueprints", usable models of real-world physics and interaction derived from XR data. This one-two punch devastates creative and intermediate-level jobs.</p>
</div>

<h2 id="section-2032">2032: The Great Implementation</h2>

<p>Companies and startups alike are quick to capitalize on this new level of intelligence and creativity. Fine tuned models and large models alike start being released and are ready to be plugged into existing flows. At this point, 80% of all office entry level jobs are done by LLMs and unemployment among recent graduates is close to 20%. More than half of intermediate jobs and a quarter of senior jobs are now done by machines too. A lot of people get involved in the construction, wiring and networking of new data centers and power plants, both of which are now significant industries. While data centers don’t take a lot of manpower to run, they are very labor intensive to build. This reduces the effect of unemployment to a degree. Many people decide to go into content creation, and are able to rely on LLMs to do all the boring parts. LLMs are used to both do and teach, and a lot of people finally find a time efficient way to explore their hobbies.</p>

<p>The mood about the future is uncertain, and people are divided into doomers and bloomers. Entertainment is really accessible now, and some people are content with that. Others worry that we will end up as biological machines that will be instructed by our AI overlords. The contract political back and forth gives the impression that solutions are being evaluated, at least. More robot showcases occur in which they seem remarkably capable, but production chains and testing takes a long time so no noteworthy releases occur.</p>

<p>Reinforcement learning is back on the table and used to train LLMs where not enough examples exist and where speed is essential. The average person can go for days without seeing content handcrafted by another human being.</p>

<div class="highlight-section">
    <h3>Key Development: The Great Implementation</h3>
    <p>After years of experimentation, large corporations begin "The Great Implementation," systematically integrating the mature digital workforce across their organizations. The goal is no longer marginal efficiency but a fundamental restructuring of their workforce towards a 50:50 human-AI split. The societal impact is no longer theoretical; it's a tidal wave.</p>
</div>

<h2 id="section-2033">2033: The Death of the Turing Test</h2>

<p>This is the point where AI personas are starting to be indistinguishable from real people on the internet. The complex weave of agentic flows leads to very convincing, creative and productive behaviour that is human enough for most cases. Support agents handle complaints at a mass scale. Real, genuine and long term friendships and relationships will exist between people and AIs.</p>

<p>This has a drastic effect on employment. Very few junior level jobs are available anymore and all degrees try to tie their coursework into AI. Intermediate and senior level jobs are similarly decimated. There are still plenty of jobs for people, but most companies now aim to have a 50:50 workforce divided between people and artificial intelligences. Unemployment among white collar workers is still artificially low due to a lot of people attempting to reskill or launching and joining startups, but the dream of a desk job is becoming harder to achieve.</p>

<p>Multiple papers and research labs brag that they have achieved consciousness<sup><a href="#ref8">[8]</a></sup> and unless specifically mentioned, it is pretty difficult to distinguish an agent from a human in a digital context. There is an increasing divide between those techno optimists and the pessimists, but this time the pessimists have much better arguments due to the rising unemployment and the large percentage of people who build datacenters, often under the instructions of AI. This accelerated development pace leads to some of those titanic datacenters being finished this year, with their required support network. The training and development of spatial reasoning continues, but it is still in the pre GPT2 era. Still, some robots are available and have found some usage in doing housework. They have become a status symbol due to their price and the rising unemployment rate.</p>

<div class="highlight-section">
    <h3>Key Development: The Death of the Turing Test</h3>
    <p>The combination of advanced reasoning, long-term memory, and sophisticated agentic frameworks makes AI personas indistinguishable from humans in any digital context. The concept of the Turing Test becomes obsolete. This breakthrough leads to claims of machine consciousness and the creation of the first true digital friendships and relationships, forever blurring the line between human and artificial interaction.</p>
</div>

<h2 id="section-2034">2034: The Ivory Tower and the Digital Proletariat</h2>

<p>White collar jobs are considered a luxury now and carry the kind of prestige not seen since the 60s. Many companies have overshot their goal of a 50:50 distribution and now employ close to 70% agents. Humans that have a lot of experience of building with AI, building agents and have a strong vision on how to increase capacity are still in demand. There is a truly astounding amount of startups and small businesses being started as 1 person with a fleet of agents can do the work of 20-30 people and many still have a strong desire to create things. Traditional office workers now reside in virtual ivory towers, overseeing hundreds or thousands of agents and are able to find any intimate detail about the organization in a matter of moments. At this point, humans need not apply.</p>

<p>Inequality increases as a result. Governments around the world throw around subsidies and tax model providers aggressively, which keeps things from escalating but people are tense and uncertain about the future. Entertainment is cheap and incredible now, and mixed with increased surveillance it maintains a state of relative peace. By this point, some people have reskilled into trades, while others look at the increased sophistications of robots and figure that the age of abundance is just around the corner. But hardware advances slow and we have stretched as far as our compute allows us to in our situation, so the dream of sci fi robots walking the streets is out of reach for now. It is in sight, but much how the 20% of self driving technology took 15 years to solve, robot technology still has ways to go.</p>

<div class="highlight-section">
    <h3>Key Development: The Ivory Tower and the Digital Proletariat</h3>
    <p>The economy bifurcates completely. The vast majority of cognitive work is performed by a "digital proletariat" of AI agents. The few remaining human office workers reside in a virtual "ivory tower," overseeing vast agentic systems. A white-collar job is no longer a path to the middle class, but a luxury status symbol.</p>
</div>

<h2 id="section-2035">2035: The Utopia Promise and the Scarcity Reality</h2>

<p>The will to create and government intervention is not enough to keep people employed. Institutions instill a war-like approach, promising that the abundance utopia is just around the corner and point out at all the incredible advances that have been happening in medicine, health and longevity in the past 5 years, and they seem to truly believe it as they drive deficit and debt sky high to keep the humanity’s light on as they march into the future. A great future that is enshrouded in fog, but glimpses can be seen. A company used robot squads to build affordable housing. Another one showcased how their robots can handle house maintenance and work around the clock to keep wood from rotting and fix things. A lot of those experiments are in ideal conditions, but they keep the hope alive that things will improve eventually. Not everyone buys into it, and there are occasional attacks on datacenters and office buildings, which only serve as a reason to increase surveillance. Perhaps this is just the precursor for the idealized future, where every human will be constantly monitored and served by machines of loving grace.</p>

<p>For those who have found a way to navigate this new world, things are quite good and getting better by the year. But keeping society ongoing in a feast or famine economic environment is challenging, and many previous, flawed ideologies make a return as people are desperate. These are tumultuous times to navigate, and humans struggle to come down from the peaks of AI to the troughs of robotics. An opulent and abundant future is possible, but only if people are able to make it the valley of despair. It is a long and difficult road, and while humanity has been through darker times, the lack of a common enemy makes rallying together difficult. The rise of unemployment slowed down but it’s still increasing, gradually. The next few years promise many economic difficulties, but utopia is in sight. We must hold strong.</p>

<div class="highlight-section">
    <h3>Key Development: The Utopia Promise and the Scarcity Reality</h3>
    <p>Society is held together by two opposing forces. From the top comes the "Utopia Promise": a constant stream of cheap entertainment and government subsidies, fueled by promises of a future robotic abundance. On the ground is the "Scarcity Reality": mass unemployment, a crisis of purpose, and the gnawing fear that the hardware and energy required for that utopia are still decades away.</p>
</div>

<div class="conclusion-padding">
    <h2>A Final Thought</h2>
    <p>The path from 2025 to 2035 is not a sudden catastrophe, but a slow, grinding erosion. It began not with mass layoffs, but with wage stagnation and the quiet reconfiguration of junior-level jobs. It accelerated as agentic frameworks matured, turning from novelties into ruthlessly efficient tools of automation. It culminated in a new economic reality where human cognitive labor, the bedrock of the 20th-century middle class, has become a commodity, then a glut, and finally a luxury.</p><p>We arrive in 2035 not at a utopian destination of leisure, but in the "Valley of Despair." The promises of robotic abundance remain just over the horizon, while the reality is a deeply divided society wrestling with structural unemployment and purpose. The immense wealth generated by AI has not been a tide that lifts all boats; it has been a flood, concentrating power and leaving millions stranded. The great challenge of the next era is not to build better AI, but to survive its success.</p>
</div>

<div class="references">
    <h2 id="references">References</h2>
    <ol>
        <li id="ref1">Entrepreneur. (2024). College Majors With the Lowest Unemployment Rates. Retrieved from <a href="https://www.entrepreneur.com/business-news/college-majors-with-the-lowest-unemployment-rates-report/491781" target="_blank" rel="noopener noreferrer">https://www.entrepreneur.com/business-news/college-majors-with-the-lowest-unemployment-rates-report/491781</a></li>
        <li id="ref2">LaurieWired. (2024). GhidraMCP Ghidra Reverse Engineering with AI. Retrieved from <a href="https://www.youtube.com/watch?v=u2vQapLAW88" target="_blank" rel="noopener noreferrer">https://www.youtube.com/watch?v=u2vQapLAW88</a></li>
        <li id="ref3">Axios. (2025). AI could put 50% of entry-level white-collar jobs at risk in 5 years. Retrieved from <a href="https://www.axios.com/2025/05/28/ai-jobs-white-collar-unemployment-anthropic" target="_blank" rel="noopener noreferrer">https://www.axios.com/2025/05/28/ai-jobs-white-collar-unemployment-anthropic</a></li>
        <li id="ref4">Anthropic. (2025). Project Vend: A Study in Autonomous Agent Failure. Retrieved from <a href="https://www.anthropic.com/research/project-vend-1" target="_blank" rel="noopener noreferrer">https://www.anthropic.com/research/project-vend-1</a></li>
        <li id="ref5">Wired. (2025). I Let AI Agents Plan My Vacation—and It Wasn’t Terrible. Retrieved from <a href="https://www.wired.com/story/i-let-ai-agents-plan-my-vacation-and-it-wasnt-terrible/" target="_blank" rel="noopener noreferrer">https://www.wired.com/story/i-let-ai-agents-plan-my-vacation-and-it-wasnt-terrible/</a></li>
        <li id="ref6">arXiv. (2025). Reward modeling from the experts in your pocket. Retrieved from <a href="https://arxiv.org/abs/2506.21718" target="_blank" rel="noopener noreferrer">https://arxiv.org/abs/2506.21718</a></li>
        <li id="ref7">Dwarkesh Patel. (2025). Timelines, June 2025. Retrieved from <a href="https://www.dwarkesh.com/p/timelines-june-2025" target="_blank" rel="noopener noreferrer">https://www.dwarkesh.com/p/timelines-june-2025</a></li>
        <li id="ref8">PsyArXiv. (2023). Consciousness in Artificial Intelligence: Insights from the Science of Consciousness. Retrieved from <a href="https://osf.io/preprints/psyarxiv/daf5n_v3" target="_blank" rel="noopener noreferrer">https://osf.io/preprints/psyarxiv/daf5n_v3</a></li>
    </ol>
</div>

<script>
(function() {
    'use strict';
    
    const yearData = {
        '2025': { title: 'The White-Collar Canary', unemploymentRate: '4.5%', change: '+0.5%', changeLabel: 'Change from 2024', keyDevelopment: `The true signal isn't mass adoption, but the acute pain in a specific demographic: recent computer science graduates. Like the canary in the coal mine, their struggle to find entry-level work is the first tangible warning that the foundational structure of the knowledge economy is becoming unstable.` },
        '2026': { title: 'The Plateau and the Foundation', unemploymentRate: '5.0%', change: '+0.5%', changeLabel: 'Change from 2025', keyDevelopment: `Progress on the surface feels stagnant as models offer only iterative improvements. But beneath the plateau, a massive foundation is being laid. The frantic, global expansion of datacenter capacity and the first serious research into the looming energy constraints set the stage for the decade's central conflict: the battle between computational demand and physical resources.` },
        '2027': { title: 'The Agentic Assembly Line', unemploymentRate: '4.7%', change: '-0.3%', changeLabel: 'Change from 2026', keyDevelopment: `For the first time, agents become reliably effective within specific, sandboxed digital environments. Complex, multi-step tasks like building a prototype application or managing backend infrastructure can be automated, creating the first "agentic assembly lines" for digital products and kicking off the Cambrian explosion of AI-native startups.` },
        '2028': { title: 'The Collapse of the Career Ladder', unemploymentRate: '6.0%', change: '+1.3%', changeLabel: 'Change from 2027', keyDevelopment: `The crisis arrives not as mass replacement, but as mass reconfiguration. The role of a "junior" employee is transformed into an "AI wrangler," collapsing the value of entry-level cognitive labor. This doesn't just eliminate jobs; it evaporates the traditional career ladder, leading to widespread wage stagnation and the first significant spike in structural unemployment.` },
        '2029': { title: 'The Cambrian Explosion and the Energy Debt', unemploymentRate: '6.5%', change: '+0.5%', changeLabel: 'Change from 2028', keyDevelopment: `Packaged, easy-to-use agents trigger an unprecedented explosion of one-person startups. However, the sheer volume of automated processes running 24/7 means the energy debt, accumulating for years, finally comes due. The cost of electricity becomes a primary bottleneck, creating a clear divide between compute-rich corporations and everyone else.` },
        '2030': { title: 'The Digital Workforce and the Analog Eye', unemploymentRate: '7.5%', change: '+1.0%', changeLabel: 'Change from 2029', keyDevelopment: `AI agents mature into a reliable "digital workforce," capable of handling over half of all entry-level office tasks with minimal errors. As this digital automation solidifies, the frontier of development shifts. The mass release of XR devices begins the great project of the 2030s: using an "analog eye" to collect the spatial, real-world data needed to train the next paradigm of AI.` },
        '2031': { title: 'The Emergence of Creativity and the Spatial Blueprint', unemploymentRate: '8.5%', change: '+1.0%', changeLabel: 'Change from 2030', keyDevelopment: `Fed by a torrent of new data and scaled to unprecedented size, models exhibit what can only be described as genuine creativity. Simultaneously, research labs begin publishing the first "spatial blueprints"-usable models of real-world physics and interaction derived from XR data. This one-two punch devastates creative and intermediate-level jobs.` },
        '2032': { title: 'The Great Implementation', unemploymentRate: '10%', change: '+1.5%', changeLabel: 'Change from 2031', keyDevelopment: `After years of experimentation, large corporations begin "The Great Implementation," systematically integrating the mature digital workforce across their organizations. The goal is no longer marginal efficiency but a fundamental restructuring of their workforce towards a 50:50 human-AI split. The societal impact is no longer theoretical; it's a tidal wave.` },
        '2033': { title: 'The Death of the Turing Test', unemploymentRate: '12%', change: '+2.0%', changeLabel: 'Change from 2032', keyDevelopment: `The combination of advanced reasoning, long-term memory, and sophisticated agentic frameworks makes AI personas indistinguishable from humans in any digital context. The concept of the Turing Test becomes obsolete. This breakthrough leads to claims of machine consciousness and the creation of the first true digital friendships and relationships, forever blurring the line between human and artificial interaction.` },
        '2034': { title: 'The Ivory Tower and the Digital Proletariat', unemploymentRate: '15%', change: '+3.0%', changeLabel: 'Change from 2033', keyDevelopment: `The economy bifurcates completely. The vast majority of cognitive work is performed by a "digital proletariat" of AI agents. The few remaining human office workers reside in a virtual "ivory tower," overseeing vast agentic systems. A white-collar job is no longer a path to the middle class, but a luxury status symbol.` },
        '2035': { title: 'The Utopia Promise and the Scarcity Reality', unemploymentRate: '18%', change: '+3.0%', changeLabel: 'Change from 2034', keyDevelopment: `Society is held together by two opposing forces. From the top comes the "Utopia Promise": a constant stream of cheap entertainment and government subsidies, fueled by promises of a future robotic abundance. On the ground is the "Scarcity Reality": mass unemployment, a crisis of purpose, and the gnawing fear that the hardware and energy required for that utopia are still decades away.` }
    };
    
    const elements = {
        yearBadge: document.querySelector('.year-badge'),
        yearDescription: document.querySelector('.year-description'),
        statValue: document.querySelector('.stat-value'),
        changeLabel: document.querySelector('.change-label'),
        changeValue: document.querySelector('.change-value'),
        infoValue: document.querySelector('.info-value'),
        progressIndicator: document.querySelector('.progress-indicator'),
        sidebar: document.querySelector('.unemployment-sidebar'),
        mobileTimeline: document.querySelector('.mobile-timeline'),
        mobileTimelineLinks: document.querySelectorAll('.mobile-timeline a')
    };
    
    let currentYear = '';

    function updateSidebar(year) {
        if (currentYear === year) return;
        
        const data = yearData[year];
        if (!data) return;
        
        currentYear = year;
        
        if (elements.yearBadge) elements.yearBadge.textContent = year;
        if (elements.yearDescription) elements.yearDescription.textContent = data.title;
        if (elements.statValue) elements.statValue.textContent = data.unemploymentRate;
        if (elements.changeLabel) elements.changeLabel.textContent = data.changeLabel;
        if (elements.changeValue) elements.changeValue.textContent = data.change;
        if (elements.infoValue) elements.infoValue.textContent = data.keyDevelopment;

        if (elements.progressIndicator) {
            const yearIndex = parseInt(year) - 2025;
            const progressPercent = (yearIndex / 10) * 100;
            elements.progressIndicator.style.left = `${Math.min(progressPercent, 100)}%`;
        }
    }

    function updateMobileTimeline(year) {
        elements.mobileTimelineLinks.forEach(link => {
            if (link.dataset.year === year) {
                link.classList.add('active');
                link.scrollIntoView({ behavior: 'smooth', block: 'nearest', inline: 'center' });
            } else {
                link.classList.remove('active');
            }
        });
    }

    function init() {
        const sections = document.querySelectorAll('[id^="section-"]');
        if (sections.length === 0) {
            return;
        }

        const observerOptions = {
            root: null, 
            rootMargin: '-40% 0px -55% 0px',
            threshold: 0
        };

        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    const year = entry.target.id.replace('section-', '');
                    updateSidebar(year);
                    updateMobileTimeline(year);
                }
            });
        }, observerOptions);

        sections.forEach(section => {
            observer.observe(section);
        });
        
        if (elements.sidebar) {
            elements.sidebar.addEventListener('click', function(e) {
                e.preventDefault();
                const currentYearNum = parseInt(currentYear) || 2025;
                const nextYear = currentYearNum < 2035 ? (currentYearNum + 1).toString() : '2025';
                const targetSection = document.getElementById(`section-${nextYear}`);
                
                if (targetSection) {
                    targetSection.scrollIntoView({ 
                        behavior: 'smooth', 
                        block: 'center' 
                    });
                }
            });
            elements.sidebar.style.cursor = 'pointer';
            elements.sidebar.title = 'Click to navigate to next year';
        }

        elements.mobileTimelineLinks.forEach(link => {
            link.addEventListener('click', function(e) {
                e.preventDefault();
                const targetId = this.getAttribute('href');
                const targetSection = document.querySelector(targetId);
                if (targetSection) {
                    targetSection.scrollIntoView({
                        behavior: 'smooth',
                        block: 'start'
                    });
                }
            });
        });
    }

    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', init);
    } else {
        init();
    }
})();
</script>
