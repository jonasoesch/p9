

# Introduction

When they hear the word "data", it evokes feelings of something rather dry, even lifeless in many peoples minds. They might have heard that the data generated each year is continuing to grow exponentially each year [@Reinsel-17:dataage]. They might have heard of the many marvels that data will deliver to humanity. But they simply can not relate. Data is something for the specialists who have a special trait of character, something that escapes the regular person.

This view of things is reinforced by most of the research that is being conducted around data. Much of it is focused on how to store, process and interpret the ever larger amounts of data. And while these researchers push the boundaries of what is technologically possible, human capabilities remain painfully  limited within narrow boundaries. It is obvious how this situation leads some to conclude that we need to either augment the human brain through technology [TODO:source] or to remove the human from the loop entirely. [TODO:source].

User interface design in general and data visualization in particular have traditionally taken the role of the mediator between the two worlds. Visualization research has extensively explored how to maximize the data that can be communicated to humans. They have faced limitations like available pixels on the screen and the perceptual and cognitive abilities of people. Much of the thinking in the field is focused on not wasting these precious resources. It is epitomized in recommendations like "maximizing the data-to-ink ratio". [@Tufte-01:visualdisplay] and in observations like this: "The visual system provides a very high-bandwidth channel to our brains". [@Munzner-15:visualizationanalysis, p. 6]

We argue that it is precisely this narrow focus on maximizing data throughput that has alienated the regular person from data. This is because feeding a person the maximum amount of data possible comes at a cost. While the visual system and the brain might be able to process a surprisingly high amount of information, it puts a lot of strain on them. A researcher who is driven by the prospect of finding answers to his questions in the data will probably have a high tolerance to put up with this. But even for them, data analysis is a fatiguing task. 

Visualization that is intended to communicate therefore can ill afford to burden the recipient the task of exploration. And while this might seem obvious, the distinction only emerges slowly in the visualization community. A recent tweet from John Stasko, a visualization researcher for over 30 years, shows this [@Stasko-19:tweet]:

> I grow increasingly convinced every day that data visualization for analytical, exploratory purposes and data visualization for communicative, presentational purposes are more different than most people think.



## Narrative visualization

![1. The Washington Post uses annotation extensively to show how smaller counties had a tendency to swing to the right while cities were swinging left between 2004 and 2016. 2. In this New York Times story about rural Russia[@Barry-13:russialeft], a map is used as a navigational aid. [@Gamio-16:urbanrural] 3. This article by *The pudding* explores what jobs truck drivers that are being replaced by self-driving cars could transition to [@Dworkin-18:whytech]. At the end the reader can select other jobs that might be automated in the future and explore alternatives. 4. Comes from an article on the still existing differences between Eastern and Western Germany [@Borgenheimer-14:germanunification]. The two regions are consistently identified with through their color in the article. \label{narrative-visualization}](img/narrative-visualization.pdf)

The finding that visualization for exploration and visualization for explanation are in some ways very different has led to a new field of research called *narrative visualization*. Narrative visualizations still share many traits with exploratory visualizations, but they have four distinct characteristics [@Riche-18:datadrivenstorytelling, pp. 85]: they **narrate and comment** a visualization through text, audio, and annotations (figure \ref{narrative-annotation}); they provide **navigation aids** like timelines, maps, breadcrumbs, etc. (figure \ref{narrative-navigation});  they provide **controlled exploration**  through embedded interactive visualization; and they **link separate charts** through color, animation and/or interaction (see figure \ref{narrative-visualization})

*Controlled exploration* is an attempt to preserve at least some of the pervasive "show all the data"-approach in the communicative setting. But after some years of experimentation with including interactive visualization in their stories, multiple online newspapers report that they are seldomly used [@Stabe-16:whyft; @Tse-16:whywe]. Based on this findings, Archie Tse from the New York Times formulated the following rules in 2016:

> 1. If you make the reader click or do anything other than scroll, something spectacular has to happen.
>
> 2. If you make a tooltip or rollover, assume no one will ever see it. If content is important for readers to see, don't hide it.

These conclusions are supported by a study by Boy et al. [@Boy-15:suggestedinteractivity] who tested if participants would use interactive visualization rather than text to find answers to questions. In their experiment, it was quicker to get the answers from interactive visualization rather than the textual narrative. Still, only 30% of the participants used the interactive visualization.

The author of narrative visualization is therefore faced with the task of deciding what information to show and in what order. While the global structure of such a narrative is similar to that of narratives from other media 







## Research outline





## Contributions

This work makes the following novel contributions:

1. It refines previous work on transitions in narrative visualizations by connecting it to Gleicher's work on *comparison* and to *cognitive load theory*. This contributes to understanding why certain transitions are perceived as more difficult to understand than others by the reader. It also implies certain strategies to reduce the difficulty of transitions: *chunking*, *highlighting*, *supporting object constancy*
2. It tests if animated transitions imply a relationship between two charts and if it helps with *highlighting* and *object constancy*.











The ordering of states is highly relevant to understanding a story and scrambling it will lead worse comprehensibility and recall of the information. [@Thorndyke-77:cognitivestructures] This observation should be discouraging for including explorative aspects in narrative visualization which by their nature introduce non-linearity. 

We think the problem lies with the definition of a state. Just as the story of a movie is not changed by showing more of the scenery in one shot, the story of a narrative visualization is not changed by letting the reader explore details of the current state. A similar view is held by Hullman et al. who define a state as an "informationally distinct visual representation" [@Hullman-13:deeperunderstanding]; a definition to which we will also adhere to in this work. We will call an "informationally distinct representation" a *chart* and use the term *visualization* to describe the whole sequence of *charts*. 

The observation about the importance of sequence also implies that there is some information inherent in the ordering of states that is not present in the states themselves. The *transition* between the two states, therefore, carries implicit information that is essential to the understanding of the story. This is also observed by Stolper et al.  [@Riche-18:datadrivenstorytelling, pp. 85] when they talk about "linking separate story elements [or states]". Transitions then are a basic element of narrative visualization and we will go on to present some of their properties in greater detail.



# Transitions {sec:transitions}

Transitions seemingly carry information that is not explicitly presented in the two charts. To design effective narrative visualization, it is crucial to understand how readers perceive transitions and extract information from them. This chapter will, therefore, present the relevant literature and propose a classification of transitions based on cognitive load theory.

## Transition types

Multiple authors have compiled classifications of transitions between informationally distinct states ( *charts* in this thesis). In this section, we will discuss three different approaches to such classifications: visualization-focused, story-focused and inductive.

### Visualization-focused classifications {#sec:param-classification}

The most common approach is to think about transitions is in terms of visualization parameters. [@Heer-07:animatedtransitions, @Yi-07:deeperunderstanding, @Fisher-11:animationvisualization, @-18:space] Any visualization can be viewed as the result of a series of parametrizable transformations applied to the underlying data set. [@Jankun-kelly-07:modelframework] The transition can, therefore, be described in terms of parameter changes as long as the underlying data does not change.

Through this approach, four authors identify a total of 9 transition types with a surprisingly high overlap:

![Comparison of transition types commonly identified by different authors for different purposes. The table shows that the agreement is relatively high for transitions that can be defined in terms of visualization parameters. What is often missing is the case where the underlying data changes.](/Users/jonas/Desktop/P9/bericht/img/transition-parametric.png)

* **Pan**: Moving a fixed image below a smaller viewport to see one part at a time. The most famous example of this is Google Maps [@Google:googlemaps].
* **Zoom**: Geometric zooming in and out of a fixed image. This transition too, is used in Google Maps [@Google:googlemaps].
* **Filter**: Hiding or showing elements based on some criteria. When reading a visualization on cars, filtering might for example hide all the data on American cars.
* **Reorder**: Reordering axes according to a different criterion. Countries that are displayed in alphabetical order might, for example, be reordered according to their GDP.
* **Substrate transformation**: Any distortion to the scale that is not addition or multiplication of a constant. For example a log transform or a lens-effect that resizes only a part of the coordinate system. The latter being something that is not often seen in real-world applications but seems to be a darling of visualization researchers. [@Munzner-15:visualizationanalysis, pp. 327–338]
* **Visualization change**: Showing the same data with a different visualization idiom. For example, showing a distribution as a boxplot to indicate mean, quantiles and outliers first and then transforming it into a histogram to give a better sense of its shape.
* **Timestep**: Showing the same visualization for different points in time. For example, the population pyramid of Switzerland for 1960 and 2010 to show how it has shifted to older people.
* **Data schema change**: Mapping a different data dimension to one of the visual variables (position, color, etc.). A visualization might, for example, show the use of certain plant variants over time and show the occurrence of pests over the same period in the next state.
* **Data change**: When new data is shown but the visualization and the axes stay the same. This is the generalization of the Timestep transition.

The strength of this kind of classification is, that types can relatively easily and coherently be determined for a transition. Even automatically. [@Hullman-13:deeperunderstanding] It's weakness is that it characterizes a transition by its technical properties and not based on how the reader will interpret it, which makes it less useful for designers of narrative visualization. Other fields, especially the research on comics have done much more work in this regard.

### Story-focused classification

The most-cited classification of transition types in comics is the one by McCloud [@Mccloud-93:understandingcomics] He describes six types of transitions between comic panels:

![transition-mccloud](/Users/jonas/Desktop/P9/bericht/img/transition-mccloud.png)

1. **Moment-to-moment**: Stepwise movement through time.
2. **Action-to-action**: Movement through time-based on meaningful events.
3. **Subject-to-subject**: Switch from one subject to another
4. **Scene-to-scene**: Change in location or a long timespan passing.
5. **Aspect-to-aspect**: Exploring a scene.
6. **Non-sequitur**: Changes without an obvious relationship.

In McCloud's classification, a transition is characterized by a change in either *subject*, *scene* and/or *time*. 

Cohn [@Cohn-10:limitstime] refines on McCloud's transition types by introducing hierarchy to the interpretation of subject, scene and time. He argues that readers will first try to find the same subject in the subsequent panel. They will then move their attention to changes in the scene. Finally, they will shift their focus to changes in time. Cohn uses examples to show how a different order leads to interpretations that run counter to typical reading habits.

*Subject*, *scene* and *time* are reminiscent of journalisms famous *who/what*, *where* and *when*. [@-19:fivews] Such proximity to journalism indicates that McCloud's transition types might be useful outside of the domain of comics.

### Inductive classification

A bottom-up approach to transition types can be found in Hullman et al. [@Hullman-13:deeperunderstanding]. The authors reviewed 42 narrative visualizations and identified 12 different transition types which they grouped into six categories:

![\label{transition-hullman}](/Users/jonas/Desktop/P9/bericht/img/transition-hullman.png)

**Dialogue**: A question is asked or implied in one chart which is being answered in the next. One chart shows a time series of world temperature and asks how natural factors have contributed. The next chart shows how natural factors like volcanos have influenced global temperatures over time (see figure \ref{transition-hullman}).

**Temporal**: The two charts show the same data for different points in time. For example how the regional subdivision of Hungary has changed between 2017 and 2018 (see figure \ref{transition-hullman}).

**Causal**: One chart shows an effect and the next chart presents the cause of the effect. A chart showing a school district with high rates of failures and the next showing how high failure rates have been caused by higher segregation, for example (see figure \ref{transition-hullman}).

**Granularity**: When one chart shows a higher amount of detail than the other. One example is a chart that shows EU countries on a map and another chart that shows how they are split into regions (see figure \ref{transition-hullman}).

**Comparison**: Either the dependent or an independent variable changes between the charts. The transition is called a measure walk when the measure is being changed. For example, showing a map of the impact of climate change on flooding risk and a map of the impact on crop shortage (where the respective impacts are the dependent variables). It is called a dimension walk when one of the independent variables changes. For example, a series of sorted streamgraphs that show emigration patterns for different states (where the state is an independent variable) (see figure \ref{transition-hullman}).

**Spatial**: When the final state is spatially close to the initial state, as visible in figure \ref{transition-hullman}) where the charts show different heights of the earth's orbit.

Hullman et al. further distinguish between *implicit transitions* that can only be interpreted by a reader and *explicit transitions* that could potentially be inferred from changes in the attributes visualized (compare to [section @sec:param-classification]). Interestingly they have found very little occurrences of the two explicit transitions in their analysis (see figure \ref{hullman-frequency})

![Transition types identified by Hullman et al. [@Hullman-13:deeperunderstanding]. The explicit dialogue and causal transitions are quite rare. \label{hullman-frequency}](/Users/jonas/Desktop/P9/bericht/img/transition-hullman-freq.png)

Implicit transitions are defined by the question: "What changes between the charts?". This can be time, location, granularity, or a variable.

## Comparison {#sec:comparison}

All of the classifications presented before are based on different types of changes between charts. Either visualization parameters change; subject, scene or time change; or again time, location, granularity or variable. This indicates that the elusive information gained from transitions has something to do with comparing the two charts. This section, therefore, looks at the research on comparison in visualization in more detail.

![A topology of visualization tasks which synthesizes a large body of
previous literature has been proposed by Brehmer et al. [@Brehmer-13:multileveltypology] \label{transition-topology}](img/comparison-taxonomoy.png)

According to Brehmer et al.'s taxonomy of visualization tasks [@Brehmer-13:multileveltypology], "Compare" is one of three tasks in the "Query"-group. These tasks are distinguished by the number of *targets* they operate on. An *identify*-task uses a single target while a *summarize*-task uses all available targets. The *compare*-task requires multiple subgroups of targets to compare them. Targets, obviously, need to be available before they can be compared.

The comparison task, therefore, needs to be proceeded by tasks from the *search*-group that will identify and locate targets. In narrative visualization, this will most often be the *locate*-task to find targets explicitly mentioned in the narrative. But this is not the only case: 

#### Explicit identification

Is aided by the author through labels, annotations, colors, and narrative. An example can be seen in figure \ref{narrative-annotation}.

#### Identification through visual statistics

 uses the ability of the visual system to quickly and quite accurately calculate certain statistical properties of an image (figure \ref{comparison-identification}). A viewer can, for example, see in an instant if a certain region contains more orange than blue dots (mean). She can also quickly identify groups of points that are similar (clustering). Viewers will be able to tell if circles get bigger from left to right (trends). Or if a point has a different color from all the outers (outlier). All of these values can then serve as a target for comparison.

#### Implicit identification

 In many cases, external knowledge or personal interest of the viewer will lead to the identification of a target. [@Gleicher-18:considerationsvisualizing] Often, readers will compare what they see to what they would have expected to see. Or a person from Brooklyn, for example, will tend to be more interested in the success and failure history of the Brooklyn Nets than that of the Warriors from California (see figure \ref{narrative-dynamic-query}). This is one of the reason for authors of narrative visualization to include *dynamic queries*.

![The visual aggregation tasks from [@Szafir-16:fourtypes] show how comparison targets can by identified by visual statistics. \label{comparison-identification}](img/comparison-identification.png)



When a target or a set of targets have been identified in one of the charts, the reader proceeds to *locate* a corresponding target in the other chart. When all the targets are available, they are compared in the reader's mind. This often requires a considerable mental effort, which we will call the *transition cost*.

## Transition cost

Gleicher [@Gleicher-18:considerationsvisualizing] also describes three factors that make comparisons challenging:

* A large number of targets
* Large targets. For example when comparing two very long time series.
* Complex relationships. For example when there is not a one-to-one relationship.

Another approach to measuring the difficulty of a transition can be found in Hullman et al. [@Hullman-13:deeperunderstanding] who introduce the idea of a *transition cost*. According to the authors, the transition cost should be calculated by summing the following counts:

* How many independent variables have changed?
* Has the dependent variable changed?
* By how many levels has the granularity changed?

When using this definition, the authors found that readers strongly preferred transitions with a cost of one. Transitions with costs that were higher, e. g. two or three were judged as equally undesirable. 

### Cognitive load theory {#sec:cognitive-load}

The idea that the amount of change that people can process at a time is supported by *cognitive load theory*.[@Wong-12:cognitiveload] It postulates that novel information needs to be processed in the learners *working memory*. But this working memory is severely limited in capacity. The range is  from a maximum of 9 to as low as one object, depending on the complexity of the objects. [@Miller-56:magicalnumber, @Alvarez-04:capacityvisual] If the learner had time to process and organize the novel information into her *long term memory*, she can use it at almost no cost to her working memory, however. The way information is organized into long term memory is called a *schema*.

These principles predict that when the number and complexity of targets in a transition exceed the working memory of the reader, she will forget what she has seen before and comparison fails because not all necessary targets are available.

In some cases, this complexity is inherent in the material that's being presented (*intrinsic cognitive load*). But in many cases, it is the presentation that creates unnecessary cognitive load (*extraneous cognitive load*).

### Reducing the transition cost

#### Chunking

The first recommendation to lighten the cognitive load is to reduce the number of elements that need to be processed. This is done by splitting transitions and adding in-between charts. These charts serve as islands where the reader has time to organize information from working memory into long-term memory. From long-term memory, the information is available at little cost for processing subsequent transitions.

One of the most common types of intermediate charts are those who show how elements can be grouped into larger entities. This supports the reader in creating a schema in his long term memory.

#### Highlighting

Another way to reduce the number of elements in working memory is to highlight the most important targets or the parts of them that are interesting for comparison. This can be done through the means of narrative visualization (narration, annotations, color) mentioned in [section @sec:narr-vis]. Highlighting is especially efficient when done through pre-attentive attributes) like color. In this case, elements with other colors are already being hidden by the visual system and don't even reach working memory. [@Franconeri-18:thinkingdata] (compare also figure \label{comparison-identification}

#### Object constancy

Finally, the properties of the visual system can be used to pre-process objects. There is some evidence that when the reader has rapid visual access to the targets (<300ms [@Rensink-02:changedetectiona]), changes will be detected before working memory is reached. Based on these findings, different authors have tried to use *animation* to reduce cognitive load [@Zongker-03:creatinganimation; @Betrancourt-08:displaykey] with mixed results. These findings will be discussed in the chapter on animation ([-@sec:animation])



## Perception-oriented classification

Based on these insights, we believe that the taxonomies described in [section @sec:transitions] don't adequately address the problem of reducing the transition cost. That is because they don't treat transitions as comparison of targets ([see section @sec:comparison]) and they don't consider how these targets need to be compared in working memory ([see section @sec:cognitive-load]). From the three approaches, we consider Hullman et al.'s classification the most promising because they have successfully linked it to  *transition cost*. The weakness of their model is that it is not linked to a larger theoretical framework. We will aim at this in this chapter by first introducing a theoretical framework based on cognitive load theory. We will call this a *perception-oriented classification*. We will then use a similar method as Hullman et al. to infer several transition types from existing narrative visualizations.



###  Theoretical model {#sec:our-model}

(TODO:graphic)

We argue that readers extract information from a transition based on a comparison between the first and the second chart. As discussed in section [-@sec:comparison], readers first identify a target in one of the charts. Then they try to locate the matching target in the other chart. When a relationship is thus identified, it is further analyzed. To do this they need to keep three types of elements in their working memory:

#### Characters

A character is an identifiable and nameable visual entity in the chart. It can be a dot, a line or any other mark. In visualization, these entities are very often identified by one or more independent, categorical variables. For example countries, genders, age groups, etc. Even though this definition might seem abstract at first, it is in most cases very easy to identify characters in narrative visualization. That is because the narrative will typically talk about them.

Characters can also be grouped into a unifying character. Switzerland, Italy, and France could form the group *European countries* while Japan, China, and Korea might be combined into *Asian countries*. Grouping characters is one of the ways readers organize single elements into long term memory to reduce the load on  working memory.

#### Attributes

Are used to describe all the other variables encoded in the visualization in the form of position, size, shape, etc. Attributes are showing different aspects of the characters. Country-characters can have population numbers over time. Gender-characters might have differing PISA-test success rates or might marry at different ages.

#### Context

Finally, many charts typically have a context. The situation shown might be for a certain year, for a certain revision of the PISA-test or according to a certain source. The context is often depicted in the title.

We believe that each of these elements will occupy roughly one slot of the readers working memory. When something stays the same between two charts, it will still only occupy one slot. If something changes, two slots will be needed.

The three types of elements also roughly mirror Cohn's [@Cohn-10:limitstime] categories of *subject*, *scene* and *time*. Based on his work and our observations we suspect that there is also a hierarchy in our proposed types: Readers will first identify the *characters* in a chart and look for the corresponding characters in the other chart. If they find them and they visually differ between the states, they will look for reasons. At first, they will assume that a different *attribute* of the character is shown and therefore check the axes. If they conclude that the changing appearance of the character is not due to different attributes being shown they will assume that a change of *context* has happened.

Even though they flow from the literature, further research would be needed to validate the hypotheses about working memory consumption and the interpretation hierarchy.



### Method

To find out if the proposed theoretical model would apply to a wide range of narrative visualizations, we analyzed 20 narrative visualizations containing multiple transitions each (TODO:get the precise numbers).

#### Selection of examples

The test the proposed model, we have applied it to a collection of transition techniques commonly found in narrative visualization. We have started by compiling a corpus of narrative visualizations from online sources. The corpus combines two collections from other authors [@Riche-18:datadrivenstorytelling, @Mckenna-17:visualnarrative] and our examples. The corpus thus includes 144 narrative visualizations published between 2008 and 2019 by a variety of news organizations as well as individuals.

In a first step, we excluded stories that were not focused on data visualization. These include for example infographics and scrollytelling stories that were in the corpus because they were important in McKenna et al.'s [@Mckenna-17:visualnarrative] work. On the other hand, some examples only contained a single visualization and no transition. We also excluded certain examples based on media type for practical purposes: everything in flash and all the videos. Finally, we excluded everything that was not accessible anymore. After this first round of filtering, 79 examples remained.

From these, we selected a subset of 20 to reduce the workload of the analysis.

#### Analysis

For each example, a screenshot of each chart was pasted on a canvas in order. First, we identified the characters in the first screenshot. For each transition, we annotated if the characters, scene or context changed from the previous state and how it changed. This was usually straightforward which was an encouraging sign. Finally, we unified very similar transitions into 10 categories.



### Transition types {#sec:corpus-analysis}

#### Explore attributes

![Two examples of transitions exploring different attributes of the same characters. On the left side from a story of TODO and on the right side a story of TODO  \label{technique-diffent-measure}](/Users/jonas/Desktop/P9/bericht/img/technique-different%20measure.png)

| Characters    | Attributes |
| ------------- | ---------- |
| Stay the same | Differ     |

This is probably the most obvious transition type for storytelling. Here the author explores different aspects of the same character(s). In many cases, this will be done by mapping a different attribute to one of the axes, like on the left side of figure \ref{technique-diffent-measure}. Here the author compares incarceration rates  ![](img/attr.pdf) for black ![](img/char.pdf)and white men ![](img/char.pdf) by the income of their parents ![](img/attr.pdf) in the first chart. In the second, the incarceration rate ![](img/attr.pdf) gets replaced with the percentage of children who are married ![](img/attr.pdf). To show that you are more likely to get incarcerated and less likely to get married when you are from a black family.

Note how the character changes technically between the two states as its first "black men" and after that "black men and women". This will likely get unnoticed by a majority of the readers by design. Choosing the same colors for semantically very similar character shows that the author intended them to be perceived as "the same".

The example on the right side of figure \ref{technique-diffent-measure} shows two interesting things: characters need not be explicit and characters can stay the same between chart types.

In the first chart, the characters are not identified by the author but emerge from the visualization through a combination of *identification through visual statistics* and *implicit identification* (see section [-@sec:comparison]). More specifically the reader will perceive two clusters of very different color on the map. If she has some knowledge about the geography and history of Germany, she will identify them as Former East  ![](img/char.pdf) and West Germany ![](img/char.pdf).

These characters are named in the next state. In contrast to the example on the left, the second chart here is completely different from the first. While the first depicts a map, the second is a time-series chart. Nonetheless, the transition is still between two characters showing different attributes (daycare ![](img/attr.pdf)and children per women ![](img/attr.pdf)) for the same characters.

The corresponding transition in Hullman et al. is a *measure walk*. [@Hullman-13:deeperunderstanding] A congruent *animation* for this type of transition is morphing a character's shape in the first chart into its shape in the second chart. The cognitive load of this transition is principally defined by the attribute change.



#### Contrast characters

![technique-contrast \ref{technique-contrast}](/Users/jonas/Desktop/P9/bericht/img/technique-contrast.png)

| Characters | Attributes    |
| ---------- | ------------- |
| Differ     | Stay the same |

We call this technique contrasting because it highlights the difference between characters. It's typical for these transitions to keep the same layout between two states and just switching characters. Only like this, a visual comparison is possible. This is the case for the example on the right in figure \ref{technique-contrast}. The income gap between black ![](img/char.pdf) and white men ![](img/char.pdf) becomes very clear in comparison to the obvious lack of the gap for women ![](img/char.pdf) when plotted in the same coordinate system.

But also in contrasting transitions, there is subtlety as visible on the left side of figure \ref{technique-contrast}. Here the x-axis is being shifted between the states. But the shift has no other reason than saving space. It may take a little more effort from the reader to understand that the first chart shows states that have below-average proportions ![](img/attr.pdf)  of women and the second chart shows states that have above-average proportions ![](img/attr.pdf) of women. Yet this *pan* (see section [-@sec:param-classification]) could have been left out without changing the interpretation of the transition at all. This leads us directly to the next technique: *Reconfigure*.

The corresponding transition in Hullman et al. is a *dimension walk*. [@Hullman-13:deeperunderstanding] A congruent *animation* for this transition would be fading out the characters from the previous chart and fading in the new characters. The cognitive load of this transition is defined by the number of characters that need to be compared.



#### Reconfigure

![\label{technique-reconfigure}](/Users/jonas/Desktop/P9/bericht/img/technique-reconfigure.png)

| Characters    | Attributes                                                   |
| ------------- | ------------------------------------------------------------ |
| Stay the same | Stay the same but get remapped to different visual variables |

The defining characteristic of this transition is, that no new information is shown from the first to the second states. The information is just shown in a different way to clarify different aspects. The left example in figure \ref{technique-reconfigure} first shows the reader just how much the cases of measles have been  reduced through vaccination. It then *zooms* in on the portion of the chart showing the cases in recent times. They were too small to be visible in the first chart but technically present. This sort of transition is a good replacement for a log-transformed axis which few people understand anyway (TODO:source)

The right example in figure \ref{technique-reconfigure} shows a more drastic reconfiguration of a map into a scatterplot. While the first chart makes it easy to see how for example the south of Italy is underdeveloped and while the north is above average, the same split can be found in the scatterplot when hovering over the dots, representing the individual regions of Italy. Conversely, the ranking and uniformity of countries can be extracted through visual statistics ([-@sec:comparison]) from the first chart. It's just much, much clearer in the second.

Reconfigure subsumes the *pan*, *zoom*, *reorder* and *visualization change* transitions from visualization-oriented transitions (see section [-@sec:param-classification]). We have not found reconfigure transitions to be common enough in narrative visualization to deserve further specification into these subcategories. Still, the subcategories have some use when considering trying to define what a congruent *animation* for this transition might look like. A discussion can be found in [@Heer-07:animatedtransitions and @Isaacs-18:tableaumotion]. Regarding cognitive load, our model does not make any prediction for this type of transition. But our experiment indicates that it can be quite high (see section [-@sec:results-stories]).



#### Split characters

![technique-split](/Users/jonas/Desktop/P9/bericht/img/technique-split.png)

| Characters                                       | Attributes    |
| ------------------------------------------------ | ------------- |
| Visible characters are split into sub-characters | Stay the same |

As described in ([-@sec:our-model]l) characters need not be atomic units. Groups of similar characters can be perceived as a character themselves. But sometimes the author wants to convey how characters in a group differ from each other and thus how homogeneous a group is.

Splitting characters is an essential device in narrative visualization because it nicely fits the general-to-specific pattern often used in storytelling (TODO:source). When splitting characters, the attributes will usually stay the same to serve as a frame of reference. A kind of shadow or contour of the "parent"-group will often remain too for reference. This is the case for both examples in figure \ref{technique-split} one who splits measles cases by states ![](img/char.pdf)  and years ![](img/attr.pdf) and one who splits European countries ![](img/char.pdf) into regions ![](img/char.pdf).

Splitting characters is what Hullman et al. [@Hullman-13:deeperunderstanding] call a *general-to-specific* transition. As it typically happens "in-place", a congruent *animation* might be fading in the sub-characters while fading out the parent.

This transition helps reduce cognitive load by supporting the creation of a schema in the reader's mind.



#### Merge characters

![technique-merge](/Users/jonas/Desktop/P9/bericht/img/technique-merge.png)

| Characters                    | Attributes    |
| ----------------------------- | ------------- |
| Visible characters are merged | Stay the same |

Where there is splitting, there needs to be merging. But merging is conceptually more complicated than splitting. Splitting shows more information in the second chart while merging summarizes information from the first chart. In the second case, it is much more important for the reader to understand the summary operation that is being used. Is the new character the mean, the sum or even the difference of the characters previously seen? Both examples in figure \ref{technique-merge} illustrate this problem very well. Visually, the natural factors ![](img/char.pdf) presented in the second chart could very well be the mean of volcanic ![](img/char.pdf) , solar ![](img/char.pdf) and orbital change ![](img/char.pdf). But it's actually the sum. In the second example, the pink bars might well represent the sum of the dots on the left but it's actually the difference. TODO:[@Kim-19:designinganimated]

Although merging is complex it can be very useful for a storytelling approach that has been called *ladder of abstraction*-storytelling[@Victor-11:ladderabstraction]. It starts with very concrete, down to earth characters (like volcanoes ![](img/char.pdf) or skill importance ![](img/char.pdf) ) and moves "up" towards more abstract concepts (like natural factors ![](img/char.pdf)  or skill importance difference ![](img/char.pdf) ).

Hullman et al. [@Hullman-13:deeperunderstanding] call this transition *specific to general*. Similar to *split characters* it should help reduce cognitive load by explicitly showing a schema that can be used to organize the information into long term memory. 

#### Highlighting

![\label{technique-focus}](/Users/jonas/Desktop/P9/bericht/img/technique-focus.png)

| Characters        | Attributes    |
| ----------------- | ------------- |
| Get filtered down | Stay the same |

This technique again serves the very common *general-to-specific*-pattern (TODO:source). It focuses the reader on a specific character or a special group of characters. The most common way to do this is by hiding the other characters. An example of this can be found in the right example in figure \ref{technique-focus} where all the second chart only shows Hungary ![](img/char.pdf) from all the EU countries ![](img/char.pdf). In the example on the left side of figure \ref{technique-focus} the transition hides the other age groups ![](img/char.pdf) to highlight the 25 to 44 group ![](img/char.pdf) . Many other ways of highlighting one character are imaginable.

This transition reduces cognitive load by reducing the number of characters that need to be considered.



#### Progressive disclosure

![\label{technique-disclosure}](/Users/jonas/Desktop/P9/bericht/img/technique-disclosure.png)

| Characters                           | Attributes    |
| ------------------------------------ | ------------- |
| More or more of them becomes visible | Stay the same |

Similar to split and merge, this is the counterpart of highlighting. And equally, to merge it is a useful device for *ladder of abstraction*-storytelling. [@Victor-11:ladderabstraction] One version of this technique introduces new characters in the second chart as seen on the right in figure \ref{technique-disclosure}. Another variant shows more of the same character(s) in the second chart. The example on the left shows more and more of the course of the game between the Miami Heats ![](img/char.pdf) and the Houston Rockets ![](img/char.pdf) with each transition.

A particular case of progressive disclosure is what Hullman et al. call *spatial transitions*. A story might, for example, explore the mountainous terrain of the Alps and disclose more and more of it with each transition. 

What is congruent for progressive disclosure depends on the question if more characters are disclosed or more of the characters is disclosed. In the first case, a simple fade-in of the new characters is the most congruent. In the second case, some sort of movement is typically used.

Progressive disclosure lightens the burden on working memory by splitting information into chunks that are shown one after the other.



#### Context

![technique-temporal](/Users/jonas/Desktop/P9/bericht/img/technique-temporal.png)

| Characters     | Attributes    |
| -------------- | ------------- |
| Stay the same* | Stay the same |

The interest of the context transition is to show how the "situation" (the form of characters according to the same attributes) changes when the context changes. The most common case is comparing the situation at different points in time. In the right example in figure \ref{technique-temporal}, the author wants to convey how China ![](img/char.pdf) made up most of the world's poor ![](img/attr.pdf) in the 90s and is now home to a large part of the worlds middle class ![](img/attr.pdf) .

The example on the left shows how a changing context may lead to a change in characters. Here the formerly single large administrative region around Budapest ![](img/char.pdf) has split into the rich Budapest ![](img/char.pdf) and the poor Pest ![](img/char.pdf) (notice how poor Pest only gets half of the name).

Hullman et al[@Hullman-13:deeperunderstanding] identified the very prevalent change in temporal context but did not generalize it. As contexts contain groups of characters, they can become characters themselves at certain points of the story. That is why *context* transitions have a close relationship to *contrasting character* transitions and the distinction is not always 100% clear. Their cognitive load is related to the changes in character as well as the two contexts that need to be kept in working memory.



#### Semantic field

![technique-semantic](/Users/jonas/Desktop/P9/bericht/img/technique-semantic.png)

| Characters | Attributes |
| ---------- | ---------- |
| Differ     | Differ     |

This is probably the hardest transition for readers to follow as none of the elements are shared between the charts. The only thing that connects the two charts is that their characters come from the same field of concepts as described by Cohn [@Cohn-12:peanuts]. The reader, therefore, needs to move up in the conceptual hierarchy to find the relationship between the characters depicted.

*Causal* and *Question & answer* transitions identified in Hullman et al. [@Hullman-13:deeperunderstanding] would fall into that category. Because nothing is shared between the two states, there is no possible congruent *animation*. Similarly, our model gives no indications about the complexity of such a transition because comparison happens at a higher level than characters and attributes.



## Discussion

In our analysis of narrative visualization we have found three transition types that introduce elements to working memory via characters and attributes (*explore attributes*, *contrast characters*, *context*) and four transition types that are being used to reduce working memory load by highlighting and chunking (*split characters*, *merge characters*, *highlight*, and *progressive disclosure*). The third way to reduce cognitive load is maintaining *object constancy*. Animation said to have this effect and will be discussed in the next chapter.



# Animation {#sec:animation}

Animation has been portrayed to provide many benefits to UX-design in general and visualization design in particular. Chevalier et al. [@Chevalier-16:animations25] have identified 23 different "purposes" of animation in visualization. Things like "Staying oriented during navigation" or "Hooking the user" which are finally classified into five meta-classes. Although this overview shows the popularity of animation in today's practice, it does not discuss any evidence that animation *actually* serves the given purposes.

To understand why designers might think that animation helps in these specific circumstances, we have mapped some lower-level "strengths" of animation described in Heer et al. [@Heer-07:animatedtransitions] to all each of the purposes (see figure \ref{animation-purposes}).

![The purposes of animation found by Chevalier et al. [@Chevalier-14:notsostaggeringeffect] each employ one or more of the strenghts of animation.\label{animation-purposes}](/Users/jonas/Desktop/P9/bericht/img/animation-purposes.png)



### Object constancy ![](img/A.pdf) {#sec:object-constancy}

Object constancy describes the ability to identify two objects as being the same entity between two states.  This is probably the strength most often invoked for animation [@Chalbi-18:understandingdesigning, @Wu-16:graphicalperception, @Bederson:doesanimation, @Heer-07:animatedtransitions] It is also closely related to the previously presented model (section [-@sec:our-model]) and *characters*. If animation indeed supports object constancy, it would simplify the *location* of the target in the second state (see section [-@sec:comparison]) and this simplifies the essential comparison task.

### Attract attention ![](img/B.pdf) {#sec:attract-attention}

Movement very strongly attracts attention. This view is undisputed in the literature [@Munzner-15:visualizationanalysis, p. 238] and there is some solid evidence that motion is more effective in highlighting elements than other visual means [@Ware-04:motionsupport] This ability to highlight elements can be very useful for storytelling. But it also poses the risk to distract the reader from important, non-moving elements of a visualization like axes or labels.

### Communicate causality and intentionality ![](img/C.pdf) {#sec:causality}

In nature, we observe a certain smooth flow of cause and effect. When a rolling billiard ball hits another, the second ball will smoothly continue its transition. This leads to the intuition that smooth animation would imply some sort of cause and effect relationship (see section [-@sec:congruence]). This is true when depicting naturalist phenomena like the formation of lightning. [@Betrancourt-08:displaykey] Other authors have found that animation also conveys causality in more abstract displays but that it doesn't perform better than symbolic depictions of causality. [@Kadaba-07:visualizingcausal]

### Engage ![](img/D.pdf) {#sec:engage}

Multiple authors have remarked how readers were "excited" about animation in interfaces and that it thus led to higher engagement [@Tversky-02:animationcan, @Heer-07:animatedtransitions] The ability of animation to engage and excite is often presupposed based on anecdotal evidence. But few studies have used validated questionnaires to explicitly measure engagement. One study who did found very mixed results [@Amini-18:hookeddata]. In their findings animation only led to higher engagement when coupled with pictorial representations of data. The main factor that led to higher engagement was "Aesthetics".  We suspect that in many cases there might be a "novelty" effect of animation that excites readers. There is little evidence that yesterdays fashionable animation still leads to higher engagement today. Furthermore, the novelty effect might lead readers and designers astray and they might confuse their positive feelings with actual benefits for understanding.[@Hassenzahl-10:inferenceperceived, @Baudisch-06:phosphorexplaining]

### Data encoding ![](img/E.pdf)

Similar to color or shape, motion can be used to encode data. Although the precision in interpreting it is very limited. [@Munzner-15:visualizationanalysis, p. 95] This property of animation is not listed in Heer et al. but we have decided to include it because it is well studied and forms the basis of multiple of the purposes listed by Chevalier et al. [@Chevalier-16:animations25]



## Congruence {#sec:congruence}

![Congruence as defined by Tversky et al. [@Tversky-02:animationcan] means that the representation should correspond to the concepts that are conveyed. Apprehension means that the representation should be accurately perceived.](/Users/jonas/Desktop/P9/bericht/img/congruence-apprehension.png)

The question if animation is a natural fit for certain types of transitions has been described as the principle of *congruence* in  [@Tversky-02:animationcan, p. 247]:

> Effective graphics conform to the Congruence Principle according to which the content and format of the graphic should correspond to the content and format of the concepts to be conveyed.

According to this view, showing *change over time* would be a congruent use of animation. The reasoning is that people perceive change over time as smooth transitions in their everyday lives. One study accordingly found that animation reduced the perceived cognitive load when showing change in networks. [@Bach-14:graphdiariesanimated] Other authors have not found such benefits [@Tversky-02:animationcan] naming a lack of *apprehension* as the potential reason.

The second natural fit for animation are *viewport changes* like *pan* and *zoom*. These correspond to a person's natural movements through space, getting closer to objects, looking around, etc. Animated transitions have indeed been found to be superior to static transitions for *panning* [@Shanmugasundaram-07:cansmooth] as well as *zooming*. [@Shanmugasundaram-08:effectanimated]

As previously discussed, animation has also been shown to be congruent for communicating causality and intentionality (see section [-@sec:causality])

![\ref{Amini-18-hookeddata}](/Users/jonas/Desktop/P9/bericht/img/Amini-18-hookeddata.png)

Interestingly, multiple authors found that animation seems to be far less effective when used with abstract representations than when it is used with iconic representations. Amini et al. [@Amini-18:hookeddata] found that animated transitions in data visualization only led to higher engagement when coupled with iconic representations (see \ref{Amini-18-hookeddata}). A recent meta-analysis [@Berney-16:doesanimation] of 50 studies on animation and its effect on learning found, that animation only benefitted knowledge acquisition when used with "iconic representations" of the phenomena the needed to be studied. No effect was found for abstract representations.

We believe that congruence is strongly linked to object constancy. Animations will, therefore, fail in abstract visualizations because they are not being used to establish object constancy. Looking at transitions as following characters through multiple states, exploring their attributes and contrasting them as proposed in our perception-based classification (see section [-@sec:our-model]) should help designers look at transitions in terms of object constancy. Which will lead to more congruent animation. Heer et al. also warn against the risk of misusing object constancy [@Heer-07:animatedtransitions, p. 1240]:

>  Object constancy can be abused if an object is transformed into a completely unrelated object, establishing a false relation.

But even when the use of animated transitions is congruent, it may still fail to provide benefits over static
transitions because of a lack of apprehension. [@Tversky-02:animationcan]

## Apprehension

Tversky et al. describe the apprehension principle like this [@Tversky-02:animationcan, p. 247]:

> … graphics should be accurately perceived and appropriately conceived.

Heer et al.[@Heer-07:animatedtransitions] define six design principles for animated transitions to improve apprehension: *similar transforms should be grouped*; *trajectories should be predictable*; *transformations* should be *simple*; to simplify complex transformations, *staging* should be used and the transition duration should be *long enough* to follow (but not longer). Although these principles seem to make sense intuitively, research on visual perception has shown to produce unintuitive results.

### Visual tracking

Research on visual tracking explores how people track objects when the objects are moving. Participants typically have to track the position of several individual objects (circles or rectangles) or a group of objects under different conditions. These experiments have revealed several, sometimes surprising, properties of the human perception:

*Animation speed*: Higher animation speeds do not strongly influence tracking ability. [@Franconeri-10:trackingmultiple]   

*Distance traveled*: Longer distances traveled make objects harder to track [@Franconeri-10:trackingmultiple]  

*Number of objects*: In typical situations, four objects can be tracked in parallel. [@Yantis-92:multielementvisuala]

*Unpredictable paths*: Have only a minimal impact on tracking performance. [@Chevalier-14:notsostaggeringeffect]

*Occlusion*: Doesn't impair tracking when it can be interpreted as "one object disappears" behind another [@Scholl-99:trackingmultiple]

*Crowding*: When objects that need to be tracked get close to each other, tracking performance is impaired.  [@Chevalier-14:notsostaggeringeffect]

*Multiple objects are tracked as one convex area*: Deformation of this area as well as distractors entering the convex area lead to impaired tracking performance. [@Yantis-92:multielementvisuala, @Chevalier-14:notsostaggeringeffect]

The last point also illustrates an important distinction in visual tracking tasks. Results are often different for cases where the identity of single objects needs to be tracked (*identity tracking*) or when a group of objects needs to be tracked (*group tracking*). In the example above, *group tracking* is worse when distractors enter the convex area formed by the objects of the group. *Identity tracking*, on the other hand, gets better in this case. [@Chevalier-14:notsostaggeringeffect]

Multiple design approaches have therefore been proposed to increase apprehension.

### Staggered animation

![In staggered animation, some objects start to animate only with a delay. ](/Users/jonas/Desktop/P9/bericht/img/staggering.png)

Staggered animation delays the start time animations incrementally for some objects. An example: out of 7 objects, 4 will start to move right away, 3 other objects will start to move only a bit later. The delay between the starts is called *dwell*. A dwell of zero means no staggering.

Staggered animation has been proposed to *reduce occlusion* as well as *complexity* during animation and therefore lead to a higher tracking performance  [@Heer-07:animatedtransitions]  but the effect is negligible. [@Chevalier-14:notsostaggeringeffect]

### Staged animation {#sec:staged-animation}

Staged animation splits complex animations between multiple visual variables into stages. An animation then interpolates between positions as well as between two colors, might, for example, be split into two animation stages. One where the objects move from position a to position b. Another, where they change color.

Heer et al. explicitly recommend the use of staged animation [@Heer-07:animatedtransitions] even though they found only modest benefits. In situations where staging led to complex and long animations, the authors found it even detrimental for tracking performance. This is also what cognitive load theory would predict because long, uninterrupted multi-stage animation will introduce elements into working memory but not leave the viewer time to organize them into long term memory. Her working memory will therefore overflow and she will forget what she had seen before.

### Animation duration

Multiple authors observe that the duration of animation has a major impact on perception. [@Shanmugasundaram-07:cansmooth] Animation that is too slow is strongly disliked by readers.[@Baudisch-06:phosphorexplaining] Others counter that very fast animation might lead to higher error rates [@Heer-07:animatedtransitions]. This assumption has been refuted by Franconeri et al. [@Franconeri:2010ela] who showed that higher speeds have no impact on tracking performance when the distance between objects stays large enough.

### Direct manipulation

Readers typically perform better at recall and problem solving, when they can control animation themselves. Multiple authors have shown this for cases where readers could start and stop animated transitions [@Chan:2005vx],[@Hasler:2007]. But here too, it is hard to separate different effects. Tversky et al. point out, that interaction has been shown to benefit learning in itself and just happens to be coupled with animation often. [@Tversky-02:animationcan]

### Easing

John Lasseter in his classic paper on the principles of computer animation [@Lasseter-87:principlestraditional] describes that animators developed a preference for "slow-in-slow-out" over linear easing over time. This recommendation has been confirmed in more formal experiments. [@Dragicevic-12:temporaldistortion]

Most of these examples show how perceptual properties, which are often not intuitive in their most basic forms, interact to form phenomena which are very hard to generalize in real-world applications. The only things that seem pretty sure from the literature are that optimal animations should be short, user-controlled and involve no more than four objects.



## Unfair comparisons

Some studies who have reported benefits of animated transitions have been criticized for involving "unfair comparisons". [@Tversky-02:animationcan] The animations presented contained information that was not easily deducible from the non-animated transitions.  Tversky et al. [@Tversky-02:animationcan, p. 251] put it like this:

> Showing that students learn material better when it is presented than when it is not presented should not be a goal of empirical research.

Fair comparisons, in contrast, need to identify *informationally distinct* states very clearly and show them not just in the animated scenario but also in all the scenarios they are compared to. Tversky et al. find that in these experiments, purported benefits of animation often fail to materialize.



## Research hypotheses {#sec:hypotheses}

We wanted to find out if the purported benefits of animation would apply to transitions in narrative visualization. More concretely if the following hypothesis would hold:

#### H1: Relationship

Based on the findings that animation can communicate causality and intentionality (see section [-@sec:causality]), we believe that animated transitions might imply a relationship in a more general sense. We hypothesize that animated transitions will more often lead participants to assume a relationship between two charts.

#### H2: Causality

Extending H1, we believe that when readers assume a relationship between two charts, they will more often conclude that the relationship is causal when the transition is animated.

#### H3: Cueing

Animated transitions will focus the reader on the characters the author intended because it attracts attention (see section [-@sec:attract-attention]). This will lead them to more often interpret the relationship between the charts as the author intended and to talk about the characters the author wants.

#### H4: Object constancy

Animated transitions will support object constancy in situations where only one of the charts is shown at a time. The effect will vanish when both charts are shown at the same time.

#### H5: Engagement

Readers will be more engaged by the visualizations with animated transitions.



# Experiment {#sec:experiment}

To test the above hypotheses, we have conducted an experiment which will be described in the following sections.



## Setup

  ![experiment-setup.pdf](img/experiment-setup.pdf) 

The experiment was conducted on Amazon Mechanical Turk [@:amazonmechanical] and had 56 participants. After an introductory screen that explained the task, the participants saw 10 screens with 8 mini-stories from two continuous narrative visualizations. Each story was introduced through an initial single chart followed by 4 mini-stories with two charts each. At the end of each mini-story, a questionnaire that asked about their conclusions and their perceived engagement was displayed. After the two stories, we presented a final survey and finally displayed an answer code to verify their participation in the experiment. We paid each participant a fixed amount of USD 9 for completing the experiment. On average, participants took 52 minutes to complete the experiment. This results in a mean hourly wage of USD 10.40 with a minimum of USD 5.56 for the slowest participant and eight participants being paid less than the minimum hourly wage for the U.S. (7.25 USD).

 ![results-duration.pdf](img/results-duration.pdf)

## Overview {#sec:experiment-overview}

Before we will go on to discuss the specifics of the experiment, we will present the stimuli. Each of the mini-stories contained two charts and a transition between them. For one of the stories, this transition was *static*, for the other it was animated to have a full within-subject design. In a static transition, the participant would initially see the first chart. Upon scrolling, it would be replaced by the second chart. When scrolling further, the questionnaire would appear. Animated transitions did not simply replace one chart with the other but showed an animation for a certain scrolling distance. Participants could freely control transitions and animations through their scrolling. They could also scroll back up while answering the survey.

### Mortality

The first story is about the evolution of mortality rates in the U.S. It is a modification of an article published by Bloomberg in 2014.[@Klein-14:howamericans]

#### Mortality A {#sec:mortality-a}

![mortality-demographics](/Users/jonas/Desktop/P9/bericht/img/mortality-demographics.png)

The first mini-story in the mortality story moves the reader through a semantic field. It begins with a chart showing how the population ![](img/char.pdf) has gotten older ![](img/attr.pdf) over time ![](img/attr.pdf) . The following chart shows how the mortality rates ![](img/attr.pdf) of both genders ![](img/char.pdf) have been reduced drastically over the same period. The transition thus conveys how reducing mortality rate leads to an aging population. The transition is animated by merging all the age groups into the grey "Everyone"-line and shows the lines for men and women subsequently.

#### Mortality B {#sec:mortality-b}

![mortality-absolute](/Users/jonas/Desktop/P9/bericht/img/mortality-absolute.png)

The second mini-story contrasts the mortality rate ![](img/attr.pdf) of different characters ![](img/char.pdf) . It starts with the last chart from the previous transition showing the mean mortality rates for "Men" ![](img/char.pdf), "Women" ![](img/char.pdf) and "Everyone" ![](img/char.pdf). This is contrasted to the evolution of the mortality rates ![](img/attr.pdf) of different age groups ![](img/char.pdf). From this mini-story, the reader learns that the mortality rate is dominated (unsurprisingly) by elderly people. An apparent slowdown in mortality rate reduction in the first chart is therefore mostly due to to the development in the "Over 84" group. In the animated transition "Men" and "Women" characters are first hidden, the "Everyone" character is being split and morphed into the different age groups.

#### Mortality C {#sec:mortality-c}

![mortality-relative](/Users/jonas/Desktop/P9/bericht/img/mortality-relative.png)

Again, this mini-story starts with the last chart of the previous mini-story. In the second chart, the same data is shown but with the mortality rate of each character normalized to its rate in 1968. Thanks to this it becomes apparent that even though the elderly have made the most progress in absolute numbers, the relative reduction is highest for younger age groups. This transition is animated by morphing each character into its new shape.



#### Mortality D {#sec:mortality-d}

![mortality-causes](/Users/jonas/Desktop/P9/bericht/img/mortality-causes.png)

Some readers might have wondered why the mortality rate for "25–44" year olds ![](img/char.pdf) was rising  at the beginning of the 90s. This mini-story introduces their causes of death ![](img/char.pdf) in the second chart which quickly answers the question: it was precisely at this point that the AIDS-epidemic was at its peak and has most strongly affected this age group. The animation first hides all the other age groups, splits the "25–44"-line and morphs it into the different causes of death.



### Energy

This story talks about the evolution of energy sources in the U.S. since the beginning of the century. It combines a story from the New York Times  [@Popovich-18:howdoes] with one from Forbes [@Mahajan-18:plungingprices].

#### Energy A {#sec:energy-a}

![energy-A](/Users/jonas/Desktop/P9/bericht/img/energy-A.png)

The energy story starts by showing the evolution of different energy sources ![](img/char.pdf) in the U.S in absolute numbers ![](img/attr.pdf). In the second chart, it shows how the proportions ![](img/attr.pdf) have changed over time. From comparing the two charts it becomes clear that while the absolute output has either risen or stagnated, coal has been used significantly less while the focus seems to be shifting to natural gas and the renewables. The animated transition morphs the lines into their respective areas in the second chart.

#### Energy B {#sec:energy-b}

![energy-B](/Users/jonas/Desktop/P9/bericht/img/energy-B.png)

As in the mortality narrative, the second mini-story starts with the last chart from the previous mini-story. In the second chart, it shows how wind ![](img/char.pdf) has become a major energy source ![](img/char.pdf) in certain (great plains) states ![](img/char.pdf) . The transition leads to the conclusion that, although the rise of wind energy looks unspectacular on a national scale, growth has been exponential in some places. The animation first hides everything except the area for "wind" which is then split and morphed into the lines of the individual states.

#### Energy C {#sec:energy-c}



![energy-C](/Users/jonas/Desktop/P9/bericht/img/energy-C.png)

The third mini-story focuses on the strange stagnation of wind energy ![](img/ctxt.pdf) in California ![](img/char.pdf) after 2013. To find out where the focus might have shifted, the second chart shows the energy mix of California ![](img/ctxt.pdf) over time ![](img/attr.pdf). A marked rise in solar power ![](img/char.pdf) after 2013 implies that the state has decided to invest in this renewable instead of wind ![](img/char.pdf). The animation first highlights California and then expands it into the other sources.

#### Energy D {#sec:energy-d}

![energy-D](/Users/jonas/Desktop/P9/bericht/img/energy-D.png)

Finally, this transition explores one of the possible reasons for Californias ![](img/ctxt.pdf) decision to focus on solar energy from 2013 on. The second chart shows the price evolution ![](img/attr.pdf) of different energy sources ![](img/char.pdf). While wind energy ![](img/char.pdf) has been consistently inexpensive, the price of solar power ![](img/char.pdf) has fallen substantially over time. It even reached the price level of wind energy in 2013. Which implies that Californias focus on solar rather than wind energy might have economic reasons. The animation morphs the areas representing the share of different energy sources into the line showing its price evolution.



## Independent variable and conditions

(TODO:illustration of the different transitions)

The main concern of the experiment was finding differences between *animated* and *static* transitions. We, therefore, chose this to be the independent variable. We counterbalanced for some of the confounders like *topic* and visualization *design* by using the two different stories with difference designs presented before. This has resulted in the following within-subject design:

| Condition 1                             | Condition 2                               | Condition 3                               | Condition 4                             |
| --------------------------------------- | ----------------------------------------- | ----------------------------------------- | --------------------------------------- |
| Mortality story with static transitions | Mortality story with animated transitions | Energy story with static transitions      | Energy story with animated transitions  |
| Energy story with animated transitions  | Energy story with static transitions      | Mortality story with animated transitions | Mortality story with static transitions |

By its nature, each story consisted of several different transitions but we did not counterbalance them.

Initially, we intended to include another independent variable to more thoroughly test H4. This independent variable compared two different layouts: *superposed* and *juxtaposed*. The usual case for animated transitions in narrative visualization is that only one chart is visible at a time, which corresponds to a *superposed* layout. We believe that help with maintaining object constancy is only needed in this case. In the case where both charts are presented next to each other (*juxtaposed*) animation would rather be a distractor than a help and the number of participants who would interpret the relationship correctly would be lower for the animated transition.

Finally, we decided to exclude this variable from the current experiment because it would have required two more stories for a within-subject design or an order of magnitude more participants to achieve the desired statistical power. For both of these, we lacked the resources.

Before each story, we added a screen that simply showed the initial chart of the first mini-story and asked the participant to report on her understanding of this single chart. This was to account for the fact that for mini-stories B to D, the participants had already seen the first chart in the previous mini-story and we did not want mini-story A to be an exception in this regard.

## Dependent variables

To test the hypotheses described in section [-@sec:hypotheses], we have established several measures. A part of them was based on the answers the participants gave to a questionnaire that was displayed at the end of each mini-story. We have included the whole questionnaire in the supplementary material.

#### H1: Relationship

After they had seen both charts, we asked participants what they concluded from them. If in their answer, they wondered, thought or assumed that something from the first chart was somehow related to something in the second chart, we coded the **relationship** measure as 1, otherwise as 0.

#### H2: Causality

Whenever the participant perceived a relationship, we also coded if she indicated causality. If the participant used words like *due to*, *caused*, *because*, *led to* or similar, we coded a measure **causal** to be 1; 0 otherwise.

#### H3: Cueing

If animation has a cueing effect, it should focus the participant on certain characters. One first effect that we predict is that this will lead people to mention fewer characters in their conclusions. During the coding phase, we, therefore, counted the **number of characters mentioned**. We not only included characters that were directly visible but also groupings of characters like "green energy sources" to count as one. 

Secondly, we predicted that guiding the reader's attention to the characters the author intended would lead participants to interpret relationships according to what the author wanted to convey. We called this measure "**correct relationship**". Whenever we found the mention of a *relationship* during the coding, we compared it with the story the author wanted to tell (see section [-@sec:experiment-overview]). When the participant came to the same conclusion, we coded this measure as 1 and otherwise as 0.

#### H4: Object constancy

If animated transitions would support object constancy, participants would need fewer transitions to come to their conclusion because their cognitive load would be reduced. We, therefore, measured the **number of transitions** between the two charts. When the transition was animated the participants needed to cross the 10% and then the 90% threshold successively (or the inverse) to be counted as one transition. 

#### H5: Engagement

The literature suggests that animated transitions will lead to higher reader engagement. To measure this, we have used a subset of the validated *user engagement scale* questionnaire. The scale measures multiple attributes like *focused attention*, *perceived usability*, *aesthetics* or *reward* that together form what is known as *engagement* in the literature. [@Obrien-18:practicalapproach] But even the short questionnaire contains twelve questions which would have been too long to ask after each transition. We, therefore, decided to use a sub-scale of the *user engagement scale* that measures **focused attention**. The reason to use *focused attention* was that it was found to be the factor that explained most of the variance in O'Brien et al.'s analysis [@Obrien-18:practicalapproach] Also, the questions skew towards the positive (compared to the other option, *perceived usability*) and we did not want to negatively prime the participants.

We considered **word count** to be another proxy for engagement. As the participants were in a task-oriented setting, we generally expected them to not lose their time with long answers. If answers turn out to be considerably longer in one of the scenarios, we assumed that it was because it engaged them.



### Other factors considered

#### Screen size

To exclude effects that would result from differences in layout and element size, the experiment was designed for a fixed viewport size of 1280px × 720px. Participants with viewports that were smaller than this were blocked from the experiment.

#### Browser capability

Equally, participants with browsers that did not support the technologies we used for the animated transitions were blocked from the experiment. This had the positive side-effect of equally blocking slower browsers.

#### Age

In the final survey, we asked the participants about their age to better understand the diversity of the population that was participating in the experiment.

#### Gender

We equally asked the participants about their gender in the final survey to help us understand how diverse our population was.

#### Level of education

Also asked in the final survey, this would act as a rough proxy for visualization understanding. We assumed certain outliers might potentially be explained by a low level of education.

#### Vision

Equally, if the participants reported weak and uncorrected vision, we could potentially exclude them from the analysis if we found that the factor skewed the results.

#### Colorblindness {#sec:colorblindness}

![experiment-colorblindness](/Users/jonas/Desktop/P9/bericht/img/experiment-colorblindness.png)

A final criterion we considered for explaining outliers was color blindness. We did not ask participants to report on their colorblindness because not all people who are colorblind know about it. Instead, we presented them three plates from the Ishihara colorblindness test  [@Ishihara-17:ishiharatest]. The plates we have selected, tested for red-green blindness. The most common form of colorblindness, that affects about 8% of men and 0.4% of women. [@-19:colorblindness]



## Visualization design

### Story selection {#sec:story-selection}

Selecting or designing the stories was one of the most delicate parts of the experiment design. The characters and the broader context needed to be familiar to a wide audience because visualization interpretation is highly dependent on context knowledge (compare sections [-@sec:narr-vis] and [-@sec:comparison]) and the experiment did not provide an introduction to the topic. A story on paratransit (a special means of transport for disabled people in the U.S.) for example, was initially planned to be included but was soon removed because the topic was not familiar to most people.

The stories also had to avoid highly controversial topics because we feared that implicit reader knowledge might interfere with the interpretation of the visualizations (see section [-@sec:comparison]). We have seen this happen in both stories but it was less prevalent than we feared.

Finally, the story needed to be told mainly through the visualizations. This turned out to be to most constraining factor. In most existing narrative visualization we have found, that the textual narration was essential to understand the story. The story on the evolution of mortality[@Klein-14:howamericans] was chosen exactly because it contained very little text in its original version. The story about the energy sources was specifically created in a way that we hoped would be self-explanatory with very little text.



### Minimal textual narrative

Textual narrative was excluded from the experiment because it is a huge confounder [@Kong-18:framesslants]. In typical narrative visualization, the story is presented through textual or audio narrative. The visualizations mostly serve to reinforce the point. But, when presented like this, relating the participants answers to any differences in the visualizations would be very difficult. On the other hand, charts are impossible to interpret without at least some text. We, therefore, decided to include labels as well as a chart title. But we made sure that nothing was hinting at a relationship in any of these. Each chart is completely self-contained and provides interesting information even without the other chart.

### Visualization literacy

![\label{experiment-charttypes}](/Users/jonas/Desktop/P9/bericht/img/experiment-charttypes.png)

Previous studies have found that the majority of people are unable to correctly interpret complex visualizations. (TODO:source) According to these authors, the "safe" visualizations are bar charts, line charts, scatterplots and maps (see section [-@sec:vis-literacy]). This finding is supported by our analysis of narrative visualization in section [-@sec:corpus-analysis] who also almost exclusively use these simpler visualizations As we did not want participants to fail because they were unable to read the individual  charts, we have decided to limit the experiment to line charts and stacked area charts. In our pilot studies, these chart types have been "safe", even though the stacked area chart posed problems to some of the participants in the experiment (see [-@sec:experiment-results]). One chart type that was excluded based on pilot data was the *slope chart*. (see \ref{experiment-charttypes} )

### Reader-controlled animation

Another factor to consider was the amount of reader control or interactivity. Prior work has demonstrated positive effects of animated transitions often involved higher levels of interactivity compared to the static transitions. (TODO:source) But interactivity has been shown to have benefits in itself, for example for learning. (TODO:source) All transitions were therefore designed to be totally reader controlled. By scrolling down, readers could advance to the next chart, by scrolling up, they could go back to the previous chart. 

We also tried to avoid discussions about the proper duration of animated transitions by making the animations completely controllable through scrolling. Interestingly we have not found this to be common practice in our analysis of narrative visualizations. The most prevalent case is a fixed-duration animation that is triggered by scrolling to a certain point.

### Animation design

Three different kinds of animated transitions were used throughout the experiment which were all concerned with supporting *object constancy* in different scenarios: 

#### One-to-many

A good example of this case is *Mortality D* ([@sec:mortality-d]). There, the animation needed to convey that the "causes of death" ![](img/char.pdf) in the second chart only concerned the "25–44" year old age group ![](img/ctxt.pdf) . This is done through a *staged transition* (see section [-@sec:staged-animation]). We first highlight the "25–44" year old age group by hiding all the others and then splitting and morphing this character into the different causes of death. The same approach was applied in *Mortality B* ([@sec:mortality-b]), *Energy B* ([@sec:energy-b]) and *Energy C* ([@sec:energy-c]).

#### Many-to-one

This case can only be found in *Mortality A* ([@sec:mortality-a]). Here the different age groups ![](img/char.pdf) are being morphed into a single line that represents "Everyone" ![](img/char.pdf). After the morphing was finished, the characters ("Men" ![](img/char.pdf) and "Women" ![](img/char.pdf)) were shown.

#### Many-to-many

This case is well illustrated by *Energy D* ([@sec:energy-d]) where the marks for proportions ![](img/attr.pdf)  of different energy sources ![](img/char.pdf)  were morphed to represent the price evolution ![](img/attr.pdf) of these same energy sources ![](img/char.pdf). Many-to-many animations are also being used in *Mortality C* ([@sec:mortality-c]) and *Energy A* ([@sec:energy-a]).



### Animated axis interpolation

In the first pilot study, we have included axis interpolation for some transitions according to the principles laid out in. [@Heer-07:animatedtransitions] But they were excluded from the final experiment as they introduced another confounder and were not directly related to the research question. In our analysis of transitions in narrative visualization, we have found several different approaches to animating axis interpolation. A topic that would certainly merit further research.

### Interpolation

![\label{design-interpolation}](/Users/jonas/Desktop/P9/bericht/img/Interpolation.png)

For all interpolations, we implemented “slow-in-slow-out”-easing as recommended in [@Dragicevic-12:temporaldistortion]. For interpolating between colors, we used a perceptually uniform HCL-interpolation because it “intuitively looks right”. [@Sarifuddin-05:newperceptually] Notice in figure \ref{design-interpolation} how RGB and LAB tend to desaturate while HSL and CubeHelix tend to oversaturate, HCL strikes a good balance.



### Design process

To refine the stories and their design, we have applied an iterative design process including user testing as described by Melican. [@Melican-04:userstudies] Each design iteration was implemented and presented to readers who had not previously seen the story. We observed them while they were making sense of the visualizations and asked them what they understood and where they experienced difficulties. While these tests have been very informal, they have again and again uncovered design flaws that were completely obvious in hindsight and led to the creation of a new version of the prototype. 

We observed, for example, that readers typically scrolled much faster than we expected. Knowing how our scrolling controlled animated transitions, we tended to scroll slowly when testing the visualizations. Readers who were unsuspecting were naturally less careful. Based on this observation we made the scroll distances longer and displayed a "Scroll slowly" at the beginning of each page. 

Also, the decision to exclude the slope chart or the decision to highlight the character initially/at the end in one-to-many/many-to-one animations were direct results of user testing. 



## Results {#sec:experiment-results}

### Demographics of the participants

![results-demographics.pdf](img/results-demographics.pdf) 

Because the experiment was conducted on Amazon Mechanical Turk, the participants were quite varied though there was a tendency towards men and younger people. We were surprised that the level of education of our participants was in general quite high. We assume that a lot of people with lower levels of education self-selected out of the experiment. 173 persons saw the initial, explanatory screen but 117 stopped there or after the first few screens. Many probably because they realized that they could not read the visualizations.

The Ishihara plates found three colorblind participants. All of them men. This is close enough to the 8% known in the literature (see section [-@sec:colorblindness]) to assume that the test worked properly.



### Differences between the stories {#sec:results-stories}

![results-stories](img/results-stories.png)

As discussed in section [-@sec:story-selection], one of the main challenges was to design narrative visualizations that a large part of the participants would understand. We only succeeded partially in this. The target was to design the stories so that about 40–50% of the participants would interpret them according to the author's intentions (**correct relationship**). Arguably this only worked for *energy D* and *mortality A* and *D*. Interestingly, these are also the mini-stories that contained a cause-and-effect relationship between the two charts. We wonder if readers are just more prone to talk about cause-and-effect relationships or if they truly notice them more readily.

The most confusing story of all was *mortality C* where the characters were simply rescaled, which is a Reconfigure-transition according to our classification in section [-@sec:]. The difficulty of this transition is also visible in the unusually high transition count. The differences in *characters* mentioned are easy to explain: some mini-stories contained simply many more characters than others.



### Hypotheses

 ![results-hypotheses.pdf](img/results-hypotheses.pdf) 

#### H1: Relationship

Animated transitions did not lead the participants to assume a relationship between the two charts more often than the non-animated ones. H1 can, therefore, be rejected.

#### H2: Causality

Neither did we find that animated transitions in themselves implied a causal relationship. This is even more interesting than the refutation of H1 as other authors have found that animation can imply causality. We believe that the difference exists because their content was less abstract and contained bubbles that would grow and shrink because they exchanged matter. The finding would thus confirm (abstract vs. naturalistic) [@Berney-16:doesanimation]

#### H3: Cueing

We found that animation focused participants on a smaller group of characters. But this seemingly did not help them correctly interpret the relationship. One explanation might be that the animation design was not clear enough. Another explanation might be the following: interpreting the relationship between two charts is certainly a process that happens after identifying a relationship (see section [-@sec:comparison]). It is therefore even further removed from the levels of visual perception that are affected by the animated-static distinction. It would. therefore, be surprising to find a difference in this measure while not finding one in the *relationship*-measure.

#### H4: Object constancy

Participants who saw an animated transition didn't switch back and forth as often as the ones who saw the static transitions. The difference was highly significant. We conclude from this that animated transitions helped maintain object constancy between the charts. Interestingly, this did not lead to shorter but rather to longer viewing durations. This might either imply that the readers had difficulties to interpret animated transitions or that they were more engaging. Which leads us to the last hypothesis.

#### H5: Engagement

We were surprised to find that participants did not report a higher level of *focused attention* when they saw animated transitions. Especially because we enjoyed them a lot ourselves. One explanation might be the very task-oriented setting. Participants got paid a fixed amount for the experiment and were probably focused on efficiency. Interestingly, the participants who saw animated transitions wrote significantly longer answers (*answer length*) in the same amount of time (*typing duration*) when they saw animated transitions. Which may indicate that they were more engaged but that we have chosen the wrong sub-scale (*focused attention*) to be able to find it.

To explore this discrepancy further, we have used *sentiment analysis* on the participants answers. We assumed, that if there was a difference in engagement, this might lead to a more confident or positive tone in the answers. To analyze the answers, we have used IBM Watson [@Kaminski-19:scienceservice] which gives ratings for different types "tones" in the text. Watson identifies the degree to which a text is *analytical*, *confident*, *tentative*, *fearful*, *joyful* or *sad*.

Because we would not expect highly emotional language in our answer, we decided to look further into the three dimensions: *analytical*, *confident*, and *tentative*. This decision is supported by the fact that they had the highest scores overall. We also found that more answers where classified as *tentative* than *confident* which confirms the analysis from before that the task was rather difficult.

On all three dimensions, we did not find any significant differences between animated and static transitions. This lends support to the interpretation that the engagement truly did not differ between the conditions.



### Conclusions

Based on the literature and the above findings we arrive at several conclusions about the nature of transitions and animation. We came to believe that animation indeed guides the reader's eye between transitions and therefore supports object constancy and cueing at the level of perception. But the results also indicate that relationships are interpreted at a much higher level and perceptual differences don't directly influence this interpretation. Finally, we are still unsure about how animation precisely influences engagement but there are strong hints that its effect is not as universally positive as often portrayed in the literature.

###Limitations

Much of the stories were designed before our conceptual understanding of transitions and animation was as clear as it is presented in this work. The types of transitions that are present in the experiment are therefore more strongly driven by the needs of the story than by our theoretical understanding of the properties of different transitions. This weakens the link between our results and the theoretical framework we have proposed.

Almost 20% of the participants saw animated transitions that we categorized as slow. We decided to include these results anyway because most of the essential properties of the animation would still be present even when it was laggy. We also found that the results stayed the same even when we excluded *slow*-sessions but 

The task was rather difficult.



# Implementation

To quickly create narrative visualizations and animated transitions for the experiment, we have built a visualization tool that would simplify this task. The solution presented in this chapter might look simple, even obvious to the reader. But our first attempts to implement animated transitions resulted in a tangled mess of spaghetti code and attest that the problem does not have a straightforward solution. We conclude that the simplicity of the proposed solution is, therefore, more a sign of conceptual clarity than a sign for the mundanity of the problem.

## Requirements {#sec:requirements}

#### Online narrative visualization

Much the specification of the experiment has already been described previously in  section [-@sec:experiment]. To run it on Amazon Mechanical Turk we needed to build web-based narrative visualizations with animated transitions. It was, therefore, an obvious choice to use common web technologies like HTML, CSS, SVG, and ECMAScript for the implementation. For increased programmer convenience through type checking, we have used TypeScript to generate the final ECMAScript.

The D3 library [@Bostock-11:datadrivendocuments] was used because it abstracts some of the more tedious parts of generating SVG-code from data. D3 was chosen because it is currently the de-facto standard for data visualization on the web and it does not impose a certain structure in the code as many frameworks do.

#### Rapid prototyping

Because the stories and the design were developed alongside with the implementation, we wanted a system the would allow us to quickly test different design choices or modify the story. We, therefore, decided to build an application generator the would interpret a domain-specific language (DSL) perfectly tailored to our needs. An in-depth discussion can be found in section [-@sec:declarative-syntax]

#### Limited range of chart types

As discussed in section [-@sec:vis-literacy], the range of charts that the general public easily understands is very limited. We, therefore, limited our ambitions to a system that would be able to generate simple 2D chart types like the line charts and stacked are charts mentioned in section  [-@sec:vis-literacy]

#### Transitions focused on characters

Based on the discussion on *object constancy* (section [-@sec:object-constancy]) and the findings in section [-@sec:our-model], we decided to base all of the animated transitions on the concept of *characters*.

#### Performance

Performance needed to be good enough to not impair the perception of the animated transitions. We made some informal user tests to find out what would be an acceptable performance benchmark. For this, we presented to versions of the same narrative visualization to participants (n=4). One which presented the animation at about 15 frames per second (fps), the other at about 40 fps. After much consideration, two of the subject correctly identified the slow animation. We, therefore, gave it some margin and set the lower performance limit to 20 fps which is in line with the 25 fps typically used for movies.

#### Reliable logging of user interaction and answers

Finally, the implementation needed to provide a reliable way to collect data on scrolling (H4) and make sure that all the answers were transmitted and that everything was reliably connected to the right participant.



## Prior art

Many visualization tools have been created over the years and every tool addresses a different set of requirements and has different strengths and weaknesses. A recent overview [@Mei-18:designspace] classifies visualization tools according to eight dimensions. Based on the above requirements, the dimension that was most relevant to our work was the *level of abstraction*.

### Level of abstraction of visualization tools

 ![\label{code-abstraction}](img/code-abstraction.pdf)

The number of useful chart types in data visualization is surprisingly limited. A review of some catalogs of chart type shows that it lies somewhere in the range between 40 and 200. [@Holtz:dataviz, @Ribecca:datavisualisation, @Schwabish:visualvocabulary, @:dataviz, @Russo-18:microsoftpower] When developing software for data visualization, an obvious approach is, therefore, to implement these basic chart types and make them configurable. A recent study on visualization tools [@Mei-18:designspace] shows that over the last three decades a majority of tools mentioned in the literature have used some sort of chart typology (see figure \ref{code-abstraction}). Graphic libraries inhabit the other end of the spectrum. They usually only provide functionality for drawing basic shapes. They are thus the most general and flexible visualization tools. But building visualization out of basic shapes is very laborious, which is the reason why "chart configurators" are so popular. More recently, visualization researchers have started to explore the middle ground: declarative, domain-specific languages (DSLs). [@Wickham-16:ggplot2elegant, @Heer-10:declarativelanguage, @Satyanarayan-16:vegalitegrammar] DSLs try to maintain a maximum of flexibility while significantly simplifying the creation process. [@Heer-10:declarativelanguage] One very recent example of a declarative language for visualization on the web is Vega-Lite. [@Satyanarayan-16:vegalitegrammar] Vega-Lite's DSL builds on JSON and the concept of the *Grammar of Graphics*. The grammar of graphics separates different parts of a visualization into separate "layers" which are independent and can be recombined as desired (see figure \ref{code-vega}) Vega-Lite also introduced a way to define interactive visualization in a declarative manner.

![\label{code-vega}](img/code-vega.pdf) 



### Animated transitions between charts

Even less research has been conducted on DSLs who describe animated transitions between visualizations. Heer and Bostock, who later went to create the already mentioned D3 [@Bostock-11:datadrivendocuments], have described one approach in an earlier paper. [@Heer-10:declarativelanguage] Their system is based on marks like lines and bars. To create animations, the author defines the data for the initial state and the data for the final state. Their tool then interpolates between the two to generate an animated transition.

Very recently, Tableau, one of the largest providers of commercial visualization software has released a preview of their future implementation of animated transitions. [@Isaacs-18:tableaumotion] In their concept, animations are predetermined by the type of transition and not configurable by the author.

The tool that most closely addresses the problems of narrative visualization is *Ellipsis* by Satyanarayan and Heer [@Satyanarayan-14:authoringnarrative] Ellipsis is a tool to create narrative visualization through a graphical interface. It wraps existing visualizations and adds an *annotation* layer, *parameters* for dynamic queries (see section [-@sec:narr-vis]) and a layer for defining *transitions* between charts. Ellipsis thus effectively decouples the narrative structure from the individual charts and lets authors quickly explore alternative narrative structures.



### Performance optimization

Heer et al. [@Heer-10:declarativelanguage] mention another advantage of DSLs for visualization specification: they can easily be optimized without changing anything in the specification. The authors changed the implementation to use multiple threads and doubled their rendering speed without changing anything in the specification of the visualization.



## Declarative syntax {#sec:declarative-syntax}

Based on the requirements described in section [-@sec:requirements] and the review of existing tools, we decided to design a domain-specific language (DSL) for narrative visualization with animated transitions. A DSL allows for *rapid prototyping* by making the definition of charts and transitions quick. Yet it can provide a lot of flexibility in terms of annotations and in *how characters should morph between the charts*. Finally, *slow animations can be optimized* without changing the visualizations that were already created for the experiment.

### Anatomy of a chart

The first part of the DSL is concerned with defining the basic charts. The syntax is based on JSON and strongly inspired by Vega-Lite. [@Satyanarayan-16:vegalitegrammar] Vega-Lite is more powerful in inferring a multitude of chart types based solely on the configuration than our proposed solution. As we only required a very limited number of chart types, we resorted to the "Chart typology"-approach which is less flexible but much easier to implement. Two other differences to Vega-Lite are the focus on *characters* and the possibility to *annotate* them.

![code-chart adsf](img/code-chart.pdf)

- ![](img/1.pdf) Each chart has a `name` which is used to identify it. If there is an HTML element with an ID that corresponds to the chart it will be used to render the chart there. The chart dimensions as well es its position on the page are therefore completely defined by the layout of the surrounding page.
- ![](img/2.pdf) The `type` defines the basic chart type (>>level of abstraction) that should be used. Behind the scenes, each chart type is implemented as a subclass of an abstract `Chart`-class that implements its own `draw`-method.
- ![](img/3.pdf)The path to a `CSV`-file with data. We don't implement any kind of data transformation functionality and expect the data to be in the right format. This is because our tool is presentation-oriented and there is no need to explore the data through filtering or other transformations.
- ![](img/4.pdf)The chart title is implemented as an `annotation`. Annotations can be bound to different elements throughout the DSL and positioned relative to their `start` or `end` through the `offset`-property.
- ![](img/5.pdf)In the axis-definitions, different attributes (`field`) of the data are mapped to different axes. The axes are identified by their `name` which can differ depending on the chart `type`. Slope charts, for example, have three axes:  `x`, `from` and `to`.  The advantage of defining each axis explicitly like this is, that, again, `annotations` can be bound to them.
- ![](img/6.pdf)The `type`-property of an axis defines how the data that is mapped to this axis should be parsed. The data domain can either be continuous numbers (`quantitative`), ordered discrete values (`ordinal`), unordered discrete values (`categorical`), or timestamps (`temporal`). [@Munzner-15:visualizationanalysis, @Satyanarayan-16:vegalitegrammar] The `domain`-property defines the corresponding start and end values of the axis. Often, the minimal and maximal values in the data are used to determine the start and end of an axis. But when using visualization for storytelling, sometimes that author wants values to "overshoot" the axis, or to fix the axis at a certain domain for dramatic or clarity reasons, which is why we allowed explicit control of this parameter.
- ![](img/7.pdf)Coherent with the model developed in section (>>Perception-oriented classification), we look at narrative visualization through the lens of characters. This is why our DSL contains an explicit declaration of the whole `cast` of characters in each chart. We assume that individual characters are identified by a `categorical` attribute in the data which is defined in the `field`-property.
- ![](img/8.pdf)Because characters have such high importance in this view, they are defined individually:

![code-characters.pdf](img/code-characters.pdf)

- ![](img/8.1.pdf)In the three chart types we have implemented, characters are uniformly distinguished by `color` which is also what is often used in the narrative visualizations in our analysis (>>Perception-oriented classification). Other options like symbols or textures are naturally imaginable. The necessary data to `draw` each character is found via its `name` property.
- ![](img/8.2.pdf) Shows an example of the use of multiple `annotations`. Two are used to indicate the initial and the final share of each energy source, the third one to label the energy source itself. This approach has proven to provide a lot of flexibility. Especially when coupled with CSS `class`es that make individual styling of characters possible.
- ![](img/8.3.pdf)Such flexibility comes at the price of verbosity, as each character needs to be specified individually. 
- ![](img/9.pdf)Finally, some basic visual properties of the chart can be defined in the `design` section of the specification.



### Anatomy of a transition

Together with the `director` (see >>Directing all of them), this is our main contribution in terms of software architecture. Because we have identified character and attribute changes as the main concern for transitions, the DSL focuses on them. Characters as well as axes (which represent attributes), can be mapped between two charts which will create a third transition chart that interpolates between them.

![code-transition](img/code-transition.pdf) 

- ![](img/1.pdf) A transition is not treated very differently from a chart. It also has a `name` and is rendered into an HTML element with the corresponding ID.
- ![](img/2.pdf)+ ![](img/3.pdf) But such a transition chart is solely defined by the charts it transitions between. This is done through the `from` and `to` properties.
- ![](img/4.pdf)In our analysis of narrative visualization (>>Perception-oriented classificationl) we have concluded, that `morphing` is only sensible for transitions between charts that share at least one character. In the other case, we use a `fading` transition.
- ![](img/5.pdf)While some transition types like "Explore attributes" have a one-to-one relationship between the characters of the two charts, transition types like "Split characters" and "Merge characters" will have a one-to-many or many-to-one relationship. This is modeled by mapping the same character in the `from` property to multiple characters in the `to` property or the inverse.
- ![](img/6.pdf) The system also supports axis interpolation, even though we did not use it in the end. Any axis in the initial chart can be mapped to any axis in the final chart. This particularly makes "Reconfigure" transitions possible.



### Directing all of them

Finally, the `director` contains a kind of "scroll-timeline" of charts. Based on this it will show, hide and interpolate the appropriate charts at certain scroll positions.

![Director asdfa asdf asdf asdf asdf](img/code-director.pdf)

* ![](img/1.pdf) The director's `name` is used in the experiment to identify the mini-story and the configuration the participant was looking at.
* ![](img/2.pdf) A `type` property was introduced to account for some differences in behavior between *juxtaposed* and *superposed* layouts. Namely, if the initial chart should be hidden or not.
* ![](img/3.pdf) The steps define a range of scroll positions and a chart or transition that should be displayed within this range. The `-1000` value is in there because some browsers permit scrolling above the start of the page, which would hide the first chart.



### Program generation and rendering process

1. In a first step, the system generates objects for all the charts with their axes, characters, and annotations from the specification. Wherever something is not defined, it assumes a sensible default if possible or explains the failure otherwise.
2. After the charts, the system generates the objects who represent the transitions which reference the chart objects.
3. Finally, a director object is generated with references to all the charts and transitions. The director continually checks if the viewer has been scrolling.
4. When the scroll position changes, the director calls the `draw`-method on the charts/transitions that should be visible at this position. It calls the `hide`-method on all the others. If at the current position, a transition should be displayed, the `draw`-method is called with an additional `position` parameter TODO:formula that indicates the state of the interpolation.
5. This sets in motion a rendering cascade where every object also calls the `draw` methods of its children to render the final display. This corresponds to the *render*-pattern described in  [@Heer-06:softwaredesign])
6. Objects $$\{characters, axes, annotations\}$$ of transition charts implement their own interpolation methods and use them for rendering interpolated states.
7. The `draw`-methods generate the necessary SVG-code and append it to an SVG that will finally be displayed in the HTML element for the chart.



### Interpolation

A few remarks on how we have handled the interpolation described above. While previous work has usually interpolated between visualization parameters [@Heer-10:declarativelanguage, @Satyanarayan-14:authoringnarrative], our system interpolates between SVG-shapes. Thanks to this, our system can generate animated transitions between two completely different visualizations. The only condition is that a character needs to be represented by a single, closed SVG shape, a moderate constraint in our eyes. Other systems only permit transitions "within" the same chart.

One problem when interpolating directly between SVG-shapes is that they need to have a one-to-one correspondence between their anchor points. If this is not the case, there needs to be some method to add points to the simpler shape. For this, we have used an algorithm that duplicates points of the simpler shape that are closest to the matching points in shape B. [@Beshai-16:improvingd3] This has produced visually good results in all our cases. But it had the downside of making the calculation of interpolated states slower.



### Performance

![\label{code-framerate}](img/code-framerate.png)

Animation on the web typically has very mediocre performance. But there are a few strategies make it faster which we will present briefly.

#### Synchronize repaint timing

There is no connection between the time when a "scroll" event is being fired on the DOM and when the browser is ready to repaint the page. But thanks to the `requestAnimationFrame`-method, we can register a callback function that the browser will execute before the next repaint. In this callback, the director checks if the vertical position of the viewport has changed since the last call. If so, the DOM for this position is recalculated. Thanks to this, such a recalculation only ever happens when it will actually be painted by the browser. Typically, this is at 60fps but the rate is automatically toggled when calculations and repainting take more time. This approach has been implemented

#### Conditional redrawing

Every component is responsible for drawing itself. `draw` methods could therefore easily be modified to only manipulate the DOM when something has changed (for example based on a "dirty"-flag). Based on our performance tests, we strongly suspect that browsers already implement this mechanism themselves and don't repaint elements whose subtree has simply been replaced with an identical subtree. We, therefore, did not implement this approach.

#### Parameter-based caching

Because the system is highly decoupled, expensive calculations could easily be cached based on the input parameters. One very good candidate for this is the calculation of additional points for SVG shapes that will be interpolated. Because in our tests, the frame rates have always been much better than our baseline of 20fps, we did not take the time to implement this optimization. This decision was unfortunate because about 20% of the sessions with animated transition turned out to have a frame rate that was below this baseline (see figure \ref{code-framerate})

#### Canvas

Finally, we could handle the rendering of the pixels ourselves by using HTML `canvas` instead of SVG. While canvas has a more or less linear rendering performance, SVG gets exponentially slower with the number of elements that need to be rendered. Typically, this only starts to matter when 1000+ elements need to be rendered. A number that is far greater than the handful of characters, labels, and lines that were needed in our visualization. (TODO:source)



### Logging

Every interaction with the experiment was logged. Whenever the director detected scrolling, a log entry was created. Every keystroke too was recorded. And naturally, the participants answers where recorded. Logging is also the director's responsibility. Log entries are appended to a list which is sent to a server every 5 seconds as a CSV to minimize the potential for data loss. The data is also sent when the participant submits the answer form.

Every entry stores a timestamp, an identifier for the participant and the current mini-story, the URL, the scroll position and information about the participant's browser like window size or user agent (>> full documentation in supplementary material)



### Discussion

TODO



# Conclusion

TODO
