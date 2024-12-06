#set text(size: 15pt, font: "Times New Roman")
#import "@preview/subpar:0.2.0"

= Abstract
This the report of the 3 lab sessions of the course Electronic Devices. 
Lab session 1 was about exploring the characteristics of forward basis and 
reverse basis of diodes. Lab session 2 required conducting a basic research on Bipolar Junction Transistor(BJT). Lab session 3, however, was a coursework regarding the Junction Field-effect Transistor(JFET).
All of these three components are essential to modern electronic engineering. These three lab sessions provided valuable hands-on experience and a deeper understanding of fundamental semiconductor devices.
= Introduction
== Semiconductor 
A substance that can conduct electricity is named a conductor, in the opposite, a substance that can not conduct electricity is named insulator. Semiconductors, 
however, have conducting properties which are between 
conductor and insulator. Due to their unique characteristics, semiconductors-related technologies are widely applied in electronic industries such as ICs(integrated circuits) production.
// https://www.hitachi-hightech.com/global/en/knowledge/semiconductor/room/about/
== Doping 
The majority of semiconductors are silicon. Unfortunately, the pure silicon's conductivity is too small($sigma approx 1.56 times 10^(-3) S\/m $). Therefore, doping is required for industrial practices. There are two types of doping. N-type means adding 
elements whose valence electrons are more than that of silicon such as phosphorus. P-type indicates adding elements whose valence electrons are 
less than that of silicon, for example, boron. A very small amount of doping can significantly increase the conductivity of semiconductors. 
// https://en.wikipedia.org/wiki/Doping_(semiconductor)#/media/File:Silicon_doping_-_Type_P_and_N.svg
#figure(caption: "Doping")[#image("doping.png")]
== PN junction and diodes
// https://toshiba-semicon-storage.com/cn/semiconductor/knowledge/e-learning/discrete/chap1/chap1-6.html
A diode is constructed with a P-type semiconductor and a N-type Semiconductor
connected in series. 
#figure(caption: "PN junction")[#image("pnj.jpg", height: 40%)]
The region where two types of materials contact forms the PN junction.
The holes which carry positive charges in P-type semiconductors can move freely,
while the electrons which carry negative charges in N-type semiconductors can move 
freely. They both initially flow to another type because of concentration difference.
As the holes and electrons carry different types of charges, they will neutralize 
in region near the contact forming the depletion layer. As these carriers 
continued to move, the holes that have entered N-type semiconductor and the electrons 
that have entered T-type semiconductor will form a electronic field from 
N region to P region. This electronic will prevent more carriers from diffusion.
A stable depletion layer will establish with this negative feedback mechanism.
// https://www.physics-and-radio-electronics.com/electronic-devices-and-circuits/semiconductor-diodes/forwardbiasedpnjunctionsemiconductordiode.html
When a positive voltage is applied between the P region and N region like #ref(<fb>),
the external voltage can promote the carriers' diffusion, thinning the depletion layer.
The current can be easily established.
#figure(caption: "Forward bias")[#image(
    "forwardbias.png"
)]<fb>
The opposite setup in #ref(<rb>), which is called reverse bias, will thicken the depletion layer 
and prevent current from establishing.
#figure(caption: "Reverse bias")[#image("reversebiaseddiode.png")]<rb>
This explains the one-way conduction property of diodes.
== Bipolar Junction Transistor(BJT)
The bipolar junction transistors(BJTs) consists of three blocks of 
semiconductors. Depending on permutations, it can categorized as NPN(#ref(<npn>))
and PNP(#ref(<pnp>)).BJT can be used to amplify the current or work as a switch 
to control the current. The two terminals of BJT are called emitter and collector, 
the pole connected to the central region is called the base. A BJT contains 
two PN junctions. The BJT have four working states---cutoff, active, saturation and breakdown.
#figure(caption: "Working states of BJT")[#table(align: center, columns: 3)[Working states][PN junction near emitter][PN junction near collector][Cutoff][Reverse biased][Reverse biased][Active][Forward biased][Reverse biased][Saturation][Forward biased][Forward biased][Breakdown][Reversed biased][Breakdown]]  
This lab session focused on the active and saturation regions.
In active regions, the BJT satisfies:
$ I_E=I_B+I_C $
$ I_C=beta I_B $
$ V_"CE">V_"ce satuation" $
Ideally, in this region, $I_C$ only depends on $I_B$ regardless of $V_"CE"$.

When $I_B approx 0$, $I_C approx 0$, BJT is in the cutoff region.

In saturation region, $I_C$ mainly depends on $V_"CE"$ and it can be 
complex.
// https://www.gadgetronicx.com/wp-content/uploads/2021/08/transistor-characteristic-curve.png

#figure(caption: "NPN BJT")[#image("npn.png")] <npn>
#figure(caption: "PNP BJT")[#image("pnp.png")] <pnp>
#figure(caption: "Working regions of BJT")[#image("transistor-characteristic-curve.png")]
== Junction Field-effect Transistor(JFET)
#figure(caption: "JFET")[#image("IN_JFET.png")]<jfet>
// https://www.electronics-tutorials.ws/transistor/tran_5.html
A typical JFET has the structure like #ref(<jfet>).
SimilarlyS depending on materials' permutations, there is N-channel and P-channel
JFET.
#figure(caption: "Symbols of two types of JFET")[#image("JFET.png", height: 20%)]
In a certain working condition(e.g certain temperature), a JFET has a unique $V_P$.
The working states and its relevant information is listed in #ref(<t2>).
#figure(caption: "JFET Working regions")[#table(align: center, columns:2)[Linear Region][Condition][Cutoff][$V_"GS"<=V_p$][Linear][$V_"GS">V_P,V_"DS"<V_"GS"-V_P $][Saturation][$V_"GS">V_P,V_"DS">=V_"GS"-V_P $]] <t2>
= Methods
For lab session 1, I built a simple circuit that connecting a diode to a variable voltage 
source and measure the current across the diode.

For lab session 2 and lab session 3, I used LTSpice to perform simulation and 
used Jupyter notebook to analyze the data. 
= Results
== Lab session 1
=== Forward biased
The voltage-current relationship is shown in #ref(<t3>) and #ref(<fp>).
#figure(caption: "Forward biased")[#table(align: center, columns: 2)[Voltage(V)][Current(A)][0.3][0.012][0.4][0.02][0.5][0.045][0.6][0.105][0.7][0.18][0.9][0.35][1.1][0.529][1.2][0.623][1.3][0.717][1.4][0.812][1.5][0.907][1.6][1.002][1.7][1.098][1.8][1.194][1.9][1.29][2.0][1.387]]<t3>
#figure(caption: "Forward biased")[#image("forward.png")]<fp>
=== Reversed biased
The voltage-current relationship is shown in #ref(<t4>) and #ref(<rp>).
#figure(caption: "Reversed biased")[#table(align: center, columns: 2)[Voltage(mV)][Current(A)][733][0.16][826][0.18][910][0.18][1002][0.183][1134][0.184][1190][0.188][1267][0.191][1375][0.193][1468][0.203][1561][0.208][1654][0.209][1747][0.209][2210.0][0.21][2670.0][0.21][4530.0][0.48][4720.0][0.48]]<t4>
#figure(caption: "Reversed biased")[#image("rev.png")]<rp>
== Lab session 2
I established a Spice model shown in #ref(<lab2p>)
#figure(caption: "Lab session 2 circuit")[#image("2024-12-06-20-25-01.png")]<lab2p>
For task 1, I observed the relations between $I_C$ and $V_"BE"$ when $V_"CC"$=15, 8, 6, 5, 4, 3, 2, 1 V. Four figures was selected and displayed in #ref(<lat1>)

#subpar.grid(figure(image("Lab2/21.png", width: 100%)), figure(image("Lab2/22.png", width: 100%)), figure(image("Lab2/23.png", width: 100%)),figure(image("Lab2/24.png", width: 100%)),columns: (1fr,1fr), caption: "Lab sessuib 2 task1",label: <lat1>)
For task 2, I set $V_"CC"$ to be 5V. Then, $V_"BE"$ was adjuted to 
approximately 1.241 V ensuring that $V_"CE"$ was close to 5V.
Then, $V_"CC"$ was modified while $V_"BE"$ was fixed to make $V_"CE"$ to be 0,0.2,1,3,5,10 V. $I_C$ is measured meanwhile.
The results are shown in #ref(<l2t2t>) and #ref(<l2t2p>).
#figure(caption: "Lab session 2 taks2")[#table(align: center, columns: 2)[$V_"CE"("V")$][$I_C ("mA")$][0][0][0.2][0.171][1][0.935][3][2.88][5][4.64][10][4.99]]<l2t2t>
#figure(caption: "Lab session 2 task2")[#image("2024-12-06-21-02-38.png")]<l2t2p>
== Lab session 3
I established a Spice model shown in #ref(<fig-lab3>).
#figure(caption: "Lab session 3 circuit")[#image("2024-12-06-21-09-37.png")] <fig-lab3>

= Discussion
= Conclusion
= References
= Appendix