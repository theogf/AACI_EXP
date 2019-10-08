This is the repository for the paper "Automated Augmented Conjugate Inference for Non-Conjugate Gaussian Process Models"

You need [Julia 1.1](https://julialang.org/downloads/oldreleases.html) to run the experiments as well as [GPFlow](https://github.com/GPflow/GPflow) and [Tensorflow](https://www.tensorflow.org/).

To instantiate the folder do the following (this might take a while for the first run)
 - `julia --project=<Path of the folder>`
```
julia>using Pkg; Pkg.instantiate()
```

And given that you installed `gpflow` and `tensorflow` this should be it!

The source code is included in the package `AugmentedGaussianProcesses` (in the folder), while the experiments scripts are contained in `scripts` (for running the experiments) and `src` (for the needed tools of the experiments.
