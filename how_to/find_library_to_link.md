
for example luajit, first search for library path with `dpkg`

```
dpkg -L libluajit-5.1-dev 
```
then test out the possible names with `ld -lname --verbose`

```sh
ld -llibluajit-5.1 --verbose
# nope
ld -lluajit-5.1 --verbose
# yes
```
