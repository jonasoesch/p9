\newpage
\part{Experiment}

# Research method {#sec:experiment}

To test the hypotheses presented in the previous chapter, we have conducted an experiment which will be presented in this chapter. Much this design is based on discussions with Dr. Nicole Jardine, Prof. Dr. Steven Franconeri and Cindy Xiong from the Visual Thinking Lab at Northwestern University, Chicago [@:visualthinking].

## Overview

In the experiment we presented two narrative visualizations (stories) to each participant: *mortality* and *energy*. Each story contained a total of five charts and four transitions. Each participant saw one of the stories with *animated* transitions and the other with *static* (non-animated) transitions.

To examine each transition individually, we have split each story into four separate screens which we called *mini-stories* (see figure \ref{experiment-setup}). Each mini-story contained one transition and the two corresponding charts.

This setup has made made it so that the second chart of each mini-story is the first chart of the next mini-story. Normally, this would not be true for the initial mini-story. Because we did not want the initial mini-story to differ from the others in this respect, we have introduced another screen before each mini-story where the first chart is presented (see figure \ref{experiment-setup})

At the end of each mini-story we presented a questionnaire asking about the participants conclusion and their perceived engagement. The questionnaire will be presented in more detail in section [-@sec:questionnaire].

![The order of the 13 screens presented to the participants in the experiment. \label{experiment-setup}](img/experiment-setup.pdf) 

The experiment was conducted on Amazon Mechanical Turk [@:amazonmechanical] and had 56 participants. An introductory screen instructed to the participants on what they would have to do and that they would receive USD 9 for completing the experiment. After the two stories, a final survey ([@sec:survey]) and finally an answer code to verify their participation was presented. We also limited participation to U.S.-citizens because the experiment was in English and concerned topics that treat the U.S.

The required sample size was determined to be 56 participants based on a power analysis on the results of a pilot study (appendix \ref{}).


## Stimuli {#sec:experiment-overview}

This section will present the stimuli, the *transitions* and the *stories* in more detail. This will make the presentation of the experiment in the following sections much clearer.

### Transitions

Each participant saw both stories and each story contained either *animated* or *static* (non-animated) transitions. This design ensured that the distinction between *static* and *animated* transitions had maximimal statistical power.

In both cases the transitions where controlled by scrolling. Initially a participant would see the first chart of a mini-story. When he scrolled down, the first chart would be replaced by the second chart. When scrolling even further, the questionnaire would appear. In *animated* transitions, the chart would not simply be replaced but morphed into the other. The animation was fully controlled through scrolling and could be played forward and backwards. This ensured that the amount of *direct manipulation* would be the same for both transitions ([@sec:animation-techniques]). The animation was also implemented with "slow-in-slow-out"-easing which has been shown to work better than linear easing ([@sec:animation-techniques]).

### Mortality story {#sec:mortality-story}

The first story was about the evolution of mortality rates in the U.S. It is a modification of an article published by Bloomberg in 2014 [@Klein-14:howamericans]. The individual charts are displayed in figure \ref{mortality-charts}.

![The charts and the transitions of the mortality story. \label{mortality-charts}](img/mortality.pdf)

#### Mortality A {#sec:mortality-a}

The story begins with a chart showing how the distribution of age groups ![](img/char.pdf)has changed resulting in an aging population ![](img/char.pdf) over time ![](img/attr.pdf) . The transition first *merges* the individual age groups ![](img/char.pdf) into an "Everyone" group ![](img/char.pdf) . Then it replaces the share of population ![](img/attr.pdf) with the "deaths per 100'000" ![](img/attr.pdf) . The next chart shows how "deaths per 100'000" have been reduced drastically over time ![](img/attr.pdf) . The transition thus conveys how reducing mortality rate leads to an aging population. 

#### Mortality B {#sec:mortality-b}

The second transition *splits*  "Everyone" ![](img/char.pdf) again into the different age groups ![](img/char.pdf). From this mini-story, the reader learns that the mortality rate is dominated (unsurprisingly) by elderly people. An apparent slowdown in mortality rate reduction in the first chart is therefore mostly due to to the development of the "Over 84" group ![](img/char.pdf).

#### Mortality C {#sec:mortality-c}

The third transition *reconfigures* the x-axis to show the relative evolution of the mortality rate ![](img/attr.pdf) for each age group ![](img/char.pdf). Thanks to this it becomes apparent that even though the elderly have made the most progress in absolute numbers, the relative reduction is highest for younger age groups.

#### Mortality D {#sec:mortality-d}

Some readers might have wondered why the mortality rate for "25–44" year olds ![](img/char.pdf) was rising  at the beginning of the 90s. The fourth transition therefore *splits* this age group ![](img/char.pdf) into its individual causes of death ![](img/char.pdf). This answers the question: it was precisely at this point that the AIDS-epidemic was at its peak and has most strongly affected this age group ![](img/char.pdf).



### Energy story {#sec:energy-story}

This is a story about the evolution of energy sources in the U.S. since the beginning of the century. It combines a story from the New York Times [@Popovich-18:howdoes] with one from Forbes [@Mahajan-18:plungingprices]. The individual charts are presented in figure \ref{energy-charts}.

![The charts and the transitions of the energy story. \label{energy-charts}](img/energy.pdf)

#### Energy A {#sec:energy-a}

The energy story starts by showing the evolution of different energy sources ![](img/char.pdf) in the U.S in absolute numbers ![](img/attr.pdf). The transition *reconfigures* these characters to show how the proportion of use ![](img/attr.pdf) for each energy source ![](img/char.pdf) has changed over time ![](img/attr.pdf). From comparing the two charts it becomes clear that while the absolute output has either risen or stagnated, coal ![](img/char.pdf) has been used significantly less while the focus seems to be shifting to natural gas ![](img/char.pdf) and the renewables ![](img/char.pdf). The animated transition morphs the lines into their respective areas in the second chart.

#### Energy B {#sec:energy-b}

The second transition *splits* wind energy ![](img/char.pdf) into different states ![](img/char.pdf). It shows how wind  has become a major energy source in certain (great plains) states and leads to the conclusion that, although the rise of wind energy looks unspectacular on a national scale, growth has been exponential in some places.

#### Energy C {#sec:energy-c}

The third mini-story focuses on the strange stagnation of wind energy ![](img/ctxt.pdf) in California ![](img/char.pdf) after 2013. The third transition first *highlights* wind energy in California ![](img/char.pdf) and then *discloses* the usage proportions ![](img/attr.pdf) of other energy sources ![](img/char.pdf)  in the same state ![](img/ctxt.pdf). A marked rise in solar power ![](img/char.pdf) after 2013 implies that the state has decided to invest in this renewable instead of wind ![](img/char.pdf).

#### Energy D {#sec:energy-d}

The final transition *explores* one of the possible reasons for Californias ![](img/ctxt.pdf) decision to focus on solar energy from 2013 on. Instead of the shares ![](img/attr.pdf) of the individual energy sources  ![](img/char.pdf) it shows their cost ![](img/attr.pdf) . While wind energy ![](img/char.pdf) has been consistently inexpensive, the price of solar power ![](img/char.pdf) has fallen substantially over time. It even reached the price level of wind energy in 2013. Which implies that Californias focus on solar rather than wind energy might have economic reasons.


The presented stories were implemented with web technologies and viewable in the broweser. A more in-depth discussion of the implementation can be found in chapter [-@sec:implementation]. The online versions of the stories are referenced in appendix \ref{appendix-story}.



## Conditions

The main goal of the experiment was to find differences between *animated* and *static* transitions. We, therefore, chose this to be the *independent variable*. We counterbalanced for some of the confounders like *topic* and visualization *design* by using the two different stories with the different designs presented before. This has resulted in the following within-subject design:

| **Condition** | **Story 1**            | **Story 2**            |
| --------- | ------------------ | ------------------ |
| **1**     | Mortality static   | Energy animated    |
| **2**     | Mortality animated | Energy static      |
| **3**     | Energy static      | Mortality animated |
| **4**     | Energy animated    | Mortality static   |


## Data collection {#sec:data-collection}

### Questionnaire {#sec:questionnaire}

#### Conclusion {#sec:qRelationship}

The questionnaire at the end of each mini-story asked participants the following question: "What is your overall conclusion from the two charts on this page?". It then provided a free-form text field for them to provide their answer. We asked for answers that were at least three sentences long. The wording was chosen so as to not hint at a relation between the two charts. We have included two other questions that served as attention and understanding checks. The full questionnaire can be found in appendix \ref{appendix-questionnaire}.

#### Focused attention {#sec:focused-attention}

The questionnaire also included a subset of the validated *user engagement scale* questionnaire. The scale measures multiple attributes like *focused attention*, *perceived usability*, *aesthetics* or *reward* that together form what is known as *engagement* in the literature [@Obrien-18:practicalapproach]. But even the short questionnaire contains twelve questions which would have been too long to ask after each transition. We, therefore, decided to use a sub-scale of the *user engagement scale* that measures *focused attention*. The reason to use *focused attention* was that it was found to be the factor that explained most of the variance in O'Brien et al.'s analysis [@Obrien-18:practicalapproach]. Also, the questions skew towards the positive (compared to the other option, *perceived usability*) and we did not want to negatively prime the participants.

### Survey {#sec:sruvey}

The survey at the end of the experiment was introduced to get a sense of the demographics and some additional information that might help to explain outliers.

#### Age

In the final survey, we asked the participants about their age to better understand the diversity of the population that was participating in the experiment.

#### Gender

We equally asked the participants about their gender to help us understand how diverse the population was.

#### Level of education

This would act as a rough proxy for visualization understanding. We assumed certain outliers might potentially be explained by a low level of education.

#### Vision

Equally, if the participants reported weak and uncorrected vision, we could potentially exclude them from the analysis if we found that the factor skewed the results.

#### Colorblindness {#sec:colorblindness}

![The three plates of the Ishihara colorblindness test [@Ishihara-17:ishiharatest] that were presented to participant in the final survey. \label{ishihara-plates}](img/experiment-colorblindness.png)

A final factor we considered for explaining outliers was color blindness. We did not ask participants to report on their colorblindness because not all people who are colorblind know about it. Instead, we presented them the three plates from the Ishihara colorblindness test shown in figure \ref{ishihara-plates}. The plates we have selected, tested for red-green blindness. The most common form of colorblindness, that affects about 8% of men and 0.4% of women [@-19:colorblindness].

The full survey can be found in appendix \ref{appendix-survey}.

### Passive data collection {#sec:passive-data}

The participants actions on each page were continually monitored. We recorded scrolling, typing and information about the participants browser throughout the experiment.

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

To test the hypotheses ([@sec:hypotheses]) and based on the data collected ([@sec:data-collection]) we have established several measures. 

#### H1: Transitions understanding

The main hypothesis was that the combined benefits of animated transitions would support readers in understanding the relationships between charts. We therefore coded their conclusions ([@sec:qRelationship]) based on the relationship that was implied by each transition ([@sec:mortality-story] and [@sec:energy-story]). This led to a measure called **correct relationship**.

#### H2: Relationship

In addition to coding the *correct relationship*, we also coded if participants assumed any kind of relationship between the two charts in their answer. This measure was called **relationship**.

#### H3: Causality

Whenever the participant perceived a relationship, we also coded if his answer indicated that he assumed that the relationship was causal. We called this measure **causal**.


#### H4: Object constancy

If animated transitions would support object constancy, participants would need fewer transitions to come to their conclusion because their cognitive load would be reduced. We, therefore, measured the **number of transitions** between the two charts. When the transition was animated the participants needed to cross the 10% and then the 90% threshold successively (or the inverse) for it to be counted as one transition.

We presumed that because object constancy would reduce the number of comparisons needed, animation would also lead to a lower **viewing duration**.


#### H5: Highlighting

If animation has a cueing effect, it should focus the participant on certain characters. We predicted therefore that this will lead people to mention fewer characters in their conclusions. The **number of characters mentioned** in each answer was therefore coded. We not only counted characters that were directly visible but also groupings of characters like "green energy sources" ([@sec:our-model]). 


#### H6: Engagement

Engagement was measured by calculating the mean of the answers on the **focused attention** sub-scale of the *user engagement questionnaire* [@Obrien-18:practicalapproach].

We considered **character count** to be another proxy for engagement. As the participants were in a task-oriented setting, we generally expected them to not lose their time with long answers. If answers would turn out to be considerably longer in one of the scenarios, we assumed that it was because it somehow engaged them.

Finally, we have used *sentiment analysis* on the participants answers. We assumed, that if there was a difference in engagement, this might lead to a more confident or positive tone in the answers. To analyze the answers, we have used IBM Watson [@Kaminski-19:scienceservice] which gives ratings for different types of tones in the text. Watson identifies the degree to which a text is *analytical*, *confident*, *tentative*, *fearful*, *joyful* or *sad*.

Because we would not expect highly emotional language in the participants answers, we decided to look further only into the three dimensions: **analytical tone**, **confident tone**, and **tentative tone**.


## Data analysis

### Calculation of measures

#### Total duration

The duration was calculated by excluding times of inactivity. We considered timespans of more than 30 seconds without scrolling or typing to be *inactive time*.

#### Typing time

Typing time was calculated by summing all the times between recorded keystrokes (excluding *inactive time*).

#### Viewing time

This was defined as the *total duration* minus *typing* and *inactive time*. 

#### Scroll position

The scroll positions were normalized to the distance between the beginning of the first chart and the beginning of the second chart. This resulted in values between 0 and 1 indicating the progress in the transition.



#### Transition count

Transition count was calculated based on *scroll position* and *time*. Each time the scroll position passed from lower than 0.1 to greater than 0.9 (or the inverse) subsequently, was counted as one transition.

#### Drawing performance

Each time a chart was redrawn during an animated transition was recorded. Because redrawing was coupled to scrolling, it was not always clear if long gaps indicated that the drawing performance was bad or if it was just the participant who scrolled slowly. A threshold was therefore set at 0.1 seconds. Only redraws that happened within this timespan where considered for calculating the mean drawing performance for each participant and mini-story. Everything below 20 frames per second was considered *slow*.

### Statistical methods

To evaluate how the conditions differed, the *means* of the above measures where compared. To find if the conditions differed significantly a *two-sided t-test* was employed to calculate the *p-value*. Finally, the *means* with their respective *95% confidence intervals* were plotted against each other to give a clearer picture of the distributions. 

The complete analysis can be found in appendix \ref{appendix-dataanalysis}.


## Design choices

While designing the narrative visualizations a lot of small choices needed to be made. Many of them were based on informal testing and observation of test subjects. This section will give brief argumentations for some of the most important decisions. A longer discssion can be found in appendix \ref{appendix-designchoices}.

#### Minimal textual naarrative

While narrative visualization is usually coupled with narrative text ([@sec:introduction]), we have excluded longer texts as a potential confounder from the experiment.

#### Story selection

Because text was excluded, the stories needed to be very visual to be understandable solely based on labels and the title. Also, the stories needed to be about topics that the participants knew something about. This is because contextual knowledge is important to understand transitions ([@sec:comparison]).

##### Chart types

We have chosen very simple time series charts because participants should ideally not fail in understanding the basic charts.


##### Transitions

Transitions were designed so that they would ideally *highlight* the characters they were about morph them into the related characters in the second chart to support *object constancy*. Other than that they did not contain any information to avoid *unfair comparisons* ([@sec:unfair-comparisons]).



## Other factors considered

#### Screen size

To exclude effects that would result from differences in layout and element size, the experiment was designed for a fixed viewport size of 1280px × 720px. Participants with viewports that were smaller than this were blocked from the experiment.

#### Browser capability

Equally, participants with browsers that did not support the technologies we used for the animated transitions were blocked from the experiment. This had the positive side-effect of equally blocking slower browsers.



# Results {#sec:experiment-results}

173 participants started the experiment  and saw the initial explanations. From these 56 provided a final answer code to Amazon Mechanical Turk. But 3 of these participants did not finish the experiment and provided a wrong answer code. They were therefore excluded from the analysis. This leads to a slightly uneven distribution of participants between conditions. See table \ref{table-participants-conditions}.

| Condition    | 1    | 2    | 3    | 4    |
| ------------ | ---- | ---- | ---- | ---- |
| Participants | 13   | 14   | 14   | 12   |

Table: Number of participants per condition. \label{table-participants-conditions}

It took participants on average 8 minutes to answer a mini-story. The maximal duration was 15 minutes. Some participants took breaks of considerable length. While the median *inactive time* was 1.8 minutes, the maximum was 89 minutes. Inactive times where therefore excluded from the analysis.

On average, participants took 52 minutes to complete the experiment. This results in a mean hourly wage of USD 10.40 with a minimum of USD 5.56 for the slowest participant.

We have also found that 7 participants experienced animations with a drawing performance of less than 20 frames per second in a total of 16 mini-stories with animated transitions. This corresponds to about 8% of the samples with animated transitions. The mean frame rate was 41 frames per second.

## Demographics of the participants

Figure \ref{results-demographics} gives an overview of the demographics of the participants.

![An overview of the demographics of the experiment's participants. \label{results-demographics}](img/results-demographics.pdf) 

Because the experiment was conducted on Amazon Mechanical Turk, the participants were quite varied though there was a tendency towards men and younger people. 70% of the respondents had a Bachelor's degree or higher. 

There were no participants who did not have either normal or corrected to normal vision. The Ishihara plates found three colorblind participants. All of them men.


## Differences between the stories {#sec:results-stories}

As discussed in section [-@sec:story-selection], one of the main challenges was to design narrative visualizations that a large part of the participants would understand. Table \ref{table-story-difficulty}  therefore shows the results for different measures by mini-story. 


| **mini-story**                | **e-A** | **e-B** | **e-C** | **e-D** | **m-A** | **m-B** | **m-C** | **m-D** |
| ----------------------------- | ------- | ------- | ------- | ------- | ------- | ------- | ------- | ------- |
| **correct relationship**      | 19%     | 24%     | 19%     | 47%     | 33%     | 14%     | 12%     | 37%     |
| **relationship**              | 37%     | 42%     | 33%     | 62%     | 51%     | 36%     | 18%     | 47%     |
| **causal**                    | 4%      | 8%      | 6%      | 42%     | 42%     | 2%      | 0%      | 31%     |
| **transitions**               | 4.0     | 4.2     | 3.4     | 4.4     | 3.7     | 4.7     | 5.3     | 3.6     |
| **characters mentioned**      | 2.3     | 1.7     | 3.3     | 2.3     | 1.0     | 1.3     | 1.1     | 1.5     |
| **focused attention**         | 2.9     | 3.0     | 3.1     | 3.0     | 3.2     | 3.1     | 3.1     | 3.3     |
| **answer length** **(chars)** | 1417    | 1322    | 1203    | 1244    | 1244    | 1205    | 1226    | 1275    |
| **analytical tone**           | 84%     | 80%     | 79%     | 80%     | 76%     | 76%     | 75%     | 77%     |
| **confident tone**            | 71%     | 83%     | 85%     | 82%     | 77%     | 82%     | 77%     | 75%     |
| **tentative tone**            | 78%     | 82%     | 80%     | 80%     | 77%     | 80%     | 79%     | 76%     |
| **viewing duration**          | 160 s   | 146 s   | 124 s   | 135 s   | 144 s   | 132 s   | 131 s   | 148 s   |
| **typing duration**           | 205 s   | 200 s   | 179 s   | 179 s   | 212 s   | 191 s   | 217 s   | 214 s   |

Table: The measures for the mini-stories indicate very different difficulties. In the heading,  *e* stands for *energy* and *m* stands for *mortality*. \label{table-story-difficulty}


The mini-stories with the highest rate of success (**corrrect relationship** and **relationship**) were *energy D* , *mortality A* and *mortality D*. All of them had also very high rates for **causal** and depicted a cause and effect relationship ([@sec:mortality-story] and [@sec:energy-story]). *mortality C* had the lowest success rate and also the highest **transition count**. In general more **characters** were mentioned for the  *energy* story which did contain more characters in general ([@sec:energy-story]).

There were no clear differences in **focused attention** and **answer length** between the stories. Participants had a slightly more **confident** and **analytical** tone in the *energy* story. In both stories, the **viewing duration** was higher for the first mini story. There were no clear patterns for the typing durations.



## Hypotheses

We have calculated the *mean*, *95% confidence interval* and the *p-value* according to a two-sided t-test for each transition type and measure. The results are displayed in figure \ref{hypotheses-results}.

 ![Means, confidence intervals and p-values for the different measures. \label{hypotheses-results}](img/results-hypotheses.pdf) 

#### H1: Transition understanding

We did not find any indication that animation resulted in a better understanding of the relationships that the author wanted to convey. The main hypothesis of the experiment therefore needs to be rejected.

#### H2: Relationship

Neither did we find that animated transitions implied a relationship between the charts more often than static transitions. Animation therefore does not seem to imply a relationship between two charts.

#### H3: Causality

The results for this measure come close to the 0.05 threshold for significance. But the share of positive samples (causal relationships mentioned) is very low. This means that this result is not very robust.

#### H4: Object constancy

Participants who saw animated transitions did not switch back and forth between the charts as often as those who saw the static transitions. The difference is highly significant.

On the other hand the *viewing durations* did not differ significantly between animated and static transitions.

*Typing duration* was included for completeness and did not differ significantly between transition types.

#### H5: Highlighting

The results show that participants who saw static transitions mentioned significantly more characters in their answers.

#### H6: Engagement

Participants did not self-evaluate their *focused attention* significantly higher when they saw animated transitions. Neither did they differ in their tone. But the results for the tone need to be taken with a grain of salt. The Watson API [@Kaminski-19:scienceservice] only returns results if the values are higher than 50%. *Confidence* ratings were, therefore, only available for 14% , *analytical* ratings for 69%  and  *tentativeness* ratings for 37% of the answers.

There was a slight and significant difference of *answer lengths* in favor of animated transitions. 



# Discussion

As presented in section [-@sec:experiment-results], animation does not increase readers *understanding* of transitions between charts. This result is unintuitive for most people because animated transitions "feel" like they help. But our results are consistent with what previous authors found ([@sec:animation]). They found that animation only leads to better understanding when the display is not abstract (as our charts). Even though elements in the chart can be conceptualized as *characters* there is not natural way they should be animated for the types of transitions that we have tested in the experiment. We believe that for similar reasons, animated transitions did not specifically evoke  *relationship*s between abstract elements in charts.

We think the result that animation does not imply *causality* needs further consideration because it contradicts findings discussed in section [-@sec:causality]. Here it is important to note that only three mini-stories contained causal relationships. This led to a very low number of positive samples and it makes sense that readers would not see causality where there is none. We therefore consider the results on causal transtions to be inconclusive.

Readers who saw animated transitions did not need to switch back and forth as often as those who saw static transitions while their *understanding* stayed at the same level. This is a strong indication that animated transitions indeed provide the benefit of *object constancy* as discussed in section [-@sec:object-constancy]. But *viewing times* did not differ significantly. A potential explanation is that while readers transition less, they spend more time on animated transitions moving within the thresholds. 

The *highlighting* effect of animation was not disputed in the literature and our experiment also found it. Interestingly, even though it focused readers on the "right characters" it did not lead them to a better understanding of the characters' relationship. This indicates that the difficulty in the transitions did not lie in the number of characters, which generally was within the limits of working memory. The main difficulties were more probably in the *size of the characters* and the *complexity of their relationship* ([@sec:comparison]). Which is a positive finding about the experiments design with regard to the main hypothesis.

Although many authors are convinced that animation leads to higher *engagement* ([@sec:engage]) we have found almost no evidence for this. Our results agree therefore with [@Amini-18:hookeddata] who was the only author in our review who had used a validated scale. Still, these results are counter-intuitive even for us. One explanation might be that we have selected the wrong sub-scale. But the lack of a difference in *tone*, even with the reservations discussed, also indicates that the animation did indeed not affect the participants attitude or mood. A better explanation therefore might be that the participants were in a task-oriented setting and  the goal of "enjoying" the animation was secondary to them.

An interesting observation is related to the results for individual mini-stories. It seems that transitions that communicate cause and effect relationships are much easier for readers to understand. This is even the case when the transition in itself is rather complex like in *mortality A*. This indicates that transitions are interpreted on an even higher, more conceptual level than we had assumed.

We conclude that while animated transitions facilitate object constancy and highlighting, it is not  easy to operationalize these two strengths to support understanding of transitions between charts. We believe that because charts and their relationships are *abstract*, animation is generally not *congruent*([@sec:congruence]). Therefore, the pre-processing mechanisms that humans have for motion in the real world can not be used to facilitate the interpretation of abstract relationships.



# Limitations {#sec:limitations}

The main limitation of the proposed experiment is that it did not specifically consider the transition types described in  ([@sec:corpus-analysis]). This has led to transitions that combine multiple types like *mortality A* ([@sec:mortality-story]) and makes it hard to relate the results directly to the concepts that have been established in section [-@sec:perception-oriented]. It is therefore possible that animated transitions are indeed beneficial for very specific types of transitions. We did not test for specific transitions types, because this would have required a more complex experiment for which we lacked the resources. A second reason is, that the theory developed in parallel to the creation of the experiment, which resulted in a lack of time.

A second very important limitation is the high difficulty of the transitions in the experiment. Ideally, each story should have rates of about 60% for the *relationship* measure and around 40% for the *understanding* measure. Only three stories came close to these values. We have also found ordering effects in the results. It is therefore not ensured the all mini-stories are comparable.

A third limitation is the selection of measures and the interpretation of the data. Most hypotheses could only be measured via a proxy variable. Object constancy for example via the transition count. This introduces ambiguity to the interpretation of the results. Additionally, many of the measures were based on a coders interpretation of the answer. At the time of writing most of the answers were only coded by a single person which introduces a lot of subjectivity (although we made sure that the coder did not know which transition an answer corresponded to).

A fourth limitation is the performance of the animated transitions. We did not exclude the 8% of animated transition sessions that were classified as slow in our analysis because this would have strongly skewed that distribution between the groups. But it is likely that lagging transitions had a negative impact on many of our measures.

The results are also limited by the demographic of the participants. They might not apply to readers from other cultural backgrounds and with a different level of education. Also, there were very few old people in the study. The results in a way therefore are only indicative for the "high performers": young, very well educated Americans.

Finally, although we have counterbalanced the designs, the results may not generalize to other visualization designs than the two time series charts tested.
