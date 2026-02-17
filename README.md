⚗️ Chemical Reaction Equilibrium Case Study

Author: Yug Kikani
Course: Engineering Mathematics / Numerical Methods
Tool Used: MATLAB

🔷 1. Project Overview

This case study models the chemical equilibrium of a reaction system by solving a set of nonlinear algebraic equations representing equilibrium concentrations.

The objective is to:

Formulate equilibrium relations using thermodynamic principles

Develop nonlinear equations from equilibrium constants

Solve the system numerically using MATLAB

Interpret physical and chemical meaning of results

🔷 2. Problem Description

Consider a reversible reaction system:

𝐴
+
𝐵
⇌
𝐶
A+B⇌C

In chemical systems:

Reactants convert into products

The reaction proceeds until equilibrium is reached

At equilibrium, concentrations satisfy the equilibrium constant relation

Because equilibrium expressions involve powers and products of concentrations, the resulting equations are nonlinear.

🔷 3. Mathematical Formulation
3.1 Initial Conditions
[
𝐴
]
0
=
1
 mol/L
[A]
0
	​

=1 mol/L
[
𝐵
]
0
=
1
 mol/L
[B]
0
	​

=1 mol/L
[
𝐶
]
0
=
0
[C]
0
	​

=0

Let:

𝑥
=
extent of reaction
x=extent of reaction

Then equilibrium concentrations become:

[
𝐴
]
=
1
−
𝑥
[A]=1−x
[
𝐵
]
=
1
−
𝑥
[B]=1−x
[
𝐶
]
=
𝑥
[C]=x
3.2 Equilibrium Constant Expression
𝐾
𝑐
=
[
𝐶
]
[
𝐴
]
[
𝐵
]
K
c
	​

=
[A][B]
[C]
	​


Substitute equilibrium concentrations:

𝐾
𝑐
=
𝑥
(
1
−
𝑥
)
2
K
c
	​

=
(1−x)
2
x
	​

3.3 Nonlinear Equation

Rearranging:

𝐾
𝑐
(
1
−
𝑥
)
2
−
𝑥
=
0
K
c
	​

(1−x)
2
−x=0

Expanding:

𝐾
𝑐
(
1
−
2
𝑥
+
𝑥
2
)
−
𝑥
=
0
K
c
	​

(1−2x+x
2
)−x=0
𝐾
𝑐
𝑥
2
−
(
2
𝐾
𝑐
+
1
)
𝑥
+
𝐾
𝑐
=
0
K
c
	​

x
2
−(2K
c
	​

+1)x+K
c
	​

=0

This is a nonlinear algebraic equation in variable 
𝑥
x.

🔷 4. MATLAB Implementation
% Yug Kikani - Chemical Equilibrium Case Study

clc;
clear;

% Given equilibrium constant
Kc = 4;   % Example value

% Define nonlinear function
f = @(x) Kc*(1 - x)^2 - x;

% Initial guess
x0 = 0.5;

% Solve using fsolve
x = fsolve(f, x0);

% Equilibrium concentrations
A = 1 - x;
B = 1 - x;
C = x;

disp('Equilibrium Concentrations:')
disp(['[A] = ', num2str(A)])
disp(['[B] = ', num2str(B)])
disp(['[C] = ', num2str(C)])

🔷 5. Computed Results (For Kc = 4)

Approximate solution:

Species	Equilibrium Concentration (mol/L)
A	0.39
B	0.39
C	0.61

The system shifts toward product formation since 
𝐾
𝑐
>
1
K
c
	​

>1.

🔷 6. Chemical Interpretation

If 
𝐾
𝑐
>
1
K
c
	​

>1, products dominate

If 
𝐾
𝑐
<
1
K
c
	​

<1, reactants dominate

Concentration changes are governed by stoichiometry

The system reaches a stable point where forward rate = backward rate

The nonlinear equation ensures:

Reaction Quotient
=
𝐾
𝑐
Reaction Quotient=K
c
	​

🔷 7. Stability Condition

The equilibrium solution is physically meaningful only if:

0
≤
𝑥
≤
1
0≤x≤1

Additionally, numerical stability depends on:

Proper initial guess

Convergence of nonlinear solver

Real and positive concentration values

🔷 8. Extension to Multi-Reaction System

For multiple reactions:

𝑋
=
𝑋
0
+
𝜈
𝜉
X=X
0
	​

+νξ

Equilibrium condition:

𝐾
𝑖
=
∏
𝐶
𝑗
𝜈
𝑖
𝑗
K
i
	​

=∏C
j
ν
ij
	​

	​


This produces a system of nonlinear equations:

𝐹
(
𝜉
1
,
𝜉
2
,
.
.
.
,
𝜉
𝑛
)
=
0
F(ξ
1
	​

,ξ
2
	​

,...,ξ
n
	​

)=0

Solved using:

Newton–Raphson Method

Jacobian matrix approach

MATLAB fsolve

🔷 9. Learning Outcomes

✔ Application of nonlinear algebra in chemical systems
✔ Formulation of equilibrium constant equations
✔ Use of numerical methods for solving nonlinear systems
✔ Interpretation of thermodynamic equilibrium

🔷 10. Future Enhancements

Extend to multi-reaction systems

Include temperature dependence using:

𝐾
=
𝑒
−
Δ
𝐺
∘
/
𝑅
𝑇
K=e
−ΔG
∘
/RT

Perform sensitivity analysis

Convert MATLAB code to Python (SciPy)

Model gas-phase equilibrium with pressure effects

🔷 11. References

Smith & Van Ness – Introduction to Chemical Engineering Thermodynamics

Fogler – Elements of Chemical Reaction Engineering

MATLAB Documentation – Nonlinear Equation Solvers

📌 Conclusion

This case study demonstrates how chemical equilibrium problems naturally lead to nonlinear algebraic equations. By applying numerical methods, equilibrium concentrations can be determined accurately. The approach highlights the importance of linear algebra and numerical techniques in solving real-world chemical engineering problems.
