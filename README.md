# IconFold
 A series of tools made for folders' icons. It's aimed to manage the icon used.
 
 This toolkit is made **for Windows** platform.

## Installation
 Thers is no need of installation. Just store these things in some place.

 There might be some EXE version. (That is, programs being packed into *.exe* files.)

## Using
 You should run in some terminal, like *cmd.exe* and *Power Shell*.
> You are ought to run in the location of the programs' directory. Otherwise the *res_ico* would be located at somewhere else.
> 
> You may ignore this notice if you are really sure about what you are doing and if it's up to your expectation. 

 Type "/?" as the only parameter to the program to see help message.

 To manage the attributes of any file or folder, you may refer to `attrib` command in Windows.

### General Options

| Option | Desc. |
|--------|-------|
| /?     | Show help message |
| /S     | Do with search. i.e. recursive. |
| /AICO  | Affect all icons  |

`apply_inplace` and `cancel_inplace` only support the following options:

| Option | Desc. |
|--------|-------|
| /?     | Show help message |

### File Desc.

#### Main programs

The undering programs are aimed to manage the icon used in the specific folder. (*Not in place.*)

| Program | Desc. |
|---------|-------|
| apply_ico | Apply prepared resources the specific folder, or even the subfolders. |
| clean_ico | Clean the *.ini* and the corresponding, or all instead, *.ico* of some folders given.  |
| enable_ico | Enable the configuration existed. |
| disable_ico | Disable the configration existed. |

<small>`v1.0.0` operates with `R`(Read-only) attribute. But versions after `v1.0.0` no longer do this.</small>

---

If you're targeting only one folder, the undering programs will be the best choice for you. These programs are the most easy to use ones for this case:

| Program | Desc. |
|---------|-------|
| apply_inplace | Apply prepared resources already stored in the specific folder. (all `*.ico` and `desktop.ini`)|
| cancel_inplace | Cancel the applied resources already stored in the specific folder. (all `*.ico` and `desktop.ini`) |

Store the `desktop.ini` and the corresponding `*.ico` in the specific folder, and then run `apply_inplace` to apply the resources. If you want to cancel the resources, run `cancel_inplace`.


#### Assistant programs

| Program | Desc. |
|---------|-------|
| extract_command | Extract resouces from an already customized folder. |

#### res_ico

Files prepared in *res_ico* and *template_of_res_ico* are **hidden** by default. This is because the files are extracted from a folder customized by the tool of *icofx*.

To show them, change the settings of explorer.

To list the items, execute this command in the cmd (example):
``` shell
dir /A:A res_ico
```

To del the items, execute this command in the cmd (example):
``` shell
del /F /A:A res_ico\*
```

## License

**MIT**
