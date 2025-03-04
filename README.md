# Numerical Methods Course Project

This repository contains MATLAB implementations developed as part of a Numerical Methods course, focusing on various numerical techniques essential for solving mathematical problems in science and engineering.

## Course Overview

The Numerical Methods course introduces mathematical techniques used to model and solve problems that are often intractable analytically. Topics typically covered include:

- **Root Finding**: Techniques for solving nonlinear equations.
- **Numerical Integration and Differentiation**: Approximating integrals and derivatives.
- **Interpolation and Approximation**: Constructing new data points within the range of known data points.
- **Numerical Linear Algebra**: Solving systems of linear equations and eigenvalue problems.
- **Numerical Solutions to Differential Equations**: Approaches for both ordinary and partial differential equations.

These methods are foundational in computational mathematics and are widely applied in engineering, physics, finance, and other fields.

## Repository Contents

The repository includes the following MATLAB files:

- **Mn_pro1.m**: Solves a problem using the Regula Falsi method (function `f_rfalsi.m`).
- **Mn_pro2.m**: Addresses numerical integration using Trapezoidal (`f_trapI.m`) and Simpson's (`f_SimpI.m`) rules.
- **Mn_pro3.m**: Solves a system of linear equations using the Gauss-Seidel iterative method (`f_gauss_seidl.m`).

## Numerical Methods Implemented

1. **Regula Falsi Method** (`f_rfalsi.m`):
   - A root-finding algorithm that combines the bisection method and the secant method to find the root of a function.

2. **Trapezoidal Rule** (`f_trapI.m`):
   - A technique for approximating the definite integral of a function by dividing the area under the curve into trapezoids and summing their areas.

3. **Simpson's Rule** (`f_SimpI.m`):
   - A method for numerical integration that approximates the integrand by a quadratic polynomial.

4. **Gauss-Seidel Method** (`f_gauss_seidl.m`):
   - An iterative technique for solving a square system of linear equations, useful for large systems where direct methods are computationally expensive.

## How to Use

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/SecCodeSmith/Pro_MN_06_06_2022.git
   cd Pro_MN_06_06_2022
   ```

2. **Run MATLAB Scripts**:
   - Open MATLAB.
   - Navigate to the repository directory.
   - Run the desired script, e.g., `Mn_pro1.m`, to execute the corresponding numerical method.

## Prerequisites

- **MATLAB**: Ensure that MATLAB is installed on your system to run the scripts.
