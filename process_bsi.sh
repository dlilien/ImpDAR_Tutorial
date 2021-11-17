#! /bin/sh
#
# process_bsi.sh
# Copyright (C) 2021 dlilien <dlilien@hozideh>
#
# Distributed under terms of the MIT license.
#


# Begin by loading the data. You will need to delete the target reference if no GDAL.
impdar load bsi jif2021.h5 --nans interp

mkdir unprocessed
mv jif2021line_0_raw.mat unprocessed/

# There are to separate acquisitions here it seems
# Split the file when the depth recording changes
impproc hcrop right tnum 8548 jif2021line_1_raw.mat -o unprocessed/jif2021line_1_raw.mat
impproc hcrop left tnum 8548 jif2021line_1_raw.mat -o unprocessed/jif2021line_2_raw.mat

mkdir bandpassed
impproc vbp 12 60 unprocessed/*.mat -o bandpassed/

mkdir zeroed
impproc crop top snum 50 bandpassed/jif2021line_0*.mat -o zeroed/jif2021line_0.mat
impproc crop top snum 45 bandpassed/jif2021line_1*.mat -o zeroed/jif2021line_1.mat
impproc crop top snum 94 bandpassed/jif2021line_2*.mat -o zeroed/jif2021line_2.mat
# And get rid of the extra bottom bit
impproc crop bottom snum 1055 zeroed/jif2021line_1.mat
mv zeroed/jif2021line_1_cropped.mat zeroed/jif2021line_1.mat

mkdir hfilted
impproc ahfilt 50 zeroed/*.mat -o hfilted/

mkdir constant_spaced
impproc interp -o constant_spaced/ 0.2 --minmove 0.05 hfilted/*.mat
