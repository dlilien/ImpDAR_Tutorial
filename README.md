# ImpDAR Tutorial
For U-Maine, November 2021

## Beforehand
-Install ImpDAR (version 1.1.4 or newer)

-Clone (or download this repository)

-Get the jif2021.h5 file into the folder of this repository (probably ImpDAR_Tutorial)

-Some examples will use GDAL. Plotting uses cartopy (and owslib). These are not critical, but nice to have. I find SeisUnix gets you the best migration, but we will not get into installation here.

## Roadmap
### Intro to ImpDAR
See presentation [ImpDAR_intro.pdf](./ImpDAR_intro.pdf).

### Command line processing
Take a look at [process_bsi.sh](./process_bsi.sh).

### Programmatic processing
See example at [process_bsi.ipynb](./process_bsi.ipynb).

### Picking
Choose a filename, then run `imppick filename`.

### Plotting
See the last bit of [process_bsi.ipynb](./process_bsi.ipynb).

### Missing features
Hopefully we have some time to discuss what features you might find useful to add to ImpDAR. If not, do not hesitate to email me later.

## Further resources
Checkout the [readthedocs](https://impdar.readthedocs.io/en/latest) for other tutorials and full API documentation.

There is also some documentation at the main github [page](https://github.com/dlilien/ImpDAR).

PLEASE report any bugs/issues you have so that I can get them fixed. I only use a small subset of ImpDAR with any regularity, so you may find problems that I do not know about! Send me an email, or even better use the [Github issue tracker](https://github.com/dlilien/ImpDAR/issues).
