# IMG-OPT-CLI (WIP) 
Image Optimization CLI for NGINX or Easy Engine based self hosted WordPress websites. 

## Pre Requisite
You need to install `jpegoptim` and `OptiPNG` for IMG-OPT-CLI to work.
-  `jpegoptim` Install it by running `sudo apt-get install jpegoptim`
-  `OptiPNG` Install it by running `sudo apt-get install optipng`

## Install
Then install IMG-OPT-CLI by running the following command.

## Run
Run IMG-OPT-CLI by running the following command.

```bash
imgoptcli
```

## Remove & Update
To update IMG-OPT-CLI you need to remove it first and install it again (which will automatically install the latest version)

To remove run 
```bash
rm -f $(which imgoptcli)
```

And the finally reinstall it.


## Changelog

### v 1.0.0 — 2016-10-09
- NEW: JPG optimization.
- NEW: PNG optimization.
