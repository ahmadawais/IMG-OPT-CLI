# IMG OPT CLI (`IOC`)
Image Optimization CLI for NGINX or Easy Engine based self hosted WordPress websites. Also known as `IOC`.

## Pre Requisite
You need to install `jpegoptim` and `OptiPNG` for `IOC` to work.
-  `jpegoptim` Install it by running `sudo apt-get install jpegoptim`
-  `OptiPNG` Install it by running `sudo apt-get install optipng`

## Install
Then install `IOC` by running the following command.
```bash
sudo wget -qO ioc https://git.io/vPBEG && sudo chmod +x ./ioc && sudo install ./ioc /usr/local/bin/ioc
```

## Run
Run `IOC` by running the following command.

```bash
ioc
```

## Remove & Update
To update `IOC` you need to remove it first and install it again (which will automatically install the latest version)

To remove run 
```bash
rm -f $(which ioc)
```

And the finally reinstall it.


## Changelog

### v 1.0.0 — 2016-10-09
- NEW: JPG optimization.
- NEW: PNG optimization.
