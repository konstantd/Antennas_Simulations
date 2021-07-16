## Antennas

This repository contains the assignments for the Academic Course “Special Antennas-Antenna Synthesis" taught in the Spring of 2018-2019 in Aristotle University of Thessaloniki - Electrical & Computer Engineering. The goal of the Project is the analysis and optimization of three antennas with different parameters.  For the simulations **4NEC2 software** was used, after the construction of the geometry of the antennas using MATLAB.

The antennas which were analysed are:

* Discone Antnenna

* Helical antenna 

- Television Antenna with 4 sets of crossed dipoles and a reflector

The behavior of each antenna was studied and explained through simulations (such as Input impedance of the antenna, 2D or 3D radiation patterns, Reflection Coefficient and SWR) that were considered for different wavelengths and frequency bands in order to draw conlcusions regarding broadband operations. 



The respective folders contain the Matlab files that were used for the design of the geometry, as well as .txt files that were generated by the scripts and were used in 4NEC2. The geometry of the 2nd antenna was created exclusively through 4nec2 software.

## 

#### Discone Antnenna

Wavelength: λ=0.1m. Central fo=3Ghz.

The dimensions of the antenna are r = 0.3λ for the radius of the disc, l = 0.5λ for the length of the wires (of the cone) and 2*0 = 60 for total angle of the cone (θ= 30 from the axis).  We assume wire diameter λ / 100. In the design of the NEC file can be considered that the cone wires are connected at a common point a short distance (let d = λ / 20) down from the point where the disc wires connect (see photo, below). 

<p allign = "center">
     <img src="/Discone/photos/1.png"width = "50%">
</p>

A small Matlab script was written that takes r, l, θ and d as variables and constructs
the geometry of the antenna. Specifically, it will build GW lines, as accepted by the
NEC file (.nec).



For the frequency band [0.5fo - 4fo] in the below plot, we can see the change of real and
imaginary part of the input impedance Zin, as well as the reflection coefficient of the antenna.

<p allign = "center">
     <img src="/Discone/photos/2.png"width = "95%">
</p>

<p allign = "center">
     <img src="/Discone/photos/3.png"width = "95%">
</p>



We observe that the reflection coefficient is desirable (<-10db) only in one small frequency band close to 6.5 Ghz. To achieve good operation throug al the  above zone, looking at the magnitude of the  Zin of the antenna (green in the picture) we see that its 'average value' is close to 110 Ω. 



<p allign = "center">
     <img src="/Discone/photos/4.png"width = "95%">
</p>





Therefore, we set the characteristic impedance equal to Zo = 110, and run the simulations again for the SWR and the Reflection coefficient in the same frequency band.

<p allign = "center">
     <img src="/Discone/photos/5.png"width = "95%">
</p>


We see significant changes both in SWR which is desirable (<2)  for all frequencies (except
1.5 to 2.5 Ghz) in the following plot and in Reflection Coefficient which is below -10 dB.





Below we can see the Radiation Pattern @f=fo=3Ghz at the Verical and Horizontal plane as well as 3D. 



<p allign = "center">
     <img src="/Discone/photos/6.png"width = "50%">
</p>

<p allign = "center">
     <img src="/Discone/photos/7.png"width = "50%">
</p>

<p allign = "center">
     <img src="/Discone/photos/8.png"width = "50%">
</p>



We continue with the diagrams of the reflection coefficient, changing the angle
2θ = 10, and 150 degrees while keeping all other parameters unchanged, in order to see the behavior of the antenna. 

<p allign = "center">
     <img src="/Discone/photos/9.png"width = "95%">
</p>

<p allign = "center">
     <img src="/Discone/photos/10.png"width = "95%">
</p>



We conclude that the more the cone opens, the fewer areas in this frequency band in which satisfactory operation is achieved. In fact, for larger angles the reflection coefficient  changes abruptly in some frequencies and more specifically at 6.4Ghz suddenly achieves very good operation, but anywhere else behaves quite undesirably.





#### Helical antenna 



We would like to design a helical antenna with 20 turns, C=λ for central frequency fo=100Mhz. Ground will be defined as a disc of r=λ/2, using 12 radial and 5 circular wires. The excitation will be fed in a segment between ground and the edge of the helix. Using the geometry builder we design the ground and that the helix. Below we can see all the geometrical characteristics of the antenna for the desired frequency and N=20 turns. The helix was designed λ/60=0.05m above ground, for the excitation segment.



<p allign = "center">
     <img src="/Helical/photos/1.png"width = "70%">
</p>

<p allign = "center">
     <img src="/Helical/photos/2.png"width = "70%">
</p>

For the frequency band [0.3fo - 2fo] in the below plot, we can see the change of real and imaginary part of the input impedance Zin. 

<p allign = "center">
     <img src="/Helical/photos/3.png"width = "70%">
</p>

We observe that the absolute value of Zin is quite steady through the whole frequency band, excepting the initial frequencies. This is very desirable because, we can achieve a very good impedance matching for a big freq. band. Based on the above plot, we select   65 Ohm characteristic impedance and plot this time the Reflection Coef.

<p allign = "center">
     <img src="/Helical/photos/4.png"width = "70%">
</p>

Indeed, as we can see, starting from 85Mhz, the Reflection coef. is already below -10dB and the antenna can work properly in a wide band.





In the below photo, we can see the radiation pattern of the antenna in different frequencies.

<u>f=0.7*fo</u>

<p allign = "center">
     <img src="/Helical/photos/7.png"width = "70%">
</p>

<u>f=fo</u>

<p allign = "center">
     <img src="/Helical/photos/5.png"width = "70%">
</p>

<p allign = "center">
     <img src="/Helical/photos/6.png"width = "70%">
</p>
<u>f=1.3*fo</u>

<p allign = "center">
     <img src="/Helical/photos/8.png"width = "70%">
</p>





We can conclude that, as the frequency increases, the antenna radiates in the desired **axial mode**. (At low frequencies we have a **normal mode** behaviour). The main lobe is desirably at 0 degrees and max gain is  18dBi @fo. Furthermore, **HPBW** decreases, when the frequency ranges around the cenrtal fo.  Also, the **back lobe** is insignificant. One disadvantage is that there are a lot of **side lobes**, which are minor only mainly for our central frequency. Side lobes increase while the frequency increases respectively.





#### Television Antenna



The antenna in the photo below is a well known  TV receiving antenna. 



<p allign = "center">
     <img src="/TV/photos/1.png"width = "70%">
</p>



It consists of four elements (dipoles), in X shape (for more broadband behavior, as simplified form of a discone antenna), which are fed from a central power point (the black box in the image). This point (which is the antenna input), branches in two transmission lines with characteristic impedance  Z1 that supply power to the intermediate elements. Then these elements they are also fed to the ends, via TL of the same characteristic impedance Z1 but with reverse wiring as shown in the image. There is a reflector behind the dipoles, at a distance of λ/4  (in the central operating frequency). The dipoles length is λ/2 (at the central operating frequency). We also consider that the distance between the elements is also λ/2 (although in the image it seems not to be uniform). Let, the angle from x axis for each dipole be 25 degrees.





We would like to design the above antenna with central frequency of fo=60MHz. Choosing Z1=100Ohm, we can see the change of the absolute value of the input impedance Zin for the frequency band [0.3fo - 2fo] in the below plot. 



<p allign = "center">
     <img src="/TV/photos/2.png"width = "70%">
</p>



We choose Z1 = 90 Ohm. It is not the mean Zin in all the above freq. band, but we are more interested in frequencies around 60 Mhz as well as good operation in a wide band. Below, we can see the Reflection Coefficient after this change:

<p allign = "center">
     <img src="/TV/photos/3.png"width = "70%">
</p>



We obsreve that our antenna is quite broadband now. For frequnecies around [52-66] Mhz the Refl. Coef. is below -10 dB and we have only minor reflections. The fractional bandwidth is almost 1.27.



In the below photos, we can see the radiation pattern of the antenna in different frequencies.

<u>f=0.5*fo</u>=30Mhz



Vertical plane:

<p allign = "center">
     <img src="/TV/photos/4.png"width = "50%">
</p>

Horizontal plane:

<p allign = "center">
     <img src="/TV/photos/5.png"width = "50%">
</p>





<u>f=fo</u>=60Mhz

Vertical plane:

<p allign = "center">
     <img src="/TV/photos/6.png"width = "50%">
</p>

Horizontal plane:



<p allign = "center">
     <img src="/TV/photos/7.png"width = "50%">
</p>

3D diargam:

<p allign = "center">
     <img src="/TV/photos/8.png"width = "50%">
</p>





<u>f=1.5*fo</u>=90Mhz

Vertical plane:

<p allign = "center">
     <img src="/Helical/photos/9.png"width = "7500%">
</p>

Horizontal plane:

<p allign = "center">
     <img src="/TV/photos/10.png"width = "50%">
</p>





The HPBW is quite large at 30Mhz. Furthermore. the side lobes and the back lobe (which are only 2) are unimportant @30Mhz and @60Mhz. Max gain @60Mhz is 14dBi at the vertical plane and almost 11.5 @30 and@ 90 Mhz. While the frequency increases, @90Mhz, we observe that a lot of side lobes have been generated and now the main lobe cannot be distinguished. On the other hand, for all these frequencies the maximum gain is at the desired direction.



