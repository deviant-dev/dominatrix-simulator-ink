# dominatrix-simulator-ink
Test scripts for the Dominatrix Simulator project.
https://deviant-dev.github.io/dominatrix-simulator-ink/

We've also created a [Dominatrix Simulator Guide to Ink Script](https://docs.google.com/document/d/1hWddHZ3mTyXBCPsuGvLKkHIfs3nWnv5_6_z25pyO0-c/edit#heading=h.9ljemjlylgw) to show what each `/command` does in the script.

## DomSim Script Override

To override DomSim's ink scripts:
1. Make changes to the `_game.ink` file and it's included files using [Inky](https://github.com/deviant-dev/dominatrix-simulator-ink/tree/master/Inky)
2. Export the `_game.json` file using `File > Export to JSON...`
3. Save your exported JSON file to: `%USERPROFILE%\AppData\LocalLow\deviant_tech\Dominatrix Simulator\_game.json`<br/>
(You should see a file named `override instructions.txt` in that folder.)

NOTE: You must remove this file to run the game as usual. You may also need to remove saves or start a new profile to run your script from the beginning.
