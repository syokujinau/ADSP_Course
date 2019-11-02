# HW2 - Write a program for the rectangular short time Fourier transform

<!-- 

<img src="https://render.githubusercontent.com/render/math?math=\LARGE XXX" />

%2B
-->

1. Submit the code to ceiba
2. Implement `recSTFT` function
3. Select a input `x`, plot output `y`
4. Use `tic` and `toc` to measure running time
5. Do NOT use direct implement

## Methods

1. Direct Implementation - <img src="https://render.githubusercontent.com/render/math?math=\large \Theta(TFQ)" />
    * Advantage: simple, flexible
    * Disadvantage: higher complexity
2. DFT-Based Method - <img src="https://render.githubusercontent.com/render/math?math=\large\Theta(TNlogN)" />
    * Advantage: lower complexity
    * Disadvantage: with some constraints
        1. <img src="https://render.githubusercontent.com/render/math?math=\large \Delta_t \Delta_f = \frac{1}{N}" />, <img src="https://render.githubusercontent.com/render/math?math=\large N" /> is integer
        2. <img src="https://render.githubusercontent.com/render/math?math=\large N \geq 2Q + 1" />
        3. <img src="https://render.githubusercontent.com/render/math?math=\large \Delta_t < \frac{1}{2(\Omega_w %2B \Omega_x)}" />
3. Recursive Method - $\Theta(TF)$
    * Advantage: lower complexity
    * Disadvantage: most constraints
        1. <img src="https://render.githubusercontent.com/render/math?math=\large \Delta_t \Delta_f = \frac{1}{N}" />, <img src="https://render.githubusercontent.com/render/math?math=\large N" /> is integer
        2. <img src="https://render.githubusercontent.com/render/math?math=\large N \geq 2Q %2B 1" />
        3. <img src="https://render.githubusercontent.com/render/math?math=\large \Delta_t < \frac{1}{2(\Omega_{w} %2B \Omega_{x})}" />
        4. only suitable for rectangular windows
4. Chrip-Z Transform - <img src="https://render.githubusercontent.com/render/math?math=\large \Theta(TNlogN)" />
    * Advantage: simple, flexible
    * Disadvantage: higher complexity

### DFT-Based Method

```m
function recSTFT(x, t, f, b)

   
end
```


###### tags: `DSP`