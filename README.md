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

And then finally reinstall it.


## Changelog

### v 1.0.0 — 2016-10-09
- NEW: JPG optimization.
- NEW: PNG optimization.

---

### 🙌 [THEDEVCOUPLE PARTNERS](https://TheDevCouple.com/partners)

This open source project is maintained by the help of awesome businesses listed below. What? [Read more about it →](https://TheDevCouple.com/partners)

<table width='100%'>
	<tr>
		<td width='500'><a target='_blank' href='https://kinsta.com/?kaid=WMDAKYHJLNJX&utm_source=WPCouple&utm_medium=Partner'><img src='https://on.ahmda.ws/73cedc/c' /></a></td>
		<td width='500'><a target='_blank' href='https://ahmda.ws/USES_WPE?utm_source=WPCouple&utm_medium=Partner'><img src='https://on.ahmda.ws/ff40fe/c' /></a></td>
	</tr>
	<tr>
		<td width='500'><a target='_blank' href='https://mythemeshop.com/?utm_source=WPCouple&utm_medium=Partner'><img src='https://on.ahmda.ws/3166d9/c' /></a></td>
		<td width='500'><a target='_blank' href='https://ipapi.co/?utm_source=WPCouple&utm_medium=Partner'><img src='https://d2ddoduugvun08.cloudfront.net/items/1R190r2U0p3N3L0U0b2u/ip-api.png'/></a></td>
	</tr>
</table>
<br>
