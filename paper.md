

# Introduction {#sec:introduction}

When they hear the word "data", it evokes feelings of something rather dry, even lifeless in many peoples minds. They might have heard that the data generated each year is continuing to grow exponentially each year [@Reinsel-17:dataage]. They might have heard of the many marvels that data will deliver to humanity. But they simply can not relate. Data is something for the specialists who have a special trait of character, something that escapes the regular person.

This view of things is reinforced by most of the research that is being conducted around data. Much of it is focused on how to store, process and interpret the ever larger amounts of data. And while these researchers push the boundaries of what is technologically possible, human capabilities remain painfully  limited within narrow boundaries. It is obvious how this situation leads some to conclude that we need to either augment the human brain through technology [TODO:source] or to remove the human from the loop entirely. [TODO:source].

User interface design in general and data visualization in particular have traditionally taken the role of the mediator between the two worlds. Visualization research has extensively explored how to maximize the data that can be communicated to humans. They have faced limitations like available pixels on the screen and the perceptual and cognitive abilities of people. Much of the thinking in the field is focused on not wasting these precious resources. It is epitomized in recommendations like "maximizing the data-to-ink ratio". [@Tufte-01:visualdisplay] and in observations like this: "The visual system provides a very high-bandwidth channel to our brains". [@Munzner-15:visualizationanalysis, p. 6]

We argue that it is precisely this narrow focus on maximizing data throughput that has alienated the regular person from data. This is because feeding a person the maximum amount of data possible comes at a cost. While the visual system and the brain might be able to process a surprisingly high amount of information, it puts a lot of strain on them. A researcher who is driven by the prospect of finding answers to his questions in the data will probably have a high tolerance to put up with this. But even for them, data analysis is a fatiguing task. 

Visualization that is intended to communicate therefore can ill afford to burden the recipient the task of exploration. And while this might seem obvious, the distinction only emerges slowly in the visualization community. A recent tweet from John Stasko, a visualization researcher for over 30 years, shows this [@Stasko-19:tweet]:

> I grow increasingly convinced every day that data visualization for analytical, exploratory purposes and data visualization for communicative, presentational purposes are more different than most people think.



## Narrative visualization {#sec:narr-vis}

![1. The Washington Post uses annotation extensively to show how smaller counties had a tendency to swing to the right while cities were swinging left between 2004 and 2016. 2. In this New York Times story about rural Russia[@Barry-13:russialeft], a map is used as a navigational aid. [@Gamio-16:urbanrural] 3. This article by *The pudding* explores what jobs truck drivers that are being replaced by self-driving cars could transition to [@Dworkin-18:whytech]. At the end the reader can select other jobs that might be automated in the future and explore alternatives. 4. Comes from an article on the still existing differences between Eastern and Western Germany [@Borgenheimer-14:germanunification]. The two regions are consistently identified with through their color in the article. \label{narrative-visualization}](img/narrative-visualization.pdf)



After a few years of experimentation with including interactive, explorative visualization in their stories, multiple online newspapers have found that users don't click on them, except when the authors make it abundantly clear why they should interact [@Stabe-16:whyft; @Tse-16:whywe]. Archie Tse from the New York Times puts it like this: 

> If you make the reader click or do anything other than scroll, something spectacular has to happen.

A study by Boy et al. [@Boy-15:suggestedinteractivity] titled "Does it Engage Users to Explore Data?" came to a similar conclusion: Participants preferred to gain information from a textual narrative rather than from an interactive visualization. Their preference changed only when the authors showed an animated mouse cursor that hovered over the visualization and showed how participants would quickly get the answer through interaction. These findings indicate that readers prefer a high amount of guidance in presentations of data because it removes the burden of exploration from them.

A recent field of research, called *narrative visualization*, is precisely concerned with the question of how to best guide readers when presenting data. Narrative visualizations on the surface share many traits with conventional visualization but they but they have four distinct characteristics that are all related to guiding the reader [@Riche-18:datadrivenstorytelling, pp. 85]: they **narrate and comment** a visualization through text, audio, and annotations (figure \ref{narrative-annotation}); they provide **navigation aids** like timelines, maps, breadcrumbs, etc. (figure \ref{narrative-navigation});  they provide **controlled exploration**  through embedded interactive visualization; and they **link separate charts** through color, animation and/or interaction (see figure \ref{narrative-visualization})

As the name implies, narrative visualization puts charts into a narrative sequence. Such logical sequences are highly desirable when communicating as they lead to better understanding and higher recall of the information presented [@Thorndyke-77:cognitivestructures]. But simply putting charts into a narrative. logical sequence is not enough. The author needs to somehow communicate how the individual charts are related, to link them [@Riche-18:datadrivenstorytelling, p. 92].

This can be done via an accompanying narrative text, but visual methods like color and animation have been used in practice (see number 4 in figure \ref{narrative-visualization}). But while animated transitions between charts have quickly gained popularity in recent times [TODO:sources], existing research does not necessarily indicate that animated transitions provide any benefits [@Tversky-02:animationcan, @Berney-16:doesanimation]. This motivates the present research on animated transitions in narrative visualization.



## Thesis outline

The main question that motivates this thesis is: Do animated transitions help readers understand the relationships between charts? To find this out we have used the following methodology:

1. The first part presents the theoretical background on transitions and animation.
2. The second part reconceptualizes the theory in order to link different types of transitions to different strengths of animation.
3. The third part presents an experiment that we have proposed to find if and how animated transitions can help the reader understand transitions between charts.
4. The fourth part presents our implementation of animated transitions based on the concepts presented in part two.



## Contributions

This work makes the following novel contributions:

1. It proposes a new way to look at transitions in narrative visualization by connecting the problem of understanding transitions to work on comparison and to cognitive load theory.
2. It provides empirical evidence that animated transitions help with highlighting and object constancy. Our findings also support existing literature that shows that animated transitions do not lead to a better understanding of relationships nor to higher engagement for abstract representations of data.
3. Based on the findings in part two and in support of the experiment in part three we propose a software library that permits the rapid implementation of visualizations with animated transitions. The main contribution is an abstraction that allows to quickly define charts and transitions.

\newpage

\part{Theoretical background}

# Transitions

Presenting charts in a logical, narrative sequence seems to be preferred by readers. This implies that there is some information in the sequencing that is not present in the charts themselves. But what kind of information? This part reviews how previous work classifies transitions according to the kind of information that it transports. It then takes a deeper look into how readers interpret transitions in order to gain a better conceptual understanding of transitions and what makes them difficult. It then applies this conceptual understanding to examples of narrative visualization from practice to reformulate and synthesize the existing classifications. Finally, it discusses the implications of this sharpened understanding for designing animated transitions.



## Existing classifications of transitions

Multiple authors have compiled classifications of transitions between charts. In this section, three different approaches to classifying transitions will be presented: visualization-focused, story-focused and inductive.

### Visualization-focused classifications {#sec:param-classification}

The most common approach is to think about transitions is in terms of visualization parameters. [@Heer-07:animatedtransitions, @Yi-07:deeperunderstanding, @Fisher-11:animationvisualization, @-18:space] Any visualization can be viewed as the result of a series of parametrizable transformations applied to the underlying data set. [@Jankun-kelly-07:modelframework] The transition can, therefore, be described in terms of parameter changes as long as the underlying data does not change.

Through this approach, four authors identify a total of 9 transition types. Because their approach is very similar, their classes have a high overlap and will be presented together. Figure \ref{visualization-focused-classification} maps the names the authors have used the "generic" names that we used in the description:

![Comparison of transition types commonly identified by different authors for different purposes. The table shows that the agreement is relatively high for transitions that can be defined in terms of visualization parameters. What is often missing is the case where the underlying data changes. \label{visualization-focused-classification}](/Users/jonas/Desktop/P9/bericht/img/transition-parametric.png)

* **Pan**: Moving a fixed image below a smaller viewport to see one part at a time. The most famous example of this is Google Maps [@Google:googlemaps].
* **Zoom**: Geometric zooming in and out of a fixed image. This transition too, is used in Google Maps [@Google:googlemaps].
* **Filter**: Hiding or showing elements based on some criteria. When reading a visualization on cars, filtering might for example hide all the data on American cars.
* **Reorder**: Reordering axes according to a different criterion. Countries that are displayed in alphabetical order might, for example, be reordered according to their GDP.
* **Substrate transformation**: Any distortion to the scale that is not addition or multiplication of a constant. For example a log transform or a lens-effect that resizes only a part of the coordinate system. The latter being something that is not often seen in real-world applications but seems to be a darling of visualization researchers. [@Munzner-15:visualizationanalysis, pp. 327–338]
* **Visualization change**: Showing the same data with a different visualization idiom. For example, showing a distribution as a boxplot to indicate mean, quantiles and outliers first and then transforming it into a histogram to give a better sense of its shape.
* **Timestep**: Showing the same visualization for different points in time. For example, the population pyramid of Switzerland for 1960 and 2010 to show how it has shifted to older people.
* **Data schema change**: Mapping a different data dimension to one of the visual variables (position, color, etc.). A visualization might, for example, show the use of certain plant variants over time and show the occurrence of pests over the same period in the next state.
* **Data change**: When new data is shown but the visualization and the axes stay the same. This is the generalization of the Timestep transition.

The strength of this kind of classification is, that types can relatively easily and coherently be determined  as the high overlap between different authors shows. It's weakness is that it characterizes a transition by its technical properties and not based on how the reader will interpret it, which makes it less useful for designers of narrative visualization. Other fields, especially the research on comics have done much more work in this regard.

### Story-focused classification {#sec:story-classification}

The most-cited classification of transition types in comics is the one by McCloud [@Mccloud-93:understandingcomics]. It is also commonly referred to in narrative visualization [@Baudisch-06:phosphorexplaining, @Segel-10:narrativevisualization, @Amini-15:understandingdata, @Badawood-15:narrativeconstruction, @Bach-16:tellingstories] because comics are similar to narrative visualization in that they are *visual* and *sequential* [@Mccloud-93:understandingcomics, p. 16]. McCloud describes six types of transitions between comic panels:

![transition-mccloud](/Users/jonas/Desktop/P9/bericht/img/transition-mccloud.png)

1. **Moment-to-moment**: Stepwise movement through time.
2. **Action-to-action**: Movement through time-based on meaningful events.
3. **Subject-to-subject**: Switch from one subject to another
4. **Scene-to-scene**: Change in location or a long timespan passing.
5. **Aspect-to-aspect**: Exploring a scene.
6. **Non-sequitur**: Changes without an obvious relationship.

In McCloud's classification, a transition is characterized by a change in either *subject*, *scene* and/or *time*. 

Cohn [@Cohn-10:limitstime] refines on McCloud's transition types by introducing hierarchy to the interpretation of subject, scene and time. He argues that readers will first try to find the same subject in the subsequent panel. They will then move their attention to changes in the scene. Finally, they will shift their focus to changes in time. Cohn uses examples to show how a different order leads to interpretations that run counter to typical reading habits [@Cohn-10:limitstime, p. 143].

*Subject*, *scene* and *time* are reminiscent of journalisms famous *who/what*, *where* and *when*. [@-19:fivews] Such proximity to journalism indicates that McCloud's transition types might be useful outside of the domain of comics. While McClouds transitions based on *subject*, *scene* and *time* might be useful in raditional narratives that talk about people and events, it is not directly obvious how to apply them to abstract visualizations [@Badawood-15:narrativeconstruction, pp. 68-82]. 

### Inductive classification {#sec:inductive-classification}

A bottom-up approach to transition types can be found in Hullman et al. [@Hullman-13:deeperunderstanding]. The authors reviewed 42 narrative visualizations and identified 12 different transition types which they grouped into six categories:

![\label{transition-hullman}](/Users/jonas/Desktop/P9/bericht/img/transition-hullman.png)

**Dialogue**: A question is asked or implied in one chart which is being answered in the next. One chart shows a time series of world temperature and asks how natural factors have contributed. The next chart shows how natural factors like volcanos have influenced global temperatures over time (see figure \ref{transition-hullman}).

**Temporal**: The two charts show the same data for different points in time. For example how the regional subdivision of Hungary has changed between 2017 and 2018 (see figure \ref{transition-hullman}).

**Causal**: One chart shows an effect and the next chart presents the cause of the effect. A chart showing a school district with high rates of failures and the next showing how high failure rates have been caused by higher segregation, for example (see figure \ref{transition-hullman}).

**Granularity**: When one chart shows a higher amount of detail than the other. One example is a chart that shows EU countries on a map and another chart that shows how they are split into regions (see figure \ref{transition-hullman}).

**Comparison**: Either the dependent or an independent variable changes between the charts. The transition is called a measure walk when the measure is being changed. For example, showing a map of the impact of climate change on flooding risk and a map of the impact on crop shortage (where the respective impacts are the dependent variables). It is called a dimension walk when one of the independent variables changes. For example, a series of sorted streamgraphs that show emigration patterns for different states (where the state is an independent variable) (see figure \ref{transition-hullman}).

**Spatial**: When the final state is spatially close to the initial state, as visible in figure \ref{transition-hullman}) where the charts show different heights of the earth's orbit.

Hullman et al. further distinguish between *implicit transitions* that can only be interpreted by a reader and *explicit transitions* that could potentially be inferred from changes in the attributes visualized (compare to [section @sec:param-classification]). Interestingly they have found very little occurrences of the two explicit transitions in their analysis (see figure \ref{hullman-frequency}).

![Transition types identified by Hullman et al. [@Hullman-13:deeperunderstanding]. The explicit dialogue and causal transitions are quite rare. \label{hullman-frequency}](/Users/jonas/Desktop/P9/bericht/img/transition-hullman-freq.png)

The strength of Hullman et al.'s classification is, that it is directly linked to real world examples of narrative visualization. But because it has no underlying conceptual understanding, it is often not clear how to classify a transition according to their taxonomy.

### Limitations of existing classifications

The *visualization-oriented* (@sec:param-classification) and the story-oriented (@sec:story-classification) classifications both provide a conceptual understanding of transitions based on the question: "What changes?". In the first case it is one of the visualization parameters. In the second case it is either *subject*, *scene* or *time*. This allows for the construction of theory around these transitions [@Heer-07:animatedtransitions, @Cohn-10:limitstime] because there is clarity about the basic concepts.

Hullman et al.'s inductive approach [@Hullman-13:deeperunderstanding] is interesting because it treats real-world examples of narrative visualization. But it has no theoretical concepts linked to it. It can therefore not be used to understand how readers understand transitions and how animation might support it.

The following section will therefore discuss the existing literature on how readers perceive transitions. This review will form the basis of a reformulation of Hullman et al.'s transition types in terms that link it to a theory. This theory, in turn, will help to discuss how animation can be used to guide readers.



## How readers interpret transitions {#sec:transition-interpretation}

In the previously discussed classifications, transitions are often classified according to the question: "What changes?". This implies that readers make sense of transitions through comparison. This section therefore gives a brief overview of the relevant work on comparison in visualization. Based on this, it discusses what makes transitions difficult for readers. It then introduces findings from cognitive load theory that help in understanding how these difficulties are linked to the cognitive abilities of readers.

### Comparison to understand transitions {#sec:comparison}

Readers find and interpret relationships within and between charts by comparing targets in the charts in their head. This implies that interpreting relationships is related to the amount of targets that can be held in the mind. 

According to Brehmer et al.  [@Brehmer-13:multileveltypology], comparison is a fundamental task in visualization. Comparison is distinguished from other tasks like *identify* and *summarize* (see figure ref{transition-topology}) by the number of *targets* it operates on. An *identify*-task uses a single target while a *summarize*-task uses all available targets. The *compare*-task requires multiple subgroups of targets to compare them.

![A topology of visualization tasks which synthesizes a large body of
previous literature has been proposed by Brehmer et al. [@Brehmer-13:multileveltypology] \label{transition-topology}](img/comparison-taxonomoy.png)

To identify and locate these targets, the comparison task is proceeded by tasks from the *search*-group (see figure ref{transition-topology}) that will identify and locate targets. In narrative visualization, this will most often be the *locate*-task to find targets explicitly mentioned in the narrative. But this is not the only case: 

#### Explicit identification

Is aided by the author through labels, annotations, colors, and narrative. An example can be seen in point 1 of figure \ref{narrative-visualization}.

#### Identification through visual statistics

This uses the ability of the visual system to quickly and quite accurately calculate certain statistical properties of an image (figure \ref{comparison-identification}). A viewer can, for example, see in an instant if a certain region contains more orange than blue dots (mean). She can also quickly identify groups of points that are similar (clustering). Viewers will be able to tell if circles get bigger from left to right (trends). Or if a point has a different color from all the outers (outlier). All of these values can then serve as a target for comparison.

#### Implicit identification

 In many cases, external knowledge or personal interest of the viewer will lead to the identification of a target. [@Gleicher-18:considerationsvisualizing] Often, readers will compare what they see to what they would have expected to see. Or a person from Brooklyn, for example, will tend to be more interested in the success and failure history of the Brooklyn Nets than that of the Warriors from California (see point 3 in figure \ref{narrative-visualization}). This is one of the reason for authors of narrative visualization to include *interactive visualization*.

![The visual aggregation tasks from [@Szafir-16:fourtypes] show how comparison targets can by identified by visual statistics. \label{comparison-identification}](img/comparison-identification.png)

When a target or a set of targets have been identified in one of the charts, the reader proceeds to *locate* a corresponding target in the other chart. When all the targets are available, they are compared in the reader's mind. This often requires a considerable mental effort, which we will call the *transition cost*.

## Transition cost {#sec:transition-cost}

The transition cost describes how much mental effort it takes to do the necessary comparison(s) to understand a transition. Gleicher [@Gleicher-18:considerationsvisualizing] describes three factors that make comparisons challenging:

* A large number of targets.
* Large targets. For example when comparing two very long time series.
* Complex relationships. For example when there is not a one-to-one relationship.

Cognitive load theory predicts that a maximum number of 9 targets can be held in working memory for processing [@Wong-12:cognitiveload, @Miller-56:magicalnumber]. Depending on the size of the targets and the complexity of the relationships, this number can get as low as 1. [@Alvarez-04:capacityvisual]  When the number of targets that are needed for a comparison exceed these limitations, the reader will forget some of them and the comparison fails. [@Wong-12:cognitiveload]

When designing narrative visualization, the cost of the transitions should ideally stay within these boundaries to make the reading fluent. Animation is often proposed as a means to make transitions easier, but it is often not clear how exactly. The next section will therefore present the state of the art in animated 



# Animation

## Strengths of animation {#sec:animation}

Animation has been portrayed to provide many benefits to UX-design in general and visualization design in particular. Chevalier et al. [@Chevalier-16:animations25] have identified 23 different "purposes" of animation in visualization. Things like "Staying oriented during navigation" or "Hooking the user" which are finally classified into five meta-classes. Although this overview shows the popularity of animation in today's practice, it does not discuss any evidence that animation *actually* serves the given purposes.

To understand why designers might think that animation helps in these specific circumstances, we have mapped some lower-level strengths of animation described in Heer et al. [@Heer-07:animatedtransitions] to all each of the purposes (see figure \ref{animation-purposes}).

![The purposes of animation found by Chevalier et al. [@Chevalier-14:notsostaggeringeffect] each employ one or more of the strenghts of animation.\label{animation-purposes}](img/animation-purposes.png)



### Object constancy ![](img/A.pdf) {#sec:object-constancy}

Object constancy describes the ability to identify two objects as being the same entity between two states. There is some evidence that when the reader has rapid visual access to the targets (less than 300ms [@Rensink-02:changedetectiona]), changes will be detected before working memory is reached. The idea is that when one target is morphed into another, they are identified as being "the same" without having to do a comparison in working memory. This is probably the strength most often invoked for animation [@Chalbi-18:understandingdesigning, @Wu-16:graphicalperception, @Bederson:doesanimation, @Heer-07:animatedtransitions].

### Attract attention ![](img/B.pdf) {#sec:attract-attention}

Movement very strongly attracts attention. This view is undisputed in the literature [@Munzner-15:visualizationanalysis, p. 238] and there is some solid evidence that motion is more effective in highlighting elements than other visual means [@Ware-04:motionsupport]. This ability to highlight elements can be very useful for storytelling. But it also poses the risk to distract the reader from important, non-moving elements of a visualization like axes or labels.

### Communicate relationships ![](img/C.pdf) {#sec:causality}

In nature, we observe a certain smooth flow of cause and effect. When a rolling billiard ball hits another, the second ball will smoothly continue its transition. This leads to the intuition that smooth animation would imply some sort of cause and effect relationship (see section [-@sec:congruence]). This is true when depicting naturalist phenomena like the formation of lightning. [@Betrancourt-08:displaykey]. Other authors have found that animation also conveys causality in more abstract displays but that it doesn't perform better than symbolic depictions of causality [@Kadaba-07:visualizingcausal].

Animation has also been reported to have modest benefits when depicting aggregation operations like summing [@Kim-19:designinganimated].

### Engage ![](img/D.pdf) {#sec:engage}

Multiple authors have remarked how readers were "excited" about animation in interfaces and that it thus led to higher engagement [@Tversky-02:animationcan, @Heer-07:animatedtransitions]. The ability of animation to engage and excite is often presupposed based on anecdotal evidence. But few studies have used validated questionnaires to explicitly measure engagement. One study who did, found very mixed results [@Amini-18:hookeddata]. In their findings animation only led to higher engagement when coupled with pictorial representations of data. The main factor that led to higher engagement was "Aesthetics".  We suspect that in many cases there might be a "novelty" effect of animation that excites readers. There is little evidence that yesterdays fashionable animation still leads to higher engagement today. Furthermore, the novelty effect might lead readers and designers astray and they might confuse their positive feelings with actual benefits for understanding [@Hassenzahl-10:inferenceperceived, @Baudisch-06:phosphorexplaining].

### Data encoding ![](img/E.pdf)

Similar to color or shape, motion can be used to encode data. Although the precision in interpreting it is very limited. [@Munzner-15:visualizationanalysis, p. 95] This property of animation is not listed in Heer et al. [@Heer-07:animatedtransitions] but we have decided to include it because it is well studied and forms the basis of multiple of the purposes listed by Chevalier et al. [@Chevalier-16:animations25]

While the listed strengths seem straightforward, the literature indicates that they are present only under certain circumstances.



## Consideration when using animation

Animation does not automatically make transitions easier. Its effectiveness is highly related to two sets of principles: *congruence* and *apprehension*. When these principles are being violated, the effect of animation on the transition cost might be negligible of even negative.

### Congruence {#sec:congruence}

![Congruence as defined by Tversky et al. [@Tversky-02:animationcan] means that the representation should correspond to the concepts that are conveyed. Apprehension means that the representation should be accurately perceived.](img/congruence-apprehension.png)

The question if animation is a natural fit for certain types of transitions has been described as the principle of *congruence* in  [@Tversky-02:animationcan, p. 247]:

> Effective graphics conform to the Congruence Principle according to which the content and format of the graphic should correspond to the content and format of the concepts to be conveyed.

According to this view, showing *change over time* would be a congruent use of animation. The reasoning is that people perceive change over time as smooth transitions in their everyday lives. One study accordingly found that animation reduced the perceived cognitive load when showing change in networks. [@Bach-14:graphdiariesanimated] Other authors have not found such benefits [@Tversky-02:animationcan] naming a lack of *apprehension* as the potential reason.

The second natural fit for animation are *viewport changes* like *pan* and *zoom*. These correspond to a person's natural movements through space, getting closer to objects, looking around, etc. Animated transitions have indeed been found to be superior to static transitions for *panning* [@Shanmugasundaram-07:cansmooth] as well as *zooming* [@Shanmugasundaram-08:effectanimated].

As previously discussed, animation has also been shown to be congruent for communicating causality and intentionality (see section [-@sec:causality])

![\ref{Amini-18-hookeddata}](img/Amini-18-hookeddata.png)

Interestingly, multiple authors found that animation seems to be far less effective when used with abstract representations than when it is used with iconic representations. Amini et al. [@Amini-18:hookeddata] found that animated transitions in data visualization only led to higher engagement when coupled with iconic representations (see \ref{Amini-18-hookeddata}). A recent meta-analysis [@Berney-16:doesanimation] of 50 studies on animation and its effect on learning found, that animation only benefitted knowledge acquisition when used with "iconic representations" of the phenomena the needed to be studied. No effect was found for abstract representations.

These findings indicate that the effectiveness of animation is strongly related to the amount of "realism" of the animation and even the visualization that it is being used on. But even when the use of animated transitions seems congruent, it may still fail. Tversky et al. cite a lack of *apprehension* for this [@Tversky-02:animationcan].

### Apprehension

Tversky et al. describe the apprehension principle like this [@Tversky-02:animationcan, p. 247]:

> … graphics should be accurately perceived and appropriately conceived.

It is therefore related to the basic perceptual abilities of the reader. Heer et al.[@Heer-07:animatedtransitions] define six design principles for animated transitions to improve apprehension: *similar transforms should be grouped*; *trajectories should be predictable*; *transformations* should be *simple*; to simplify complex transformations, *staging* should be used and the transition duration should be *long enough* to follow (but not longer). And although these principles seem to make sense intuitively, research on visual perception has shown to produce unintuitive results.

#### Visual tracking {#sec:visual-tracking}

Research on visual tracking explores how people track objects when the objects are moving. Participants typically have to track the position of several individual objects (circles or rectangles) or a group of objects under different conditions. These experiments have revealed several, sometimes surprising, properties of the human perception:

*Animation speed*: Higher animation speeds do not strongly influence tracking ability. [@Franconeri-10:trackingmultiple]   

*Distance traveled*: Longer distances traveled make objects harder to track [@Franconeri-10:trackingmultiple]  

*Number of objects*: In typical situations, four objects can be tracked in parallel. [@Yantis-92:multielementvisuala]

*Unpredictable paths*: Have only a minimal impact on tracking performance. [@Chevalier-14:notsostaggeringeffect]

*Occlusion*: Doesn't impair tracking when it can be interpreted as "one object disappears" behind another [@Scholl-99:trackingmultiple]

*Crowding*: When objects that need to be tracked get close to each other, tracking performance is impaired.  [@Chevalier-14:notsostaggeringeffect]

*Multiple objects are tracked as one convex area*: Deformation of this area as well as distractors entering the convex area lead to impaired tracking performance. [@Yantis-92:multielementvisuala, @Chevalier-14:notsostaggeringeffect]

The above results show that object tracking happens through a complex interplay of the different levels of the visual system. While they give some indications on how the visual system processes information, the findings are hard to operationalize in animation designs because they will often be in conflict with the content that should be depicted. The *distance travelled* , for example, is often given by the data that is being depicted in two charts and can not be influenced. The next section will discuss a few concrete propositions to increase the apprehension of animated transitions. 



### Animation techniques

A number of techniques has been proposed in the literature to increase the apprehension of animation. A brief discussion will show that in practice congruence and the limits of working memory seem to be the more important than apprehension.

#### Staggered animation

Because only a limited number of objects can be tracked simultaneously (see section [-@sec:visual-tracking]), it has been proposed to animate objects in multiple steps (see figure \ref{staggered-animation}).

![In staggered animation, some objects start to animate only with a delay. \ref{staggered-animation}](img/staggering.png)

Staggered animation delays the start time of animations incrementally for some objects. An example: out of 7 objects, 4 will start to move right away, 3 other objects will start to move only a bit later. The delay between the starts is called *dwell*. A dwell of zero means no staggering.

Staggered animation has been proposed to *reduce occlusion* as well as *complexity* during animation and therefore lead to a higher tracking performance  [@Heer-07:animatedtransitions]  but interestingly the effect is negligible [@Chevalier-14:notsostaggeringeffect].

#### Staged animation {#sec:staged-animation}

Staged animation splits complex animation into multiple steps. An animation then interpolates between positions as well as between two colors, might, for example, be split into two animation stages. One where the objects move from position a to position b. Another, where they change color.

Heer et al. explicitly recommend the use of staged animation [@Heer-07:animatedtransitions] even though they found only modest benefits. In situations where staging led to complex and long animations, the authors found it even detrimental for tracking performance. This is also what cognitive load theory would predict because long, uninterrupted multi-stage animation will introduce elements into working memory but not leave the viewer time to organize them into long term memory. His working memory will therefore overflow and he will forget what he had seen before. This is called the *transient memory effect*. [@Wong-12:cognitiveload]

#### Animation duration

Multiple authors have observed that making animation slower has a negative effect on readers. [@Shanmugasundaram-07:cansmooth, @Baudisch-06:phosphorexplaining]. Others counter that very fast animation might lead to higher error rates [@Heer-07:animatedtransitions]. This assumption has been refuted by Franconeri et al. [@Franconeri:2010ela] who showed that higher speeds have no impact on tracking performance when the distance between objects stays large enough.

#### Direct manipulation {#sec:direct-manipulation}

Readers typically perform better at recall and problem solving, when they can control animation themselves. Multiple authors have shown this for cases where readers could start and stop animated transitions [@Chan:2005vx, @Hasler:2007]. But here too, it is hard to separate different effects. Tversky et al. point out, that interaction has been shown to benefit learning in itself and just happens to be coupled with animation often [@Tversky-02:animationcan].

#### Easing

John Lasseter in his classic paper on the principles of computer animation [@Lasseter-87:principlestraditional] describes that animators developed a preference for "slow-in-slow-out" over linear easing over time. This recommendation has been confirmed in more formal experiments [@Dragicevic-12:temporaldistortion]. Because "slow-in-slow-out" motions are closer to what we experience in nature, this type of easing can be seen as more *congruent* than other forms (see section [-@sec:congruence]).

### The role of apprehension and congruence

The discussion the research on apprehension demonstrates that apprehension has probably limited importance in practice. The proposed technique often do not lead to the purported benefits, mostly because the easily lead to violations in other areas of apprehension, congruence or working memory.

The only two techniques that have consistently shown to be beneficial are direct manipulation and "slow-in-slow-out" easing.

The principle of congruence on the other hand has been shown to have a profound impact on the effectiveness of animation. The closer the objects and the motion are to the real world, the more beneficial animation. This casts some doubts on the usefulness of animation to support transitions between abstract visualizations.

 

## Unfair comparisons

Further doubts on reported benefits of animation come from the problem of *informational equivalence*. Some studies who have reported benefits of animated transitions have been criticized for involving "unfair comparisons". [@Tversky-02:animationcan] The animations presented contained information that was not easily deducible from the non-animated transitions.  Tversky et al. [@Tversky-02:animationcan, p. 251] put it like this:

> Showing that students learn material better when it is presented than when it is not presented should not be a goal of empirical research.

Fair comparisons, in contrast, need to identify *informationally distinct* states very clearly and show them not just in the animated scenario but also in all the scenarios they are compared to. Tversky et al. find that in these experiments, purported benefits of animation often fail to materialize.

\newpage

\part{Reconceptualization of the theory}

# Perception-oriented classification

The discussion of the literature in the previous sections has shown that readers understand relationships by comparing targets in their working memory and that animation is more beneficial when it is applied to objects close to reality. This section reconceptualizes the transition types seen in previous chapters so that it is explicit what the reader needs to compare. It also expresses the elements of comparison in terms of characters, attributes and context to favor an interpretation that is closer to real-life concepts to support congruent animation. This will lead to recommendations on how to use animation for the different transition types.

##  Core concepts {#sec:our-model}

The central element of the proposed re-conceptualization is the comparison target  which will be called a character. The size of a character is defined by its attributes. Finally, the context is one factor that can make the relationship between characters more complex (compare to section [-@sec:comparison]).

(TODO:graphic)

### Characters ![](img/char.pdf)

A character is what we have called a *target* (@sec:comparison). In its simplest form it takes up one slot in the readers' working memory. Characters are clearly distinguishable and nameable visual entities in the chart. It can be a dot, a line or any other mark. In visualization, these entities are very often identified by one or more independent, categorical variables. For example countries, genders, age groups, etc. Even though this definition might seem abstract at first, it is in most cases very easy to identify characters in narrative visualization. That is because the narrative will often explicitly identify them. But characters can also be identified implicitly and through visual statistics.

This indicates that characters are only fully identified in the readers mind and can be dependent on concepts from long term memory. One example for this is, that multiple characters can be grouped into a unifying character. Switzerland, Italy, and France could form the group *European countries* while Japan, China, and Korea might be combined into *Asian countries*. Grouping is therefore one way to reduce the cognitive load by relying on long term memory.

### Attributes ![](img/attr.pdf)

Attributes define the shape of a character and therefore its complexity. Our classification uses the term to describe all the other variables encoded in the visualization in the form of position, size, shape, etc. Attributes are showing different aspects of the characters. Country-characters can have population numbers over time. Gender-characters might have differing PISA-test success rates or might marry at different ages.

### Context ![](img/ctxt.pdf)

Finally, many charts typically have a context. The situation shown might be for a certain year, for a certain revision of the PISA-test or according to a certain source. The context is often depicted in the title. When the context changes between two charts, it makes the relationship between the characters more complex.

The three concept roughly mirror McCloud's [@Mccloud-93:understandingcomics] and Cohn's [@Cohn-10:limitstime] *subject*, *scene* and *time*. Based on Cohn's work and the discussion in section [-@sec:comparison] we suspect that there is also a hierarchy in our proposed types: Readers will first identify the *characters* in a chart and look for the corresponding characters in the other chart. If they find them and they visually differ between the states, they will look for reasons. At first, they will assume that a different *attribute* of the character is shown and therefore check the axes. If they conclude that the changing appearance of the character is not due to different attributes being shown they will assume that a change of *context* has happened.

## Case study method

*Characters*, *attributes* and *context* represent different things that can change in a transition. The proposed reconceptualization therefore classifies transitions according wether characters, attributes or the context change (and how). To find the different transition types, we have applied a case study method that is similar to the study conducted by Hullman et al. [@Hullman-13:deeperunderstanding] but more limited in scope. 

### Selection of examples

The test the proposed model, we have applied it to a collection of transition techniques commonly found in narrative visualization. We have started by compiling a corpus of narrative visualizations from online sources. The corpus combines two collections from other authors [@Riche-18:datadrivenstorytelling, @Mckenna-17:visualnarrative] and our examples. The corpus thus includes 144 narrative visualizations published between 2008 and 2019 by a variety of news organizations as well as individuals. The complete corpus can be found in appendix \ref{appendix-corpus}.

From this corpus we selected a subset of 20 examples that were relevant to the current research and that we believed would be representative of the state of the art of narrative visualization in practice.

In a first step we excluded examples that were either not focused on data visualization or examples that did not contain any transitions. We also excluded videos and everything that was done in flash for practical purposes. From the remaining 79 examples we selected 20 examples that we felt were representative of the state of the art based on the following criteria: We preferred more recent examples to older ones. We preferred examples that were heavier on the visuals. And we included a variety of sources.

### Analysis

For each example, a screenshot of each chart was pasted on a canvas in order. First, we identified the characters in the first screenshot. For each transition, we annotated if the characters, scene or context changed from the previous state and how it changed. This was usually straightforward which was an encouraging sign. Finally, we unified very similar transitions into 9 categories as presented in table \ref{table-transition-types}. The complete analysis can be found in appendix \ref{appendix-transition-analysis}.



## Transition types {#sec:corpus-analysis}

|                        | Characters ![](img/char.pdf) | Attributes ![](img/attr.pdf) | Context ![](img/ctxt.pdf) |
| ---------------------- | ---------------------------- | ---------------------------- | ------------------------- |
| Explore attributes     | Same                         | Differ                       | Same                      |
| Contrast characters    | Differ                       | Same                         | Same                      |
| Reconfigure            | Same                         | Get remapped                 | Same                      |
| Split characters       | Split                        | Same                         | Same                      |
| Merge characters       | Merged                       | Same                         | Same                      |
| Highlighting           | Less                         | Same                         | Same                      |
| Progressive disclosure | More                         | Same                         | Same                      |
| Context                | Can differ                   | Same                         | Differs                   |
| Semantic field         | Differ                       | Differ                       | Can differ                |

Table:  Transition types are defined by how characters, attributes and context differ between two charts. \label{table-transition-types}

### Explore attributes

![Two examples of transitions exploring different attributes of the same characters. On the left side from a story of TODO and on the right side a story of TODO  \label{technique-diffent-measure}](/Users/jonas/Desktop/P9/bericht/img/technique-different%20measure.pdf)

| Characters ![](img/char.pdf) | Attributes ![](img/attr.pdf) | Context ![](img/ctxt.pdf) |
| ---------------------------- | ---------------------------- | ------------------------- |
| Stay the same                | Differ                       | Same                      |

This is probably the most obvious transition type for storytelling. Here the author explores different aspects of the same character(s). In many cases, this will be done by mapping a different attribute to one of the axes, like on the left side of figure \ref{technique-diffent-measure}. Here the author compares incarceration rates  ![](img/attr.pdf) for black ![](img/char.pdf)and white men ![](img/char.pdf) by the income of their parents ![](img/attr.pdf) in the first chart. In the second, the incarceration rate ![](img/attr.pdf) gets replaced with the percentage of children who are married ![](img/attr.pdf). To show that you are more likely to get incarcerated and less likely to get married when you are from a black family.

Note how the character changes technically between the two states as its first "black men" and after that "black men and women". This will likely get unnoticed by a majority of the readers by design. Choosing the same colors for semantically very similar character shows that the author intended them to be perceived as "the same".

The example on the right side of figure \ref{technique-diffent-measure} shows two interesting things: characters need not be explicit and characters can stay the same between chart types.

In the first chart, the characters are not identified by the author but emerge from the visualization through a combination of *identification through visual statistics* and *implicit identification*. More specifically the reader will perceive two clusters of very different color on the map. If he has some knowledge about the geography and history of Germany, he will *implicitly* identify them as Former East  ![](img/char.pdf) and West Germany ![](img/char.pdf) (see section [-@sec:comparison]).

These characters are named in the next state. In contrast to the example on the left, the second chart here is completely different from the first. While the first depicts a map, the second is a time-series chart. Nonetheless, the transition is still between two characters showing different attributes (daycare ![](img/attr.pdf)and children per women, time ![](img/attr.pdf)) for the same characters.

The corresponding transition in Hullman et al. is a *measure walk* (see section [-@inductive-classification]).

### Contrast characters

![technique-contrast \ref{technique-contrast}](/Users/jonas/Desktop/P9/bericht/img/technique-contrast.pdf)

| Characters ![](img/char.pdf) | Attributes ![](img/attr.pdf) | Context ![](img/ctxt.pdf) |
| ---------------------------- | ---------------------------- | ------------------------- |
| Differ                       | Stay the same                | Same                      |

We call this technique contrasting because it highlights the difference between characters. It's typical for these transitions to keep the same layout between two states and just switching characters. Only like this, a visual comparison is possible. This is the case for the example on the left in figure \ref{technique-contrast}. The income gap between black ![](img/char.pdf) and white men ![](img/char.pdf) becomes very clear in comparison to the obvious lack of the gap for women ![](img/char.pdf) when plotted in the same coordinate system.

But also in contrasting transitions, there is subtlety as visible on the right side of figure \ref{technique-contrast}. Here the x-axis is being shifted between the states. But the shift has no other reason than saving space. It may take a little more effort from the reader to understand that the first chart shows states that have below-average proportions ![](img/attr.pdf)  of women and the second chart shows states that have above-average proportions ![](img/attr.pdf) of women. Yet this *pan* (see section [-@sec:param-classification]) could have been left out without changing the interpretation of the transition at all. This leads us directly to the next technique: *Reconfigure*.

The corresponding transition in Hullman et al. is a *dimension walk* (see section [-@inductive-classification]).



### Reconfigure

![\label{technique-reconfigure}](/Users/jonas/Desktop/P9/bericht/img/technique-reconfigure.pdf)

| Characters ![](img/char.pdf) | Attributes ![](img/attr.pdf)                                 | Context ![](img/ctxt.pdf) |
| ---------------------------- | ------------------------------------------------------------ | ------------------------- |
| Stay the same                | Stay the same but get remapped to different visual variables | Same                      |

The defining characteristic of this transition is, that no new information is shown from the first to the second state. The information is just shown in a different way to clarify different aspects. The left example in figure \ref{technique-reconfigure} first shows the reader just how much the cases of measles have been  reduced through vaccination. It then *zooms* in on the portion of the chart showing the cases in recent times. They were too small to be visible in the first chart but technically present. This sort of transition is a good replacement for a log-transformed axis which few people understand anyway (TODO:source)

The right example in figure \ref{technique-reconfigure} shows a more drastic reconfiguration of a map into a scatterplot. While the first chart makes it easy to see how for example the south of Italy is underdeveloped and while the north is above average, the same split can be found in the scatterplot when hovering over the dots, representing the individual regions of Italy. Conversely, the ranking and uniformity of countries can be extracted through visual statistics ([-@sec:comparison]) from the first chart. It's just much, much clearer in the second.

Reconfigure subsumes the *pan*, *zoom*, *reorder* and *visualization change* transitions from visualization-oriented transitions (see section [-@sec:param-classification]). We have not found reconfigure transitions to be common enough in narrative visualization to deserve further specification into these subcategories.



### Split characters

![technique-split](/Users/jonas/Desktop/P9/bericht/img/technique-split.pdf)

| Characters ![](img/char.pdf)                     | Attributes ![](img/attr.pdf) | Context ![](img/ctxt.pdf) |
| ------------------------------------------------ | ---------------------------- | ------------------------- |
| Visible characters are split into sub-characters | Stay the same                | Same                      |

As described in ([-@sec:our-model]l) characters need not be atomic units. Groups of similar characters can be perceived as a character themselves. But sometimes the author wants to convey how characters in a group differ from each other and thus how (in-)homogeneous a group is.

Splitting characters is an essential device in narrative visualization because it nicely fits the general-to-specific pattern often used in storytelling (TODO:source). When splitting characters, the attributes will usually stay the same to serve as a frame of reference. A kind of shadow or contour of the "parent"-group will often remain too for reference. This is the case for both examples in figure \ref{technique-split} one who splits measles cases by states ![](img/char.pdf)  and years ![](img/attr.pdf) and one who splits European countries ![](img/char.pdf) into regions ![](img/char.pdf).

Splitting characters is what Hullman et al. call a *general-to-specific* transition (see section [-@inductive-classification]).

### Merge characters

![technique-merge](/Users/jonas/Desktop/P9/bericht/img/technique-merge.pdf)

| Characters ![](img/char.pdf)  | Attributes ![](img/attr.pdf) | Context ![](img/ctxt.pdf) |
| ----------------------------- | ---------------------------- | ------------------------- |
| Visible characters are merged | Stay the same                | Same                      |

Where there is splitting, there needs to be merging. But merging is conceptually more complicated than splitting. Splitting shows more information in the second chart while merging summarizes information from the first chart. In the second case, it is much more important for the reader to understand the summary operation that is being used. Is the new character the mean, the sum or even the difference of the characters previously seen? Both examples in figure \ref{technique-merge} illustrate this problem very well. Visually, the natural factors ![](img/char.pdf) presented in the second chart could very well be the mean of volcanic ![](img/char.pdf) , solar ![](img/char.pdf) and orbital change ![](img/char.pdf). But it's actually the sum. In the example on the right, the pink bars might well represent the sum of the dots on the left but it's actually the difference. TODO:[@Kim-19:designinganimated]

Although merging is complex it can be very useful for a storytelling approach that has been called *ladder of abstraction*-storytelling [@Victor-11:ladderabstraction]. It starts with very concrete, down to earth characters (like volcanoes ![](img/char.pdf) or skill importance ![](img/char.pdf) ) and moves "up" towards more abstract concepts (like natural factors ![](img/char.pdf)  or skill importance difference ![](img/char.pdf) ).

Hullman et al. call this transition *specific to general*  (see section [-@inductive-classification]).

### Highlighting

![\label{technique-focus}](/Users/jonas/Desktop/P9/bericht/img/technique-focus.pdf)

| Characters ![](img/char.pdf) | Attributes ![](img/attr.pdf) | Context ![](img/ctxt.pdf) |
| ---------------------------- | ---------------------------- | ------------------------- |
| Get filtered down            | Stay the same                | Same                      |

This technique again serves the very common *general-to-specific*-pattern (TODO:source). It focuses the reader on a specific character or a special group of characters. The most common way to do this is by hiding the other characters. An example of this can be found in the left example in figure \ref{technique-focus} where all the second chart only shows Hungary ![](img/char.pdf) from all the EU countries ![](img/char.pdf). In the example on the right side of figure \ref{technique-focus} the transition hides the other age groups ![](img/char.pdf) to highlight the 25 to 44 group ![](img/char.pdf) . Many other ways of highlighting one character are imaginable.

Highlighting is the equivalent of a *filter* transition from the visualization-oriented transitions (see section [-@sec:param-classification]).



### Progressive disclosure

![\label{technique-disclosure}](/Users/jonas/Desktop/P9/bericht/img/technique-disclosure.pdf)

| Characters ![](img/char.pdf)         | Attributes ![](img/attr.pdf) | Context ![](img/ctxt.pdf) |
| ------------------------------------ | ---------------------------- | ------------------------- |
| More or more of them becomes visible | Stay the same                | Same                      |

Similar to split and merge, this is the counterpart of highlighting. And similar, to merge it is a useful device for *ladder of abstraction*-storytelling. [@Victor-11:ladderabstraction] One version of this technique introduces new characters in the second chart as seen on the right in figure \ref{technique-disclosure}. Another variant shows more of the same character(s) in the second chart. The example on the left shows more and more of the course of the game between the Miami Heats ![](img/char.pdf) and the Houston Rockets ![](img/char.pdf) with each transition.

A particular case of progressive disclosure is what Hullman et al. call *spatial transitions*. A story might, for example, explore the mountainous terrain of the Alps and disclose more and more of it with each transition (see section [-@inductive-classification]). But it can also represent the removal of a filter according to the visualization-oriented classification (see section [-@sec:param-classification]).



### Context

![technique-temporal](/Users/jonas/Desktop/P9/bericht/img/technique-temporal.pdf	)

| Characters ![](img/char.pdf) | Attributes ![](img/attr.pdf) | Context ![](img/ctxt.pdf) |
| ---------------------------- | ---------------------------- | ------------------------- |
| Stay the same*               | Stay the same                | Changes                   |

The interest of the context transition is to show how the "situation" (the form of characters according to the same attributes) changes when the context changes. The most common case is comparing the situation at different points in time. In the left example in figure \ref{technique-temporal}, the author wants to convey how China ![](img/char.pdf) made up most of the world's poor ![](img/attr.pdf) in the 90s ![](img/ctxt.pdf) and is now ![](img/ctxt.pdf) home to a large part of the worlds middle class ![](img/attr.pdf) .

The example on the right shows how a changing context may lead to a change in characters. Here the formerly ![](img/ctxt.pdf) single large administrative region around Budapest ![](img/char.pdf) has now ![](img/ctxt.pdf)split into the rich Budapest ![](img/char.pdf) and the poor Pest ![](img/char.pdf) (notice how poor Pest only gets half of the name).

Hullman et al. identified the very prevalent change in temporal context but did not generalize it. (see section [-@inductive-classification]) As contexts contain groups of characters, they can become characters themselves at certain points of the story. That is why *context* transitions have a close relationship to *contrasting character* transitions and the distinction is not always 100% clear.

### Semantic field

![technique-semantic](/Users/jonas/Desktop/P9/bericht/img/technique-semantic.pdf)

| Characters ![](img/char.pdf) | Attributes ![](img/attr.pdf) | Context    |
| ---------------------------- | ---------------------------- | ---------- |
| Differ                       | Differ                       | Can differ |

This is probably the hardest transition for readers to follow as none of the elements are shared between the charts. The only thing that connects the two charts is that their characters come from the same field of concepts as described by Cohn [@Cohn-12:peanuts]. The reader, therefore, needs to move up in the conceptual hierarchy to find the relationship between the characters depicted.  In the example on the left, the reader needs to understand how the job growth ![](img/attr.pdf) is related to hourly earnings ![](img/attr.pdf). This requires a rather sophisticated internal model of economics, or a textual explanation. The same is true for the example on the right. It is not possible without a lot of external knowledge how the rising discrepancy of profits ![](img/char.pdf) and wages ![](img/char.pdf) is related to the decline in union memberships ![](img/attr.pdf) .

*Causal* and *Question & answer* transitions identified  by Hullman et al. would fall into that category (see section [-@inductive-classification]).



## Reducing the transition cost {#sec:reducing-cost}

One of the goals of using animation to guide the reader through narrative visualization should be to *reduce the transition cost* . This can either be done by reducing the number of targets that need to be compared, the size of the targets or the complexity of relationships (@sec:transition-cost). This section will discuss how the strengths of animation can help to reduce the transition cost (@sec:animation). It will then show how different transition types might benefit from different strengths of animation.

### Object constancy

Object constancy should make it easier to locate the corresponding target in the second chart. Fluent animation should be a way to offload the task of identifying two objects as "the same" from working memory to the visual system. This in turn would considerable reduce cognitive load.

### Explicitly show complex relationships

Complex relationships take multiple steps from the reader to understand through comparison. The intermediate results from these steps need to be stored in working memory. Animation might be used to indicate the type of relationship. It might for example be used to indicate characters are grouped in a merge transition.

### Highlighting

Highlighting explicitly identifies the targets that the reader should compare (see section [-@sec:comparison]). It therefore also reduces the number of targets that need to be held in working memory. Highlighting can be done through the means of narrative visualization (narration, annotations, color and animation) mentioned in [section -@sec:narr-vis]. When highlighting is done through pre-attentive attributes like color, objects of another color are already being hidden in the visual system and don't even reach working memory [@Franconeri-18:thinkingdata] (compare also "Visual feature" in  figure \label{comparison-identification}). Something similar might happen when using animation to highlight certain targets.

## Implications for transition types {#sec:implications}

The transition types presented in section [-@sec:corpus-analysis] will be interpreted in different ways by the readers. While one type will require the reader to find out how the shape of a character has changed, another will require of him to identify characters that have similar shapes, and a third one will require him to create a relation at the conceptual level. Not all of them will therefore see the same benefits from animation. (@sec:reducing-cost).

|                        | Object constancy | Explicitly show  relationship | Highlighting |
| ---------------------- | ---------------- | ----------------------------- | ------------ |
| Explore attributes     | ✓                |                               | ✓            |
| Contrast characters    |                  |                               | ✓            |
| Reconfigure            | ✓                |                               |              |
| Split characters       |                  | ✓                             | ✓            |
| Merge characters       |                  | ✓                             | ✓            |
| Highlighting           |                  |                               | ✓            |
| Progressive disclosure |                  |                               | ✓            |
| Context                | ✓                |                               | ✓            |
| Semantic field         |                  |                               | ✓            |

Table:  How different transition types can benefit from animation.

#### Object constancy

Requires a that characters are shared between charts but that they change their location or form. This is because locating the corresponding character in the second chart is only difficult if it is visually different from the first chart. This is true for *explore attributes*, *reconfigure* and *context* transitions.

#### Explicitly show complex relationship

When the relationship between the characters in the two charts is not one-to-one, the reader may benefit from explicitly showing the relationship. This is true for *split characters* and *merge characters* transitions.

#### Highlighting

Different from the other two, highlighting does not require characters to be shared between the states. All transitions can therefore potentially benefit from highlighting. The exception are *reconfigure* transitions because the typically concern all the characters.



# Research hypotheses {#sec:hypotheses}

Based on the discussion in the previous section, we believe that animated transitions have the potential to support readers in understanding the relationship between two charts. This is the main research question of this work as mentioned in the introduction [@sec:introduction]. H2 to H6 test more specific hypotheses based on the strengths of animation presented in section [-@sec:animation]. The hypotheses only apply to transition types where animation can theoretically provide a benefit (compare to section [-@sec:implications]).

#### H1: Animation makes understanding transitions easier

Based on the widespread use of animation to help readers understand transitions the discussion in this chapter, we believe that animation will reduce the cognitive load of readers. Because they will have more available working memory capacity, we hypothesize that they will more likely interpret a transition correctly.

#### H2: Animation implies a relationship

Based on the findings that animation can communicate relationships (see section [-@sec:causality]), we believe that animated transitions might imply a relationship in a more general sense. We hypothesize that animated transitions will more often lead participants to assume a relationship between two charts.

#### H3: Animation implies a causal relationship

Extending H2 and based on findings discussed in section [-@sec:causality], we believe that when readers assume a relationship between two charts, they will more often conclude that the relationship is causal when the transition is animated.

#### H4: Animation leads to object constancy

We hypothesize that animated transitions will support the reader through object constancy. 

#### H5: Animation highlights characters

Animated transitions will focus the reader on the characters the author intended because it attracts attention (see section [-@sec:attract-attention]). This will lead them to more often interpret the relationship between the charts as the author intended and to talk about the characters the author wants.

#### H6: Animation leads to higher engagement

Readers will be more engaged by the visualizations with animated transitions.

\newpage

\part{Experiment}

# Research method {#sec:experiment}

To test the above hypotheses, we have conducted an experiment which will be described in the following sections.



## Overview

In the experiment we presented two narrative visualizations (stories) to each participant: *mortality* and *energy*. Each story contained a total of five charts and four transitions. Each participant saw one of the stories with *animated* transitions and the other with *static* (non-animated) transitions.

To examine each transition individually, we have split each story into four separate screens which we called *mini-stories* (see figure \ref{experiment-setup}). Each mini-story contained one transition and the two corresponding charts.

This setup has made made it so that second chart of each mini-story is the first chart of the next mini-story. Normally, this would not be true for the initial mini-story. Because we did not want the initial mini-story to differ from the others in this respect, we have introduced another screen before each mini-story where the first chart is presented (see figure \ref{experiment-setup})

At the end of each mini-story we presented a questionnaire asking about the participants conclusion and their perceived engagement which will be presented in more detail in section [-@sec:questionnaire].![experiment-setup.pdf \label{experiment-setup}](img/experiment-setup.pdf) 

The experiment was conducted on Amazon Mechanical Turk [@:amazonmechanical] and had 56 participants. An introductory screen explained to the participants what they had to do. After the two stories, we presented a final survey (will be discussed in section [-@sec:survey]) and finally displayed an answer code to verify their participation in the experiment. We paid each participant a fixed amount of USD 9 for completing the experiment. On average, participants took 52 minutes to complete the experiment. This results in a mean hourly wage of USD 10.40 with a minimum of USD 5.56 for the slowest participant and eight participants being paid less than the minimum hourly wage for the U.S. (7.25 USD).

 ![results-duration.pdf](img/results-duration.pdf)



## Stimuli {#sec:experiment-overview}

Before we go on to discuss other specifics of the experiment we will present the stimuli, the *transitions* and the *stories* in more detail. This will make the presentation of the experiment in the following sections much clearer.

### Transitions

Each participant saw both stories and each story contained either *animated* or *static* (non-animated) transitions. This design ensured that the distinction between *static* and *animated* transitions had maximimal statistical power.

In both cases the transitions where controlled by scrolling. Initially a participant would see the first chart of a mini-story. When he scrolled down, the first chart would be replaced by the second chart. When scrolling even further, the questionnaire would appear. In *animated* transitions, the chart would not simply be replaced but the transition was animated. The animation was fully controlled through scrolling and could be played forward and backwards. This ensured that the amount of *direct manipulation* would be the same for both transitions (compare to section [-@sec:direct-manipulation]).

### Mortality story {#sec:mortality-story}

The first story is about the evolution of mortality rates in the U.S. It is a modification of an article published by Bloomberg in 2014 [@Klein-14:howamericans]. The individual charts are displayed in figure \ref{mortality-charts}.

![\label{mortality-charts}](img/mortality.pdf)

#### Mortality A {#sec:mortality-a}

It begins with a chart showing how the distribution of age groups ![](img/char.pdf)has changed resulting in an aging population ![](img/char.pdf) over time ![](img/attr.pdf) . The transition first *merges* the individual age groups ![](img/char.pdf) into an "Everyone" group ![](img/char.pdf) . And then it replaces the share of population ![](img/attr.pdf) with the "deaths per 100'000" ![](img/attr.pdf) . The next chart shows how "deaths per 100'000" have been reduced drastically over time ![](img/attr.pdf) . The transition thus conveys how reducing mortality rate leads to an aging population. 

#### Mortality B {#sec:mortality-b}

The second transition *splits*  "Everyone" ![](img/char.pdf) again into the different age groups ![](img/char.pdf). From this mini-story, the reader learns that the mortality rate is dominated (unsurprisingly) by elderly people. An apparent slowdown in mortality rate reduction in the first chart is therefore mostly due to to the development in the "Over 84" group.

#### Mortality C {#sec:mortality-c}

The third transition *reconfigures* the x-axis to show the relative evolution of the mortality rate ![](img/attr.pdf) for each age group ![](img/char.pdf). Thanks to this it becomes apparent that even though the elderly have made the most progress in absolute numbers, the relative reduction is highest for younger age groups.

#### Mortality D {#sec:mortality-d}

Some readers might have wondered why the mortality rate for "25–44" year olds ![](img/char.pdf) was rising  at the beginning of the 90s. The fourth transition therefore *splits* this age group ![](img/char.pdf) into its individual causes of death ![](img/char.pdf). This answers the question: it was precisely at this point that the AIDS-epidemic was at its peak and has most strongly affected this age group. The animation first hides all the other age groups, splits the "25–44"-line and morphs it into the different causes of death.



### Energy story {#sec:energy-story}

This story talks about the evolution of energy sources in the U.S. since the beginning of the century. It combines a story from the New York Times  [@Popovich-18:howdoes] with one from Forbes [@Mahajan-18:plungingprices]. The individual charts are displayed in figure \ref{energy-charts}.

![\label{energy-charts}](img/energy.pdf)

#### Energy A {#sec:energy-a}

The energy story starts by showing the evolution of different energy sources ![](img/char.pdf) in the U.S in absolute numbers ![](img/attr.pdf). The transition *reconfigures* these characters to show how the proportion of use ![](img/attr.pdf) for each energy source ![](img/char.pdf) has changed over time ![](img/attr.pdf). From comparing the two charts it becomes clear that while the absolute output has either risen or stagnated, coal ![](img/char.pdf) has been used significantly less while the focus seems to be shifting to natural gas and the renewables. The animated transition morphs the lines into their respective areas in the second chart.

#### Energy B {#sec:energy-b}

The second transition *splits* wind energy ![](img/char.pdf) into different states ![](img/char.pdf). It shows how wind  has become a major energy source in certain (great plains) states and leads to the conclusion that, although the rise of wind energy looks unspectacular on a national scale, growth has been exponential in some places.

#### Energy C {#sec:energy-c}

The third mini-story focuses on the strange stagnation of wind energy ![](img/ctxt.pdf) in California ![](img/char.pdf) after 2013. The third transition first *highlights* wind energy in California ![](img/char.pdf) and then *discloses* the usage proportions ![](img/attr.pdf) of other energy sources ![](img/char.pdf)  in the same state ![](img/ctxt.pdf). A marked rise in solar power ![](img/char.pdf) after 2013 implies that the state has decided to invest in this renewable instead of wind ![](img/char.pdf).

#### Energy D {#sec:energy-d}

The final transition *explores* one of the possible reasons for Californias ![](img/ctxt.pdf) decision to focus on solar energy from 2013 on. Instead of the shares ![](img/attr.pdf) of the individual energy sources  ![](img/char.pdf) it shows their cost ![](img/attr.pdf) . While wind energy ![](img/char.pdf) has been consistently inexpensive, the price of solar power ![](img/char.pdf) has fallen substantially over time. It even reached the price level of wind energy in 2013. Which implies that Californias focus on solar rather than wind energy might have economic reasons.



## Conditions

The main goal of the experiment was to find differences between *animated* and *static* transitions. We, therefore, chose this to be the *independent variable*. We counterbalanced for some of the confounders like *topic* and visualization *design* by using the two different stories with difference designs presented before. This has resulted in the following within-subject design:

| Condition | Story 1            | Story 2            |
| --------- | ------------------ | ------------------ |
| **1**     | Mortality static   | Energy animated    |
| **2**     | Mortality animated | Energy static      |
| **3**     | Energy static      | Mortality animated |
| **4**     | Energy animated    | Mortality static   |

By its nature, each story consisted of several different types of transitions which were not counterbalanced.



## Data collection

### Questionnaire {#sec:questionnaire}

#### Conclusion {#sec:qRelationship}

The questionnaire at the end of each mini-story asked participants the following question: "What is your overall conclusion from the two charts on this page?". It then provided a free-form text field for them to provide an answer. We asked for answers that were at least three sentences long. The wording was chosen so as to not hint at a relation between the two charts. We have included two other questions that served as attention and understanding checks. The full questionnaire can be found in appendix \ref{appendix-questionnaire}.

#### Focused attention {#sec:focused-attention}

It also included a subset of the validated *user engagement scale* questionnaire. The scale measures multiple attributes like *focused attention*, *perceived usability*, *aesthetics* or *reward* that together form what is known as *engagement* in the literature [@Obrien-18:practicalapproach]. But even the short questionnaire contains twelve questions which would have been too long to ask after each transition. We, therefore, decided to use a sub-scale of the *user engagement scale* that measures *focused attention*. The reason to use *focused attention* was that it was found to be the factor that explained most of the variance in O'Brien et al.'s analysis [@Obrien-18:practicalapproach] Also, the questions skew towards the positive (compared to the other option, *perceived usability*) and we did not want to negatively prime the participants.

### Survey

The survey at the end of the experiment was introduced to get a sense of the demographics and some additional information that might help to explain outliers.

#### Age

In the final survey, we asked the participants about their age to better understand the diversity of the population that was participating in the experiment.

#### Gender

We equally asked the participants about their gender in the final survey to help us understand how diverse our population was.

#### Level of education

Also asked in the final survey, this would act as a rough proxy for visualization understanding. We assumed certain outliers might potentially be explained by a low level of education.

#### Vision

Equally, if the participants reported weak and uncorrected vision, we could potentially exclude them from the analysis if we found that the factor skewed the results.

#### Colorblindness {#sec:colorblindness}

![experiment-colorblindness](img/experiment-colorblindness.png)

A final criterion we considered for explaining outliers was color blindness. We did not ask participants to report on their colorblindness because not all people who are colorblind know about it. Instead, we presented them three plates from the Ishihara colorblindness test  [@Ishihara-17:ishiharatest]. The plates we have selected, tested for red-green blindness. The most common form of colorblindness, that affects about 8% of men and 0.4% of women. [@-19:colorblindness]

The full survey can be found in appendix \ref{appendix-survey}.

### Passive data collection

The participants actions on each page were continually monitored. We recorded scrolling, typing as information about the participants browser throughout the experiment.

#### Scrolling

Each scrolling interaction with a transition was recorded and timestamped so that we would be able to review how many times a participant saw a transition and how they played the animated transitions.

#### Typing

Each keystroke was recorded with a timestamp. This allowed us to separate viewing time from typing time.

#### Start and end times

Were recorded to know how much time each participant spent on each mini-story.

#### Browser parameters

Browser parameters like window size and user agent were collected as another way to explain outliers.

A complete overview of the data that was collected passively can be found in appendix \ref{appendix-passivedata}.


## Measures

To test the hypotheses described in section [-@sec:hypotheses] and based on the data collected we have established several measures. 

#### H1: Transitions understanding

The main hypothesis was that the combined benefits of animated transitions would support readers in understanding the relationships between charts. We therefore coded their conclusions [@sec:qRelationship] based on the relationship that was implied by each transition [@sec:mortality-story and @sec:energy-story]. This led to a measure called "**correct relationship**".

#### H2: Relationship

In addition to coding the *correct relationship*, we also coded if they assumed any kind of relationship between the two charts in their answer. This measure is called **relationship**.

#### H3: Causality

Whenever the participant perceived a relationship, we also coded if his answer indicated that he assumed a causal relationship. We called this measure **causal**.


#### H4: Object constancy

If animated transitions would support object constancy, participants would need fewer transitions to come to their conclusion because their cognitive load would be reduced. We, therefore, measured the **number of transitions** between the two charts. When the transition was animated the participants needed to cross the 10% and then the 90% threshold successively (or the inverse) to be counted as one transition. 


#### H5: Highlighting

If animation has a cueing effect, it should focus the participant on certain characters. We predicted therefore that this will lead people to mention fewer characters in their conclusions. The **number of characters mentioned** in each coding was therefore coded. We not only included characters that were directly visible but also groupings of characters like "green energy sources" to count as one [@sec:our-model]. 


#### H6: Engagement

Engagement was measured by calculating the mean of the answers on the **focused attention** sub-scale of the *user engagement questionnaire* [@Obrien-18:practicalapproach].

We considered **word count** to be another proxy for engagement. As the participants were in a task-oriented setting, we generally expected them to not lose their time with long answers. If answers turn out to be considerably longer in one of the scenarios, we assumed that it was because it engaged them.

Finally, we have used *sentiment analysis* on the participants answers. We assumed, that if there was a difference in engagement, this might lead to a more confident or positive tone in the answers. To analyze the answers, we have used IBM Watson [@Kaminski-19:scienceservice] which gives ratings for different types of "tones" in the text. Watson identifies the degree to which a text is *analytical*, *confident*, *tentative*, *fearful*, *joyful* or *sad*.

Because we would not expect highly emotional language in our answer, we decided to look further into the three dimensions: **analytical tone**, **confident tone**, and **tentative tone**.



## Data analysis

### Calculation of measures

#### Total duration

The duration was calculated by excluding times of inactivity. We considered timespans of more than 30 seconds without scrolling or typing to be *inactive time*.

#### Typing time

Typing time was calculated by summing all the times between recorded keystrokes (excluding *inactive time*).

#### Viewing time

This was defined as *total duration* minus *typing* and *inactive time*. 

#### Scroll position

The scroll position was normalized to the distance between the beginning of the first chart and the beginning of the second chart. 

#### Transition count

Transition count was calculated based on *scroll position* and *time*. Each time the scroll position passed from lower then 10% to greater than 90% (or the inverse), was counted as one transition.

#### Drawing performance

Each time a chart was redrawn during an animated transition was recorded (together with scrolling). To calculate the drawing performance we considered redraws within less than 0.5 seconds. We considered every timespan between redraws that was longer to be due to user inactivity. The mean of all shorter timespans was used to calculate the mean framerate per mini-story. Everything below 20 frames per second was considered *slow*.

### Statistical evaluation

To evaluate how the conditions differed, the *means* of the above measures where compared. To find if the conditions differed significantly a *two-sided t-test* was employed to calculate the *p-value*. Finally, the *means* with their respective *95% confidence intervals* were plotted against each other to give a clearer picture of the distributions. 

The complete analysis can be found in appendix \ref{annex-dataanalysis}.

### Other factors considered

#### Screen size

To exclude effects that would result from differences in layout and element size, the experiment was designed for a fixed viewport size of 1280px × 720px. Participants with viewports that were smaller than this were blocked from the experiment.

#### Browser capability

Equally, participants with browsers that did not support the technologies we used for the animated transitions were blocked from the experiment. This had the positive side-effect of equally blocking slower browsers.



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

To explore this discrepancy further, we 

TODO

 This decision is supported by the fact that they had the highest scores overall. We also found that more answers where classified as *tentative* than *confident* which confirms the analysis from before that the task was rather difficult.

On all three dimensions, we did not find any significant differences between animated and static transitions. This lends support to the interpretation that the engagement truly did not differ between the conditions.



### Discussion

Based on the literature and the above findings we arrive at several conclusions about the nature of transitions and animation. We came to believe that animation indeed guides the reader's eye between transitions and therefore supports object constancy and cueing at the level of perception. But the results also indicate that relationships are interpreted at a much higher level and perceptual differences don't directly influence this interpretation. Finally, we are still unsure about how animation precisely influences engagement but there are strong hints that its effect is not as universally positive as often portrayed in the literature.

###Limitations

Much of the stories were designed before our conceptual understanding of transitions and animation was as clear as it is presented in this work. The types of transitions that are present in the experiment are therefore more strongly driven by the needs of the story than by our theoretical understanding of the properties of different transitions. This weakens the link between our results and the theoretical framework we have proposed.

Almost 20% of the participants saw animated transitions that we categorized as slow. We decided to include these results anyway because most of the essential properties of the animation would still be present even when it was laggy. We also found that the results stayed the same even when we excluded *slow*-sessions but 

The task was rather difficult.

\newpage

\part{Implementation}

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



## Program generation and rendering process

1. In a first step, the system generates objects for all the charts with their axes, characters, and annotations from the specification. Wherever something is not defined, it assumes a sensible default if possible or explains the failure otherwise.
2. After the charts, the system generates the objects who represent the transitions which reference the chart objects.
3. Finally, a director object is generated with references to all the charts and transitions. The director continually checks if the viewer has been scrolling.
4. When the scroll position changes, the director calls the `draw`-method on the charts/transitions that should be visible at this position. It calls the `hide`-method on all the others. If at the current position, a transition should be displayed, the `draw`-method is called with an additional `position` parameter TODO:formula that indicates the state of the interpolation.
5. This sets in motion a rendering cascade where every object also calls the `draw` methods of its children to render the final display. This corresponds to the *render*-pattern described in  [@Heer-06:softwaredesign])
6. Objects $$\{characters, axes, annotations\}$$ of transition charts implement their own interpolation methods and use them for rendering interpolated states.
7. The `draw`-methods generate the necessary SVG-code and append it to an SVG that will finally be displayed in the HTML element for the chart.



## Interpolation

A few remarks on how we have handled the interpolation described above. While previous work has usually interpolated between visualization parameters [@Heer-10:declarativelanguage, @Satyanarayan-14:authoringnarrative], our system interpolates between SVG-shapes. Thanks to this, our system can generate animated transitions between two completely different visualizations. The only condition is that a character needs to be represented by a single, closed SVG shape, a moderate constraint in our eyes. Other systems only permit transitions "within" the same chart.

One problem when interpolating directly between SVG-shapes is that they need to have a one-to-one correspondence between their anchor points. If this is not the case, there needs to be some method to add points to the simpler shape. For this, we have used an algorithm that duplicates points of the simpler shape that are closest to the matching points in shape B. [@Beshai-16:improvingd3] This has produced visually good results in all our cases. But it had the downside of making the calculation of interpolated states slower.



## Performance

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



## Logging

Every interaction with the experiment was logged. Whenever the director detected scrolling, a log entry was created. Every keystroke too was recorded. And naturally, the participants answers where recorded. Logging is also the director's responsibility. Log entries are appended to a list which is sent to a server every 5 seconds as a CSV to minimize the potential for data loss. The data is also sent when the participant submits the answer form.

Every entry stores a timestamp, an identifier for the participant and the current mini-story, the URL, the scroll position and information about the participant's browser like window size or user agent (>> full documentation in supplementary material)



\part{Conclusion}

# Conclusion

TODO



# Future work

* Validate the proposed transition types

