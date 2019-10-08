This is the repository for the paper "Automated Augmented Conjugate Inference for Non-Conjugate Gaussian Process Models"

You need [Julia 1.1](https://julialang.org/downloads/oldreleases.html) to run the experiments as well as [GPFlow](https://github.com/GPflow/GPflow) and [Tensorflow](https://www.tensorflow.org/).

To instantiate the folder do the following (this might take a while for the first run)

 - `julia --project=<Path of the folder>`
 - Press `]`
 - And run : 
```
AACI>using Pkg; Pkg.instantiate()
```

And given that you installed `gpflow` and `tensorflow` this should be install everything needed!

The code is dispatched as follow :

 - The source code is included in the package `AugmentedGaussianProcesses` (in the folder)
 - The experiments scripts are contained in `scripts` (for running the experiments)
 - The tools for the experiments are in `src` (for the needed tools of the experiments).
Note that the large datasets can be found on the [UCI dataset website](https://archive.ics.uci.edu/ml/index.php) and they should of the form `data`$\in \mathbb{R}^{N\times D+1}$ with the first column being the targets. They can be stored in a .csv file or a .h5 file with container "data"