# Introduction {#sec:introduction}

For many people, when they hear the word "data", it evokes feelings of something rather dry, even lifeless. They might have heard that the data generated each year is continuing to grow exponentially each year [@Reinsel-17:dataage]. They might have heard of the many marvels that data will deliver to humanity. But they simply can not relate. Data is something for the specialists who have a special trait of character, something that escapes the regular person.

This view of things is reinforced by most of the research that is being conducted around data. Much of it is focused on how to store, process and interpret the ever larger amounts of data. And while these researchers push the boundaries of what is technologically possible, human capabilities remain painfully  limited within narrow boundaries. It is obvious how this situation leads some to conclude that we need to either augment the human brain through technology [TODO:source] or to remove the human from the loop entirely. [TODO:source].

User interface design in general and data visualization in particular have traditionally taken the role of the mediator between the two worlds. Visualization research has extensively explored how to maximize the data that can be communicated to humans. They have faced limitations like available pixels on the screen and the perceptual and cognitive abilities of people. Much of the thinking in the field is focused on not wasting these precious resources. It is epitomized in recommendations like "maximizing the data-to-ink ratio" [@Tufte-01:visualdisplay]. and in observations like this: "The visual system provides a very high-bandwidth channel to our brains" [@Munzner-15:visualizationanalysis, p. 6].

We argue that it is precisely this narrow focus on maximizing data throughput that has alienated the regular person from data. This is because feeding a person the maximum amount of data possible comes at a cost. While the visual system and the brain might be able to process a surprisingly high amount of information, it puts a lot of strain on them. A researcher who is driven by the prospect of finding answers to his questions in the data will probably have a high tolerance to put up with this. But even for them, data analysis is a fatiguing task. 

Visualization that is intended to communicate therefore can ill afford to burden the recipient the task of exploration. And while this might seem obvious, the distinction only emerges slowly in the visualization community. A recent tweet from John Stasko, a visualization researcher for over 30 years, shows this [@Stasko-19:tweet]:

> I grow increasingly convinced every day that data visualization for analytical, exploratory purposes and data visualization for communicative, presentational purposes are more different than most people think.



## Narrative visualization {#sec:narr-vis}

![1. The Washington Post uses annotation extensively to the explain the changing voting behaviors of counties [@Gamio-16:urbanrural]. 2. In this story about rural Russia [@Barry-13:russialeft], a map is used as a navigational aid. 3. At the end of an article on the job propsects of truck drivers that will be replaced by self-driving cars[@Dworkin-18:whytech], the reader can explore other jobs. 4. From an article on still existing differences between Eastern and Western Germany [@Borgenheimer-14:germanunification]. The two regions are consistently identified by their color. \label{narrative-visualization}](img/narrative-visualization.pdf)



After a few years of experimentation with including interactive, explorative visualization in their stories, multiple online newspapers have found that users don't click on them, except when the authors make it abundantly clear why they should interact [@Stabe-16:whyft; @Tse-16:whywe]. Archie Tse from the New York Times puts it like this [@Tse-16:whywe]: 

> If you make the reader click or do anything other than scroll, something spectacular has to happen.

A study by Boy et al. [@Boy-15:suggestedinteractivity] titled "Does it Engage Users to Explore Data?" came to a similar conclusion: Participants preferred to gain information from a textual narrative rather than from an interactive visualization. Their preference changed only when the authors showed an animated mouse cursor that hovered over the visualization and showed how participants would quickly get the answer through interaction. These findings indicate that readers prefer a high amount of guidance in presentations of data because it removes the burden of exploration from them.

A recent field of research, called *narrative visualization*, is precisely concerned with the question of how to best guide readers when presenting data. Narrative visualizations on the surface share many traits with conventional visualization but they but they have four distinct characteristics that are all related to guiding the reader [@Riche-18:datadrivenstorytelling, pp. 85] (see figure \ref{narrative-visualization}): they **narrate and comment** a visualization through text, audio, and annotations; they provide **navigation aids** like timelines, maps, breadcrumbs, etc.; they provide **controlled exploration**  through embedded interactive visualization; and they **link separate charts** through color, animation and/or interaction 

As the name implies, narrative visualization puts charts into a narrative sequence. Such logical sequences are highly desirable when communicating as they lead to better understanding and higher recall of the information presented [@Thorndyke-77:cognitivestructures]. But simply putting charts into a narrative. logical sequence is not enough. The author needs to somehow communicate how the individual charts are related, to link them [@Riche-18:datadrivenstorytelling, p. 92].

This can be done via an accompanying narrative text, but visual methods like color and animation have also been used in practice (see number 4 in figure \ref{narrative-visualization}). But while animated transitions between charts have quickly gained popularity in recent times ([@sec:corpus-analysis]), existing research does not necessarily indicate that animated transitions provide any benefits [@Tversky-02:animationcan; @Berney-16:doesanimation]. This motivates the present research on animated transitions in narrative visualization.



## Problem defintion

The main objective of the present thesis is to find out if animated transitions help readers understand the relationship between two charts in the context of narrative visualization.

To answer this question, the following sub-questions need to be answered first:

* How do readers interpret transitions between charts in narrative visualizations?
* How could animation support this process?

In order to create an experiment to answer the main research question, a software needs to be developed that supports the creation of narrative visualizations with animated transitions.



## Thesis outline

The thesis is organized five parts:

1. The first part presents the theoretical background on transitions and animation. It shows strengths and weaknesses of existing classifications of transitions and discusses how readers interpret transitions. The review of the literature on animation presents five strengths of animation and discusses two important principles for animation design.
2. The second part introduces the a reconceptualization of the existing literature to operationalize it for animated transitions in narrative visualizations. It goes on to show that the reconceptualization is applicable to narrative visualization from practice and reformulates the existing classifications. Based on this reformulation, it discusses how the strengths of animation presented in part one might be applied to different transition types. This leads to the formulation of six research hypotheses.
3. The third part presents an experiment that was conducted to answer the research hypotheses in part two.
4. The fourth part presents a declarative syntax based on the reconceptualization in part two that was used to design the narrative visualizations for the experiment in part three.
5. The fifth part presents our conclusions and possibilities for future work.
