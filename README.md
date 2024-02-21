# Minecraft Timer Datapack
This is a simple datapack that adds a timer to Minecraft. You can use the timer to measure time, but also as a stopwatch.

**Why you should use this when I have better ways to measure timer?** - Well, with this data pack you can measure time directly in Minecraft. However, the even more important advantage is that if the server has a low TPS (or the TPS rate is not stable), it is guaranteed that the time shown by the timer is the actual time that an observed process takes when the server is running smoothly. For example, if the TPS rate is 10 (instead of 20) and you observe an operation that takes 5 minutes, your smartphone or any other timer will show more than 5 minutes. But this timer will show you 5 minutes because, like any process in Minecraft, it depends on the tick rate.
## Download
To download the datapack, click on "Code" and then on "Download ZIP" to download this branch.
## Supported versions
The datapack was originally developed for `1.18.2`, but also works in all newer versions. However, the `pack_format` in `pack.mcmeta` may need to be adjusted accordingly. You can find a list of Datapack formats [here](https://minecraft.wiki/w/Pack_format).
## How to install
After downloading the ZIP file, simply drag and drop it into your `datapacks` directory in your world directory.
## How to use
To use the timer in game execute the command `/trigger timer`. Then a menu opens in your chat where you can change the settings of the timer. Please do  not spam the buttons in the chat when you are playing on a server as it will kick you for spamming.
