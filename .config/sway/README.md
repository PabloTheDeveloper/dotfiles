# Where Things are:
* machine/ - stores all per machine configs. Use this when a setting can vary
  across machines.
* scripts/ - contains scripts to execute within sway, which are machine
  agnostic. This only contains the wofi.sh script atm. More to come if I can
  find generalizable script configs.
* peripheral - contain all external / internal input / output device
  configurations. There's a machine specific import at the end.
* bindings - contains all bindings that apply via sway. There's a machine 
  specific import at the end.
* config - this is the entry point for all other applications.
* appearance - contains settings for configuring the theme and color of the sway
  instance.
# Add Executable script
Steps:
2. Run `chmod +x
   ~/.config/sway/<script_path>`
3. Reference in sway config via something like `bindsym $mod+d exec ~/.config/sway/<script_path>`
