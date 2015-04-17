# CoderDojoDC Tilde Pi

This project generates a simple Linux server that can be loaded onto a
Raspberry Pi. The server will be used to teach CoderDojoDC members about
the Unix commandline and let them post simple web pages.

## Building

If you're using Ubuntu, you may need to install some packages to make Buildroot
work. This should be sufficient:

    $ sudo apt-get install git g++ libncurses5-dev bc
    $ sudo apt-get install libc6:i386 libstdc++6:i386 zlib1g:i386 gcc-multilib # 64-bit Linux

After that, clone this project and run `make`:

    $ make tilde_pi_defconfig
    $ make

It can take some time to download and build everything so you may need to be
patient. The build products can be found in `buildroot/output/images`.

## Installing

Insert an SDCard on your PC and note where it appears under Linux. If the SDCard
is automounted, make sure to `umount` everything that was mounted. Then run the
following, but replace `/dev/sdc` with the path to the SDCard.

    $ sudo dd if=buildroot/output/images/tilde_pi.img of=/dev/sdc bs=1M

Insert the SDCard into a Raspberry Pi Model B, and watch it boot over the serial
port. Log in as...
