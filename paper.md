# Narrative visualization

## Explorative and explanative visualization

![Munzner[@munzner:14] uses the words "discover" for explorative and "present" for explanative visualization](/Users/jonas/Library/Application Support/typora-user-images/image-20190213162158465.png)

The focus of early visualization research has mostly been on *explorative visualization* as opposed to *explanative visualization*. Explorative visualization deals with three major constraints: *system resources* like memory and processing power, *display capacity* given for example by screen size and pixel density, and finally human *perceptual* and *cognitive* like preattentive mechanisms or working memory. Most of the research visualization is therefore concerned with maximizing information throughput regarding these limitations. [@munzner:14]

*Explorative* visualizations are targeted at researchers and help them *discover* new insights inside vast amounts of data. *Explanative* visualization, on the other hand, is used mainly for *presenting* information. [@munzner:14] The targeted audience are not specialists who will spend days, weeks or months with a given visualization, but a public who will only see it for a short amount of time. This leaves little room for learning the intricacies of a new idiom or to gain necessary topic knowledge necessary to correctly interpret complex visualizations. This new limitation has come to be known as "visualization literacy".[@Boy:2014],[@Lee:2017]

## Visualization literacy

Very little is known about how novices try to make sense of visualizations they are unfamiliar with. Lee et al. [@Lee:2015ij] show that most readers heavily rely on their topic knowledge to check if their ad-hoc interpretation of an unfamiliar visualization is correct.  When presenting unfamiliar material, it therefore often seems preferable to use well-known idioms like line charts or pie charts even if potentially more powerful idioms are available. Similar observations have been made regarding interactive visualizations in newspapers. [@Stabe:2016], [@Tse:2016] According to them, most readers don't take the time to explore complex and unfamiliar visualizations.

Exceptions exist, where very complex and creative visualizations seem to be liked by readers [@Lupi]. We hypothesize that these are probably due to a shift in the readers' goals. Instead of trying to understand the story, the readers now challenge themselves to understand the mechanics of the visualization. [@Manjoo:2013],  This would correspond to the third type of visualization, who are primarily *enjoyed* for their artistic appeal.[@munzner:14] 

Based on this observation, textbooks, and newspapers are typically rather conservative when using visualization, defaulting to well-known idioms. But recently, some authors have started to use storytelling techniques to progressively build topic knowledge and explain complex visualization idioms.[@Aisch:2017], [@Collins:2015], [@Anderson:2016vg] They have shown that teaching new visualization idioms by building on known ones can be successful [@Ruchikachorn:2015]

## Narrative visualization

This idea, of using storytelling techniques to introduce powerful visualization idioms to an audience with low visualization literacy, has led to the formation of a branch of research in *narrative visualization* [@Segel:2010uj], [@Hullman:2013], [@Satyanarayan:2014] Narrative visualization follows in many aspects the same principles as other, established means of storytelling. Multiple publications have explored the usage of these principles in the context of narrative visualization. Examples being videos [@Amini:2015], comics [@Bach:2016] or narrated sketching [@Lee:2013bq].

One particularity of narrative visualization is that it can be partially non-linear and explorative. Segel et al. [@Segel:2010uj] describe how exploration is integrated into the typically linear structure of storytelling. The *martini glass* structure starts with a sequence of states and leaves the reader to explore a visualization at the end. The *drill down*  structure starts with exploration until the reader chooses a topic and is led through a sub-story sequentially. Finally, the *interactive slideshow* is structured by an overarching sequence of states and integrates exploration at every step.

![The different structures of non-linear storytelling in narrative visualization described by Segel et al.[@Segel:2010uj]](/Users/jonas/Desktop/P9/bericht/img/storytelling structure.png)

Even though exploration is often a part of narrative visualization, it always contains one or many author-defined sequences of states that contain the major insights the author wants to convey. This intent to communicate a set story puts narrative visualization into the explanative visualization category. Its quality is therefore measured by the readers understanding of the story.

The ordering of states is highly relevant to understanding a story and scrambling it will lead worse comprehensibility and recall of the information [@Thorndyke:1977dd] This observation should be discouraging for including explorative aspects in narrative visualization which by their nature introduce non-linearity. We think the problem lies with the definition of a state. Just as the story of a movie is not changed by showing more of the scenery in one shot, the story of a narrative visualization is not changed by letting the reader explore details of the current state. A similar view is held by Hullman et al. who define a state as an "informationally distinct visual representation" [@Hullman:2013]; a definition to which we will also adhere to in this work.

![Terms used to describe different parts of a narrative visualization \label{Terms}](/Users/jonas/Desktop/P9/bericht/img/Terms.png)

The observation about the importance of sequence also implies that there is some information inherent in the ordering of states that is not present in the states themselves. The transition between the two states, therefore, carries implicit information that is essential to the understanding of the story. Transitions then are a basic element of narrative visualization and we will go on to present some of their properties in greater detail.

# Transitions

Transitioning from one state to another usually implies some sort of relationship between the two. Hullman et al. [@Hullman:2013] explored the different types of relationships that are typically present in narrative visualization.

## Transition types

In a review of 42 narrative visualizations, the authors identified six different transition types based on the relationship between the prior and successive state.

*Dialogue transitions*: A question is asked or implied in the prior state which is being answered in the successive state. For example, a state showing rising that organic farming is on the rise followed by a state showing areas where it is most prevalent.

*Causal transitions*: One state shows an effect and the next state presents the cause of the effect. For example, a state showing that the mortality rate was falling less recently and the next showing how the demographics have changed towards older people with higher mortality rates.

![Example of a measure walk and a granularity transition adapted from [@Hullman:2013] \ref{Measure walk}](/Users/jonas/Desktop/P9/bericht/img/MeasureWalk.png)

*Comparison transitions*: Either the measure or a dimension is being changed in the successive state. The transition is called a *measure walk* when the measure is being changed. For example, showing a map of the impact of climate change on flooding risk in the prior state and showing the impact on crop shortage in the successive as illustrated in figure \ref{Measure walk}. This is like showing a different character in the same setting in a movie.  

When the dimension changes between states, the transition is called a *dimension walk*. For example, when one state shows the measure "SAT score" for men and the next one shows the same "SAT score" for women. We argue that there are two conceptually different types of dimension walks. The first moves along one dimension, "gender" in the example above. The second interchanges one dimension for another. We call these "translating dimension walk" and "rotating dimension walk", reflecting the image of navigating through a hypercube. In our movie analogy, we would say that the dimension walk changes the setting. And while the rotating dimension walk would show the same character in a different setting, the translating dimension walk is akin to a camera moving through an environment for example.

![The two types of dimension walk are based on the distinction between moving along a dimension and interchanging one dimension with another](/Users/jonas/Desktop/P9/bericht/img/Dimension walk.png)

This last analogy hints at two very common special cases of *translating dimension walk* transitions which are mentioned independently by Hullman et al.: *Spatial*- and *temporal transitions*. A spatial transition moves along spatial dimensions, for example when panning a map. A temporal transition moves along the time axis, for example when showing how popular certain brands were in different decades.

Finally, *granularity transitions*: The amount of detail that is being shown changes between two states. On very common application is when zooming in on a visualization, as shown in figure \ref{Measure walk}.

We have found that their observations map generally well to what other researchers have found for animated transitions [@Heer:2007], for transitions based on user interaction [@Yi:2007] as well as panel transitions in comics.[@McCloud:1993]. 

![Four different but quite compatible taxonomies for characterizing transitions](/Users/jonas/Desktop/P9/bericht/img/Taxonomies.png)

Hullman et al. also found that, at a fundamental level, some transition types could be inferred purely from the information present in the two states and others not. They call the first group *implicit transitions* and the second group *explicit transitions*. Implicit transitions can be seen as a change in visualization parameters as shown in the examples in figures \ref{Measure walk} and \ref{Dimension walk}. Explicit transition types, on the other hand, need the context of a narrative to be understandable.  A finding that is confirmed by the absence of explicit transition types in Heer et al. [@Heer:2007] and Yi et al. [@Yi:2007] who are concerned with narrative.

It is important to note, that a transition can be a combination of more than one of these types. A prior state might for example show tree cover in Switzerland in 1900 and the successive state tree cover in Germany in 2000. This transition would combine a temporal and a spatial transition. But Hullman et al. found that for all *implicit transitions* readers did strongly prefer simpler transitions.



## Transition cost

By "simple transitions" the authors describe transitions were few things change. They, therefore, call the rate of change the *transition cost*. The transition cost is calculated by summing the following numbers:

* How many independent variables have changed?
* Has the dependent variable changed?
* By how many levels has the granularity changed?

When using this definition, the authors found that readers strongly preferred transitions with a cost of one. Transitions with costs that were higher, e. g. two or three were judged as equally undesirable. Even though the definition is not very precise yet, the finding indicates that the transition cost might be a measure to evaluate if a given transition needs to be simplified; for example, by adding another state in between. There are many similarities between the concept of transition cost and the more general concept of *cognitive load*. [@Wong:2012dl]



### Reducing the transition cost

In addition to reducing the rate of change, there are other means to reduce the transition cost. *Narration* is commonly used to guide the reader's attention to a specific relationship between two states  [@Aisch:2017], [@Collins:2015], [@Anderson:2016vg].

Different authors have tried to use *animation* to reduce cognitive load [@Zongker:2003],  [@Betrancourt:2008] with mixed results. Although the use of animation for transitions is generally met with great enthusiasm by readers [@Heer:2007], there is still much unclarity regarding its effect on understanding and about how well it fares against other means for easing the transition cost. One experiment, for example, has shown that *symbols* were equally effective in establishing a causal relationship as animation.[@Kadaba:2007jpa] Others have found animation very effective in communicating spatial [@Shanmugasundaram:2007] and granularity transitions [@Shanmugasundaram:2008]. Narration, on the other hand, might be the most efficient when establishing dialogue transitions. The effectiveness of different means might, therefore, be closely related to the transition type. 

Especially for animation, there are also perceptual constraints to consider. Ignoring these can even lead to an increase in transition cost. [@Heer:2007] Tversky et al. conclude that there are two factors that would need to be considered when designing effective transition animations: *congruence* and *apprehension*.

# Animation

Animation has been used for very different purposes in information visualization. This needs to be considered when looking at research to find out how and when animation can reduce the transition cost. One useful overview has been proposed by Chevalier et al. [@Chevalier:2016]

## Purpose of animation

The authors identify 23 different purposes for animation in visualization, which they group into five categories: *Keeping in context*, *Teaching aid*, *User experience*, *Data encoding* and *Visual discourse*.

In all the presented cases animation is used for "a transition between two states". But only about half of them transition between *informationally distinct states* which is the kind of transition we are interested in.

![The purposes of animation found by Chevalier et al. [@Chevalier:2014] can be distinguished into an animation that transitions between informationally distinct states and others. Both categories capitalize on different strengths of animation.](/Users/jonas/Desktop/P9/bericht/img/animation-uses.png)

This observation couples well with the four strengths of animation presented in Heer et al.[@Heer:2007]: animation facilitates *object constancy* (keeping context), communicates *causality* and *intentionality*, easily *attracts attention* and that it is *engaging*. "Hooking the user" for example exploits animation for its potential to engage. When using animation to "illustrate an algorithm", its strength to communicate causality is employed.

Although we do not consider animation for its strengths to *attract attention* and to *engage*, they will be present in all uses of animation.[@Chevalier:2014] This can make it hard to differentiate between effects. Readers might, for example, confuse higher engagement with better understanding [@Baudisch:2006] This confusion poses also a risk of designers of animated transitions as they might not be able to rely on their perception as to how effective an animated transition is. The power of animation to *attract attention* might distract the reader from the important parts of a transition, or the readers might change their goal from understanding what is being conveyed to simply enjoying the animation. [@Fischer:2010iw] These effects will be further discussed in the [section on "apprehension"](#Apprehension).

Finally, animated transitions might contain information that is not easily deducible from the two states alone, resulting in an unfair comparison between animated and not animated transitions. Tversky et al. [@Tversky:2002] found in their review of existing research, that many studies included unfair comparisons that showed additional information in the animation scenario, they conclude:

> Showing that students learn material better when it is presented than when it is not presented should not be a goal of empirical research.

Fair comparisons, in contrast, need to identify "informationally distinct" states very clearly and show them not just in the animated scenario but also in all the scenarios they are compared to. The authors find that in these experiments, the purported benefits of animation often fail to materialize.



## Congruence

![Congruence as defined by Tversky et al. [@Tversky:2002] means that the representation should correspond to the concepts that are conveyed. Apprehension means that the representation should be accurately perceived.](/Users/jonas/Desktop/P9/bericht/img/congruence-apprehension.png)

The question if animation is fit for a certain type of comparison has been described as the principle of *congruence* in  [@Tversky:2002, p. 247]:

> Effective graphics conform to the Congruence Principle according to which the content and format of the graphic should correspond to the content and format of the concepts to be conveyed.

Congruence is closely related to the idea of *object constancy* [@Wu:2016wr] that describes the ability two identify the objects as being the same entity between two states. Animation has been shown to help with *object constancy* for different types of transitions:

*Spatial transitions*: For cases where readers see only a part of a larger surface and can navigate to different locations on this surface, animation has proven to be beneficial in general. This is for example employed when navigating large maps on a screen. Readers perceive connections as well as the larger structure more readily when the transitions are animated. [@Shanmugasundaram:2007]

*Temporal transitions*: When showing the evolution of a network over time, animated transitions led to a reduced cognitive load compared to labeled transitions. [@Bach:2014] In other studies, animation did not always outperform static transitions though [@Tversky:2002], naming a lack of *apprehension* as the potential reason.

*Granularity transitions*: Animation has also shown to help with object constancy when zooming in and out of visualizations. [@Shanmugasundaram:2008]

*Causal transitions*: In one experiment, Bétrancourt et al. [@Betrancourt:2008] tested the effectiveness of animated transitions to establish causal relationships. They tested retention and transfer learning of participants on a story about the formation of lightning. Participants who saw the animated transitions significantly outperformed those who saw a static slideshow with the same narration.

*Rotating dimension walk*: Ruchikachorn et al. found that animation helped establish object constancy when a known visualization idiom was transformed into an unknown idiom. [@Ruchikachorn:2015] Going for example from a linear chart to a spiral.

The above is a very special case, where the information presented does not change between the two states. It is therefore not clear if the benefits would apply to more typical cases of *dimension walks*. Heer et al.  [@Heer:2007, p. 1240] even warn that it is easy to misuse object constancy in such scenarios:

> Object constancy can be abused if an object is transformed into a completely unrelated object, establishing a false relation.

### Character following

They also note a note a set of problems for animating transitions between states that have different axes, namely *dimension walk*, *causal* and *dialogue*-transitions. They argue that interpolating between states with different coordinate systems will produce visualizations that do not represent actual information. It would, therefore, be incongruent with the data.

We believe that congruence can be re-established when transitions are designed in a way that can be interpreted like this: One or many characters move from the original state and its reference frame to the final state and its reference frame. We call this *character following*.

Even when the use of animated transitions is congruent as in the above cases, it may still fail to provide benefits over static transitions because of a lack of *apprehension*. [@Tversky:2002]



## Apprehension

Tversky et al. describe the apprehension principle like this  [@Tversky:2002, p. 247]:

> … graphics should be accurately perceived and appropriately conceived.

Heer et al.[@Heer:2007] define six design principles for animated transitions to improve apprehension: *similar transforms should be grouped*; *trajectories should be predictable*; *transformations* should be *simple*; to simplify complex transformations, *staging* should be used and the transition duration should be *long enough* to follow (but not longer). Although these principles seem to make sense intuitively, research on visual perception has shown to produce unintuitive results. On example is the research on visual tracking which is essential for establishing *object constancy*. Also, other propositions, like *staggered transitions*, need to be looked at closely to understand how to balance their strengths and weaknesses.

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



# Research questions

Based on this literature review, we continue to formulate gaps in the existing research in the form of research questions. Many of these research questions are concerned with finding out if a certain design principle is "better" than another under certain circumstances. To define what "better" means then is fundamental when specifying how to test different designs. However, this lies outside of the scope of expertise of the author. The corresponding part in the methodology sections will, therefore, contain a placeholder ("*better*").



## Transition cost

Hullman et al. mention in their paper [@Hullman:2013] that it is often difficult to precisely separate between informationally distinct states. They also note that it is in some cases difficult to precisely attribute a transition cost. For example, in granularity transitions where it is not clear what step size would represent a transition cost of one. It is even more difficult for the two *explicit transition types* as these are highly linked to the content that is being communicated.

These two concepts are potentially important in the design of experiments. Identifying when two states are *informationally distinct* and when not, helps to avoid unfair comparisons. The transition cost should be linked to the concept of cognitive load and might help to predict if a transition is difficult for a reader to understand.



## Discretization

Many authors find that animation is more engaging than static displays [@Fischer:2010iw], [@Heer:2007] They also find, that readers who saw animated transitions perform better on metrics like understanding and transferable knowledge. Others have argued that this is only the case for scenarios where animation gives additional information or because it involves interaction. [@Tversky:2002] It is even likely that animation might be perceived as a series of discrete steps. It is therefore still unclear, where exactly the benefits of animation might come from.

We hypothesize that people who saw an animated transition would not outperform people who saw a static transition that showed an equal amount of information and contained an equal amount of interaction. This question is related to the question about how an "informationally distinct state" should be defined.

*Methodology*: Show a series of narrative visualizations consisting of two states and a transition to participants.  For group *A*, present animated transitions between superposed states. The transition should be completely controllable through scrolling. For group *B*, show a juxtaposed version of the two states with a certain number of images representing interpolations between them. Split group *B* into subgroups according to the number of interpolated images between the states. Make the distance each group needs to scroll to move from the initial state to the final state is equal. Test if there is an ideal number of interpolations in group *B* and if group a performs better than the subgroup in *B*  who has seen the ideal number of interpolations.



## False memories

Because animated transitions might be perceived as discrete steps, [@Tversky:2002] we hypothesize that readers who see animations may remember these steps and misinterpret them as representations of real data. Heer et al. [@Heer:2007] consider this a risk too and therefore recommend to "maintain valid data graphics during transitions". This question is related to the question on "discretization".

*Methodology*: Show a series of narrative visualizations consisting of two states and a transition to participants. For group *A*, show an animated transition between the two states. For group *B*, do not animate the transition. At the end, show a series of screenshots to the participants and ask them if they represent real data or not. Some screenshots show interpolations and other real data. Evaluate if group *A* will interpret the interpolations as "real data" significantly more often than group *B*.



## Transitions between different coordinate systems

In *rotating dimension walk*-transitions as well as in *measure walk* transitions, the coordinate system changes between two states. Heer et al. [@Heer:2007] argue that it would be incongruent to interpolate axes as well as marks in such transitions and therefore discourage the use of animation in these situations.

We hypothesize that *character following* would make animation congruent for these types of transitions. Marks might be understood as characters moving from one setting (coordinate-system) to another. If seen like this, animating marks might be congruent while interpolating axis would still be confusing. This leads to a hypothesis-matrix presenting the expected performance of combinations of animated and non-animated elements.

![Hypothesis on how dimension walk transitions will perform based on what is animated and what not](/Users/jonas/Desktop/P9/bericht/img/hypothesis-matrix.png)

*Methodology*: Show a series of narrative visualizations consisting of two states and a transition to participants. For group *A* do not animate the transition at all. For group *B* interpolate the axes. For group *C*, interpolate marks but not axes. And for group *D*, interpolate marks and axes. Test if participants in group *A* and *C* perform *better* than participants in group *B* and worse than participants in group *D*.



## Superposition vs. juxtaposition

The primary means of using animated transitions in narrative visualization is by transforming one state into another one "in-place" as seen in this example [@Aisch:2017] We call this superposed animation.[@Gleicher:2011] This works well for some *spatial–* [@Shanmugasundaram:2007]  and g*ranularity transitions*.[@Shanmugasundaram:2008] But it poses might pose difficulties for transitions where the coordinate system changes [@Heer:2007] like *rotating dimension walk transitions* or the two *explicit transition types*.

Our hypothesis is, that the lack of congruence can be overcome by placing the initial state and the target state spatially apart. We presume that the spatial separation between the states would imply different coordinate systems. Animation could then be used on the marks in the sense of *character following*. We call this *juxtaposed animated*. 

*Methodology*: Show a series of narrative visualizations consisting of two states and a transition to participants.  For group *A*, present transitions between superposed visualizations. For group *B*, show animated transitions between juxtaposed visualizations. Test if participants in group *B* perform better than participants in group *A*.



## Controlling the animation speed

Multiple authors [@Shanmugasundaram:2007],[@Baudisch:2006] mention the difficulty of finding the right duration for animated transitions. Some authors have found, that controlling animations with pause/play button has a positive impact on learning  [@Chan:2005vx],[@Hasler:2007]

Our hypothesis is, that readers will perform *better* when they can freely control the animation through scrolling.

*Methodology*: Show a series of narrative visualizations consisting of two states and a transition to participants. The transition between the two visualizations should be animated. For group *A*, the animation is triggered by scrolling to a predefined point. It then runs for a duration that has been predetermined based on usability testing. For group *B*, the animation is completely controllable through scrolling. Test if participants in group *B* perform *better* than the ones in group *A*.



# Design

![Screenshot of a mini-narrative in the juxtaposed-animated variant. The transition between the two visible states is a *dialogue transition* and their coordinate systems differ. On the bottom, the top of the questionnaire asking users about their interpretation of the transition is visible.](/Users/jonas/Desktop/P9/bericht/img/design.png)

## Exploration experiment

In a first phase, we decided to explore two of the above hypotheses ("false memories" and "juxtaposition vs. superposition") by implementing them in a concrete example. The implementation was aimed at providing a playground to quickly test promising hypotheses with a small number of participants. The results of this exploration should provide us with the necessary data to design more structured large-scale experiments.

*Setup:* We adapted an existing narrative visualization and built three mini-narratives consisting of only two states and one transition. All the mini-narratives were implemented as a juxtaposed and as a superposed variant. The juxtaposed variant places two states next to each other. The superposed variant places the states "on top" of each other and the reader can change between them by scrolling. For both variants, we created one version where the transition was not animated and one where the transition was animated. All the experiments are accessible through this website: [https://jonasoesch.ch/work/mortality](https://jonasoesch.ch/work/mortality/)

![The 12 scenarios resulting from the combination transition types, juxtaposed and superposed designs as well as animated and non-animated transitions](/Users/jonas/Desktop/P9/bericht/img/Scenarios.png)

*Tests*: During the tests in the exploration phase, participants will be split into four groups. Every group will see all of the mini-narratives in their given combination of juxtaposed or superposed and static or animated design which results in four groups. At the end of each mini-narrative, the participant needs to complete a questionnaire containing the following questions:  "In your opinion, what effect or relationship is shown in the data mini-story?"; "Which group did you pay the most attention to in this data mini-story?"; and "Overall, was this data mini-story shown in a visually nice way?". The first two questions provide a free-form text field while the last question lets the participant choose between "Yes" or "No" as a response.

After having seen all three visualizations, the participants are shown a selection of 20 screenshots. For each of them, they have to select if they contain real data from the mini-narratives they just have seen or not.

While reading the mini-narratives, the participant's scrolling behavior is being tracked and recorded. This should give us information about how long readers stayed on one mini-narrative and how they scrolled on the animated transitions. We suspect that scrolling behavior will differ between juxtaposed-animated and superposed-animated transitions.



## Story

The content and the visual design of the explorative experiment is derived from a Bloomberg story on the evolution of mortality in the U. S. [@Klein:2014]. The story is a prime example of narrative visualization and uses all of its components: it presents visualizations as an *interactive slideshow*[@Segel:2010uj], it contains several different *transition types* [@Hullman:2013] and uses animation to *support a narrative* [@Chevalier:2016]. It also is relatively light on text. This makes the story especially suitable to find out how transitions can communicate a relationship without additional narration. It is also relatively long and complex at 18 *informationally distinct states* and tells several sub-stories.

Most of the story explores aspects of a single dataset containing just four independent variables: *gender*, *time*, *age group* and *cause of death*. For different combinations of these variables, two dependent variables and derivations of these are being visualized: the *number of deaths* and *living population*. Derived variables are for example the *mortality rate* or the *share of living population*.

We set on this story after discussing the strengths and weaknesses of several other stories. A summary of these discussions can be found in the appendix.

## Design modifications

Some aspects of the original design were modified for three major reasons: modification was necessary to create an experiment that would correspond to one of the research questions, the original design violated a visualization design principle or informal usability testing revealed problems with the design. Informal usability testing was conducted by showing the design to readers who had not seen it before. We then asked them to read the story and tell us what they understood or where they experienced difficulties. 

Based on these three points, we have decided to modify the design of the original story in the following ways:

*Meaningful animation*: First of all, while the Bloomberg story contains animated transitions, they are mostly not used to communicate the relationship between two states. We changed this for our experiment so that it reflected the "character following"-paradigm.

*Labels*: Were moved closer to the marks they were describing. On one hand to make the design easier to read, on the other hand, to support the "character following"-paradigm. In some cases, the labels are being animated together with the marks which clarified how a "character" moved from one coordinate system to the next. The decision was tested and our assumptions confirmed through informal testing.

*Transition animations are controlled by scrolling*: In the original story, transitions are triggered by clicking. We hypothesize that controlling the animation would lead to *better* performance. The *scroll distance* for one transition was determined through informal testing to be at 500px per transition for superposed-animated designs and 800px for juxtaposed-animated designs.

![Comparing five different colour interpolation methods at three different points\label{interpolation}](/Users/jonas/Desktop/P9/bericht/img/Interpolation.png)

*Interpolation*: We implemented "slow-in-slow-out"-easing as recommended in [@Dragicevic:2012] for all interpolations. For interpolating between colors, we used a perceptually uniform HCL-interpolation because it "intuitively looks right".[@Sarifuddin:2005] Notice in figure \ref{interpolation} how RGB and LAB tend to desaturate while HSL and CubeHelix tend to oversaturate, HCL strikes a good balance.

*Staged animation*: For the dialogue transition, we implemented staged animation to first highlight the character that was being interpolated. Informal testing showed that otherwise, it was hard for readers to see which mark was interpolated from.

*Fixed dimensions*: The original visualizations adapted to the browser window size of the viewer. We set fixed dimensions to ensure that all participants would see the same screens. The size was fixed at 1280px × 720px. As per January 2019, about 83% of global desktop users have browser windows larger than that. [@DesktopScreenResol:vb] We filter out every participant with a smaller window size from the experiment.

*Axes start at zero*: Many of the axes did not start at zero. We adopted this because it is best practice in data visualization.[@Tufte:2001]

*Narrative removed and titles added*: As we wanted to find out how readers would perceive the relationship between visualizations based on animation, we removed the accompanying text. In exchange, we added a title to each visualization so that readers would be able to interpret what is shown.



## Critical review of the proposed experiment

The proposed experiment in its current state has a number of flaws:

*Missing baseline for judging the visual appeal of a story*: Every participant only sees one of the four designs (juxtaposed-static/animated or superposed-static/animated). Therefore, answers to the question "Overall, was this data mini-story shown in a visually nice way?" does not result in data that could help compare the visual appeal of one design over another (or only if there is a very large number of participants).

*Juxtaposed-static design is not interpretable*: It just shows two visualizations side-by-side without any information that hints at a relationship between the two. It is therefore hardly comparable to the other designs. The design should be used to test the hypothesis about "discretization" (see "Discretization" in the chapter on research questions).

*Scrolling to control animations*: There is no design that compares the currently implemented animations that are controlled through scrolling to designs where a pre-timed animation is simply triggered by scrolling (see "Controlling the animation speed" in the chapter on research questions).

*Interpolating axes*: Axes are being interpolated by default. An additional experiment should explore if axis-interpolation is confusing (see "Transitions between different coordinate systems" in the chapter on research questions.

*Wider variety of transition types*: The experiment only tests two different transition types: *measure walk* and *dialogue transition*. Other types should also be included in the exploration to gain a broader understanding of their properties.

*Compare different visual designs and stories*: Some findings in the exploration design might simply be due to the visual design or the story that was chosen. To control for this, the same experiments should be done on a different story with a different visual design to see if the findings are stable.



# A framework for creating animated transitions

Even though there exist many options for creating visualizations on the web [@Bostock:2011],[@Satyanarayan:2017], there are very few that focus on narrative visualization.[@Flourish:vh] Connecting multiple visualizations through different kinds of transitions is therefore often still implemented on a case-by-case basis [@Buchanan:2014], [@Aisch:2017] We suspect that one of the reasons for this is the desire of publishers to distinguish themselves through unique experiences.

Testing the effectiveness of different transitions, on the other hand, requires a certain stability in the way transitions work. We decided therefore to implement a framework that would simplify the creation of experiments which would also be comparable in the way they work. We based our implementation on prior work on creating reusable visualizations [@Bostock:2012] and on creating a declarative domain specific language for narrative visualizations [@Satyanarayan:2014].



## States

![A drawable visualization needs a name that defines where on the page it should be drawn. The draw-method will render it and it can be removed by calling the hide-method](/Users/jonas/Desktop/P9/bericht/img/states.png)







Each state is defined as a complete and independent visualization that can be displayed by calling a `draw()`-method. The `draw()`-method renders the visualization into the element on the page whose `id` matches its name.

The layout is therefore defined through HTML and CSS and visualizations rendered into their corresponding boxes adapting to their respective size and position. This basic behavior is ensured through the `Drawable`-interface.



![A schematic overview of how a simple visualization is composed and drawn. Many details have been left out for clarity.](/Users/jonas/Desktop/P9/bericht/img/visualization.png)



Other than implementing the `Drawable` interface, a visualization is characterized by the following attributes: it has a series of `Marks` which represent columns in the `Data`. Each mark has a `name` that links it to a corresponding column in the data. To draw a mark the visualization uses the `pathGenerator`-function with the corresponding data as well as `xScale` and `yScale`. `xScale` and `yScale` are also used to render the axes. Visualizations, as well as single marks, offer further configuration options like a graph `description` or the `color` of a mark (behold, the default is *pink*). Different types of visualizations are implemented by subclassing `Graph` or `Mark`.



## Transitions

![A MorphingGraph is a visualization that interpolates between two visualizations](/Users/jonas/Desktop/P9/bericht/img/MorphingGraph.png)

Transitions are `Drawable` visualizations themselves that interpolate between two given visualizations. A `MorphingGraph` interpolates between the *positions* of its `originGraph` and its `targetGraph`. It also interpolates between its `originScale` and its `targetScale`.

Analogous to how a regular `Graph` has a series of `Marks`, a  `MorphingGraph` has a series of `MorphingMarks`. These `MorphingMarks` interpolate between two given `Marks`. This structure makes transitions highly flexible. In many practical cases, it is not desirable to transition all the marks or to transition from one origin mark to many target marks. All of this is possible by defining the necessary mappings as `MorphingMarks`.

Before drawing a `MorphingMark`, the progress of the interpolation needs to be defined. This is done by prepending `atPoint()` as a chained method. At point takes a number between 0 and 1 as an argument to define the progress of the transition.



## Narrative

![What needs to be drawn at which scroll position can be defined in the `Directors` storyboard. It will then call `draw` and `hide` on the proper visualizations.](/Users/jonas/Desktop/P9/bericht/img/Director.png)





Finally, the narrative is defined through a so-called `Director`. It sets the sequence of states and transitions and defines the event that triggers drawing and hiding of states and transitions. In the current implementation, transitions are triggered and controlled by the readers scrolling. The director, therefore, implements a scroll listener that will call the `drawAll`-method and pass it the current scroll position. Based on the definitions in the `storyboard` the director calls either the `draw`- or `hide`-methods on the visualizations on the page.

With the described framework, also staged transitions can be implemented easily. This is by defining each stage as a separate visualization and creating separate transitions between them.



## Recording User Interaction with transitions



![The result of a session where a participant is reading a mini-story with the superposed-animated transition \label{Session}](/Users/jonas/Desktop/P9/bericht/img/Session.png)



The exploration experiment requires tracking the participants scrolling behavior. We decided to record the scroll-position relative to a specific transition instead of globally because this would more closely correspond to what a participant saw at a given moment. The position is recorded each time the `Director` calls the  `draw`-method on a `Graph`.  It records the following properties: a *timestamp*, the *name* of the `Graph` that is being drawn, the *position* in the interpolation, and the *window dimensions*. Additionally, the *URL*, a *user id* and a *session id* are stored to be able to correctly attribute the records during the analysis.

Recent records are periodically sent to a server and stored there as a CSV-file. Even when a participant does not interact with the page, an *alive*-record is regularly sent to the server to indicate that the participant still has the page open.

From this data, single sessions can be reconstructed and visualized as shown in figure \ref{Session}. Even the "slow-in-slow-out"-easing function is clearly visible from the recorded positions.



### Drawing performance

![The time \label{performance}](/Users/jonas/Desktop/P9/bericht/img/Drawing%20performance.png)

Through the recorded data, we were also able to have a first evaluation of the typical drawing performance of our implementation. We use `requestAnimationFrame` for each `drawAll`-call in the `Director` to avoid blocking the other calls and make the interface feel unresponsive. Figure \ref{performance} shows the time deltas between records over 90 sessions. From previous measurements, we suspect that deltas below 10ms do not represent situations where the browser did actually redraw a visualization. For time deltas above this threshold (and below an upper bound of 100ms) the mean time delta at 24 ms which represents a mean frame rate of about 40 frames per second.

All of the code can be found on the following url: [https://github.com/jonasoesch/mortality](https://github.com/jonasoesch/mortality)


# Outlook

We intend to adapt the exploration experiment according to some of the points discussed in the "Critical review of the proposed experiment". In parallel, we will conduct small runs of the exploration experiment to collect data that will guide us through these modifications. We hope that the exploration experiment will give us the information necessary to decide which research questions to pursue further and hints about how to design experiments that will lead to generalizable results. Our goal is to contribute recommendations on the design of transitions in narrative visualization based on these. 



# References

<div id="refs"></div>



# Appendix

## Commented Examples

The first step in our exploration was a critical review of some existing narrative visualizations and their use of animation. This section presents a summary of these discussions.

### Measuring a health law's success

![Showing the differences in the effectiveness of health laws in different countries. This visualization uses progressive disclosure as well as staggered animation.](/Users/jonas/Desktop/P9/bericht/img/health-law.png)

This visualization by the New York Times [@Buchanan:2014] uses progressive disclosure to show other nations compared to the U. S. and some select others. It then uses staggered animation to transition from the temporal chart to a histogram where the right axis is basically rotated by 90 degrees. It is difficult to track the objects and it takes multiple reviews to realize that the final x-axis is the prior right y-axis. Staggering doesn't help so much.



### Scientific Proof that Americans are Truck Addicts

![The visualization groups vehicles by different attributes. It uses animated transitions to show that the same cars are always present in every chart.](/Users/jonas/Desktop/P9/bericht/img/cars.png)

Bloomberg [@Pearce:2015] presents an analysis of the trends in vehicle sales as an animated narrative visualization. The story excels at presenting certain car models as distinct "characters" which are recognizable in every chart. The animation does not add information but helps when tracking a specific car model.

### Why Measles May Just Be Getting Started

![Zooming in on a bar chart is a clever way to handle wildly differing scales. The final bar chart is not even visible in the initial chart because it is so small](/Users/jonas/Desktop/P9/bericht/img/measles zoom.png)

Another Bloomberg story about the effect of vaccination [@Collins:2015]. Multiple animated transitions are used. The first is a zoom on a bar chart the shows just how much the cases of measles have been reduced since the introduction of vaccines. This is a *granularity transition* as per Hullman et al.'s taxonomy [@Hullman:2013]. The zoom transition is an elegant way to avoid using a log-scale. But it is a little bit too fast.

![The cases of measles change from a histogram on a timeline into a cartogram. The animation is rather busy but contains interesting additional information. For example, that the big outbreak in 2014 has mainly been due to cases in Ohio.](/Users/jonas/Desktop/P9/bericht/img/measles measure walk.png)

Another transition that is being used changes the bar chart into a cartogram. While the cases of measles were before ordered by time, they are now shown by place. This is an example of a *dimension walk*. In this case, the transition contains additional information that is not visible from the two states alone.



### How money wins elections

![The visualization shows the relation between the weight in voting power and the weight in funding power of rich individuals through a growing animation](/Users/jonas/Desktop/P9/bericht/img/funding.png)

For his thesis project, Tony Chu visualized the impact rich donors have on elections in the U. S [@Chu:2013].  Similar to the car story, animation ensures to keep the character of the "1%" distinct from the others. Animation is here mostly used for the dramatic effect of "growing large".

