# HW2 - Write a program for the rectangular short time Fourier transform

1. Submit the code to ceiba
2. Implement `recSTFT` function
3. Select a input `x`, plot output `y`
4. Use `tic` and `toc` to measure running time
5. Do NOT use direct implement

## Methods

1. Direct Implementation - $\Theta(TFQ)$
    * Advantage: simple, flexible
    * Disadvantage: higher complexity
2. DFT-Based Method
    * Advantage: lower complexity
    * Disadvantage: with some constraints
        1. $\Delta_t \Delta_f = \frac{1}{N}$, $N$ is integer
        2. $N \geq 2Q + 1$
        3. $\Delta_t < \frac{1}{2(\Omega_w + \Omega_x)}$
3. Recursive Method
    * Advantage: lower complexity
    * Disadvantage: most constraints
        1. $\Delta_t \Delta_f = \frac{1}{N}$, $N$ is integer
        2. $N \geq 2Q + 1$
        3. $\Delta_t < \frac{1}{2(\Omega_w + \Omega_x)}$
        4. only suitable for rectangular windows
4. Chrip-Z Transform
    * Advantage: simple, flexible
    * Disadvantage: higher complexity

### DFT-Based Method

```m
function recSTFT(x, t, f, b)

   
end
```