



# Narrative visualization

## Explorative and explanative visualization

![Munzner[@Munzner-15:visualizationanalysis] uses the words "discover" for explorative and "present" for explanative visualization](/Users/jonas/Library/Application Support/typora-user-images/image-20190213162158465.png)

The focus of early visualization research has mostly been on *explorative visualization* as opposed to *explanative visualization*. Explorative visualization deals with three major constraints: *system resources* like memory and processing power, *display capacity* given for example by screen size and pixel density, and finally human *perceptual* and *cognitive* like preattentive mechanisms or working memory. Most of the research visualization is therefore concerned with maximizing information throughput regarding these limitations.[@Munzner-15:visualizationanalysis, pp 14–15]

*Explorative* visualizations are targeted at researchers and help them *discover* new insights inside vast amounts of data. *Explanative* visualization, on the other hand, is used mainly for *presenting* information. [@Munzner-15:visualizationanalysis, pp. 45–48] The targeted audience are not specialists who will spend days, weeks or months with a given visualization, but a public who will only see it for a short amount of time. This leaves little room for learning the intricacies of a new idiom or to gain necessary topic knowledge necessary to correctly interpret complex visualizations. This new limitation has come to be known as "visualization literacy".[@Boy-14:principledway; @Lee-17:vlatdevelopment]

## Visualization literacy

Very little is known about how novices try to make sense of visualizations they are unfamiliar with. Lee et al. [@Lee-15:howpeople] show that most readers heavily rely on their topic knowledge to check if their ad-hoc interpretation of an unfamiliar visualization is correct.  When presenting unfamiliar material, it therefore often seems preferable to use well-known idioms like line charts or pie charts even if potentially more powerful idioms are available. Similar observations have been made regarding interactive visualizations in newspapers.[@Stabe-16:whyft; @Tse-16:whywe] According to them, most readers don't take the time to explore complex and unfamiliar visualizations.

Exceptions exist, where very complex and creative visualizations seem to be liked by readers [@Lupi-:visualdata]. We hypothesize that these are probably due to a shift in the readers' goals. Instead of trying to understand the story, the readers now challenge themselves to understand the mechanics of the visualization. [@Manjoo-13:wholelot],  This would correspond to the third type of visualization, who are primarily *enjoyed* for their artistic appeal.[@Munzner-15:visualizationanalysis, p. 48]

Based on this observation, textbooks, and newspapers are typically rather conservative when using visualization, defaulting to well-known idioms. This stance is supported by a study from Boy et al. [@Boy-15:suggestedinteractivity]. The authors asked participants to answer a question based on a text and an interactive visualization. In their experiment it was quicker to find the answer in the interactive visualization. Yet, only 30% of the participants ended up using it. The proportion did not change when they added cues like an animated mouse-cursor hovering over the visualization or when the visualization was pulsating. The authors also found, that a so called *feedforward*-cue led to higher rates of interaction. A *feedforward*-cue displays the outcome of an interaction to the reader. In the case of Boy et al. it was a mouse cursor hovering over the visualization which would highlight the hovered regions.

Similarly, some authors have started to use storytelling techniques to demonstrate how a visualization could be explored. [@Parlapiano-14:howrecession] Or to progressively build topic knowledge and explain complex visualization idioms. [@Dworkin-18:whytech] The latter approach also finds some support in a study by Ruchikachorn et al. [@Ruchikachorn-15:learningvisualizations]. Here the authors started with simple visualizations and built more complex idioms step-by-step which led to higher understanding of the complex idioms.

![image-20190807110218952](/Users/jonas/Library/Application Support/typora-user-images/image-20190807110218952.png)

## Narrative visualization

This idea, of using storytelling techniques to introduce powerful visualization idioms to an audience with low visualization literacy, has led to the formation of a branch of research in *narrative visualization* [@Segel-10:narrativevisualization, @Hullman-13:deeperunderstanding, @Satyanarayan-14:authoringnarrative] Narrative visualization follows in many aspects the same principles as other, established means of storytelling. Multiple publications have explored the usage of these principles in the context of narrative visualization. Examples being videos [@Amini-15:understandingdata], comics [@Bach-16:tellingstories] or narrated sketching [@Lee-13:sketchstorytelling].

![The Washington Post uses annotation extensively to show how smaller counties had a tendency to swing to the right while cities were swinging left between 2004 and 2016. [@Gamio-16:urbanrural] \label{narrative-annotation}](/Users/jonas/Desktop/P9/bericht/img/narrative-annotation.png)

According to Stolper et al. [@Riche-18:datadrivenstorytelling, pp. 85] there are four characteristics that can be observed in narrative visualizations: they **narrate and comment** a visualization through text, audio and annotations (figure \ref{narrative-annotation}); they **link separate states** through color, animation and/or interaction; they provide **navigation aids** like timelines, maps, breadcrumbs, etc. (figure \ref{narrative-navigation}); and they provide **controlled exploration**  through embedded interactive visualization or dynamic queries.

![In this New York Times story about rural Russia[@Barry-13:russialeft], a map is used as a navigational aid. \label{narrative-navigation}](/Users/jonas/Desktop/P9/bericht/img/narrative-navigation.png)

**Dynamic queries** are a technique where the reader is allowed limited exploration of a visualization. For example by showing her data on her home city or checking how the result would have looked for another character (figure \ref{narrative-dynamic-query}). On the other hand, embedded interactive visualization allows for complete free exploration.

![Two examples of dynamic queries: Russel Goldenberg [@Goldenberg-16:startedbottom] talks about the rise and fall of NBA-teams. In the middle of the story, the reader can change the team that is being followed. On the left, after exploring jobs that would be suitable for a truck driver when his work is being automated, Jordan Dworkin and Ilia Blinderman [@Dworkin-18:whytech] let the reader choose another job for which to find suitable alternatives. \label{narrative-dynamic-query}](/Users/jonas/Desktop/P9/bericht/img/narrative-dynamic-query.png)

Segel et al. [@Segel-10:narrativevisualization] describe how such exploration is integrated into the typically linear structure of storytelling. The *martini glass* structure starts with a sequence of states and leaves the reader to explore a visualization at the end. The *drill down*  structure starts with exploration until the reader chooses a topic and is led through a sub-story sequentially. Finally, the *interactive slideshow* is structured by an overarching sequence of states and integrates exploration at every step.

![The different structures of non-linear storytelling in narrative visualization described by Segel et al.[@Segel-10:narrativevisualization]](/Users/jonas/Desktop/P9/bericht/img/storytelling structure.png)

Even though exploration is often a part of narrative visualization, it always contains one or many author-defined sequences of states that contain the major insights the author wants to convey. This intent to communicate a set story puts narrative visualization into the *explanative visualization* category discussed previously. Its quality is therefore measured by the readers understanding of the story the author wants to convey.

The ordering of states is highly relevant to understanding a story and scrambling it will lead worse comprehensibility and recall of the information. [@Thorndyke-77:cognitivestructures] This observation should be discouraging for including explorative aspects in narrative visualization which by their nature introduce non-linearity. 

We think the problem lies with the definition of a state. Just as the story of a movie is not changed by showing more of the scenery in one shot, the story of a narrative visualization is not changed by letting the reader explore details of the current state. A similar view is held by Hullman et al. who define a state as an "informationally distinct visual representation" [@Hullman-13:deeperunderstanding]; a definition to which we will also adhere to in this work.

The observation about the importance of sequence also implies that there is some information inherent in the ordering of states that is not present in the states themselves. The *transition* between the two states, therefore, carries implicit information that is essential to the understanding of the story. This is also observed by Stolper et al.  [@Riche-18:datadrivenstorytelling, pp. 85] when they talk about "linking separate story elements [or states]". Transitions then are a basic element of narrative visualization and we will go on to present some of their properties in greater detail.



# Transitions

Transitions seemingly carry information that can not be extracted from the states alone. In order to see where it might come from, assume a transition between two states that are precisely the same. Something like this would obviously not merit the name "transition". It is therefore essentially the difference between the two states that carries the information. And finding this difference involves comparison.

## Comparison

"Compare" is one of the 11 fundamental  goals of using visualization according to a meta-analysis by Brehmer et al. [@Brehmer-13:multileveltypology]. The distinction between *identify*, *compare* and *summarize* is made based on the set of targets. While the *identify* action is concerned with a single target and *summarize* involves all the targets, *compare* refers to multiple subset of targets.

![A topology of visualization tasks which synthesizes a large body of
previous literature has been proposed by Brehmer et al. [@Brehmer-13:multileveltypology] \label{transition-topology}](/Users/jonas/Desktop/P9/bericht/img/comparison-taxonomoy.png)

The first step in any comparison then is to identify the targets that should be compared. For this there are three possibilites: *explicit identification*, *identification through visual statistics* and *implicit identification*:

**Explicit identification** is aided by the author through labels, annotations, colors and narrative. An example can be seen in figure \ref{narrative-annotation}.

**Identification through visual statistics** uses the ability of the visual system to quickly and quite accurately calculate certain statistical properties of an image (figure \ref{comparison-identification}). A viewer can for example see in an instant if a certain region contains more orange than blue dots (mean). She can also quickly identify groups of points that form clusters (clustering). Viewers will be able to tell if circles get bigger from left to right (trends). Or if a point has a different color from all the outers (outlier). All of these values can then serve as a target for comparison.

**Implicit identification**: In many cases, external knowledge or personal interest of the viewer will lead to the identification of a target. [@Gleicher-18:considerationsvisualizing] Often, readers will compare what they see to what they would have expected to see. Or a person from Brooklyn for example will tend to be more interested in the success and failure history of the Brooklyn Nets than that of the Warriors from California (see figure \ref{narrative-dynamic-query}). This is one of the reason for authors of narrative visualization to include *dynamic queries*. 

![The visual aggregation tasks from [@Szafir-16:fourtypes] show how comparison targets can by identified by visual statistics. \label{comparison-identification}](/Users/jonas/Desktop/P9/bericht/img/comparison-identification.png)

The second step is to perform a *lookup* or *locate*-action in the second state to find a corresponding target for comparison. A relationship has new been *identified* and can be further analyzed. [@Gleicher-18:considerationsvisualizing]  

Comparison essentially involves the question: "What changes?". The different answers that have been given to that question will be discussed in the following section.



## Transition types

### Visualization parameters

The most common approach is to think about changes in terms of visualization parameters. [@Heer-07:animatedtransitions, @Yi-07:deeperunderstanding, @Fisher-11:animationvisualization, @-18:space] Any visualization can be viewed as the result of a series of parametrizable transformations applied to the underlying data set. When the data set doesn't change between two states, the transition can be fully described by the difference in parameters (more in chapter TODO).

Multiple authors coherently identify about eight transitions based on the change of visualization parameters:

![Comparison of transition types commonly identified by different authors for different purposes. The table shows that the agreement is relatively high for transitions that can be defined in terms of visualization parameters. What is often missing is the case where the underlying data changes.](/Users/jonas/Desktop/P9/bericht/img/transition-parametric.png)

* **Pan**: Moving a fixed image below a smaller viewport to see one part at a time. The most famous example for this is Google Maps [@Google:googlemaps]. But the transition doesn't need to be animated. eBook-readers for example often show one screenful of text at a time.
* **Zoom**: Geometric zooming in and out of a fixed image.
* **Filter**: Filtering hides or shows elements based on some criteria. When watching a visualization on cars, filtering might for example hide all the data on American cars.
* **Reorder**: Reordering axes according to a different criterion. For example from age to height.
* **Substrate transformation**: Any distortion to the scale that is not addition or multiplication of a constant. For example a log transform.
* **Visualization change**: Showing the same data with a different visualization idiom. For example from a bar chart to a pie chart.
* **Data schema change**: When a different attribute is shown on one of the axes. Changing for example from earnings over time to losses over time.
* **Data change**: When new data is shown but the visualization and the axes stay the same.

The strength of this kind of classification is, that types can relatively easily and coherently be determined for a transition. Even automatically. [@Hullman-13:deeperunderstanding] It's weakness is that it characterizes a transition by its technical properties and not based on how the reader will try to understand  it. Other fields, especially the research on comics have done much more work in this regard.

### Subject, scene, time

The most prevalent classification of transition types in comics is the one by McCloud [@Mccloud-93:understandingcomics] He describes six types of transitions between comic panels:

![transition-mccloud](/Users/jonas/Desktop/P9/bericht/img/transition-mccloud.png)

1. **Moment-to-moment**: Stepwise movement through time.
2. **Action-to-action**: Movement through time based on meaningful events.
3. **Subject-to-subject** : Switch from one subject to another
4. **Scene-to-scene**: Change in location or a long timespan passing.
5. **Aspect-to-aspect**: Exploring a scene.
6. **Non-sequitur**: Changes without an obvious relationship.

McCloud too uses the question "What changes?" to characterize his transitions. In his view, there are three things that can change between two panels: *subject*, *scene* and *time*. 

Cohn [@Cohn-10:limitstime] refines on McClouds transition types by introducing hierarchy to the interpretation of subject, scene and time. Based on what we experience as the correct interpretation of a sequence of panels, he argues that readers will first look out for changes on or of the subjects. Then they will think about the scene. Finally, their attention will move to differences in time. In any case, they will assume that subject, scene and time have not changed if nothing explicitly contradicts this assumption.

*Subject*, *scene* and *time* are reminiscent of journalisms famous *who/what*, *where* and *when*. [@-19:fivews] This proximity to journalism is encouraging for the use of these three categories in narrative visualization.

Missing from the list is *why* which will make its appearance in the next section.

### Hullman

A more bottom-up approach to transitions can be found in Hullman et al. [@Hullman-13:deeperunderstanding]. In a review of 42 narrative visualizations, the authors identified 12 different transition types through multiple rounds of coding. They grouped these into six categories:

![transition-hullman](/Users/jonas/Desktop/P9/bericht/img/transition-hullman.png)

**Dialogue transitions**: A question is asked or implied in one state which is being answered in the next. For example, a state showing rising that organic farming is on the rise followed by a state showing areas where it is most prevalent. 

**Temporal transitions**: Where the difference between the states is that they show the situation at different points in time.

**Causal transitions**: One state shows an effect and the next state presents the cause of the effect. For example, a state showing that the mortality rate was falling less recently and the next showing how the demographics have changed towards older people with naturally higher mortality rates.

**Granularity transitions**: The amount of detail that is being shown changes between two states.

**Comparison transitions**: Either the dependent or an independent variable changes between the states. The transition is called a measure walk when the measure is being changed. For example, showing a map of the impact of climate change on flooding risk in the prior state and showing the impact on crop shortage in the successive. It is called a dimension walk when one of the independent variables changes. 

**Spatial transitions**: When the final state is spatially close to the initial state.

Hullman et al . distinguish between *implicit transitions* that can only be interpreted by a reader and *explicit transitions* that could potentially be inferred from changes in the attributes visualized (compare to section \ref{visualization-parameters}). Interestingly they have found very little occurrences of the two explicit transitions in their analysis (see figure \ref{hullman-frequency})

![Transition types identified by Hullman et al. [@Hullman-13:deeperunderstanding]. The explicit dialogue and causal transitions are quite rare. \label{hullman-frequency}](/Users/jonas/Desktop/P9/bericht/img/transition-hullman-freq.png)

In addition implicit and explicit transitions can easily be orthogonal at times. The dialogue transition that first shows a trend towards organic farming and then where it is on the rise could just as easily be classified as a dimension walk.



## Transition cost

Hullman et al. [@Hullman-13:deeperunderstanding] also introduced the idea of a *transition cost*. According to the authors, the transition cost should be calculated by summing the following numbers:

* How many independent variables have changed?
* Has the dependent variable changed?
* By how many levels has the granularity changed?

When using this definition, the authors found that readers strongly preferred transitions with a cost of one. Transitions with costs that were higher, e. g. two or three were judged as equally undesirable. 

### Transient memory effect

A similar view on this subject comes from *cognitive load theory*. It postulates that novel information needs to be processed in the learners working memory. At the same time this working memory is severely limited in capacity (the infamous 7 plus minus 2 rule). (TODO:MIller 56) But when a learner had time to process and organize the novel information into his long term memory, he can use it at almost no cost to his working memory. These observations lead to what is called the *transient information effect*. It occurs when learners are exposed to complex information in a form that is "transient and difficult to retrieve rapidly and when required". [@Wong-12:cognitiveload, p. 449] Examples for this are sequences of audio narration as well as animations. The transient information effect predicts that people will forget what they have seen before when the amount of novel information exceeds their working memory limits. The authors therefore suggest to segment large amounts of information into chunks that readily fit into working memory. Letting readers pause after each chunk would give them time to organize its content to long term memory. A chunk thus incorporated can then be used at very little cost to process the next chunk.

TODO: schemas and memory islands

While the inherent complexity of the information presented (*intrinsic cognitive load*) is not under the control of the designer, the number of elements (*extraneous cognitive load*), can be reduced. This mirrors Hullman et al.'s  [@Hullman-13:deeperunderstanding] findings and connects it to a larger theoretical context.

While reducing the number of changes in a transition is a valid way to unburden a readers working memory, cognitive load theory points to many other valid methods.

### Reducing the transition cost

*Narration* is commonly used to guide the reader's attention to a specific relationship between two states  [@Aisch-17:hurricaneirma; @Collins-15:whymeasles; @Anderson-16:largestanalysis] and thus removes a lot of burden from working memory.

*Color* is another very common way of highlighting certain elements. When a reader focuses on elements of a specific color (for example the one that's most saturated), his visual system will effectively prevent other elements (who might be desaturated) from even reaching short term memory. [@Franconeri-18:thinkingdata]

Different authors have also tried to use *animation* to reduce cognitive load [@Zongker-03:creatinganimation; @Betrancourt-08:displaykey] with mixed results. Although the use of animation for transitions is generally met with great enthusiasm by readers[@Heer-07:animatedtransitions], there is still much unclarity regarding its effect on understanding and about how well it fares against other means for easing the transition cost. One experiment, for example, has shown that *symbols* were as effective in establishing a causal relationship as animation.[@Kadaba-07:visualizingcausal] Others have found animation very effective in the common *panning* [@Shanmugasundaram-07:cansmooth] and *zooming* transitions [@Shanmugasundaram-08:effectanimated]. (see >>Visualization parameters)

The variety of findings and the lack of an explanatory framework to explain them points to a gap in theory. Our attempt to close it by connecting existing models with cognitive load theory will be discussed in the next section.



# Transition techniques

We believe that none of the taxonomies described in section >>Transitions appropriately capture the way readers make sense of transitions by comparing targets (see >>Comparison). They are either too technical and abstract as when they are solely focused on visualization parameters or they don't deal with the particular nature of visualization understanding as it is the case for McCloud's (TODO:source) and Cohens (TODO:source) taxonomies. Hullman et al. seems to us to be the most promising approach but their transition types are not linked to any theory that would help explain differences between the different types. That's why the assumed all of their transitions to have a cost of one which contradicts our experience.

We therefore propose a synthesis of these three models that directly links transitions to  *elements in working memory* described by cognitive load theory. We call these *characters*, *attributes* and *context*.





##  A simplified model of how readers perceive transitions

(TODO:graphic)

We argue that readers extract information from a transition based on a comparison of the initial and the final state. As discussed in section >>Comparison, readers first identify a target in on of the states. Then they try to locate the matching target in the other state. When a relationship is thus identified, it is further analyzed. To do this they need to three types of elements in their working memory:

**Characters**: A character is an identifiable and nameable visual entity in the chart. It can be a dot, a line or any other shape. In visualization these entities are very often identified by one or more independent, categorical variables. For example countries, genders, age groups, etc. Even though this definition might seem abstract at first, it is in most cases very easy to identify in narrative visualization. That is because the narrative will typically talk about them.

Characters can also be grouped into a unifying character. Switzerland, Italy and France could form the group *European countries* while Japan, China and Korea might be combined into *Asian countries*.

**Attributes**: Is used to describe all the other independent variables as well as all dependent variables. Attributes are showing different aspects of the characters. Country-characters can have population numbers over time. Gender-characters might have differing PISA-test success rates or might marry at at different ages.

**Context**: The context of the whole state is often not depicted in the chart. Often it is given in the title or in the text. A state might for example show the PISA-test success rates for a certain revision of the PISA-test or give country statistics according to a certain source. 

This classification roughly mirror Cohn's [@Cohn-10:limitstime] categories of *subject*, *scene*, *time*. Based on his work and our own observation we think that there is also a hierarchy in our proposed categories. Readers will first identify the characters in a state and look for the corresponding characters in the following state. If they find them and they visually differ between the states, the reader will look for reasons. At first the reader will assume that a different attribute of the character is shown. She will therefore check the axes. If they conclude that the changing appearance of the character is not due to different attributes being shown they will assume that a change of context has happened.



## Method

Similar to Hullman (42) (TODO) and [@Segel-10:narrativevisualization] (58)

### Selection of examples

The test the proposed model, we have applied it to a collection of transition techniques commonly found in narrative visualization. We have started by compiling a corpus of narrative visualizations from online sources. The corpus combines two collections from other authors [@Riche-18:datadrivenstorytelling, @Mckenna-17:visualnarrative] with our own examples. The corpus thus includes 144 narrative visualizations published between 2008 and 2019 by a variety of new organizations as well as individuals.

In a first step we excluded stories that were not clearly focused on data visualization. These include for example infographics and scrollytelling stories that were included because they were important in McKenna et al.'s [@Mckenna-17:visualnarrative] work. On the other hand, some examples only contained a single visualization and no transition. We also excluded certain examples based on media type for practical purposes: everything in flash and all the videos. Finally, we excluded everything that was not accessible anymore. After this first round of filtering, 79 examples remained.

From these we selected subset of 40 to reduce the workload of the analysis.

### Analysis

For each example, a screenshot of each visualization state was pasted on a canvas in order. First we identified the characters in the first screenshot. For each transition we annotated if the characters, scene or context changed from the previous state and how it changed. This was usually straightforward which was an encouraging sign. Finally, we unified very similar transitions into 10 categories.



## Techniques

### Explore attributes

![Two examples of transitions exploring different attributes of the same characters. On the left side from a story of TODO and on the right side a story of TODO  \label{technique-diffent-measure}](/Users/jonas/Desktop/P9/bericht/img/technique-different%20measure.png)

| Characters    | Attributes |
| ------------- | ---------- |
| Stay the same | Differ     |

This is probably the most obvious transition type for storytelling. Here the author explores different aspects of the same character(s). In many cases this will be done by mapping a different attribute to one of the axis, like on the left side of figure \ref{technique-diffent-measure}. Here the author compares incarceration rates  (attribute) for black and white men (characters) by income of their parents in the first chart. In the second, the incarceration rate gets replaced with the percentage of children who are married. To show that you're more likely to get incarcerated and less likely to get married when your from a black family.

Note how the character changes technically between the two states as its first "black men" and after that "black men and women". This will likely get unnoticed by a majority of the readers by design. Choosing the same colors for semantically very similar character shows that the author intended them to be perceived as "the same".

The example on the right side of figure \ref{technique-diffent-measure} shows to interesting things: characters need not be explicit and characters can stay the same between chart types.

In the first chart, the characters are not identified by the author but emerge from the visualization through a combination of *identification through visual statistics* and *implicit identification*. More specifically the reader will perceive two clusters of very different color on the map. If she has some knowledge about the geography and history of Germany, she will identify them as Former East and West Germany.

These characters are named in the next state. In contrast to the example on the left, the second chart here is completely different from the first. While the first depicts a map, the second is a timeseries chart. Nonetheless, the transition is still between two states showing different measures for the same characters.

The corresponding transition in Hullman et al. is a *measure walk*. [@Hullman-13:deeperunderstanding] A congruent *animation* for this type of transition is morphing a characters shape in the first chart into its shape in the second chart.



### Contrast characters

![technique-contrast \ref{technique-contrast}](/Users/jonas/Desktop/P9/bericht/img/technique-contrast.png)

| Characters | Attributes    |
| ---------- | ------------- |
| Differ     | Stay the same |

We call this technique contrasting because it highlights the difference between characters. It's typical for these transitions to keep the exact same layout between two states and just switching characters. Only like this, visual comparison is possible. This is the case for the example on the right in figure \ref{technique-contrast}. The income gap between black and white men becomes very clear in comparison the obvious lack of the gap for women when plotted in the same coordinate system.

But also in contrasting transitions there is subtlety as visible on the left side of figure \ref{technique-contrast}. Here the x-axis is actually being shifted between the states. But the shift has no other reason than saving space. It may take a little more effort from the reader to understand that the first chart shows states that have below average proportions of women and the second chart shows states that have above average proportions of women. Yet this *pan* (see >>Visualization parameters) could have been left out without changing the interpretation of the transition at all. This leads us directly to the next technique: *Reconfigure*.

The corresponding transition in Hullman et all. is a *dimension walk*. [@Hullman-13:deeperunderstanding] A congruent *animation* for this transition would be fading out the characters from the previous chart and fading in the new characters.



### Reconfigure

![\label{technique-reconfigure}](/Users/jonas/Desktop/P9/bericht/img/technique-reconfigure.png)

| Characters    | Attributes                                                   |
| ------------- | ------------------------------------------------------------ |
| Stay the same | Stay the same but get remapped to different visual variables |

The defining characteristic of this transition is, that no new information is shown from the first to the second states. The information is just shown in a different way to clarify different aspects. The left example in figure \ref{technique-reconfigure} first shows the reader just how much the cases of measles have been  reduced through vaccination. It then *zooms* in on the portion of the chart showing the cases in recent times. They were too small to be visible in the first chart but technically present. This sort of transition is a good replacement for a log-transformed axis which few people understand anyway (TODO:source)

The right example in figure \ref{technique-reconfigure} shows a more drastic reconfiguration of a map into a scatterplot. While the first chart makes it easy to see how for example the south of Italy is underdeveloped and while the north is above average, the same split can be found in the scatterplot when hovering over the dots, representing the individual regions of Italy. Conversely, the ranking and uniformity of countries can be extracted through visual statistics (>>Comparison) from the first chart. It's just much, much clearer in the second.

Reconfigure subsumes the *pan*, *zoom*, *reorder* and *visualization change* transitions from section (>>Visualization parameters). We have note found reconfigure transitions to be common enough to deserve further specification into these subcategories. Still, the subcategories have some use when considering trying to define what a congruent *animation* for this transition might look like. A discussion can be found in [@Heer-07:animatedtransitions].



### Split characters

![technique-split](/Users/jonas/Desktop/P9/bericht/img/technique-split.png)

| Characters                                      | Attributes    |
| ----------------------------------------------- | ------------- |
| Visible characters are split into subcharacters | Stay the same |

As described in (>>A simplified model) characters need not be atomic units. Groups of similar characters can be perceived as a character themselves. But sometimes the author wants to convey how characters in a group differ from each other and thus how homogeneous a group is.

Splitting characters is an essential device in narrative visualization because it nicely fits the general-to-specific pattern often used in storytelling (TODO:source). When splitting characters, the attributes will usually stay the same to serve as a frame of reference. A kind of shadow or contour of the "parent"-group will often remain too for reference. This is the case for both examples in figure \ref{technique-split} one who splits measles cases by states into years and one who splits European countries into regions.

Splitting characters is what Hullman et al. [@Hullman-13:deeperunderstanding] call a *general-to-specific* transition. As it typically happens "in-place", a congruent *animation* might be fading in the sub-characters while fading out the parent.



### Merge characters

![technique-merge](/Users/jonas/Desktop/P9/bericht/img/technique-merge.png)

| Characters                    | Attributes    |
| ----------------------------- | ------------- |
| Visible characters are merged | Stay the same |

Where there is splitting, there needs to be merging. But merging is conceptually more complicated than splitting. Splitting shows more information in the second chart while merging summarizes information from the first chart. In the second case it is much more important for the reader to understand the summary operation. Is the new character the mean, the sum or even the difference of the characters previously seen? Both examples in figure \ref{technique-merge} illustrate this problem very well. Visually, the natural factors presented in the second chart could very well be the mean of volcanic, solar and orbital change. But it's actually the sum. In the second example, the pink bars might well represent the sum of the dots on the left but it's actually the difference. TODO:[@Kim-19:designinganimated]

Although merging is complex it can be very useful for a storytelling approach that has been called *ladder of abstraction*-storytelling[@Victor-11:ladderabstraction]. It starts with very concrete, down to earth characters (like volcanoes or skill importance) and moves "up" towards more abstract concepts (like natural factors or skill importance difference).

Hullman et al. [@Hullman-13:deeperunderstanding] call this transition *specific to general*

### Highlighting

![\label{technique-focus}](/Users/jonas/Desktop/P9/bericht/img/technique-focus.png)

| Characters        | Attributes    |
| ----------------- | ------------- |
| Get filtered down | Stay the same |

This technique again serves the very common *general-to-specific*-pattern (TODO:source). It focuses the reader a specific character or on a special group of characters. The most common way to do this is by hiding the other characters. An example of this can be found in the right example in figure \ref{technique-focus} where all the second chart only shows Hungary from all the EU countries. In the example on the left side of figure \ref{technique-focus} the transition only fades out the other age groups to highlight the 25 to 44 group. Many other ways of highlighting one character are imaginable.

This transition is conceptually quite easy because attributes as well as characters stay essentially the same with the exception of the removal or deemphasis/emphasis of some characters.



### Progressive disclosure

![\label{technique-disclosure}](/Users/jonas/Desktop/P9/bericht/img/technique-disclosure.png)

| Characters                           | Attributes    |
| ------------------------------------ | ------------- |
| More or more of them becomes visible | Stay the same |

Similar to split and merge, this is the counterpart of highlighting. And equally, to merge it is a useful device for *ladder of abstraction*-storytelling. [@Victor-11:ladderabstraction] One version of this technique introduces new characters in the second chart as seen on the right in figure \ref{technique-disclosure}. Another variant shows more of the same character(s) in the second chart. The example on the left shows more and more of the course of the game between the Miami Heats and the Houston Rockets with each transition.

A particular case of progressive disclosure are what Hullman et al. call *spatial transitions*. A story might for example explore the mountainous terrain of the Alps and disclose more and more of it with each transition. 

What is congruent for progressive disclosure depends on the question if more characters are disclosed or more of the characters is disclosed. In the first case, a simple fade-in of the new characters is the most congruent. In the second case, some sort of movement is typically used.



### Contrast contexts (Temporal??)

![technique-temporal](/Users/jonas/Desktop/P9/bericht/img/technique-temporal.png)

| Characters     | Attributes    |
| -------------- | ------------- |
| Stay the same* | Stay the same |

The interest of the context transition is to show how the "situation" (the form of characters according to the same attributes) changes when the context changes. The most common case is comparing the situation at different points in time. In the right example in figure \ref{technique-temporal}, the author wants to convey how made up most of the world's poor in the 90s and is now home to a large part of the worlds middle class.

The example on the left shows how a changing context may lead to a change in characters. Here the formerly single large administrative region around Budapest has split into the rich Budapest and the poor Pest (notice how poor Pest only gets half of the name).

Hullman et al[@Hullman-13:deeperunderstanding]. identified the very prevalent change in temporal context but ignore the fact that other contexts like countries. As contexts contain groups of characters, they can become characters themselves at certain points of the story. That is why contrasting contexts has a close relationship to contrasting characters and the distinction is not always 100% clear.



### Move through a semantic field

![technique-semantic](/Users/jonas/Desktop/P9/bericht/img/technique-semantic.png)

| Characters | Attributes |
| ---------- | ---------- |
| Differ     | Differ     |

This is probably the hardest transition for readers to follow as none of the elements are shared between the charts. The only thing that connects the two charts is that their characters are connected through a similar meaning as described by Cohn [@Cohn-12:peanuts]. The reader therefore needs to move up in the conceptual hierarchy to find the relationship between the characters depicted.

*Causal* and *Question & answer* transitions identified in Hullman et al. [@Hullman-13:deeperunderstanding] would fall into that category. Because nothing is shared between the two states, there is no possible congruent *animation*. 



## Implications

TODO

















# Animation

Animation has been portrayed to provide many benefits to UX-design in general and visualization design in particular. Chevalier et al. [@Chevalier-16:animations25] have identified 23 different "purposes" of animation in visualization. Things like "Staying oriented during navigation" or "Hooking the user" which are finally classified into five meta-classes. Although this overview shows the popularity of animation in todays practice, it does not discuss any evidence that animation *actually* serves the given purposes.

To understand why designers might think that animation helps in these specific circumstances, we have mapped some lower level "strengths" of animation described in Heer et al. [@Heer-07:animatedtransitions] to all each of the purposes (see figure \ref{animation-purposes}).

![The purposes of animation found by Chevalier et al. [@Chevalier-14:notsostaggeringeffect] each employ one or more of the strenghts of animation.\label{animation-purposes}](/Users/jonas/Desktop/P9/bericht/img/animation-purposes.png)



#### Object constancy

Object constancy describes the ability to identify two objects as being the same entity between two states.  This is probably the strength most often invoked for animation [@Chalbi-18:understandingdesigning, @Wu-16:graphicalperception, @Bederson:doesanimation, @Heer-07:animatedtransitions] It is also closely related to the previously presented model and *characters* (TODO:how). If animation indeed supports object constancy, it would simplify the *location* of the target in the second state (>>Comparison) and this simplify the essential comparison task.

#### Attract attention

Movement very strongly attracts attention. This view is undisputed in the literature [@Munzner-15:visualizationanalysis, p. 238] and there is some solid evidence that motion is more effective in highlighting elements than other visual means [@Ware-04:motionsupport] This ability to highlight elements can be very useful for storytelling. But it also poses the risk to distract the reader from important, non-moving elements of a visualization like axes or labels.

#### Communicate causality and intentionality

In nature, we observe a certain smooth flow of cause and effect. When a rolling billiard ball hits another, the second ball will smoothly continue its transition. This leads to the intuition that smooth animation would imply some sort of cause and effect relationship (>>Congruence). This has been found to be true when depicting naturalist phenomena like the formation of lightning. [@Betrancourt-08:displaykey] Other authors have found that animation also conveys causality in more abstract displays but that it doesn't perform better than symbolic depictions of causality. [@Kadaba-07:visualizingcausal]

#### Engage

Many authors have remarked how readers where "excited" about animation in interfaces and that it thus led to higher engagement [@Tversky-02:animationcan, @Heer-07:animatedtransitions] The ability of animation to engage and excite is often presupposed based on anecdotal evidence. But few studies have used validated questionnaires to explicitly measure engagement. One study who did, found very mixed results [@Amini-18:hookeddata]. In their findings animation only led to higher engagement when coupled with pictorial representations of data. (>>Congruence) The main factor that led to higher engagement was "Aesthetics".  We suspect that in many cases there might be a "novelty" effect of animation that excites readers. There is little evidence that yesterdays fashionable animation still leads to higher engagement today. Furthermore, the novelty effect might lead readers and designers astray and they might confuse their positive feelings with actual benefits for understanding.[@Hassenzahl-10:inferenceperceived, @Baudisch-06:phosphorexplaining]

#### Data encoding

Similar to color or shape, motion can be used to encode data. Although the precision in interpreting it is very limited. [@Munzner-15:visualizationanalysis, p. 95] This property of animation is not listed in Heer et al. but we have decided to include it because it is well studied and forms the basis of multiple of the purposes listed by Chevalier et al. [@Chevalier-16:animations25]



## Congruence

![Congruence as defined by Tversky et al. [@Tversky-02:animationcan] means that the representation should correspond to the concepts that are conveyed. Apprehension means that the representation should be accurately perceived.](/Users/jonas/Desktop/P9/bericht/img/congruence-apprehension.png)

The question if animation is a natural fit for certain types of transitions has been described as the principle of *congruence* in  [@Tversky-02:animationcan, p. 247]:

> Effective graphics conform to the Congruence Principle according to which the content and format of the graphic should correspond to the content and format of the concepts to be conveyed.

According to this view, showing *change over time* would be a congruent use of animation. The reasoning is that people perceive change over time as smooth transitions in their everyday lives. One study accordingly found that animation reduced the perceived cognitive load when showing change in networks. [@Bach-14:graphdiariesanimated] Other authors have not found this benefits [@Tversky-02:animationcan] naming a lack of *apprehension* as the potential reason.

The second natural fit for animation are *viewport changes* like *pan* and *zoom*. These correspond to a persons natural movements through space, getting closer to objects, looking around etc. Animated transitions have indeed been found to be superior to static transitions for *panning* [@Shanmugasundaram-07:cansmooth] as well as *zooming*. [@Shanmugasundaram-08:effectanimated]

As previously discussed, animation has also been shown to be congruent for communicating causality and intentionality (>>Communicate causality and intentionality)

![\ref{Amini-18-hookeddata}](/Users/jonas/Desktop/P9/bericht/img/Amini-18-hookeddata.png)

Interestingly, multiple authors found that animation seems to be far less effective when used with abstract representations than when it is used with iconic representations. Amini et al. [@Amini-18:hookeddata] found that animated transitions in data visualization only led to higher engagement when coupled with iconic representations (see \ref{Amini-18-hookeddata}). A recent meta-analysis [@Berney-16:doesanimation] of 50 studies on animation and learning found, that animation only benefitted knowledge acquisition when used with "iconic representations" of the phenomena the needed to be studied. No effect was found for abstract representations.

We believe that congruence is strongly linked to object constancy. Animations will therefore fail in in abstract visualizations because they are not being used to establish object constancy. Looking at transitions as following characters through multiple states, exploring their attributes and contrasting them as proposed in (>>a simplified model) should help designers look at transitions in terms of object constancy. Which will lead to more congruent animation. Heer et al. warn against the risk of misusing object constancy [@Heer-07:animatedtransitions, p. 1240]:

>  Object constancy can be abused if an object is transformed into a completely unrelated object, establishing a false relation.

But even when the use of animated transitions is congruent, it may still fail to provide benefits over static
transitions because of a lack of apprehension. [@Tversky-02:animationcan]

## Apprehension

Tversky et al. describe the apprehension principle like this [@Tversky-02:animationcan, p. 247]:

> … graphics should be accurately perceived and appropriately conceived.

Heer et al.[@Heer-07:animatedtransitions] define six design principles for animated transitions to improve apprehension: *similar transforms should be grouped*; *trajectories should be predictable*; *transformations* should be *simple*; to simplify complex transformations, *staging* should be used and the transition duration should be *long enough* to follow (but not longer). Although these principles seem to make sense intuitively, research on visual perception has shown to produce unintuitive results.

### Visual tracking

Research on visual tracking explores how people track objects when the objects are moving. Participants typically have to track the position of several individual objects (circles or rectangles) or of a group of objects under different conditions. These experiments have revealed several, sometimes surprising, properties of the human perception:

*Animation speed*: Higher animation speeds do not strongly influence tracking ability. [@Franconeri-10:trackingmultiple]   

*Distance traveled*: Longer distances traveled make objects harder to track [@Franconeri-10:trackingmultiple]  

*Number of objects*: In typical situations, four objects can be tracked in parallel. [@Yantis-92:multielementvisuala]

*Unpredictable paths*: Have only a minimal impact on tracking performance. [@Chevalier-14:notsostaggeringeffect]

*Occlusion*: Doesn't impair tracking when it can be interpreted as "one object disappears" behind another [@Scholl-99:trackingmultiple]

*Crowding*: When objects that need to be tracked get close to each other, tracking performance is impaired.  [@Chevalier-14:notsostaggeringeffect]

*Multiple objects are tracked as one convex area*: Deformation of this area as well as distractors entering the convex area lead to impaired tracking performance. [@Yantis-92:multielementvisuala, @Chevalier-14:notsostaggeringeffect]

The last point also illustrates an important distinction in visual tracking tasks. Results are often different for cases where the identity of single objects needs to be tracked (*identity tracking*) or when a group of objects needs to be tracked (*group tracking*). In the example above, *group tracking* is worse when distractors enter the convex area formed by the objects of the group. *Identity tracking*, on the other hand, gets better in this case. [@Chevalier-14:notsostaggeringeffect]

Multiple design approaches have been proposed for better apprehension.

### Staggered animation

![In staggered animation, some objects start to animate only with a delay. ](/Users/jonas/Desktop/P9/bericht/img/staggering.png)

Staggered animation delays the start time animations incrementally for some objects. An example: out of 7 objects, 4 will start to move right away, 3 other objects will start to move only a bit later. The delay between the starts is called *dwell*. A dwell of zero means no staggering.

Staggered animation has been proposed to *reduce occlusion* as well as *complexity* during animation and therefore lead to a higher tracking performance  [@Heer-07:animatedtransitions]  but the effect has been shown to be negligible. [@Chevalier-14:notsostaggeringeffect]

### Staged animation

Staged animation splits complex animations between multiple visual variables into stages. An animation the interpolates between positions as well as between two colors, might, for example, be split into two animation stages. One where the objects move from position a to position b. Another, where they change color.

Heer et al. explicitly recommend the use of staged animation [@Heer-07:animatedtransitions] even though they found only modest benefits. In situations where staging led to complex and long animations, the authors found it even detrimental for tracking performance.

### Animation duration

Multiple authors observe that the duration of animation has a major impact on perception. [@Shanmugasundaram-07:cansmooth] Animation that is too slow has been shown to be strongly disliked by readers.[@Baudisch-06:phosphorexplaining] Others argue that very fast animation might lead to higher error rates [@Heer-07:animatedtransitions]. Interestingly, others have shown that in situations where the distances between objects remained large enough during animation, higher speeds had no effect on tracking performance. [@Franconeri:2010ela] Other authors observe that faster animations might have the benefit of reducing *change blindness*. [@Fischer:2010iw], [@Shanmugasundaram:2008]

### Direct manipulation

Readers typically perform better at recall and problem solving, when they can control animation themselves. Multiple authors have shown this for cases where readers could start and stop animated transitions [@Chan:2005vx],[@Hasler:2007]. But here too, it is hard to separate different effects. Tversky et al. point out, that interaction has been shown to benefit learning in itself and just happens to be coupled with animation often. [@Tversky-02:animationcan]

### Easing

John Lasseter in his classic paper on the principles of computer animation describes that animators developed a preference for "slow-in-slow-out" over linear easing over time. This recommendation has been confirmed in more formal experiments. [@Dragicevic-12:temporaldistortion]

Most of these examples show how perceptual properties, which are often not intuitive in their most basic forms, interact to form phenomena which are very hard to generalize in real-world applications.



## Unfair comparisons

Finally, animated transitions might contain information that is not easily deducible from the two states alone, resulting in an unfair comparison between animated and non-animated transitions. Tversky et al. [@Tversky-02:animationcan, p. 251] found in their review of existing research, that many studies included unfair comparisons that showed additional information in the animation scenario, they conclude:

> Showing that students learn material better when it is presented than when it is not presented should not be a goal of empirical research.

Fair comparisons, in contrast, need to identify *informationally distinct* states very clearly and show them not just in the animated scenario but also in all the scenarios they are compared to. The authors find that in these experiments, purported benefits of animation often fail to materialize.



# Research hypotheses

Based on the discussions on transitions and animation, we establish the following hypotheses:

#### H1: Relationship

Based on the findings that animation can communicate causality and intentionality (see section >>Communicate causality and intentionality), we believe that it might also imply a relationship in a more general sense. Our first hypothesis is therefore that animated transitions will more often lead participants to assume a relationship between two charts.

#### H2: Causality

Again based on the findings described in section (>>Communicate causality and intentionality), we believe that when readers assume a relationship between two charts, they will more often conclude that the relationship is causal when the transition is animated.

#### H3: Cueing

Animated transitions will focus the reader on the characters the author intended. This will lead them more often to interpret the relationship between the charts as the author intended and to talk about the characters the author wants.

#### H4: Object constancy

Animated transitions will support object constancy in situations where only one of the charts is shown at a time. The effect will vanish when both charts are shown at the same time.

#### H5: False memories

We hypothesize the the in-between states from animated transitions lead to "false memories" which would interfere with the correct interpretation of the charts and hence the relationship. This assumption was based on a design recommendation from the literature [@Heer-07:animatedtransitions] TODO:source to avoid "nonsensical" intermediate states in animated transition as they might confuse readers.

#### H6: Engagement

Readers will be more engaged by the visualizations with animated transitions.



# Experiment

In order to test the above hypotheses we have conducted an experiment on Amazon Mechanical Turk which will be described in the following sections.

## Overview

Before we will go on to discuss the specifics of the experiment, we will present the stimuli. Each participant has seen two two stories consisting of four "mini-stories" each. Each of these mini-stories contained two charts and a transition between them. In one of the stories, the transition was animated. In the other it was static. The participants could transition between the two charts by scrolling up and down. At the end of each mini-story, we asked them to answer a set of questions about what the had just seen. While answering, the were free to scroll back up and see the charts again. We will now present the two stories in more detail.

### Mortality

The first story is about the evolution of mortality rates in the U.S. It is a modification of an article published by Bloomberg in 2014.[@Klein-14:howamericans]

#### Mortality A

![mortality-demographics](/Users/jonas/Desktop/P9/bericht/img/mortality-demographics.png)

The first mini-story in the mortality story moves the reader through a semantic field. It begins with a chart showing how the population has gotten older over time. The following chart shows how the mortality rates of both genders have been reduced drastically over the same period of time. The transition thus conveys how reducing mortality rate leads to an aging population. The transition is animated by merging all the age groups into the grey "Everyone"-line and shows the lines for men and women subsequently.

#### Mortality B

![mortality-absolute](/Users/jonas/Desktop/P9/bericht/img/mortality-absolute.png)

The second transition contrasts the mortality rate of different characters. It starts with the last chart from the previous transition showing the mean mortality rates for "Men", "Women" and "Everyone". This is contrasted to the evolution of the mortality rates of different age groups. From this transition, the reader can see that the mortality rate is dominated (unsurprisingly) by elderly people. An apparent slowdown in mortality rate reduction in the first chart is therefore mostly due to to the development in the "Over 84" group. In the animated transition "Men" and "Women" characters are first hidden, the the "Everyone" character is being split and morphed into the different age groups.

#### Mortality C

![mortality-relative](/Users/jonas/Desktop/P9/bericht/img/mortality-relative.png)

Again, this mini-story starts with the last chart of the previous mini-story. In the second chart, the same data is shown but with the mortality rate of each character normalized to its rate in 1968. Thanks to this it becomes apparent that even though the elderly have made most progress in absolute numbers, the relative reduction is highest for younger age groups. This transition is animated by morphing each character into its new shape.



#### Mortality D

![mortality-causes](/Users/jonas/Desktop/P9/bericht/img/mortality-causes.png)

Some readers might have wondered why the mortality rate for "25–44" year olds was rising  at the beginning of the 90s. This mini-story introduces their causes of death in the second chart which quickly answers the question: it was precisely at this point that the AIDS-epidemic was at its peak and has most strongly affected this age group. The animation first hides all the other age groups, splits the "25–44"-line and morphs it into the different causes of death.



### Energy

This story talks about the evolution of energy sources in the U.S: since the beginning of the century. It combines a story from the New York Times  [@Popovich-18:howdoes] with one from Forbes [@Mahajan-18:plungingprices].

#### Energy A

![energy-A](/Users/jonas/Desktop/P9/bericht/img/energy-A.png)

The energy story starts by showing the evolution of different energy sources in the U.S in absolute numbers. In the second chart it shows how the proportions have changed over time. From comparing the two charts it becomes clear that while the absolute output has either risen or stagnated, coal has been used significantly less while the focus seems to be shifting to natural gas and the renewables. The animated transition morphs the lines into their respective areas in the second chart.

#### Energy B

![energy-B](/Users/jonas/Desktop/P9/bericht/img/energy-B.png)

As in the mortality narrative, the second transition starts out with the last chart from the previous transition. In the second chart it shows how wind has become a major energy source in certain (great plain states). The transition leads to the conclusion that, although the rise of wind energy looks unspectacular on a national scale, growth has been exponential in some places. The animation first hides everything except the area for "wind" which is then split and morphed into the lines of the individual states.

#### Energy C



![energy-C](/Users/jonas/Desktop/P9/bericht/img/energy-C.png)

The third transition focuses on the strange stagnation of wind energy in California after 2013. To find out where the focus might have shifted, the second chart shows the energy mix of California over time. A marked rise in solar power after 2013 implies that the state has decided to invest in this renewable instead of wind. The animation first highlights California and then expands it into the other sources.

#### Energy D

![energy-D](/Users/jonas/Desktop/P9/bericht/img/energy-D.png)

Finally, this transition explores one of the possible reasons for Californias decision to focus on solar energy from 2013 on. The second chart shows the price evolution for different energy sources. While wind energy has been consistently inexpensive, the price of solar power has fallen substantially over time. It even reached the price level of wind energy in 2013. Which implies that Californias focus on solar rather than wind energy might have economic reasons. The animation morphs the areas representing the share of different energy sources into the line showing its price evolution.



## Experiment design

### Introduction

There is a fundamental tension when researching visualization design techniques like animated transitions. On one hand, quantitative research tries to remove every possible confounder when doing experiments. On the other hand it's precisely the interplay between different variables that make effective visualization designs. 

![experiment-conflict](/Users/jonas/Desktop/P9/bericht/img/experiment-conflict.png)

Obviously this mirrors the fundamental difference between disciplines that use quantitative methods and those where only qualitative methods make sense. Both cases can be found in the visualization literature. Placed on the left side of the spectrum, we find research on visual perception like Franconeri et al.'s work on object tracking [@Franconeri-10:trackingmultiple]. On the other end of the spectrum, new design approaches to, for example, compare phylogenetic trees [@Munzner-03:treejuxtaposerscalable], can only be properly evaluated in context through qualitative usability studies. We have decided to situate our study somewhere in the middle between these two poles for two reasons: First, the study aims at providing generalizable insight on the strengths of animation. Second, the topic researched, namely narrative visualization, is high context as readers can only make sense of transitions in context (see >>Comparison). These consideration will make some of the following design decisions much clearer.



### Independent variable and conditions

(TODO:illustration of the different transitions)

The main concern of the experiment was finding differences between *animated* and *static* transitions which was the independent variable. We tried to counterbalance for some of the confounders like topic and visualization design by testing stories on two different topics with different designs. This has led us to the following within-subject design:

| Condition 1                             | Condition 2                               | Condition 3                               | Condition 4                             |
| --------------------------------------- | ----------------------------------------- | ----------------------------------------- | --------------------------------------- |
| Mortality story with static transitions | Mortality story with animated transitions | Energy story with static transitions      | Energy story with animated transitions  |
| Energy story with animated transitions  | Energy story with static transitions      | Mortality story with animated transitions | Mortality story with static transitions |

By its nature, each story consisted of a number of different transitions but we did not counterbalance them.

Initially we intended to include another independent variable to more throughly test H4. This independent variable compared the design where only one chart is visible at a time (*superposed*) with a design where both charts are visible at the same time (*juxtaposed*). We hypothesized that animation would have help with object constancy but only when one chart was replaced with the other (*superposed*). We decided to exclude this variable from the current experiment because it would have required two more stories to do a within-subject design or an order of magnitude more participants to achieve the desired statistical power. For both of these we lacked resources. Because both pilot studies included the *juxtaposed* and *superposed* distinction, we can still contribute some observations which will also be presented in the (>>Results) section.

Before each story, we added a screen that simply showed the initial chart of the first mini-story and asked the participant to report on her understanding of this single chart. This was to account for the fact that for mini-stores B to D, the participants had already seen the first chart in the previous mini-story and we did not want mini-story A to be an exception in this regard.



### Dependent variables

To test the hypotheses described in chapter (>>Research hypotheses), we have established a number of measures. A part of them was based on a set of six questions that were displayed at the end of each mini-story which is included in the annex.

#### H1: Relationship

After they had seen both charts, we asked readers what they concluded from them. If in their answer, they wondered, thought or assumed that something from the first chart was somehow related to something in the second chart, we coded the **relationship** measure as 1, otherwise as 0.

#### H2: Causality

Whenever the participant perceived a relationship, we also coded if it was causal. If the participant used words like *due to*, *caused*, *because*, *led to* or similar, we coded a measure **causal** to be one 1; 0 otherwise.

#### H3: Cueing

Multiple studies have found that animation has a very high cueing effect (TODO:citation). This means that the readers gaze is automatically attracted to anything that moves. In the proposed experiment, the main characters therefore should be highlighted by the animation. One first effect that we predict is that this will lead people to mention fewer characters in their conclusions. During the coding phase, we therefore counted the **number of characters mentioned**. We not only included characters that were directly visible but also groupings of characters like "green energy sources" to count as one. 

Secondly, we predicted that guiding the readers attention to the characters the author intended would lead participants to interpret relationships according to what the author wanted to convey. We called this measure **correct relationship**. Whenever we found the mention of a *relationship* during the coding, we compared it with the story the author wanted to tell (see >>Overview). When the participant came to the same conclusion, we coded this measure as 1 and otherwise as 0.

#### H4: Object constancy

If animated transitions would support object constancy, participants would need fewer transitions to come to their conclusion because their cognitive load would be reduced. We therefore measured the **number of transitions** between the two charts. When the transition was animated the participants needed to cross the 10% and then the 90% threshold successively (or the inverse) to be counted as one transition. This excluded any back and forth movements between these boundaries. We assume that these would mostly have happened when readers accidentally would have scrolled too fast and needed to refer back to understand the animation.

#### H5: False memories

We wondered if "nonsensical" intermediate states from animated transition might interfere with the interpretation of the charts and the transition. We tested this by showing participants screenshots of the "true" (initial and final) states and screenshots of intermediate states. We asked participants to **decide if the screenshot showed the data they had seen before or not**. We predicted that participants who saw animated transitions would more often "fall" for the screenshots of intermediate states.

#### H6: Engagement

The literature generally suggests that animated transitions will lead to higher reader engagement. To measure this, we have used a subset of the validated *user engagement scale* questionnaire. The scale measures multiple attributes like *focused attention*, *perceived usability*, *aesthetics* or *reward* that together form what is known as *engagement* in the literature. [@Obrien-18:practicalapproach] But as even the short questionnaire  contains twelve questions which would have been too long to ask after each transition. We therefore decided to use a sub scale of the *user engagement scale* that measures **focused attention**. The reason to use *focused attention* was that it was found to be the factor that explained most of the variance in O'Brien et al.'s anaylsis [@Obrien-18:practicalapproach] Also, the questions skew towards the positive (compared to the other option, *perceived usability*) and we did not want to negatively prime the participants (the questions used can be found in the annex:TODO)

We considered **word count** to be another proxy for engagement. As the participants were in a task-oriented setting, we generally expected them to not lose their time with long answers. If answers turn out to be considerably longer in one of the scenarios, we assumed that it was because it engaged them.



### Other factors considered

#### Screen size

To exclude effects that would result in differences in layout and element size, the experiment was designed for a fixed viewport size of 1280px × 720px. Participants with viewports that were smaller than this were blocked from the experiment.

#### Browser capability

Equally, participants with browsers that did not support the technologies we used for the animated transitions were blocked from participating in the experiment. This had the positive side-effect of equally blocking slower browsers.

#### Performance

For each mini-story viewed by a participant the drawing mean drawing performance was calculated. Participants with a drawing performance of less than 20fps were excluded from the analysis.

#### Age

In the final survey we asked the participants about their age to better understand the diversity of population that was participating in the experiment.

#### Gender

We equally asked the participants about their gender in the final survey to help us understand how divers our population was.

#### Level of education

Also asked in the final survey, this would be a rough proxy for visualization understanding. We assumed certain outliers might potentially be explained by a low level of education.

#### Vision

Equally, if the participants reported weak and uncorrected vision, we could potentially exclude them from the analysis if we found that the factor skewed the results.

#### Colorblindness

![experiment-colorblindness](/Users/jonas/Desktop/P9/bericht/img/experiment-colorblindness.png)

A final criterion we considered for explaining outliers was color blindness. Instead of asking participants to report that they were colorblind, we presented them with three plates from the Ishihara colorblindness test  [@Ishihara-17:ishiharatest] which tested for the for the red-green blindness that affects about 8% of men and 0.4% of women. [@-19:colorblindness]



## Visualization design

### Story selection

Selecting or creating the right story was one of the most delicate parts of the experiment design. The characters and the broader context needed to be familiar to a wide audience because visualization interpretation is highly dependent on context knowledge (>>Narrative visualization) and the experiment did not provide an introduction to the topic. While a narrative on paratransit (a special means of transport for disabled people in the U.S.) was planned to be included in early versions of the experiment, it was removed because the topic was not known to a large portion of people.

The story also had to avoid highly controversial topics because we feared that implicit reader knowledge might interfere with the interpretation of the visualizations (>>Comparison). We have seen this happen in both stories but it was less prevalent than we feared.

Finally, the story needed to be told mainly through the visualizations. This turned out to be to most constraining factior. In most examples we have found, that textual narrative was essential to understand the story. The story on the evolution of mortality[@Klein-14:howamericans] was chosen exactly because it contained very little text. The story about the energy sources was specifically created in a way that we hoped would be self-explanatory with very little text.



### Minimal textual narrative

Textual narrative was excluded from the experiment because it is a huge confounder (TODO:source). In typical narrative visualization the story is presented through textual or audio narrative. The visualizations mostly serve to reinforce the point. But, when presented like this, relating the participants answers to any differences in the visualizations would be very difficult. On the other hand, narrative visualization is impossible to interpret a visualization without labels or a title. We therefore decided to include labels as well as a chart title. But we made sure that there was nothing hinting at a relationship in any of these. The charts are completely self-contained and can be understood even without the surrounding narrative.

### Visualization literacy

![experiment-charttypes](/Users/jonas/Desktop/P9/bericht/img/experiment-charttypes.png)

Previous studies have found that the majority of people are unable to correctly interpret complex visualizations. (TODO:source) According to these authors, the "safe" visualizations are bar charts, line charts, scatterplots and maps (>>see visualization literacy) This finding is supported by our analysis of narrative visualization online who also almost exclusively use these simpler visualizations (>>see a simple model) As we didn't want participants to fail because they couldn't read the single charts in the first place, we have decided to limit the experiment to line charts and stacked area charts. In our pilot studies, these chart types have been "safe", even though the stacked area chart posed problems to some of the participants in the experiment (>> see Results). One chart type that was excluded based on pilot data was the *slope chart*.

### Interactivity

Another factor to control was interactivity. Prior work who has demonstrated positive effects of animated transitions often involved higher levels of interactivity compared to the static transitions. (TODO:source) But interactivity has been shown to have benefits in itself, for example for learning. (TODO:source) All transitions were therefore designed to be totally reader controlled. By scrolling down, readers could advance to the next chart, by scrolling up, they could go back to the previous chart. There are also discussions about the proper duration of animated transitions in the literature (TODO:sources), which we intended to avoid equally by making the animation duration controllable through scrolling. This is coherent with what we have found in our analysis of narrative visualization (>>Analysis of narrative visualizations)



### Animation design

Three different kinds of animated transitions where used throughout the experiment which were all concerned with supporting *object constancy* in different scenarios: 

#### One-to-many

A good example for this is case is >>"Mortality D". There, the animation needed to convey that the "causes of death" in the second chart only concerned the "25–44" year old age group. This is done through a *staged transition* (>>see staged transition). We first highlight the "25–44" year old age group by hiding all the others and then splitting and morphing this character into the the different causes of death. The same approach was applied in >>"Mortality B",>> "Energy B" and ">>Energy C".

#### Many-to-one

This case can only be found in >>"Mortality A". Here the characters of the different age groups are being morphed into a single line that represents "Everyone". The other characters "Men" and "Women" in the second chart were subsequently shown.

#### Many-to-many

This case is well illustrated by >>"Energy D" where the characters representing different energy source where morphed to represent the price evolution instead of their proportion in energy production. Many-to-many animations are also being used in >>"Mortality C" and >>"Energy A".



### Animated axis interpolation

In the first pilot study, we have included axis interpolation for some transitions according to the principle laid out in. [@Heer-07:animatedtransitions] But they were excluded from the final experiment as they introduced another confounder and were not directly related to the research question. (TODO: check again) Additionally, we have found a variety of ways how axis interpolation was animated in our narrative visualization corpus. Something that would clearly be worthy of further research in a future study.

### Interpolation

![\label{design-interpolation}](/Users/jonas/Desktop/P9/bericht/img/Interpolation.png)

For all interpolations, we implemented “slow-in-slow-out”-easing as recommended in [@Dragicevic-12:temporaldistortion] for all interpolations. For interpolating between colors, we used a perceptually uniform HCL-interpolation because it “intuitively looks right”. [@Sarifuddin-05:newperceptually] Notice in figure \ref{design-interpolation} how RGB and LAB tend to desaturate while HSL and CubeHelix tend to oversaturate, HCL strikes a good balance.



### Design process

To refine the stories and their design, we have applied an iterative design process including user testing as described by Melican. [@Melican-04:userstudies] Each design iteration was implemented and presented to readers who had not previously seen the story. We observed them while they were making sense of the visualizations and asked them what they understood and where they experienced difficulties. While these tests have been very informal, they have again and again uncovered design flaws that were completely obvious in hindsight and led to the creation of a new version of the prototype. For example, during testing we have observed that readers typically scrolled much faster than we expected. Being the designers we knew that we needed to scroll slowly to properly see the transitions which was naturally not the case for the unsuspecting reader. Also the decision to exclude the slope chart or the decision to highlight the character initially/at the end in one-to-many/many-to-one animations where direct results of user testing



## Results







# Implementation

In its essence, the mathematics of visualization is very simple. It is only concerned with creating functions that map values from the data domain to screen pixels:

$$ \mathit{f}: Data → Pixels  $$

Unfortunately, this function $$\mathit{f}$$ is not injective which leads to some problems that will be discussed later on in this part.

## Requirements

#### Online narrative visualization

Much the specification of the experiment has already been described in a previous section (>>Experiment). Essentially, we needed a way to build web-based narrative visualizations with animated transitions for the experiment. It was therefore an obvious choice to use the common HTML, CSS , SVG and ECMAScript stack for the implementation; also because the author is familiar with it. For increased programmer convenience through type checks, we have used TypeScript to generate the final ECMAScript.

The D3 library [@Bostock-11:datadrivendocuments] was used to generate the final SVG-code from the data. D3 was chosen because, again, the author is familiar with it; it has become the de-facto standard for data visualization on the web; and it is general enough to stay out of the way when a custom implementation is preferable.

#### Rapid prototyping

Because the stories and the design were developed alongside with the implementation, we wanted a system the would allow us to quickly test different design choices or modify the story. We therefore decided to build an application generator the would interpret a domain specific language (DSL) perfectly tailored to our needs. An in depth-depth discussion can be found in section (>>Declarative language for narrative visualization)

#### Limited range of chart types

As discussed in section (>>Visualization design/Visualization literacy), the range of charts that the general public easily understands is very limited. We therefore limited our ambitions to a system that would be able to generate simple 2D chart types like the line charts and stacked are charts mentioned in section  (>>Visualization design/Visualization literacy).

#### Transitions focused on characters

Based on the discussion on *object constancy* (section >>Animation/Object constancy) and the findings in (>>Techniques), we decided to base all of the animated transitions on the concept of *characters*.

#### Performance

Performance needed to be good enough to not impair the perception of the animated transitions. We made some informal user tests to find out what would be an acceptable performance. For this, we presented to versions of the same narrative visualization to participants (n=4). One which presented the animation at about 15 frames per second (fps), the other at about 40 fps. After much consideration, two of the subject correctly identified the slow animation. We therefore gave it some margin and set the lower performance limit to 20 fps which is in line with the 25 fps typically used for movies.

#### Reliable logging of user interaction and answers

Finally, the implementation needed to provide reliable way to collect data on scrolling (H4) and make sure that all the answers were transmitted and that everything was reliably connected to the right participant.



## Prior art

#### Level of abstraction

Visualization is an obvious candidate for domain specific languages and many approaches to configuring visualization exist. [@Wickham-16:ggplot2elegant, @Heer-10:declarativelanguage, @Satyanarayan-16:vegalitegrammar] The reason for this prevalence is that there is a limited number of chart types that are being used over and over again. A typical number is something between 40 [@Holtz:dataviz] and 150 [@:dataviz] DSLs are especially well suited for problems that are encountered repeatedly and they make them quicker to solve [@Mernik-05:whenhow] 

![code-vega.pdf](img/code-vega.pdf) 

One very recent example of a declarative language for visualization on the web is Vega-Lite. [@Satyanarayan-16:vegalitegrammar] Vega-Lite's DSL builds on JSON and on the concept of the "Grammar of Graphics" (TODO:citation). As you will see in (>>declarative syntax), Vega-Lite provided heavy inspiration for the development of the chart creation DSL described in (>>Anatomy of a chart). DSLs for visualizaiton specification have not been a topic of visualization research practice and design from the start. A 2006 paper by Heer and Agrawala that reviews common design patterns in visualization software only mentions DSLs for data transformation but not for visualization specification. [@Heer-06:softwaredesign].



#### Animated transitions between charts

Even less research has been conducted on how to best describe animated transitions. Heer and Bostock, who later went to create the before mentioned D3 [@Bostock-11:datadrivendocuments], have described one approach in an earlier paper. [@Heer-10:declarativelanguage] Their system is based on marks like lines and bars. To create animations, the author explicitly defines start and end states of a mark, as well as a duration and the system creates the necessary interpolation states and a time-based redraw. But it seems that the authors merely look at it as a toy.

Most close to our problem domain is Ellipsis. An authoring tool for narrative visualization. [@Satyanarayan-14:authoringnarrative] JavaScript based DSL.

Decouples narrative structure and visualization for easier authoring. [@Satyanarayan-14:authoringnarrative]

Uses the p-set model to parametrize visualization and make it stateful. (we only have one parameter: scroll position, would be easy to introduce clicks or other)

They observe tight coupling between narrative and visualization implementation. (states)

We adopted their core abstractions of scenes, annotations and interaction triggers. We contribute the idea of characters.

Elipsis does not allow to animate transitions between two independently declared visualizations. That's why we chose to interpolate between the character shapes instead of visualization parameters.[@Satyanarayan-14:authoringnarrative]



Degree of abstraction

1. Graphical librarires
2. Declarative language
3. Chart typologies with pre-defined templates [@Mei-18:designspace]



There is no declarative framework for explanative visualization [@Mei-18:designspace]



An earlier paper byThis shows that DSLs for visualization specification are not that old and probably still have some research potential.



### Annotations







* : Separate specification from execution → simplify development, enable unobtrusive optimization. They already have
* [@Bostock-11:datadrivendocuments]: 





## Declarative syntax

Annotations are character or scene bound.

Tradeoff between convention and configuration

Reasonable defaults, configuration if necessary.

### Anatomy of a chart

![code-chart adsf](img/code-chart.pdf)

- ![](img/1.pdf) Each chart has a `name` which is used to identify it. If there is a HTML element with an ID that corresponds to the chart it will be used to render the chart there. The chart dimensions as well es its position on the page are thus completely defined by the layout of the surrounding page.
- ![](img/2.pdf) The `type` defines the basic chart type (>>level of abstraction) that should be used. Behind the scenes, each chart type is implemented as a subclass of an abstract `Chart`-class that implements its own `draw`-method.
- ![](img/3.pdf)The path to a `CSV`-file with data. We don't implement any kind of data transformation functionality and expect the data to be in the right format. This is because tool is presentation-oriented, so there is no need to explore the data through filtering or other transformations.
- ![](img/4.pdf)The chart title is implemented as an `annotation`. Annotations can be bound to different elements throughout the DSL and positioned relative to their `start` or `end` through the `offset`-property.
- ![](img/5.pdf)In the axis-definitions, different attributes (`field`) of the data are mapped to different axes. The axes are identified by their `name` which can differ depending on the chart `type`. Slope charts for example have three axes:  `x`, `from` and `to`.  The advantage of defining each axis explicitly like this is, that again `annotations` can be bound to them.
- ![](img/6.pdf)The `type`-property of an axis defines how that data should be parsed. Is the data domain continuous numbers (`quantitative`), ordered discrete values (`ordinal`), unordered discrete values (`categorical`), or timestamps (`temporal`). [@Munzner-15:visualizationanalysis, @Satyanarayan-16:vegalitegrammar] The `domain`-property defines the corresponding start and end values of the axis. Often, the minimal and maximal values in the data are simply used. When using visualization for storytelling, sometimes that author wants values to "overshoot" the axis, or to fix the axis at a certain domain for dramatic or clarity reasons, which is why we give allow explicit control of this parameter.
- ![](img/7.pdf)Based on the model developed in section (>>Simplified model), we look at narrative visualization through the lense of characters. This is why our DSL contains an explicit declaration of the whole `cast` of characters in each chart. We assume that individual characters are identified by a `categorical` attribute in the data which is defined in the `field`-property.
- ![](img/8.pdf)Because characters have such a high importance in this view, they are defined individually:

![code-characters.pdf](img/code-characters.pdf)

- ![](img/8.1.pdf)In the three chart types we have implemented, characters are uniformly distinguished by `color` which is also what is typically used in narrative visualization. Other options like symbols or textures are naturally imaginable. The necessary data to `draw` each character is found via its `name` property.
- ![](img/8.2.pdf) Shows an example of the use of multiple `annotations`. Two are used to indicate the initial and the final share of each energy source, the third one to label the energy source itself. This approach has proven to provide a lot of flexibility. Especially when coupled with CSS `class`es that make individual styling of characters possible.
- ![](img/8.3.pdf)Such flexibility comes at the price of verbosity as each character needs to be specified individually. 
- ![](img/9.pdf)Finally, some basic visual properties of the chart can be defined in the `design`-section of the specification.



### Anatomy of a transition

![code-transition](img/code-transition.pdf) 

- ![](img/1.pdf) A transition is not treated very differently from a chart. It also has a `name` and is rendered into an HTML element with the corresponding ID.
- ![](img/2.pdf)+ ![](img/3.pdf) But such a transition chart is defined by the charts it transitions between in the `from` and `to` property.
- ![](img/4.pdf)In our analysis of narrative visualization (>>a simplified model) we have concluded, that `morphing` is only sensible for transitions between charts that share at least one character. In the other cases, we use a `fading` transition.
- ![](img/5.pdf)While some transition types like "Explore attributes" have a one-to-one relationship between the characters of the two charts, transition types like "Split characters" and "Merge characters" will have a one-to-many or many-to-one relationship. This is modeled by mapping the same character in the `from` property to multiple characters in the `to` property or the inverse.
- ![](img/6.pdf) The system also supports axis interpolation, even though we did not use it in the end. Any axis in the initial chart can be mapped to any axis in the final chart. This makes especially "Reconfigure" transitions possible.



### Directing all of them

In the experiment, the visibility of charts and the animations was solely controlled by scrolling. We therefore introduced another structure which we have called the `director` to continue with the cinematographic vocabulary. It is responsible to show and hide the appropriate charts and animations at the given scroll positions.

![Director asdfa asdf asdf asdf asdf](img/code-director.pdf)

* ![](img/1.pdf) The directors `name`is used in the experiment to identify the mini-story and the configuration the participant was looking at.
* ![](img/2.pdf) A `type` property was introduced to account for some differences in behavior between *juxtaposed* and *superposed* layouts. Namely, if the initial chart should be hidden or not.
* ![](img/3.pdf) The steps define a range of scroll positions and a chart or transition that should be displayed within this range.



### Program generation

1. In a first step, the system generates objects for all the charts with their axes, characters and annotations from the specification. Wherever something is not defined, it assumes a sensible default if possible.
2. Only then, the system generates the objects who represent the transitions which reference the chart objects.
3. Finally, a director object is generated with references to all the charts and transitions. The director continually checks if the viewer has been scrolling.
4. When the scroll position changes, the director calls the `draw`-method on the charts/transitions that should be visible at this position. It calls the `hide`-method on all the others. If at the current position, a transition should be displayed, the `draw`-method an additional `position` parameter between 0 and 1 is set to indicate the state of the interpolation.
5. This sets in motion a rendering cascade where every object also calls the `draw` methods of its children to render the final display. This corresponds to the *render*-pattern described in  [@Heer-06:softwaredesign])



### Interpolation

A few remarks on how we have handled the interpolation described above. While previous work has usually interpolated between visualization parameters [@Heer-10:declarativelanguage, @Satyanarayan-14:authoringnarrative], our system interpolates between SVG-shapes. Thanks to this, our system can generate animated transitions between two completely different visualizations. The only condition is that a character needs to be represented by a single, closed SVG shape, a moderate constraint in our eyes. Other system only permit transitions "within" the same chart.

One problem when interpolating directly between SVG-shapes is that they need to have a one-to-one correspondence between their anchor points. If this is not the case, there needs to be some method to add points the simple shape. For this we have used an algorithm that splits segments of the simpler shape until it both shapes have the same amount of anchors. This has produced visually good results in all our cases. But it had the downside of making the calculation of interpolated states slower.

![\label{interpolation}](img/Interpolation-5967203.png)

For interpolating between colors, we used a perceptually uniform HCL-interpolation because it "intuitively looks right".[@Sarifuddin:2005] Notice in figure \ref{interpolation} how RGB and LAB tend to desaturate while HSL and CubeHelix tend to oversaturate, HCL strikes a good balance.

For all interpolations we have used *slow-in-slow-out* easing as recommended by previous authors. [@Dragicevic:2012]



### Optimization

* requestAnimation frame
* interpolation algorithm
* caching and pre-calculating values (don't redraw if nothing has changed)
* parallelization [@Heer-10:declarativelanguage]

