## Introduction to Probability



### Lecture 1 Definition of Probability

September 27, 2019



#### Probability

Probability space $(\Omega, \mathcal{F}, \mathbb{P})$ is a triple consisting of a sample space $\Omega$ (set of all possible outcomes of our experiment), a set of events $\mathcal{F}$ (all possible subsets of $\Omega$), and the probability measure $\mathbb{P}: \mathcal{F} \to [0, 1]$.



##### Properties

1) $\mathbb{P}(\varnothing) = 0$ and $\mathbb{P}(\Omega) = 1$

2) Given that $(A_n)_{n = 1}^{\infty} \subseteq \mathcal{F}$, then $\mathbb{P}(\bigcup\limits_{n = 1}^{\infty} A_n) = \displaystyle \sum \limits_{n = 1}^{\infty} P(A_n)$ for $A_i \cap A_j = \varnothing \text{, } i \neq j$.

3) Given that $(A_n)_{n = 1}^{m} \subseteq \mathcal{F}$, then $\mathbb{P}(\bigcup\limits_{n = 1}^{m} A_n) = \displaystyle \sum \limits_{n = 1}^{m} P(A_n)$ for $A_i \cap A_j = \varnothing \text{, } i \neq j$.



##### Example: Flip a fair coin.

1) Sample space $\Omega = \{\text{H}, \text{T}\}$

2) Set of events $\mathcal{F} = \{\varnothing, \{\text{H}\}, \{\text{T}\}, \{\text{H, T}\} \}$

3) Probabilty $\mathbb{P}(\text{H}) = \mathbb{P}(\text{T}) = \displaystyle \frac{1}{2}$



**Remark**: If $\Omega$ is finite, then $\mathcal{F}$ is the set of all subsets of $\Omega$.



#### Multiple Events

Let $(\Omega_1, \mathcal{F}_1, \mathbb{P}_1)$ and $(\Omega_2, \mathcal{F}_2, \mathbb{P}_2)$ be two sample spaces.

Let $(\Omega_3, \mathcal{F}_3, \mathbb{P}_3) = (\Omega_1, \mathcal{F}_1, \mathbb{P}_1) \times (\Omega_2, \mathcal{F}_2, \mathbb{P}_2)$ be the third sample space.

1) $\Omega_1 \times \Omega_2 = \{(\omega_1, \omega_2) \vert \omega_1 \in \Omega_1, \omega_2 \in \Omega_2\}$

2) $\mathcal{F_1} \times \mathcal{F_2} = \{(A, B) \vert A \in \mathcal{F}_1, B \in \mathcal{F}_2 \}$



##### Example: Flip a fair coin twice.

$\mathbb{P} (\{\text{H, H} \}) = \mathbb{P}_1 (\{\text{H}\}) \cdot \mathbb{P}_2 (\{\text{H}\}) = \displaystyle \frac{1}{4}$

$\mathbb{P} (\{\text{H, T} \}) = \displaystyle \frac{1}{4}$

$\mathbb{P} (\{\text{T, H} \}) = \displaystyle \frac{1}{4}$

$\mathbb{P} (\{\text{T, T} \}) = \displaystyle \frac{1}{4}$



##### Example: Roll a fair $6$-sided dice twice.

$\Omega = \{\omega \vert \omega \text{ is an outcome} \}$

$\mathbb{P}(\omega) = \displaystyle \frac{1}{6} \times \frac{1}{6} = \frac{1}{36}$

$\mathbb{P}(A) = \displaystyle \frac{\#(A)}{36}$ for $A \in \mathcal{F}$



Let $A = \text{The sum of two rolls is 8}$.

Then, $A = \{(2, 6), (3, 5), (4, 4), (5, 3), (6, 2)\}$.

Therefore, $\mathbb{P}(A) = \displaystyle \frac{5}{36}$.



#### Introduction to Random Sampling

##### Ordered outcomes, WITH replacement

Urn has $n$ balls, labeled as $1, 2, ..., n$.

Assume $3$ draws, with replacement.

$\Omega = \{(a, b, c) \vert a, b, c \in [1, 2, ..., n] \}$

$\mathbb{P}(\omega) = \displaystyle \frac{1}{n^{3}}$



##### Ordered outcomes, WITHOUT replacement

Urn has $n$ balls, labeled as $1, 2, ..., n$.

Assume $k$ draws ($k \leq n$), without replacement.

$$
\begin{aligned}
\# (\Omega) & = n \cdot (n - 1) \cdot (n - 2) \cdot ... \cdot (n - (k - 1)) \\ & = (n)_k \\ & = \displaystyle \frac{n!}{(n - k)!}
\end{aligned}
$$




### Lecture 2 Random Sampling

September 30, 2019



Experiment $\to$ Outcomes $\Omega = \{\omega \vert \omega \in \Omega \}$ assume $\Omega$ is finite

In this case, if we know $P(\omega)$ for each $\omega \in \Omega$ then we know $P(A)$ for each $A \in \mathcal{F}$.

$P(A) = P(\bigcup \limits_{\omega \in A} \{\omega \}) = \displaystyle \sum \limits_{\omega \in A} P(\omega)$



#### Uniform Random Sampling

$P(\omega) = \displaystyle \frac{1}{\# (\Omega)}$

$P(A) = \displaystyle \frac{\#(A)}{\#(\Omega)}$



##### Draw with replacement, order matters

Urn contains balls labeled $1$ through $n$, record the result of $k$ draws in order.

$\Omega = \{1, 2, ..., n\}^k = \{(a_1, a_2, ..., a_k) \vert a_i \in [n] \}$

$[n] = \{1, 2, ..., n\}$

$\# (\Omega) = n^k$



What is the probability that you never draw an even numbers in $k$ draws?

$n$  = $2m$ for $m \in Z$

$A = \{(a_1, a_2, ..., a_k) \vert a_i \in [n] \text{ is odd} \}$

$\# (A) = \displaystyle (\frac{1}{2} \cdot 2m)^k = m^k$

$P = \displaystyle \frac{m^k}{(2m)^k} = \frac{1}{2^k}$



##### Draw without replacement, order matters

Urn contains balls labeled $1$ through $n$, record the result of $k$ draws in order.

$\Omega = \{(a_1, a_2, ..., a_k) \vert a_i \in [n] \text{ and } a_i \neq a_j \text{ if } i \neq j \}$

$\# (\Omega) = (n)_k = \displaystyle \frac{n!}{(n - k)!}$



##### Draw without replacement, order does not matter

Urn contains balls labeled $1$ through $n$, draw $k$ balls.

$n = 4$ and $k = 2$, then $\Omega = \{(1, 2), (1, 3), (1, 4), (2, 3), (2, 4), (3, 4) \}$



In general, $\# (\Omega) = \displaystyle \frac{n!}{(n - k)! k!} = {n \choose k}$

$P(\omega) = \displaystyle \frac{1}{\displaystyle {n \choose k}}$



$11$ friends decide to form a soccer team, but no one wants to be the goalie. The friends decide to choose the goalie uniformly at random at each game. What is the probability that Todd is picked up for the first and second game and Yuriy the third?

*Solution*. Sampling with replacement, order matters

$P = \displaystyle \frac{1}{11} \cdot \frac{1}{11} \cdot \frac{1}{11} = \frac{1}{11^3}$



There are $3$ positions on the team: captain, co-captain, or equipment manager. Can't be more than one (without replacement). What is the probability that Todd is captain, Yuriy is co-captain, and Ben is equipment manager (order matters)?

*Solution.* $P = \displaystyle \frac{1}{11} \cdot \frac{1}{10} \cdot \frac{1}{9} = \frac{1}{990}$



$3$ strikers chosen for team (order does not matter)

$P = \displaystyle \frac{1}{\displaystyle {11 \choose 3}}$



What is the probability that Todd is picked as a striker?

$P = \displaystyle \frac{\displaystyle {10 \choose 2} \cdot {1 \choose 1}}{\displaystyle {11 \choose 3}}$

$A = \{\text{Todd is a striker} \} \subseteq \Omega$

$\# (A) = \displaystyle {10 \choose 2}$



Urn with $10$ red, $15$ blue, $5$ green balls. $5$ balls are drawn at random. What is the probability of $3$ red and $2$ green balls drawn?

*Solution*. $\# (\Omega) = \displaystyle {30 \choose 5}$. This is sampling without replacement.

$\#(A) = \displaystyle {10 \choose 3} \cdot {5 \choose 2} \cdot {15 \choose 0}$

$P(A) = \displaystyle \frac{\displaystyle {10 \choose 3} {5 \choose 2}}{\displaystyle {30 \choose 5}}$



#### Poker

$2$, $3$, ..., $10$, $\text{J}$, $\text{Q}$, $\text{K}$, $\text{A}$

Suits: Spade, Diamond, Heart, Clubs



##### Full house: $3$ of one value and $2$ of another value

$P(\text{full house}) = \displaystyle \frac{\displaystyle {13 \choose 1}{4 \choose 3}{12 \choose 1}{4 \choose 2}}{\displaystyle {52 \choose 5}}$



What is $\#(\Omega) = \infty$?

Still have uniform measure.



### Lecture 3 Basic Properties of Probability

October 2, 2019



#### Standard techniques

1) If $A = \bigsqcup \limits_{i = 1}^{\infty} A_i$, then $P(A) = \sum \limits_{i = 1}^{\infty} P(A_i)$ where $\bigsqcup$ is a disjoint union

2) $P(A) + P(A^C) = 1$ since $\Omega = A \bigsqcup A^C$ and $A \bigcap A^C = \varnothing$

3) If $A \subseteq B$, then $P(A) \leq P(B)$

4) $P(A \bigcup B) = P(A) + P(B) - P(A \bigcap B)$

More generally, $\displaystyle P(\bigcup \limits_{i = 1}^{\infty} A_i) = \sum \limits_{i = 1}^{\infty} (-1)^{n + 1} \sum \limits_{S \subseteq [n] \\ \#(S_i) = 1} P(\bigcap \limits_{i \in S} A_i)$



#### De Morgan's Laws

1) $\displaystyle (\bigcup \limits_{i = 1}^{\infty} A_i)^C = \bigcap \limits_{i = 1}^{\infty} A_i ^C$

2) $\displaystyle (\bigcap \limits_{i = 1}^{\infty} A_i)^C = \bigcup \limits_{i = 1}^{\infty} A_i$

3) $\displaystyle A \bigcap (\bigcup \limits_{i = 1}^{\infty} B_i) = \bigcup \limits_{i = 1}^{\infty} (A \bigcap B_i)$

4) $\displaystyle A \bigcup (\bigcap \limits_{i = 1}^{\infty} B_i) = \bigcap \limits_{i = 1}^{\infty} (A \bigcup B_i)$



Given $A \subseteq B$, then 

$$
\begin{aligned}
P(B) & = P((B \bigcap A) \bigcup (B \bigcap A^C)) \\ & = P(B \bigcap A) + P(B \bigcap A^C) \\ & = P(A) + P(B \bigcap A^C)  \geq P(A)
\end{aligned}
$$




#### Inclusion-Exclusion

##### For $n = 2$

Since $A \bigcup B = (A \bigcap B^C) \bigsqcup (A \bigcap B) \bigsqcup (B \bigcap A^C)$,

so 

$$
\begin{aligned}
P(A \bigcup B) & = P(A \bigcap B^C) + P(A \bigcap B) + P(B \bigcap A^C) \\ & = P(A) + P(B \bigcap A^C) + P(A \bigcap B) - P(A \bigcap B) \\ & = P(A) + P(B) - P(A \bigcap B)
\end{aligned}
$$



##### For $n = 3$

$$
\begin{aligned}
P(A_1 \bigcup A_2 \bigcup A_3) & = P(A_1 \bigcup B) \text{ where } B = A_2 \bigcup A_3 \\ & = P(A_1) + P(B) - P(A_1 \bigcap B) \\ & = P(A_1) + (P(A_2) + P(A_3) - P(A_2 \bigcap A_3)) \\ & \qquad - (P(A_1 \bigcap A_2) + P(A_1 \bigcap A_3) - P(A_1 \bigcap A_2 \bigcap A_3)) \\ & = P(A_1) + P(A_2) + P(A_3) - P(A_1 \bigcap A_2) - P(A_2 \bigcap A_3) \\ & \qquad - P(A_1 \bigcap A_3) + P(A_1 \bigcap A_2 \bigcap A_3)
\end{aligned}
$$



An urn contains $10$ red, $15$ green, $20$ blue balls. Draw $5$ at once.

This is *sampling without replacement and the order does not matter*.

$P(\text{At least four of one color}) = P(\geq 4 \text{ red}) + P(\geq 4 \text{ green}) + P(\geq 4 \text{ blue})$

Therefore, 

$$
\begin{aligned}
P & = P(4 \text{ red}) + P(5 \text{ red}) + P(4 \text{ green}) + P(5 \text{ green}) + P(4 \text{ blue}) + P(5 \text{ blue})\\ & = \frac{\displaystyle {10 \choose 4}{35 \choose 1} + {10 \choose 5} + {15 \choose 4}{30 \choose 1} + {15 \choose 5} + {20 \choose 4}{25 \choose 1} + {20 \choose 5}}{\displaystyle {45 \choose 5}}
\end{aligned}
$$



Todd and Yuriy take turns flipping a weighted coin with $P(\text{Head}) = p$ and $P(\text{Tail}) = 1 - p$. If Todd gets Head, he wins, otherwise Yuriy flips. If Yuriy gets Tail, he wins, otherwise Todd flips. Todd flips first.

List the sample space:

$\Omega = \{(\text{H}), (\text{T, T}), (\text{T, H, H}), ..., (\text{T, H, T, H, ..., H}), ..., (\text{T, H, T, H, ..., T, T}) \}$

1) Find the probability that Todd wins the game.

$$
\begin{aligned}
P(\text{Todd wins}) & = P(\bigsqcup \limits_{i = 1}^{\infty} \text{Todd wins on i-th game}) \\ & = \sum \limits_{i = 1}^{\infty} P(\text{Todd wins on i-th game}) \\ & = \sum \limits_{i = 1}^\infty \left[p \cdot (1 - p) \right]^{i - 1} \cdot p \\ & = p \cdot \frac{1}{1 - p(1 - p)} \\ & = \frac{p}{p^2 - p + 1}
\end{aligned}
$$

2) Find the probability that Yuriy wins the game.

We note that 

$$
P(\text{Yuriy wins}) = 1 - P(\text{Todd wins}) - P(\text{Game never ends}).
$$

Since 

$$
\begin{aligned}
P(\text{Game never ends}) & \leq P(\text{Game has NOT ended by the i-th game}) \\ & = (1 - p)^i \cdot p^i \\ & = [p(1 - p)]^i \text{    } \forall i \geq 1,
\end{aligned}
$$

So, as $i \to \infty$, 

$$
P(\text{Game never ends}) = 0.
$$

Therefore, 

$$
\begin{aligned}
P(\text{Yuriy wins}) & = 1 - \frac{p}{p^2 - p + 1} \\ & = \frac{(p - 1)^2}{p^2 - p + 1}
\end{aligned}
$$



**Poker game**

You randomly pick a card from a deck. Find the probability that the card is either a $7$ or a club.

$$
\begin{aligned}
P(\text{7 or a club}) & = P(\text{7}) + P(\text{C}) - P(\text{7} \bigcap \text{C}) \\ & = \frac{1}{13} + \frac{1}{4} - \frac{1}{52} \\ & = \frac{4}{13}
\end{aligned}
$$


Five people call a plumber on one of four randomly chosen days. What is the probability that there is a day where the plumber receives no calls?

*Solution*. Let $A_1$ be the event that the plumber receives no calls on the first day, $A_2$ be the event that the plumber receives no calls on the second day, $A_3$ be the event that the plumber receives no calls on the third day, and $A_4$ be the event that the plumber receives no calls on the fourth day.

Given that $\displaystyle P(A_1 \bigcap A_2 \bigcap A_3 \bigcap A_4) = 0$,

by the inclusion-exclusion,

$$
\begin{aligned}
P(A_1 \bigcup A_2 \bigcup A_3 \bigcup A_4) & = \sum \limits_{i = 1}^{4} P(A_i) - \sum \limits_{1 \leq i < j \leq 4} P(A_i \bigcap A_j) + \sum \limits_{1 \leq i < j < k \leq 4} P(A_i \bigcap A_j \cap A_k) \\ & = \displaystyle {4 \choose 1} (\frac{3}{4})^5 - {4 \choose 2} (\frac{2}{4})^5 + {4 \choose 3} (\frac{1}{4})^5
\end{aligned}
$$



### Lecture 4 Conditional Probability

October 4, 2019



#### Introduction

Your friend has two children. He tells you that the first child is a girl. What is the probability that the second child is a girl?

$P = \displaystyle \frac{1}{2}$

If he tells you that he has one girl. What is the probability that the other child is a girl?

$P < \displaystyle \frac{1}{2}$



#### Definition

Let $B \in \mathcal{F}$ be such that $P(B) > 0$.

Then, in general, $P(A \vert B) = \displaystyle \frac{P(A \bigcap B)}{P(B)} \neq P(A \bigcap B)$.



##### Example

Two urns, first one has all red and second one has all blue.

Then, $P(\text{Urn 1} \vert \text{Red}) = 1$.



##### New Probability Space

<img src="/Users/yang/Library/Application Support/typora-user-images/image-20191227000131575.png" alt="image-20191227000131575" style="zoom:50%;" />


$(\Omega, \mathcal{F}, \mathbb{P}) \to (B, \mathcal{F}_B, P(A \bigcap B))$



Your friend has two children. He tells you that the first child is a girl. What is the probability that the second child is a girl?

$\Omega = \{(B, B), (B, G), (G, B), (G, G) \}$

$B = \{(G, B), (G, G) \}$

So, $P(\text{Second child is a girl} \vert \text{First child is a girl}) = \displaystyle \frac{1}{2}$



If he tells you that he has one girl. What is the probability that the other child is a girl?

$B = \{(G, G), (G, B), (B, G) \}$

$P(\text{Other child is a girl} \vert \text{One girl}) = \displaystyle \frac{1}{3}$



##### Remark

If $\#(\Omega) < +\infty$, uniformly at random, then $P(A \bigcap B) = \displaystyle \frac{\#(A \bigcap B)}{\#(\Omega)}$.



**Exercise**

$10$ red and $10$ blue in urn. Draw $10$.

Let $A$ be the event that there is no red and $B$ be the event that there are more than $5$ blue.

Find $P(A)$ and $P(A \bigcap B)$.



#### Multiplication

In general, $P(A \bigcap B) \neq P(A) \cdot P(B)$.



##### Property of Conditional Property

1) In general, $P(A \bigcap B) = P(A) \cdot P(B \vert A) = P(B) \cdot P(A \vert B)$.

2) $P(A_1 \bigcap ... \bigcap A_n) = P(A_1) P(A_2 \vert A_1) P(A_3 \vert A_1 \bigcap A_2) ... P(A_n \vert A_1 \bigcap ... \bigcap A_{n - 1})$ is true whenever the conditions make sense, i.e., $P(A_1 \bigcap ... \bigcap A_{n - 1}) > 0$.



Draw $4$ cards from a standard deck of cards. What is the probability that I don't have any repeated suits?

*Solution*. Let $A_1$ be Spade, $A_2$ be Diamond, $A_3$ be Heart, and $A_4$ be Clubs.

$$
\begin{aligned}
P(A) & = P(A_1 \bigcap A_2 \bigcap A_3 \bigcap A_4) \\ & = P(A_1) \cdot P(A_2 \vert A_1) \cdot P(A_3 \vert A_1 \bigcap A_2) \cdot P(A_4 \vert A_1 \bigcap A_2 \bigcap A_3) \\ & = \displaystyle 1 \cdot \frac{39}{51} \cdot \frac{26}{50} \cdot \frac{13}{49}
\end{aligned}
$$



##### Birthday Problem

How many people do you need in a room to have probability $\geq \displaystyle \frac{1}{2}$ of a common birthday?

**Hint**. The complementation of at least one common birthday is NO common birthday.

*Solution*.

$$
\begin{aligned}
P(k \text{ people do not have common birthday}) & = P(A_i \bigcap ... \bigcap A_k) \\ & \qquad \text{ for } A_i = \{ \text{Person } i \text{ does not share a birthday } \\ & \qquad \text{ with person 1 through } i - 1\} \\ & = P(A_1) P(A_2 \vert A_1)...P(A_k \vert A_1 \bigcap ... \bigcap A_{k - 1}) \\ & = \displaystyle 1 \cdot \frac{364}{365} \cdot \frac{363}{365} \cdot ... \cdot \frac{365 - (k - 1)}{365}
\end{aligned}
$$

Therefore, 

$$
1 - \frac{(365)_k}{365^k} \geq \frac{1}{2}
$$

We get $k \geq 23$.



#### Law of Total Probability

**Partition**

If 

$$
\Omega = \bigsqcup \limits_{i = 1}^{\infty} A_i,
$$

then 

$$
P(B) = \displaystyle \sum \limits_{i = 1}^\infty P(A_i \bigcap B).
$$

Decompose event $B$, we have 

$$
\begin{aligned}
B & = B \bigcap \Omega \\ & = B \bigcap (\bigsqcup \limits_{i = 1}^\infty A_i) \\ & = \bigsqcup \limits_{i = 1}^\infty (A_i \bigcap B)
\end{aligned}
$$

![image-20191227094038091](/Users/yang/Library/Application Support/typora-user-images/image-20191227094038091.png)



### Lecture 5 Bayes' Rule

October 7, 2019



#### Bayes' Rule

How to account for competing explanations of an event?



##### Formula Induction

$$
\begin{aligned}
P(B \vert A) & = \displaystyle \frac{P(B \bigcap A)}{P(A)} \\ & = \displaystyle \frac{P(A \bigcap B)}{P(A \bigcap B) + P(A \bigcap B^C)} \text{ by the Law of Total Probability} \\ & = = \displaystyle \frac{P(A \vert B) \cdot P(B)}{P(A \vert B) \cdot P(B) + P(A \vert B^C) \cdot P(B^C)} \text{ (This is Bayes' Rule.)}
\end{aligned}
$$



##### Example

Test for crystic fibrosis (CF) gives a positive result $0.9$ of the time if baby has CF, false positive $0.003$, and only $\displaystyle \frac{1}{2500}$ baby has CF.

*Solution*. Let $A = \text{Child has CF}$ and $B = \text{Child test positive}$.

Given that $P(B \vert A) = 0.9$, $P(B \vert A^C) = 0.003$, and $P(A) = \displaystyle \frac{1}{2500}$,

$$
\begin{aligned}
P(A \vert B) & = \displaystyle \frac{P(B \vert A)P(A)}{P(B \vert A)P(A) + P(B \vert A^C)P(A^C)} \\ & = \displaystyle \frac{0.9 \cdot \displaystyle \frac{1}{2500}}{\displaystyle 0.9 \cdot \frac{1}{2500} + 0.003 \cdot \frac{2499}{2500}} \\ & \approx 0.107 > 0.05.
\end{aligned}
$$



##### Prosecutor's Fallacy

$G = \{\text{Suspect is guilty} \}$

$D = \{\text{Suspect is implicated by the DNA} \}$

Given that $P(D \vert G^C) = \displaystyle \frac{1}{100,000}$ and $P(D \vert G) = 1$.

1) If $P(G) = 0.1$, then $P(G \vert D) \approx 0.9991$

2) If $P(G) = \displaystyle \frac{1}{2,000,000}$, then $P(G \vert D) \approx 0.048$



##### Monty Hall Problem

There are $3$ doors obscuring prizes. Behind two of the doors are donkeys, behind one is a car. You pick a door. The host picks one of the doors without a car and that you did not pick to reveal. He then offers you a chance to switch.

Let's define the event first.

$A_1 = \text{Car behind door 1}$		$B_1 = \text{Host reveals door 1}$

$A_2 = \text{Car behind door 2}$		$B_2 = \text{Host reveals door 2}$

$A_3 = \text{Car behind door 3}$		$B_3 = \text{Host reveals door 3}$

Clearly, $P(A_1) = P(A_2) = P(A_3) = \displaystyle \frac{1}{3}$.

Assume you pick the door $1$, the host reveal door $2$, and the car is behind door $3$,

the original probability of prize is 

$$
\begin{aligned}
P(A_1 \vert B_2) & = \displaystyle \frac{P(A_1 \bigcap B_2)}{P(B_2 \bigcap A_1) + P(B_2 \bigcap A_2) + P(B_2 \bigcap A_3)} \\ & = \displaystyle \frac{P(A_1 \bigcap B_2)}{P(B_2 \vert A_1)P(A_1) + P(B_2 \vert A_2)P(A_2) + P(B_2 \vert A_3)P(A_3)} \\ & = \displaystyle \frac{\displaystyle \frac{1}{2} \cdot \frac{1}{3}}{\displaystyle \frac{1}{2} \cdot \frac{1}{3} + 0 \cdot \frac{1}{3} + 1 \cdot \frac{1}{3}} \\ & = \displaystyle \frac{1}{3}
\end{aligned}
$$

so the switch probability is 

$$
P(A_3 \vert B_2) = \displaystyle \frac{2}{3}.
$$

Therefore, switch is better.



###### General rule

Assume $(B_i)_{i = 1}^n \subseteq \mathcal{F}$ for $P(B_i) > 0$ and $\bigsqcup \limits_{i = 1}^n B_i = \Omega$,

then $P(B_1 \vert A) = \displaystyle \frac{P(A \vert B_1)P(B_1)}{\sum \limits_{i = 1}^n P(A \vert B_i)P(B_i)}$.



##### Independence

By the conditional probability, we have $P(B \vert A) = \displaystyle \frac{P(A \bigcap B)}{P(A)}$.



###### Definition

Events $A$ and $B$ are **independent** if and only if $P(B \vert A) = P(B)$.

Equivilently, $P(A \bigcap B) = P(A)P(B)$ if and only if $A$ and $B$ are independent.



###### Interpretation

The occurrence of event $A$ does NOT affect the probability of event $B$.



###### Remark

If events $A$ and $B$ are independent *and* disjoint,

then $P(A \bigcap B) = P(A)P(B)$ and $P(A \bigcap B) = P(\varnothing) = 0$.

Therefore, either $P(A) = 0$ or $P(B) = 0$.

After simplification, we have $\min \{P(A), P(B) \} = 0$.



#### Lecture 6 Independence

October 9, 2019



##### Definition (Revisit)

$A \text{ and } B \in \mathcal{F}$ are **independent** if $P(A \bigcap B) = P(A) P(B)$.



###### Extension: If $P(A) = 0$?

By *monotonicity*, $0 \leq P(A \bigcap B) \leq P(A) = 0$,

so $P(A \bigcap B) = 0$ by *Squeeze Theorem*.

Therefore, $P(A \bigcap B) = P(A) = 0 = P(A) P(B)$.

Hence, $A$ and $B$ are independent if $P(A) = 0$.



###### Extension: If $P(A) = 1$?

Let $A^C$ denotes the complement of $A$.

First note that $P(A^C) = 1 - P(A) 0$ and by *monotonicity* we see that $P(A^C \bigcap B) = 0$.

Therefore, $P(A \bigcap B) = P(A \bigcap B) + P(A^C \bigcap B)$

​                                       $= P((A \bigcap B) \bigcup (A^C \bigcap B))$

​                                       $= P((A \bigcup A^C) \bigcap B)$

​                                       $= P(B) = P(B) P(A)$.

Again, we get $P(A \bigcap B) = P(A) P(B)$ since $P(A) = 1$, which shows that $A$ and $B$ are independent. 



Urn with $10$ red and $10$ blue balls.

Let $A = \text{First draw is red}$ and $B = \text{Second draw is red}$.

Clearly, $P(A) = P(B) = \displaystyle \frac{1}{2}$.

1) *Without* replacement

$A$ and $B$ are NOT independent because $P(A \bigcap B) = \displaystyle \frac{1}{2} \cdot \frac{9}{19} \neq P(A) P(B)$.

2) *With* replacement

$A$ and $B$ are indepnedent because $P(A \bigcap B) = \displaystyle \frac{1}{2} \cdot \frac{1}{2} = P(A) P(B)$.



How did we know $P(B)$ without knowing what the first draw was?

$P(B) = P(A \bigcap B) + P(A^C \bigcap B)$

​           $= \displaystyle \frac{1}{2} \cdot \frac{9}{19} + \frac{1}{2} \cdot \frac{10}{19} = \frac{1}{2}$



###### Remark

If $A$ and $B$ are independent, then the same is trud if I replace $A$ with $A^C$, $B$ with $B^C$, or both.

For example, $P(A^C \bigcap B) = P(B) - P(B \bigcap A)$

​                                              $= P(B) - P(B) P(A)$

​                                              $= P(B) \cdot (1 - P(A))$

​                                              $= P(A^C) \cdot P(B)$



###### $n$ events case

Events $A_1, ..., A_n$ are independent if for any $1 \leq i_1 < ... < i_k \leq n \text{ where } 2 \leq k \leq n$,

then $P(A_{i_1} \bigcap ... \bigcap A_{i_k}) = P(A_{i_1}) \cdot ... \cdot P(A_{i_k})$.



**Remark**

1) This specifies $2^n - n - 1$ equations.

2) Having this for $k = 2$ does not imply independence for $n$, still need the general condition.

*Specification*.

For $3$ events $A_1$, $A_2$, and $A_3$. $A_1$, $A_2$, and $A_3$ are independent if $P(A_1 \bigcap A_2 \bigcap A_3) = P(A_1)P(A_2)P(A_3)$, $P(A_1 \bigcap A_2) = P(A_1) P(A_2)$, $P(A_1 \bigcap A_3) = P(A_1) P(A_3)$, and $P(A_2 \bigcap A_3) = P(A_2)P(A_3)$. To make sure $3$ events are independent, we need to make sure any $2$ of $3$ events are independent as well.

3) If $A_1, ..., A_n$ are independent, then the same is true if I replace any of the event $A_i$ with $A_i ^C$.



Flip $3$ fair coins.

$A_1 = \text{First two flips match}$

$A_2 = \text{First and third flips match}$

$A_3 = \text{Second and third flips match}$

In this case, for $1 \leq i_1 < i_2 \leq 3$, we have $P(A_{i_1} \bigcap A_{i_2}) = P(A_{i_1})P(A_{i_2})$,

but $P(A_1 \bigcap A_2 \bigcap A_3) \neq P(A_1)P(A_2)P(A_3)$.

Therefore, $3$ events $A_1, A_2, A_3$ are not independent.



##### Introduction to Random Variables

###### Definition

A **random variable** $X$ on a sample space $\Omega$ is a function $X: \Omega \to \mathbb{R}$ that assigns to each sample point $\omega \in \omega$, a real number $X(\omega)$.

<img src="/Users/yang/Library/Application Support/typora-user-images/image-20191227104758742.png" alt="image-20191227104758742" style="zoom:50%;" />



###### Probability space

$(\Omega, \mathcal{F}, \mathbb{P}) \to (\mathbb{R}, \mathcal{B}, \mu_X)$

$\mu_X (u) = P(\omega: X(\omega) \in u)$

​             $= P(X^{-1}(\omega))$

**Remark**. $\mathcal{B}$ is *Borel set*, simply, "*nice subsets of $\mathbb{R}$*".



###### Discrete Random Variable

We say that a random variable $X$ is **discrete** if there exists a countable set of values $(r_i)_{i = 1}^\infty$ such that $\sum \limits_{i = 1}^\infty P(X = r_i) = 1$.

$\mu_X (u) = P(X \in u)$

​             $= P(X \in u \text{ and } X = r_i \text{ for some } i)$

​             $= \sum \limits_{i = 1}^\infty P(X \in u \text{ and } X = r_i)$

​             $= \sum \limits_{r_i \in u} P(X = r_i)$



###### Example: Flip $2$ coins

$\Omega = \{\text{(H, H), (H, T), (T, H), (T, T)} \}$

Let $X(\omega) = 2 \cdot \#(\text{H in } \omega) - 2 \cdot \#(\text{T in } \omega)$.

There are $3$ possibilities.

1) $r_1 = 4$			$\displaystyle P(X = 4) = \frac{1}{4}$

2) $r_2 = 0$			$\displaystyle P(X = 0) = \frac{1}{2}$

3) $r_3 = -4$	 	$P(X = -4) = \displaystyle \frac{1}{4}$

In this case, $\mu_X([-5, -3]) = P(X \in [-5, -3])$

​                                               $= P(X = -4)$

​                                               $= \displaystyle \frac{1}{4}$



If $X$ is discrete with values $(r_i)_{i = 1}^\infty$, then its **probability mass function (pmf)** is $p_X (r_i) = P(X = r_i)$.



#### Lecture 7 Random Variables

October 11, 2019



##### Definition (Revisit)

###### Defined by Probability space

$X: (\Omega, \mathcal{F}, \mathbb{P}) \to (\mathbb{R}, \mathcal{B}, \mu_X)$



##### Discrete Random Variable (Revisit)

###### Definition

$X$ is **discrete** if $(r_i)_{i = 1}^\infty$ such that $\sum \limits_{i = 1}^\infty P(X = r_i) = 1 = P(X \in (r_i)_{i = 1}^\infty)$.



###### Probability Mass Function

$p_X (r_i) = P(X = r_i)$



###### Example: Darting

We have a dart board of radius $9$ inches. The board is divided into four parts by three concentric circles of radii $1$, $3$, and $6$ inches. If our dart hits the smallest disk, we get $10$ points, if it hits the next region then we get $5$ points, and we get $2$ and $1$ points for the other two regions. Let $X$ denote the number of points we get when we throw a dart randomly (uniformly) at the board. How can we determine the distribution of $X$?

<img src="/Users/yang/Library/Application Support/typora-user-images/image-20191227224523753.png" alt="image-20191227224523753" style="zoom:50%;" />

*Solution*. Let $R \in [0, 9]$ denote the distance of the dart to the center.

For any $r \in [0, 9]$, we have $P(R \leq r) = \displaystyle \frac{\pi \cdot r^2}{\pi \cdot 9^2}$

​                                                                   $= \displaystyle \frac{1}{81} r^2$

The possible values for $X$ are $1$, $2$, $5$, and $10$.

Then, we can compute the probability mass function of $X$.

$\displaystyle P(X = 10) = P(R \leq 1) = \frac{1}{81}$

$\displaystyle P(X = 5) = P(R \leq 3) - P(R \leq 1) = \frac{8}{81}$

$\displaystyle P(X = 2) = P(R \leq 6) - P(R \leq 3) = \frac{1}{3}$

$\displaystyle P(X = 1) = 1 - P(X = 10) - P(X = 5) - P(X = 2) = \frac{5}{9}$

| $k$        |             $1$             |             $2$             |             $5$              |             $10$             |
| :--------- | :-------------------------: | :-------------------------: | :--------------------------: | :--------------------------: |
| $P(X = k)$ | $\displaystyle \frac{5}{9}$ | $\displaystyle \frac{1}{3}$ | $\displaystyle \frac{8}{81}$ | $\displaystyle \frac{1}{81}$ |



##### Continuous Random Variable

###### Definition

A random variable $X$ is **continuous** if there exists a function $\rho$ such that $P(X \in B) = \displaystyle \int_B \rho(x) \text{ d}x$.

$P(X \in (-\infty, r]) = \displaystyle \int_{-\infty}^r \rho(x) \text{ d}x$



###### Example

1) Let $X: \Omega \to [0, 3]$ be the distance to $(0, 0)$.

Then, $\displaystyle P(X \in (-\infty, r]) = \begin{cases} 0 & \text{if } r < 0 \\ \displaystyle \frac{\pi \cdot r^2}{\pi \cdot 3^2} = \frac{1}{9} r^2 & \text{if } 0 \leq r \leq 3 \\ 1 & \text{if } r > 3 \end{cases}$.

By the *Fundamental Theorem of Calculus*, $\frac{\text{d}}{\text{d}r} \displaystyle \int_{-\infty}^r \rho(x) \text{ d}x = \rho(r)$ if $\rho$ is continuous.

Therefore, $\rho(r) = \begin{cases} 0 & \text{if } r < 0 \\ \frac{2}{9}r & \text{if } 0 \leq r \leq 3 \\ 0 & \text{if } r > 3 \end{cases}$.



2) Consider a point $P = (X, Y)$ chosen uniformly at random inside of the triangle in $\mathbb{R}^{2}$ that has vertices $(1, 0)$, $(0, 1)$, and $(0, 0)$. Let $Z = X + Y$ be the sum of two coordinates of the point.

<img src="/Users/yang/Library/Application Support/typora-user-images/image-20191228130121977.png" alt="image-20191228130121977" style="zoom: 33%;" />

Obviously, the range of $Z$ is $[0, 1]$.

For $t < 0$, $P(Z \leq t) = 0$.

For $t > 1$, $P(Z \leq t) = 1$.

For $0 \leq t \leq 1$, the area formed by all the points $(X, Y)$ such that $X + Y \leq t$ is $\displaystyle \frac{1}{2} t^2$. Normalize the area, we get $\displaystyle P(Z \leq t) = \frac{\displaystyle \frac{1}{2} t^2}{\displaystyle \frac{1}{2} \cdot 1^2} = t^2$.

Therefore, $P(Z \leq t) = \begin{cases} 0 & t < 0 \\ t^2 & 0 \leq t \leq 1 \\ 1 & t > 1 \end{cases}$ and its density is  $\rho_Z (t) = \begin{cases} 0 & t < 0 \\ 2t & 0 \leq t \leq 1 \\ 0 & t > 1 \end{cases}$.



###### Remark

1) *Density* corresponds to *CONTINUOUS* random variable.

2) *PMF* corresponds to *DISCRETE* random variable.



##### Cumulative Distrubution Function (CDF)

###### Definition

If $X$ is a random variable, then its CDF is $F_X: \mathbb{R} \to [0, 1]$

​                                                                                   $r \mapsto P(X \in (-\infty, r])$



###### CDF for Discrete Random Variable

The connection between the probability mass function and the cumulative distribution function of a discrete random variable is $F_X (s) = P(X \leq s) = \sum \limits_{k: k \leq s} P(X = k)$ where the sum extends over those possible values $k$ of $X$ that are less than or equal to $s$.



Given that $x_1 < x_2 < ... < x_k$, we have $\sum \limits_{i = 1}^k P(X = x_i) = 1$.

Let $P(X = x_i) = p_i$.

Then, $F_X (r) = P(X \leq r) = \begin{cases} 0 & \text{if } r < x_1 \\ p_1 & \text{if } x_1 \leq r < x_2 \\ p_1 + p_2 & \text{if } x_2 \leq r < x_3 \\ ... & \text{if } ... \\ \sum \limits_{i = 1}^k p_i & \text{if } x_k \leq r \end{cases}$.

<img src="/Users/yang/Library/Application Support/typora-user-images/image-20191228133550731.png" alt="image-20191228133550731" style="zoom:50%;" />



###### Properties

A random variable is *discrete* if and only if its CDF is *piecewise constant* and the points of discontinuities are the values that the variable $X$ takes.

1) $\lim \limits_{r \to \infty} F_X (r) = 1$

2) $\lim \limits_{r \to \infty} P(X \leq r) = 1$

3) $\lim \limits_{r \to -\infty} F_X (r) = 0$

4) If $r \leq s$, then $F(r) \leq F(s)$ by the *monotonicity*

5) Right continuous: $\lim \limits_{r \to r_0^+} F(r) = F(r_0)$ and $\lim \limits_{r \to r_0^+} P(X \leq r) = P(X \leq r_0)$



###### CDF for Continuous Random Variable

A random variable is *continuous* if and only if its CDF is continuous and is differentiable at all but finitely many points, in which $\rho = F_X '$.



For a *continuous* random variable with density function $f$, the connection between the CDF $F$ and the density function $f$ is $F_X (t) = P(X \leq t) = \displaystyle \int_{-\infty}^t f(x) \text{ d}x$.

<img src="http://prob140.org/textbook/images/Chapter_15/01_Density_and_CDF_9_0.png" alt="img"  />



##### Probability Density Function (PDF)

###### Definition

Let $X$ be a **continuous** random variable. If function $f: \mathbb{R} \to \mathbb{R}$ satisfies $P(X \leq b) = \displaystyle \int_{-\infty}^b f(x) \text{ d}x$, then $f$ is a probability density function of $X$.

For $B \subseteq \mathbb{R}$, $P(X \in B) = \displaystyle \int_B f_X (x) \text{ d}x$.



###### Example

Let $X$ be the distance to the origin from a random point on a unit disk.

The CDF of $X$ is $P(X \leq r) = \begin{cases} 0 & r < 0 \\ r^2 & 0 \leq r \leq 1 \\ 1 & r > 1\end{cases}$.

Differentiating it, we get the PDF of $X$ is $\rho_X (r) = \begin{cases} 0 & r < 0 \\ 2r & 0 \leq r \leq 1 \\ 0 & r > 1 \end{cases}$.



##### Uniform Distribution on $[a, b] \subseteq \mathbb{R}$

###### Definition

Let $a, b \in \mathbb{R}$ with $a < b$. $X$ has a *uniform distribution* on $[a, b]$ (denoted as $X \sim \text{Unif}[a, b]$) if its <u>probability density function</u> is given by $f_X (x) = \begin{cases} 0 & x < a \\ \displaystyle \frac{1}{b - a} & a \leq x \leq b \\ 0 & x > b \end{cases}$.



If $X \sim \text{Unif}[a, b]$ and $[c, d] \subset [a, b]$, then $P(c \leq x \leq d) = \displaystyle \int_c^d \frac{1}{b - a} \text{ d}x = \frac{d - c}{b - a}$.



###### Example

1) Let $Y$ be a uniform random variable on $[-2, 5]$. Find the probability that its absolute value is at least $1$.

*Solution*. $P(\lvert Y \rvert \geq 1) = P(Y \in [-2, -1] \bigcup [1, 5])$

​                                     $= P(-2 \leq Y \leq -1) + P(1 \leq Y \leq 5)$

​                                     $= \displaystyle \frac{1}{7} + \frac{4}{7} = \frac{5}{7}$



2) Let $X$ be a $\text{Unif}[1, 3]$ random variable. Find the cumulative distribution function of $X$.

*Solution*. Find the probability density function first.

Clearly, the PDF of $X$ is $\rho_X (s) = \begin{cases} 0 & s < 1 \\ \frac{1}{2} & 1 \leq s \leq 3 \\ 0 & s > 3 \end{cases}$.

Then, the CDF of $X$ is $F_X (s) = \begin{cases} 0 & s < 1 \\ \displaystyle \frac{s - 1}{2} & 1 \leq s \leq 3 \\ 1 & s > 3 \end{cases}$.



**Revisit**.

For *any* random variable $X$, we have $F_X (r) = P(X \leq r)$.

1) *Monotone increasing*: if $x \leq t$, then $F_X (s) \leq F_X (t)$.

2) $\lim \limits_{r \to -\infty} F_X (r) = 0$ and $\lim \limits_{r \to \infty} F_X (r) = 1$

3) If $X$ is a *continuous* random variable, then $F_X $ is a *continuous* function.



**Application: Infinitesimal Method**

Suppose that a random variable $X$ has density function $\rho$ that is continuous at a point $a$.

Then for small $\varepsilon > 0$, $P(a < X < a + \varepsilon) \approx f(a) \cdot \varepsilon$

$\displaystyle \lim \limits_{\varepsilon \to 0} \frac{P(a < X < a + \varepsilon)}{\varepsilon} = \lim \limits_{\varepsilon \to 0} \frac{1}{\varepsilon} \displaystyle \int_a^{a + \varepsilon} f(x) \text{ d}x = f(a)$



#### Lecture 8 Probability Distributions

October 14, 2019



##### Cumulative Distribution Function (Revisit)

Let $X$ be a random variable.

Its CDF is $F_X: \mathbb{R} \to [0, 1]$

​                           $s \mapsto P(X \leq s)$



###### Proposition

1) Given that $s_1 > s_2$, $F_X (s_1) - F_X (s_2) = P(s_2 < X \leq s_1) = P(X \in (s_2, s_1])$.

**Remark**. CDF is *right-continuous*.

2) $\lim \limits_{s \to t^-} F_X (s) = \lim \limits_{s \to t^-} P(X \leq s) = P(X < t)$

$F_X (t) - \lim \limits_{s \to t^-} F_X (s) = P(X \leq t) - P(X < t) = P(X = t)$

Given that $s_1 > s_2$, $\lim \limits_{t \to s_1^-} F_X (t) - F_X (s_2) = P(X \in (s_2, s_1))$.



###### Discrete Random Variable

The CDF is piecewise constant with jumps exactly when the random variable takes a value with positive probability.



###### Continuous Random Variable

$\displaystyle \int_a^b \rho_X (t) \text{ d}t = P(X \in (a, b))$

$\displaystyle \int_{-\infty}^b \rho_X (t) \text{ d}t = P(X \leq b) = F_X (b)$

If $X$ is continuous, $P(X = t) = 0$ for any $t \in \mathbb{R}$.

**Infinitesimal Method**: $\displaystyle \int_{a - \varepsilon}^{a + \varepsilon} \rho_X (t) \text{ d}t = P(X \in (a - \varepsilon, a + \varepsilon))$ for small $\varepsilon > 0$



Assume the distribution of income in tens of thousands of dollars has density $\rho (t) = \begin{cases} 2t^{-2} & t \geq 1 \\ 0 & t < 1 \end{cases}$.

1) Find the probability that a person chosen at random makes between $30$ thousands and $50$ thousands.

*Solution*. $P = \displaystyle \int_3^5 2t^{-2} \text{ d}t$

2) Find the probability that a person chosen at random makes greater than $60$ thousands or less than $35$ thousands.

*Solution*. $P = \displaystyle \int_6^\infty 2t^{-2} \text{ d}t + \int_1^{3.5} 2t^{-2} \text{ d}t$



We have a dart board of radius $2$ inches. The board is divided into two parts by a circle of radii $1$ inches. Let the random variable $X$ be the distance of your throw to the center.

Now, define a new random variable $\displaystyle Y = \begin{cases} 1 - r & \text{if your throw lands in the inner circle} \\ 0 & \text{if your throw lands in the outer circle} \end{cases}$.

1) Find the CDF of $Y$.

*Solution*. By the definition of CDF, we have $F_Y (s) = P(Y \leq s)$.

For $s < 0$, $P(Y \leq s) = 0$.

For $s = 0$, $P(Y \leq s) = P(Y = 0)$

​                                      $= \displaystyle \frac{\pi \cdot 2^2 - \pi \cdot 1^2}{\pi \cdot 2^2} = \frac{3}{4}$

For $0 < s < 1$, $P(Y \leq s) = \displaystyle \frac{3}{4} + \frac{\pi \cdot 1^2 - \pi \cdot (1 - s)^2}{\pi \cdot 2^2}$

​                                              $= \displaystyle \frac{3}{4} + \frac{1 - (1 - s)^2}{4} = \frac{-s^2 + 2s + 3}{4}$

For $s \geq 1$, $P(Y \leq s) = 1$

In conclusion, $\displaystyle F_Y (s) = \begin{cases} 0 & s < 0 \\ \displaystyle -\frac{1}{4} s^2 + \frac{1}{2} s + \frac{3}{4} & 0 \leq s \leq 1 \\ 1 & s > 1 \end{cases}$.

2) Determine if $Y$ is continuous, discrete, or neither. Find PDF or PMF as appropriate.

*Solution*. Neither. First, $Y$ is definitely not a discrete random variable. Then, there is a jump at $s = 0$, so $Y$ is not continuous.



##### Independence

###### If $A_1, ..., A_n$ are events (Revisit)

Events $A_1, ..., A_n$ are independent if for any $1 \leq i_1 < ... < i_k \leq n \text{ where } 2 \leq k \leq n$,

then $P(A_{i_1} \bigcap ... \bigcap A_{i_k}) = P(A_{i_1}) \cdot ... \cdot P(A_{i_k})$.



###### If $X$ and $Y$ are random variables

$X$ and $Y$ are independent if and only if $P(X \in B_1, Y \in B_2) = P(\{X \in B_1 \} \bigcap \{Y \in B_2 \})$

​                                                                                                            $= P(X \in B_1) \cdot P(Y \in B_2)$



**Flip a *fair* coin twice.**

$\Omega = \{\text{(H, H), (H, T), (T, H), (T, T)} \}$

Let $X(\omega) = \begin{cases} 1 & \text{if the first flip is H} \\ 0 & \text{else} \end{cases}$ and $Y(\omega) = \begin{cases} 1 & \text{if the second flip is H} \\ 0 & \text{else} \end{cases}$.

Note that $\displaystyle P(X = 1) = P(X = 0) = P(Y = 1) = P(Y = 0) = \frac{1}{2}$,

also $\displaystyle P(X = 1, Y = 1) = P(X = 1, Y = 0) = P(X = 0, Y = 1) = P(X = 0, Y = 0) = \frac{1}{4}$, corresponding to all the possibilities in the sample space $\Omega$.

We find that $P(X = i, Y = j) = P(X = i) \cdot P(Y = j)$ for $i, j \in \{0, 1 \}$,

therefore the random variables $X$ and $Y$ are independent.



##### Bernoulli Distribution

###### Definition

The *Bernoulli* random variable records the result of a single trial with two possible outcomes.

A random variable $X$ has the Bernoulli distribution with success probability $p \in [0, 1]$ if $P(X = 0) = 1 - p$ and $P(X = 1) = p$, denoted as $X \sim \text{Bernoulli}(p)$.



###### How about a sequence of independent trials?

Assume $X_1, ..., X_n$ are independent identically distributed (i. i. d.).

Given that $X_1 \sim \text{Bernoulli}(p)$.

Now we want to investigate the sum of a sequence of Bernoulli random variables $S_n = X_1 + ... + X_n$.

How to find $P(S_n = m)$ for $0 \leq m \leq n$?



#### Lecture 9 Binomial, Geometric, and Poisson Distributions

October 16, 2019



##### Uniform Distribution (Revisit)

$X \sim \text{Unif}[a, b] \text{ } (a < b)$ if $X$ has the density $\displaystyle \rho_X (t) = \begin{cases} \frac{1}{b - a} & a \leq t \leq b \\ 0 & \text{otherwise} \end{cases}$.

By the definition of *probability*, $\displaystyle \int_{-\infty}^\infty \rho_X (t) \text{ d}t = 1$.



###### Example

Suppose that $X \sim \text{Unif}[-10, 100]$. Let $Y = X^2$. Find the cumulative distribution function of $Y$. Is $Y$ discrete, continuous, or neither? If discrete, find the probability mass function. If continuous, find the probability density function. If neither, explain why.

*Solution*. We want to find its CDF $F_Y (t) = P(Y \leq t)$.

$P(Y \leq t) = P(X^2 \leq t) = P(\lvert X \rvert \leq \sqrt{s})$

Since the domain of $X$ is $-10 \leq X \leq 100$, then the range of $Y$ is $0 \leq Y \leq 10000$.

For $t < 0$, $P(Y \leq t) = 0$.

For $t > 10000$, $P(Y \leq t) = 1$.

For $0 \leq t \leq 10000$, we need to divide this interval into two separate cases, since the interval $[0, 100]$ has two corresponding intervals for $X$.

For $0 \leq t \leq 100$, $P(Y \leq t) = P(\lvert X \rvert \leq \sqrt{t})$

​                                                 $= P(-\sqrt{t} \leq X \leq \sqrt{t})$

​                                                 $= \displaystyle \frac{2\sqrt{t}}{110} = \frac{1}{55} \sqrt{t}$

For $100 \leq t \leq 10000$, $P(Y \leq t) = P(-10 \leq X \leq 10) + P(10 \leq X \leq \sqrt{t})$

​                                                          $= \displaystyle \frac{20}{110} + \frac{\sqrt{t} - 10}{110}$

​                                                          $= \displaystyle \frac{1}{11} + \frac{1}{110} \sqrt{t}$

Therefore, the CDF of $Y$ is $\displaystyle F_Y (t) = \begin{cases} 0 & t < 0 \\ \frac{1}{55} \sqrt{t} & 0 \leq t < 100 \\ \frac{1}{11} + \frac{1}{110} \sqrt{t} & 100 \leq t < 10000 \\ 1 & t \geq 10000 \end{cases}$.



##### Independence (Revisit)

###### Condition

Two random variable $X$ and $Y$ are independent if $P(X \in A, Y \in B) = P(X \in A) \cdot P(Y \in B) \text{ } \forall A, B \in \mathcal{B}$.



###### If $X$ and $Y$ are discrete

$X$ and $Y$ are independent if and only if $P(X = a_i, Y = b_j) = P(X = a_i) \cdot P(Y = b_j) \text{ } \forall i, j$.

Given that $\text{range}(X) = (a_i)_{i = 1}^\infty$ and $\text{range}(Y) = (b_j)_{j = 1}^\infty$.

$P(X = a_i \text{ for } a_i \in A, Y = b_j \text{ for } b_j \in B) = P(\bigsqcup \limits_{i = 1}^\infty \bigsqcup \limits_{j = 1}^\infty \{X = a_i \} \bigcap \{Y = b_j \})$

​                                                                           $= \displaystyle \sum \limits_{i = 1}^\infty \sum \limits_{j = 1}^\infty P(X = a_i, Y = b_j)$

​                                                                           $= \displaystyle \sum \limits_{i = 1}^\infty \sum \limits_{j = 1}^\infty P(X = a_i) \cdot P(Y = b_j)$



##### Bernoulli Distribution (Revisit)

$X \sim \text{Bernoulli}(p)$ if $P(X = 0) = 1 - p$ and $P(X = 1) = p$



###### How about $P(S_n = d)$?

Assume $X_1, ..., X_n$ are independent identically distributed (i. i. d.).

Given that $X_1 \sim \text{Bernoulli}(p)$.

Now we want to investigate the sum of a sequence of Bernoulli random variables $S_n = X_1 + ... + X_n$.

$P(S_n = d) = \displaystyle p^d \cdot (1 - p)^{n - d} \cdot {n \choose d}$ for $0 \leq d \leq n$

$\{S_n = d \} = \{d \text{ successes}, n - d \text{ failures} \}$



##### Binomial Distribution

The *binomial distribution* arises from counting successes. Let $S_n$ be the number of successes in $n$ independent trials with success probability $p$. If $X_i$ denotes the outcome of trial $i$, then we define $S_n = X_1 + X_2 + ... + S_n$.



###### Definition

Let $n$ be a positive integer and $0 \leq p \leq 1$. A random variable $X$ has the **binomial distribution with parameters $n$ and $p$** if the possible values of $X$ are $\{0, 1, ..., n \}$ and the probabilities, for $0 \leq d \leq n$, are $P(X_n = d) = \displaystyle {n \choose d} p^d (1 - p)^{n - d}$, denoted as $X \sim \text{Bin}(n, p)$.



###### Example

Baseball player gets a hit $0.3$ of the time. Assume each bat is *independent*.

1) Find the probability that exactly $4$ hits in $10$ bats.

*Solution*. $X \sim \text{Bin} (10, 0.3)$

$P(X = 4) = \displaystyle {10 \choose 4} \cdot 0.3^4 \cdot 0.7^6$

2) Find the probability that at least two hits in $10$ bats.

*Solution*. $P(X \geq 2) = 1 - P(X = 0) - P(X = 1)$

​                                   $= 1 - \displaystyle {10 \choose 0} \cdot 0.3^0 \cdot 0.7^{10} - {10 \choose 1} \cdot 0.3^1 \cdot 0.7^9$

​                                   $= \displaystyle 1 - (\frac{7}{10})^{10} - 3 \cdot (\frac{7}{10})^9$

3) Find the probability that $5 \text{th}$ hit comes on $16 \text{th}$ hit.

*Solution*. The $5 \text{th}$ hit comes on $16 \text{th}$ hit means that exactly $4$ hits in $15$ bats.

Let $Y$ be the number of hits in $15$ bats. $Y \sim \text{Bin}(15, 0.3)$.

$P(Y = 4) = \displaystyle {15 \choose 4} (\frac{3}{10})^4 (\frac{7}{10})^{11}$

Therefore, $P = 0.3 \cdot P(Y = 4)$.



##### Geometric Distribution

Let $N$ be the number of trials needed to see the first success in a sequence of independent trials with success probability $p$. $X \sim \text{Bernoulli}(p)$

Then for any positive integer $d$, $P(N = d) = P(X_1 = 0, X_2 = 0, ..., X_{d - 1} = 0, X_d = 1) = \displaystyle (1 - p)^{d - 1} \cdot p$.

**Remark**.

1) $\text{range} (N) = \mathbb{N} \bigcup \{\infty \}$ and $d \geq 1$

2) $\sum \limits_{d = 1}^\infty P(N = d) = \sum \limits_{d = 1}^\infty (1 - p)^{d - 1} \cdot p$

​                              $= p \cdot \displaystyle \frac{1}{1 - (1 - p)} = 1$



###### Formal Definition 

Let $0 \leq p \leq 1$. A random variable $X$ has the **geometric distribution with success parameter $p$** if the possible values of $X$ are $\{1, 2, 3, . . . \}$ and $X$ satisfies $P(X = d) = \displaystyle (1 - p)^{d - 1} \cdot p$ for positive integers $d$, denoted as $X \sim \text{Geom} (p)$.



#### Lecture 10 Expectation

October 18, 2019



##### Discrete Distributions (Revisit)

###### $X \sim \text{Bernoulli} (p)$

$P(X = 0) = 1 - p$ and $P(X = 1) = p$ with $0 \leq p \leq 1$



###### $X \sim \text{Bin} (n, p)$

$P(X = d) = \displaystyle {n \choose d} p^d (1 - p)^{n - d}$ for $0 \leq d \leq n$



###### $X \sim \text{Geom} (p)$

$P(X = d) = p(1 - p)^{d - 1}$ for $d \geq 1$



##### Poisson Distribution

###### Definition

Let $\lambda > 0$. A random variable $X$ has the **Poisson distribution with parameter $\lambda$** if $X$ is nonnegative integer valued and has the probability mass function $P(X = k) = \displaystyle e^{-\lambda} \cdot \frac{\lambda^d}{d!}$ for $d \in \mathbb{Z}$ and $d \geq 0$, denoted as $X \sim \text{Poisson} (\lambda)$.



###### Example

Assume that car accidents occur <u>on average</u> $1.5$ times per month. Find the probability of $\geq 2$ accidents in a given month.

*Solution*. This is a Poisson distribution. Let $N$ be the number of car accidents in a given month with the parameter $\lambda = 1.5$, then $N \sim \text{Poisson}(1.5)$.

$P(N \geq 2) = 1 - P(N \leq 1)$

​                    $= 1 - P(N = 0) - P(N = 1)$

​                    $= \displaystyle 1 - e^{-1.5} \frac{1.5^0}{0!} - e^{-1.5} \frac{1.5^1}{0!}$

​                    $= \displaystyle 1 - 2.5e^{-1.5}$



##### Expectation of a Discrete Random Variable (Mean)

The *expectation* of a *discrete* random variable is defined by $\mathbb{E}[X] = \displaystyle \sum \limits_{k} kP(X = k)$ where the sum ranges over all the possible values $k$ of $X$. The expectation is the weighted average of the possible outcomes, where the weights are given by the probabilities.



###### $X \sim \text{Bernoulli} (p)$

*Proof*. $\mathbb{E}[X] = 1 \cdot p + 0 \cdot (1 - p)$

​                      $= p$

$\mathbb{E}[X]$ is the *average* case, not necessarily a good bet for any realization. Expectation does Not tell the whole story.

For example, in $P(X = 1) = P(X = -1) = \displaystyle \frac{1}{2}$ if $X = \{1, -1 \}$ and $P(Y = 1000) = P(Y = -1000) = \displaystyle \frac{1}{2}$ if $Y = \{1000, -1000 \}$, the two distributions are totally different.



###### $X \sim \text{Bin}(n, p)$

*Proof*. $\mathbb{E}[X] = \displaystyle \sum \limits_{k = 1}^n k \cdot {n \choose k} \cdot p^k \cdot (1 - p)^{n - k}$

​                     $= \displaystyle \sum \limits_{k = 1}^n k \cdot \frac{n!}{k! (n - k)!} \cdot p^k \cdot (1 - p)^{n - k}$

​                     $= \displaystyle \sum \limits_{k = 1}^n \frac{n!}{(k - 1)!(n - k)!} \cdot p^k \cdot (1 - p)^{n - k}$

​                     $= n \displaystyle \sum \limits_{k = 1}^n \frac{(n - 1)!}{(k - 1)!(n - k)!} \cdot p^k \cdot (1 - p)^{n - k}$

​                     $= np \displaystyle \sum \limits_{k = 1}^n {{n - 1} \choose {k - 1}} \cdot p^{k - 1} \cdot (1 - p)^{n - k}$

​                     $= np[p + (1 - p)]^{n - 1}$ **Remark**. *Binomial Theorem* $(a + b)^m = \displaystyle \sum \limits_{i = 0}^m {m \choose i} \cdot a^i \cdot b^{m - i}$

​                     $= np$



###### $X \sim \text{Geom}(p)$

*Proposition* 1. $X$ is a discrete random variable that only takes non-negative integer values.



*Proposition* 2. $\mathbb{E}[X] = \displaystyle \sum \limits_{k = 1}^\infty P(x \geq k)$

​                                   $= \displaystyle \sum \limits_{k = 1}^\infty k P(X = k)$

​                                   $= \displaystyle \sum \limits_{k = 1}^\infty \sum \limits_{j = 1}^k P(X = k)$

​                                   $= \displaystyle \sum \limits_{j = 1}^\infty \sum \limits_{k = j}^\infty P(X = k)$

​                                   $= \displaystyle \sum \limits_{j = 1}^\infty P(X \geq j)$



*Proof*. $\mathbb{E}[X] = \displaystyle \sum \limits_{k = 1}^\infty P(X \geq k)$

​                     $= \displaystyle \sum \limits_{k = 1}^\infty \displaystyle \sum \limits_{j = k}^\infty p \cdot (1 - p)^{j - 1}$

​                     $= \displaystyle \sum \limits_{k = 1}^\infty p \displaystyle \sum \limits_{j = k}^\infty (1 - p)^{j - 1}$

​                     $= \displaystyle \sum \limits_{k = 1}^\infty p \displaystyle \sum \limits_{j = k}^\infty (1 - p)^{j - k} \cdot (1 - p)^{k - 1}$

​                     $= \displaystyle \sum \limits_{k = 1}^\infty p(1 - p)^{k - 1} \sum \limits_{j = k}^\infty (1 - p)^{j - k}$

​                     $= \displaystyle \sum \limits_{k = 1}^\infty (1 - p)^{k - 1}$

​                     $= \displaystyle \frac{1}{1 - (1 - p)}$

​                     $= \displaystyle \frac{1}{p}$



###### $X \sim \text{Poisson} (\lambda)$

*Proof*. $\mathbb{E}[X] = \displaystyle \sum \limits_{k = 0}^\infty k P(X = k)$

​                     $= \displaystyle \sum \limits_{k = 1}^\infty k \cdot e^{-\lambda} \frac{\lambda^k}{k!}$

​                     $= e^{-\lambda} \displaystyle \sum \limits_{k = 1}^\infty \frac{\lambda^k}{(k - 1)!}$

​                     $= \lambda e^{-\lambda} \displaystyle \sum \limits_{k = 1}^\infty \frac{\lambda^{k - 1}}{(k - 1)!}$

​                     $= \lambda e^{-\lambda} \displaystyle \sum \limits_{k = 0}^\infty \frac{\lambda^{k}}{k!}$

​                     $= \displaystyle \lambda \cdot e^{-\lambda} \cdot e^\lambda$

​                     $= \lambda$



##### Expectation of a Continuous Random Variable

###### Definition

The expectation of a continuous random variable $X$ with density $\rho_X (t)$ is $\mathbb{E}[X] = \displaystyle \int_\mathbb{R} t \cdot \rho_X (t) \text{ d}t$.



###### $X \sim \text{Unif}[a, b] (b > a)$

*Proof*. $\mathbb{E}[X] = \displaystyle \int_a^b t \cdot \frac{1}{b - a} \text{ d}t$

​                     $= \displaystyle \frac{1}{b - a} \cdot \left[ \frac{1}{2} t^2 \right]_a^b$

​                     $= \displaystyle \frac{1}{b - a} \cdot \frac{1}{2} (b^2 - a^2)$

​                     $= \displaystyle \frac{a + b}{2}$



#### Lecture 11 Review

October 21, 2019



##### Problem Set 1



###### Problem 1

Let $(\Omega, \mathcal{F}, \mathbb {P})$ be a probability space.



(a) Suppose $A, B \in \mathcal{F}$ satisfy $\mathbb{P}(A) + \mathbb{P}(B) > 1$. Making no further assumptions on $A$ and $B$, prove that $A \bigcap B \neq \varnothing$.

*Proof*. By the axiom of probability, we have $P(A \bigcup B) = P(A) + P(B) - P(A \bigcap B) \leq 1$,

so $P(A \bigcap B) \geq P(A) + P(B) - 1 > 0$.

Hence, we have $A \bigcap B \neq \varnothing$.



(b) Prove that $A$ is independent from itself if and only if $\mathbb{P}(A) \in \{0, 1\}$.

*Proof*. By the definition of *independence*, $A$ is independent from itself if and only if $P(A \bigcap A) = P(A) \cdot P(A)$.

Since $P(A \bigcap A) = P(A)$, then solve $P(A) = P(A) \cdot P(A)$.

The equation gives us $P(A) = 0 \text{ or } 1$.

Hence, $A$ is independent from itself if and only if $\mathbb{P}(A) \in \{0, 1 \}$.



###### Problem 2

Roll two fair dice repeatedly. If the sum is $\geq 10$, then you win.



(a) What is the probability that you start by winning $3$ times in a row?

*Solution*. Find the probability that roll two fair dice and get the sum $\geq 10$ as the *Bernoulli* parameter first.

$p = P(\text{Roll two fair dice and get greater or equal than 10})$

   $= \displaystyle \frac{1}{36} \#\{(4, 6), (5, 5), (5, 6), (6, 4), (6, 5), (6, 6) \}$

   $= \displaystyle \frac{1}{6}$

Let $X$ be the number of successes after $3$ games with $\displaystyle X \sim \text{Bin} (3, \frac{1}{6})$

$P(X = 3) = \displaystyle {3 \choose 3} (\frac{1}{6})^3 (\frac{5}{6})^0$

​                    $= \displaystyle \frac{1}{216}$

Therefore, the probability that you start by winning $3$ times in a row is $\displaystyle \frac{1}{216}$.



(b) What is the probability that after rolling the pair of dice $5$ times you win exactly $3$ times?

*Solution*. Let $Y$ be the number of successess in $5$ games with $\displaystyle Y \sim \text{Bin} (5, \frac{1}{6})$.

$P(Y = 3) = \displaystyle {5 \choose 3} (\frac{1}{6})^3 (\frac{5}{6})^2$

​                   $= \displaystyle \frac{125}{3888}$



(c) What is the probability that the first time you win is before the tenth roll (of the pair), but after the fifth?

*Solution*. $\displaystyle Z \sim \text{Geom}(\frac{1}{6})$ describes the first winning game.

$P(6 \leq Z \leq 9) = P(Z = 6) + P(Z = 7) + P(Z = 8) + P(Z = 9)$

​                           $= \displaystyle \frac{1}{6} \cdot (\frac{5}{6})^5 + \frac{1}{6} \cdot (\frac{5}{6})^6 + \frac{1}{6} \cdot (\frac{5}{6})^7 + \frac{1}{6} \cdot (\frac{5}{6})^8$

​                           $= \displaystyle (\frac{5}{6})^5 - (\frac{5}{6})^9$

Therefore, the probability that the first time you win is before the tenth roll but after the fifth is $\displaystyle (\frac{5}{6})^5 - (\frac{5}{6})^9$.



###### Problem 3

A box contains $3$ coins, two of which are fair and the third has probability $\displaystyle \frac{3}{4}$ of coming up heads. A coin is chosen randomly from the box and tossed $3$ times.



(a) What is the probability that all $3$ tosses are heads?

*Solution*. Let $A = \{\text{Three heads} \}$ and $B_1 = \{\text{Chosen coin is fair} \}$ and $B_2 = \{\text{Chosen coin is biased} \}$.

Given that $\displaystyle P(A \vert B_1) = (\frac{1}{2})^3 = \frac{1}{8}$, $\displaystyle P(A \vert B_2) = (\frac{3}{4})^3 = \frac{27}{64}$, $\displaystyle P(B_1) = \frac{2}{3}$, and $P(B_2) = \displaystyle \frac{1}{3}$,

then $P(A) = P(A \vert B_1) P(B_1) + P(A \vert B_2) P(B_2)$

​                    $= \displaystyle \frac{1}{8} \cdot \frac{2}{3} + \frac{27}{64} \cdot \frac{1}{3} = \frac{43}{192}$

Therefore, the probability that all $3$ tosses are heads is $\displaystyle \frac{43}{192}$.



(b) Given that all three tosses are heads, what is the probability that the biased coin was chosen?

*Solution*. By the notation in Part (a), we want to find $P(B_2 \vert A)$.

$P(B_2 \vert A) = \displaystyle \frac{P(A \vert B_2)P(B_2)}{P(A)}$

​                 $= \displaystyle \frac{\frac{27}{64} \cdot \frac{1}{3}}{\frac{43}{192}} = \frac{27}{43}$

Therefore, the probability that the biased coin was chosen is $\displaystyle \frac{27}{43}$.



###### Problem 4

Let $X$ be a discrete random variable taking the values $\{1, 2, . . . , n\}$ all with equal probability. Let $Y$ be another discrete random variable taking values in $\{1, 2, ..., n\}$. Assume that $X$ and $Y$ are independent. Show that $\displaystyle \mathbb{P}(X = Y) = \frac{1}{n}$.

**Hint.** You do not need to know the distribution of $Y$ to calculate this.

*Proof*. $P(X = Y) = \sum \limits_{k = 1}^n P(X = Y \vert Y = k) \cdot P(Y = k)$

​                                $= \displaystyle \sum \limits_{k = 1}^n \frac{P(X = k, Y = k)}{P(Y = k)} \cdot P(Y = k)$

​                                $= \sum \limits_{k = 1}^n P(X = k, Y = k)$       **Remark**. You can start here directly

​                                $= \sum \limits_{k = 1}^n P(X = k)P(Y = k)$ since $X$ and $Y$ are *independent*

​                                $= \displaystyle \frac{1}{n} \sum \limits_{k = 1}^n P(X = k)$

​                                $= \displaystyle \frac{1}{n}$



###### Problem 5

Consider a point $P = (X, Y)$ chosen uniformly at random inside of the triangle in $\mathbb{R}^{2}$ that has vertices $(1, 0)$, $(0, 1)$, and $(0, 0)$. Let $Z = \text{max}(X, Y)$ be the random variable defined as the maximum of the two coordinates of the point. For example, if $\displaystyle P = \left(\frac{1}{2}, \frac{1}{3} \right)$, then $\displaystyle Z = \text{max}(X, Y) = \frac{1}{2}$. Determine the cumulative distribution function of $Z$. Determine if $Z$ is a continuous random variable, a discrete random variable, or neither. If continuous, determine the probability density function of $Z$. If discrete, determine the probability mass function of $Z$. If neither, explain why.

**Hint.** Draw a picture.

*Solution*. We want to find the CDF $F_Z (t) = P(Z \leq t)$.

The region $\{Z \leq t \}$ can be interpreted as $\{\max(X, Y) \leq t \} = \{X \leq t \text{ and } Y \leq t \}$.

Find the range of random variable $Z$ first. Clearly, the range of $Z$ is $[0, 1]$.

For $t \leq 0$, $P(Z \leq t) = 0$.

For $t \geq 1$, $P(Z \leq t) = 1$.

The interval $0 \leq t \leq 1$ needs to be splitted into two intervals because $t = \displaystyle \frac{1}{2}$ is a *cutoff* point.

For $0 < t \leq \displaystyle \frac{1}{2}$, the region $\{Z \leq t \}$ is a square of side length $t$.

<img src="/Users/yang/Library/Application Support/typora-user-images/image-20191229215257214.png" alt="image-20191229215257214" style="zoom: 33%;" />

The dark region described as above has the area $t^2$.

Since the whole area has the area $\displaystyle \frac{1}{2} \cdot 1^2 = \frac{1}{2}$, I need to normalize it.

Then, $P(Z \leq t) = \displaystyle \frac{t^2}{\frac{1}{2}} = 2t^2$.

For $\displaystyle \frac{1}{2} \leq t < 1$, the region $\{Z \leq t \}$ is a square with side length $t$ without an isosceles right triangle with side length $t - (1 - t) = 2t - 1$.

<img src="/Users/yang/Library/Application Support/typora-user-images/image-20191229215754804.png" alt="image-20191229215754804" style="zoom:33%;" />

The dark region described as above has the area $t^2 - \displaystyle \frac{1}{2} (2t - 1)^2 = -t^2 + 2t - \frac{1}{2}$.

Normalize it, I get $P(Z \leq t) = -2t^2 + 4t - 1$.

Therefore, the CDF of $Z = \max(X, Y)$ is $F_Z (t) = \begin{cases} 0 & t \leq 0 \\ 2t^2 & 0 < t \leq \frac{1}{2} \\ -2t^2 + 4t - 1 & \frac{1}{2} < t \leq 1 \\ 1 & t > 1 \end{cases}$.

$Z$ is a continuous random variable with density $\rho_Z (t) = \begin{cases} 0 & t \leq 0 \\ 4t & 0 < t \leq \frac{1}{2} \\ -4t + 4 & \frac{1}{2} < t \leq 1 \\ 0 & t > 1 \end{cases}$.



##### Problem Set 2



###### Problem 1

At a political meeting there are $7$ progressives and $7$ conservatives. We choose five people uniformly at random to form a committee (president, vice-president and $3$ regular members).



(a) Let $A$ be the event that we end up with more conservatives than progressives. What is the probability of event $A$?

*Solution*. Let $A_i = \{i \text{ conservatives in the committee} \}$.

Then, $P(A_i) = \displaystyle \frac{\displaystyle {7 \choose i} {7 \choose {5 - i}}}{\displaystyle {14 \choose 5}}$.

Let $A = \{\text{More conservatives than progressives} \}$. $A = A_3 \bigcup A_4 \bigcup A_5$

Then, $P(A) = \frac{\displaystyle {7 \choose 3}{7 \choose 2} + {7 \choose 4}{7 \choose 1} + {7 \choose 5}{7 \choose 0}}{\displaystyle {14 \choose 5}}$.



(b) Let $B$ the event that Ronald, representing conservatives, becomes the president, and Felix, representing liberals, becomes the vice-president. What is the probability of event $B$?

*Solution*. $P(B) = \displaystyle \frac{\displaystyle {12 \choose 3}}{\displaystyle {14 \choose 5} \cdot 4 \cdot 5}$

​                           $= \displaystyle \frac{1}{182}$

**Remark**. $\displaystyle {14 \choose 5} \cdot 4 \cdot 5$ is the number of all possible groups of $5$ people with Ronald as president and Felix as vice-president.

We can compute it as

1) Choose $5$ people out of $14$, then choose among those $5$ president and vice-president.

So, $\#(\Omega) = \displaystyle {14 \choose 5} \cdot 4 \cdot 5 = \frac{14!}{3! \cdot  9!}$

2) Choose president, then vice-president, then $3$ other members.

So, $\#(\Omega) = 14 \cdot 13 \cdot \displaystyle {12 \choose 3} = \frac{14!}{3! \cdot 9!}$

3) Choose $3$ regular members, then (from remaining) choose president and vice-president.

So, $\#(\Omega) = \displaystyle {14 \choose 3} \cdot 11 \cdot 10 = \frac{14!}{3! \cdot 9!}$



###### Problem 2

Let $A$, $B$ be events in a probability space $(\Omega, \mathcal{F}, \mathbb{P})$.

(a) Suppose that $A$, $B$ satisfy $\mathbb{P}(A) + \mathbb{P}(B) > 1$. Making no further assumptions on $A$ and $B$, prove that $A \bigcap B \neq \varnothing$.

*Proof*. By the *axiom of probability*, we have $P(A \bigcup B) = P(A) + P(B) - P(A \bigcap B) \leq 1$,

so $P(A \bigcap B) \geq P(A) + P(B) - 1 > 0$.

Hence, we have $A \bigcap B \neq \varnothing$.



(b) Suppose that $A$, $B$ satisfy $A \bigcap B = \varnothing$. If $A$ and $B$ are independent, what can you say about $\mathbb{P}(A)$ and $\mathbb{P}(B)$?

*Proof*. If $A$ and $B$ are independent, then $P(A \bigcap B) = P(A) \cdot P(B) = P(\varnothing) = 0$.

Therefore, either $P(A) = 0$ or $P(B) = 0$.



(c) Suppose that $\mathbb{P}(A) = 0.5$ and $\mathbb{P}(B) = 0.8$. What possible range of values can $\mathbb{P}(A \bigcap B)$ have?

*Solution*. By the *axiom of probability*, we have $0 \leq P(A \bigcup B) \leq 1$.

By the *inclusion-exclusion*, $P(A \bigcup B) = P(A) + P(B) - P(A \bigcap B)$.

Then, $0.3 \leq P(A \bigcap B) \leq 1$.

Also, by the *monotonicity* $A \bigcap B \subset A$ and $A \bigcap B \subset B$, then $P(A \bigcap B) \leq \min{P(A), P(B)} = 0.5$.

Therefore, $0.3 \leq P(A \bigcap B) \leq 0.5$.



###### Problem 3

Suppose that we have two possibly unfair coins: the first coin takes heads with probability $p \in (0, 1)$ and tails with probability $1 - p$; the second coin takes heads with probability $q \in (0, 1)$ and tails with probability $1 - q$. The coins are independent of each other and consecutive flips are also independent.

Consider the following game. Flip both coins simultaneously. If the coins land on the same side (for example, both land on heads), then you win. Otherwise, then you lose. Let $X$ be the number of times you play the game until you win. For example, $X$ is equal to $1$ if you win on your first play of the game. Determine the probability mass function of $X$.

*Solution*. $P(\text{Win}) = P(\{\text{H, H}\}) + P(\{\text{T, T} \})$

​                                $= pq + (1 - p)(1 - q) = 2pq - p - q + 1$

By the description of random variable $X$, then $X \sim \text{Geom}(2pq - p - q + 1)$.

Therefore, $P(X = k) = (2pq - p - q + 1) \left[1 - (2pq - p - q + 1) \right]^{k - 1} = (p + q - 2pq)^{k - 1} (2pq - p - q + 1)$.



###### Problem 4

Consider a point $P = (X, Y)$ chosen uniformly at random inside of the unit square $[0, 1]^2 = [0, 1] \times [0, 1]$ $= \{(x, y): 0 \leq x, y \leq 1 \}$. Let $Z = \min \left\{X, Y \right\}$ be the random variable defined as the minimum of the two coordinates of the point. For example, if $P = \displaystyle \left(\frac{1}{2}, \frac{1}{3}\right)$, then $Z = \min \displaystyle \left\{\frac{1}{2}, \frac{1}{3} \right\} = \frac{1}{3}$. Determine the cumulative distribution function of $Z$. Determine if $Z$ is a continuous random variable, a discrete random variable, or neither. If continuous, determine the probability density function of $Z$. If discrete, determine the probability mass function of $Z$. If neither, explain why.

*Solution*. We want to find $F_Z (t) = P(Z \leq t)$.

Note that the range of $Z$ is $[0, 1]$.

For $t \leq 0$, $P(Z \leq t) = 0$.

For $0 < t < 1$, the region $\{Z \leq t \}$ is a square with side length of $1$ without a square with side length of $1 - t$.

<img src="/Users/yang/Library/Application Support/typora-user-images/image-20200103142345529.png" alt="image-20200103142345529" style="zoom: 33%;" />

The dark region described as above has the area $1 - (1 - t)^2 = 2t - t^2$.

Then, $P(Z \leq t) = \displaystyle \frac{2t - t^2}{1} = 2t - t^2$.

For $t \geq 1$, $P(Z \leq t) = 1$.

Therefore, the CDF of random variable $Z$ is $F_Z (t) = \begin{cases} 0 & t \leq 0 \\ 2t - t^2 & 0 < t < 1 \\ 1 & t \geq 1 \end{cases}$.

The random variable $Z$ is continuous.

Then differentiating it, the PDF of $Z$ is $\rho_Z (t) = \begin{cases} 0 & t \leq 0 \\ 2 - 2t & 0 < t < 1 \\ 0 & t \geq 1 \end{cases}$.



###### Problem 5

You shoot an arrow (uniformly at random) at a round target of radium $50 \text{ cm}$. If you hit a point at a distance $\leq 10 \text{ cm}$ from the center of the target, you are awarded $10$ points; if the point you hit is between $10$ and $20 \text{ cm}$ from the center, you get $5$ points; if the point you hit is between $20$ and $30 \text{ cm}$ from the center, you get $3$ points; if the point you hit is between $30$ and $40 \text{ cm}$ from the center, you get $1$ point; if you hit a point which is $40 \text{ cm}$ or more from the center, you get $0$ points. Let $X$ be a random variable that gives the total number of points you get after one shot.



(a) Is the random variable $X$ continuous, discrete, neither, or both?

*Solution*. $X$ is discrete, since it has only *finite* number of possible outcomes.



(b) If $X$ is continuous or discrete, compute the PDF or PMF of $X$.

*Solution*.

| $k$        | $0$                          | $1$                          | $3$                          | $5$                          | $10$                         |
| ---------- | ---------------------------- | ---------------------------- | ---------------------------- | ---------------------------- | ---------------------------- |
| $P(X = k)$ | $\displaystyle \frac{9}{25}$ | $\displaystyle \frac{7}{25}$ | $\displaystyle \frac{5}{25}$ | $\displaystyle \frac{3}{25}$ | $\displaystyle \frac{1}{25}$ |



(c) Compute the CDF of the random variable $X$.

*Solution*. We want to find $F_X (t) = P(X \leq t)$. The CDF of $X$ is a step function.

For $t < 0$, $P(X \leq t) = 0$.

For $0 \leq t < 1$, $P(X \leq t) = \displaystyle \frac{9}{25}$.

For $1 \leq t < 3$, $P(X \leq t) = \displaystyle \frac{9}{25} + \frac{7}{25} = \displaystyle \frac{16}{25}$.

For $3 \leq t < 5$, $P(X \leq t) = \displaystyle \frac{16}{25} + \frac{5}{25} = \displaystyle \frac{21}{25}$.

For $5 \leq t < 10$, $P(X \leq t) = \displaystyle \frac{21}{25} + \frac{3}{25} = \frac{24}{25}$.

For $t \geq 10$, $P(X \leq t) = \displaystyle \frac{24}{25} + \frac{1}{25} = 1$.

In conclusion, the CDF for random variable $X$ is $P(X \leq t) = \begin{cases} 0 & t < 0 \\ \displaystyle \frac{9}{25} & 0 \leq t < 1 \\ \displaystyle \frac{16}{25} & 1 \leq t < 3 \\ \displaystyle \frac{21}{25} & 3 \leq t < 5 \\ \displaystyle \frac{24}{25} & 5 \leq t < 10 \\ 1 & t \geq 10 \end{cases}$.



#### Lecture 12 Midterm 1

October 23, 2019



##### Section A



###### Problem 1

When you send a package using USPS, the probability that it will be lost is $10\%$. If the package is delivered, the probability that it will be damaged is $70\%$.



(a) (10 Points) What is the probability that you receive a damaged package?

*Solution*. Let $A = \{\text{Package delivered} \}$ and $B = \{\text{Package damaged} \}$.

Given that $P(A^C) = 0.1$ and $P(B \vert A) = 0.7$,

then $P(A \bigcap B) = P(B \vert A) P(A)$

​                             $= 0.7 \cdot (1 - 0.1) = 0.63$

Therefore, the probability that I receive a damaged package is $0.63$.



(b) (10 Points) What is the probability that you receive a package in good condition?

*Solution*. By Part (a), we have $P(A \bigcap B^C) = P(A) - P(A \bigcap B)$

​                                                                          $= 0.9 - 0.63 = 0.27$

Therefore, the probability that I receive a package in good condition is $0.27$.



###### Problem 2

Joe, Felix and Patrick live in a shared house. Each Sunday each of the tenants chooses uniformly at random and independently of other tenants one part of the house – living room (L), kitchen (K), bathroom (B) or garage (G) – and cleans it during the week that follows (here 'week' means a period of $7$ days starting on Sunday).



(a) (10 Points) What is the probability that the garage is not cleaned during one week?

*Solution*. The experiment can be described as choosing three elements out of four with replacement, so the sample space has $\#(\Omega) = 4^3 = 64$ elements.

Let $A = \{\text{Garage is not cleaned} \} = \{(s_1, s_2, s_3): s_i \in \{\text{Kitchen, Living room, Bathroom} \} \}$.

Then, we get $\#(A) = 3^3 = 27$ and $P(A) = \frac{27}{64}$.

Therefore, the probability that the garage is not cleaned during one week is $\frac{27}{64}$.



(b) (10 Points) What is the probability that the kitchen is cleaned exactly once during one week?

*Solution*. Let $B = \{\text{Kitchen is cleaned exactly once} \}$.

Then, $\displaystyle \#(B) = {3 \choose 1} \cdot 3^2 = 27$ and $P(B) = \frac{27}{64}$.

Therefore, the probability that the kitchen is cleaned exactly once during one week is $\frac{27}{64}$.



(c) (10 Points) What is the probability that during the period of four consecutive weeks the garage is cleaned at least once?

*Solution*. Let $C = \{ \text{Garage is cleaned at least once in 4 weeks} \}$.

We want to find $P(C)$ through its complement $P(C^C)$ where $C^C = \{\text{Garage is not cleaned for 4 weeks} \}$.

By Part (a), we have $P(C^C) = (P(A))^4 = (\frac{27}{64})^4 = (\frac{3}{4})^{12}$.

Then, $\displaystyle P(C) = 1 - (\frac{3}{4})^{12}$.

Therefore, the probability that during the period of four consecutive weeks the garage is cleaned at least once is $\displaystyle 1 - (\frac{3}{4})^{12}$.



###### Problem 3

(25 Points) Certain device was produced in three factories: in California ($50\%$ of all devices), Michigan ($30\%$ of all devices) and Alabama ($20\%$ of all devices). Out of the total number of manufactured devices, $5\%$ are defective. The probability that you buy a device which is manufactured in California and defective is $0.01$. At the same time, $8\%$ of the devices produced in Alabama are defective. You buy the device and it happens to be defective. What is the probability that it was manufactured in Michigan?

*Solution*. Let $A = \{\text{Manufactured in Alabama} \}$, $C = \{\text{Manufactured in California} \}$, $M = \{\text{Manufactured in Michigan} \}$, and $D = \{\text{Defective} \}$.

Given that $P(A) = 0.2$, $P(C) = 0.5$, $P(M) = 0.3$, $P(D) = 0.05$, $P(C \bigcap D) = 0.01$, and $P(D \vert A) = 0.08$.

We want to find $P(M \vert D)$.

By the *Law of Total Probability*, we have $P(D) = P(D \vert A) P(A) + P(D \vert C) P(C) + P(D \vert M) P(M) = 0.05$.

Now, solve $0.08 \cdot 0.2 + 0.01 + P(M \bigcap D) = 0.05$.

$P(M \bigcap D) = P(M \vert D) P(D) = 0.024$

$P(M \vert D) = \displaystyle \frac{0.024}{0.05} = 0.48$

Therefore, the probability that the defective device was manufactured in Michigan is $0.48$.



###### Problem 4

(25 Points) Choose a number $X$ uniformly at random from the interval $[0, 10]$. Then define $Y$ as follows: if the number $X$ is $\leq 6$, then let $Y$ be equal to $X$ divided by $3$; if the number $X$ is $>6$, $Y$ is equal to $X$ multiplied by $2$. Compute the cumulative distribution function of $Y$.

*Solution*. We want to find $F_Y (t) = P(Y \leq t)$.

The range of $Y$ is $[0, 2] \bigcup [12, 20]$.

For $t \leq 0$, $P(Y \leq t) = 0$.

For $0 < t \leq 2$, $P(Y \leq t) = P(0 \leq X \leq 3t)$

​                                            $= \displaystyle \frac{3}{10} t$

For $2 < t \leq 12$, $P(Y \leq t) = P(0 \leq X \leq 6)$

​                                               $= \displaystyle \frac{3}{5}$

For $12 < t \leq 20$, $P(Y \leq t) = P(0 \leq X \leq 6) + P(6 \leq X \leq \displaystyle \frac{t}{2})$

​                                                 $= \displaystyle \frac{3}{5} + \frac{\frac{t}{2} - 6}{10}$

​                                                 $= \displaystyle \frac{1}{20} t$

For $t > 20$, $P(Y \leq t) = 1$

In conclusion, the CDF of $Y$ is $F_Y (t) = \begin{cases} 0 & t \leq 0 \\ \displaystyle \frac{3}{10} t & 0 < t \leq 2 \\ \displaystyle \frac{3}{5} & 2 < t \leq 12 \\ \displaystyle \frac{1}{20} t & 12 < t \leq 20 \\ 1 & t > 20 \end{cases}$.



##### Section C



###### Problem 1

Suppose that you roll a fair 6-sided dice five times.



(a) (3 Points) What is the probability that exactly three of your rolls are even numbers?

*Solution*. Let $X$ be the number of rolls that are even.

This is a *binomial* distribution. $\displaystyle X \sim \text{Bin} (5, \frac{1}{2})$

$P(X = 3) = \displaystyle {5 \choose 3} (\frac{1}{2})^3 (\frac{1}{2})^2$

​                    $= \displaystyle {5 \choose 3} (\frac{1}{2})^5$

Therefore, the probability that exactly three of your rolls are even numbers is $\displaystyle \frac{5}{16}$.



(b) (3 Points) What is the probability that your first roll and your last roll are equal?

*Solution*. Let $A = \{\text{First and last roll are equal} \}$ and $A_i = \{\text{First and last roll are both equal to } i \}$.

The relationship between $A$ and $A_i$ is $A = \displaystyle \bigsqcup \limits_{i = 1}^6 A_i$.

Then, $P(A) = \displaystyle P(\bigsqcup \limits_{i = 1}^6 A_i) = \sum \limits_{i = 1}^6 P(A_i)$

Let $A_i = B_i \bigcap C_i$ where $B_i = \{\text{First roll is } i \}$ and $C_i = \{\text{Last roll is } i \}$.

Now, $P(A) = \displaystyle \sum \limits_{i = 1}^6 P(B_i \bigcap C_i)$

​                     $= \displaystyle \sum \limits_{i = 1}^6 P(B_i) P(C_i)$ since events $B$ and $C$ are **independent**

​                     $= \displaystyle \sum \limits_{i = 1}^6 \frac{1}{6} \cdot \frac{1}{6} = \frac{1}{6}$

Therefore, the probability that the first roll and last roll are equal is $\displaystyle \frac{1}{6}$.



(c) (4 Points) What is the probability that no two of your five rolls are equal?

*Solution*. Let $D = \{\text{No two of five rolls are equal} \}$.

Define a sequence of events $D_i = \{\text{The ith roll does not match any at the earlier rolls} \}$.

Then, $P(D) = P(D_1 \bigcap ... \bigcap D_5)$

​                      $= P(D_1) P(D_2 \vert D_1) P(D_3 \vert D_2 \bigcap D_1) ... P(D_5 \vert D_4 \bigcap ... \bigcap D_1)$

​                      $= \displaystyle \frac{6}{6} \cdot \frac{5}{6} \cdot \frac{4}{6} \cdot \frac{3}{6} \cdot \frac{2}{6}$

Therefore, the probability that no two of your five rolls are equal is $\displaystyle \frac{5}{54}$.



###### Problem 2

Suppose that you have three urns: urn I has $10$ red balls, $5$ blue balls, and $5$ green balls; urn II has $5$ red balls, $10$ blue balls, and $5$ green balls; urn III has $5$ red balls, $5$ blue balls, and $10$ green balls. You pick an urn at random and then you draw three balls from this urn at random without replacement.



(a) (4 Points) What is the probability none of the drawn balls are red?

*Solution*. Let $U_i = \{\text{You select Urn } i \}$ and $V = \{\text{None of the drawn balls are red} \}$.

Then, $P(V) = \displaystyle \sum \limits_{i = 1}^3 P(V \bigcap U_i)$

​                      $= \displaystyle \sum \limits_{i = 1}^3 P(U_i) P(V \vert U_i)$

​                      $= \displaystyle \frac{1}{3} \cdot \frac{{10 \choose 3}}{20 \choose 3} + \frac{1}{3} \cdot \frac{{15 \choose 3}}{20 \choose 3} + \frac{1}{3} \cdot \frac{{15 \choose 3}}{20 \choose 3}$

Therefore, the probability none of the drawn balls are red is $\displaystyle \frac{103}{342}$.



(b) (6 Points) Given that none of the drawn balls are red, what is the probability you picked urn I?

*Solution*. From Part (a), $P(U_1 \vert V) = \displaystyle \frac{P(U_1 \bigcap V)}{P(V)}$

​                                                          $= \frac{\displaystyle \frac{1}{3} \cdot \frac{{10 \choose 3}}{20 \choose 3}}{\displaystyle \frac{1}{3} \cdot \frac{{10 \choose 3}}{20 \choose 3} + \frac{1}{3} \cdot \frac{{15 \choose 3}}{20 \choose 3} + \frac{1}{3} \cdot \frac{{15 \choose 3}}{20 \choose 3}}$

Therefore, the probability I picked Urn I is $\displaystyle \frac{12}{103}$ given that none of the drawn balls are red.



###### Problem 3

(10 Points) Let $(\Omega, \mathcal{F}, \mathbb {P})$ be a probability space. Suppose that $A$ and $B$ are events in $\mathcal{F}$ such that $\mathbb{P}(A \bigcap B) = 1$. Making no further assumption on $A$ and $B$, prove that $A$ and $B$ are independent.

*Proof*. By the *monotonicity*, $P(A \bigcap B) \leq P(A), P(B)$.

By the *axiom of probability*, $0 \leq P(A), P(B) \leq 1$.

Since $P(A \bigcap B) = 1$, bound the $P(A \bigcap B)$, we get $P(A \bigcap B) = 1 \leq P(A), P(B) \leq 1$.

Then, the only possible solution for $P(A)$ and $P(B)$ is $P(A) = P(B) = 1$.

Further, $P(A \bigcap B) = 1 = P(A) P(B)$.

Therefore, $A$ and $B$ are independent.



###### Problem 4

Consider a point $P = (X, Y)$ chosen uniformly at random inside of the unit square $[0, 1]^{2} = [0, 1] \times [0, 1]$ $ = {\{(x, y): 0 \leq x, y \leq 1\}}$. Let $Z = X + Y$ be the random variable defined as the sum of the two coordinates of the point. For example, if $P = \displaystyle (\frac{1}{2}, \frac{1}{3})$, then $Z = X + Y = \displaystyle \frac {1}{2} + \frac {1} {3} = \displaystyle \frac {5}{6}$.



(a) (8 Points) Determine the cumulative distribution function of $Z$.

**Hint.** Draw a picture.

*Solution*. We want to find $F_Z (t) = P(Z \leq t)$. Note that the range of $Z$ is $[0, 2]$.

For $t \leq 0$, $P(Z \leq t) = 0$.

The interval $0 \leq t \leq 2$ needs to be splitted into two intervals because $t = \displaystyle 1$ is a *cutoff* point.

For $0 < t \leq \displaystyle 1$, the region $\{Z \leq t \}$ is an isosceles right triangle with side length $t$.

<img src="/Users/yang/Library/Application Support/typora-user-images/image-20200103235332345.png" alt="image-20200103235332345" style="zoom:33%;" />

Then, $P(Z \leq t) = \displaystyle \frac{1}{2} \cdot t^2 = \frac{1}{2} t^2$.

For $1 < t \leq 2$, the region $\{Z \leq t \}$ is a square with side length $1$ without an isosceles right triangle with side length $2 - t$.

<img src="/Users/yang/Library/Application Support/typora-user-images/image-20200103235410523.png" alt="image-20200103235410523" style="zoom:33%;" />

Then, $P(Z \leq t) = 1 - \displaystyle \frac{1}{2} (2 - t)^2 = -\frac{1}{2} t^2 + 2t - 3$.

For $t > 2$, $P(Z \leq t) = 1$.



(b) (2 Points) Determine if $Z$ is a continuous random variable, a discrete random variable, or neither. If continuous, determine the probability density function of $Z$. If discrete, determine the probability mass function of $Z$. If neither, explain why.



#### Lecture 13 Variance

October 25, 2019



##### Expectation (Revisit)

For a random variable $X$, what is the *average*?



###### Discrete Random Variable

$\mathbb{E}[X] = \displaystyle \sum \limits_{k} kP(X = k)$



###### Continuous Random Variable

$\mathbb{E}[X] =  \displaystyle \int_{-\infty}^\infty x \rho_X (x) \text{ d}x$



###### Does expectation always exist?

Consider the following game.

Flip a fair coin until you get heads. The payout is $2^\text{# of flips for first head}$.

*Solution*. Let $Y$ denote payout. By the description, $P(Y = 2^n) = \displaystyle \frac{1}{2^n}$ for positive integer $n$.

Then, $\mathbb{E}[Y] = \displaystyle \sum \limits_{k = 1}^\infty 2^k \cdot \frac{1}{2^k} = +\infty$.

The game is sure to end and consequently the prize $Y$ is finite with probability one. Yet the expected value $\mathbb{E}[Y]$ is infinite. This result may not agree with your initial intuition but it does not violate any mathematical rules.

**Modification**. Set payout as $2 \cdot \text{# of flips for first head is even}$ and $-2 \cdot \text{# of flips for first head is odd}$.



###### Proposition: Expectation of a Function of a Random Variable

Take $g: \mathbb{R} \to \mathbb{R}$.

If $X$ is discrete, $\mathbb{E}[g(X)] = \displaystyle \sum \limits_{k} g(k) \cdot P(X - k)$

If $X$ is continuous, $\mathbb{E}[g(X)] = \displaystyle \int_{-\infty}^\infty g(x) \rho_X (x) \text{ d}x$

**Remark**. Suppose $g: \mathbb{R} \to \mathbb{R}$ is affine, i.e., $g(x) = ax + b$ for some $a, b \in \mathbb{R}$. Then, $\mathbb{E}[g(X)] = a \mathbb{E}[X] + b$.



A couple decides to have children until they have both a boy and a girl. What is the expected number of children they will have?

*Solution*. Let $Y$ be the number of children they will have.

The first child can be either a boy or girl. Let $Z$ be the number of children they need for the corresponding child (either a boy or a girl).

Then, $Y = 1 + Z$ where $Z \sim \text{Geom} \displaystyle (\frac{1}{2})$.

Therefore, $\mathbb{E}[Y(Z)] = \mathbb{E}[1] + \mathbb{E}[Z]$

​                                    $=1 + \displaystyle \frac{1}{\frac{1}{2}} = 3$



###### Moment

The $n \text{th}$ moment of the random variable $X$ is the expectation $\mathbb{E}[X^n]$.

For $\mathbb{E}[X] = \mathbb{E}[Y]$, we cannot make an assumption that $X$ and $Y$ have the same distribution.



##### Variance

How can we quantify the spread of a random variable?

Given $\mu = \mathbb{E}[X]$, then define $\text{Var}(X) = \mathbb{E}[(X - \mu)^2]$.

Also, the standard deviation is $\displaystyle \sqrt{\text{Var} (X)}$.



In $P(X = 1) = P(X = -1) = \displaystyle \frac{1}{2}$ if $X = \{1, -1 \}$ and $P(Y = 1000) = P(Y = -1000) = \displaystyle \frac{1}{2}$ if $Y = \{1000, -1000 \}$, both of the distributions have the same mean $0$, but the two distributions are totally different by the spread.

Let's find the variance of them.

$\text{Var}(X) = \mathbb{E}[X^2]$

​                $= 1^2 \cdot \displaystyle \frac{1}{2} + (-1)^2 \cdot \displaystyle \frac{1}{2} = 1$

$\text{Var}(Y) = \mathbb{E}[Y^2]$

​               $= 100^2 \cdot \displaystyle \frac{1}{2} + (-100)^2 \cdot \displaystyle \frac{1}{2}$

​               $= 10000 = 10000 \text{Var}(X)$



###### Proposition: $\text{Var}(aX + b) = a^2 \cdot \text{Var}(X)$

*Proof*. By the difinition of *variance*,

$\text{Var} (aX + b) = \mathbb{E}[(aX + b - \mathbb{E}[aX + b])^2]$

​                         $= \displaystyle \int_{\mathbb{R}} [aX + b - (a\mathbb{E}[X] + b)]^2 \cdot \rho_X (x) \text{ d}x$

​                         $= \displaystyle \int_{\mathbb{R}} [(aX + b)^2 - 2(aX + b)(a\mathbb{E}[X] + b) + (a\mathbb{E}[X] + b)^2] \cdot \rho_X (x) \text{ d}x$

​                         $= \displaystyle \int_{\mathbb{R}} (aX + b)^2 \cdot \rho_X (x) \text{ d}x - 2(a\mathbb{E}[X] + b) \displaystyle \int_{\mathbb{R}} (aX + b) \cdot \rho_X (x) \text{ d}x + (a\mathbb{E}[X] + b)^2$

​                         $= \mathbb{E}[(aX + b)^2] - 2(a\mathbb{E}[X] + b)\mathbb{E}[aX + b] + (a\mathbb{E}[X] + b)^2$

​                         $= \mathbb{E}[(aX + b)^2] - (a\mathbb{E}[X] + b)^2$

​                         $= \mathbb{E}[a^2 X^2 + 2abX + b^2] - (a^2 \mathbb{E}[X]^2 + 2ab\mathbb{E}[X] + b^2)$

​                         $= a^2 \mathbb{E}[X^2] + 2ab \mathbb{E}[X] + b^2 - a^2 \mathbb{E}[X]^2 - 2ab \mathbb{E}[X] - b^2$

​                         $= a^2 (\mathbb{E}[X^2] - \mathbb{E}[X]^2)$

​                         $= a^2 \text{Var}(X)$



*Corollary*.

$\text{Var}(X + b) = \text{Var}(X)$

$\text{SD}(aX + b) = \lvert a \rvert \cdot \text{SD}(X)$



###### Proposition: $\text{Var} (X) = \mathbb{E}[X^2] - \mathbb{E}[X]^2$

*Proof*. $\text{Var}(X) = \displaystyle \int (X - \mu)^2 \rho_X (x) \text{ d}x$

​                           $= \displaystyle \int (X^2 - 2\mu X + \mu^2) \rho_X (x) \text{ d}x$

​                           $= \displaystyle \int X^2 \cdot \rho_X (x) \text{ d}x - 2\mu \int X \cdot \rho_X (x) \text{ d}x + \mu^2 \int \rho_X (x) \text{ d}x$

​                           $= \mathbb{E}[X^2] - 2\mu \mathbb{E}[X] + \mu^2$

​                           $= \mathbb{E}[X^2] - \mu^2 = \mathbb{E}[X^2] - \mathbb{E}[X]^2$



#### Lecture 14 Introduction to Normal (Gaussian) Distribution

October 28, 2019



##### Useful Facts for Variance

$\mathbb{E}[g(X)] = \displaystyle \sum \limits_{k} g(k) \cdot P(X = k)$ if $X$ is discrete

$\mathbb{E} [g(X)] = \displaystyle\int_{-\infty}^{\infty} g(x) \cdot \rho (x) \text{d}x$ if $X$ is continuous with p.d.f $\rho$

$\mathbb{E} [aX + b] = a \cdot \mathbb{E} [X] + b$

$\text{Var} (X) = \mathbb{E} [(X - \mu _X)^{2}]$

$\text{Var} (aX + b) = a^{2} \cdot \text{Var} (X)$

$\text{Var}(X) = \mathbb{E} [X^{2}] - (\mathbb {E} [X])^{2}$



###### $X \sim \text{Bernoulli} (p)$

$\mathbb{E} [X] = p \to (\mathbb{E} [X])^{2} = p^{2}$

$\mathbb{E} [X^{2}] = 1^{2} \cdot P(X = 1) + 0^{2} \cdot P(X = 0)$

​            $= p$

$\text{Var} (X) = p - p^{2}$



###### $X \sim \text{Poisson} (\lambda)$

$P(X = k) = \displaystyle e^{-\lambda} \cdot \frac{\lambda ^{k}}{k!}$

$\mathbb{E} [X] = \lambda \to (\mathbb{E} [X])^{2} = \lambda ^{2}$

$\mathbb{E} [X^{2}] = \displaystyle \sum \limits_{k = 0}^{\infty} k^{2} \cdot e^{-\lambda} \cdot \frac{\lambda ^{k}}{k!}$

​            $= \displaystyle \sum \limits_{k = 1}^{\infty} k \cdot e^{-\lambda} \cdot \frac{\lambda ^{k}}{(k - 1)!}$

​            $= \displaystyle e^{-\lambda} \sum \limits_{k = 1}^{\infty} (k - 1 + 1) \cdot \frac{\lambda ^{k}}{(k - 1)!}$

​            $= \displaystyle e^{-\lambda} (\sum \limits_{k = 1}^{\infty} \frac{\lambda ^{k}}{(k - 1)!} + \sum \limits_{k = 2}^{\infty} \frac{\lambda^{k}}{(k - 2)!})$

​            $= \displaystyle e^{-\lambda} (\lambda \cdot \sum \limits_{k = 1}^{\infty} \frac{\lambda ^{k - 1}}{(k - 1)!} + \lambda ^{2} \cdot \sum \limits_{k = 2}^{\infty} \frac{\lambda^{k - 2}}{(k - 2)!})$

​            $= \displaystyle \lambda ^{2} + \lambda$

$\text{Var} (X) = \lambda ^{2} + \lambda - \lambda ^{2}$

​               $= \lambda$



**Throw a dart at a dart board.**

$g(r) = \begin{cases} 1 - r & \text{if } r \in [0, 1] \\ 0 & \text{if } r \in (1, 2] \end{cases}$ where $r$ is the distance from the center

Let $R$ be a random variable, with $\displaystyle \rho _R (s) = \frac{r}{2}$ for $r \in [0, 2]$

$g(R) = \begin{cases} 1 - R & \text{if } R \in [0, 1] \\ 0 & \text{if } R \in (1, 2] \end{cases}$

$\mathbb{E}[g(R)] = \displaystyle\int_{0}^{2} g(r) \cdot \rho (r) \text{ d}r$

​               $= \displaystyle\int_{0}^{1} (1 - r) \cdot \frac{r}{2} \text{ d}r$

​               $= \displaystyle \frac {1}{12}$

$\mathbb{E}[g^{2}(R)] = \displaystyle\int_{0}^{2} g^{2}(r) \cdot \rho (r) \text{ d}r$

​                 $= \displaystyle\int_{0}^{1} (1 - r)^{2} \cdot \frac{r}{2} \text{ d}r$

​                 $= \displaystyle \frac{1}{24}$

Therefore, $\displaystyle \text{Var} (g(R)) = \frac{5}{144}$



**Proposition**: $\text{Var}(X) = 0$ if and only if $X$ is a constant.



##### Normal Distribution

Standard normal random variable has density $ \displaystyle\rho (x) = \frac{1}{\sqrt{2\pi}} e^{-\frac{x^2}{2}}$ for $x \in \mathbb{R}$.

###### **Proposition**

$\displaystyle\int_{-\infty}^{\infty} \rho(x) \text{ d}x = 1$

$\longleftrightarrow \displaystyle\int_{-\infty}^{\infty} e^{-\frac{x^{2}}{2}} \text{ d}x = \sqrt{2\pi}$ for Standard Normal Distribution

$\longleftrightarrow (\displaystyle\int_{-\infty}^{\infty} e^{-\frac{x^{2}}{2}} \text{ d} x)^{2} = 2\pi$

$\longleftrightarrow \displaystyle\int_{-\infty}^{\infty} e^{-\frac{x^{2}}{2}} \text{ d}x \cdot \displaystyle\int_{-\infty}^{\infty} e^{-\frac{y^{2}}{2}} \text{ d}y = 2\pi $ **This is what we want to prove.**



$\displaystyle\int_{-\infty}^{\infty} e^{-\frac{x^{2}}{2}} \text{d}x \cdot \displaystyle\int_{-\infty}^{\infty} e^{-\frac{y^{2}}{2}} \text{d}y = \displaystyle\int_{-\infty}^{\infty} \displaystyle\int_{-\infty}^{\infty} e^{-\frac{x^{2} + y^{2}}{2}} \text{ d}x \text{ d}y$

​                                                 $= \displaystyle\int_{0}^{2\pi} \displaystyle\int_{0}^{\infty} e^{-\frac{r^{2}}{2}} \cdot r \text{ d}r \text{ d}\theta$

​                                                 $= \displaystyle\int_{0}^{2\pi} \left[-e^{-\frac{r^{2}}{2}}\right]_0^\infty \text{ d} \theta$

​                                                 $= \displaystyle\int_{0}^{2\pi} 1 \text{ d} \theta$

​                                                 $= 2\pi$

Hence, $\displaystyle\int_{-\infty}^{\infty} \frac{1}{\sqrt{2\pi}} e^{-\frac{x^{2}}{2}} \text{ d}x = 1$.



###### Notation (Phi)

$\Phi (s) = \displaystyle \int_{-\infty}^\infty \varphi (x) \text{ d}x$

$\varphi (x) = \displaystyle \frac{1}{\sqrt{2\pi}} e^{-\frac{x^2}{2}}$



###### Properties

1) Since *Normal* distribution is *continuous*, we can get $P(X \leq a) = P(X < a)$.

2) $P(X > a) = 1 - P(X \leq a)$

3) $P(a < X \leq b) = P(X \leq b) - P(X \leq a)$



###### Standard Normal Distribution $X \sim N(0, 1)$

$\mathbb{E}[X] = \displaystyle \int_{-\infty}^\infty x \cdot e^{-\frac{x^2}{2}} \text{ d}x = 0$

$\text{Var}(X) = 1$



The density $\rho_X (x) = \displaystyle \frac{1}{\sqrt{2\pi}} e^{-\frac{x^2}{2}}$ is **absolutely convergent**.

$\displaystyle \frac{1}{\sqrt{2\pi}} \int_{-\infty}^\infty \lvert xe^{-\frac{x^2}{2}} \rvert \text{ d}x = \frac{1}{\sqrt{2\pi}} \cdot 2 \int_0^\infty xe^{-\frac{x^2}{2}} \text{ d}x$

​                                        $= 2 > 0$



**Remark**.

$\displaystyle \frac{1}{\sqrt{2\pi}} \int_{-\infty}^\infty x^n e^{-\frac{x^2}{2}} \text{ d}x$ is *finitely / absolutely convergent* for all values of $n \geq 0$.



For $n$ is *odd*, $\mathbb{E}[X^n] = 0$ because $x^n \displaystyle e^{-\frac{x^2}{2}}$ is an odd function.

For $n$ is even, $\mathbb{E}[X^n] = \mathbb{E}[X^{2m}] \text{ for } m \in \mathbb{Z}^+$

​                                     $= \displaystyle \frac{1}{\sqrt{2\pi}} \int_{-\infty}^\infty x^{2m} e^{-\frac{x^2}{2}} \text{ d}x$

​                                     $= \displaystyle \frac{1}{\sqrt{2\pi}} \int_{-\infty}^\infty x^{2m - 1} \cdot (x e^{-\frac{x^2}{2}}) \text{ d}x$

​                                     $= \displaystyle \frac{1}{\sqrt{2\pi}} (\left[\displaystyle -e^{-\frac{x^2}{2}} x^{2m - 1} \right]_{-\infty}^\infty - \int_{-\infty}^\infty -e^{-\frac{x^2}{2}} (2m - 1) x^{2m - 2} \text{ d}x)$

​                                     $= \displaystyle \frac{1}{\sqrt{2\pi}} (2m - 1) \int_{-\infty}^\infty x^{2m - 2} e^{-\frac{x^2}{2}} \text{ d}x$

​                                     $= (2m - 1) \cdot \mathbb{E}[x^{2m - 2}]$

​                                     $= (2m - 1) \cdot (2m - 3) \cdot \mathbb{E}[x^{2m - 4}]$

​                                     $= 1 \cdot 3 \cdot ... \cdot (2m - 3) \cdot (2m - 1) = (2m - 1)!!$

#### Lecture 15 Normal Approximation

October 30, 2019



##### Standard Normal (Gaussian) Distribution $N(0, 1)$

Let $X \sim N(0, 1)$.

It means $X$ has $\text{pdf}$ $\rho_X(t) = \displaystyle \frac {1}{\sqrt {2\pi}} e^{-\frac {x^2}{2}}$. Also, $X$ has mean $0$ and variance $1$, obviously.

$X$ is an even function. $\to$ $X$ has symmetry. $\to$ $\Phi (a) = 1 - \Phi (-a)$ for any $a \in \mathbb{R}$



<img src="/Users/yang/Library/Application Support/typora-user-images/image-20200103235911502.png" alt="image-20200103235911502" style="zoom:50%;" />



##### General Gaussian Distribution

Let $Y \sim N(\mu, \sigma ^{2})$, then $aY + b \sim N(a\mu + b, a^{2} \sigma ^{2})$.

Let $Z = aY + b$.

$F_Z (t) = P(Z \leq t)$

​            $= P(aY + b \leq t)$

​            $= \displaystyle P(Y \leq \frac {t - b}{a})$

​            $= \displaystyle F_Y (\frac {t - b}{a})$

$f_Z (t) = F_Z '(t)$

​           $= \displaystyle F_Y '(\frac {t - b}{a}) \cdot \frac {1}{a}$

​           $= \displaystyle \frac {1}{\sqrt{2\pi \sigma ^{2}}} e^{-\frac{(\frac {t - b}{a} - \mu)^{2}}{2 \sigma ^{2}}} \cdot \frac{1}{a}$

​           $= \displaystyle \frac {1}{\sqrt{2\pi a^{2} \sigma ^{2}}} e^{-\frac{(t - b - a\mu)^{2}}{2 a^{2} \sigma ^{2}}}$



<img src="/Users/yang/Library/Application Support/typora-user-images/image-20200103235951681.png" alt="image-20200103235951681" style="zoom:50%;" />



###### Example

Suppose $Z \sim N(-2, 4)$.

Then $P(-10 \leq Z \leq -1) = P(-8 \leq Z + 2 \leq 1)$

​                                              $= \displaystyle P(-4 \leq \frac {Z + 2}{2} \leq \frac {1}{2})$ where $\displaystyle \frac {Z + 2}{2} \sim N(0, 1)$

​                                              $= \displaystyle \Phi (\frac{1}{2}) - \Phi (-4)$



##### Normal Approximation

Let $S_n \sim \text{Bin} (n, p)$. ($n >> 0$, $p \neq 0, 1$)

$P(X = k)$ for $k = 0, 1, 2, ..., n$

$\mathbb{E}[S_n] = np$

$\text {Var}(S_n) = np(1 - p)$



Is $\text {Bin} (n, p)$ similar to $N(np, np(1 - p))$? What does "similar" mean?



##### Central Limit Theorem for Binomial

$\displaystyle \lim \limits_{n \to \infty} P(a \leq \frac {S_n - np}{\sqrt{np(1 - p)}} \leq b) = \displaystyle\int_{a}^{b} \frac {1}{\sqrt{2\pi}} e^{-\frac{t^{2}}{2}} \text{d}t$

​                                                $= \Phi (b) - \Phi (a)$



###### Example

Consider $\displaystyle S_{n} \sim \text{Bin} (10000, \frac{1}{2})$.

$P(4850 \leq S_n \leq 5100) = \displaystyle \sum \limits_{k = 4850}^{5100} {10000 \choose k} \cdot (\frac {1}{2})^{10000}$ by binomial distribution

By *normal approximation*,

$P(4850 \leq S_n \leq 5100) = \displaystyle P(-\frac{150}{\sqrt{10000 \times \frac {1}{2} \times \frac {1}{2}}} \leq \frac {S_n - 5000}{\sqrt{10000 \times \frac {1}{2} \times \frac {1}{2}}} \leq \frac {100}{\sqrt{10000 \times \frac {1}{2} \times \frac {1}{2}}})$

​                                         $= P(-3 \leq Y_N \leq 2)$ for $Y_N \sim N(0, 1)$

​                                         $= \Phi(2) - \Phi(-3)$



###### How Accurate?

When $n$ is ***large***, the distribution of the standardized sum $\displaystyle \frac {S_n - np}{\sqrt{np(1 - p)}}$ approximately follows the standard normal curve, regardless of the original binomial distribution.

For large $n$, $\displaystyle P(a \leq \frac {S_n - np}{\sqrt{np(1 - p)}} \leq b) = \displaystyle\int_{a}^{b} \frac {1}{\sqrt{2\pi}} e^{-\frac{t^{2}}{2}} \text{d}t$.

Exactly how large the $n$ has to be for the approximation to be good does depend on the distribution $\text{Bin} (n, p)$. Usually, we define $n$ is large if $np(1 - p) \geq 10$.



###### Example

Each stage, flip a fair coin: if Head, walk forward $2$ steps; if Tail, walk back $1$ step. After $10, 000$ stages, what is the probability that you have gone forward a net of at least $10000$ steps?

$\displaystyle X \sim \text {Bin} (10000, \frac{1}{2})$

$Y = 2 \cdot X - (10000 - X) = 3X - 10000$

$P(3X - 10000 \geq 10000) = \displaystyle P(X \geq \frac {20000}{3})$



###### Continuity Correction

Usually, if $S_n$ only takes *integer* values, $P(S_n = k) \approx 0$ in a continuous distribution. This result is not so meaningful.

In this case, if $k_1$ and $k_2$ are integers, then $P(k_1 \leq S_n \leq k_2) = \displaystyle P(k_1 - \frac {1}{2} \leq S_n \leq k_2 + \frac {1}{2})$.

**Remark:** The interval $[k_1, k_2]$ contains exactly the same integers as  $\displaystyle [k_1 - \frac {1}{2}, k_2 + \frac {1}{2}]$.



Similarly, $P(k_1 < S_n < k_2)  = P(k_1 + 1 \leq S_n \leq k_2 - 1)$

​                                                  $\displaystyle \approx P(k_1 + 1 - \frac{1}{2} \leq S_n \leq k_2 - 1 + \frac{1}{2})$

​                                                  $= \displaystyle P(k_1 + \frac{1}{2} \leq S_n \leq k_2 - \frac{1}{2})$

**Remark:** The interval $(k_1, k_2)$ contains exactly the same integers as $\displaystyle [k_1 + \frac{1}{2}, k_2 - \frac{1}{2}]$.



###### Stirling's Formula

As $n \to \infty$, $n! \sim n^{n} e^{-n}\sqrt{2\pi n}$

It is useful for evaluate the factorials of large numbers and describe how factorial growth quickly.



##### Law of Large Numbers

For fixed number $\varepsilon > 0$, $\displaystyle \lim \limits_{n \to \infty} P(\lvert \frac {S_n}{n} - p \rvert < \varepsilon) = 1$.



#### Lecture 16 Confidence Intervals

November 1, 2019



##### **Central Limit Theorem** (CLT) (Revisit)

Let $S_n \sim \text{Bin} (n, p)$ with $p \in (0, 1)$.

Then $\displaystyle \lim \limits_{n \to \infty} P(a \leq \frac {S_n - np}{\sqrt{np(1 - p)}} \leq b) = \Phi (b) - \Phi (a)$ where $a$ could be $- \infty$ and $b$ could be $+ \infty$.



##### **Law of Large Numbers** (LLN)

Let $S_n \sim \text{Bin} (n, p)$ with $p \in (0, 1)$. Let $\epsilon > 0$.

Then $\lim \limits_{n \to \infty} \displaystyle P(\lvert \frac{S_n}{n} - p \rvert < \varepsilon) = 1$

Equivalently, $\lim \limits_{n \to \infty} \displaystyle P(\lvert \frac{S_n}{n} - p \rvert > \varepsilon) = 0$.



##### Relation between CLT and LLN

Now, let $S_n \sim \text{Bin} (n, p)$ with $p \in (0, 1)$.

We have $\mathbb {E} [S_n] = np$ and $\text {Var} (S_n) = np(1 - p)$.

Then, $\displaystyle \text {Var} (\frac {S_n}{\sqrt {np(1 - p)}}) = 1$ and $\displaystyle \text {Var} (\frac {S_n}{n}) = \frac {p(1 - p)}{n}$.

**Remark**: If $\text {Var} (X) = 0$, then $X$ is constant.



$\displaystyle P(\lvert \frac {S_n}{n} - p \rvert < \varepsilon) = P(\lvert \frac {S_n - np}{n} \rvert < \varepsilon)$

​                                $= P(\lvert S_n - np \rvert < n \cdot \varepsilon)$

​                                $= P(-n \cdot \varepsilon < S_n - np < n \cdot \varepsilon)$

​                                $= \displaystyle P(- \frac {\sqrt {n} \cdot \varepsilon}{\sqrt {p(1 - p)}} < \frac {S_n - np}{\sqrt {np(1 - p)}} < \frac {\sqrt {n} \cdot \varepsilon}{\sqrt {p(1 - p)}})$

​                                $\displaystyle \geq P (-c < \frac {S_n - np}{\sqrt {np(1 - p)}} < c)$ where $c > 0$ for large $n$

​                                $= \Phi (c) - \Phi (-c)$ by **Central Limit Theorem**

​                                $= 2 \cdot \Phi(c) - 1$

​                                $\leq 1$ **Law of Large Numbers**



###### Example

Flip a fair coin. $\displaystyle S_n \sim \text {Bin} (n, \frac {1}{2})$

Prove that the probability of getting more than $51\%$ heads goes to **zero** as $n \to \infty$.

*What we want to show*: $\displaystyle \lim \limits_{n \to \infty} P(\frac {S_n}{n} > 0.51) = \lim \limits_{n \to \infty} P(\frac {S_n}{n} - \frac {1}{2} > 0.01) = 0$

By **Law of Large Numbers**, $\displaystyle \lim \limits_{n \to \infty} P(\lvert \frac {S_n}{n} - \frac {1}{2} \rvert > 0.01) = 0$



###### Exercise

$\displaystyle \lim \limits_{n \to \infty} P(\lvert \frac {S_n}{n} - p \rvert = 0) = 0$. Find a value of $p$ such that $p \in (0, 1)$.

Let $m = \lim \limits_{n \to \infty} \displaystyle \frac{S_n}{n}$.

Then, if $p \neq m$, $\displaystyle \lim \limits_{n \to \infty} P(\lvert \frac {S_n}{n} - p \rvert = 0) = 0$.



##### **Confidence Intervals**: Application of Normal Approximation

Still, let $S_n \sim \text{Bin} (n, p)$.



###### Example: Flipping a Coin

Flip a coin $100$ times. You get $30$ heads. Guess for $p$? How sure can you be?

If you flip $100, 000$ times, you get $30, 000$ heads. Will this result change your guess?



###### Proof

$\displaystyle P(\lvert \frac {S_n}{n} - p \rvert < \varepsilon) = P(\lvert \frac {S_n - np} {n} \rvert < \varepsilon)$

​                                $= \displaystyle P(- \frac{\sqrt {n} \cdot \varepsilon}{\sqrt {p(1 - p)}} < \frac {S_n - np}{\sqrt {np(1 - p)}} < \frac{\sqrt {n} \cdot \varepsilon}{\sqrt {p(1 - p)}})$

​                                $\displaystyle \approx 2\Phi(\frac{\sqrt {n} \cdot \varepsilon}{\sqrt {p(1 - p)}}) - 1$

​                                $\displaystyle \geq 2 \Phi(2 \sqrt{n} \cdot \varepsilon) - 1$

The equality true as $\displaystyle p = \frac {1}{2}$.



###### Notation

$\hat{p}$ is the empirical probability. (*p*-hat)

$\displaystyle \hat{p} = \frac {S_n}{n}$



###### Confidence Level

$\displaystyle \mathbb{P}(\lvert \hat{p} - p \rvert < \varepsilon) = \mathbb{P} (p \in (\hat{p} - \varepsilon, \hat{p} + \varepsilon))$

​                           $\geq 2 \cdot \Phi (2 \sqrt{n} \cdot \varepsilon) - 1$



###### Exercise: Still Flip a Coin

1) How many times do we need to flip a coin with unknown success parameter $p$ so that $\hat{p}$ is within $0.05$ of the ture $p$ with the probability $\geq 0.99$?

*Interpretation*: Find $n$ such that $P(\lvert \hat{p} - p \rvert < 0.05) \geq 0.99$

$\displaystyle 2 \cdot \Phi(\frac {2 \sqrt{n}}{100}) - 1 \geq 0.99$

$n \geq 666$



2) Flip a coin $1000$ times. You get $450$ successes. Find a $100r\%$ condifence interval for $p$, where $r \in (0, 1)$.

$\hat{p} = 0.45$

Confidence Interval: $(0.45 - \varepsilon, 0.45 + \varepsilon)$

$P(\lvert \hat{p} - p \rvert < \varepsilon) \geq 2 \cdot \Phi(2 \sqrt{n} \cdot \varepsilon) - 1 \geq r$

$\varepsilon$ is what we want.

If $r = 0.95$, then $\Phi (2 \sqrt{1000} \cdot \varepsilon) \geq \displaystyle \frac {0.95 + 1}{2} = 0.975$

$2 \sqrt{1000} \cdot \varepsilon = 1.96$ by the Normal table

$\varepsilon = \displaystyle \frac{1.96}{2 \sqrt{1000}}$

Therefore, the confidence interval is $\displaystyle (0.45 - \frac{1.96}{2\sqrt{1000}}, 0.45 + \frac{1.96}{2\sqrt{1000}})$.



#### Lecture 17 Poisson Approximation

November 4, 2019



##### Central Limit Theorem (Revisit)

$\displaystyle \lim \limits_{n \to \infty} P(a \leq \frac{S_n - np}{\sqrt{np(1-p)}} \leq b) = \Phi(b) - \Phi(a)$



###### Approximation (by continuity correction)

$\displaystyle P(k_1 \leq S_n \leq k_2) = P(k_1 - \frac {1}{2} \leq S_n \leq k_2 + \frac {1}{2})$

​                                 $\displaystyle \approx P(\frac {k_1 - \frac{1}{2} - np}{\sqrt{np(1-p)}} \leq Z \leq \frac {k_2 + \frac{1}{2} - np}{\sqrt{np(1-p)}})$ where $Z \sim N(0, 1)$



###### How good is this approximation?

$\displaystyle \lvert P(\frac {S_n - np}{\sqrt{np(1-p)}} \leq X) - P(Z \leq X) \rvert \leq \frac{3}{\sqrt{np(1-p)}}$ for any $x \in \mathbb{R}$

So if $np(1 - p) < 10$, this approximation might NOT be great.



##### Law of Rare Events

Consider the following situation.

In some fixed time interval, on average, we have $\lambda$ occurrences of an event.

For each trial, we have $\text{Bernoulli} (\displaystyle \frac {\lambda}{N})$

For whole, we have $\text{Bin} (N, \displaystyle \frac {\lambda}{N})$



Let $X_N \sim \displaystyle \text{Bin} (N, \frac{\lambda}{N})$

$\lim \limits_{N \to \infty} P(X_N = k) = \displaystyle \lim \limits_{N \to \infty} {N \choose k} \cdot (\frac{\lambda}{N})^{k} \cdot (1 - \frac {\lambda}{N})^{N - k} $



##### Approximation statement

Any time a random variable counts the number of occurrences of an event in same time interval where the occurrences in disjoint subintervals are independent on "weakly dependent," then it is $\approx$ Poisson.

$X \sim \text {Bin} (n, p)$

$\lambda = np$

$Y \sim \text {Poisson} (np)$

$\lvert P(X \in A) - P(Y \in A) \rvert \leq \displaystyle np^{2} = \frac {\lambda ^{2}}{n}$ for any $A \in {\{0, 1, 2, ...\}}$

By **Central Limit Theorem**, $\displaystyle \lvert P(\frac {S_n - np}{\sqrt{np(1-p)}} \leq X) - P(Z \leq X) \rvert \leq \frac{3}{\sqrt{np(1-p)}}$ for any $x \in \mathbb{R}$



###### Example

1) Modeling number of deaths in Prussian army by horse kicks.

196 total deaths; 280 observations in total; 14 army corps; 20-year period

$\displaystyle \lambda = \frac {196}{14 \cdot 20} = \frac {7}{10}$



| Number of Deaths | Observed Frequency | Actual Probability | Poisson Approximation |
| :--------------: | :----------------: | :----------------: | :-------------------: |
|        0         |        144         |       0.514        |         0.496         |
|        1         |         91         |       0.325        |         0.347         |
|        2         |         32         |       0.114        |         0.121         |
|        3         |         11         |       0.039        |         0.028         |
|        4         |         2          |       0.007        |        0.0049         |



2) Suppose one out of every $2000$ tires manufactured has a defect. Approximate the probability that exactly $4$ tires are defective in a batch of $7000$.

$\displaystyle \lambda = \frac {7000}{2000} = 3.5$

$\displaystyle P(X = 4) = e^{-3.5} \cdot \frac {3.5^{4}}{4!} \approx 0.18881$



*Actual Probability*

By binomial distribution $\displaystyle Y \sim (7000, \frac{1}{2000})$, $P(Y = 4) = \displaystyle {7000 \choose 4} \cdot (\frac{1}{4})^{4} \cdot (1 - \frac{1}{20000})^{7000 - 4} \approx 0.18886$



###### Poisson or Normal

$X_1 \sim \text{Bin} (10, \displaystyle \frac {1}{10})$

In this case, use *Poisson* because $\displaystyle np(1 - p) = 10 \cdot \frac{1}{10} \cdot (1 - \frac{1}{10}) = 0.9<10$ and $np^{2} = 0.1 < 1$

Also, $\displaystyle p = \frac{1}{10}$ is relatively rare.



$\displaystyle X_2 \sim \text {Bin} (40, \frac {1}{2})$

In this case, use *Gaussian* because $\displaystyle p = \frac {1}{2}$ is NOT rare at all.



##### Poisson parameter $\lambda$

###### Expectation and Variance for $X \sim \text {Poisson} (\lambda)$ (Recap)

$\mathbb{E}[X] = \lambda$

$\text {Var}(X) = \lambda$



###### Disguised $\lambda$ Example

Suppose that the nubmer of calls into a call center is a Poisson distribution. You know that $0.5\%$ of the time, the call center receives no calls. What is the average number of calls in a day? (ASV 4.33)

$X \sim \text{Poisson} (\lambda)$

$P(X = 0) = e^{- \lambda} = 0.005$

$\lambda = -\ln 0.005$



##### Example

Suppose $10\%$ of households earn over $80,000$ dollars a year, and $0.25\%$ of households earn over $450,000$. A random sample of $400$ households has been chosen. In this sample, let $X$ be the number of households that earn over $80,000$, and let $Y$ be the number of households that earn over $450,000$. Use either the normal or the Poisson approximation, whichever is appropriate in either case, to find the simplest estimates you can for the probabilities $P (X \geq 48)$ and $P(Y \geq 2)$.

1) For $X$, $n = 400$, $p_X = 0.1$, $np_X = 40$, $np_X (1 - p_X) = 36 > 10 \to$ Use Normal approximation

$P(X \geq 48) = P(X \geq 47.5)$

​                     $= \displaystyle P(Z \geq \frac {47.5-40}{6})$ where $Z \sim N(0, 1)$

​                     $= 1 - \Phi(1.25)$



2) For $Y$, $n = 400$, $\displaystyle p_Y = \frac {1}{400}$, $np_Y = 1$, $\displaystyle np_Y (1 - p_Y) = \frac {399}{400} << 10 \to$ Use Poisson approximation

$P(Y \geq 2) = 1 - P(Y = 0) - P(Y = 1)$

​                  $= 1 - e^{-1} - e^{-1}$

​                  $= 1 - \displaystyle \frac {2}{e} \approx 0.2642$



#### Lecture 18 Exponential Distribution

November 6, 2019



**Announcement**

Typo in Homework ASV 4.40: Actual probability is $0.00327556$, NOT $0.000949681$



##### Modeling waiting times

###### **Discrete** case

$X \sim \text{Geom} (p)$ where $p$ is the **"rate" of success**



###### **Continuous** case

$X \sim \text{Exp} (\lambda)$ where $\lambda$ is the **"rate" per unit interval of time**, $\lambda > 0$



##### Exponential Distribution $X \sim \text {Exp} (\lambda)$

$\rho _X (t) = \begin{cases} 0 & t < 0 \\ \lambda e^{- \lambda t} & t \geq 0 \end{cases}$

**Proposition**

$\displaystyle\int_{- \infty}^{\infty} \rho_X (t) \mathbb{d}t = \displaystyle\int_{0}^{\infty} \lambda \cdot e^{-\lambda \cdot t} \mathbb{d}t$

​                        $= \displaystyle \left[-e^{-\lambda t}\right]_0^\infty$

​                        $= -e^{-\lambda \cdot 0}$

​                        $= 1$



**Proposition** (characteristic of exponential distribution)

$P(X \geq x) = e^{-\lambda s}$ for $s \geq 0$

Waiting longer than time $s$ for something to occur. Events are happening with rate $\lambda$ per unit interval of time.

Each interval is $\text{Bernoulli} (\displaystyle \frac {\lambda s}{N})$ then $\displaystyle \lim \limits_{N \to \infty} (1 - \frac{\lambda s}{N})^{N} = e^{-\lambda s}$



###### Expectation and Variance for $X \sim \text {Exp} (\lambda)$

$\mathbb{E}[X] = \displaystyle\int_{0}^{\infty} t \cdot (\lambda \cdot e^{-\lambda t}) \mathbb{d}t$

​          $= \left[-t \cdot e^{-\lambda t}\right]_0^\infty + \displaystyle\int_{0}^{\infty} e^{-\lambda t} \mathbb{d}t$

​          $= 0 - \left[\displaystyle \frac {1}{\lambda} \cdot e^{-\lambda t}\right]_0^\infty$

​          $= \displaystyle \frac {1}{\lambda}$

*Remark*: $\lambda$ is the rate per interval and $X$ is the time until the first success



**Proposition**

For $X \sim \text {Exp} (\lambda)$, $\mathbb{E}[X^{n}] = \displaystyle\int_{0}^{\infty} t^{n} \cdot \lambda e^{-\lambda t} \mathbb{d}t = \frac {n!}{\lambda ^{n}}$

*Corollary*

$\text {Var}(X) = \mathbb{E}[X^{2}] - \mathbb{E}[X]^{2}$

​               $= \displaystyle \frac{2}{\lambda^{2}} - \frac{1}{\lambda^{2}}$

​               $= \displaystyle \frac{1}{\lambda ^{2}}$



##### Example

Yuriy is waiting at a bus stop, which is described by $\text{Exp} (\lambda)$. His chance of waiting more than half an hour is $50\%$. What is the probability he waits less than $30$ minutes? Between $30$ and $90$ minutes? More than $2$ hours? $3$ hours? $4$ hours?

$\displaystyle P(X \geq \frac{1}{2}) = e^{-\lambda \cdot \frac{1}{2}} = \frac{1}{2}$ by the **Proposition** $P(X \geq x) = e^{-\lambda s}$ for $s \geq 0$

$\lambda = 2 \ln 2$

$\displaystyle P(X < \frac{1}{2}) = 1 - P(X \geq \frac{1}{2}) = \frac{1}{2}$

$\displaystyle P(\frac {1}{2} \leq X \leq \frac{3}{2}) = P(X \geq \frac {1}{2}) - P(X \geq \frac{3}{2})$

​                              $= 0.5 - e^{-2\ln2 \cdot \frac{3}{2}}$

​                              $= \displaystyle \frac{3}{8}$

......



##### Memoryless property

$Y \sim \text{Geom} (p)$

For any $m, n \in \mathbb{N}$, $P(Y \geq m + n \mid Y \geq n) = P(Y \geq m)$.



Now, $X \sim \text {Exp} (\lambda)$

For any $s, t \in \mathbb{R} \geq 0$, $P(X \geq s + t \mid x \geq t) = P(X \geq s)$

*Proof*

$P(X \geq s + t \mid x \geq t) = \displaystyle \frac {P(X \geq s + t)} {P(X \geq t)}$

​                                       $= \displaystyle \frac {e^{-\lambda (s + t)}}{e^{-\lambda t}}$

​                        		   	$= e^{-\lambda s}$

​							 		  $= P(X \geq s)$ by **Proposition**



###### **Proposition**

The exponential distribution is the ONLY memoryless distribution, CONTINUOUS on $[0, +\infty)$!



###### Example

Yuriy needs to get home to turn off his oven in an hour or his apartment will burn down. he waits for Bus 201, which takes $30$ minutes on average to arrive and $30$ minutes to get to his apartment (with certainty). (1) What is the probability gets home in time? (2) Suppose when Yuriy arrives, his friend Todd tells him he has already waiting an hour. What is the probability now?

$\lambda = \frac {1}{\frac {1}{2}} = 2$ (Unit: hour)

(1) $X \sim \text{Exp}(2)$ 

$\displaystyle P(X + \frac{1}{2} \leq 1) = P(X \leq \frac{1}{2})$

​                            $= 1 - \displaystyle P(X > \frac{1}{2})$

​                            $= 1 - \displaystyle e^{-2 \cdot \frac{1}{2}}$

​                            $= 1 - \displaystyle \frac {1}{e}$

(2) $Y \sim \text{Exp} (2)$

$\displaystyle P(Y \geq \frac{3}{2} \vert Y \geq 1) = P(Y \geq \frac {1}{2})$ by **Memoryless Property**

​                                 $= \displaystyle \frac {1}{e}$

$P = 1 - \displaystyle P(Y \geq \frac{1}{2})$

​    $= \displaystyle 1 - \frac {1}{e}$

The probability doesn't change.



Assume you try to take a bus to party. The average waiting time is $15$ minutes and you need $30$ minutes to get to party. At an hour, you decide to call an Uber, which takes you $15$ minutes to get to party. Calculate the expected time to get to the party.

$\lambda = \displaystyle \frac {1}{\frac {1}{4}} = 4$ (Unit: hour)

$X \sim \text{Exp}(4)$

$Y = \displaystyle \begin{cases} 0 & X < 0 \\ X + \displaystyle \frac {1}{2} & 0 \leq X \leq 1 \\ \displaystyle \frac {5}{4} & X > 1 \end{cases}$

$\mathbb{E}[Y(X)] = \displaystyle\int_{0}^{1} (t + \frac{1}{2}) \cdot 4e^{-4t} \mathbb{d}t + \displaystyle\int_{1}^{\infty} \frac{5}{4} \cdot 4e^{-4t} \mathbb{d}t$

​                 $= \displaystyle \left[-\frac {1}{4} (4t + 3) e^{-4t} \right]_0^1 + \left[-\frac {5}{4} e^{-4t} \right]_1^\infty$

​                 $= \displaystyle \frac{3}{4} - \frac{7}{4}e^{-4} + \frac{5}{4}e^{-4}$

​                 $= \displaystyle \frac{3}{4} - \frac{1}{2} e^{-4}$



#### Lecture 19 Moment Generating Function

November 8, 2019



Given a random variable $X$, we can ask about 

1. its **distribution**, $P(X \in B)$ for any $B \in \mathcal{B}$.Equivalently, its **cumulative distribution function** $F_X (s) = \mathbb{P} (X \leq s)$ for $s \in \mathbb{R}$.
2. its **moments** (but incomplete picture)
3. **moment generating function** (mgf)



##### Moment Generating Function

$M_X (t) = \mathbb{E} [e^{tX}]$

$e^{tX} = \displaystyle 1 + tX + \frac {(tX)^{2}}{2!} + \frac {(tX)^{3}}{3!} + ... $

​       $= \displaystyle \sum \limits_{k = 0}^{\infty} \frac{(tX)^{k}}{k!}$



###### $X \sim \text{Bernoulli} (p)$

$M_X (t) = e^{t \cdot 0} \cdot \mathbb{P}(X = 0) + e^{t \cdot 1} \cdot \mathbb{P}(X = 1)$

​             $= 1 \cdot (1 - p) + e^{p} \cdot p$

​             $= 1 - p + pe^{t}$



###### $X \sim \text{Bin} (n, p)$

$M_X (t) = \sum \limits_{k = 0}^{n} e^{tk} \cdot \mathbb{P}(X = k)$

​             $= \displaystyle \sum \limits_{k = 0}^{n} e^{tk} \cdot {n \choose k} \cdot p^{k} \cdot (1-p)^{n - k}$

​             $= \displaystyle \sum \limits_{k = 0}^{n} {n \choose k} \cdot (e^{t}p)^{k} \cdot (1 - p)^{n-k}$ by Binomial Theorem

​             $= (e^{t}p + 1 - p)^{n}$



###### $X \sim \text {Poisson} (\lambda)$

$M_X (t) = \sum \limits_{k = 0}^{n} e^{tk} \cdot \mathbb{P} (X = k)$

​             $= \displaystyle e^{- \lambda}\sum \limits_{k = 0}^{n} e^{tk} \cdot \frac{\lambda ^{k}}{k!}$

​             $= \displaystyle e^{-\lambda} \cdot \sum \limits_{k = 0}^{n} \frac {(\lambda e^{t})^{k}}{k!}$

​             $= \displaystyle e^{- \lambda} \cdot e^{e^{t} \lambda}$

​             $= \displaystyle e^{\lambda (e^{t} - 1)}$



###### $X \sim \text{Exp} (\lambda)$

$M_X (t) = \displaystyle\int_{0}^{\infty} e^{tx} \cdot \lambda \cdot e^{- \lambda x} \mathbb{d}x$

​             $= \lambda \displaystyle\int_{0}^{\infty} e^{(t - \lambda)x} \mathbb{d}x$

​             If $t - \lambda \geq 0$, then $M_X (t) = \infty$

​             If $t - \lambda < 0$, then $M_X (t) = \displaystyle \frac {\lambda}{t - \lambda} \left[e^{(t - \lambda)x}\right]_0^\infty$

​                                                         $= \frac {\lambda}{\lambda - t}$

Therefore, $M_X (t) = \begin{cases} \displaystyle \frac {\lambda}{t - \lambda} & t < \lambda \\ \infty & t \geq \lambda \end{cases}$



###### $X \sim N(0, 1)$

$M_X (t) = \displaystyle\int_{- \infty}^{\infty} e^{tx} \cdot \frac{1}{\sqrt{2\pi}} \cdot e^{- \frac{x^{2}}{2}} \mathbb{d}x$

​             $= \displaystyle\int_{- \infty}^{\infty} \frac{1}{\sqrt{2\pi}} \cdot e^{- \frac{(x - t)^{2}}{2}} \cdot (e^{\frac{t^{2}}{2}})  \mathbb{d}x$

​             $= (e^{\frac{t^{2}}{2}}) \displaystyle\int_{- \infty}^{\infty} \frac{1}{\sqrt{2\pi}} \cdot e^{- \frac{(x - t)^{2}}{2}} \mathbb{d}x$

​             $= e^{\frac{t^{2}}{2}}$



**Proposition**

For $X \sim N(t, 1)$, $\displaystyle\int_{- \infty}^{\infty} \frac{1}{\sqrt{2\pi}} \cdot e^{- \frac{(x - t)^{2}}{2}} \mathbb{d}x = 1$



###### $X \sim \text{Geom} (p)$

$M_X (t) = \displaystyle \sum \limits_{k = 1}^n e^{tk} \cdot P(X = k)$

​             $= \displaystyle \sum \limits_{k = 1}^n e^{tk} \cdot (1 - p)^{k - 1} \cdot p$

​             $= \displaystyle \frac{p}{1 - p} \sum \limits_{k = 1}^n e^{tk} \cdot (1 - p)^k$

​             $= \displaystyle \frac{p}{1 - p} \sum \limits_{k = 1}^n \left[e^t (1 - p) \right]^k$

Note that the geometric series that we just summed only converges if $\lvert e^t (1 - p) \rvert < 1$, so the *moment generating function* is not defined for all $t$.

If $p = 1$, then $e^t (1 - p) = 0$, regardless of $t$.

If $p \neq 1$, then $e^t (1 - p) < 1$, so $M_X (t)$ is defined as $t < -\ln (1 - p)$.

$M_X (t) = \displaystyle \frac{p}{1 - p} \sum \limits_{k = 1}^n \left[e^t (1 - p) \right]^k$

​             $= \displaystyle \frac{p}{1 - p} \cdot \left[\frac{1}{1 - e^t (1 - p)} - 1 \right]$

​             $= \displaystyle \frac{p}{1 - p} \cdot \frac{e^t (1 - p)}{1 - e^t (1 - p)}$

​             $= \displaystyle \frac{pe^t}{1 - e^t (1 - p)}$



##### Moment (Revisit)

$M_X (t) = \mathbb {E} [e^{tX}]$

$M_X ' (t) = \frac {\text{d}}{\text{d}t} \mathbb {E} [e^{tX}]$

......

$M_{X}^{(n)} (t) = \mathbb {E} [e^{tX} \cdot X^{n}]$

As $t = 0$, $M_{X}^{(n)} (0) = \mathbb {E} [X^{n}]$ is the ***n-th moment***.

Expectation $\mathbb{E} [X]$ of the random variable $X$ is $M_X '(0)$.



###### Taylor Expansion (Recap)

A function $\rho$ is **analytic** if it has a power series expansion, in which case $\rho (x) = \displaystyle \sum \limits_{k = 0}^{\infty} \frac{\rho ^{(k)}(0)}{k!} x^{k}$.

**Remark**: Definition of exponential: $e^{x} = \displaystyle \sum \limits_{k = 0}^{\infty} \frac{x^{k}}{k!}$



###### Proposition: For $X \sim \text{Exp} (\lambda)$, we have $\mathbb{E} [X^{n}] = \displaystyle \frac {n!}{\lambda ^{n}}$.

For $t < \lambda$, we have $M_X (t) = \displaystyle \frac {\lambda}{\lambda - t}$.

$\displaystyle \frac {\lambda}{\lambda - t} = \frac {1}{1 - \frac {t}{\lambda}}$

​            $= \displaystyle \sum \limits_{k = 0}^{\infty} (\frac {t}{\lambda})^{k}$

​            $= \displaystyle \sum \limits_{k = 0}^{\infty} \frac {k!}{\lambda ^{k}} (\frac {t^{k}}{k!})$

​            $= \displaystyle \sum \limits_{k = 0}^{\infty} \mathbb{E} [x^{n}] \cdot (\frac {t^{k}}{k!})$



###### Another Proposition: For $X \sim N(0, 1)$, we have $\mathbb{E} [X^n] = e^{\frac{1}{2} t^{2}}$.

Before, we have $\mathbb{E} [X^{2n}] = (2n - 1)!!$ and $\mathbb{E} [X^{2n + 1}] = 0$ for any $n \in Z$.

$e^{\frac{1}{2} t^{2}} = \displaystyle \sum \limits_{k = 0}^{\infty} \frac{(\frac{1}{2} t^{2})^{k}}{k!}$

​         $= \displaystyle \sum \limits_{k = 0}^{\infty} \frac {t^{2k}}{2^{k} \cdot k!}$

​         $= \displaystyle \sum \limits_{k = 0}^{\infty} \frac {t^{2k}}{(2k)!} \frac{(2k)!}{2^{k} \cdot k!}$

​         $= \displaystyle \sum \limits_{k = 0}^{\infty} \frac {t^{2k}}{(2k)!} \cdot (2k - 1)!!$

Comparing this result with $M_X (t) = \displaystyle \sum \limits_{k = 0}^{\infty} \frac {M_Z ^k (0)}{k!} \cdot t^{k}$, where $M_Z ^k (0) = \mathbb{E} [X^{k}]$

Then, $\displaystyle \mathbb{E} [X^{2n}] = \frac{(2n)!}{n! \cdot 2^{n}}$ for integers $n$.

While the coefficient for each odd power of $t$  is $0$, which reflects the fact that $\mathbb{E} [X^{k}] = 0$, by anti-symmetry, if $k$ is odd.



**Remark**:

$\displaystyle \frac{(2k)!}{2^{k} \cdot k!} = \frac {1 \cdot 2 \cdot 3 \cdot 4 \cdot ... \cdot (2k)}{2^{k} \cdot k!}$

​             $= \displaystyle \frac {(2 \cdot 4 \cdot 6 \cdot ... \cdot 2k) \cdot (1 \cdot 3 \cdot 5 \cdot ... \cdot (2k - 1))}{2^{k} \cdot k!}$

​             $= \displaystyle \frac {2^{k} \cdot (1 \cdot 2 \cdot 3 \cdot ... \cdot k) \cdot (1 \cdot 3 \cdot 5 \cdot ... \cdot (2k - 1))}{2^{k} \cdot k!}$

​             $= \displaystyle \frac {2^{k} \cdot k! \cdot (1 \cdot 3 \cdot 5 \cdot ... \cdot (2k - 1))}{2^{k} \cdot k!} = (2k - 1)!!$



##### Equality in Distributions

Let $X$ and $Y$ be two random variables from two different experiments.

1) Flip a fair coin

$X = \begin{cases} 1 & \text {if Head} \\ 0 & \text {if Tail} \end{cases}$

2) Roll a fair 6-sided dice

$Y = \begin{cases} 1 & \text {if roll is even} \\ 0 & \text {if roll is odd} \end{cases}$

$X$ and $Y$ have different **sample space** and same **distribution** with *probability mass function* $p(1) = p(0) = \displaystyle \frac {1}{2}$.

**Random variables have the same distribution if $P(X \in B) = P(Y \in \mathcal{B})$ for any $B \in \mathcal{B}$.**



###### Proposition

**Assume $X$ has $M_X$ such that $M_X$ is finite in some interval $(-\delta, \delta)$. If $M_Y = M_X$ in this $(-\delta, \delta)$, then $X$ and $Y$ have the same distribution.**

Actually, the general interval $(a, b)$ $(a < b)$ is still correct.

For example, assume $\rho _X (s) = \begin{cases} \displaystyle \frac{1}{s^{2}} & s \geq 1 \\ 0 & s < 1 \end{cases}$.

We have $M_X (t) = \displaystyle\int_{1}^{\infty} e^{ts} \cdot \frac {1}{s^2} \text{d}s$

​                              $= \begin{cases} \infty & t > 0 \\ 1 & t = 0 \\ \text{finite} & t < 0 \end{cases}$

In this case, $M_X (t)$ is finite in interval $(-\infty, 0)$, which is not symmetric around $0$.



###### Example

Suppose that $X$ has moment generating function $M_X (t) = \displaystyle \frac{1}{2} + \frac{1}{3} e^{-2t} + \frac{1}{6} e^{3t}$.

$X$ is a discrete random variable, where $P(X = 0) = \displaystyle \frac{1}{2}$, $P(X = -2) = \displaystyle \frac {1}{3}$, and $P(X = 3) = \displaystyle \frac {1}{6}$.



##### A Review of Distributions

###### Discrete Random Variables

| Distribution | Probability Mass Function                                    | Expectation                 | Variance                            | Moment-generating Function                                   |
| ------------ | ------------------------------------------------------------ | --------------------------- | ----------------------------------- | ------------------------------------------------------------ |
| Bernoulli    | $P(X = k) = \begin{cases} p & k = 1 \\ 1 - p & k = 0 \end{cases}$ | $p$                         | $p(1 - p)$                          | $M_X (t) = 1 - p + pe^{t}$                                   |
| Binomial     | $P(X = k) = \displaystyle{n \choose k} \cdot p^{k} \cdot (1 - p)^{n - k}$ | $np$                        | $np(1 - p)$                         | $M_X (t) = (pe^{t} + 1 - p)^{n}$                             |
| Geometric    | $P(X = k) = p \cdot (1 - p)^{k - 1}$                         | $\displaystyle \frac{1}{p}$ | $\displaystyle \frac{1 - p}{p^{2}}$ | $M_X (t) = \displaystyle\frac{pe^{t}}{1 - e^{t}(1 - p)} \text{ for } t < -\ln (1 - p)$ |
| Poisson      | $P(X = k) = e^{-\lambda} \cdot \displaystyle \frac{\lambda ^{k}}{k!}$ | $\lambda$                   | $\lambda$                           | $M_X (t) = e^{\lambda (e^{t} - 1)}$                          |



###### Continuous Random Variables

| Distribution | Probability Density Function                                 | Expectation                       | Variance                                | Moment-generating Function                                   |
| ------------ | ------------------------------------------------------------ | --------------------------------- | --------------------------------------- | ------------------------------------------------------------ |
| Uniform      | $f_X (t) = \displaystyle \frac{1}{b - a} \text{ for } a \leq t \leq b$ | $\displaystyle\frac{1}{2}(a + b)$ | $\displaystyle \frac{1}{12}(b - a)^{2}$ | $M_X (t) = \displaystyle \frac{e^{tb} - e^{ta}}{t (b - a)}$  |
| Exponential  | $f_X (t) = \begin{cases} \lambda e^{-\lambda t} & t \geq 0 \\ 0 & t < 0 \end{cases}$ | $\displaystyle \frac{1}{\lambda}$ | $\displaystyle \frac{1}{\lambda ^{2}}$  | $M_X (t) = \begin{cases} \displaystyle \frac{\lambda}{\lambda - t} & t < \lambda \\ \infty & t \geq \lambda \end{cases}$ |
| Normal       | $f_X (t) = \displaystyle \frac{1}{\sigma \sqrt{2\pi}} e^{-\frac{1}{2} (\frac{x - \mu}{\sigma})^{2}}$ | $\mu$                             | $\sigma^{2}$                            | $M_X (t) = e^{\mu t + \displaystyle \frac{1}{2} \sigma ^{2} t^{2}}$ |



#### Lecture 20 Veteran's Day

November 11, 2019



#### Lecture 21  Functions of Random Variables

November 13, 2019



Let $X$ be a random variable.

$g: \mathbb{R} \to \mathbb{R}$

Then, denote $Y = g(X)$ as a new random variable.



##### 1) If $X$ is discrete, then $Y$ has to be discrete

$P(Y = k) = P(g(X) = k)$

​                   $= P({X = l, g(l) = k})$

​                   $= \sum \limits_{l \text{ s.t. } \\ g(l) = k} P(X = l)$



###### Example

$X$ uniform on ${-1, 0, 1}$

$Y = X^{2}$

$Y$ has possible values $0, 1$

$P(Y = 0) = \sum \limits_{l^{2} = 0} P(X = l)$

​                   $= P(X = 0)$

​                   $= \displaystyle \frac{1}{3}$

$P(Y = 1) = \sum \limits_{l^{2} = 1} P(X = l)$

​                   $= P(X = -1) + P(X = 1)$

​                   $= \displaystyle \frac {2}{3}$



##### 2) If $X$ is continuous? We don't know. $g(X)$ can be discrete, continuous, or neither.



###### When is $g(X)$ continuous? What conditions can we impose on $g$ to maintain continuity?

If $g$ is differentiable at all but finitely many points and $g'(x) \neq 0$ at all but finitely many points, then $g(X)$ can be **continuous**.



###### General CDF Approach

1) Let $X \sim N(0, 1)$ and $Y = X^{2}$. Find the c.d.f. $F_Y$ and p.d.f. $f_Y$ of $Y$.

The range of $Y$ is $[0, +\infty)$

$F_Y(t) = P(Y \leq t)$

For $t < 0$, $F_Y (t) = 0$ and $f_Y (t) = 0$

For $t \geq 0$, $P(Y \leq t) = P(X^{2} \leq t)$

​                                    $= P(-\sqrt{t} \leq X \leq \sqrt{t})$

​                                    $= 2 \cdot P(0 \leq X \leq \sqrt{t})$

​                                    $= 2 \cdot P(X \leq \sqrt{t}) - 2 \cdot P(X \leq 0)$

​                                    $= 2 \Phi (\sqrt{t}) - 1$

Then, $\rho_Y(t) = \displaystyle 2 \cdot \varphi (\sqrt {t}) \cdot \frac {1}{2\sqrt{t}}$

​                      $= \displaystyle \frac{1}{\sqrt{t}} \cdot \frac{1}{\sqrt{2\pi}} e^{-\frac{1}{2} (\sqrt{t})^{2}}$

​                      $= \displaystyle \frac{1}{\sqrt{2\pi t}} e^{-\frac{1}{2} t}$

**c.d.f.: $F_Y (t) = \begin{cases} 0 & t < 0 \\ 2 \Phi (\sqrt{t}) - 1 & t \geq 0 \end{cases}$**

**p.d.f: $\rho_Y (t) = \begin{cases} 0 & t < 0 \\ \displaystyle \frac{1}{\sqrt{2\pi t}} e^{-\frac{1}{2} t} & t \geq 0 \end{cases}$**



**Remark**: Density is defined everywhere. Actually, at $t = 0$, $\rho_Y (t)$ can be any value.



2) Let a random variable $X$ has p.d.f $\rho_X$ and c.d.f $F_X$. Let $Y = aX + b$ where $a$ and $b$ are fixed values and $a \neq 0$. Find the pdf of random variable $Y$.

$F_Y (t) = P(Y \leq t)$

​            $= P(aX + b \leq t)$

Depending upon the sign of $a$:

If $a > 0$, $F_Y (t) = \displaystyle P(X \leq \frac{t - b}{a})$

​                           $= \displaystyle F_X (\frac{t - b}{a})$

If $a < 0$, $F_Y (t) = \displaystyle P(X \geq \frac{t - b}{a})$

​                           $= 1 - \displaystyle F_X (\frac{t - b}{a})$

Then, $f_Y (t) = \displaystyle \begin{cases} \displaystyle \frac{1}{a} f_X (\frac{t - b}{a}) & a > 0 \\ \displaystyle -\frac{1}{a} f_X (\frac{t - b}{a}) & a < 0 \end{cases}$

​                      $= \displaystyle \frac{1}{\lvert a \rvert} f_X (\frac {t - b}{a})$



###### Approach by Formula

**Condition: $g$ is increasing and one-to-one (injective)**

$g(x) > g(y)$ if $x > y$ $\to$ $g$ has an inverse $g^{-1}$



Still, let $X$ be a random variable and $g: \mathbb{R} \to \mathbb{R}$. Then, denote $Y = g(X)$ as a new random variable.

$F_Y (t) = P(g(X) \leq t)$

​            $= P(g^{-1}(g(x)) \leq g^{-1} (t))$

​            $= P(X \leq g^{-1} (t))$

Then, $\rho_Y (t) = \rho_X (g^{-1} (t)) \cdot \displaystyle \frac {1}{g' (g^{-1} (t))}$.



**Example**

Let $X \sim N(0, 1)$ and $Y = X^{3}$.

Since function $g(x) = x^{3}$ is differentiable and one-to-one, so we can use the formula in this case.

$g'(x) = 3 x^{2}$

$g^{-1} (x) = \sqrt[\leftroot{-2}\uproot{3}3]{a}$

Then, $\rho_Y (t) = \displaystyle \rho_X(g^{-1} (t)) \cdot \frac {1}{g'(g^{-1} (t))}$

​                     $= \displaystyle \varphi (\sqrt[\leftroot{-4}\uproot{2}3]{t}) \cdot \frac{1}{3 \cdot t^\frac{2}{3}}$



##### Introduction to Joint Distributions

Let $X_1, X_2, ..., X_n: \Omega \to \mathbb{R}$ be discrete random variables.



How do these random variables behave?

$\mu_X (B) = P(X \in B)$ for $B \in \mathcal{B}$

Why don't we just consider $\mu_{X_i}$ for $i = 1, 2, ..., n$?

$\mu_{X_1, ..., X_n} (B_1, ..., B_n) = P(X_1 \in B_1, ..., X_n \in B_n)$



#### Lecture 22 Joint Distributions

November 15, 2019



##### Discrete Random Variable

Let $X_1, X_2, ..., X_n: \Omega \to \mathbb{R}$.

Definition: $\mu_{X_1, ..., X_n} (B_1, ..., B_n) = P(X_1 \in B_1, ..., X_n \in B_n)$



Given $\mu_{X_1}, ..., \mu_{X_n}$ (**individual**), there are many possibilities for $\mu_{X_1, ..., X_n}$(**joint**).



###### Probability Mass Function

1) Individual case (Recap)

$P(X = k) = p_X (k)$



2) Joint case

**Definition**: $P(X_1 = k_1, ..., X_n = k_n) = p_{X_1, ..., X_n} (k_1, ..., k_n)$ for all possible values $k_1, ..., k_n$ of $X_1, ..., X_n$

**Remark**: $\sum \limits_{k_1, ..., k_n} p(k_1, ..., k_n) = 1$



###### Expectation of a Function

1) Individual case (Recap)

$\mathbb{E} [g(X)] = \sum \limits_{k} g(k) \cdot P(X = k)$ where $g: \mathbb{R} \to \mathbb{R}$



2) Joint case

$\mathbb{E} [g(X_1, ..., X_n)] = \sum \limits_{k_1, ..., k_2} g(k_1, ..., k_n) \cdot P(X_1 = k_1, ..., X_n = k_n)$ where $g: \mathbb{R}^{n} \to \mathbb{R}$



$\mu_{X_1, ..., X_n}$ has $\mu_{X_i}$ for each $i$.

Then, $p_{X_1, ..., X_n}$ has $p_{X_i}$ for each $i$? **Yes.**



###### Marginal PMF

$P_{X_i} (k_i) = \sum \limits_{k_1, ..., k_{i - 1}, \\ k_{i + 1}, ..., k_n} p_{X_1, ..., X_n} (X_1 = k_1, ..., X_n = k_n)$

​               $= P(X_i = k_i, X_1 \in \mathbb{R}, ..., X_{i - 1} \in \mathbb{R}, X_{i + 1} \in \mathbb{R}, ..., X_n \in \mathbb{R})$

Simply, $p_X (x) = P \{X = x\} =\sum \limits_{y: p(x, y) >0} p(x, y)$

Similarly, $p_Y (y) = P \{Y = y\} =\sum \limits_{x: p(x, y) >0} p(x, y)$



**Example**: Roll a fair dice twice.

Denote $X = \text{ number of fives}$ and $Y = \text{ number of odd rolls}$.

1) Fill the table

|         |                           $X = 0$                            |                           $X = 1$                            |                           $X = 2$                            |
| :-----: | :----------------------------------------------------------: | :----------------------------------------------------------: | :----------------------------------------------------------: |
| $Y = 0$ | $\displaystyle\frac{1}{2} \times \frac{1}{2} = \frac{1}{4}$  |                             $0$                              |                             $0$                              |
| $Y = 1$ | $\displaystyle\frac{1}{2} \times \frac{2}{3} = \frac{1}{3}$  | $\displaystyle\frac{1}{2} \times \frac{1}{3} = \frac{1}{6}$  |                             $0$                              |
| $Y = 2$ | $\displaystyle\frac{1}{2} \times \frac{2}{3} \times \frac{1}{2} \times \frac{2}{3} = \frac{1}{9}$ | $\displaystyle\frac{1}{2} \times \frac{2}{3} \times \frac{1}{2} \times \frac{1}{3} \times 2 = \frac{1}{9}$ | $\displaystyle\frac{1}{6} \times \frac{1}{6} = \frac{1}{36}$ |



2) Find $\mathbb{E} [XY]$.

$\mathbb{E} [XY] = \sum \limits_{k_1, k_2} k_1 \cdot k_2 \cdot P(X = k_1, Y = k_2)$

​              $= \sum \limits_{k_1 \in \{0, 1, 2\}, \\ k_2 \in \{0, 1, 2\}} k_1 \cdot k_2 \cdot P(X = k_1, Y = k_2)$

​              $= \displaystyle 1 \times 1 \times \frac{1}{6} + 2 \times 1 \times \frac{1}{9} + 2 \times 2 \times \frac{1}{36}$

​              $= \displaystyle \frac{1}{2}$



3) Find the marginal probability mass function for $X$ and $Y$.

$p_X (0) = \displaystyle \frac{1}{4} + \frac{1}{3} + \frac{1}{9} = \frac{25}{36}$

$p_X (1) = \displaystyle 0 + \frac{1}{6} + \frac{1}{9} = \frac{5}{18}$

$p_X (2) = \displaystyle 0 + 0 + \frac{1}{36} = \frac{1}{36}$

*Check*: $p_X (0) + p_X (1) + p_X (2) = 1$



##### Continuous Random Variable

Let $X_1, X_2, ..., X_n: \Omega \to \mathbb{R}$ be *continuous* random variables.



###### Probability Density Function

1) Individual case (Recap)

$\displaystyle\int_{B} \rho(x) \text{ d}x = P(X \in B)$



2) Joint case

**Definition**: $\mathbb{R}^{n} \to \mathbb{R}_{\geq 0}$ is the *joint density* if $\displaystyle\int_{B_1} ... \displaystyle\int_{B_n} \rho(X_1, ..., X_n) \text{ d}x_n ... \text{d}x_1 = P(X_1 \in B_1, ..., X_n \in B_n)$

In other words, $X_1, ..., X_n$ are jointly continuous if there exists $\rho: \mathbb{R}^{n} \to \mathbb{R}_{\geq 0}$ is the joint probability density function $\displaystyle\int_{B_1} ... \displaystyle\int_{B_n} rho(X_1, ..., X_n) \text{ d}x_n ... \text{d}x_1 = P(X_1 \in B_1, ..., X_n \in B_n)$.



**Example**

Let $(X, Y)$ be jointly continuous with $\rho (x, y) = \begin{cases} cxy^{2} & \text{for } (x, y) \in [0, 1]^{2} \\ 0 & \text{otherwise} \end{cases}$.

1) Find the value of $c$.

$\displaystyle\iint_{\mathbb{R}} \rho (x, y) \text{ d}x \text{ d}y = c \cdot \int_{0}^{1} \int_{0}^{1} xy^{2} \text{ d}x \text{ d}y$

​                                $= c \cdot \displaystyle\int_{0}^{1} x \text{ d}x \cdot \int_{0}^{1} y^{2} \text{ d}y$

​                                $= \displaystyle \frac{1}{6} c = 1$

Therefore, $c = 6$.



2) Compute $P(X < Y)$.

The possible values of $(X, Y)$ are in the upper right hand triangle of the unit square.

![img](http://prob140.org/textbook/images/Chapter_17/03_Marginal_and_Conditional_Densities_4_0.png)

$P(X < Y) = \displaystyle\int_{0}^{1} (\int_{0}^{y} 6xy^{2} \text{ d}x) \text{ d}y$  **or** $\displaystyle \int \limits_{0}^{1} (\int \limits_{x}^{1} 6xy^{2} \text{ d}y) \text{ d}x$

Both of the integrals give us $P(X < Y) = \displaystyle \frac{3}{5}$.



**Remark**:

1) This is *NOT* a uniform distribution.

2) If the distribution is uniform, e.g. $\rho (x, y) = \begin{cases} 1 & \text{for } (x, y) \in [0, 1]^{2} \\ 0 & \text{otherwise} \end{cases}$, then it gives $\displaystyle P(X < Y) = \frac{1}{2}$.



###### Marginal PDF

Let $X_1, ..., X_n$ are jointly continuous.

Then $\rho _{X_1} (x_1) = \displaystyle\int_{\mathbb{R}} \int_{\mathbb{R}} ... \int_{\mathbb{R}} \rho (X_1, ..., X_n) \text{ d}x_2 ... \text{d}x_n$ ($n - 1$ integrals)

Similarly for $X_i$, $\rho _{X_i} (x_i) = \displaystyle\int_{\mathbb{R}} \int_{\mathbb{R}} ... \int_{\mathbb{R}} \rho (X_1, ..., X_n) \text{ d}x_1 ... \text{d}x_{i - 1} \text{ d}x_{i + 1} ... \text{d}x_n$ (still $n - 1$ integrals)



**Example**

$\rho (x, y) = \begin{cases} \displaystyle \frac{1}{2} & \text{for } 0 < x < y < 2 \\ 0 & \text{otherwise} \end{cases}$

Then, $\rho _X (x) = \displaystyle\int_{\mathbb{R}} \rho(x, y) \text{ d}y$

​                       $= \displaystyle\int_{x}^{2} \frac{1}{2} \text{ d}y = 1 - \frac{1}{2} x$



#### Lecture 23 Review

November 18, 2019



##### Problem Set 1



###### Problem 1

One of the nationwide TV channels wants to determine the level of support of Yuriy N. for the future presidential elections in one of the European countries. For this, they poll $n$ randomly chosen individuals. How large should $n$ be to get a $95\%$ confidence interval of size $0.1$ for the true value $p$ of support of Yuriy N. among the population?

*Solution*. We model the outcomes of the poll using a random variable $S_n$ having *binomial* distribution parameters $n$ and $p$.

By the *Central Limit Theorem* and the bound $\displaystyle p(1 - p) \leq \frac{1}{4}$, for any $\varepsilon > 0$,

we get $\displaystyle P(-\varepsilon \leq \frac{S_n}{n} - p \leq \varepsilon) \geq 2 \Phi(2 \varepsilon \sqrt{n}) - 1$.

For the $95\%$ confidence interval, the above probability should be at least $0.95$. At the same time, it is required that the size of the interval, which is equal to $2\varepsilon$, has to be $0.1$.

Plugging these two conditions, we get $2\Phi(0.1 \sqrt{n}) - 1 \geq 0.95$.

By *Normal CDF*, $0.1 \sqrt{n} \geq 1.96$, therefore, $n \geq 19.6^2$.

Hence, $n$ should be greater or equal to $385$ to get a $95\%$ confidence interval of size $0.1$ for the true value $p$ of support of Yuriy N. among the population.



###### Problem 2

The probability that a person living in San Diego has taken the *MATH 180A Introduction to Probability* class is $10^{-3}$. You interview $100$ randomly chosen people. Estimate the probability that there will be at least $2$ among them who took *MATH 180A* (you can use the fact that $e^{x} \approx 1 + x$ for $x$ small). Justify your choice of approximation.

*Solution*. We model the number of interviewed people who took *MATH 180A* by a random variable $X$ having *binomial* distribution with parameters $10^{−3}$ and $100$.

Since $p = \displaystyle \frac{1}{1000}$ is really rare and $np^2 = 100 \cdot (\displaystyle \frac{1}{1000})^2 = \frac{1}{10000}$ is really small, we can estimate the probabilities related to the *binomial* random variable $X$ by approximating it with a *Poisson* distribution with parameter $\lambda = np = 0.1$.

$P(X \geq 2) = 1 - P(X = 0) - P(X = 1)$

​                    $= 1 - \displaystyle e^{-0.1} \frac{0.1^0}{0!} - e^{-0.1} \frac{0.1^1}{1!}$

​                    $= \displaystyle 1 - \frac{11}{10} e^{-0.1}$

​                    $\approx 1 - 1.1 \cdot (1 - 0.1) = 0.01$

Therefore, the probability that there will be at least $2$ among $100$ randomly chosen people who took *MATH 180A* is $0.01$ by *Poisson approximation*.



###### Problem 3

Let $X$ be a continuous random variable with moment generating function $M_X (t) = e^{8t^{2}}$.



(a) Find the probability density function of $X$.

*Solution*. We note that the *moment generating function* of the random variable $X$ is in the form of *exponential of a quadratic function*, which corresponds to the *normal distribution*.

Let $X \sim N(\mu, \sigma^2)$.

Now, solve the equation $M_X (t) = \displaystyle e^{\mu t + \frac{1}{2} \sigma ^2 t^2}$.

We get that $\mu = 0$ and $\sigma^2 = 16$.

Therefore, $X \sim N(0, 16)$.

Then, the p.d.f. of $X$ is given by $f_X (x) = \displaystyle \frac{1}{\sqrt{32\pi}} e^{-\frac{1}{32} x^2}$.



(b) Compute the probability density function of the random variable $Y = X^{3} + 1$ in terms of the probability density function of $X$.

*Solution*. We note that the range of random variable $Y$ is $(-\infty, \infty)$.

We find the p.d.f. through its c.d.f. $F_Y (t) = P(Y \leq t)$.

$P(Y \leq t) = P(X^3 + 1 \leq t)$

​                   $= \displaystyle P(X \leq (t - 1)^{\frac{1}{3}})$

​                   $= \displaystyle \Phi_X ((t - 1)^{\frac{1}{3}})$

Therefore, $f_Y (t) = \displaystyle \frac{\text{d}}{\text{d}t} P(Y \leq t)$

​                               $= \displaystyle f_X ((t - 1)^{\frac{1}{3}}) \frac{1}{3(t - 1)^{\frac{2}{3}}}$



###### Problem 4

You play the following game. You toss a fair coin repeatedly. If you get Heads, the game stops. If the first Heads appears on the first two tries, you get (win) $2$ dollars. If you don’t get Heads on the first two tries, for each next toss (starting from the third try) you pay (lose) $1$ dollar until you get Heads (which stops the game). Denote by $P$ your balance (positive if you win, or negative if you lose) at the end of the game.



(a) Let $X \sim \text{Geom}(0.5)$. Using the fact that $\mathbb{E}[X] = 2$, compute $\sum \limits_{k = 3}^{\infty} kP(X = k)$.

*Solution*. $\mathbb{E}[X] = \displaystyle \sum \limits_{k = 1}^\infty kP(X = k)$

​                          $= 1 \cdot 0.5 + 2 \cdot 0.25 + \displaystyle \sum \limits_{k = 3}^\infty kP(X = k)$

​                          $= 1 + \displaystyle \sum \limits_{k = 3}^\infty = 2$

Therefore, $\displaystyle \sum \limits_{k = 3}^\infty = 1$.



(b) Express $P$ as a function of $X$.

*Solution*. Let $X$ be the first time you get Heads. Then $X \sim \text{Geom} (0.5)$.
You win $2$ dollars if $X \leq 2$, otherwise, if $X \geq 3$, you lose $X − 2$ dollars, so $P = \displaystyle \begin{cases} 2 & X \leq 2 \\ 2 - X & X \geq 3 \end{cases}$.



(c) Using the result of part (a), compute $\mathbb{E}[P]$.

*Solution*. $\mathbb{E}[P] = 2P(X \leq 2) + \displaystyle \sum \limits_{k = 3}^\infty (2 - k) P(X = k)$

​                          $= 2P(X \leq 2) + \displaystyle \sum \limits_{k = 3}^\infty 2P(X = k) - \sum \limits_{k = 3}^\infty kP(X = k)$

​                          $= 2\displaystyle \sum \limits_{k = 1}^\infty P(X = k) - \sum \limits_{k = 3}^\infty kP(X = k)$

​                          $= 2 - 1 = 1$



##### Problem Set 2



###### Problem 1

Suppose that the time it takes for you to complete your probability homework is distributed according to an exponential random variable with mean $1$ hour. You start your homework at 8:00 PM. Your bedtime is 10:00 PM. If you finish your homework before your bedtime, you watch TV until your bedtime and then go to sleep. If you do not finish by your bedtime, you go to sleep anyway, and so you do not watch TV at all. Let $Y$ be the random variable that measures the amount of time in hours that you spend watching TV.



(a) Compute the cumulative distribution function of $Y$.

*Solution*. Let the random variable $X$ be the time it takes for you to complete your probability homework such that $X \sim \text{Exp} (1)$. Then, $Y = \begin{cases} 2 - X & 0 \leq X \leq 2 \\ 0 & X > 2 \end{cases}$.

We want to find $F_Y (t) = P(Y \leq t)$.

For $t < 0$, $P(Y \leq t) = 0$.

For $t = 0$, $P(Y \leq t) = P(Y = 0) = P(X \geq 2) = \displaystyle \frac{1}{e^2}$.

For $0 < t \leq 2$, $P(Y \leq t) = P(X \geq 2 - t) = \displaystyle e^{t - 2}$.

For $t > 2$, $P(Y \leq t) = 1$.

In conclusion, $F_Y (t) = \begin{cases} 0 & t < 0 \\  e^{t - 2} & 0 \leq t \leq 2 \\ 1 & t > 2 \end{cases}$.



(b) Calculate the expected value $\mathbb{E}[Y]$.

*Solution*. By Part (a), we note that $Y$ is *neither continuous nor discrete*. So, we calculate the expectation using the fact that $Y$ is a function of $X$ (this reasoning was implicit in the calcuation of the CDF of $Y$). In particular, $Y = g(X)$, where $g : \mathbb{R}_{\geq 0} \to \mathbb{R}_{\geq 0}$ is the function $g(x) = \begin{cases} 2 - x & 0 \leq x \leq 2 \\ 0 & x > 2 \end{cases}$.

Then, $\mathbb{E}[Y] = \mathbb{E}[g(X)] = \displaystyle \int_{0}^\infty g(x) \cdot e^{-x} \text{ d}x = \int_0^2 (2 - x) \cdot e^{-x} \text{ d}x + \int_2^\infty 0 \cdot e^{-x} \text{ d}x$.

Since $\displaystyle \int_2^\infty 0 \cdot e^{-x} \text{ d}x = 0$, then we just need to compute $\displaystyle \int_0^2 (2 - x) \cdot e^{-x} \text{ d}x$.

Therefore, $\mathbb{E}[Y] = \displaystyle \left[-(2 - x)e^{-x} + e^{-x} \right]_0^2$

​                             $= 1 - \displaystyle \frac{1}{e^2}$



###### Problem 2

Let $X \sim \text{Poisson}(\lambda)$. Compute $\mathbb{E}[\displaystyle \frac{1}{1 + X}]$.

*Solution*. This is a direct calculation.

$\mathbb{E}[\displaystyle \frac{1}{1 + X}] = \sum \limits_{k = 0}^\infty (\frac{1}{1 + k}) P(X = k)$

​                   $= \displaystyle \sum \limits_{k = 0}^\infty \frac{1}{1 + k} \cdot e^{-\lambda} \cdot \frac{\lambda^k}{k!}$

​                   $= \displaystyle e^{-\lambda} \sum \limits_{k = 0}^\infty \frac{\lambda^k}{(k + 1)!}$

​                   $= \displaystyle \frac{1}{\lambda e^{-\lambda}} \sum \limits_{k = 0}^\infty \frac{\lambda^{k + 1}}{(k + 1)!}$

​                   $= \displaystyle \frac{1}{\lambda e^{-\lambda}} \sum \limits_{k = 1}^\infty \frac{\lambda^k}{k!}$

​                   $= \displaystyle \frac{1}{\lambda e^{-\lambda}} (e^\lambda - 1)$ **Remark**. $e^\lambda - 1 = \displaystyle \sum \limits_{k = 1}^\infty \frac{\lambda^k}{k!} = \sum \limits_{k = 0}^\infty \frac{\lambda^k}{k!} - 1$

​                   $= \displaystyle \frac{1 - e^{-\lambda}}{\lambda}$



###### Problem 3

Suppose that we plan to interview $n$ randomly chosen individuals to estimate the unknown fraction $p \in  (0,1)$ of the population that likes ice cream. Let $\displaystyle \hat{p} = \displaystyle \frac{S_n}{n}$ be the random variable that records the proportion of the individuals who say they do like ice cream. How many people must we interview to have at least a $95\%$ chance of capturing the true fraction $p$ with a margin of error $0.01$? You may leave your answer in terms of the inverse $\Phi ^{-1}$ of the cumulative distribution function of the standard normal.

*Solution*. By the *Central Limit Theorem* and the bound $\displaystyle p(1 - p) \leq \frac{1}{4}$, for any $\varepsilon > 0$,

we get $\displaystyle P(-\varepsilon \leq \frac{S_n}{n} - p \leq \varepsilon) \geq 2 \Phi(2 \varepsilon \sqrt{n}) - 1$.

For the $95\%$ confidence interval, the above probability should be at least $0.95$.

Since the margin of error is $0.01$, then $2 \Phi (0.02 \sqrt{n}) - 1 \geq 0.95$.

Therefore, $n \geq 2500[\Phi^{-1}(0.975)]^2$.



###### Problem 4

Suppose that the random variable $X$ has the probability density function $f(x) = \displaystyle \frac{\lambda}{2} e^{-\lambda \lvert x \rvert}$, where $\lambda > 0$.



(a) Compute the moment generating function $M_X (t)$ of $X$.

*Solution*. This is a direct calculation.

$M_X (t) = \mathbb{E}[e^{tX}]$​

​             $= \displaystyle \int_{-\infty}^\infty e^{tx} \cdot \frac{\lambda}{2} e^{-\lambda \lvert x \rvert} \text{ d}x$

​             $= \displaystyle \int_{-\infty}^0 e^{tx} \cdot \frac{\lambda}{2} e^{\lambda x} \text{ d}x + \int_0^\infty e^{tx} \cdot \frac{\lambda}{2} e^{-\lambda x} \text{ d}x$

​             $= \displaystyle \frac{\lambda}{2} \int_{-\infty}^0 e^{(\lambda + t)x} \text{ d}x + \frac{\lambda}{2} \int_0^\infty e^{(t - \lambda) x} \text{ d}x$

Note that $\displaystyle \int_{-\infty}^0 e^{(\lambda + t)x} \text{ d}x = \infty$ if $t + \lambda \leq 0$ and $\displaystyle \int_0^\infty e^{(t - \lambda)x} \text{ d}x = \infty$ if $t - \lambda \geq 0$.

For $-\lambda < t < \lambda$, $\displaystyle \int_{-\infty}^0 e^{(\lambda + t)x} \text{ d}x = \left[\frac{\lambda}{2(\lambda + t)} e^{(\lambda + t)x} \right]_{-\infty}^0 = \frac{\lambda}{2(\lambda + t)}$.

Similarly, for $-\lambda < t < \lambda$, $\displaystyle \int_0^\infty e^{(t - \lambda)x} \text{ d}x = \left[\frac{\lambda}{2(t - \lambda)} e^{(t - \lambda)x} \right]_0^\infty = -\frac{\lambda}{2(t - \lambda)} = \frac{\lambda}{2(\lambda - t)}$.

Therefore, for $-\lambda < t < \lambda$, $M_X (t) = \displaystyle \frac{\lambda}{2(\lambda + t)} + \frac{\lambda}{2(\lambda - t)} = \frac{\lambda^2}{\lambda^2 - t^2}$.

Hence, the *moment generating function* of $X$ is $M_X (t) = \begin{cases} \displaystyle \frac{\lambda^2}{\lambda^2 - t^2} & \lvert t \rvert < \lambda \\ +\infty & \lvert t \rvert \geq \lambda \end{cases}$.



(b) Use the moment generating function to compute the $n$th moment of $X$.

*Solution*. We find the *Taylor series* of the moment generating function in Part (a) in the region $-\lambda < t < \lambda$.

$M_X (t) = \displaystyle \frac{\lambda^2}{\lambda^2 - t^2}$

​             $= \displaystyle \frac{1}{1 - (\frac{t}{\lambda})^2}$

​             $= \displaystyle \sum \limits_{k = 0}^\infty (\frac{t^2}{\lambda^2})^k$

​             $= \displaystyle \sum \limits_{k = 0}^\infty \frac{(2k)!}{\lambda^{2k}} \cdot \frac{t^{2k}}{(2k)!}$

In particular, the coefficients of the *odd* power terms $t^{2k + 1}$ are all $0$, so the *odd* moments of $X$ are all zero. The *even* moments $m_{2k}$ are then the coefficients of the Taylor series: $m_{2k} = \displaystyle \frac{(2k)!}{\lambda^{2k}} \text{ for } k \in \mathbb{N}$.



###### Problem 5

Let $X \sim N(0, 1)$. Compute the probability density function of the random variable $\displaystyle \frac{1}{1 + X^{2}}$. You may leave your answer in terms of the density $\varphi$ of the standard normal.

*Solution*. Note that the range of $\displaystyle \frac{1}{1 + X^2}$ is $(0, 1)$ given that $X \sim N(0, 1)$.

Since $\displaystyle \frac{1}{1 + X^2}$ is *not injective*, we find its density through its CDF.

Let $Y = \displaystyle \frac{1}{1 + X^2}$. We want to find $F_Y (t) = P(Y \leq t)$ first.

For $t \leq 0$, $P(Y \leq t) = 0$.

For $0 < t < 1$, $P(Y \leq t) = P(\displaystyle \frac{1}{1 + X^2} \leq t)$

​                                            $= P(X \geq \displaystyle \sqrt{\frac{1 - t}{t}} \text{ or } X \leq -\displaystyle \sqrt{\frac{1 - t}{t}})$

​                                            $= P(X \geq \displaystyle \sqrt{\frac{1 - t}{t}}) + P(X \leq -\displaystyle \sqrt{\frac{1 - t}{t}})$

​                                            $= 2P(X \leq -\displaystyle \sqrt{\frac{1 - t}{t}}) = 2\Phi(-\displaystyle \sqrt{\frac{1 - t}{t}})$.

For $t \geq 1$, $P(Y \leq t) = 1$.

Therefore, the CDF of $\displaystyle \frac{1}{1 + X^2}$ is $F_Y (t) = \begin{cases} 0 & t \leq 0 \\ 2\Phi(-\displaystyle \sqrt{\frac{1 - t}{t}}) & 0 < t < 1 \\ 1 & t \geq 1 \end{cases}$.

Differentiating the CDF, the density of $\displaystyle \frac{1}{1 + X^2}$ is $\rho (t) = \begin{cases} 0 & t \leq 0 \\ \varphi(-\displaystyle \sqrt{\frac{1 - t}{t}}) \frac{1}{t^2 \sqrt{\frac{1}{t} - 1}} & 0 < t < 1 \\ 0 & t \geq 1 \end{cases}$.



###### Problem 6

Let $X \sim \text{Exp} (\lambda)$. Compute the probability density function of the random variable $\displaystyle \frac{1}{X + 1}$.

*Solution*. Note that the range of $\displaystyle \frac{1}{X + 1}$ is $0 < \displaystyle \frac{1}{X + 1} \leq 1$.

Still, we find the PDF through the CDF of $\displaystyle \frac{1}{1 + X}$.

Let $Y = \displaystyle \frac{1}{X + 1}$. We want to find $F_Y (t) = P(Y \leq t)$.

For $t \leq 0$, $P(Y \leq t) = 0$.

For $0 < t < 1$, $P(Y \leq t) = P(\displaystyle \frac{1}{X + 1} \leq t)$

​                                             $= P(X \geq \displaystyle \frac{1}{t} - 1) = \displaystyle e^{-\lambda \frac{1 - t}{t}}$​.

For $t \geq 1$, $P(Y \leq t) = 1$.

Therefore, the CDF of $\displaystyle \frac{1}{X + 1}$ is $F_Y (t) = \displaystyle \begin{cases} 0 & t \leq 0 \\ e^{-\lambda \frac{1 - t}{t}} & 0 < t < 1 \\ 1 & t \geq 1 \end{cases}$.

Differentiating the CDF, the density of $\displaystyle \frac{1}{X + 1}$ is $\rho_Y (t) = \begin{cases} 0 & t \leq 0 \\ \displaystyle \frac{\lambda}{t^2} e^{-\lambda \frac{1 - t}{t}} & 0 < t < 1 \\ 0 t \geq 1 \end{cases}$.



###### Problem 7 (Just for Fun)

Show that there is no random variable $X$ with moment generating function $M_X (t)$ such that $M_X (1) = 3$ and $M_X (2) = 4$.

*Solution*

Assume the random variable $X$ exists, then $\mathbb{E} [e^{X}] = M_X (1) = 3$ and $\mathbb{E} [X^{2}] = M_X(2) = 4$ by the definition of *n-th moment*. Assume the new random variable $Y = e^{X}$.

Then, $\text{Var}(Y) = \mathbb{E}[Y^{2}] - \mathbb{E} [Y] ^{2} = 4 - 3^{2} = -5 < 0$. We know that the variance of a random variable cannot be *negative*, so the random variable $Y$ does not exist.

Therefore, there is no such random variable $X$.



#### Lecture 24 Midterm 2

November 20, 2019



##### Section A



###### Problem 1

(25 Points) $400$ randomly chosen individuals were interviewed to estimate the level of support of Yuriy N. as a candidate at the future presidential elections in one of the European countries. Out of $400$ interviewed, $168$ said that they support Yuriy N. Find the $95\%$ confidence interval for the true value $p$ of the support of Yuriy N. among the country population.

*Solution*. The $95\%$ confidence interval for the unknown parameter $p$ is of the form $[\hat{p} - \varepsilon, \hat{p} + \varepsilon]$ with $n = 400$ where $\hat{p} = \displaystyle \frac{168}{400} = 0.42$ and $\varepsilon$ is the smallest value satisfying $2\Phi(2 \varepsilon \sqrt{400}) - 1 \geq 0.95$.

By *Normal CDF*, $2 \varepsilon \cdot 20 = 1.96$. Then, $\varepsilon = \displaystyle \frac{1.96}{40} = 0.049$.

Therefore, $\hat{p} \pm \varepsilon = [0.42 - 0.049, 0.42 + 0.049] = [0.371, 0.469]$.

Hence, the $95\%$ confidence interval for the true value $p$ of the support of Yuriy N. among the country population is $[0.371, 0.469]$.



###### Problem 2

Let $X$ be a random variable having exponential distribution with expectation $2$ (i.e., $\mathbb{E}[X] = 2$). 



(a) (5 Points) Compute $\displaystyle \int_{0}^{\infty} e^{-\frac{x^{2}}{2}} \text{d}x$.

*Solution*. Since the function $\displaystyle e^{-\frac{x^2}{2}}$ is an *even* function, so $\displaystyle \int_{-\infty}^0 e^{-\frac{x^2}{2}} \text{ d}x = \int_0^\infty e^{-\frac{x^2}{2}} \text{ d}x$.

Therefore, $\displaystyle \int_0^\infty e^{-\frac{x^2}{2}} \text{ d}x = \frac{1}{2} \int_{-\infty}^{\infty} e^{-\frac{x^2}{2}} \text{ d}x$

​                                             $= \displaystyle \frac{1}{2} \sqrt{2\pi} = \sqrt{\frac{\pi}{2}}$



(b) (20 Points) Compute $\displaystyle \mathbb{E} [\frac{1}{\sqrt{X}}]$.

*Solution*. This is a direct calculation.

Since $\mathbb{E}[X] = 2$, then $\lambda = \displaystyle \frac{1}{\mathbb{E}[X]} = \frac{1}{2}$. Therefore, $X \sim \text{Exp} (\displaystyle \frac{1}{2})$.

Then, $\displaystyle \mathbb{E}[\frac{1}{\sqrt{X}}] = \int_0^\infty \frac{1}{\sqrt{x}} \cdot \frac{1}{2} e^{-\frac{1}{2} x} \text{ d}x$

​                          $= \displaystyle \int_0^\infty \frac{1}{t} \cdot \frac{1}{2} e^{-\frac{1}{2} t^2} \cdot 2t \text{ d}t$ where $t = \sqrt{x}$ for *integration by substitution*

​                          $= \displaystyle \int_0^\infty e^{-\frac{1}{2} t^2} \text{ d}t = \sqrt{\frac{\pi}{2}}$ by Part (a)



###### Problem 3

Let $X$ be a continuous random variable with PDF given by $f_X (x) = \displaystyle \begin{cases} \displaystyle \frac{1}{2x} & 1 < x < e^{2} \\ 0 & \text{otherwise} \end{cases}$. Let $Y = \ln (X)$.



(a) (5 points) What is the range (set of possible values) of $Y$?

*Solution*. The random variable $X$ takes values in the interval $(1, e^2)$. The function $Y = \ln (X)$ is a *strictly increasing* function, therefore, $Y = \ln (X)$ takes values in the interval $(\ln (1), \ln (e^2)) = (0, 2)$.

 

(b) (15 Points) Compute the CDF of $Y$.

*Solution*. We want to find $F_Y (t) = P(Y \leq t)$. By Part (a), the range of $Y$ is $(0, 2)$.

For $t \leq 0$, $P(Y \leq t) = 0$.

For $0 < t < 2$, $P(Y \leq t) = P(\ln X \leq t)$

​                                             $= P(X \leq e^t)$

​                                             $= \displaystyle \int_1^{e^t} \frac{1}{2x} \text{ d}x = \frac{1}{2} t$.

For $t \geq 2$, $P(Y \leq t) = 1$.

Therefore, the CDF of $Y$ is $F_Y (t) = \begin{cases} 0 & t \leq 0 \\ \displaystyle \frac{1}{2} t & 0 < t < 2 \\ 1 & t \geq 2 \end{cases}$.



(c) (5 Points) Compute the PDF of $Y$.

*Solution*. Differentiating the CDF, we get the density $f_Y (t) = \begin{cases} 0 & t \leq 0 \\ \displaystyle \frac{1}{2} & 0 < t < 2 \\ 0 & t \geq 2 \end{cases}$.

**Remark**. $Y \sim \text{Unif}[0, 2]$



###### Problem 4

You are waiting for a (free) bus and you believe that the waiting time (in minutes) has exponential distribution with expectation $10$. Alternatively, you can take Uber for $u$ dollars. Both bus and Uber will take you to the destination in $25$ minutes, but Uber requires $5$ more minutes to find the driver. If you arrive at the destination within next $30$ minutes, you will be able to buy a jersey of your favorite basketball team with a $15$ dollar discount.



(a) (15 Points) What is the expected gain if you decide to wait for the bus?

*Solution*. Let $X$ be the waiting time for the bus and $Y$ be the gain.

Then, $Y = \begin{cases} 15 & X < 5 \\ 0 & X \geq 5 \end{cases}$.

Since the waiting time for the bus is modeled by a random variable $X$ having exponential distribution $\text{Exp} (\lambda)$ with mean $\mathbb{E}[X] = 10$, we get $\lambda = \displaystyle \frac{1}{\mathbb{E}[X]} = \frac{1}{10}$ and $X \sim \text{Exp}(\displaystyle \frac{1}{10})$.

Now, this is a direct calculation for the expectation of $Y$ (the expected gain).

$\mathbb{E}[Y] = 15 P(X < 5) + 0 P(X \geq 5)$

​          $= 15 (1 - \displaystyle e^{-\frac{5}{10}}) = 15 - \displaystyle \frac{15}{\sqrt{e}}$

Therefore, the expected gain if you decide to wait for the bus is $15 - \displaystyle \frac{15}{\sqrt{e}}$.



(b) (10 points) For which price range of $u$ will it be more reasonable to take Uber?

*Solution*. If you take Uber for $u$ dollars, you will definitely arrive before the end of the sale and your gain will be $15 - u$ dollars in total.

It might be reasonable to take Uber if your gain will be at least at big at the expected gain from taking the bus.

Now, solve $15 - u \geq 15 - \displaystyle \frac{15}{\sqrt{e}}$. We get $u \leq \displaystyle \frac{15}{\sqrt{e}}$.

Therefore, it will be more to take Uber if the price $u \leq \displaystyle \frac{15}{\sqrt{e}}$.



##### Section C



###### Problem 1

Gustave gets home at $5:00 \text{ PM}$ and waits for a package to arrive. Once the package arrives, Gustave starts his dinner. If the package hasn't arrived by $7:00 \text{ PM}$, Gustave starts his dinner regardless. Assume that the time the package takes to arrive is exponential with a mean of $2$ hours.



(a) (9 Points) Let $X$ be the amount of time (in hours) that Gustave waits before starting his dinner. Compute the cumulative distribution function of $X$.

*Solution*. Let $Y \sim \text{Exp}(\displaystyle \frac{1}{2})$, then $X = \begin{cases} Y & \text{if } Y < 2 \\ 2 & \text{if } Y \geq 2 \end{cases}$.

Therefore, $F_X (t) = P(X \leq t) = \begin{cases} 0 & \text{if } t < 0 \\ P(Y \leq t) = 1 - e^{-\frac{t}{2}} & \text{if } 0 \leq t < 2 \\ 1 & \text{if } t \geq 2 \end{cases}$.



(b) (6 Points) Calculate the expected time $\mathbb{E}[X]$.

*Solution*. By Part (a), we see that $X$ is neither continuous nor discrete. So, we express $X$ as a function of $Y$. In particular, $X = g(Y)$, where $g: \mathbb{R}_{\geq 0} \to \mathbb{R}_{\geq 0}$ is the function $g(y) = \begin{cases} y & \text{if } 0 \leq y < 2 \\ 2 & \text{if } y \geq 2 \end{cases}$.

Now, $\mathbb{E}[X] = \mathbb{E}[g(Y)] = \displaystyle\int_{0}^{\infty} g(y) \cdot \frac{1}{2} e^{-\frac{y}{2}} \text{ d}y$

​                                        $= \displaystyle\int_{0}^{2} y \cdot \frac{1}{2} e^{-\frac{y}{2}} \text{ d}y + \displaystyle\int_{2}^{\infty} 2 \cdot \frac{1}{2} e^{-\frac{y}{2}} \text{ d}y$

​                                        $= \displaystyle \left[-ye^{-\frac{y}{2}} - 2e^{-\frac{y}{2}} \right]_0^2 + 2P(Y \geq 2)$

​                                        $= 2 - 4e^{-1} + 2e^{-1} = \displaystyle 2 - \frac{2}{e}$



###### Problem 2

Suppose the number $X$ of students that leave an exam early is distributed as a Poisson random variable. Assume that the probability that nobody leaves early is $\displaystyle \frac{1}{10}$.



(a) (5 Points) How many students do we expect to leave early?

*Solution*. Since $X \sim \text{Poisson}(\lambda)$ and $P(X = 0) = \displaystyle \frac{1}{10}$, so $P(X = 0) = e^{-\lambda} = \displaystyle \frac{1}{10}$.

Therefore, $\lambda = \ln 10$. We expect $\ln 10$ students to leave early.



(b) (5 Points) What is the probability that at least three students leave early?

*Solution*. $P(X \geq 3) = 1 - P(X = 0) - P(X = 1) - P(X = 2)$

​                                   $= \displaystyle 1 - e^{-\ln 10} \left(1 + \ln 10 + \frac{(\ln 10)^{2}}{2}\right)$



###### Problem 3

(10 Points) $10000$ randomly chosen individuals were interviewed to estimate the unknown fraction $p \in (0, 1)$ of the population that likes chocolate milk. The resulting estimate is $\hat{p}$. Suppose that we want to construct a $95\%$ confidence interval $(\hat{p} - \varepsilon, \hat{p} + \varepsilon)$. How large must we choose $\varepsilon$? You may leave your answer in terms of the inverse $\Phi^{-1}$ of the CDF of the standard normal.

*Solution*. We start with $2\Phi(2\varepsilon \sqrt{n}) - 1 \geq 0.95$, where $n = 10000$.

Plug in, we get the inequality $\Phi(200 \varepsilon) \geq 0.975$.

Since the density $\varphi$ of the standard normal is positive every, its CDF is strictly increasing and hence invertible, so $200\varepsilon \geq \Phi ^{-1}(0.975)$.

Therefore, $\varepsilon \geq \displaystyle \frac{\Phi ^{-1} (0.975)}{200}$.



###### Problem 4

Let $X \sim N(0, 1)$.



(a) (9 Points) Compute the probability density function of $Y = (X - 1)^{2} + 1$. You may leave your answer in terms of the density of the standard normal $\varphi$.

*Solution*. Since $Y \geq 1$, so its CDF is given by $F_Y (t) = \begin{cases} 0 & t \leq 1 \\ P((X - 1)^{2} + 1 \leq t) & t > 1 \end{cases}$.

For $t > 1$, $P((X - 1)^{2} + 1 \leq t) = P((X - 1)^{2} \leq t - 1)$

​                                                         $= P(-\sqrt{t - 1} + 1 \leq X \leq \sqrt{t - 1} + 1)$

​                                                         $= P(X \leq \sqrt{t - 1} + 1) - P(X \leq -\sqrt{t - 1} + 1)$

​                                                         $= \Phi (\sqrt{t - 1} + 1) - \Phi (-\sqrt{t - 1} + 1)$

Differentiating it, we get $f_Y (t) = \displaystyle \frac{\varphi({\sqrt{t - 1} + 1}) - \varphi({-\sqrt{t - 1} + 1})}{2\sqrt{t - 1}}$.

Therefore, the PDF of $Y$ is $f_Y (t) = \displaystyle \begin{cases} 0 & t \leq 1 \\ \displaystyle \frac{\varphi({\sqrt{t - 1} + 1}) - \varphi({-\sqrt{t - 1} + 1})}{2\sqrt{t - 1}} & t > 1 \end{cases}$  



(b) (6 Points) Compute the moment generating function $M_Z (t)$ of $Z = X^{2}$. Note that you are now working with $Z$ and not $Y$.

*Solution*. By the definition of *moment generating function*,

$M_Z (t) = \mathbb{E}[e^{tZ}]$

​             $= \mathbb{E}[e^{tX^2}]$

​             $= \displaystyle \int_{-\infty}^\infty e^{tx^2} \frac{1}{\sqrt{2\pi}} e^{-\frac{x^2}{2}} \text{ d}x$

​             $= \displaystyle \int_{-\infty}^\infty \frac{1}{\sqrt{2\pi}} e^{x^2 (t - \frac{1}{2})} \text{ d}x$

So, if $t \geq \displaystyle \frac{1}{2}$, then $M_Z (t) = \infty$.

On the other hand, if $t < \displaystyle \frac{1}{2}$,

then $\displaystyle \int_{-\infty}^\infty \frac{1}{\sqrt{2\pi}} e^{x^2 (t - \frac{1}{2})} \text{ d}x = \int_{-\infty}^\infty \frac{1}{\sqrt{2\pi}} e^{-\frac{x^2}{(\frac{1}{2} - t)^{-1}}} \text{ d}x$

​                                                 $= \displaystyle \int_{-\infty}^\infty \frac{1}{\sqrt{2\pi}} e^{-\frac{x^2}{2 \cdot \frac{1}{2} (\frac{1}{2} - t)^{-1}}} \text{ d}x$

​                                                 $= \displaystyle \int_{-\infty}^\infty \frac{1}{\sqrt{2\pi}} e^{-\frac{x^2}{2 (1 - 2t)^{-1}}} \text{ d}x$

​                                                 $= \displaystyle \int_{-\infty}^\infty \frac{1}{\sqrt{2\pi}} \frac{\sqrt{(1 - 2t)^{-1}}}{\sqrt{(1 - 2t)^{-1}}} e^{-\frac{x^2}{2(1 - 2t)^{-1}}} \text{ d}x$

​                                                 $= \displaystyle \sqrt{(1 - 2t)^{-1}} \int_{-\infty}^\infty \frac{1}{\sqrt{2\pi (1 - 2t)^{-1}}} e^{-\frac{x^2}{2(1 - 2t)^{-1}}} \text{ d}x$

​                                                 $= \displaystyle \frac{1}{\sqrt{1 - 2t}} \int_{-\infty}^\infty \frac{1}{\sqrt{2\pi (1 - 2t)^{-1}}} e^{-\frac{x^2}{2(1 - 2t)^{-1}}} \text{ d}x$

Note that the last integral is equal to $1$ since we are integrating against the density of a normal distribution with mean $0$ and variance $(1 - 2t)^{-1}$.

Therefore, the *moment generating function* for $Z = X^2$ for $X \sim N(0, 1)$ is $M_Z (t) = \begin{cases} \displaystyle \frac{1}{\sqrt{1 - 2t}} & t < \displaystyle \frac{1}{2} \\ \infty & t \geq \displaystyle \frac{1}{2} \end{cases}$.



#### Lecture 25 Continuous Joint Distribution

November 22, 2019



##### Discrete Joint Distribution (Revisit)

Let $X_1, ..., X_n: \Omega \to \mathbb{R}$ be random variables.

Look at **Joint PMF**

$p_{X_1, ..., X_n} (k_1, ..., k_n) = P(X_1 = k_1, ..., X_n = k_n)$



##### Continuous Joint Distribution

Let $X_1, ..., X_n: \Omega \to \mathbb{R}$ be random variables.

Look at **Joint PDF**

We **MUST** assume that $X_1, ..., X_n$ are ***JOINTLY CONTINUOUS***: $\exists \rho: \mathbb{R}^{n} \to \mathbb{R}_{\geq 0}: \displaystyle\int_{A_1} ... \displaystyle\int_{A_n} \rho (x_1, ..., x_n) \text{ d}x_n ... \text{ d}x_1 = P(X_1 \in A_1, ..., X_n \in A_n)$.



###### Example

Let $(X, Y)$ be jointly continuous with $\rho (x, y) = \begin{cases} 6xy^{2} & \text{for } (x, y) \in [0, 1]^{2} \\ 0 & \text{otherwise} \end{cases}$. (By last time)

1) $\displaystyle P(X < Y) = \frac{3}{5}$

**Remark**: Density is *NOT* symmetric.



2) $\displaystyle P(X < \frac{1}{2}, Y > \frac{1}{2}) = \displaystyle\int_{0}^{\frac{1}{2}} \displaystyle\int_{\frac{1}{2}}^{1} 6xy^{2} \text{ d}y \text{ d}x$

<img src="/Users/yang/Library/Application Support/typora-user-images/image-20191125152242664.png" alt="image-20191125152242664" style="zoom:25%;" />



3) $P(X + Y < 1) = P(Y < 1 - X)$



Let $(X, Y)$ be jointly continuous with $\rho (x, y) = \begin{cases} 2xe^{x^{2} - y} & \text{for } 0 < x < 1, y > x^{2} \\ 0 & \text{otherwise} \end{cases}$.

1) Verify that this is indeed a joint probability density function.

$\displaystyle\int_{-\infty}^{\infty} \displaystyle\int_{-\infty}^{\infty} 2xe^{x^{2} - y} \text{ d}y \text{ d}x = \displaystyle\int_{0}^{1} \displaystyle\int_{x^{2}}^{\infty} 2xe^{x^{2} - y} \text{ d}y \text{ d}x$

​                                             $= \displaystyle\int_{0}^{1} 2xe^{x^{2}} \displaystyle\int_{x^{2}}^{\infty} e^{-y} \text{ d}y \text{ d}x$

​                                             $= \displaystyle\int_{0}^{1} 2xe^{x^{2}} e^{-x^{2}} \text{ d}x = 1$ 

**Remark**: $\displaystyle\int_{x^{2}}^{\infty} e^{-y} \text{ d}y = e^{-x^{2}}$ by the tail probability of the distribution $\text{Exp}(1)$.



2) Find the marginal probability density function of $X$ and $Y$.

$\rho_X (x) = \displaystyle\int_{-\infty}^{\infty} \rho (x, y) \text{ d}y$

​            $= \displaystyle\int_{x^{2}}^{\infty} 2xe^{x^{2} - y} \text{ d}y$

​            $= 2xe^{x^{2}} \displaystyle\int_{x^{2}}^{\infty} e^{-y} \text{ d}y$

​            $= 2x \text{ for } 0 < x < 1$

<img src="/Users/yang/Library/Application Support/typora-user-images/image-20191125151434956.png" alt="image-20191125151434956" style="zoom:25%;" />

$\rho _Y (y) = \begin{cases} \displaystyle \int_{0}^{\sqrt{y}} 2xe^{x^{2} - y} \text{ d}x & 0 < y < 1 \\ \displaystyle \int_{0}^{1} 2xe^{x^{2} - y} \text{ d}x & y \geq 1 \end{cases}$

|                         $0 < y < 1$                          |                          $y \geq 1$                          |
| :----------------------------------------------------------: | :----------------------------------------------------------: |
| <img src="/Users/yang/Library/Application Support/typora-user-images/image-20191125151604431.png" alt="image-20191125151604431" style="zoom:25%;" /> | <img src="/Users/yang/Library/Application Support/typora-user-images/image-20191125151712729.png" alt="image-20191125151712729" style="zoom:25%;" /> |



3) $P(Y < 3X^{2}) = \displaystyle\int_{0}^{1} \displaystyle\int_{x^{2}}^{3x^{2}} 2xe^{x^{2} - y} \text{ d}y \text{ d}x$

<img src="/Users/yang/Library/Application Support/typora-user-images/image-20191125152134517.png" alt="image-20191125152134517" style="zoom:25%;" />



##### Uniform Distribution in Higher Dimensions

Given a region ("nice") $A \subseteq \mathbb{R}$ (line), $A \subseteq \mathbb{R}^{2}$ (plane), $A \subseteq \mathbb{R}^{3}$ (space), ..., $A \subseteq \mathbb{R}^{n}$, we can talk about the uniform distribution on this region.

This is a jointly continuous distribution $(X_1, ..., X_n)$ if $\rho(x_1, ..., x_n) = \begin{cases} \displaystyle \frac{1}{\text{Area}(A)} & (x_1, ..., x_n) \in A \\ 0 & (x_1, ..., x_n) \notin A \end{cases}$.



Consider the triangel $T$ with vertices $(1, 0)$, $(2, 0)$, and $(0, 1)$. Let $(X, Y)$ be  jointly continuous with the probability density function $\rho(x, y) = \begin{cases} 2 & (x, y) \in T \\ 0 & (x, y) \notin T \end{cases}$.

<img src="/Users/yang/Library/Application Support/typora-user-images/image-20191125121447877.png" alt="image-20191125121447877" style="zoom:50%;" />

In this case, the marginal p.d.f. of $Y$ is easier to determine and for marginal p.d.f. of $X$, we need to divide up into two cases $0 \leq x \leq 1$ and $1 \leq x \leq 2$.

For $0 \leq y \leq 1$, we have $\rho_Y (y) = \displaystyle\int_{2 - 2y}^{1 - y} 2 \text{ d}y = 2y - 2$.

|                      $0 \leq x \leq 1$                       |                      $1 \leq x \leq 2$                       |
| :----------------------------------------------------------: | :----------------------------------------------------------: |
| <img src="/Users/yang/Library/Application Support/typora-user-images/image-20191125152637486.png" alt="image-20191125152637486" style="zoom:50%;" /> | <img src="/Users/yang/Library/Application Support/typora-user-images/image-20191125152541001.png" alt="image-20191125152541001" style="zoom:50%;" /> |

For $0 \leq x \leq 1$, we have $\rho_X (x) = \displaystyle\int_{1 - x}^{1 - \frac{1}{2} x} 2 \text{ d}y = x$.

For $1 \leq x \leq 2$, we have $\rho_X (x) = \displaystyle\int_{0}^{1 - \frac{1}{2} x} 2 \text{ d}y = 2 - x$.

In short, $\rho_X (x) = \begin{cases} x & 0 \leq x \leq 1 \\ 2 - x & 1 \leq x \leq 2 \end{cases}$ and $\rho_Y (y) = 2y - 2 \text{ } \forall y \in [0, 1]$.



##### Expectation of a Function

###### *Discrete* case

$\mathbb{E} [g(X_1, ..., X_n)] = \displaystyle \sum \limits_{k_1, ..., k_2} g(k_1, ..., k_n) \cdot P(X_1 = k_1, ..., X_n = k_n)$ where $g: \mathbb{R}^{n} \to \mathbb{R}$



###### *Continuous* case

$\mathbb{E}[g(X, Y)] = \displaystyle\int_{-\infty}^{\infty} \displaystyle\int_{-\infty}^{\infty} g(x, y) \cdot \rho (x, y) \text{ d}x \text{ d}y$



Consider the triangel $T$ with vertices $(1, 0)$, $(2, 0)$, and $(0, 1)$. Let $(X, Y)$ be  jointly continuous with the probability density function $\rho(x, y) = \begin{cases} 2 & (x, y) \in T \\ 0 & (x, y) \notin T \end{cases}$. There is a point $P(x, y)$ in the triangle. Find the expected area of the rectangle with vertices $(0, 0)$, $(x, 0)$, $(x, y)$, and $(0, y)$.

$g(x, y) = xy$

$\mathbb{E} [g(x, y)] = \displaystyle\int_{0}^{1} \displaystyle\int_{1 - y}^{2 - 2y} 2 \cdot xy \text{ d}x \text{ d}y$ (Obviously, this way is much easier.)

If we change the order of variables, we need to split cases.

$\mathbb{E}[g(x, y)] = \displaystyle\int_{0}^{1} \int_{1 - x}^{1 - \frac{1}{2}x} 2xy \text{ d}y \text{ d}x + \displaystyle\int_{1}^{2} \int_{0}^{1 - \frac{1}{2}x} 2xy \text{ d}y \text{ d}x$



#### Lecture 26 Independence of Random Variables

November 25, 2019



##### Independence

Recall that $X_1, ..., X_n$ are independent if $P(X_1 \in A_1, ..., X_n \in A_n) = \displaystyle  \prod \limits_{i = 1}^{n} P(X_i \in A_i)$ for any $A_i \in \mathcal{B}$ ("Borel sets").

This is precisely a statement about the joint distribution of the random vector $(X_1, ..., X_n)$. What does it mean in the case of a discrete random vector? Continuous random vector?



##### Discrete Case

$p_{X_1, ..., X_n} (k_1, ..., k_n) = P(X_1 = k_1, ..., X_n = k_n)$

​                                      $= \displaystyle \prod \limits_{i = 1}^{n} P(X_i = k_i)$

​                                      $= \displaystyle \prod \limits_{i = 1}^{n} p_{X_i} (k_i)$



###### Proposition

Let $X_1, ..., X_n$ be discrete random variables, $X_1, ..., X_n$ are independent if and only if $p_{X_1, ..., X_n} (k_1, ..., k_n) = \displaystyle \prod \limits_{i = 1}^{n} p_{X_i} (k_i)$ holds.



###### Example

Let a discrete random variable $X_1$ be a roll of a fair 6-sided dice and $X_2$ be a roll of another fair 6-sided dice.

*Sample space*: $\Omega = \{1, 2, ..., 6\}^{2}$

1) $X_1$ and $X_2$ are independent.

$P(X_1 = i, X_2 = j) = \displaystyle \frac{1}{36}$

$P(X_1 = i) \cdot P(X_2 = j) = \displaystyle \frac{1}{6} \times \frac{1}{6} = \frac{1}{36}$



2) How about $X_1$ and $X_1 + X_2$? **No!**

Here is a straight forward counterexample: if $X_1 + X_2 = 12$, then $X_1 = X_2 = 6$

$P(X_1 = 1, X_1 + X_2 = 12) = 0$ but $P(X_1 = 1) \cdot P(X_1 + X_2 = 12) > 0$



###### Proposition 1 (for Geometric Distribution)

Given that $X_1, ..., X_n$ are independent random variables with $X_i \sim \text{Geom}(p_i)$, then a new random variable $Y = \text{min } \{X_1, ..., X_n\} \sim \text{Geom}(1 - \displaystyle \prod \limits_{i = 1}^{n} (1 - p_i))$.

Take a wrong guess first. Why not $\text{Geom} (p_1 + ... + p_n)$? If $n$ is large enough, $\displaystyle \sum \limits_{i = 1}^{n} p_i > 1$, which is not meaningful for a geometric distribution.

*Proof*: $P(Y > k) = P(X_1 > k, ..., X_n > k)$

​                              $= \displaystyle \prod \limits_{i = 1}^{n} P(X_i > k)$

​                              $= \displaystyle \prod \limits_{i = 1}^{n} (1 - p_i)^{k}$

​                              $= \displaystyle \prod \limits_{i = 1}^{n} (1 - p_i)^{k}$

Therefore, $Y \sim \text{Geom} (1 - \displaystyle \prod \limits_{i = 1}^{n} (1 - p_i))$



###### Proposition 2 (for Poisson Distribution)

Given that $X_1 \sim \text{Poisson}(\lambda_1)$ and $X_2 \sim \text{Poisson}(\lambda_2)$ are independent random variables, then the new random variable $X_1 + X_2 \sim \text{Poisson}(\lambda_1 + \lambda_2)$.

**Hint.** Calculate $P(X_1 + X_2 = k)$ where $k \geq 0$.

*Proof*: $P(X_1 + X_2 = k) = \displaystyle \sum \limits_{i = 0}^{k} P(X_1 = i, X_2 = k - i)$

​                                           $= \displaystyle \sum \limits_{i = 0}^{k} P(X_1 = i) \cdot P(X_2 = k - i)$ by *independence*

​                                           $= \displaystyle \sum \limits_{i = 0}^{k} e^{-\lambda_1} \frac{\lambda_1^{i}}{i!} \cdot e^{-\lambda_2} \frac{\lambda_2^{k - i}}{(k - i)!}$

​                                           $= \displaystyle e^{-\lambda_1 - \lambda_2} \cdot \frac{1}{k!} \cdot \sum \limits_{i = 0}^{k} \frac{\lambda_1 ^{i} \cdot \lambda_2 ^{k - i}}{i! \cdot (k - i)!} \cdot k!$

​                                           $= \displaystyle e^{-\lambda_1 - \lambda_2} \cdot \frac{1}{k!} \cdot \sum \limits_{i = 0}^{k} {k \choose i} \cdot \lambda_1 ^{i} \cdot \lambda_2 ^{k - i}$

​                                           $= \displaystyle e^{-\lambda_1 - \lambda_2} \frac{(\lambda_1 + \lambda_2)^{k}}{k!}$ by *Binomial Theorem*

Therefore, $X_1 + X_2 \sim \text{Poisson}(\lambda_1 + \lambda_2)$.



##### Continuous Case

Let $X_1, X_2, ..., X_n$ be continuous and independent random variables.



###### Proposition

$X_1, ..., X_n$ are continuous and independent *if and only if* $X_1, ..., X_n$ are jointly continuous and $\rho_{X_1, ..., X_n} (t_1, ..., t_n) = \displaystyle \prod \limits_{i = 1}^{n} \rho_{X_i} (t_i)$.



###### Example

1) Let $(X, Y)$ be jointly continuous with $\rho_{X, Y} (x, y) = \begin{cases} 1 & \text{for } (x, y) \in S \\ 0 & \text{for } (x, y) \notin S \end{cases}$, where $S$ is a unit square.

<img src="/Users/yang/Library/Application Support/typora-user-images/image-20191125202836416.png" alt="image-20191125202836416" style="zoom:30%;" />

Calculate the marginal p.d.f. first.

We have $\rho _X (x) = 1$ for $0 \leq x \leq 1$ and $\rho_Y (y) = 1$ for $0 \leq y \leq 1$.

In the space of $[0, 1]^{2}$, $\rho_{X, Y} (x, y) = \rho_X (x) \cdot \rho_Y (y) = 1$, so the random variables $X$ and $Y$ are *independent*.



2) Let $(X, Y)$ be jointly continuous with $\displaystyle \rho_{X, Y} (x, y) = \begin{cases} \displaystyle \frac{1}{2} & \text{for } (x, y) \in T \\ 0 & \text{for } (x, y) \notin T \end{cases}$, where $T$ is a triangle with vertices $(0, 0$, $(0, 2)$, and $(2, 2)$.

<img src="/Users/yang/Library/Application Support/typora-user-images/image-20191125203528524.png" alt="image-20191125203528524" style="zoom:30%;" />

Still, get the marginal p.d.f. $\displaystyle \rho_X (x) = 1 - \frac{1}{2} x$ and $\displaystyle \rho_Y (y) = \frac{1}{2}y$.

Clearly, there is a tendency for the random variables $X$ and $Y$. They are *not independent*.



###### Proposition (for Exponential Distribution)

Given that $X_1 \sim \text{Exp}(\lambda_1)$ and $X_2 \sim \text{Exp}(\lambda_2)$ are independent random variables, then the new random variable $Y = \text{min }(X_1, X_2) \sim \text{Exp}(\lambda_1 + \lambda_2)$.

*Proof*: $P(Y > t) = P(\text{min} (X_1, X_2) > t)$

​                              $= P(X_1 > t, X_2 > t)$

​                              $= P(X_1 > t) \cdot P(X_2 > t)$ by *independence*

​                              $= e^{-\lambda_1 t} \cdot e^{-\lambda_2 t}$

​                              $= e^{-(\lambda_1 + \lambda_2)t}$

Clearly, $Y \sim \text{Exp} (\lambda_1 + \lambda_2)$.



1) $P(X_1 < X_2) = \displaystyle \frac{\lambda_1}{\lambda_1 + \lambda_2}$

2) $P(X_1 > X_2) = \displaystyle \frac{\lambda_2}{\lambda_1 + \lambda_2}$

3) $P(X_1 = X_2) = 0$

*Proof*: By *independence*, $\rho_{X_1, X_2} (x_1, x_2) = \rho(x_1) \cdot \rho(x_2)$

​                                                                     $= \lambda_1 e^{-\lambda_1 x_1} \lambda_2 e^{-\lambda_2 x_2}$

$P(X_1 < X_2) = \displaystyle\int_{0}^{\infty} \int_{0}^{\infty} \lambda_1 e^{-\lambda_1 x_1} \lambda_2 e^{-\lambda_2 x_2} \text{ d}x_1 \text{ d}x_2$

​                         $= \displaystyle\int_{0}^{\infty} \int_{x_1}^{\infty} \lambda_1 e^{-\lambda_1 x_1} \lambda_2 e^{-\lambda_2 x_2} \text{ d}x_2 \text{ d}x_1$

​                         $= \displaystyle\int_{0}^{\infty} \lambda_1 e^{-\lambda_1 x_1} \cdot e^{-\lambda_2 x_1} \text{ d}x_1$

​                         $= \displaystyle\int_{0}^{\infty} \frac{\lambda_1}{\lambda_1 + \lambda_2} \cdot (\lambda_1 + \lambda_2) e^{-(\lambda_1 + \lambda_2)x_1} \text{ d}x_1$

​                         $= \displaystyle \frac{\lambda_1}{\lambda_1 + \lambda_2}$



#### Lecture 27 Expectation of Sums and Products

November 27, 2019



Let $X_1, ..., X_n: \Omega \to \mathbb{R}$ be random variables.

1) If *discrete*, then $\mathbb{E}[g(X_1, ..., X_n)] = \displaystyle \sum \limits_{k_1 \in X_1 (\Omega)} ... \sum \limits_{k_n \in X_n (\Omega)} g(k_1, ..., k_n) \cdot p_{X_1, ..., X_n} (k_1, ..., k_n)$.

2) If *continuous*, then $\mathbb{E}[g(X_1, ..., X_n)] = \displaystyle\int_{-\infty}^{\infty} \displaystyle\int_{-\infty}^{\infty} g(x_1, ..., x_n) \cdot \rho_{X_1, ..., X_n} (x_1, ..., x_n) \text{ d}x_1 ... \text{ d}x_n$.



##### Linearity of Expectation

Let $X_1, ..., X_n: \Omega \to \mathbb{R}$ be random variables.

If $g(X_1, ..., X_n) = g(X_1) + ... + g(X_n)$, then $\mathbb{E}[g(X_1, ..., X_n)] = \mathbb{E}[g_1 (X_1)] + ... + \mathbb{E}[g_2 (X_2)]$.



###### Special case

In particular, if $g(X_1, ..., X_n) = X_1 + ... + X_n$, then $\mathbb{E}[X_1 + ... + X_n] = \mathbb{E}[X_1] + ... + \mathbb{E}[X_n]$.



**Remark: In particular, independence need not be assumed.**



###### Example (Binomial)

Let $X \sim \text{Bin}(n, p)$.

Break up, $X = X_1 + ... + X_n$ where $X_i \sim \text{Bernoulli}(p)$ with $\mathbb{E}[X_i] = p$

By the *linearity* of expectation, $\mathbb{E}[X] = \displaystyle \sum \limits_{i = 1}^{n} \mathbb{E}[X_i]$

​                                                                 $= \displaystyle \sum \limits_{i = 1}^{n} p = np$



###### Coupon Collector Problem

Trying to collect $N$ distinct cards. Each time, you can buy a single card, which is chosen uniformly at random from all $N$ cards. How many cards do you have to buy to collect them all?

*Solution*: Clearly, at least $N$ cards since you cannot buy less than $N$ cards to get $N$ distinct cards!

Then, we try to compute $\mathbb{E}[T]$ by finding $T = X_1 + ... + X_N$ first.

$\mathbb{E}[T] = \mathbb{E}[X_1 + ... + X_N]$

​          $= \mathbb{E}[X_1] + ... + \mathbb{E}[X_N]$

For here, $X_i$ is the number of cards I have to buy to get $i \text{th}$ distinct cards given that I already have $i - 1$ distinct cards.

For example, if we collect $(1, 2, 1, 3, ...)$, then $X_1 = 1$, $X_2 = 1$, and $X_3 = 2$.

So, we can see $X_i \sim \text{Geom} (\displaystyle \frac{N - i + 1}{N})$ and $\mathbb{E}[X_i] = \displaystyle \frac{N}{N - i + 1}$

Therefore, $\mathbb{E}[T] = \displaystyle \sum \limits_{i = 1}^{N} \frac{N}{N - i + 1}$

​                             $= \displaystyle N \cdot \sum \limits_{i = 1}^{N} \frac{1}{i}$

​                             $\approx N \cdot \ln (N)$ by *Riemann approximation*



##### Method of Indicators

Suppose $N$ is a random variable that counts the number of times something happens. If we can decompose $N = I_{E_1} + ... + I_{E_m}$ into a sum of indicator functions, then $\mathbb{E}[N] = \displaystyle \sum \limits_{i = 1}^{m} P(E_i)$.

$I_E: \Omega \to \{0, 1\}$

​         $\omega \mapsto \begin{cases} 1 & \text{if } \omega \in E \\ 0 & \text{if } \omega \notin E \end{cases}$

$\mathbb{E}[I_E] = P(E)$



###### Example

Take $52$ cards in a deck and lay them out. A *run* of reds is a consecutive ordering of reds. How many *run*s do you expect?

$N = I_{E_1} + ... + I_{E_m}$ for $E_i$ is a run of reds starts at card $i$.

$P(E_1) = \displaystyle \frac{26}{52} = \frac{1}{2}$

Starting a run of red at card $i$, so the card $i - 1$ is black.

We have $P(E_{i - 1} = \text{Black}) = \displaystyle \frac{26}{52}$ and $P(E_i = \text{Red}) = \displaystyle \frac{26}{51}$

Therefore, $N = \displaystyle 51 \cdot (\frac{26}{52} \cdot \frac{26}{51}) + \frac{26}{52}$

​                        $= 13.5 = \displaystyle \frac{1 + 26}{2}$



##### Independence

Let $X_1, ..., X_n$ be independent. Find $\mathbb{E}[g_1 (X_1) ... g_n (X_n)]$.



For continuous $X_i$s, $\mathbb{E}[g_1 (X_1) ... g_n (X_n)] = \displaystyle\idotsint_\mathbb{R^n} g_1 (X_1) ... g_n (X_n) \cdot \rho_{X_1, ..., X_n} (x_1, ..., x_n) \text{ d}x_1 ... \text{d}x_n$

​                                                                           $= \displaystyle \prod \limits_{i = 1}^n \int g_i (X_i) \cdot \rho_{X_i} (x_i) \text{ d}x_i$

​                                                                           $= \displaystyle \prod \limits_{i = 1}^n \mathbb{E}[g_i (X_i)]$



###### Implication

Variance of a sum is the sum of the variances for ***independent*** random variables.

$\text{Var}(X_1 + ... + X_n) = \text{Var}(X_1) + ... + \text{Var}(X_n)$

​                                    $= \mathbb{E}[(X_1 + ... + X_n - (\mu_1 + ... + \mu_n))^2]$



For $2$ independent random variables, $\text{Var}(X_1 + X_2) = \text{Var}(X_1) + \text{Var}(X_2)$.

*Proof*: $\text{LHS} = \mathbb{E}[(X_1 + X_2)^2] - (\mathbb{E}[X_1] + \mathbb{E}[X_2])^2$

​                     $= \mathbb{E}[X_1 ^2 + 2X_1 X_2 + X_2 ^2] - (\mathbb{E}[X_1]^2 + 2\mathbb{E}[X_1]\mathbb{E}[X_2] + \mathbb{E}[X_2]^2)$

​                     $= \mathbb{E}[X_1 ^2] + 2\mathbb{E}[X_1]\mathbb{E}[X_2] + \mathbb{E}[X_2 ^2] - (\mathbb{E}[X_1]^2 + 2\mathbb{E}[X_1]\mathbb{E}[X_2] + \mathbb{E}[X_2]^2)$

​                     $= (\mathbb{E}[X_1 ^2] - \mathbb{E}[X_1]^2) + (\mathbb{E}[X_2 ^2] - \mathbb{E}[X_2]^2)$

​                     $= \text{Var}(X_1) + \text{Var}(X_2) = \text{RHS}$

For $\text{Var}(X_1 + ... + X_n)$, use **induction**!



##### Law of Large Numbers

$X_1, ..., X_n$ are *independent and identically distributed* (i.i.d.) variables.

Then, $\displaystyle \frac{X_1 + X_n}{n} \to \mathbb{E}[X_i]$ for $1 \leq i \leq n$ if $n$ is large enough.



###### Sample mean

Consider a sequence of independent and identically distributed random variables $X_1, ..., X_n$. Denote the average of these random variables as $\bar{X}$.

Then, $\mathbb{E}[\bar{X}] = \displaystyle \mathbb{E}[\frac{1}{n}(X_1 + ... + X_n)]$

​                     $= \displaystyle \frac{1}{n} \mathbb{E}[X_1 + ... + X_n]$

​                     $= \displaystyle \frac{1}{n} \cdot n \cdot X_1$

​                     $= \mathbb{E}[X_1]$

The expectation of the sample mean is always the underlying population mean $\mu$, no matter what the sample size. Therefore, no matter what the sample size, the sample mean is an *unbiased estimator* of the population mean.

$\text{Var}(\bar{X}) = \text{Var} \displaystyle (\frac{1}{n}(X_1 + ... + X_n))$

​               $= \displaystyle \frac{1}{n^2} \text{Var}(X_1 + ... + X_n)$

​               $= \displaystyle \frac{1}{n^2} \cdot n \text{Var}(X_1)$

​               $= \displaystyle \frac{1}{n} \text{Var}(X_1)$

The variability of the sample mean decreases as the sample size increases. So, as the sample size increases, the sample mean becomes a more accurate estimator of the population mean.



#### Lecture 28 Thanksgiving

November 29, 2019



#### Lecture 29 Covariance and Correlation

December 2, 2019



##### Implications of Independence for Expectations

Recall that if $X_1, ..., X_n$ are independent, then $\mathbb{E}[\displaystyle \prod \limits_{i = 1}^n \rho_i (x_i)] = \prod \limits_{i = 1}^n \mathbb{E}[\rho_i (x_i)]$ where $\rho_i: \mathbb{R} \to \mathbb{R}$.

Also, for variance, $\text{Var}(\displaystyle \sum \limits_{i = 1}^n X_i) = \sum \limits_{i = 1}^n \text{Var}(X_i)$.



###### Corollary

If $X$ and $Y$ are *independent*, then $M_{X + Y} (t) = M_X (t) \cdot M_Y (t)$.

*Proof*. $M_{X + Y} (t)  = \displaystyle \mathbb{E}[e^{t(X + Y)}]$

​                              $= \displaystyle \mathbb{E}[e^{tX} \cdot e^{tY}]$

​                              $= \displaystyle \mathbb{E}[e^{tX}] \cdot \mathbb{E}[e^{tY}]$

​                              $= M_X (t) \cdot M_Y (t)$



Given that $X_1 \sim \text{Poisson}(\lambda_1)$ and $X_2 \sim \text{Poisson}(\lambda_2)$ are *independent* random variables, then the new random variable $X_1 + X_2 \sim \text{Poisson}(\lambda_1 + \lambda_2)$.

*Proof*. We have $M_{X_1} (t) = e^{\lambda_1 (e^t - 1)}$ and $M_{X_2} (t) = e^{\lambda_2 (e^t - 1)}$,

then $M_{X_1 + X_2} (t) = M_{X_1} (t) \cdot M_{X_2} (t)$

​                              $= e^{\lambda_1 (e^t - 1)} \cdot e^{\lambda_2 (e^t - 1)}$

​                              $= e^{(\lambda_1 + \lambda_2)(e^t - 1)}$

This is the *moment generating function* for $\text{Poisson}(\lambda_1 + \lambda_2)$.



Also, given that $X \sim N(\mu_1, \sigma_1^2)$ and $Y \sim N(\mu_2, \sigma_2^2)$ are *independent* random variables, then the new random variable $X + Y \sim N(\mu_1 + \mu_2, \sigma_1^2 + \sigma_2^2)$.

*Proof*. $M_X (t) \cdot M_Y (t) = \displaystyle e^{\mu_1 t + \frac{1}{2} \sigma_1^2 t^2} \cdot e^{\mu_2 t + \frac{1}{2} \sigma_2^2 t^2}$

​                                       $= \displaystyle e^{(\mu_1 + \mu_2) t + \frac{1}{2} (\sigma_1^2 + \sigma_2^2) t^2}$

This is the *moment generating function* for $N(\mu_1 + \mu_2, \sigma_1^2 + \sigma_2^2)$.



**Extension**.

1) $M_{aX + b} (t) = e^{tb} M_X (at)$

2) If $X_1, ..., X_n$ are *independent*, then $M_{X_1 + ... + X_n} = \displaystyle \prod_{i = 1}^n M_{X_i} (t)$.



##### Covariance

Motivation: Distribution is great, but too much information. (It is also true for joint distribution.)



###### Definition

Let $X$ and $Y$ be random variables.

$\text{Cov}(X, Y) = \mathbb{E}[(X - \mu_X)(Y - \mu_Y)]$ if the expectation is *finite*.

**Alternative Formula**. $\text{Cov}(X, Y) = \mathbb{E}[XY] - \mathbb{E}[X]\mathbb{E}[Y]$

**Remark**. $\text{Cov}(X, X) = \text{Var}(X)$



###### Sign of the *Covariance*

1) $(X - \mu_X)(Y - \mu_Y) > 0$: Both $X$ and $Y$ deviate, in the *same* direction.

2) $(X - \mu_X)(Y - \mu_Y) < 0$: Both $X$ and $Y$ deviate, in the *opposite* direction.

3) $(X - \mu_X)(Y - \mu_Y) = 0$: *No* deviation.



In other words,

1) $\text{Cov}(X, Y) > 0$: $X$ and $Y$ are *positively* correlated.

2) $\text{Cov}(X, Y) = 0$: $X$ and $Y$ are *uncorrelated* or *independent*.

3) $\text{Cov}(X, Y) < 0$: $X$ and $Y$ are *negatively* correlated.



###### Properties

1) $\text{Cov}(aX + b, Y) = a \cdot \text{Cov}(X, Y)$

2) $\text{Cov}(X, Y) = \text{Cov}(Y, X)$

3) $\text{Cov}(aX, aX) = a^2 \cdot \text{Cov}(X, X) = a^2 \cdot \text{Var}(X)$

4) $\text{Cov}(\displaystyle \sum \limits_{i = 1}^n X_i, \sum \limits_{j = 1}^m Y_j) = \sum \limits_{i = 1}^n \sum \limits_{j = 1}^m \text{Cov}(X_i, Y_j)$



**General case** for $n$

$\text{Var} (\displaystyle \sum \limits_{i = 1}^n X_i) = \sum \limits_{i = 1}^n \text{Var}(X_i) - 2 \sum \limits_{1 \leq i < j \leq n} \text{Cov}(X_i, X_j)$

*Proof*. By the definition of *variance*,

we have $\text{Var} (\displaystyle \sum \limits_{i = 1}^n X_i) = \mathbb{E}[(\sum \limits_{i = 1}^n X_i - \sum \limits_{i = 1}^n \mu_{X_i})^2]$

​                                       $= \mathbb{E}[\displaystyle (\sum \limits_{i = 1}^n (X_i - \mu_{X_i}))^2]$

​                                       $= \displaystyle \sum \limits_{i = 1}^n \mathbb{E}[(X_i - \mu_{X_i})^2] + \displaystyle \sum \limits_{i = 1}^n \sum \limits_{j \neq i} \mathbb{E}[(X_i - \mu_{X_i})(X_j - \mu_{X_j})]$

​                                       $= \displaystyle \sum \limits_{i = 1}^n \text{Var}(X_i) + 2 \sum \limits_{1 \leq i < j \leq n} \text{Cov}(X_i, X_j)$



##### Indicator Random Variables (Revisit)

###### Covariance

Let $A, B \in \mathcal{F}$ and $I_A, I_B: \Omega \to \mathbb{R}$. Define $I_A (\omega) = \begin{cases} 1 & \omega \in A \\ 0 & \omega \notin A \end{cases}$.

$\text{Cov}(I_A, I_B) = \displaystyle \mathbb{E}[I_A I_B] - P(A) \cdot P(B)$

​                       $= \displaystyle \mathbb{E}[I_{A \bigcap B}] - P(A) \cdot P(B)$

​                       $= P(A \bigcap B) - P(A) P(B) = P(A) [P(B \vert A) - P(B)]$



**Interpretation**.

If $\text{Cov}(I_A, I_B) > 0$, then $P(A) > 0$ and $P(B \vert A) - P(B) > 0$.

If $A$ happens, the chance of $B$ happens increases.



###### Proposition

$I_A, I_B$ are *uncorrelated* **if and only if** $A$ and $B$ are *independent*.

But, it is NOT true that $A$ and $B$ are *independent* if and only if $I_A$ and $I_B$ are *uncorrelated*.



###### Example

Consider the triangel $T$ with vertices $(0, 0)$, $(1, 0)$, and $(1, 1)$. Let $P = (X, Y)$ be uniformly at random inside of $T$. Find $\text{Cov}(X, Y)$.

**Guess**. $\text{Cov}(X, Y) > 0$

*Proof*. The joint density of $P = (X, Y)$ is $\rho_{X, Y} (x, y) = \begin{cases} 2 & (X, Y) \in T \\ 0 & (X, Y) \notin T \end{cases}$.

Then, $\text{Cov}(X, Y) = \mathbb{E}[XY] - \mathbb{E}[X] \mathbb{E}[Y]$

​                                $= \displaystyle \int_0^1 \int_0^x xy \cdot 2 \text{ d}y \text{ d}x - (\int_0^1 \int_0^x x \cdot 2 \text{ d}y \text{ d}x) \cdot (\int_0^1 \int_0^x y \cdot 2 \text{ d}y \text{ d}x)$



###### **Remark**

1) If $A$ and $B$ are *independence*, then $I_A$ and $I_B$ are *uncorrelated*.

2) If $I_A$ and $I_B$ are *correlated*, then $A$ and $B$ are *not independent*.



**Proposition**. If $\displaystyle p_1 \Rightarrow p_2$, then $\displaystyle \neg p_2 \Rightarrow \neg p_1$.



Let $X$ be uniform on $\{-1, 0, 1\}$ and $Y = X^2$.

$X$ and $Y$ are NOT independent because $P(Y = 0, X = 1) = 0$ but $P(Y = 0) \cdot P(X = 1) = \displaystyle \frac{1}{3} \cdot \frac{2}{3} = \frac{2}{9}$.

$\text{Cov}(X, Y) = \mathbb{E}[XY] - \mathbb{E}[X] \mathbb{E}[Y]$

​                     $= \mathbb{E}[X] - 0 \cdot \mathbb{E}[Y] = 0$

This is a special case since the *covariance* of $X$ and $Y$ is $0$ but $X$ and $Y$ are *not independent*.



##### Correlation

As a measure of strength of dependence, covariance has a drawback. a huge covariance can be simply the result of the size of the random variables, and not signify an especially strong dependence. We can eliminate this problem by normalizing the covariance in the right way.



###### Definition

The correlation (or correlation coefficient) of two random variables X and Y with positive finite variances is defined by $\text{Corr} (X, Y) = \displaystyle \frac{\text{Cov}(X, Y)}{\sqrt{\text{Var}(X)}\sqrt{\text{Var}(Y)}}$.



#### Lecture 30 Estimating Tail Probabilities and Law of Large Numbers

December 4, 2019



##### Tail Bounds

Given $X$ an unknown random variable, we want to understand $P(X \geq a)$ for $a \in \mathbb{R}$.



**Applications**. Worst case analysis

How to estimate $P(X \geq a)$ with limited information?

Use the expectation $\mathbb{E}[X]$.



###### Proposition

If $X \geq 0$ (or $P(X \geq 0) = 1$), then $\mathbb{E}[X] \geq 0$.



###### Corollary

If $X \geq Y$ (or $P(X \geq Y) = 1$) and each has *finite* expectations, then $\mathbb{E}[x] \geq \mathbb{E}[Y]$.

*Proof*. Since $X \geq Y$, we have $X - Y \geq 0$.

By **Proposition**, $\mathbb{E}[X - Y] \geq 0$.

Then, $\mathbb{E}[X] - \mathbb{E}[Y] \geq 0$ by *linearity*.

Therefore, $\mathbb{E}[X] \geq \mathbb{E}[Y]$.



##### Markov's Inequality

###### Theorem

If $P(X \geq 0) = 1$, then $P(X \geq c) \leq \displaystyle \frac{\mathbb{E}[X]}{c}$ for any $c > 0$.

*Proof*. Note that $I_{\{X \geq c \}} + I_{\{X < c \}} = 1$, where $I_{\{X \geq c\}}$ is the indicator of the event $\{X \geq c \}$ and $I_{\{X < c \}}$ is the indicator of the event $\{X < c \}$.

Then, $\mathbb{E}[X] = \mathbb{E}[X \cdot (I_{\{X \geq c \}} + I_{\{X < c \}})]$

​                     $= \mathbb{E}[X \cdot I_{\{X \geq c \}}] + \mathbb{E}[X \cdot I_{\{X < c \}}]$

Since $X \cdot I_{\{X < c \}}$ is a *non-negative* random variable, $\mathbb{E}[X \cdot I_{\{X < c \}}] \geq 0$.

Therefore, $\mathbb{E}[X] = \mathbb{E}[X \cdot I_{\{X \geq c \}}] + \mathbb{E}[X \cdot I_{\{X < c \}}]$

​                              $\geq \mathbb{E}[X \cdot I_{\{X \geq c \}}]$

Now, note that $c \cdot I_{\{X \geq c \}}\leq X \cdot I_{\{X \geq c \}}$ for any $\omega \in \Omega$ because, trivially, $c \leq X$ when the indicator $I_{\{X \geq c \}}$ is nonzero. Thus, we get $\mathbb{E}[c \cdot I_{\{X \geq c\}}] \leq \mathbb{E}[X \cdot I_{\{X \geq c \}}]$.

Further, by linearity, we obtain $\mathbb{E}[c \cdot I_{\{X \geq c \}}] = c \mathbb{E}[I_{\{X \geq c \}}]$

​                                                                               $= c P(X \geq c)$.

Therefore, $cP(X \geq c) \leq \mathbb{E}[X \cdot I_{\{X \geq c \}}]$.

Since $\mathbb{E}[X] \geq \mathbb{E}[X \cdot I_{\{X \geq c \}}]$, hence, $P(X \geq c) \leq \displaystyle \frac{\mathbb{E}[X]}{c}$.



###### Geometric Interpretation

If $X \geq 0$, then $\mathbb{E}[X] = \displaystyle \int_0^\infty P(X \geq x) \text{ d}x$.

![enter image description here](https://i.stack.imgur.com/71k28.png)

By the graph above, $x \cdot P(X \geq x) \leq \mathbb{E}[X]$. (*Riemann* sum)



###### Example

Given that $X \sim \text{Exp}(\lambda)$. The actual value for $P(X \geq c)$ is $\displaystyle \frac{1}{e^{\lambda c}}$.

By *Markov's Inequality*, we have $P(X \geq c) \leq \displaystyle \frac{1}{\lambda c}$.

By the *Maclaurin* series, we get $\displaystyle e^{\lambda c} = 1 + \lambda c + \frac{(\lambda c)^2}{2!} + ... $

Note that $e^{\lambda c} \geq \lambda c$. We have $P(X \geq c) = \displaystyle \frac{1}{e^{\lambda c}} \leq \frac{1}{\lambda c}$.

Therefore, *Markov's Inequality* is true in bounding Exponential random variable.



Given that $X \sim \text{Bernoulli}(p)$. $\mathbb{E}[X] = p$

By *Markov's Inequality*, $P(X \geq 1) \leq \displaystyle \frac{p}{1} = p$.

In general, $P(X \geq c) \leq \displaystyle \frac{p}{c}$ for $p \in (0, 1)$ by *Markov's Inequality*.

If $c = 0.01$, then $P(X \geq c) \leq 100p$. In this case, $100p$ could even be greater than $1$, giving a useless estimate on a probability.

*Markov's Inequality* is NOT always helpful.



An ice cream shop sells $1000$ gallons of ice cream on average per day. The store only keeps $2000$ gallons in stock. Bound the probability that the store runs out of the ice cream.

*Solution*. Given that $\mathbb{E}[X] = 1000$.

By *Markov's Inequality*, $P(X \geq 2000) \leq \displaystyle \frac{1000}{2000} = \frac{1}{2}$.

**Remark**. *Markov's Inequality* doesn't scale well (i.e., it scales *linearly*).

Bound $P(X \geq 10000) \leq \displaystyle \frac{1000}{10000} = \frac{1}{10}$.

Actually, $P(X \geq 10000) << \displaystyle \frac{1}{10}$ makes much more sense as a result.



##### Chebyshev's Inequality

*Markov's Inequality* only uses the mean $\mathbb{E}[X]$ to bound the probability, not $\text{Var}(X)$. To get bounds on tails it seems better to use $\text{Var}(X)$ if we can. *Chebyshev's Inequality* does just that.



###### Theorem

Let $X$ be a random variable with a *finite* mean $\mu$ and a *finite* variance $\sigma^2$, then we get $P(\lvert X - \mu \rvert \geq c) \leq \displaystyle \frac{\sigma^2}{c^2}$ for any $c > 0$.

*Proof*. Let $Y = \lvert X - \mu \rvert \geq 0$.

Then, $P(\lvert X - \mu \rvert \geq c) = P(Y \geq c)$

​                                        $= P(Y^2 \geq c^2)$

​                                        $\leq \displaystyle \frac{\mathbb{E}[Y^2]}{c^2}$ by *Markov's Inequality*

​                                        $= \displaystyle \frac{\sigma^2}{c^2}$



**Implications**.

1) $P(X - \mu \geq c) \leq P(\lvert X - \mu \rvert \geq c)$ by *monotonicity* of probability

2) $P(X - \mu \leq -c) \leq P(\lvert X - \mu \rvert \geq c)$



###### Example

An ice cream shop sells $1000$ gallons of ice cream on average per day. The store only keeps $2000$ gallons in stock. We now suppose that the variance of the number of gallons of ice cream sold on a given day is $500$.  Bound the probability that the store runs out of the ice cream.

*Solution*. Given that $\mu = 1000$ and $\sigma^2 = 500$.

Then, $P(X \geq 2000) = P(X - 1000 \geq 1000)$

​                                     $\leq P(\lvert X - 1000 \rvert \geq 1000)$ by *Chebyshev's Inequality*

​                                     $\leq \displaystyle \frac{500}{1000^2} = \frac{1}{2000}$

**Remark**. Bound $P(X \geq 10000)$.

By *Chebyshev's Inequality*, $P(X \geq 10000) = P(X - 1000 \geq 9000)$

​                                                                         $\leq P(\lvert X - 1000 \rvert \geq 9000)$

​                                                                         $\leq \displaystyle \frac{500}{9000^2} = \frac{1}{18 \cdot 9000} << \frac{1}{10}$.

This result is much accurate than given by *Markov's Inequality*.



###### Moment

$P(Y^n \geq c^n) \leq \displaystyle \frac{\mathbb{E}[Y^n]}{c^n}$



##### Law of Large Numbers

###### For Binomial Random Variables

Consider independent and identically distributed Bernoulli random variables $X_1, X_2, X_3, ...$ with success probability $0 < p < 1$. Let $S_n = X_1 + X_2 + ... + X_n$, then $\lim \limits_{n \to \infty} \displaystyle P(\lvert \frac{S_n}{n} - p \rvert < \varepsilon) = 1$ for any fixed $\varepsilon > 0$.



###### General Theorem

Suppose that we have i.i.d. random variables $X_1, X_2, X_3, ...$ with *finite* mean $\mathbb{E}[X_1] = \mu$ and *finite* variance $\text{Var}(X_1) = \sigma^2$. Let $S_n = X_1 + ... + X_n$. Then for any fixed $\varepsilon > 0$, we have $\lim \limits_{n \to \infty} \displaystyle P(\lvert \frac{S_n}{n} - \mu \rvert < \varepsilon) = 1$.

*Proof*. Fix the value $\varepsilon > 0$. Let $S_n = \displaystyle \frac{X_1 + ... + X_n}{n}$ with $\mathbb{E}[S_n] = \mu$ and $\text{Var}(S_n) = \displaystyle \frac{\sigma^2}{n}$.

By *Chebyshev's Inequality*, $P(\lvert \displaystyle \frac{S_n}{n} - \mu \rvert \geq \varepsilon) \leq \displaystyle \frac{1}{\varepsilon^2} \text{Var}(\frac{S_n}{n}) = \frac{\sigma^2}{n \epsilon^2}$.

Since $\varepsilon > 0$ is fixed, we have $\lim \limits_{n \to \infty} \displaystyle \frac{\sigma^2}{n\varepsilon^2} = 0$.

Since $P(\lvert S_n - \mu \rvert \geq \varepsilon)$ is non-negative and bounded above by a sequence converging to $0$, therefore, it also has to converge to $0$ as $n \to \infty$.

Hence, $\lim \limits_{n \to \infty} \displaystyle P(\lvert \frac{S_n}{n} - \mu \rvert < \varepsilon) = 1 - \lim \limits_{n \to \infty} P(\lvert \frac{S_n}{n} - \mu \rvert \geq \varepsilon) = 1$.



###### Application: Estimate the Sample Mean

Suppose we want to estimate the average waiting time for a bus. We don't know the mean $\mu$. What we only know in this case is the variance $\sigma^2 \leq \hat{\sigma}^2$, not the exact value.

Let $X_i$ denote the $i\text{th}$ sample from the population and suppose that $\mathbb{E}[X_i] = \mu$ and $\sigma^2 = \hat{\sigma}^2$.

Let $\bar{X_n} = \displaystyle \frac{X_1 + ... + X_n}{n}$ be the sample mean.

We know that $\mathbb{E}[\bar{X_n}] = \mu$ and $\text{Var}(\bar{X_n}) = \displaystyle \frac{\sigma^2}{n}$.

By *Chebyshev's Inequality*, we have $P(\lvert \bar{X_n} - \mu \rvert \geq \varepsilon) \leq \displaystyle \frac{\sigma^2}{\varepsilon^2 n}$.



How many times do you have to wait to be $99\%$ sure that your average waiting time within $\displaystyle \frac{1}{10}$ of the true waiting time?

*Solution*. We want to find an $n$ for which $P(\lvert \bar{X_n} - \mu \rvert < 0.1) \geq 0.99$.

Thus, it is sufficient to find an $n$ such that $\displaystyle \frac{\sigma^2}{\varepsilon^2 n} \leq 1 - P(\lvert \bar{X_n} - \mu \rvert < 0.1) = 0.01$​ for $\varepsilon = \displaystyle \frac{1}{10}$.

Then, $n \geq \displaystyle \frac{\sigma^2}{0.1^2 \cdot 0.01} = 10000 \sigma^2$.

Since $\sigma^2 \leq \hat{\sigma}^2$ by our assumption, we can choose $n = 10000 \hat{\sigma}^2$.



#### Lecture 31 Central Limit Theorem

December 6, 2019



##### Estimating Tail Bounds (Revisit)

###### Markov's Inequality

If $P(X \geq 0) = 1$, then $P(X \geq c) \leq \displaystyle \frac{\mathbb{E}[X]}{c}$ for any $c > 0$.



###### Chebyshev's Inequality

If $\mathbb{E}[X] = \mu < \infty$ and $\text{Var}(X) = \sigma^2 < \infty$, then $P(\lvert X - \mu \rvert \geq c) \leq \displaystyle \frac{\sigma^2}{c^2}$.



Given that $\mathbb{E}[X] = 1000$ and $\text{Var}(X) = 500$.

By *Markov's Inequality*, $P(X \geq 10000) \leq \displaystyle \frac{1000}{10000} = \frac{1}{10}$.

By *Chebyshev's Inequality*, $P(X \geq 10000) = P(X - 1000 \geq 9000)$

​                                                                         $\leq P(\lvert X - 1000 \rvert \geq 9000)$

​                                                                         $\leq \displaystyle \frac{500}{9000^2} << \frac{1}{18}$

In this case, *Chebyshev's Inequality* gives a much stronger result.

**Remark**. Now no long assume $P(X \geq 0) = 1$, we can still use *Chebyshev's Inequality* to estimate the tail bounds. $P(X \leq -8000)$ has the same bound as $P(X \geq 10000)$.



##### Central Limit Theorem

###### Theorem

Suppose that we have i.i.d. random variables $X_1, X_2, X_3, ...$ with *finite* mean $\mathbb{E}[X_1] = \mu$ and *finite* variance $\text{Var}(X_1) = \sigma^2$. Let $S_n = X_1 + ... + X_n$.

Then for any fixed $-\infty \leq a \leq b \leq \infty$, we have $\lim \limits_{n \to \infty} P(a \leq \displaystyle \frac{S_n - n \mu}{\sigma \sqrt{n}} \leq b) = \Phi(b) - \Phi(a)$.

Simplify the result, $\Phi(b) - \Phi(a) = \displaystyle \int_a^b \frac{1}{\sqrt{2\pi}} e^{-\frac{1}{2} y^2} \text{ d}y$.



###### Example

Roll $1000$ dice. Estimate the probability that the sum is between $3400$ and $3600$.

*Solution*. Let $X_1, X_2, ..., X_{1000}$ be the outcomes of rolls and $S_n = \displaystyle \sum \limits_{i = 1}^{1000} X_i$.

The random variables $X_1, ..., X_1000$ are independent and identically distributed with $\mathbb{E}[X_1] = \displaystyle \frac{7}{2}$ and $\displaystyle \text{Var}(X_1) = \frac{35}{12}$.

Then, $P(3400 \leq S_{1000} \leq 3600) = P(-100 \leq S_{1000} - 3500 \leq 100)$

​                                                         $= \displaystyle P(-\frac{100}{\displaystyle \sqrt{1000} \sqrt{\frac{35}{12}}} \leq \frac{S_{1000} - 3500}{\displaystyle \sqrt{1000} \sqrt{\frac{35}{12}}} \leq \frac{100}{\displaystyle \sqrt{1000} \sqrt{\frac{35}{12}}})$

​                                                         $\approx \displaystyle \Phi(\frac{100}{\displaystyle \sqrt{1000} \sqrt{\frac{35}{12}}}) - \Phi(-\frac{100}{\displaystyle \sqrt{1000} \sqrt{\frac{35}{12}}})$

​                                                         $= 2\Phi(\displaystyle \frac{100}{\displaystyle \sqrt{1000} \sqrt{\frac{35}{12}}}) - 1 \approx 0.936$

This result is really close to $1$.



$P(S_{1000} \geq 3600) = P(3600 \leq S_{1000} \leq +\infty)$

​                               $= 1 - P(S_{1000} < 3600)$

​                               $= \displaystyle 1 - \Phi(\frac{100}{\displaystyle \sqrt{1000} \sqrt{\frac{35}{12}}}) \approx 0.03$



###### Proposition for the Proof

1) Moment-generating function $M_Y (t)$ is *finite* in the interval $(-\varepsilon, \varepsilon)$ for some $\varepsilon > 0$.

2) $Y_1, Y_2, ...$ if $\lim \limits_{n \to \infty} M_{Y_n} (t) = M_Y (t)$ for all $t \in (-\varepsilon, \varepsilon)$ then $\lim \limits_{n \to \infty} F_{Y_n} (s) = F_Y (s)$ for all $s \in \mathbb{R}$ and $\lim \limits_{n \to \infty} P(Y_n \leq s) = P(Y \leq s)$ for all $s \in \mathbb{R}$.

3) The *moment generating function* for $Z \sim N(0, 1)$ is $M_Z (t) = \displaystyle e^{\frac{1}{2} t^2}$.



###### Proof of Central Limit Theorem

Suppose that we have i.i.d. random variables $X_1, X_2, X_3, ...$ with *finite* mean $\mathbb{E}[X_1] = \mu$ and *finite* variance $\text{Var}(X_1) = \sigma^2$.

We want to prove $\displaystyle \lim \limits_{n \to \infty} M_{\frac{X_1 + ... + X_n - n\mu}{\sqrt{n} \cdot \sigma}} (t) = e^{\frac{1}{2} t^2}$.

$\displaystyle M_{\sum \limits_{i = 1}^n \frac{X_i - \mu}{\sqrt{n} \sigma}} (t) = \prod \limits_{i = 1}^n M_{\sum \limits_{i = 1}^n \frac{X_i - \mu}{\sqrt{n} \sigma}} (t)$

​                      $= \displaystyle \left(M_{\sum \limits_{i = 1}^n \frac{X_i - \mu}{\sqrt{n} \sigma}} (t)\right)^n$

​                      $= \displaystyle \left(\mathbb{E} \left[e^{\frac{t}{\sqrt{n}\sigma} (X_1 - \mu)} \right] \right)^n$

​                      $= \displaystyle \left(\mathbb{E}\left[\sum \limits_{k = 0}^\infty \frac{(\frac{t}{\sqrt{n} \sigma}(X_1 - \mu))^k}{k!}\right] \right)^n$

​                      $\displaystyle \approx \left(\mathbb{E}\left[1 + \frac{t}{\sqrt{n}\sigma} (X_1 - \mu) + \frac{\frac{t^2}{n \sigma^2} (X_1 - \mu)^2}{2}\right]\right)^n$

​                      $= \lim \limits_{n \to \infty} \left(1 + \displaystyle \frac{\frac{1}{2} t^2}{n}\right)^n$ **Remark**. $\sigma^2 = (X_1 - \mu)^2$

​                      $= \displaystyle e^{\frac{1}{2} t^2}$

Therefore, $\displaystyle \lim \limits_{n \to \infty} M_{\frac{X_1 + ... + X_n - n\mu}{\sqrt{n} \cdot \sigma}} (t) = e^{\frac{1}{2} t^2}$.

Hence, for any fixed $-\infty \leq a \leq b \leq \infty$, we have $\lim \limits_{n \to \infty} P(a \leq \displaystyle \frac{S_n - n \mu}{\sigma \sqrt{n}} \leq b) = \Phi(b) - \Phi(a)$.



Let $X_1, X_2, X_3, ...$ and $Y_1, Y_2, Y_3, ...$ be i.i.d. random variables with $\mathbb{E}[X_1] = 0$ and $\text{Var}(X_1) = 1$. Use the *Central Limit Theorem* to estimate $\displaystyle P(\sum \limits_{i = 1}^n X_i > \sum \limits_{i = 1}^n Y_i + 50 \sqrt{n})$ as $n \to \infty$.

*Proof*. $\lim \limits_{n \to \infty} \displaystyle P(\sum \limits_{i = 1}^n X_i > \sum \limits_{i = 1}^n Y_i + 50 \sqrt{n}) = \lim \limits_{n \to \infty} P(\sum \limits_{i = 1}^n (X_i - Y_i) > 50 \sqrt{n})$

Let $Z_i = X_i - Y_i$. We have $\mathbb{E}[Z_1] = 0$ and $\text{Var}(Z_1) = 2$.

Then, $\lim \limits_{n \to \infty} \displaystyle P(\sum \limits_{i = 1}^n Z_i > 50 \sqrt{n}) = P(\frac{\sum \limits_{i = 1}^n Z_i}{\sqrt{2} \sqrt{n}} > \frac{50}{\sqrt{2}})$

​                                                       $= 1 - \Phi(25 \sqrt{2}) \approx 0$

Therefore, by *Central Limit Theorem*, $\displaystyle P(\sum \limits_{i = 1}^n X_i > \sum \limits_{i = 1}^n Y_i + 50 \sqrt{n}) \to 1 - \Phi(25 \sqrt{2})$ as $n \to \infty$.



Suppose that we have i.i.d. random variables $X_1, X_2, ...$ with mean $\mathbb{E}[X_1] = 0$ and variance $\text{Var}(X_1) = 1$. Determine $\lim \limits_{n \to \infty} P(X_1 + ... + X_n \leq 2\sqrt{n})$ with precise justifications.

*Proof*. $\displaystyle \lim \limits_{n \to \infty} P(X_1 + ... + X_n \leq 2 \sqrt{n}) = \lim \limits_{n \to \infty} P(\frac{X_1 + ... + X_n - n \cdot 0}{\sqrt{n} \sqrt{1}} \leq \frac{2\sqrt{n} - n \cdot 0}{\sqrt{n} \sqrt{1}})$

​                                                                  $= \lim \limits_{n \to \infty} \displaystyle P(\frac{X_1 + ... + X_n}{\sqrt{n}} \leq 2)$

​                                                                  $= \Phi(2)$



#### Final Exam



##### Section A (December 11, 2019)



###### Problem 1

$10$ mathematicians are participating in a conference. $5$ of them represent Germany and the remaining $5$ are from France. The program committee selects $4$ scientists uniformly at random and asks them to give a talk. Each person can give only one talk. All participants have different names.



(a) (5 Points) What is the probability that only German mathematicians will be selected to give talks?

*Solution*. This is sampling *without* replacement and order *doesn't* matter.

Let $A$ be the event that only Germans are selected.

Then, $\#(A) = \displaystyle {5 \choose 4}$ out of $\#(\Omega) = \displaystyle {10 \choose 4}$ possibilities.

So, $P(A) = \displaystyle \frac{\#(A)}{\#(\Omega)}$

​                 $= \displaystyle \frac{\displaystyle {5 \choose 4}}{\displaystyle {10 \choose 4}}$

​                 $= \displaystyle \frac{2 \cdot 3 \cdot 4 \cdot 5}{7 \cdot 8 \cdot 9 \cdot 10} = \frac{1}{42}$.

Therefore, the probability that only German mathematicians will be selected to give talks is $\displaystyle \frac{1}{42}$.



(b) (10 Points) What is the probability that Anne from France will give a talk and Johannes from Germany will open the conference (give the first talk)?

*Solution*. This is sampling *without* replacement and order *does* matter.

Let $B$ be the event that Anne gives a talk and Johannes opens.

Then, $\#(B) = 3 \cdot 8 \cdot 7$, so $P(B) = \displaystyle \frac{3 \cdot 8 \cdot 7}{7 \cdot 8 \cdot 9 \cdot 10} = \frac{1}{30}$.

Therefore, the probability that Anne from France will give a talk and Johannes from Germany will open the conference is $\displaystyle \frac{1}{30}$.



###### Problem 2

(10 Points) Every morning Frank decides whether to go to work by bicycle or by car. He chooses bicycle with probability $0.7$. The probability that Frank will be late to work if he goes by bicycle is $0.1$, and the probability that he will be late if he goes by car is $0.2$. Frank is late today. What is the probability that he came to work by bicycle?

*Solution*. Let $B$ be the event that Frank goes work by bicycle and $L$ be the event that Frank is late.

Given that $P(B) = 0.7$, $P(B^C) = 0.3$, $P(L \vert B) = 0.1$, and $P(L \vert B^C) = 0.2$, we want to find $P(B \vert L)$.

Then, by *Bayes' formula*, $P(B \vert L) = \displaystyle \frac{P(L \vert B) \cdot P(B)}{P(L \vert B) \cdot P(B) + P(L \vert B^C) \cdot P(B^C)}$

​                                                           $= \displaystyle \frac{0.1 \cdot 0.7}{0.1 \cdot 0.7 + 0.2 \cdot 0.3} = \frac{7}{13}$.

Therefore, the probability that Frank came to work by bicycle is $\displaystyle \frac{7}{13}$.



###### Problem 3

Consider a point $P = (X, Y)$ chosen uniformly at random inside the rectangle in $\mathbb{R}^2$ with vertices $(0, 0)$, $(0, 1)$, $(2, 0)$, and $(2, 1)$. Let $Z = \max (X, Y)$ be the random variable defined as the maximum of the two coordinates of the point.



(a) (7 Points) Compute the cumulative distribution function of $Z$.

*Solution*. We want to find $F_Z (t) = P(Z \leq t)$.

Note that the range of $Z$ is $[0, 2]$ and the area of the rectangle is $\text{Area} (\Omega) = 1 \cdot 2 = 2$.

For $t < 0$, $P(Z \leq t) = 0$.

For $0 \leq t < 1$, the region $\{Z \leq t \}$ is a square with side length of $t$.

<img src="/Users/yang/Library/Application Support/typora-user-images/image-20200105001734247.png" alt="image-20200105001734247" style="zoom:33%;" />

The dark region is what we want, which has an area of $t^2$.

Since the area of whole rectangle is $2$, we need to normalize it to get the real probability.

So, $P(Z \leq t) = \displaystyle \frac{t^2}{2}$.

For $1 \leq t < 2$, the region $\{Z \leq t \}$ is a rectangle of width $1$ and length $t$.

<img src="/Users/yang/Library/Application Support/typora-user-images/image-20200105001933241.png" alt="image-20200105001933241" style="zoom:33%;" />

The dark region is what we want, which has an area of $t$.

Similarly, $P(Z \leq t) = \displaystyle \frac{t}{2}$.

For $t \geq 2$, $P(Z \leq t) = 1$.

In conclusion, $F_Z (t) = \begin{cases} 0 & t < 0 \\ \displaystyle \frac{1}{2} t^2 & 0 \leq t < 1 \\ \displaystyle \frac{1}{2} t & 1 \leq t < 2 \\ 1 & t \geq 2 \end{cases}$.



(b) (3 Points) Determine if $Z$ is continuous, discrete, or neither. If continuous, determine the probability density function of $Z$. If discrete, determine the probability mass function of $Z$. If neither, explain why.

*Solution*. $Z$ is continuous since its CDF is continuous and differentiable at all but finitely many points.

Therefore, differentiating the CDF, its density if $f_Z (t) = \begin{cases} 0 & t < 0 \\ t & 0 \leq t < 1 \\ \displaystyle \frac{1}{2} & 1 \leq t < 2 \\ 0 & t \geq 2 \end{cases}$.



###### Problem 4

Let $X$ be a continuous random variable with PDF given by $f_X (x) = \begin{cases} \displaystyle \frac{3}{32} x^5 & 0 < x < 2 \\ 0 & \text{otherwise} \end{cases}$. Define the random variable $Y = X^3 - 1$.



(a) (4 Points) What is the set of possible values (range) of $Y$?

*Solution*. By the PDF, the domain is $0 < X < 2$.

Then, the range of $Y$ is $[-1, 7]$.



(b) (11 Points) Compute the probability density function of $Y$.

*Solution*. Find the CDF of $Y$ first. $F_Y (t) = P(Y \leq t)$.

By Part (a), the range of $Y$ is $[-1, 7]$.

For $t < -1$, $P(Y \leq t) = 0$.

For $-1 \leq t < 7$, $P(Y \leq t) = P(X^3 - 1 \leq t)$

​                                                $= P(X \leq \displaystyle (t + 1)^{\frac{1}{3}})$

​                                                $= \displaystyle \int_0^{(t + 1)^{\frac{1}{3}}} \frac{3}{32} x^5 \text{ d}x$

​                                                $= \displaystyle \frac{1}{64} \left((t + 1)^{\frac{1}{3}} \right)^6$

​                                                $= \displaystyle \frac{1}{64} (t + 1)^2$.

For $t \geq 7$, $P(Y \leq t) = 1$.

In conclusion, $F_Y (t) = \begin{cases} 0 & t < -1 \\ \displaystyle \frac{1}{64} (t + 1)^2 & -1 \leq t < 7 \\ 1 & t \geq 7 \end{cases}$.

Therefore, differentiate the CDF of $Y$, the density of $Y$ is $f_Y (t) = \begin{cases} 0 & t < -1 \\ \displaystyle \frac{1}{32} (t + 1) & -1 \leq t < 7 \\ 0 & t \geq 7 \end{cases}$.



###### Problem 5

Let $X$ and $Y$ be jointly continuous random variables with the joint probability density function given by $f_{X, Y} (x, y) = \begin{cases} \displaystyle c \cdot e^{-\frac{x}{y}} & 0 < y < 1, y < x \\ 0 & \text{otherwise} \end{cases}$ with an unknown constant $c \in \mathbb{R}$.



(a) (5 Points) Determine $c$.

*Solution*. The joint density function must satisfy $\displaystyle \int_\mathbb{R} \int_\mathbb{R} f_{X, Y} (x, y) \text{ d}x \text{ d}y = 1$.

Thus, solve $\displaystyle \int_0^1 \int_y^\infty c \cdot e^{-\frac{x}{y}} \text { d}x \text{ d}y = 1$ for $c$.

$c \displaystyle \int_0^1 \int_y^\infty y \cdot \frac{1}{y} \cdot e^{-\frac{x}{y}} \text{ d}x \text{ d}y = 1$

$\displaystyle c \int_0^1 y \cdot e^{-1} \text{ d}y = 1$

$\displaystyle c \cdot \frac{1}{e} \cdot \left[\frac{1}{2} y^2 \right]_0^1 = 1$

Therefore, $c = 2e$.



(b) (5 Points) Compute the marginal probability density function of $Y$ and $\mathbb{E}[Y]$.

*Solution*. This is a direct calculation.

For the marginal density of $Y$, we have $f_Y (y) = \displaystyle \int_{-\infty}^\infty f_{X, Y} (x, y) \text{ d}x$

​                                                                                  $= \displaystyle \int_y^\infty 2e \cdot e^{-\frac{x}{y}} \text{ d}x$

​                                                                                  $= 2e \displaystyle \int_y^\infty y \cdot \frac{1}{y} e^{-\frac{x}{y}} \text{ d}x$

​                                                                                  $= \left[2ey (-e^{-\frac{x}{y}}) \right]_y^\infty$

​                                                                                  $= 2y \text{ for } 0 < y < 1$.

Then, $\mathbb{E}[Y] = \displaystyle \int_0^1 y \cdot 2y \text{ d}y$

​                     $= \displaystyle \left[\frac{2}{3} y^3 \right]_0^1$

​                     $= \displaystyle \frac{2}{3}$.



(c) (5 Points) Determine if $X$ and $Y$ are independent.

*Solution*. We prove by counter-example. (*This is not the only possible solution.*)

Note that $P(\displaystyle X < \frac{1}{2}, Y > \frac{1}{2}) = 0$.

While $P(\displaystyle X < \frac{1}{2}) > 0$ and $P(\displaystyle Y > \frac{1}{2}) > 0$, then $\displaystyle P(X < \frac{1}{2}) \cdot P(Y > \frac{1}{2}) > 0$.

Clearly, we find that $\displaystyle P(X < \frac{1}{2}, Y > \frac{1}{2}) \neq P(X < \frac{1}{2}) \cdot P(Y > \frac{1}{2})$.

Therefore, $X$ and $Y$ are independent.



###### Problem 6

Let $X$ and $Y$ be independent random variables with $X \sim N(1, 4)$ and $Y \sim \text{Exp} (1)$.



(a) (5 Points) Compute $\mathbb{E}[2X - 3Y + 1]$ and $\text{Var}(2X - 3Y + 1)$.

*Solution*. Since $X \sim N(1, 4)$, so $\mathbb{E}[X] = 1$ and $\text{Var}(X) = 4$.

Since $Y \sim \text{Exp} (1)$, so $\mathbb{E}[Y] = \displaystyle \frac{1}{\lambda} = 1$ and $\text{Var}(Y) = \displaystyle \frac{1}{\lambda^2} = 1$.

By *linearity*, $\mathbb{E}[2X - 3Y + 1] = 2 \mathbb{E}[X] - 3 \mathbb{E}[Y] + 1$

​                                                   $= 2 \cdot 1 - 3 \cdot 1 + 1 = 0$.

By *independence*, $\text{Var}(2X - 3Y + 1) = 4 \text{Var}(X) + 9 \text{Var}(Y)$

​                                                                   $= 4 \cdot 4 + 9 \cdot 1 = 25$.



(b) (5 Points) Compute $\text{Var}(XY)$.

*Solution*. This is a direct calculation.

$\text{Var} (XY) = \mathbb{E}[(XY)^2] - \mathbb{E}[XY]^2$

​                   $= \mathbb{E}[X^2 Y^2] - \mathbb{E}[XY]^2$

​                   $= \mathbb{E}[X^2] \mathbb{E}[Y^2] - \mathbb{E}[X]^2 \mathbb{E}[Y]^2$ by *independence*

Since $\text{Var}(X) = \mathbb{E}[X^2] - \mathbb{E}[X]^2$, then $\mathbb{E}[X^2] = \text{Var}(X) + \mathbb{E}[X]^2 = 4 + 1^2 = 5$.

Similarly, $\mathbb{E}[Y^2] = \text{Var}(Y) + \mathbb{E}[Y]^2 = 1 + 1^2 = 2$.

Therefore, $\text{Var}(XY) = 5 \cdot 2 - 1 \cdot 1 = 9$.



###### Problem 7

The park rangers of the Yosemite National Park keep record of the number of people hiking to the top of the Hald dome (mountain) during the summer months. Let $X_1, ..., X_30$ be the daily numbers of hikers in June. According to the rangers' data, $\mathbb{E}[X_i] = 50$.



(a) (5 Points) Estimate the probability $P(X_i \geq 75)$.

*Solution*. The only information we have is the expectation (mean) $\mu = \mathbb{E}[X_i] = 50$.

Using *Markov's Inequality*, we have $P(X_i \geq 75) \leq \displaystyle \frac{\mathbb{E}[X_i]}{75} = \frac{2}{3}$.



(b) (5 Points) Using the additional information that $\text{Var}(X_i) = 100$, estimate the probability $P(X_i \geq 75)$.

*Solution*. With the additional information variance $\text{Var}(X_i) = 100$, using *Chebyshev's Inequality*,

we have $P(X_i \geq 75) = P(X_i - 50 \geq 25)$

​                                       $\leq P(\lvert X_i - 50 \rvert \geq 25)$

​                                       $\leq \displaystyle \frac{\text{Var}(X_i)}{25^2} = \frac{4}{25}$.



(c) (5 Points) Using the above information and assuming that the number of hikers on each day in June is independent from the number of hikers on other days in June, give the best possible lower bound of the probability that the average number of hikers in June will be between $40$ and $60$ (without using the *Central Limit Theorem*).

*Solution*. Let $S_{30} = X_1 + ... + X_{30}$.

Since $X_1, ..., X_{30}$ are *independent and identically distributed*, so $\mathbb{E} \left[\displaystyle \frac{S_{30}}{30} \right] = 50$ and $\text{Var} \left(\displaystyle \frac{S_{30}}{30} \right) = \displaystyle \frac{10}{3}$.

Then, $P(40 \leq \displaystyle \frac{S_{30}}{30} \leq 60) = P(-10 \leq \displaystyle \frac{S_{30}}{30} - 50 \leq 10)$

​                                              $\leq P(\left| \displaystyle \frac{S_{30}}{30} - 50 \right| \leq 10)$

​                                              $= 1 - P(\left| \displaystyle \frac{S_{30}}{30} - 50 \right| > 10)$.

By *Chebyshev's Inequality*, $P(\left| \displaystyle \frac{S_{30}}{30} - 50 \right| > 10) \leq \displaystyle \frac{\text{Var} \left(\displaystyle \frac{S_{30}}{30} \right)}{100}$

​                                                                                   $= \displaystyle \frac{10}{3 \cdot 100} = \frac{1}{30}$.

So, $P(40 \leq \displaystyle \frac{S_{30}}{30} \leq 60) \geq 1 - \displaystyle \frac{1}{30} = \frac{29}{30}$.

Therefore, the best possible lower bound of the probability that the average number of hikers in June will be between $40$ and $60$ is $\displaystyle \frac{29}{30}$.



###### Problem 8

(10 Points) Suppose that you go to work by bus. On any given day the expected waiting time for the bus is $\displaystyle \frac{2}{3}$ of an our and the waiting time is independent from the waiting times on other days. You work in total $324$ days a year. Using a reasonable assumption about the distribution of the bus waiting times, estimate the probability that during one year you spend at least $240$ hours in total waiting for a bus to go to work.

*Solution*. Let $X_i$ be the waiting time on day $i$.

The waiting time $X_i$ is an exponential distribution with expectation $\mathbb{E}[X] = \displaystyle \frac{2}{3}$, so $\lambda = \displaystyle \frac{3}{2}$ and $\text{Var}(X) = \displaystyle \frac{4}{9}$.

So, $X_i \sim \text{Exp} (\displaystyle \frac{3}{2})$. Also, $X_1, ..., X_{324}$ are *independent and identically distributed*.

Let $\displaystyle \sum \limits_{i = 1}^{324} X_i$ be the total waiting time during a year.

By the *Central Limit Theorem*, $P(\displaystyle \sum \limits_{i = 1}^{324} X_i \geq 240) = P(\displaystyle \frac{\displaystyle \sum \limits_{i = 1}^{324} X_i - 324 \cdot \frac{2}{3}}{\displaystyle \sqrt{324} \cdot \sqrt{\frac{4}{9}}} \geq \frac{240 - 324 \cdot \displaystyle\frac{2}{3}}{\sqrt{324} \cdot \sqrt{\displaystyle \frac{4}{9}}})$

​                                                                                    $\approx P(Z \geq 2)$

​                                                                                    $= 1 - \Phi(2) \approx 0.0228$.

Therefore, the probability that you spend at least $240$ hours in total waiting for a bus to go to work during one year is $0.0228$ by *Central Limit Theorem*.



##### Section C (December 10, 2019)



###### Problem 1

Suppose that there are $10$ boys and $10$ girls in a class. Every day, the teacher picks a group of $5$ students uniformly at random and independently of the other days to clean the chalkboard erasers.



(a) (5 Points) What is the probability that no girls are picked to clean the erasers on the first day of school?

*Solution*. Out of the $\displaystyle {20 \choose 5}$ possibilities, only $\displaystyle {10 \choose 5}$ have all boys.

Therefore, the probability that no girls are picked to clean the erasers on the first day of school is $\displaystyle \frac{21}{1292}$.



(b) (5 Points) What is the probability that Todd, a boy in the class, is picked to clean the eraser with at least one girl in the group on the first day?

*Solution*. Let $A$ be the event that Todd is picked and $B$ be the event that at least one girl is picked.

Then, $P(A \bigcap B) = P(A) - P(A \bigcap B^C) = \displaystyle \frac{\displaystyle {1 \choose 1} \cdot {19 \choose 4}}{\displaystyle {20 \choose 5}} - \frac{\displaystyle {1 \choose 1} \cdot {9 \choose 4}}{\displaystyle {20 \choose 5}}$.



Therefore, the probability that Todd is picked to clean the eraser with at least one girl in the group on the first day is $\displaystyle \frac{625}{2584}$.



(c) (5 Points) What is the probability that Todd does not have to clean the erasers for the first five days of school?

*Solution*. Let $X$ be the number of days that Todd does not have to clean the erasers.

By Part (a), the probability that Todd does not have to clean the erasers for a given day is $\displaystyle \frac{\displaystyle {19 \choose 5}}{\displaystyle {20 \choose 5}}$.

Then, $X \sim \text{Bin} (5, \displaystyle \frac{3}{4})$.

So, $P(X = 5) = \displaystyle {5 \choose 5} \cdot (\frac{3}{4})^5 \cdot (1 - \frac{3}{4})^0 = \frac{243}{1024}$.

Therefore, the probability that Todd does not have to clean the erasers for the first five days is $\displaystyle \frac{243}{1024}$.



###### Problem 2

Suppose that we have a bag with $3$ fair dice: one is $6$-sided, one is $12$-sided, and one is $20$-sided. We draw one uniformly at random, roll it once, and record the outcome.



(a) (5 Points) What is the probability that we roll a $7$?

*Solution*. Let $A$ be the event that we roll a $7$ and $B_i$ be the event that we draw die $i$ (die $1$ is $6$-sided, die $2$ is $12$-sided, and die $3$ is $20$-sided).

Then, $P(A) = \displaystyle \sum \limits_{i = 1}^3 P(A \bigcap B_i)$

​                      $= \displaystyle \sum \limits_{i = 1}^3 P(B_i) P(A \vert B_i)$

​                      $= \displaystyle \frac{1}{3} \sum \limits_{i = 1}^3 P(A \vert B_i)$

​                      $= \displaystyle \frac{1}{3} (0 + \frac{1}{12} + \frac{1}{20}) = \frac{2}{45}$.

Therefore, the probability that we roll a $7$ is $\displaystyle \frac{2}{45}$.



(b) (5 Points) Suppose that we rolled a $7$. What is the probability that we drew the $20$-sided die?

*Solution*. By Part (a), we note that $P(B_3 \vert A) = \displaystyle \frac{P(B_3 \bigcap A)}{P(A)}$

​                                                                             $= \displaystyle \frac{\displaystyle \frac{1}{3} \cdot \frac{1}{20}}{\displaystyle \frac{2}{45}} = \frac{3}{8}$.

Therefore, the probability that we drew the $20$-sided die is $\displaystyle \frac{3}{8}$ given that we rolled a $7$.



###### Problem 3

Suppose that $X \sim \text{Unif}[-2, 1]$. Let $Y = X^2$.



(a) (10 Points) Find the CDF of $Y$.

*Solution*. We want to find $F_Y (t) = P(Y \leq t)$. The range of $Y$ is $[0, 4]$.

For $t \leq 0$, $P(Y \leq t) = 0$.

For $0 < t \leq 1$, $P(Y \leq t) = P(X^2 \leq t)$

​                                             $= P(-\sqrt{t} \leq X \leq \sqrt{t}) = \displaystyle \frac{2}{3} \sqrt{t}$.

For $1 < t \leq 4$, $P(Y \leq t) = P(0 \leq Y \leq 1) + P(1 \leq Y \leq t)$

​                                             $= P(-1 \leq X \leq 1) + P(-\sqrt{t} \leq X \leq -1)$

​                                             $= P(-\sqrt{t} \leq X \leq 1) = \displaystyle \frac{1}{3} \sqrt{t} + \frac{1}{3}$.

For $t > 4$, $P(Y \leq t) = 1$.

In conclusion, the CDF of $Y$ is $F_Y (t) = \begin{cases} 0 & t \leq 0 \\ \displaystyle \frac{2}{3} \sqrt{t} & 0 < t \leq 1 \\ \displaystyle \frac{1}{3} \sqrt{t} + \frac{1}{3} & 1 < t \leq 4 \\ 1 & t > 4 \end{cases}$.



(b) (5 Points) Is $Y$ discrete, continuous, or neither? If discrete, find the PMF. If continuous, find the density. If neither, explain why.

*Solution*. $Y$ is continuous since its CDF is continuous and differentiable at all but finitely many points.

Therefore, differentiating it, its density is $f_Y (t) = \begin{cases} 0 & t \leq 0 \\ \displaystyle \frac{1}{3\sqrt{t}} & 0 < t \leq 1 \\ \displaystyle \frac{1}{6\sqrt{t}} & 1 < t \leq 4 \\ 0 & t > 4 \end{cases}$.



###### Problem 4

(10 Points) Suppose that $X \sim \text{Poisson} (\lambda)$ and $Y \sim \text{Exp} ( \mu)$ are independent random variables. Find the probability $\mathbb{P} (X < Y)$.

*Solution*. This is a direct calculation. Note that $P(X < Y) = \displaystyle \sum \limits_{k = 0}^\infty P(X = k, Y > k)$.

Since $X$ and $Y$ are independent random variables, then $P(X = k, Y > k) = P(X = k) \cdot P(Y > k)$.

We have $P(X = k) = \displaystyle e^{-\lambda} \cdot \frac{\lambda ^k}{k!}$ and $P(Y > k) = e^{-\mu k}$.

So, $P(X < Y) = \displaystyle \sum \limits_{k = 0}^\infty P(X = k) \cdot P(Y > k)$

​                           $= \displaystyle \sum \limits_{k = 0}^\infty e^{-\lambda} \cdot \frac{\lambda^k}{k!} \cdot e^{-\mu k}$

​                           $= \displaystyle e^{-\lambda} \sum \limits_{k = 0}^\infty \frac{(\lambda e^{-\mu})^k}{k!}$

​                           $= \displaystyle e^{-\lambda} \cdot e^{\lambda e^{-\mu}} = e^{-\lambda (1 - e^{-\mu})}$.



###### Problem 5

(10 Points) Suppose that we roll a fair $6$-sided die until we roll a $6$, at which point we stop. Let $N$ be the number of times that we rolled an odd number before we stopped. For example, we could have the sequence of rolls $\{1, 3, 4, 1, 2, 6 \}$, in which case $N = 3$. Compute the expectation $\mathbb{E}[N]$.

*Solution*. Let $E_i = \{\text{odd number on the i-th roll and no roll of 6 beforehead} \}$.

Note that $N = \displaystyle \sum \limits_{i = 1}^\infty I_{E_i}$ where $I_{E_i}$ is the indicator function of the event $E_i$.

By independence, we have $P(E_i) = \displaystyle (\frac{5}{6})^{i - 1} \cdot \frac{1}{2}$.

Then, $\mathbb{E}[N] = \displaystyle \sum \limits_{i = 1}^\infty (\frac{5}{6})^{i - 1} \cdot \frac{1}{2}$

​                     $= \displaystyle \frac{1}{2} \cdot \frac{1}{1 - \displaystyle \frac{5}{6}} = 3$.



###### Problem 6

Let $T$ be the triangle in $\mathbb{R}^2$ with vertices $(-1, 0)$, $(0, 1)$, and $(1, 0)$ (including the interior). Suppose that $P = (X, Y)$ is a point chosen uniformly at random inside of $T$.



(a) (5 Points) What is the joint density function of $(X, Y)$? Use this to compute $\text{Cov}(X, Y)$.

*Solution*. We have $\text{Area} (T) = \displaystyle \frac{1}{2} \cdot 2 \cdot 1 = 1$.

Inside of the region $T$, the joint density is $\displaystyle \frac{1}{\text{Area}(T)} = 1$.

Therefore, the joint density of $(X, Y)$ is $f_{X, Y} (x, y) = \begin{cases} 1& (x, y) \in T \\ 0 & (x, y) \notin T \end{cases}$.

Then, we calculate the covariance using the formula $\text{Cov}(X, Y) = \mathbb{E}[XY] - \mathbb{E}[X] \mathbb{E}[Y]$.

$\mathbb{E}[XY] = \displaystyle \int_0^1 \int_{y - 1}^{1 - y} 1 \cdot xy \text{ d}x \text{ d}y$

​              $= \displaystyle \int_0^1 \left[\frac{1}{2} y \cdot x^2 \right]_{y - 1}^{1 - y} \text{ d}y$

​              $= \displaystyle \int_0^1 \frac{1}{2} y \cdot \left[(1 - y)^2 - (y - 1)^2 \right] \text{ d}y$

​              $= 0$

$\mathbb{E}[X] = \displaystyle \int_0^1 \int_{y - 1}^{1 - y} x \text{ d}x \text{ d}y$

​          $= \displaystyle \int_0^1 \left[\frac{1}{2} x^2 \right]_{y - 1}^{1 - y} \text{ d}y$

​          $= \displaystyle \int_0^1 \frac{1}{2} \left[(1 - y)^2 - (y - 1)^2 \right] \text{ d}y$

​          $= 0$

Therefore, $\text{Cov}(X, Y) = 0$.



(b) (5 Points) Determine if $X$ and $Y$ are independent.

*Solution*. By Part (a), $\text{Cov}(X, Y) = 0$ does not tell us anything about independence.

So, calculate the marginals.

For $-1 \leq x \leq 0$, $f_X (x) = \displaystyle \int_0^{x + 1} f_{X, Y} (x, y) \text{ d}y = \int_0^{x + 1} 1 \text{ d}y = x + 1$.

For $0 \leq x \leq 1$, $f_X (x) = \displaystyle \int_0^{-x + 1} f_{X, Y} (x, y) \text{ d}y = \int_0^{-x + 1} 1 \text{ d}y = -x + 1$.

So, $f_X (x) = \begin{cases} x + 1 & -1 \leq x \leq 0 \\ -x + 1 & 0 \leq x \leq 1 \\ 0 & \text{otherwise} \end{cases}$.

For $0 \leq y \leq 1$, $f_Y (y) = \displaystyle \int_{y - 1}^{1 - y} f_{X, Y} (x, y) \text{ d}x = \int_{y - 1}^{1 - y} 1 \text{ d}x = 2 - 2y$.

So, $f_Y (y) = \begin{cases} 2 - 2y & 0 \leq y \leq 1 \\ 0 & \text{otherwise} \end{cases}$.

Since $f_{X, Y} (x, y) \neq f_X (x) \cdot f_Y (y)$, therefore we conclude $X$ and $Y$ are not independent.



(c) (10 Points) Determine the CDF of $Z = \max \{X + Y, Y - X \}$. Compute the expectation $\mathbb{E}[Z]$.

*Solution*. First, we want to find $F_Z (t) = P(Z \leq t)$. The range of $Z$ is $[0, 1]$.

For $t < 0$, $P(Z \leq t) = 0$.

For $t > 1$, $P(Z \leq t) = 1$.

Also note that $\{Z \leq t \} = \{\max \{X + Y, Y - X \} \leq t \}$

​                                          $= \{X + Y \leq t \} \bigcap \{Y - X \leq t \}$

​                                          $= \{Y \leq t - X \} \bigcap \{Y \leq t + X \}$

<img src="/Users/yang/Library/Application Support/typora-user-images/image-20200104103306571.png" alt="image-20200104103306571" style="zoom:33%;" />

For $0 \leq t \leq 1$, the dark region is what we want. The area of this region is $\displaystyle \frac{1}{2} \cdot 2t \cdot t = t^2$.

Therefore, $P(Z \leq t) = t^2$.

In conclusion, the CDF of $Z$ is $F_Z (t) = \begin{cases} 0 & t < 0 \\ t^2 & 0 \leq t \leq 1 \\ 1 & t > 1 \end{cases}$.

Then, the density of $Z$ if $f_Z (t) = \begin{cases} 0 & t < 0 \\ 2t & 0 \leq t \leq 1 \\ 0 & t > 1 \end{cases}$.

Therefore, $\mathbb{E}[Z] = \displaystyle \int_0^1 t \cdot 2t \text{ d}t$

​                             $= \displaystyle \left[\frac{2}{3} t^3 \right]_0^1 = \frac{2}{3}$.



###### Problem 7

Suppose that the random variable $X$ is non-negative (i.e., $\mathbb{P}(X \geq 0) = 1$) with moment generating function $M_X (t) = \begin{cases} \displaystyle (1 - 2t)^{-2} & \text{if } t < \displaystyle \frac{1}{2} \\ +\infty & \text{if } t \geq \displaystyle \frac{1}{2} \end{cases}$.



(a) (5 Points) Use Markov's inequality to bound $\mathbb{P} (X \geq 10)$.

*Solution*. We need to find the mean of $X$ to use *Markov's Inequality*.

By the definition of $n \text{th}$ moment, recall that $\mathbb{E}[X^n] = M_X^{(n)} (0)$.

So, the mean of $X$ is $\mathbb{E}[X] = M_X ' (0)$.

Differentiate $M_X (t)$, we get $M_X ' (t) = \displaystyle \frac{4}{(1 - 2t)^3}$.

Then, $\mathbb{E}[X] = 4$.

Therefore, *Markov's Inequality* gives us $P(X \geq 10) \leq \displaystyle \frac{\mathbb{E}[X]}{10} = \frac{2}{5}$.



(b) (5 Points) Use Chebyshev's inequality to bound $\mathbb{P}(X \geq 10)$.

*Solution*. We need to find both mean and variance of $X$ to use *Chebyshev's Inequality*.

By Part (a), $\mu = \mathbb{E}[X] = 4$.

The *Chebyshev's Inequality* tells us $P(X \leq 10) = P(X - 4 \geq 6)$

​                                                                                  $\leq P(\lvert X - 4 \rvert \geq 6)$

​                                                                                  $\leq \displaystyle \frac{\sigma^2}{6^2}$

We want to find $\sigma_X^2 = \mathbb{E}[X^2] - \mathbb{E}[X]^2$.

Since $M_X^{(2)} (t) = \displaystyle \frac{24}{(1 - 2t)^4}$, then we have $\mathbb{E}[X^2] = M_X^{(2)} (0) = 24$.

Then, $\sigma_X^2 = 24 - 4^2 = 8$.

Therefore, *Chebyshev's Inequality* gives us $P(X \geq 10) \leq \displaystyle \frac{\sigma_X^2}{6^2} = \frac{2}{9}$.



###### Problem 8

Suppose that we have i.i.d. random variables $X_1, X_2, ...$ with mean $\mathbb{E}[X_1] = 1$ and the variance $\text{Var}(X_1) = 2$.



(a) (5 Points) Determine $\lim \limits_{n \to \infty} \mathbb{P} (X_1 + ... + X_n = n)$ with precise justifications.

*Proof*. This is a direct application of the *Central Limit Theorem*.

$\lim \limits_{n \to \infty} P(X_1 + ... + X_n) = \lim \limits_{n \to \infty} P(X_1 + ... + X_n - n = 0)$

​                                        $= \lim \limits_{n \to \infty} P(\displaystyle \frac{X_1 + ... + X_n - n}{\sqrt{n} \sqrt{2}} = 0)$

​                                        $= \lim \limits_{n \to \infty} (0 \leq \displaystyle \frac{X_1 + ... + X_n - n}{\sqrt{2n}} \leq 0)$

​                                        $= \Phi (0) - \Phi (0) = 0$.



(b) (5 Points) Determine $\lim \limits_{n \to \infty} \mathbb{P} (X_1 + ... + X_n \geq \displaystyle \frac{1}{3} n)$ with precise justifications.

*Proof*. Either the *Weak Law of Large Numbers* or the *Central Limit Theorem* works in this case.

For the *Law of Large Numbers*, $P(X_1 + ... + X_n \geq \displaystyle \frac{1}{3} n) = P(X_1 + ... + X_n - n \geq -\displaystyle \frac{2}{3} n)$

​                                                                                                  $= P(\displaystyle \frac{X_1 + ... + X_n}{n} - 1 \geq -\frac{2}{3})$

​                                                                                                  $\geq P(\displaystyle \left| \frac{X_1 + ... + X_n}{n} - 1 \right| \leq \frac{2}{3})$

By the *Weak Law of Large Numbers*, $\lim \limits_{n \to \infty} P(\displaystyle \left|\frac{X_1 + ... + X_n}{n} - 1 \right| \leq \frac{2}{3}) = 1$.

Therefore, $\lim \limits_{n \to \infty} P(X_1 + ... + X_n \geq \displaystyle \frac{1}{3} n) = 1$.

To apply the *Central Limit Theorem*, $P(X_1 + ... + X_n \geq \displaystyle \frac{1}{3} n) = P(X_1 + ... + X_n - n \geq \displaystyle -\frac{2}{3} n)$

​                                                                                                          $= P(\displaystyle \frac{X_1 + ... + X_n - n}{\sqrt{2n}} \geq -\frac{\sqrt{2n}}{3})$

Since $\lim \limits_{n \to \infty} \displaystyle -\frac{\sqrt{2n}}{3} = -\infty$,

the *Central Limtit Theorem* implies that $\lim \limits_{n \to \infty} P(X_1 + ... + X_n \geq \displaystyle \frac{1}{3} n) \geq 1 - \Phi(-c)$ for any value of $c > 0$.

Therefore, let $c \to \infty$, $\lim \limits_{n \to \infty} P(X_1 + ... + X_n \geq \displaystyle \frac{1}{3} n) = 1$.