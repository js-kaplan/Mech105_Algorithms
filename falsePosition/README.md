# False Position root finding
This folder contains the false postion algorithm. This algorithm uses the false position root finding method to find the root of a function that is given by the user. To use this function, input your function, and the upper and lower guesses. You can also input your desired stopping criteria and max iterations, but if not it will use the defaults designed into the algorithm
## Inputs
* func - the function being evaluated
* x_l- the lower guess
* x_u - the upper guess
* es - the desired relative error (should default to 0.0001%)
* maxit - the maximum number of iterations to use (should default to 200)
* varargin, . . . - any additional parameters used by the function
## Ouputs
* root - the estimated root location
* fx - the function evaluated at the root location
* ea - the approximate relative error (%)
* iter - how many iterations were performed
