---
title: 'Sherlock: A transit false-positive detector'
layout: single
excerpt: 'Making the number of transit candidates manageable'
permalink: /portfolio/tres/sherlock.html
categories:
    - tres
date: 2022-11-19
last_modified_at: 2023-05-17 02:39:00
tags:
    - astronomy
    - tres
---

We assembled a telescope named Sherlock
([original webpage](https://web.archive.org/web/20080620204421/http://solas.dnsalias.org:8080/~ftod/tres/sherlock.html))
that was dedicated to examining transit candidates from
[Sleuth](https://proinsias.github.io/portfolio/tres/sleuth.html)
and other telescopes in the
[TrES](https://proinsias.github.io/portfolio/tres.html)
network, as well as a number of other transit surveys that monitor stars brighter than V=13.
Highly automated and observing in custom RGB filters with a better angular resolution (1.7 arcsec/pixel)
than Sleuth (10 arcsec/pixel),
Sherlock was able to reject most of the contaminants from these transit surveys.
In so doing, Sherlock greatly reduced the rate of false positives,
bringing the number of transit candidates to a manageable level.

Here we discuss an example of how blends of eclipsing binaries can be separated from transiting planets.
PSST identified a star in Auriga undergoing 2.5% deep eclipses with a period of 2.4 days
([figure](/assets/images/psstAur.png)).
Examination of the
[Digitized Sky Survey](http://archive.stsci.edu/dss/)
images ([figure](/assets/images/psstblend.png))
revealed two sources within the PSF of the PSST instrument.
Photometry of the field during a subsequent eclipse with a 14-inch telescope
on the rooftop of the [Caltech Astronomy](http://www.astro.caltech.edu/)
building demonstrated that the fainter star was undergoing deep (14%) eclipses.
When the light from both stars was summed within a single photometric aperture,
the transit shape and depth as observed by the PSST was reproduced.

Measurement of the color dependence of the transit depth should remove both grazing incidence binaries
(due to the effect of limb-darkening on the eclipse depth),
and blends of eclipsing binaries
(due the change in relative brightness of the blended and occulted stars as a function of color).
In contrast to this, planetary transits should be nearly constant with color.
Furthermore, the increased angular resolution will separate the light from physically unassociated blended stars,
and subsequent photometry will reveal which object is undergoing eclipses.
Sherlock was not able to reject all sources of false detection.
Central eclipses by very dim stellar objects (notably M dwarfs) will not show detectable variation with color.
In addition, blends wherein the occulted and blending star have the same color will not be distinguished.
Even with these exceptions, however,
Sherlock was expected to reduce greatly the ratio of false positives from these surveys.
Multi-epoch spectra of viable candidates were gathered with high-resolution spectrographs on 1-2 m class telescopes,
which ruled out the presence of stellar or brown dwarf companions.
Surviving candidates were then monitored with Keck HIRES to determine the radial velocity orbit induced
by the planetary companion.

The section below lists the specifications for Sherlock.
The system was located in the same clamshell enclosure as Sleuth,
our primary transit search instrument.
Weather decisions were made by the on-site 200-inch telescope night assistant,
with additional protection provided by a weather station capable of closing the clamshell roof.
Sherlock was completely automated, calculating future times of eclipse for all active candidates,
and observing the highest priority object in eclipse each night.
The automated nature of the system is an advantage
over comparatively labor- and resource-intensive multi-epoch spectroscopic follow-up.
In addition, this dome hosted the all-sky camera
[Snoop](https://proinsias.github.io/portfolio/tres/snoop.html),
which provides weather monitoring for the observatory.

## Sherlock Specifications

-   Meade LX200GPS 10'' f/6.3 Schmidt-Cassegrain Telescope
-   Apogee 1024 x 1024 pixel back-illuminated CCD camera
-   Filter wheel containing custom RGB and clear filters
-   SBIG STV Autoguider
-   Automated operation controlled by Linux workstation
-   Cloud cover monitored by Snoop, the Palomar All-Sky Camera
