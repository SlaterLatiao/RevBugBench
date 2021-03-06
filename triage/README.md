# RevBugBench Triage
## Prerequisites 
The triage scripts are developed with python 3.9.0. The [requirements.txt](/triage/requirements.txt) specifies packages used by the scripts. To install them, run with

`pip install -r requirements.txt`

## Config
Before running the scripts, a [config file](/triage/config.ini) needs to be set according to the comment on each config.
## Command-line Options
The main script to run the triage is [run_experiment.py](/triage/run_experiment.py).
### --experiment / -e
This option specifies the FuzzBench experiment name. This is a required option.
### --fuzzers / -f
This option specifies the fuzzers for triage. Default to all 5 supported fuzzers: AFL++, AFL, Eclipser, FairFuzz and Libfuzzer. This is a required option.
### --programs / -p
This option specifies the programs for triage. Default to all [10 programs](/benchmarks). Note that a progam can appear in a FuzzBench experiment at most once. This is a required option.
### --untar / -u
This option extracts the coverage binary and fuzz corpus from fuzzbench experimental results. It needs to be run with or before the following 3 options.
### --crash
This option runs the coverage binary on each crashing test case and stores the results on an intermediate file. It needs to be run with or before `-c crash` option.
### --coverage
This option runs the coverage binary on each test case in the queue and stores the results on an intermediate file. It needs to be run with or before `-c coverage` option.
### --count / -c
This option counts FixReverter coverage and/or crashes, based on the sub-option of _crashes_ and _coverage_.

