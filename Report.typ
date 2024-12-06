#set text(size: 15pt, font: "Times New Roman")
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
#figure(caption: "NPN BJT")[#image("npn.png")] <npn>
#figure(caption: "PNP BJT")[#image("pnp.png")] <pnp>
= Methods

= Results
= Discussion
= Conclusion
= References
= Appendix