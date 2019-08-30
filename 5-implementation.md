\newpage
\part{Implementation}

# Implementation {#sec:implementation}

To quickly create narrative visualizations and animated transitions for the experiment presented in the previous chapter, we have built a visualization tool that would simplify this task. The implementation builds on the concept of *characters* introduced in section [-@sec:our-model]. The following sections discuss how this contributes a new way of configuring animated transitions in visualization tools and give an overview of the implementation.

## Requirements {#sec:requirements}

This section presents the requirements on the implementation.

#### Online narrative visualization

Much of the specification of the experiment has already been described in chapter [-@sec:experiment]. To conduct the experiment on Amazon Mechanical Turk [@:amazonmechanical] we needed a tool to build web-based narrative visualizations with animated transitions. It was, therefore, an obvious choice to use common web technologies like HTML, CSS, SVG, and ECMAScript for the implementation. For increased programmer convenience through type checking, we have used TypeScript to generate the final ECMAScript.

The D3 library [@Bostock-11:datadrivendocuments] was used because it abstracts some of the more tedious parts of generating SVG-code from data. D3 was chosen because it is currently the de-facto standard for data visualization on the web and it does not impose a certain structure on the code as many frameworks do.

#### Rapid prototyping

Because the stories and the design were developed alongside with the implementation, we wanted a system the would allow us to quickly test different design choices or modify the stories. We, therefore, decided to build an application generator the would interpret a domain-specific language (DSL) perfectly tailored to our needs.

#### Limited range of chart types

The range of charts that the general public easily understands is very limited [@Boy-14:principledway]. The tool therefore only needed to be able to generate a limited number of basic chart types.

#### Transitions focused on characters

Based on the proposed concepts presented in chapter [-@sec:perception-oriented], we decided to base all of the animated transitions on the concept of *characters*.

#### Performance

Performance needed to be good enough to not impair the perception of the animated transitions. We made some informal user tests to find out what would be an acceptable performance benchmark. For this, we presented two versions of the same narrative visualization to participants (n=4). One which presented the animation at about 15 frames per second (fps), the other at about 40 fps. After much consideration, two of the subject correctly identified the slow animation. We, therefore, gave it some margin and set the lower performance limit to 20 fps which is in line with the 25 fps typically used for movies.

#### Reliable logging of user interaction and answers

Finally, the implementation needed to provide a reliable way to collect the passive data described in section [-@sec:data-collection] and make sure that all the answers were transmitted and that everything could be reliably connected to the right participant.


## Prior art

Many visualization tools have been created over the years and every tool addresses a different set of requirements and has different strengths and weaknesses. This section presents a very brief overview of the state of the art in visualization tools with a focus on the use of domain-specific languages and animated transitions. A more in-depth overview of the state of the art of visualization tools can be found in a very recent paper by Mei et al. [@Mei-18:designspace].

### Domain-specific languages for visualization

The number of useful chart types in data visualization is surprisingly limited. A review of some catalogs of chart type shows that it lies somewhere in the range between 40 and 200 [@Holtz:dataviz; @Ribecca:datavisualisation; @Schwabish:visualvocabulary; @:dataviz; @Russo-18:microsoftpower]. When developing software for data visualization, an obvious approach is, therefore, to implement these basic chart types and make them configurable. A recent study on visualization tools [@Mei-18:designspace] shows that over the last three decades a majority of tools mentioned in the literature have used some sort of chart typology (see figure \ref{code-abstraction}).

 ![Visualization tools according to their level of abstraction and their year of introduction. \label{code-abstraction}](img/code-abstraction.pdf)

Graphic libraries inhabit the other end of the spectrum. They usually only provide functionality for drawing basic shapes. They are thus the most general and flexible visualization tools. But building visualization out of basic shapes is very laborious, which is the reason why "chart configurators" are so popular. More recently, visualization researchers have started to explore the middle ground: declarative, domain-specific languages (DSLs) [@Wickham-16:ggplot2elegant; @Heer-10:declarativelanguage; @Satyanarayan-16:vegalitegrammar]. DSLs try to maintain a maximum of flexibility while significantly simplifying the creation process [@Heer-10:declarativelanguage]. One very recent example of a declarative language for visualization on the web is Vega-Lite [@Satyanarayan-16:vegalitegrammar]. Vega-Lite's DSL builds on JSON and the concept of the *Grammar of Graphics*. The grammar of graphics separates different parts of a visualization into separate "layers" which are independent and can be recombined as desired (see figure \ref{code-vega}). Vega-Lite also introduced a way to define interactive visualization in a declarative manner.

![An example of how Vega-Lite representes the different layers of the Grammar of Graphics and how this is translates to a visualization. \label{code-vega}](img/code-vega.pdf) 



### Animated transitions between charts

Even less research has been conducted on DSLs who describe animated transitions between visualizations. Heer and Bostock, who later went to create the already mentioned D3 [@Bostock-11:datadrivendocuments], have described one approach in an earlier paper [@Heer-10:declarativelanguage]. Their system is based on marks like lines and bars. To create animations, the author defines the data for the initial state and the data for the final state. Their tool then interpolates between the two to generate an animated transition.

Very recently, Tableau, one of the largest providers of commercial visualization software has released a preview of their future implementation of animated transitions [@Isaacs-18:tableaumotion]. In their concept, animations are predetermined by the change in visualization parameters ([@sec:param-classification]) and not configurable by the author.

The tool that most closely addresses the problems of narrative visualization is *Ellipsis* by Satyanarayan and Heer [@Satyanarayan-14:authoringnarrative]. Ellipsis is a tool to create narrative visualization through a graphical interface. It wraps existing visualizations and adds an *annotation* layer, *parameters* for limited interaction (see section [-@sec:narr-vis]) and a layer for defining *transitions* between charts. Ellipsis thus effectively decouples the narrative structure from the individual charts and lets authors quickly explore alternative narrative structures.



### Performance optimization

Heer et al. [@Heer-10:declarativelanguage] mention another advantage of DSLs for visualization specification: they can easily be optimized without changing anything in the specification. The authors changed the implementation to use multiple threads and doubled their rendering speed without changing anything in the specification of the visualization.



## Declarative syntax {#sec:declarative-syntax}

Based on the requirements described in section [-@sec:requirements] and the review of existing tools, we decided to design a domain-specific language (DSL) for narrative visualization with animated transitions. A DSL allows for *rapid prototyping* by making the definition of charts and transitions quick. Yet it can provide a lot of flexibility in terms of annotations and in how characters should morph between the charts. Finally, slow animations can be optimized without changing the visualizations that were already created for the experiment.

### Anatomy of a chart

The first part of the DSL is concerned with defining the basic charts. The syntax is based on JSON and strongly inspired by Vega-Lite [@Satyanarayan-16:vegalitegrammar]. Vega-Lite is more powerful in inferring a multitude of chart types based solely on the configuration than our proposed solution. As we only required a very limited number of chart types ([@sec:requirements]), we resorted to the "Chart typology"-approach which is less flexible but much easier to implement. Two other differences of the proposed syntax to Vega-Lite are the focus on *characters* and the possibility to *annotate* them. An overview of the syntax is presented in figure \ref{code-chart}.

![The code on the left leads to the generation of the chart on the right. On the top right an example of the type of data that is being used is shown. \label{code-chart}](img/code-chart.pdf)

- ![](img/1.pdf) Each chart has a `name` which is used to identify it. If there is an HTML element with an ID that corresponds to this name it will be used to render the chart there. The chart dimensions as well es its position on the page are therefore completely defined by the layout of the surrounding page.
- ![](img/2.pdf) The `type` defines the basic chart type that should be used. Behind the scenes, each chart type is implemented as a subclass of an abstract `Chart`-class that implements its own `draw`-method.
- ![](img/3.pdf)The path to a `CSV`-file with data. The syntax does not foresee any kind of data transformation functionality and expects the data to be in the right format. This is because the tool is presentation-oriented and there is no need to explore the data through filtering or other transformations.
- ![](img/4.pdf)The chart title is implemented as an `annotation`. Annotations can be bound to different elements throughout the DSL and can be positioned relative to their `start` or `end` through the `offset`-property.
- ![](img/5.pdf)In the axis-definitions, different attributes (`field`) of the data are mapped to different axes. The axes are identified by their `name` which can differ depending on the chart `type`. Slope charts, for example, have three axes:  `x`, `from` and `to`.  The advantage of defining each axis explicitly like this is, that, again, `annotations` can be bound to them which provided a lot of flexibility.
- ![](img/6.pdf)The `type`-property of an axis defines how the corresponding data should be parsed. The data domain can either be continuous numbers (`quantitative`), ordered discrete values (`ordinal`), unordered discrete values (`categorical`), or timestamps (`temporal`) [@Munzner-15:visualizationanalysis p.21; @Satyanarayan-16:vegalitegrammar]. The `domain`-property defines the corresponding start and end values of the axis. Often, the minimal and maximal values in the data are used to determine the start and end of an axis. But when using visualization for storytelling, sometimes the author wants values to "overshoot" the axis, or to fix the axis at a certain domain for dramatic or clarity reasons, which is why we allowed explicit control of this parameter.
- ![](img/7.pdf)Coherent with the model developed in section (>>Perception-oriented classification), we look at narrative visualization through the lens of characters. This is why our DSL contains an explicit declaration of the whole `cast` of characters in each chart. We assume that individual characters are identified by a `categorical` attribute in the data which is defined in the `field`-property.
- ![](img/8.pdf)Because characters have such high importance, they are defined individually (figure \ref{code-characters}):

![An example of how individual characters are defined. \label{code-characters}](img/code-characters.pdf)

- ![](img/8.1.pdf)In the three chart types that were implemented, characters are uniformly distinguished by `color` which is also what is often used in the narrative visualizations that were analyzed in section [@sec:corpus-analysis]. Other options like symbols or textures are naturally imaginable. The necessary data to `draw` each character is found via its `name` property.
- ![](img/8.2.pdf) Shows an example of the use of multiple `annotations`. Two are used to indicate the initial and the final share of each energy source, the third one to label the energy source itself. This approach has proven to provide a lot of flexibility. Especially when coupled with CSS `class`es that make individual styling of characters possible.
- ![](img/8.3.pdf)Such flexibility comes at the price of verbosity, as each character needs to be specified individually. 
- ![](img/9.pdf)Finally, some basic visual properties of the chart can be defined in the `design` section of the specification.



### Anatomy of a transition

Together with the `director` ([@sec:director]), this is the main contribution in terms of software architecture. Because we have identified character and attribute changes as the main concern for transitions, the DSL focuses on them. Characters as well as axes (which represent attributes), can be mapped between two charts which will create a third transition chart that interpolates between them (see figure \ref{code-transition}).

![An example of how a *morphing* animation between individual characters from two charts can be declared. \label{code-transition}](img/code-transition.pdf) 

- ![](img/1.pdf) A transition is not treated very differently from a chart. It also has a `name` and is rendered into an HTML element with the corresponding ID.
- ![](img/2.pdf) + ![](img/3.pdf) A transition chart is solely defined by the charts it transitions between. This is done through the `from` and `to` properties.
- ![](img/4.pdf) A `morphing` transition is used when characters are shared between charts ([@sec:corpus-analysis]). In other cases, the animation is a simple `fade`.
- ![](img/5.pdf)While some transition types like "Explore attributes" have a one-to-one relationship between the characters of the two charts, transition types like "Split characters" and "Merge characters" have a one-to-many or many-to-one relationship ([@sec:corpus-analysis]). This is modeled by mapping the same character in the `from` property to multiple characters in the `to` property or the inverse.
- ![](img/6.pdf) The system also supports axis interpolation (see design discussion in appendix \ref{appendix-designchoices}). Any axis in the initial chart can be mapped to any axis in the final chart. This particularly makes "Reconfigure" transitions possible.



### Directing all of them {#sec:director}

Finally, the `director` contains a kind of "scroll-timeline" of charts. Based on this it will show, hide and interpolate the appropriate charts at certain scroll positions. An example can be found in figure \ref{code-director}.

![An example of how the sequence of charts and transitions can be defined in the `director`. \label{code-director}](img/code-director.pdf)

* ![](img/1.pdf) The director's `name` is used in the experiment to identify the mini-story and the configuration the participant was looking at.
* ![](img/2.pdf) The steps define a range of scroll positions and a chart or transition that should be displayed within this range. The `-1000` value is in there because some browsers permit scrolling above the start of the page, which would hide the first chart.



## Program generation and rendering process

1. In a first step, the system generates objects for all the charts with their axes, characters, and annotations from the specification ([@sec:declarative-syntax]). Wherever something is not defined, it assumes a sensible default if possible or explains the failure otherwise.
2. After the charts, the system generates the objects who represent the transitions which reference the chart objects.
3. Finally, a director object is generated with references to all the charts and transitions. The director continually checks if the viewer has been scrolling.
4. When the scroll position changes, the director calls the `draw`-method on the charts/transitions that should be visible at this position. It calls the `hide`-method on all the others. If at the current position, a transition should be displayed, the `draw`-method is called with an additional `position` parameter that indicates the state of the interpolation.
5. This triggers a rendering cascade where every object also calls the `draw` methods of its children to render the final display. This corresponds to the *render*-pattern described by Heer et al. [@Heer-06:softwaredesign].
6. Objects of transition charts [characters, axes, annotations] implement their own interpolation methods and use them for rendering interpolated states.
7. The `draw`-methods generate the necessary SVG-code and append it to an SVG that will finally be displayed in the HTML element for the chart.

Our implementation of the described program generator and rendering process is referenced in appendix \ref{appendix-implementation}



## Interpolation

This section contains a few remarks on how the interpolation described above is being handled in our implementation. While previous work has usually interpolated between visualization parameters [@Heer-10:declarativelanguage; @Satyanarayan-14:authoringnarrative], our system interpolates between SVG-shapes. Thanks to this, our system can generate animated transitions between two completely different chart types. The only condition is that a character needs to be represented by a single, closed SVG shape. Other systems only permit transitions "within" the same chart.

One problem when interpolating directly between SVG-shapes is that they need to have a one-to-one correspondence between their anchor points. If this is not the case, there needs to be some method to add points to the simpler shape. For this, we have used an algorithm that duplicates points of the simpler shape that are closest to the matching points in the complex shape [@Beshai-16:improvingd3]. This has produced visually good results in all our cases. But it had the downside of making the calculation of interpolated states slower.



## Performance {#sec:performance}

As presented in the results, the drawing performance was not above the defined threshold for 7 of the participants ([@sec:experiment-results]). The distribution of the drawing performance over all the sessions with animated transitions in the experiment can be seen in figure \ref{code-framerate}.

Animation on the web typically has very mediocre performance. But there are a few strategies to make it faster which will be discussed in this section.

![The mean frame rates by session in the experiment. \label{code-framerate}](img/code-framerate.pdf)


#### Synchronize repaint timing

There is no connection between the time when a "scroll" event is being fired on the DOM and when the browser is ready to repaint the page. But thanks to the `requestAnimationFrame`-method, we can register a callback function that the browser will execute before the next repaint. In this callback, the director checks if the vertical position of the viewport has changed since the last call. If so, the DOM for this position is recalculated. Thanks to this, such a recalculation only ever happens when it will actually be painted by the browser. Typically, this is at 60fps but the rate is automatically toggled when calculations and repainting take more time. This approach has been implemented

#### Conditional redrawing

Every component is responsible for drawing itself. `draw` methods could therefore easily be modified to only manipulate the DOM when something has changed (for example based on a "dirty"-flag). Based on our performance tests, we strongly suspect that browsers already implement this mechanism themselves and do not repaint elements whose subtree has simply been replaced with an identical subtree. We, therefore, did not implement this approach.

#### Parameter-based caching

Because the system is highly decoupled, expensive calculations could easily be cached based on the input parameters. One very good candidate for this is the calculation of additional points for SVG shapes that will be interpolated. Because in our tests, the frame rates have always been much better than our baseline of 20fps, we did not implement this optimization. This decision was unfortunate as quite a few participants suffered from subpar performance (see figure \ref{code-framerate} and section [-@sec:experiment-results])

#### Canvas or WebGL

Finally, we could handle the rendering of the pixels directly by using HTML `canvas` instead of SVG. But with current browsers and on current hardware, rendering performance has been shown to be about equal [@Horak-18:comparingrendering]. WebGL, on the other, hand is faster but would have made the implementation considerably more complicated [@Kee-12:comparinginteractive].


## Logging

Every interaction with the experiment was logged ([@sec:passive-data]). Whenever the director detected scrolling, a log entry was created. Every keystroke too was recorded. And naturally, the participants answers where recorded. Logging is also the director's responsibility. Log entries are appended to a list which is sent to a server every 5 seconds as a CSV to minimize the potential for data loss. The data is also sent when the participant submits the answer form.

Every entry stores a timestamp, an identifier for the participant and the current mini-story, the URL, the scroll position and information about the participant's browser like window size or user agent. The full documentation can be found in appendix \ref{appendix-passivedata}.

## Discussion

The solution presented in chapter [-@sec:declarative-syntax] might look simple, even obvious to the reader. But our first attempts to implement animated transitions resulted in a tangled mess of spaghetti code and attest that the problem does not have a straightforward solution. We conclude that the simplicity of the proposed solution is, therefore, more a sign of conceptual clarity than a sign for the mundanity of the problem.


