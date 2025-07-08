---
layout: post
title: "The Great AI Unemployment Wave: A Decade of Disruption"
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
    "The future of work is not about humans versus machines, but about humans working with machines in ways we've never imagined."
</div>

<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. The dawn of artificial intelligence has brought us to an unprecedented moment in human history where the very nature of work itself stands at a crossroads.</p>

<div class="section-divider">
    <span>The Decade of Disruption</span>
</div>

<h2 id="section-2025">2025: The Beginning of Change</h2>

<p>You are here. The tech world is just now experimenting with agents that go beyond RAG. There is still a lot of debate over what AGI means, how long it will take to reach it and if it’s even reachable. There are layoffs, particularly in tech, primarily caused by overhiring during covid, but also due to economic uncertainty and LLM usage. Right now most affected are people just out of college with computer science graduates sitting at 6.1% unemployment<sup><a href="#ref1">[1]</a></sup>, among the highest.</p>

<p>Releases from big labs and companies are starting to take longer and the improvements are less spectacular. Even within the field of programming LLMs are exceedingly good at certain verifiable tasks (backend programming) and do quite poorly on other tasks (front end work). MCP servers are popping up left and right and all the big models have adopted the protocol, which has caused certain tasks to become exceedingly fast. LaurieWired created a GhidraMCP implementation which can tackle malware reverse engineering up to an intermediate level with great ease<sup><a href="#ref2">[2]</a></sup>.</p>

<p>YCombinator had its AI Startup School event, which highlights that we are entering a ballistic trajectory for AI related startups. Subtle foreshadowing. There is a lot of hype around AI and LLMs, and reasoning has been an impressive breakthrough in achieving higher performance and reducing hallucinations. The Apple paper on AI dampened the hype wave a little bit, but everyone moved on. Dario Amodei posted about how about 50% of entry level white collar jobs are at risk in the next 5 years<sup><a href="#ref3">[3]</a></sup>, and a few weeks later Claude went bankrupt trying to run a vending machine<sup><a href="#ref4">[4]</a></sup>. We are in the experimentation phase and a lot of companies are holding their breath as they try to strategize about the future. ChatGPT 5 will come out this year, and it will likely wrap up the release of big models for 2025. AI datacenters have started being built quite aggressively and we'll see some crude robots come out, mainly as a novelty.</p>


<div class="highlight-section">
    <h3>Key Development: AI Agents Go Mainstream</h3>
    <p>The year 2025 marks the inflection point where AI agents transition from experimental technology to essential business infrastructure. Companies across all sectors begin implementing autonomous systems for customer service, data analysis, and routine administrative tasks.</p>
</div>

<h2 id="section-2026">2026: The Year of Iteration</h2>

<p>This is the year of incremental increases. There may be some new big models coming out, but I mostly expect a lot of .5 and .7 versions of things. Iterative improvements on the existing models. The plateau for multimodal models and the text based thinking is starting to be felt. LLMs have a certain kind of intelligence that is not applicable 1:1 to human processes. Agents will keep evolving, but will struggle with an internet created for human eyes. Attempting to book and plan a full trip using LLMs will result in similar results to what we’ve seen in 2025; mostly work, but wrong often enough to not be worth it<sup><a href="#ref5">[5]</a></sup>.</p>

<p>We’ll start seeing more noise about wearables from Meta, OpenAI and Google. They will try to package it in a way that is useful and promise some AR features, but nothing will come out in 2026.</p>

<p>Computer usage, which represents the great roadblock for the mass automation of white collar jobs, will become more of a talking point, but everyone is still focusing on raw intelligence and reasoning for models. One crucial development I expect in 2026 is further improvements in reasoning and building world models, which will be particularly useful for image and video generations, which will get cheaper to do as datacenters expand. There will be posts and articles from big companies exploring how they are using LLMs and agents in certain segments of their business, but adoption will be relatively slow due to the jagged knowledge of LLMs. More research of intelligence sweet spots and context prompting will come out and unlock new efficiencies.</p>

<p>Overall, it will not be a terribly exciting year for most people. Datacenters are still being built, robots are still a novelty but there’s more of them.</p>

<h2 id="section-2027">2027: Agents, agents, agents!</h2>

<p>2 years from now, agents will start hitting their stride. Within certain restrictions, agents will be able to operate at super human capability. Back end and infrastructure code will have dozens of options for using agents to manage and develop things. A lot of foundational companies, such as Stripe, Vercel and some cloud providers have or will have LLM friendly ways of interacting with them. A lot of builders will be able to sit down, prompt an agentic framework to  “build a prototype for an app that uses LLM vision and search to identify local artists from a work of art”, or a similarly complex idea, leave for a few hours, and come back to a fully build app, including payment processing, mailing list, and authentication, ready to be tested and submitted to the mobile stores. Planning a full trip or doing your taxes will still be error prone, but agents will know when to fail gracefully and call a human in the loop.</p>

<p>The level of intelligence isn’t quite at the level where mass automation can happen, and web navigation is improving in part thanks to the massive amount of compute that is coming online around 2027. China’s total compute may reach quite close to the US’s around this time as they have invested heavily into infrastructure and can support gigantic data centers. Unemployment actually goes down as some companies give up on the promised AI future.</p>

<p>The improvements in reasoning and image generation allowed for mock websites and applications to be generated that resemble real world ones in complexity. This technique will be used for synthetic data training, which will also happen quite quickly given the above mentioned compute power. The computer usage rankings will start improving a lot. 2027 results will still be a bit shoddy, but the trajectory is clearly upwards. Reward modelling can be done on any kind of data<sup><a href="#ref6">[6]</a></sup>, so once the original kinks are ironed out, things will pick up speed.</p>

<p>A new wave of frontier models will come out this year, setting the baseline for computer usage. Wearables will be more prominent although actual releases might not happen this year. We will see a lot of demos and hype creation from large orgs and startups alike.</p>

<h2 id="section-2028">2028: The Junior</h2>

<p>Agents can now do a good chunk of office jobs, especially at entry level. Suddenly, Dario’s warning starts making sense. We are starting to see a lot of demos of AI doing relatively complex entry level jobs. Companies are on board now. The hiring freeze is back and layoffs start climbing again. New models, specialized on computer usage come out that accelerate this process even further. For the first time since 2020, when GPT3 was released to the public, after 8 years of the tech world going from hype to doom and gloom, and then back to hype, every day people are starting to feel the impact.</p>

<p>The agents that developers have been building over the past years are the perfect scaffolding for this new generation of models. New agents start appearing, and new startups are born that attempt to automate the holy grail of knowledge, research and development.</p>

<p>The results are mixed. As with GPT 3.5, a lot of people overestimate the capability of new models even with decent computer usage capabilities. But the knowledge of previous years and experiments compounds, and by the end of the year we start seeing LLM agents capable enough to act as internet personas, capable of relatively complex interaction. This timeline also matches with Dwarkesh’s feelings<sup><a href="#ref7">[7]</a></sup>, and is even more optimistic.</p>

<p>This year we’re also finally seeing the release of XR devices. Meta and Google glasses, and OpenAI’s magic gizmo alongside dozens more products from startups and smaller companies all hit the market or are close to. Synthetic data was a crutch that worked so far, but for LLMs to move beyond the realm of the digital, real, spatial data is needed and those gadgets will collect it.</p>

<h2 id="section-2029">2029: The Office Worker</h2>

<p>All the development, research, scaffolding, circuit analysis, computer usage and state of the art models culminate into creating packaged agents that are extremely easy to run and can do most entry level jobs and some intermediate level ones. The agents are able to act and receive visual feedback which can be processed back in a way that allows them to learn on the job. There is some friction because all new agents will effectively need to be on-boarded and have a human show them how to work and verify their results for a while, but the effects on the job market are starting to be felt.</p>

<p>The explosion of startups is unprecedented, with dozens of new companies being created on a daily basis. Partly because of the opportunities of AI, partly because of the laid off people needing an income, and partly because people will try to have an agent create and run an entire startup. Many end up in flames, but the ones that succeed only exacerbate the impact of automation as people figure out how to create agents fine tuned for any job they have intimate knowledge of with varying levels of success. Companies are still largely staffed by humans as a lot of jobs aren’t verifiable in a way that works with LLMs, but new about layoffs start becoming more frequent and the glut of new startups isn’t enough to absorb it.</p>

<p>As spatial data is being collected and processed, the need for datacenters increases again, and with that the need for electricity. Countries and governments finally start investing into major power generation projects, but the difficulty and complexity of such projects means that compute increase slows down significantly. In 2029, the best way to increase performance is to increase the wafer size instead of trying to make transistors even smaller, so new datacenters are designed to take advantage of the upcoming power projects and of a truly titanic size. Other aspects, such as robots, receive marginal upgrades year by year. Much like with agents, there are improvements in the supply chain that will be critical later.</p>

<h2 id="section-2030">2030: The first impact</h2>

<p>Office worker agents are quite good by now. They can do over 50% of all entry level jobs and about 30% of intermediate level jobs. Better ways to package, deliver and integrate those agents are developed by large companies and startups alike. After experimenting for the past 2 years, forward looking companies start adopting a workforce geared towards automation. There is a mix of both wonder and discontentment among the general population as they see AI being able to do their job, but also do all the frustrating things in life such as dealing with government documentation and doing taxes. Mistakes are very rare at this level.</p>

<p>XR devices start experimenting with endless context windows that are able to always listen and retain knowledge from previous activities. Each of those devices will build an accurate and complex simulacrum of its owner and it will use that data whenever it is called upon. This may make some privacy advocates uncomfortable, but a lot of normal people will find it tremendously useful. XR starts becoming an industry again as AI project plateaus temporarily. People are able to rely on those devices to do things around the house, including housework and repairs. All this time, those devices also transmit data to their parent companies.</p>

<p>No significant improvements in robotics, but everyone who could assemble a robot by this point has caught the wind of a solution to the spatial data problem and they’re trying to be the first ones ready to take advantage of it.</p>

<h2 id="section-2031">2031: Your friend, Data</h2>

<p>Research papers about spatial data training, usage and generation start being published. It’s still an ongoing project, but Google level companies are showing off interesting demos of robots being capable helpers around the house. A lot of them are early prototypes, but a vision of actual sci-fi level robots is starting to take place.</p>

<p>Small datacenters are built wherever there’s space and power availability. The big ones are still some years away. The processing continues, the needs only going up. A new emergent behaviour from LLM, as they keep increasing in size and finesse, enters the scene: actual, genuine creativity. It feels less that a stochastic parrot and more an actual intelligence now. This phenomenon, of course, hits the job market hard. The number of entry level jobs done by AI goes up to 70%, and intermediate jobs to 40% with senior jobs being affected too.</p>

<p>This high level of unemployment is starting to seriously affect governments and politics, as they scramble and bicker for the most optimal solution. Different solutions are proposed and implemented according to the economic and cultural factors of each country/economic zone.</p>

<p>There is still ongoing research and publishing on how to make LLM and agents feel less like newborns every time you start a new conversation, and knowledge sets for specific tasks are developed as well as effective knowledge sharing between agents. With the increased level of knowledge and creativity, now entire mini departments can be made entirely of agents.</p>

<h2 id="section-2032">2032: The tidal wave</h2>

<p>Companies and startups alike are quick to capitalize on this new level of intelligence and creativity. Fine tuned models and large models alike start being released and are ready to be plugged into existing flows. At this point, 80% of all office entry level jobs are done by LLMs and unemployment among recent graduates is close to 20%. More than half of intermediate jobs and a quarter of senior jobs are now done by machines too. A lot of people get involved in the construction, wiring and networking of new data centers and power plants, both of which are now significant industries. While data centers don’t take a lot of manpower to run, they are very labor intensive to build. This reduces the effect of unemployment to a degree. Many people decide to go into content creation, and are able to rely on LLMs to do all the boring parts. LLMs are used to both do and teach, and a lot of people finally find a time efficient way to explore their hobbies.</p>

<p>The mood about the future is uncertain, and people are divided into doomers and bloomers. Entertainment is really accessible now, and some people are content with that. Others worry that we will end up as biological machines that will be instructed by our AI overlords. The contract political back and forth gives the impression that solutions are being evaluated, at least. More robot showcases occur in which they seem remarkably capable, but production chains and testing takes a long time so no noteworthy releases occur.</p>

<p>Reinforcement learning is back on the table and used to train LLMs where not enough examples exist and where speed is essential. The average person can go for days without seeing content handcrafted by another human being.</p>

<h2 id="section-2033">2033: Stabilization</h2>

<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

<h2 id="section-2034">2034: Recovery Phase</h2>

<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

<h2 id="section-2035">2035: The Transformed Economy</h2>

<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

<div class="conclusion-padding">
    <h2>A Final Thought</h2>
    <p>The decade of disruption was a crucible, forging a new relationship between humanity and its intelligent creations. The challenges were immense, but they forced a global conversation about value, purpose, and the future of society itself. The road ahead remains uncertain, but it is one we now walk with a deeper understanding of our own resilience and adaptability.</p>
</div>

<div class="references">
    <h2 id="references">References</h2>
    <ol>
        <li id="ref1">Entrepreneur. (2024). College Majors With the Lowest Unemployment Rates. Retrieved from <a href="https://www.entrepreneur.com/business-news/college-majors-with-the-lowest-unemployment-rates-report/491781" target="_blank" rel="noopener noreferrer">https://www.entrepreneur.com/business-news/college-majors-with-the-lowest-unemployment-rates-report/491781</a></li>
        <li id="ref2">LaurieWired. (2024). GhidraMCP Ghidra Reverse Engineering with AI. Retrieved from <a href="https://www.youtube.com/watch?v=u2vQapLAW88" target="_blank" rel="noopener noreferrer">https://www.youtube.com/watch?v=u2vQapLAW88</a></li>
        <li id="ref3">Axios. (2025). AI could put 50% of entry-level white-collar jobs at risk in 5 years. Retrieved from <a href="https://www.axios.com/2025/05/28/ai-jobs-white-collar-unemployment-anthropic" target="_blank" rel="noopener noreferrer">https://www.axios.com/2025/05/28/ai-jobs-white-collar-unemployment-anthropic</a></li>
        <li id="ref4">Anthropic. (2025). Project Vend: A Study in Autonomous Agent Failure. Retrieved from <a href="https://www.anthropic.com/research/project-vend-1" target="_blank" rel="noopener noreferrer">https://www.anthropic.com/research/project-vend-1</a></li>
        <li id="ref5">Wired. (2023). I Let AI Agents Plan My Vacation—and It Wasn’t Terrible. Retrieved from <a href="https://www.wired.com/story/i-let-ai-agents-plan-my-vacation-and-it-wasnt-terrible/" target="_blank" rel="noopener noreferrer">https://www.wired.com/story/i-let-ai-agents-plan-my-vacation-and-it-wasnt-terrible/</a></li>
        <li id="ref6">arXiv. (2025). Reward modeling from the experts in your pocket. Retrieved from <a href="https://arxiv.org/abs/2506.21718" target="_blank" rel="noopener noreferrer">https://arxiv.org/abs/2506.21718</a></li>
        <li id="ref7">Dwarkesh Patel. (2025). Timelines, June 2025. Retrieved from <a href="https://www.dwarkesh.com/p/timelines-june-2025" target="_blank" rel="noopener noreferrer">https://www.dwarkesh.com/p/timelines-june-2025</a></li>
    </ol>
</div>

<script>
(function() {
    'use strict';
    
    const yearData = {
        '2025': { title: 'The Beginning of Change', unemploymentRate: '4.5%', change: '+0.5%', changeLabel: 'Change from 2024', keyDevelopment: 'AI agents become mainstream' },
        '2026': { title: 'The Year of Iteration', unemploymentRate: '5.0%', change: '+0.5%', changeLabel: 'Change from 2025', keyDevelopment: 'Incremental model improvements' },
        '2027': { title: 'Agents, agents, agents!', unemploymentRate: '4.7%', change: '-0.3%', changeLabel: 'Change from 2026', keyDevelopment: 'Agents begin to hit their stride' },
        '2028': { title: 'The Junior', unemploymentRate: '6.0%', change: '+1.3%', changeLabel: 'Change from 2027', keyDevelopment: 'Entry-level office jobs automated' },
        '2029': { title: 'The Office Worker', unemploymentRate: '6.5%', change: '+0.5%', changeLabel: 'Change from 2028', keyDevelopment: 'Packaged agents emerge' },
        '2030': { title: 'The first impact', unemploymentRate: '7.5%', change: '+1.0%', changeLabel: 'Change from 2029', keyDevelopment: 'Office worker agents become highly capable' },
        '2031': { title: 'Your friend, Data', unemploymentRate: '8.5%', change: '+1.0%', changeLabel: 'Change from 2030', keyDevelopment: 'Genuine creativity in AI emerges' },
        '2032': { title: 'The tidal wave', unemploymentRate: '10%', change: '+1.5%', changeLabel: 'Change from 2031', keyDevelopment: '80% of entry-level office jobs automated' },
        '2033': { title: 'Stabilization', unemploymentRate: '19.9%', change: '-0.6%', changeLabel: 'Change from 2032', keyDevelopment: 'New economy models' },
        '2034': { title: 'Recovery Phase', unemploymentRate: '17.3%', change: '-2.6%', changeLabel: 'Change from 2033', keyDevelopment: 'Human-AI collaboration' },
        '2035': { title: 'The Transformed Economy', unemploymentRate: '14.1%', change: '-3.2%', changeLabel: 'Change from 2034', keyDevelopment: 'Sustainable new equilibrium' }
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
