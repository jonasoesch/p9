\newpage
\part{Reconceptualization of the theory}

# Perception-oriented classification {#sec:perception-oriented}

The discussion of the literature in the previous sections has shown that readers understand relationships by comparing targets in their working memory and that animation is more beneficial when it is applied to objects close to reality. It has also shown that none of the existing classifications could be used to link transition understanding to animation. This chapter, therefore, reconceptualizes the transition types seen in previous chapters so that it is explicit what the reader needs to compare. It also expresses the elements of comparison in terms of characters, attributes, and context to favor an interpretation that is closer to real-life concepts and should help to define congruent animations. This will lead to recommendations on how to use animation for the different transition types.

##  Core concepts {#sec:our-model}

The central element of the proposed re-conceptualization is the comparison target which will be called a character. The size of a character is defined by its attributes. Finally, the context is one of the factors that can make the relationship between characters more complex (compare to section [-@sec:comparison]).

### Characters ![](img/char.pdf)

A character is what we have called a *target* (@sec:comparison). In its simplest form, it takes up one slot in the readers' working memory. Characters are clearly distinguishable and nameable visual entities in the chart. It can be a dot, a line or any other mark. In visualization, these entities are very often identified by one or more independent, categorical variables. For example countries, genders, age groups, etc. Even though this definition might seem abstract at first, it is in most cases very easy to identify characters in narrative visualization. That is because the narrative will often explicitly identify them. But characters can also be identified implicitly and through visual statistics.

This indicates that characters are something that only truly exists in the reader's mind and can be dependent on existing knowledge. One example for this is, that multiple characters can be grouped into a unifying character. Switzerland, Italy, and France could form the group *European countries* while Japan, China, and Korea might be combined into *Asian countries*. Grouping is, therefore, one way to reduce the cognitive load by relying on long term memory.

### Attributes ![](img/attr.pdf)

Attributes define the shape of a character and therefore its complexity. Our classification uses the term to describe all the other variables encoded in the visualization in the form of position, size, shape, etc. Attributes are showing different aspects of the characters. Country-characters can have population numbers over time. Gender-characters might have differing PISA-test success rates or might marry at different ages.

### Context ![](img/ctxt.pdf)

Finally, many charts typically have a context. The situation shown might be for a certain year, for a certain revision of the PISA-test or according to a certain source. The context is often depicted in the title. When the context changes between two charts, it makes the relationship between the characters more complex.

The three concepts roughly mirror McCloud's [@Mccloud-93:understandingcomics] and Cohn's [@Cohn-10:limitstime] *subject*, *scene* and *time*. Based on Cohn's work and the discussion in section [-@sec:comparison] we suspect that there is also a hierarchy in our proposed types: Readers will first identify the *characters* in a chart and look for the corresponding characters in the other chart. If they find them and they visually differ between the states, they will look for reasons. At first, they will assume that a different *attribute* of the character is shown and therefore check the axes. If they conclude that the changing appearance of the character is not due to different attributes being shown they will assume that a change of *context* has happened.

## Case study method

*Characters*, *attributes*, and *context* represent different things that can change between two charts. The proposed reconceptualization, therefore, classifies transitions according to wether *characters*, *attributes* or the *context* change (and how). To find the different transition types, we have applied a case study method that is similar to the study conducted by Hullman et al. [@Hullman-13:deeperunderstanding] but more limited in scope. 

### Selection of examples

The test the proposed model, we have applied it to a collection of transition techniques commonly found in narrative visualization. We have started by compiling a corpus of narrative visualizations from online sources. The corpus combines two collections from other authors [@Riche-18:datadrivenstorytelling; @Mckenna-17:visualnarrative] and our examples. The corpus thus includes 144 narrative visualizations published between 2008 and 2019 by a variety of news organizations as well as individuals. The complete corpus can be found in appendix \ref{appendix-corpus}.

In a first step, we excluded examples that were either not focused on data visualization or examples that did not contain any transitions. We also excluded videos and everything that was done in flash for practical purposes. From the remaining 79 examples we selected 20 examples that we felt were representative of the state of the art based on the following criteria: We preferred more recent examples to older ones. We preferred examples that were heavier on the visuals. And we included a variety of sources.

### Analysis

For each example, a screenshot of each chart was pasted on a canvas in order. First, we identified the characters in the first screenshot. For each transition, we annotated if the characters, scene or context changed from the previous state and how it changed. This was usually straightforward which was an encouraging sign. Finally, we unified very similar transitions into 9 categories as presented in table \ref{table-transition-types}. The complete analysis can be found in appendix \ref{appendix-transition-analysis}.



## Transition types identified {#sec:corpus-analysis}

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

Table:  Transition types are defined by how characters, attributes, and context differ between two charts. \label{table-transition-types}

### Explore attributes

![Two examples of transitions exploring different attributes of the same characters. On the left side from a New York Times story [@Badger-18:extensivedata] and on the right side from a story by "Die Zeit"[@Borgenheimer-14:germanunification]. \label{technique-diffent-measure}](/Users/jonas/Desktop/P9/bericht/img/technique-different%20measure.pdf)

| Characters ![](img/char.pdf) | Attributes ![](img/attr.pdf) | Context ![](img/ctxt.pdf) |
| ---------------------------- | ---------------------------- | ------------------------- |
| Stay the same                | Differ                       | Same                      |

This is probably the most obvious transition type for storytelling. Here the author explores different aspects of the same character(s). In many cases, this will be done by mapping a different attribute to one of the axes, like on the left side of figure \ref{technique-diffent-measure}. Here the author compares incarceration rates  ![](img/attr.pdf) for black ![](img/char.pdf)and white men ![](img/char.pdf) by the income of their parents ![](img/attr.pdf) in the first chart. In the second, the incarceration rate ![](img/attr.pdf) gets replaced with the percentage of children who are married ![](img/attr.pdf). To show that you are more likely to get incarcerated and less likely to get married when you are from a black family.

Note how the character changes technically between the two states as it is first "black men" [](img/char.pdf) and after that "black men and women" [](img/char.pdf). This will likely get unnoticed by a majority of the readers by design. Choosing the same colors for semantically very similar character shows that the author intended them to be perceived as "the same".

The example on the right side of figure \ref{technique-diffent-measure} shows two interesting things: characters need not be explicit and characters can stay the same while chart types differ.

In the first chart, the characters are not identified by the author but emerge from the visualization through a combination of *identification through visual statistics* and *implicit identification* ([@sec:comparison]). More specifically the reader will perceive two clusters of very different color on the map. If he has some knowledge about the geography and history of Germany, he will *implicitly* identify them as Former East  ![](img/char.pdf) and West Germany ![](img/char.pdf) (see section [-@sec:comparison]).

These characters are named in the next state. In contrast to the example on the left, the second chart here is completely different from the first. While the first depicts a map, the second is a time-series chart. Nonetheless, the transition is still between two characters showing different attributes (daycare ![](img/attr.pdf)and children per women, time ![](img/attr.pdf)) for the same characters.

The corresponding transition in Hullman et al. is a *measure walk* ([@sec:inductive-classification]).

### Contrast characters

![Two examples of how characters are being contrasted. One from a Quartz article @Bauer-16:herewhy and the other from the New York Times [@Badger-18:extensivedata]. \label{technique-contrast}](/Users/jonas/Desktop/P9/bericht/img/technique-contrast.pdf)

| Characters ![](img/char.pdf) | Attributes ![](img/attr.pdf) | Context ![](img/ctxt.pdf) |
| ---------------------------- | ---------------------------- | ------------------------- |
| Differ                       | Stay the same                | Same                      |

We call this technique *contrasting* because it focuses on the difference between characters. It's typical for these transitions to keep the same layout between two states and just switch characters. Only like this, a visual comparison is possible. This is the case for the example on the left in figure \ref{technique-contrast}. The income gap between black ![](img/char.pdf) and white men ![](img/char.pdf) becomes very clear in comparison to the obvious lack of the gap for women ![](img/char.pdf) when plotted in the same coordinate system.

But also in contrasting transitions, there is subtlety as visible on the right side of figure \ref{technique-contrast}. Here the x-axis is being shifted between the states. But the shift has no other reason than saving space. It only takes slightly more effort to understand that the first chart shows states that have below-average proportions ![](img/attr.pdf)  of women and the second chart shows states that have above-average proportions ![](img/attr.pdf) of women. But this *pan* (see section [-@sec:param-classification]) could have been left out without changing the interpretation of the transition at all. This leads us directly to the next technique: *Reconfigure*.

The corresponding transition in Hullman et al. is a *dimension walk* ([@sec:inductive-classification]).



### Reconfigure

![Two examples of *reconfigure* transitions. On the left a *zoom* from a Bloomberg article [@Collins-15:whymeasles] and on the right a remapping of attributes to different visual variables found in an article by The Pudding [@Lambrechts-19:whyeua].\label{technique-reconfigure}](/Users/jonas/Desktop/P9/bericht/img/technique-reconfigure.pdf)

| Characters ![](img/char.pdf) | Attributes ![](img/attr.pdf)                                 | Context ![](img/ctxt.pdf) |
| ---------------------------- | ------------------------------------------------------------ | ------------------------- |
| Stay the same                | Stay the same but get remapped to different visual variables | Same                      |

The defining characteristic of this transition is, that no new information is shown from the first to the second state. The information is just shown in a different way to clarify different aspects. The left example in figure \ref{technique-reconfigure} first shows just how much the cases of measles have been  reduced through vaccination. It then *zooms* in on the portion of the chart showing the cases in recent times. They were too small to be visible in the first chart but technically present. This sort of transition is a good replacement for a log-transformed axis.

The right example in figure \ref{technique-reconfigure} shows a more drastic reconfiguration of a map into a scatterplot. While the first chart makes it easy to see how the south of Italy is underdeveloped and while the north is above average, the same split can be found in the scatterplot when hovering over the dots, representing the individual regions of Italy. Conversely, the ranking and uniformity of countries can be extracted through visual statistics ([-@sec:comparison]) from the first chart. It's just much, much clearer in the second.

Reconfigure subsumes the *pan*, *zoom*, *reorder* and *visualization change* transitions from visualization-oriented transitions (see section [-@sec:param-classification]). We have not found reconfigure transitions to be common enough in narrative visualization to deserve further specification into these subcategories.



### Split characters

![Examples of transitions where characters are being split. On the left measles cases by year [@Collins-15:whymeasles] and on the right EU countries by regions [@Lambrechts-19:whyeua].\label{technique-reconfigure}](/Users/jonas/Desktop/P9/bericht/img/technique-split.pdf)

| Characters ![](img/char.pdf)                     | Attributes ![](img/attr.pdf) | Context ![](img/ctxt.pdf) |
| ------------------------------------------------ | ---------------------------- | ------------------------- |
| Visible characters are split into sub-characters | Stay the same                | Same                      |

As described in section [-@sec:our-model], characters need not be atomic units. Groups of similar characters can be perceived as a character themselves. But sometimes the author wants to convey how characters in a group differ from each other and thus how (in-)homogeneous a group is.

Splitting characters is an essential device in narrative visualization because it nicely fits the general-to-specific pattern often used in storytelling [@Hullman-13:deeperunderstanding]. When splitting characters, the attributes will usually stay the same to serve as a frame of reference. A kind of shadow or contour of the "parent"-group will often remain too for reference. This is the case for both examples in figure \ref{technique-split} one who splits measles cases by states ![](img/char.pdf)  and years ![](img/attr.pdf) and one who splits European countries ![](img/char.pdf) into regions ![](img/char.pdf).

Splitting characters is what Hullman et al. call a *general-to-specific* transition (see section [-@sec:inductive-classification]).

### Merge characters {#sec:transition-merge}

![Different ways how characters are merged. On the left a transition where characters are "summed" from from Bloomberg [@Roston-15:whatreally] and on the right a transition where characters are "subtracted" from *The pudding* [@Dworkin-18:whytech]. \label{technique-merge}](/Users/jonas/Desktop/P9/bericht/img/technique-merge.pdf)

| Characters ![](img/char.pdf)  | Attributes ![](img/attr.pdf) | Context ![](img/ctxt.pdf) |
| ----------------------------- | ---------------------------- | ------------------------- |
| Visible characters are merged | Stay the same                | Same                      |

Where there is splitting, there needs to be merging. But merging is conceptually more complicated than splitting. Splitting shows more information in the second chart while merging summarizes information from the first chart. In the second case, it is much more important for the reader to understand the summary operation that is being used. Is the new character the *mean*, the *sum* or even the *difference* of the characters previously seen? Both examples in figure \ref{technique-merge} illustrate this problem very well. Visually, the natural factors ![](img/char.pdf) presented in the second chart could very well be the *mean* of volcanic ![](img/char.pdf), solar ![](img/char.pdf) and orbital change ![](img/char.pdf). But it's actually the *sum*. In the example on the right, the pink bars might well represent the *sum* of the dots on the left but it's actually the difference.
Although merging is complex it can be very useful for a storytelling approach that has been called *ladder of abstraction*-storytelling [@Victor-11:ladderabstraction]. It starts with very concrete, down to earth characters (like volcanoes ![](img/char.pdf) or skill importance ![](img/char.pdf) ) and moves "up" towards more abstract concepts (like natural factors ![](img/char.pdf)  or skill importance difference ![](img/char.pdf)). Previous authors have had some success with depicting such operations through animation [@Kim-19:designinganimated].

Hullman et al. call this transition *specific to general*  (see section [-@inductive-classification]).

### Highlighting

![Two examples of *highlighting* transitions. On the left from The Pudding [@Lambrechts-19:whyeu] and on the right from Bloomberg [@Klein-14:howamericans]. \label{technique-focus}](/Users/jonas/Desktop/P9/bericht/img/technique-focus.pdf)

| Characters ![](img/char.pdf) | Attributes ![](img/attr.pdf) | Context ![](img/ctxt.pdf) |
| ---------------------------- | ---------------------------- | ------------------------- |
| Get filtered down            | Stay the same                | Same                      |

This technique again serves the very common *general-to-specific*-pattern [@Hullman-13:deeperunderstanding]). It focuses the reader on a specific character or a special group of characters. The most common way to do this is by hiding the other characters. An example of this can be found on the left in figure \ref{technique-focus} where the second chart only shows Hungary ![](img/char.pdf) from all the EU countries ![](img/char.pdf). In the example on the right side of figure \ref{technique-focus} the transition hides the other age groups ![](img/char.pdf) to highlight the 25 to 44 group ![](img/char.pdf). Many other ways of highlighting one character are imaginable.

Highlighting is the equivalent of a *filter* transition from the visualization-oriented transitions (see section [-@sec:param-classification]).



### Progressive disclosure

![On the left an example of *progressive disclosure* by showing more characters from the Tampa Bay Times [@Nathaniel-15:howfive]. On the right an example where more of the same character is disclosed from The Pudding [@Daniels:usinghistorical]. \label{technique-disclosure}](/Users/jonas/Desktop/P9/bericht/img/technique-disclosure.pdf)

| Characters ![](img/char.pdf)         | Attributes ![](img/attr.pdf) | Context ![](img/ctxt.pdf) |
| ------------------------------------ | ---------------------------- | ------------------------- |
| More or more of them becomes visible | Stay the same                | Same                      |

Similar to *split* and *merge*, this is the counterpart of *highlighting*. And similar, to *merge* it is a useful device for *ladder of abstraction*-storytelling [@Victor-11:ladderabstraction]. One version of this technique introduces new characters in the second chart as seen on the left in figure \ref{technique-disclosure}. Another variant shows more of the same character(s) in the second chart. The example on the right shows more and more of the course of the game between the Miami Heats ![](img/char.pdf) and the Houston Rockets ![](img/char.pdf) with each transition.

A particular case of progressive disclosure is what Hullman et al. call *spatial transitions*. A story might, for example, explore the mountainous terrain of the Alps and disclose more and more of it with each transition (see section [-@sec:inductive-classification]). But it can also represent the removal of a filter according to the visualization-oriented classification (see section [-@sec:param-classification]).



### Context

![Two examples of transitions where the context changes. On the left from the New York Times [@Hernandez-18:americandream] and on the right from The Pudding [@Lambrechts-19:whyeu]. \label{technique-temporal}](/Users/jonas/Desktop/P9/bericht/img/technique-temporal.pdf	)

| Characters ![](img/char.pdf) | Attributes ![](img/attr.pdf) | Context ![](img/ctxt.pdf) |
| ---------------------------- | ---------------------------- | ------------------------- |
| Stay the same*               | Stay the same                | Changes                   |

The interest of the context transition is to show how the "situation" (the form of characters) changes when the context changes. The most common case is comparing the situation at different points in time. In the left example in figure \ref{technique-temporal}, the author wants to convey how China ![](img/char.pdf) made up most of the world's poor ![](img/attr.pdf) in the 90s ![](img/ctxt.pdf) and is now ![](img/ctxt.pdf) home to a large part of the worlds middle class ![](img/attr.pdf) .

The example on the right shows how a changing context may lead to a change in characters. Here the formerly ![](img/ctxt.pdf) single large administrative region around Budapest ![](img/char.pdf) has now ![](img/ctxt.pdf)split into the rich Budapest ![](img/char.pdf) and the poor Pest ![](img/char.pdf) (notice how poor Pest only gets half of the name).

Hullman et al. identified the very prevalent change in temporal context but did not generalize it (see section [-@sec:inductive-classification]). As contexts contain groups of characters, they can become characters themselves at certain points of the story. That is why *context* transitions have a close relationship to *contrasting character* transitions and the distinction is not always 100% clear.

### Semantic field

![Two examples where charts are only related by a common theme. On the left from FiveThirtyEight [@Casselman-15:stronghiring] and on the right from Vox [@Klein-14:obamaamerican]. \label{technique-semantic}](/Users/jonas/Desktop/P9/bericht/img/technique-semantic.pdf)

| Characters ![](img/char.pdf) | Attributes ![](img/attr.pdf) | Context    |
| ---------------------------- | ---------------------------- | ---------- |
| Differ                       | Differ                       | Can differ |

This might be the hardest transition for readers to follow as none of the elements are shared between the charts. The only thing that connects the two charts is that their characters come from the same field of concepts. The reader, therefore, needs to move up in the conceptual hierarchy to find the relationship between the characters depicted.  In the example on the left of figure \ref{technique-semantic}, the reader needs to understand how job growth ![](img/attr.pdf) is related to hourly earnings ![](img/attr.pdf). This requires a rather sophisticated internal model of economics, or a textual explanation. The same is true for the example on the right. It is not possible without a lot of additional knowledge about how the rising discrepancy of profits ![](img/char.pdf) and wages ![](img/char.pdf) is related to the decline in union memberships ![](img/attr.pdf).

*Causal* and *Question & answer* transitions identified by Hullman et al. would fall into that category (see section [-@sec:inductive-classification]).

### Discussion

The case studies in this section demonstrate how *characters*, *attributes*, and *context* can be used to express a wide range of transitions in very different narrative visualization. It also shows that, even when transitions are looked at through this lens, similar transition types were identified as in Hullman et al.'s study ([@sec:inductive-classification]).

Because *characters* link the marks that are present in the visualization with how the reader interprets them, they introduce the factor of reader knowledge ([@sec:comparison]) to the classifications typically used ([@sec:param-classification]) in visualization. We believe that this factor is essential in the context of narrative visualization.

# Animation based on transition type

## Reducing the transition cost {#sec:reducing-cost}

One of the goals of using animation to guide the reader through narrative visualization should be to *reduce the transition cost*. This can either be done by reducing the number of targets that need to be compared, the size of the targets or the complexity of relationships (@sec:transition-cost). This section will discuss how the strengths of animation (@sec:animation-strength) might help to reduce the transition cost. It will then show how different transition types might benefit from different strengths of animation.

### Object constancy

Object constancy should make it easier to locate the corresponding target in the second chart. Fluent animation should be a way to offload the task of identifying two objects as "the same" from working memory to the visual system. This, in turn, should considerably reduce cognitive load.

### Explicitly show complex relationships

Complex relationships take multiple steps from the reader to understand through comparison. The intermediate results from these steps need to be stored in working memory. Animation might be used to indicate the type of relationship. It might, for example, be used to indicate characters are grouped in a merge transition ([@sec:merge-transition]).

### Highlighting

Highlighting explicitly identifies the targets that the reader should compare (see section [-@sec:comparison]). It therefore also reduces the number of targets that need to be held in working memory. Highlighting can be done through the means of narrative visualization (narration, annotations, color, and animation) mentioned in section [-@sec:narr-vis]. When highlighting is done through pre-attentive attributes like color, for example, objects of different color are already being hidden in the visual system and do not even reach working memory [@Franconeri-18:thinkingdata] (compare also "Visual feature" in figure \label{comparison-identification}). Something similar might happen when using animation to highlight certain targets.

### Engagement

While higher engagement might not directly lead to a reduction of the transition cost, it might motivate the reader to focus on the story and therefore still lead to higher rates of understanding. As discussed in section [-@sec:congruence], higher engagement has also been found to be related to congruence.

## Implications for transition types {#sec:implications}

The transition types presented in section [-@sec:corpus-analysis] will be interpreted in different ways by the readers. While one type will require the reader to find out how the shape of a character has changed, another will require of him to identify characters that have similar shapes, and a third one will require of him to create a relation at the conceptual level. Not all of them will, therefore, benefit from animation in the same way (@sec:reducing-cost). Table \ref{table-strengths-types}, therefore, links the strengths of animation to the different transition types.

|                        | Object constancy | Explicitly show  relationship | Highlighting | Engagement |
| ---------------------- | ---------------- | ----------------------------- | ------------ | ---------- |
| Explore attributes     | ✓                |                               | ✓            | ✓          |
| Contrast characters    |                  |                               | ✓            |            |
| Reconfigure            | ✓                |                               |              |            |
| Split characters       |                  | ✓                             | ✓            | ✓          |
| Merge characters       |                  | ✓                             | ✓            | ✓          |
| Highlighting           |                  |                               | ✓            |            |
| Progressive disclosure |                  |                               | ✓            |            |
| Context                | ✓                |                               | ✓            | ✓          |
| Semantic field         |                  |                               | ✓            |            |

Table:  How different transition types can benefit from animation. \label{table-strengths-types}

#### Object constancy

Requires that characters are shared between charts but that they change their location or form. This is because locating the corresponding character in the second chart is only difficult if it is visually different from the first chart. This is true for *explore attributes*, *reconfigure* and *context* transitions.

#### Explicitly show complex relationships

When the relationship between the characters in the two charts is not one-to-one, the reader may benefit from explicitly showing the relationship through animation. This is true for *split characters* and *merge characters* transitions.

#### Highlighting

Different f§rom the other two benefits, highlighting does not require characters to be shared between the states. All transitions can therefore potentially benefit from highlighting. The exception are *reconfigure* transitions because they typically concern all the characters. No highlighting needed.


#### Engagement

Because in previous studies, only congruent animation has been shown to lead to higher engagement. Animation for higher engagement would, therefore, presume some kind of natural motion between characters. This excludes *contrast characters* and *semantic field* transitions. Animation for *progressive disclosure* also has not led to higher reader engagement in a previous study [@Amini-18:hookeddata]. *Reconfigure* transitions are by nature very abstract and animation would, therefore, most probably not lead to higher engagement.



# Research hypotheses {#sec:hypotheses}

Based on the discussion in the previous section ([@sec:implications]), we believe that animated transitions have the potential to support readers in understanding the relationship between two charts. This is the main research question of this work as mentioned in the introduction ([@sec:introduction]). H2 to H6 test more specific hypotheses based on the strengths of animation presented in section [-@sec:animation]. The hypotheses only apply to transition types where animation can theoretically provide a benefit (compare to section [-@sec:implications]).

#### H1: Animation makes understanding transitions easier

Based on the widespread use of animation in practice and based on the discussion in this chapter, we hypothesize that animation would reduce the cognitive load of readers. Because they would have more available working memory capacity, we hypothesized that they would more likely interpret a transition correctly.

#### H2: Animation implies a relationship

Based on the findings that animation can communicate relationships (see section [-@sec:causality]), we hypothesized that animated transitions might imply a relationship in a more general sense. We hypothesized that animated transitions would more often lead participants to assume a relationship between two charts.

#### H3: Animation implies a causal relationship

Based on the finding that animation can imply causality ([@sec:causality]) we proposed this as an extension to H2. We hypothesized, that when readers assumed a relationship between two charts they would often specifically assume a cause and effect relationship when they saw an animated transition.


#### H4: Animation leads to object constancy

We hypothesized that animated transitions would support the reader through object constancy. 

#### H5: Animation highlights characters

The discussion in section [-@sec:attract-attention] has shown that the literature agrees that animation would have a highlighting effect. We, therefore, assumed that this would hold for animated transitions in narrative visualizations. Our hypothesis was that animation would focus the reader on the characters that were being animated.


#### H6: Animation leads to higher engagement

Even if it might not directly contribute to transition understanding, we hypothesized that animated transition would lead to higher reader engagement. This hypothesis is mostly based on anecdotal evidence, as discussed in section [-@sec:engage].
