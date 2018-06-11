# Example App using Sinatra

![GitHub Release](https://img.shields.io/github/release/osc/ood-example-ps.svg)
[![GitHub License](https://img.shields.io/badge/license-MIT-green.svg)](https://opensource.org/licenses/MIT)

This app is meant as an example Passenger app that runs in an [OnDemand] portal
that uses the [Sinatra] web framework. Feel free to modify it anyway you see
fit.

## Deploy

The directions below require Ruby and Bundler be installed and accessible from
the command line. If using a machine that has [Software Collections] you may
want to run the following command beforehand:

```console
$ source scl_source rh-ruby22 git19
```

Feel free to replace `rh-ruby22` and `git19` with whatever installation your
site uses through Software Collections.

1. To deploy and run this app you will need to first go to your OnDemand
   sandbox directory (if it doesn't exist, then we create it):

   ```console
   $ mkdir -p ~/ondemand/dev
   $ cd ~/ondemand/dev
   ```

2. Then clone down this app and `cd` into it:

   ```console
   $ git clone git@github.com:OSC/ood-example-ps.git ps_app
   Cloning into 'ps_app'...
   $ cd ps_app
   ```

3. Setup the app before you use it:

   ```console
   $ bin/setup

   ...
   ```

4. Now you should be able to access this app from OSC OnDemand at
   https://ondemand.osc.edu/pun/dev/ps_app/

   Note: You may need to replace the domain above with your center's OnDemand
   portal location if not using OSC.

[OnDemand]: http://openondemand.org/
[Sinatra]: http://sinatrarb.com/
[Software Collections]: https://www.softwarecollections.org/en/
