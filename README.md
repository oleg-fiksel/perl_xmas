# perl_xmas.pl
Short perl script for drawing christmas tree in different size depending on the month and day.

I use this script as a greeting in my .zshrc in the christmas time.

![Demo](demo.gif)

# Usage

## Simple

The script will run from 01.12 until 31.01 and the tree will get the full size on 25.12.

```
./perl_xmas.pl
```

## bash/zsh

* Install git
  * `apt install git`
* Download the script
  * `mkdir ~/opt; git clone https://github.com/oleg-fiksel/perl_xmas.git ~/opt/perl_xmas`
  * If you don't want to install git on this machine you can just put the script in `/opt/perl_xmas`
    * `mkdir -p ~/opt/perl_xmas; curl -o ~/opt/perl_xmas/perl_xmas.pl "https://raw.githubusercontent.com/oleg-fiksel/perl_xmas/master/perl_xmas.pl" && chmod +x ~/opt/perl_xmas/perl_xmas.pl`
* Add the following to the end of your `~/.bashrc` or `~/.zshrc`
```
month=`date +%m`
if [[ $month = "12" || $month == "01" ]]; then
  ~/opt/perl_xmas/perl_xmas.pl
fi
```

## Demo

This will animate the 2 month of the tree 20 seconds.

```
./demo.sh
```