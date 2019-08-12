



# Narrative visualization

## Explorative and explanative visualization

![Munzner[@munzner:14] uses the words "discover" for explorative and "present" for explanative visualization](/Users/jonas/Library/Application Support/typora-user-images/image-20190213162158465.png)

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

![The different structures of non-linear storytelling in narrative visualization described by Segel et al.[@Segel:2010uj]](/Users/jonas/Desktop/P9/bericht/img/storytelling structure.png)

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
* **Reorder**: Reordering axes according to a different criteria. For example from age to height.
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

McCloud too uses the question "What changes?" to characterize his transitions. In his view, there are three things that can change by different amounts between two panels: *subject*, *scene* and *time*. 

Cohn [@Cohn-10:limitstime] refines on McClouds transition types by introducing hierarchy on the interpretation of subject, scene and time. Based on what we experience as the correct interpretation of a sequence of panels, he argues that readers will first look out for changes on or of the subjects. Then they will think about the scene. Finally, their attention will move to differences in time. In any case, they will assume that subject, scene and time have not changed if nothing explicitly contradicts this assumption.

*Subject*, *scene* and *time* are reminiscent of journalisms famous *who/what*, *where* and *when*. [@-19:fivews] This proximity to journalism is encouraging for the use of these three categories in narrative visualization.

Missing from the list is *why* which makes it's appearance in the next section.

### Hullman

A more bottom-up approach to transitions can be found in Hullman et al. [@Hullman-13:deeperunderstanding]. In a review of 42 narrative visualizations, the authors identified 12 different transition types through multiple . They grouped these into six categories:

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

By "simple transitions" the authors describe transitions were few things change. They, therefore, call the rate of change the *transition cost*. The transition cost is calculated by summing the following numbers:

* How many independent variables have changed?
* Has the dependent variable changed?
* By how many levels has the granularity changed?

When using this definition, the authors found that readers strongly preferred transitions with a cost of one. Transitions with costs that were higher, e. g. two or three were judged as equally undesirable. Even though the definition is not very precise yet, the finding indicates that the transition cost might be a measure to evaluate if a given transition needs to be simplified; for example, by adding another state in between. There are many similarities between the concept of transition cost and the more general concept of *cognitive load*. [@Wong-12:cognitiveload]



### Reducing the transition cost

In addition to reducing the rate of change, there are other means to reduce the transition cost. *Narration* is commonly used to guide the reader's attention to a specific relationship between two states  [@Aisch-17:hurricaneirma; @Collins-15:whymeasles; @Anderson-16:largestanalysis].

Different authors have tried to use *animation* to reduce cognitive load [@Zongker-03:creatinganimation; @Betrancourt-08:displaykey] with mixed results. Although the use of animation for transitions is generally met with great enthusiasm by readers[@Heer-07:animatedtransitions], there is still much unclarity regarding its effect on understanding and about how well it fares against other means for easing the transition cost. One experiment, for example, has shown that *symbols* were equally effective in establishing a causal relationship as animation.[@Kadaba-07:visualizingcausal] Others have found animation very effective in communicating spatial [@Shanmugasundaram-07:cansmooth] and granularity transitions [@Shanmugasundaram-08:effectanimated]. Narration, on the other hand, might be the most efficient when establishing dialogue transitions. The effectiveness of different means might, therefore, be closely related to the transition type. 

Especially for animation, there are also perceptual constraints to consider. Ignoring these can even lead to an increase in transition cost. [@Heer-07:animatedtransitions] Tversky et al. conclude that there are two factors that would need to be considered when designing effective transition animations: *congruence* and *apprehension*.



# Animation

Animation has been used for very different purposes in information visualization. This needs to be considered when looking at research to find out how and when animation can reduce the transition cost. One useful overview has been proposed by Chevalier et al. [@Chevalier-16:animations25]

## Purpose of animation

The authors identify 23 different purposes for animation in visualization, which they group into five categories: *Keeping in context*, *Teaching aid*, *User experience*, *Data encoding* and *Visual discourse*.

In all the presented cases animation is used for "a transition between two states". But only about half of them transition between *informationally distinct states* which is the kind of transition we are interested in.

![The purposes of animation found by Chevalier et al. [@Chevalier:2014] can be distinguished into an animation that transitions between informationally distinct states and others. Both categories capitalize on different strengths of animation.](/Users/jonas/Desktop/P9/bericht/img/animation-uses.png)

This observation couples well with the four strengths of animation presented in Heer et al.[@Heer-07:animatedtransitions]: animation facilitates *object constancy* (keeping context), communicates *causality* and *intentionality*, easily *attracts attention* and that it is *engaging*. "Hooking the user" for example exploits animation for its potential to engage. When using animation to "illustrate an algorithm", its strength to communicate causality is employed.

Although we do not consider animation for its strengths to *attract attention* and to *engage*, they will be present in all uses of animation.[@Chevalier-14:notsostaggeringeffect] This can make it hard to differentiate between effects. Readers might, for example, confuse higher engagement with better understanding [@Baudisch-06:phosphorexplaining] This confusion poses also a risk of designers of animated transitions as they might not be able to rely on their perception as to how effective an animated transition is. The power of animation to *attract attention* might distract the reader from the important parts of a transition, or the readers might change their goal from understanding what is being conveyed to simply enjoying the animation.[@Fischer-10:comprehendinganimations] These effects will be further discussed in the [section on "apprehension"](#Apprehension).

Finally, animated transitions might contain information that is not easily deducible from the two states alone, resulting in an unfair comparison between animated and not animated transitions. Tversky et al. [@Tversky-02:animationcan, p. 251] found in their review of existing research, that many studies included unfair comparisons that showed additional information in the animation scenario, they conclude:

> Showing that students learn material better when it is presented than when it is not presented should not be a goal of empirical research.

Fair comparisons, in contrast, need to identify "informationally distinct" states very clearly and show them not just in the animated scenario but also in all the scenarios they are compared to. The authors find that in these experiments, the purported benefits of animation often fail to materialize.



## Congruence

![Congruence as defined by Tversky et al. [@Tversky:2002] means that the representation should correspond to the concepts that are conveyed. Apprehension means that the representation should be accurately perceived.](/Users/jonas/Desktop/P9/bericht/img/congruence-apprehension.png)

The question if animation is fit for a certain type of comparison has been described as the principle of *congruence* in  [@Tversky-02:animationcan, p. 247]:

> Effective graphics conform to the Congruence Principle according to which the content and format of the graphic should correspond to the content and format of the concepts to be conveyed.

Congruence is closely related to the idea of *object constancy* [@Wu-16:graphicalperception] that describes the ability two identify the objects as being the same entity between two states. Animation has been shown to help with *object constancy* for different types of transitions:

*Spatial transitions*: For cases where readers see only a part of a larger surface and can navigate to different locations on this surface, animation has proven to be beneficial in general. This is for example employed when navigating large maps on a screen. Readers perceive connections as well as the larger structure more readily when the transitions are animated. [@Shanmugasundaram-07:cansmooth]

*Temporal transitions*: When showing the evolution of a network over time, animated transitions led to a reduced cognitive load compared to labeled transitions.[@Bach-14:graphdiariesanimated] In other studies, animation did not always outperform static transitions though [@Tversky-02:animationcan], naming a lack of *apprehension* as the potential reason.

*Granularity transitions*: Animation has also shown to help with object constancy when zooming in and out of visualizations. [@Shanmugasundaram-08:effectanimated]

*Causal transitions*: In one experiment, Bétrancourt et al. [@Betrancourt-08:displaykey] tested the effectiveness of animated transitions to establish causal relationships. They tested retention and transfer learning of participants on a story about the formation of lightning. Participants who saw the animated transitions significantly outperformed those who saw a static slideshow with the same narration.

*Rotating dimension walk*: Ruchikachorn et al. found that animation helped establish object constancy when a known visualization idiom was transformed into an unknown idiom. [@Ruchikachorn-15:learningvisualizations] Going for example from a linear chart to a spiral.

The above is a very special case, where the information presented does not change between the two states. It is therefore not clear if the benefits would apply to more typical cases of *dimension walks*. Heer et al.  [@Heer-07:animatedtransitions, p. 1240] even warn that it is easy to misuse object constancy in such scenarios:

> Object constancy can be abused if an object is transformed into a completely unrelated object, establishing a false relation.



### Character following

They also note a note a set of problems for animating transitions between states that have different axes, namely *dimension walk*, *causal* and *dialogue*-transitions. They argue that interpolating between states with different coordinate systems will produce visualizations that do not represent actual information. It would, therefore, be incongruent with the data.

We believe that congruence can be re-established when transitions are designed in a way that can be interpreted like this: One or many characters move from the original state and its reference frame to the final state and its reference frame. We call this *character following*.

Even when the use of animated transitions is congruent as in the above cases, it may still fail to provide benefits over static transitions because of a lack of *apprehension*. [@Tversky-02:animationcan]



## Apprehension

Tversky et al. describe the apprehension principle like this [@Tversky-02:animationcan, p. 247]:

> … graphics should be accurately perceived and appropriately conceived.

Heer et al.[@Heer-07:animatedtransitions] define six design principles for animated transitions to improve apprehension: *similar transforms should be grouped*; *trajectories should be predictable*; *transformations* should be *simple*; to simplify complex transformations, *staging* should be used and the transition duration should be *long enough* to follow (but not longer). Although these principles seem to make sense intuitively, research on visual perception has shown to produce unintuitive results. On example is the research on visual tracking which is essential for establishing *object constancy*. Also, other propositions, like *staggered transitions*, need to be looked at closely to understand how to balance their strengths and weaknesses.

### Visual tracking

Research on visual tracking explores how people track objects when the objects are moving. Participants typically have to track the position of several individual objects (circles or rectangles) or of a group of objects under different conditions. These experiments have revealed several, sometimes surprising, properties of the human perception:

*Animation speed*: Higher animation speeds do not strongly influence tracking ability. [@Franconeri:2010ela]    

*Distance traveled*: Longer distances traveled make objects harder to track [@Franconeri:2010ela]    

*Number of objects*: In typical situations, four objects can be tracked in parallel.  [@Yantis:1992]

*Unpredictable paths*: Have only a minimal impact on tracking performance. [@Chevalier:2014]

*Occlusion*: Doesn't impair tracking when it can be interpreted as "one object disappears" behind another [@Scholl:1999]

*Crowding*: When objects that need to be tracked get close to each other, tracking performance is impaired. [@Chevalier:2014]

*Multiple objects are tracked as one convex area*: Deformation of this area as well as distractors entering the convex area lead to impaired tracking performance. [@Yantis:1992], [@Chevalier:2014]

The last point also illustrates an important distinction in visual tracking tasks. Results are often different for cases where the identity of single objects needs to be tracked (*identity tracking*) or when a group of objects needs to be tracked (*group tracking*). In the example above, *group tracking* is worse when distractors enter the convex area formed by the objects of the group. *Identity tracking*, on the other hand, gets better in this case. [@Chevalier:2014]





[@Yantis-92:multielementvisuala], [@Hasler-07:learnercontrol]



### Staggered animation

![In staggered animation, some objects start to animate only with a delay. ](/Users/jonas/Desktop/P9/bericht/img/staggering.png)

Staggered animation delays the start time animations incrementally for some objects. An example: out of 7 objects, 4 will start to move right away, 3 other objects will start to move only a bit later. The delay between the starts is called *dwell*. A dwell of zero means no staggering.

Staggered animation has been proposed to *reduce occlusion* as well as *complexity* during animation and therefore lead to a higher tracking performance but [@Heer:2007] the effect has been shown to be negligible. [@Chevalier:2014]

### Staged animation

Staged animation splits complex animations between multiple visual variables into stages. An animation the interpolates between positions as well as between two colors, might, for example, be split into two animation stages. One where the objects move from position a to position b. Another, where they change color.

Heer et al. explicitly recommend the use of staged animation [@Heer:2007] even though they found only modest benefits. In situations where staging led to complex and long animations, the authors found it even detrimental for tracking performance.

### Animation duration

Multiple authors observe that the duration of animation has a major impact on perception. [@Shanmugasundaram:2007] Animation that is too slow has been shown to be strongly disliked by readers.[@Baudisch:2006] Others argue that very fast animation might lead to higher error rates [@Heer:2007]. Interestingly, others have shown that in situations where the distances between objects remained large enough during animation, higher speeds had no effect on tracking performance. [@Franconeri:2010ela] Other authors observe that faster animations might have the benefit of reducing *change blindness*. [@Fischer:2010iw], [@Shanmugasundaram:2008]

### Direct manipulation

Readers typically perform better at recall and problem solving, when they can control animation themselves. Multiple authors have shown this for cases where readers could start and stop animated transitions [@Chan:2005vx],[@Hasler:2007]. But here too, it is hard to separate different effects. Tversky et al. point out, that interaction has been shown to benefit learning in itself and just happens to be coupled with animation often. [@Tversky:2002]

### Easing

John Lasseter in his classic paper on the principles of computer animation describes that animators developed a preference for "slow-in-slow-out" over linear easing over time. This recommendation has been confirmed in more formal experiments. [@Dragicevic:2012]

Most of these examples show how perceptual properties, which are often not intuitive in their most basic forms, interact to form phenomena which are very hard to generalize in real-world applications.





## Effect of animation

Better learning on concrete representations. No difference on abstract representation. [@Berney-16:doesanimation]



# Transition techniques

None of the classifications described in the section >>Transitions are based on how readers make sense of transitions by comparing targets (see >>Comparison). They are either very much concerned with the technical aspects of a transition or with the semantic aspects. We therefore propose another view which is on one hand based on a simplified model of how readers make sense of transitions and on the other hand on a review of transition techniques that can be found in narrative visualization.

## A simplified model of how readers perceive transitions

We argue that readers extract information from a transition based on a comparison of the initial and the final state. As discussed in section >>Comparison, readers first identify a target in on of the states. Then they try to locate the matching target in the other state. When a relationship is thus identified, it is further analyzed.

In any visualization there are three distinct types of targets, we will call them *characters*, *attributes* and *context.*

**Characters**: A character is an identifiable and nameable visual entity in the chart. It can be a dot, a line or any other shape. In visualization these entities are very often identified by one or more independent, categorical variables. For example countries, genders, age groups, etc. Even though this definition might seem abstract at first, it is in most cases very easy to identify in narrative visualization. That is because the narrative will typically talk about them.

Characters can also be grouped into a unifying character. Switzerland, Italy and France could form the group *European countries* while Japan, China and Korea might be combined into *Asian countries*.

**Attributes**: Is used to describe all the other independent variables as well as all dependent variables. Attributes are showing different aspects of the characters. Country-characters can have population numbers over time. Gender-characters might have differing PISA-test success rates or might marry at at different ages.

**Context**: The context of the whole state is often not depicted in the chart. Often it is given in the title or in the text. A state might for example show the PISA-test success rates for a certain revision of the PISA-test or give country statistics according to a certain source. 

This classification roughly mirror Cohn's [@Cohn-10:limitstime] categories of *subject*, *scene*, *time*. Based on his work and our own observation we think that there is also a hierarchy in our proposed categories. Readers will first identify the characters in a state and look for the corresponding characters in the following state. If they find them and they visually differ between the states, the reader will look for reasons. At first the reader will assume that a different attribute of the character is shown. She will therefore check the axes. If they conclude that the changing appearance of the character is not due to different attributes being shown they will assume that a change of context has happened.



## Method

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

Where there is splitting, there needs to be merging. But merging is conceptually more complicated than splitting. Splitting shows more information in the second chart while merging summarizes information from the first chart. In the second case it is much more important for the reader to understand the summary operation. Is the new character the mean, the sum or even the difference of the characters previously seen? Both examples in figure \ref{technique-merge} illustrate this problem very well. Visually, the natural factors presented in the second chart could very well be the mean of volcanic, solar and orbital change. But it's actually the sum. In the second example, the pink bars might well represent the sum of the dots on the left but it's actually the difference. (TODO:paper on this topic)

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



### Contrast contexts

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

The strength of viewing transitions in terms of characters and their attributes is that they can directly be related to the concept of *object constancy*. As discussed in section TODO, object constancy is a the central concept from visualization perception research when it comes to transitions and especially animated transitions.

In cases where animation helps with object constancy, it should reduce the transition cost. This is the case for *exploring character attributes*, *reconfigure*, *split characters*, *merge characters*, and *contrasting contexts*. In short, whenever a character is present in both states but its shape changes.

To check whether this hypothesis is true is the main concern of the proposed experiment which will be described hereafter.



## Experiment

### Overview

In the experiment, each participant is shown two narrative visualizations, *mortality* and *energy*, each consisting of four transitions.  One of the narrative visualization was shown to the participant with *animated transitions*. The other narrative with what we have called *static transitions* where one chart is simply replace with the other. We will briefly present them and after that explain the design decisions that have led to them.

#### Mortality

![mortality-demographics](/Users/jonas/Desktop/P9/bericht/img/mortality-demographics.png)

The first transition in the mortality narrative moves the reader through a semantic field. It begins with a chart showing how the population has gotten older over time. The following chart shows how the mortality rates of both genders have been reduced drastically over the same period of time. The transition conveys how reducing mortality rate leads to an aging population.

The transition is animated by merging all the age groups into the grey "Everyone"-line and shows the lines for men and women subsequently.

![mortality-absolute](/Users/jonas/Desktop/P9/bericht/img/mortality-absolute.png)

The second transition contrasts the mortality rate of different characters. It starts with the last chart from the previous transition showing the mean mortality rates for men, women and everyone. This is contrasted to the evolution of the mortality rates of different age groups. From this transition, the reader can see that the mortality rate is dominated (unsurprisingly) by elderly people. An apparent slowdown in mortality rate reduction in the first chart is therefore mostly due to to the development in the "Over 84" group.



![mortality-relative](/Users/jonas/Desktop/P9/bericht/img/mortality-relative.png)

This point is reinforced in the third transitions. It picks up the last chart from the previous transition and normalizes the y-axis so that the mortality rate of each age groups starts 100% in 1968. The evolution is then shown relative to this starting point. It becomes apparent that, even though in absolute numbers the reductions have mainly benefitted the elderly, younger age groups have made the most significant progress. This transition is animated by morphing the line of each character into its new shape.

![mortality-causes](/Users/jonas/Desktop/P9/bericht/img/mortality-causes.png)

The final transition in mortality splits the "25–44" year old age group by their causes of death and changes the y-axis from the relative mortality rate to the total number of deaths. This helps explain the strange peak for this age group between 1985 and 1995 and shows that it's due to the AIDS-epidemic in the same time. The animation first hides all the other age groups, splits the "25–44"-line and morphs them into the different age groups.

#### Energy

![energy-A](/Users/jonas/Desktop/P9/bericht/img/energy-A.png)

The energy story starts by showing the evolution of different means of energy production in the U.S. In the second chart the y-axis is reconfigured to show the contribution each energy source had to total energy production. From comparing the two charts it becomes clear that while the output has risen for each source, the energy mix is significantly changed over the years with greener sources on the rise. The animated transition morphs the lines into their respective areas in the second chart.

![energy-B](/Users/jonas/Desktop/P9/bericht/img/energy-B.png)

As in the mortality narrative, the second transition starts out with the last chart from the previous transition. It splits the mean of wind energy by state to show how differently this source has evolved depending on the place to show how differently wind energy has evolved depending on location. It shows that while wind energy might be a small contributor to total U.S. energy production it is a major source of energy in certain (great plains) states. The animation first hides everything except the area for "wind" which is then split and morphed into the lines of the individual states.



![energy-C](/Users/jonas/Desktop/P9/bericht/img/energy-C.png)

The third transition focuses on the strange decline of wind energy in California after 2013. The second chart therefore shows the proportions of the other energy sources. A marked rise in solar power after 2013 implies that the state has decided to invest in this renewable instead of wind. The animation first highlights California and then expands it into the other sources.



![energy-D](/Users/jonas/Desktop/P9/bericht/img/energy-D.png)

Finally, this transition explores one of the possible reasons for Californias decision to focus on solar energy from 2013 on. While wind energy has been consistently inexpensive, the price of solar power has fallen substantially over time. It even reached the price level of wind energy in 2013. The animation morphs the areas representing the share of different energy sources into the line showing its price evolution.



### Design

#### Introduction

There is a fundamental tension when researching visualization design techniques like animated transitions. On one hand, quantitative research tries to remove every possible confounder when doing experiments. On the other hand it's precisely the interplay between different variables that make effective visualization designs. 

![experiment-conflict](/Users/jonas/Desktop/P9/bericht/img/experiment-conflict.png)

Obviously this mirrors the fundamental difference between disciplines that use quantitative methods and those where only qualitative methods can sensibly by applied. Both cases can be found in the visualization literature. Placed on the left side of the spectrum, research on visual perception like Franconeri et al.'s work on object tracking [@Franconeri-10:trackingmultiple]. On the other end of the spectrum, new design approaches to, for example, compare phylogenetic trees[@Munzner-03:treejuxtaposerscalable], can only be properly evaluated in context through qualitative usability studies. We have decided to situate our study somewhere in the middle between these two poles for two reasons: First, the study aims at providing generalizable insight. Second, the topic researched, namely narrative visualization, is high context as readers can only make sense of transitions in context (see >>Comparison).



### Measure

One of the biggest questions then is how to measure if object constancy is higher and if so, what it's effect on the interpretation of a transition will be. We propose multiple measures for this.

**Relationship**: When the perception of object constancy of the characters is better, we presume that it would be more obvious to readers that they are related in some way. In our experiment we have asked them after seeing both states what they concluded from them. If they mentioned any kind of relationship between the two states, we coded this as 1, otherwise as 0.

**Number of transitions**: If animation supports object constancy, the number of transitions needed to identify the targets in both states should be less when the transition is animated. 

**Correct relationship**: We also checked in their answers, if their conclusions were what the author intended. This was most interesting for transitions that included highlighting or splitting. Presumably, this should focus the reader on the character the author intended and lead readers to interpret the relationship the way the author intended.

**Number of characters mentioned**: Along similar lines, we assumed that readers who saw the animated transitions would be more focused on certain characters as animation would have cued them.

**Causal relationship**: The literature suggests (TODO:Source), that animation implies causality. We measured therefore if the participants mentioned some sort of causal relationship between the two charts.

**Engagement**: The literature also suggests, that animated transitions create a higher engagement in readers. We have included ways to measure engagement via two proxies: *flow* and *number of words in the answer*. To measure flow we have used the short form of O'Brien et al. [@Obrien-18:practicalapproach] user engagement questionnaire (see annex).

**False memories**: In an earlier pilot, we hypothesized that the in-between states of a transition might interfere in the interpretation of the relationship by creating "false memories". This assumption was based on some remarks in the literature [@Heer-07:animatedtransitions] TODO:source. We tested this hypothesis by showing participants screenshots of real and in-between states of the transitions. We presumed that participants who hadn't seen the animations would notice that they saw them for the first time. This turned out not to be the case. A surprisingly large number of participants in the static condition, fell for these screenshots. We concluded that the visual memory of the charts was not as strong as we imagined and that they would therefore most probably not interfere with the understanding of the transition. (TODO:find data on that.)



 













