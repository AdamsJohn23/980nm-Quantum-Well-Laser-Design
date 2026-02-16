# 980nm-Quantum-Well-Laser-Design

Parametric MATLAB model for designing a 980 nm InGaAs/GaAs quantum well laser under lattice-matching constraints.

---

## Overview

This project presents a numerical design approach for a 980 nm quantum well semiconductor laser intended for use in erbium-doped fiber amplifier (EDFA) systems. The objective is to determine a physically realistic material structure that achieves emission at 980 nm while satisfying lattice-matching constraints with a GaAs substrate.

The model incorporates material selection, band offset calculations, quantum confinement effects, and numerical wavelength optimization.

---

## Design Objective

**Target emission wavelength:**

λ = 980nm

**Design constraints:**

- GaAs substrate  
- < 1% lattice mismatch  
- Realistic conduction and valence band offsets  
- Ground-state confinement energies  
- Composition-dependent InGaAs bandgap (including bowing parameter)

---

## Modeling Approach

The design process includes:

- Vegard’s law for lattice constant estimation  
- Composition-dependent InGaAs bandgap modeling with bowing parameter  
- 60/40 band offset partitioning  
- Infinite square well approximation for confinement energies  
- Physical well-depth limiting to approximate finite-well behavior  
- MATLAB parameter sweep over quantum well thickness  

Photon energy is calculated as:

E_ph = E_g + E_e1 + E_h1

Emission wavelength is obtained from:

λ = hc / E_ph


---

## Optimization Result

The parameter sweep identifies the optimal structure:

L = 12 nm

λ = 980.03nm

The optimized well thickness produces emission within 0.03 nm of the 980 nm target.

---

## Final Design Parameters

- **Substrate:** GaAs  
- **Barrier Material:** GaAs  
- **Quantum Well Material:** In₀.₁₄Ga₀.₈₆As  
- **Indium Fraction (x):** 0.14  
- **Quantum Well Thickness:** 12 nm  
- **Well Bandgap (with bowing):** 1.216 eV  
- **Conduction Band Offset (ΔEc):** 0.0642 eV  
- **Valence Band Offset (ΔEv):** 0.0428 eV  

The final structure maintains lattice compatibility while achieving 980 nm emission.

---

## How to Run

1. Open `laser980nm.m` in MATLAB.
2. Run the script.
3. The parameter sweep outputs the well thickness that most closely matches 980 nm emission.

---

