# mp_select_mini
======================
cura 2.1
======================
This is intended to be a repo easing use of the Monoprice Select Mini 3D printer.

I wasn't able to find a cura 2.1 profile online so I modified the Prusa i3 profile and produced this. 
On my system the machine profile goes in /usr/share/cura/resources/machines

I haven't made any changes to the included resources/meshes/mp_select_mini.stl file (it's purely a copy of the Prusa i3 stl.

Putting these files in ~/.local/share/cura/resources... doesn't seem to work.


======================
cura 2.3 and higher
======================
Things have changes since cura 2.3. For this version we just need resources/definitions/mp_select_mini.def.json

### Script

The script will automatically add the machine profile file into the correct folder.
Restart Cura after running the script and `MP Select Mini` should be available in the supported printers list.

* OSX

```
./scripts/macos.sh
```
