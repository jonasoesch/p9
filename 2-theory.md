\newpage
\part{Theoretical background}

# Transitions

Presenting charts in a logical, narrative sequence seems to be preferred by readers [@Segel-10:narrativevisualization]. This implies that there is some information in the sequencing that is not present in the charts themselves. But what kind of information? This part reviews how previous work classifies transitions according to the kind of information that they transport. It then takes a deeper look into how readers interpret transitions in order to gain a better conceptual understanding of transitions and what makes them difficult. It then applies this conceptual understanding to examples of narrative visualization from practice to reformulate and synthesize the existing classifications. Finally, it discusses the implications of this sharpened understanding for designing animated transitions.



## Existing classifications of transitions {#sec:existing}

Multiple authors have compiled classifications of transitions between charts. In this section, three different approaches to classifying transitions will be presented: visualization-focused, story-focused and inductive.

### Visualization-focused classifications {#sec:param-classification}

The most common approach is to think about transitions is in terms of visualization parameters [@Heer-07:animatedtransitions; @Yi-07:deeperunderstanding; @Fisher-11:animationvisualization; @Anbync-18:space]. Any visualization can be viewed as the result of a series of parametrizable transformations applied to the underlying data set [@Jankun-kelly-07:modelframework]. The transition can, therefore, be described in terms of parameter changes as long as the underlying data does not change.

Through this approach, four authors identify a total of 9 transition types. Because their approach is very similar, their classes have a high overlap and will be presented together. Figure \ref{visualization-focused-classification} maps the names the authors have used to the "generic" names that we have used in their description:

|                              | **Heer et al. [@Heer-07:animatedtransitions]** | **Yi et al. [@Yi-07:deeperunderstanding]** | **Fisher et al. [@Fisher-11:animationvisualization]** | **The Space Between [@Anbync-18:space]** |
| ---------------------------- | ---------------------------------------------- | ------------------------------------------ | ----------------------------------------------------- | ---------------------------------------- |
| **Pan**                      | View transformation                            | Explore                                    | Change the view                                       | Pan & Zoom                               |
| **Zoom**                     | View transformation                            | Abstract / Elaborate                       | Change the view                                       | Pan & Zoom                               |
| **Filter**                   | Filtering                                      | Filter                                     | Filter the data                                       | -                                        |
| **Reorder**                  | Ordering                                       | Reconfigure                                | Reorder the data                                      | Sort order                               |
| **Substrate transformation** | Substrate transformation                       | Reconfigure                                | Change the charting surface                           | -                                        |
| **Visualization change**     | Visualization change                           | Encode                                     | Change the representation                             | Graph type                               |
| **Data schema change**       | Data schema change                             | -                                          | Change the data                                       | Variable transition                      |
| **Data change**              | Timestep                                       | -                                          | Change the data                                       | Data transition                          |

Table: Comparison of transition types commonly identified by different authors for different purposes. The table shows that the agreement is relatively high for transitions that can be defined in terms of visualization parameters. What is often missing is the case where the underlying data changes. \label{visualization-focused-classification}

* **Pan**: Moving a fixed image below a smaller viewport to see one part at a time. The most famous example of this is Google Maps [@Google:googlemaps].
* **Zoom**: Geometric zooming in and out of a fixed image. This transition too, is used in Google Maps [@Google:googlemaps].
* **Filter**: Hiding or showing elements based on some criteria. When reading a visualization on cars, filtering might for example hide all the data on American cars.
* **Reorder**: Reordering axes according to a different criterion. Countries that are displayed in alphabetical order might, for example, be reordered according to their GDP.
* **Substrate transformation**: Any distortion to the scale that is not addition or multiplication of a constant. For example a log transform or a lens-effect that resizes only a part of the coordinate system. The latter being something that is not often seen in real-world applications but seems to be a darling of visualization researchers [@Munzner-15:visualizationanalysis, pp. 327–338].
* **Visualization change**: Showing the same data with a different visualization idiom. For example, showing a distribution as a boxplot to indicate mean, quantiles and outliers first and then transforming it into a histogram to give a better sense of its shape.
* **Timestep**: Showing the same visualization for different points in time. For example, the population pyramid of Switzerland for 1960 and 2010 to show how it has shifted to older people.
* **Data schema change**: Mapping a different data dimension to one of the visual variables (position, color, etc.). A visualization might, for example, show the use of certain plant variants over time and show the occurrence of pests over the same period in the next state.
* **Data change**: When new data is shown but the visualization and the axes stay the same. This is the generalization of the *timestep* transition.

The strength of this kind of classification is, that types can relatively easily and coherently be determined  as the high overlap between different authors shows. It's weakness is that it characterizes a transition by its technical properties and not based on how the reader will interpret it, which makes it less useful for designers of narrative visualization. Other fields, especially the research on comics have done much more work in this regard.

### Story-focused classification {#sec:story-classification}

The most-cited classification of transition types in comics is the one by McCloud [@Mccloud-93:understandingcomics]. It is also commonly referred to in narrative visualization [@Baudisch-06:phosphorexplaining; @Segel-10:narrativevisualization; @Amini-15:understandingdata; @Badawood-15:narrativeconstruction; @Bach-16:tellingstories] because comics are similar to narrative visualization in that they are *visual* and *sequential* [@Mccloud-93:understandingcomics, p. 16]. McCloud describes six types of transitions between comic panels (see figure \ref{fig-mccloud}):

1. **Moment-to-moment**: Stepwise movement through time.
2. **Action-to-action**: Movement through time-based on meaningful events.
3. **Subject-to-subject**: Switch from one subject to another
4. **Scene-to-scene**: Change in location or a long timespan passing.
5. **Aspect-to-aspect**: Exploring a scene.
6. **Non-sequitur**: Changes without an obvious relationship.

In McCloud's classification, a transition is characterized by a change in either *subject*, *scene* and/or *time*.

![The six transition types for comics proposed by McCloud based on the concepts of *subject*, *scene* and *time* [@Mccloud-93:understandingcomics]. \label{fig-mccloud}](/Users/jonas/Desktop/P9/bericht/img/transition-mccloud.png)

Cohn [@Cohn-10:limitstime] refines on McCloud's transition types by introducing hierarchy to the interpretation of subject, scene and time. He argues that readers will first try to find the same subject in the subsequent panel. They will then move their attention to changes in the scene. Finally, they will shift their focus to changes in time. Cohn uses examples to show how a different order leads to interpretations that run counter to typical reading habits [@Cohn-10:limitstime, p. 143].

*Subject*, *scene* and *time* are reminiscent of journalisms famous *who/what*, *where* and *when* [@Wikipedia-19:fivews]. Such proximity to journalism indicates that McCloud's transition types might be useful outside of the domain of comics. While McClouds transitions based on *subject*, *scene* and *time* might be useful in traditional narratives that talk about people and events, it is not directly obvious how to apply them to abstract visualizations [@Badawood-15:narrativeconstruction, pp. 68-82]. 

### Inductive classification {#sec:inductive-classification}

A bottom-up approach to transition types can be found in Hullman et al. [@Hullman-13:deeperunderstanding]. The authors reviewed 42 narrative visualizations and identified 12 different transition types which they grouped into six categories as presented in figure \ref{transition-hullman}:

![The six categories of transitions identified by Hullman et al. based on an analysis of 42 narative visualizations [@Hullman-13:deeperunderstanding]. The sources of the visualizations used to illustrate the transitions are (in order): [@Roston-15:whatreally; @Lambrechts-19:whyeua; @Nathaniel-15:howfive; @Lambrechts-19:whyeua; @Aisch-14:wherewe; @Fernholz-15:interactivegraphic] \label{transition-hullman}](/Users/jonas/Desktop/P9/bericht/img/transition-hullman.pdf)

**Dialogue**: A question is asked or implied in one chart which is being answered in the next. One chart shows a time series of world temperature and asks how natural factors have contributed. The next chart shows how natural factors like volcanos have influenced global temperatures over time (see figure \ref{transition-hullman} on the top).

**Temporal**: The two charts show the same data for different points in time. For example how the regional subdivision of Hungary has changed between 2017 and 2018 (see figure \ref{transition-hullman} on the top).

**Causal**: One chart shows an effect and the next chart presents the cause of the effect. A chart showing a school district with high rates of failures and the next showing how high failure rates have been caused by higher segregation, for example (see figure \ref{transition-hullman} on the top).

**Granularity**: When one chart shows a higher amount of detail than the other. One example is a chart that shows EU countries on a map and another chart that shows how they are split into regions (see figure \ref{transition-hullman} on the bottom).

**Comparison**: Either the dependent or an independent variable changes between the charts. The transition is called a measure walk when the measure is being changed. For example, showing a map of the impact of climate change on flooding risk and a map of the impact on crop shortage (where the respective impacts are the dependent variables). It is called a dimension walk when one of the independent variables changes. For example, a series of sorted streamgraphs that show emigration patterns for different states (where the state is an independent variable) (see figure \ref{transition-hullman} on the bottom).

**Spatial**: When the final state is spatially close to the initial state, as visible in figure \ref{transition-hullman} on the bottom, where the charts show different heights of the earth's orbit.

Hullman et al. further distinguish between *implicit transitions* that can only be interpreted by a reader and *explicit transitions* that could potentially be inferred from changes in the attributes visualized (compare to [section @sec:param-classification]). Interestingly they have found very little occurrences of the two explicit transitions in their analysis (see figure \ref{hullman-frequency}).

![Transition types identified by Hullman et al. [@Hullman-13:deeperunderstanding]. The explicit *dialogue* and *causal* transitions are quite rare. Also *spatial* transitions did not occur very often. \label{hullman-frequency}](/Users/jonas/Desktop/P9/bericht/img/transition-hullman-freq.pdf)

The strength of Hullman et al.'s classification is, that it is directly linked to real world examples of narrative visualization. But because it has no underlying conceptual understanding, it is often not clear how to classify a transition according to their taxonomy.

### Limitations of existing classifications

The *visualization-oriented* (@sec:param-classification) and the story-oriented (@sec:story-classification) classifications both provide a conceptual understanding of transitions based on the question: "What changes?". In the first case it is one of the visualization parameters. In the second case it is either *subject*, *scene* or *time*. This allows for the construction of theory around these transitions [@Heer-07:animatedtransitions; @Cohn-10:limitstime] because there is clarity about the basic concepts. But these classifications can not be directly applied to narrative visualization because they were intended for other contexts.

Hullman et al.'s inductive approach [@Hullman-13:deeperunderstanding] is interesting because it treats real-world examples of narrative visualization. But it has no theoretical concepts linked to it. It can, therefore, not be used to understand how readers understand transitions and how animation might support it.

The following section will, therefore, discuss the existing literature on how readers perceive transitions. This review will form the basis of a reformulation of Hullman et al.'s transition types in terms that link it to a theory. This theory, in turn, will help to discuss how animation can be used to guide readers.



## How readers interpret transitions {#sec:transition-interpretation}

In the previously discussed classifications, transitions are often classified according to the question: "What changes?". This implies that readers make sense of transitions through comparison. This section therefore gives a brief overview of the relevant work on comparison in visualization. Based on this, it discusses what makes transitions difficult for readers. It then introduces findings from cognitive load theory that help in understanding how these difficulties are linked to the cognitive abilities of readers.

### Comparison to understand transitions {#sec:comparison}

Readers find and interpret relationships within and between charts by comparing targets from the charts in their head. This implies that interpreting relationships is related to the amount of targets that can be held in the reader's mind. 

According to Brehmer et al.  [@Brehmer-13:multileveltypology], comparison is a fundamental task in visualization. Comparison is distinguished from other tasks like *identify* and *summarize* (see figure \ref{transition-topology}) by the number of *targets* it operates on. An *identify*-task uses a single target while a *summarize*-task uses all available targets. But the *compare*-task requires multiple targets to compare them.

![A topology of visualization tasks which synthesizes a large body of
previous literature has been proposed by Brehmer et al. [@Brehmer-13:multileveltypology] \label{transition-topology}](img/comparison-taxonomoy.png)

Before he is able to compare targets, the reader needs to *search* for an initial target (see figure \ref{transition-topology}). In narrative visualization this will usually be done by *locate* to find targets that are mentioned in the text. But this is not the only possibility:

#### Explicit identification

Is aided by the author through labels, annotations, colors, and narrative. An example can be seen in in the first point of figure \ref{narrative-visualization}.

#### Identification through visual statistics

This uses the ability of the visual system to quickly and quite accurately calculate certain statistical properties of an image (see figure \ref{comparison-identification}). A viewer can, for example, see in an instant if a certain region contains more orange than blue dots (mean). He can also quickly identify groups of points that are similar (clustering). Viewers will be able to tell if circles get bigger from left to right (trends). Or if a point has a different color from all the outers (outlier). All of these values can then serve as a target for comparison.

#### Implicit identification

 In many cases, external knowledge or personal interest of the viewer will lead to the identification of a target [@Gleicher-18:considerationsvisualizing]. Often, readers will compare what they see to what they would have expected to see. Or a person from Brooklyn, for example, will tend to be more interested in the success and failure history of the Brooklyn Nets than that of the Warriors from California (see the third example in figure \ref{narrative-visualization}). This is one of the reason for authors of narrative visualization to include *interactive visualization*.

![The visual aggregation tasks from [@Szafir-16:fourtypes] show how comparison targets can by identified through visual statistics. \label{comparison-identification}](img/comparison-identification.png)

When a target or a set of targets have been identified in one of the charts, the reader proceeds to *locate* a corresponding target in the other chart. When all the targets are available, they are compared in the reader's mind. This often requires a considerable mental effort, which we will call the *transition cost*.

## Transition cost {#sec:transition-cost}

The transition cost describes how much mental effort it takes to do the necessary comparison(s) to understand a transition. Gleicher [@Gleicher-18:considerationsvisualizing] describes three factors that make comparisons challenging:

* A large number of targets.
* Large targets. For example when comparing two very long time series.
* Complex relationships. For example when there is not a one-to-one relationship.

Cognitive load theory predicts that a maximum number of 9 targets can be held in working memory for processing [@Wong-12:cognitiveload; @Miller-56:magicalnumber]. Depending on the size of the targets and the complexity of the relationships, this number can get as low as 1 [@Alvarez-04:capacityvisual].  When the number of targets that are needed for a comparison exceed these limitations, the reader will forget some of them and the comparison fails [@Wong-12:cognitiveload].

When designing narrative visualization, the cost of the transitions should ideally stay within these boundaries to make the reading fluent. Animation is often proposed as a means to make transitions easier, but it is often not clear how exactly this works. The next chapter will therefore present the relevant research on the use of animation in visualization.



# Animation {#sec:animation}

## Strengths of animation {sec:animation-strengths}

Animation has been portrayed to provide many benefits to UX-design in general and visualization design in particular. Chevalier et al. [@Chevalier-16:animations25] have identified 23 different "purposes" of animation in visualization. Things like "Staying oriented during navigation" or "Hooking the user" which are finally classified into five meta-classes. Although this overview shows the popularity of animation in today's practice, it does not discuss any evidence that animation *actually* serves the given purposes.

To understand why designers might think that animation helps in these specific circumstances, we have mapped some lower-level strengths of animation described in Heer et al. [@Heer-07:animatedtransitions] to all each of the purposes (see figure \ref{animation-purposes}).

![The purposes of animation found by Chevalier et al. [@Chevalier-14:notsostaggeringeffect] each employ one or more of the strenghts of animation that are described by Heer et al. [@Heer-07:animatedtransitions]. \label{animation-purposes}](img/animation-purposes.pdf)



### Object constancy ![](img/A.pdf) {#sec:object-constancy}

Object constancy describes the ability to identify two objects as being the same entity between two states. There is some evidence that when the reader has rapid visual access to the targets (less than 300ms [@Rensink-02:changedetectiona]), changes will be detected before working memory is reached. The idea is that when one target is morphed into another, they are identified as being "the same" without having to do a comparison in working memory. This is probably the strength most often invoked for animation [@Chalbi-18:understandingdesigning; @Wu-16:graphicalperception; @Bederson:doesanimation; @Heer-07:animatedtransitions].

### Highlighting ![](img/B.pdf) {#sec:attract-attention}

Movement very strongly attracts attention. This view is undisputed in the literature [@Munzner-15:visualizationanalysis, p. 238] and there is some solid evidence that motion is more effective in highlighting elements than other visual means [@Ware-04:motionsupport]. This ability to highlight elements can be very useful for storytelling. But it also poses the risk to distract the reader from important, non-moving elements of a visualization like axes or labels.

### Communicate relationships ![](img/C.pdf) {#sec:causality}

In nature, we observe a certain smooth flow of cause and effect. When a rolling billiard ball hits another, the second ball will smoothly continue its transition. This leads to the intuition that smooth animation would imply some sort of cause and effect relationship (see section [-@sec:congruence]). This is true when depicting naturalist phenomena like the formation of lightning [@Betrancourt-08:displaykey]. Other authors have found that animation also conveys causality in more abstract displays but that it doesn't perform better than symbolic depictions of causality [@Kadaba-07:visualizingcausal].

Animation has also been reported to have modest benefits when depicting aggregation operations like summing [@Kim-19:designinganimated].

### Engage ![](img/D.pdf) {#sec:engage}

Multiple authors have remarked how readers were "excited" about animation in interfaces and that it thus led to higher engagement [@Tversky-02:animationcan; @Heer-07:animatedtransitions]. The ability of animation to engage and excite is often presupposed based on anecdotal evidence. But few studies have used validated questionnaires to explicitly measure engagement. One study who did, found very mixed results [@Amini-18:hookeddata]. In their findings animation only led to higher engagement when coupled with pictorial representations of data. The main factor that led to higher engagement was "Aesthetics".  We suspect that in many cases there might be a "novelty" effect of animation that excites readers. There is little evidence that yesterdays fashionable animation still leads to higher engagement today. Furthermore, the novelty effect might lead readers and designers astray and they might confuse their positive feelings with actual benefits for understanding [@Hassenzahl-10:inferenceperceived; @Baudisch-06:phosphorexplaining].

### Data encoding ![](img/E.pdf)

Similar to color or shape, motion can be used to encode data. Although the precision in interpreting it is very limited [@Munzner-15:visualizationanalysis, p. 95]. This property of animation is not listed in Heer et al. [@Heer-07:animatedtransitions] but we have decided to include it because it is well studied and forms the basis of multiple of the purposes listed by Chevalier et al [@Chevalier-16:animations25].

While the listed strengths seem straightforward, the literature indicates that they are present only under certain circumstances.



## Consideration when using animation

Animation does not automatically make transitions easier. Its effectiveness is highly related to two sets of principles: *congruence* and *apprehension*. When these principles are being violated, the effect of animation on the transition cost might be negligible of even negative.

### Congruence {#sec:congruence}

![Congruence as defined by Tversky et al. [@Tversky-02:animationcan] means that the representation should correspond to the concepts that are conveyed. Apprehension means that the representation should be accurately perceived.](img/congruence-apprehension.png)

The question if animation is a natural fit for certain types of transitions has been described as the principle of *congruence* [@Tversky-02:animationcan, p. 247]:

> Effective graphics conform to the Congruence Principle according to which the content and format of the graphic should correspond to the content and format of the concepts to be conveyed.

According to this view, showing *change over time* would be a congruent use of animation. The reasoning is that people perceive change over time as smooth transitions in their everyday lives. One study accordingly found that animation reduced the perceived cognitive load when showing change in networks [@Bach-14:graphdiariesanimated]. Other authors have not found such benefits [@Tversky-02:animationcan] naming a lack of *apprehension* as the potential reason.

The second natural fit for animation are *viewport changes* like *pan* and *zoom*. These correspond to a person's natural movements through space, getting closer to objects, looking around, etc. Animated transitions have indeed been found to be superior to static transitions for *panning* [@Shanmugasundaram-07:cansmooth] as well as *zooming* [@Shanmugasundaram-08:effectanimated].

As previously discussed ([-@sec:causality]), animation has also been shown to be congruent for communicating causality and intentionality.


Interestingly, multiple authors found that animation seems to be far less effective when used with abstract representations than when it is used with iconic representations. Amini et al. [@Amini-18:hookeddata] found that animated transitions in data visualization only led to higher engagement when coupled with iconic representations (see figure \ref{Amini-18-hookeddata}). A recent meta-analysis [@Berney-16:doesanimation] of 50 studies on animation and its effect on learning found, that animation only benefitted knowledge acquisition when used with "iconic representations" of the phenomena the needed to be studied. No effect was found for abstract representations.

![Amini et al. found that animation only led to higher engagement together with iconic representation of the data (on the top) while it did not differ from non-animated transitions when the representation was abstract (on the bottom) [@Amini-18:hookeddata]. \label{Amini-18-hookeddata}](img/Amini-18-hookeddata.png)

These findings indicate that the effectiveness of animation is strongly related to the amount of "realism" of the animation and even the visualization that it is being used on. But even when the use of animated transitions seems congruent, it may still fail. Tversky et al. cite a lack of *apprehension* for this [@Tversky-02:animationcan].

### Apprehension

Tversky et al. describe the apprehension principle like this [@Tversky-02:animationcan, p. 247]:

> … graphics should be accurately perceived and appropriately conceived.

It is therefore related to the basic perceptual abilities of the reader. Heer et al.[@Heer-07:animatedtransitions] define six design principles for animated transitions to improve apprehension: *similar transforms should be grouped*; *trajectories should be predictable*; *transformations* should be *simple*; to simplify complex transformations, *staging* should be used and the transition duration should be *long enough* to follow (but not longer). Although these principles seem to make sense intuitively, research on visual perception has shown to produce unintuitive results.

#### Visual tracking {#sec:visual-tracking}

Research on visual tracking explores how people track objects when the objects are moving. Participants typically have to track the position of several individual objects (circles or rectangles) or a group of objects under different conditions. These experiments have revealed several, sometimes surprising, properties of the human perception:

*Animation speed*: Higher animation speeds do not strongly influence tracking ability [@Franconeri-10:trackingmultiple]. 

*Distance traveled*: Longer distances traveled make objects harder to track [@Franconeri-10:trackingmultiple]. 

*Number of objects*: In typical situations, four objects can be tracked in parallel [@Yantis-92:multielementvisuala].

*Unpredictable paths*: Have only a minimal impact on tracking performance [@Chevalier-14:notsostaggeringeffect].

*Occlusion*: Does not impair tracking when it can be interpreted as "one object disappears"behind another" [@Scholl-99:trackingmultiple].

*Crowding*: When objects that need to be tracked get close to each other, tracking performance is impaired [@Chevalier-14:notsostaggeringeffect].

*Multiple objects are tracked as one convex area*: Deformation of this area as well as distractors entering the convex area lead to impaired tracking performance [@Yantis-92:multielementvisuala; @Chevalier-14:notsostaggeringeffect].

The above results show that object tracking happens through a complex interplay of the different levels of the visual system. While they give some indications on how the visual system processes information, the findings are hard to operationalize in animation designs because they will often be in conflict with the content that should be depicted. The *distance travelled*, for example, is often given by the data that is being depicted in the two charts and can not be influenced. The next section will discuss a few concrete propositions tha have been made to increase the apprehension of animated transitions. 



### Animation techniques {sec:animation-techniques}

A number of techniques have been proposed in the literature to increase the apprehension of animation. A brief discussion will show that in practice congruence and the limits of working memory seem to be more important than apprehension.

#### Staggered animation

Because only a limited number of objects can be tracked simultaneously (see section [-@sec:visual-tracking]), it has been proposed to animate objects in multiple steps (see figure \ref{staggered-animation}).

![In staggered animation, some objects start to animate only with a delay. \label{staggered-animation}](img/staggering.png)

Staggered animation delays the start time of animations incrementally for some objects. An example: out of 7 objects, 4 will start to move right away, 3 other objects will start to move only a bit later. A more complex example is shown in figure \ref{staggered-animation}. The delay between the starts is called *dwell*. A dwell of zero means no staggering.

Staggered animation has been proposed to *reduce occlusion* as well as *complexity* during animation and therefore lead to a higher tracking performance  [@Heer-07:animatedtransitions]  but interestingly the effect is negligible [@Chevalier-14:notsostaggeringeffect].

#### Staged animation {#sec:staged-animation}

Staged animation splits complex animation into multiple steps. An animation then who interpolates between positions as well as between two colors, might, for example, be split into two animation stages. One where the objects move from position a to position b. Another, where they change color.

Heer et al. explicitly recommend the use of staged animation [@Heer-07:animatedtransitions] even though they found only modest benefits. In situations where staging led to complex and long animations, the authors found it even detrimental for tracking performance. This is also what cognitive load theory would predict because long, uninterrupted multi-stage animation will introduce elements into working memory but not leave the viewer time to organize them into long term memory. His working memory will therefore overflow and he will forget what he had seen before. This is called the *transient memory effect* [@Wong-12:cognitiveload].

#### Animation duration

Multiple authors have observed that making animation slower has a negative effect on readers [@Shanmugasundaram-07:cansmooth; @Baudisch-06:phosphorexplaining]. Others counter that very fast animation might lead to higher error rates [@Heer-07:animatedtransitions]. This assumption has been refuted by Franconeri et al. [@Franconeri-10:trackingmultiple] who showed that higher speeds have no impact on tracking performance when the distance between objects stays large enough.

#### Direct manipulation {#sec:direct-manipulation}

Readers typically perform better at recall and problem solving, when they can control animation themselves. Multiple authors have shown this for cases where readers could start and stop animated transitions [@Chan-05:whencan; @Hasler-07:learnercontrol]. But here too, it is hard to separate different effects. Tversky et al. point out, that interaction has been shown to benefit learning in itself and just happens to be coupled with animation often [@Tversky-02:animationcan].

#### Easing

John Lasseter in his classic paper on the principles of computer animation [@Lasseter-87:principlestraditional] describes that animators developed a preference for "slow-in-slow-out" over linear easing over time. This recommendation has been confirmed in more formal experiments [@Dragicevic-12:temporaldistortion]. Because "slow-in-slow-out" motions are closer to what we experience in nature, this type of easing can be seen as more *congruent* than other forms (see section [-@sec:congruence]).

### The role of apprehension and congruence

The discussion of the research in the previous section demonstrates that clever technique to improve apprehension have most probably limited importance in practice. The proposed techniques often do not lead to the purported benefits, mostly because the easily lead to violations in other areas of apprehension, congruence or working memory.

The only two techniques that have consistently shown to be beneficial are direct manipulation and "slow-in-slow-out"-easing.

The principle of congruence on the other hand has been shown to have a profound impact on the effectiveness of animation. The closer the objects and the motion are to the real world, the more positive the  effects of animation. This casts severe doubts on the usefulness of animation to support transitions between highly abstract visualizations.

 

## Unfair comparisons {#sec:unfair-comparisons}

Further doubts on reported benefits of animation come from the problem of *informational equivalence*. Some studies who have reported benefits of animated transitions have been criticized for involving "unfair comparisons" [@Tversky-02:animationcan]. The animations presented contained information that was not easily deducible from the non-animated transitions.  Tversky et al. [@Tversky-02:animationcan, p. 251] put it like this:

> Showing that students learn material better when it is presented than when it is not presented should not be a goal of empirical research.

Fair comparisons, in contrast, need to identify *informationally distinct* states very clearly and show them not just in the animated scenario but also in all the scenarios they are compared to. Tversky et al. find that in these experiments, purported benefits of animation often fail to materialize.
