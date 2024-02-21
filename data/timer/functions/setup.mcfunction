
scoreboard objectives add timerdata dummy
scoreboard objectives add statmrdta dummy
scoreboard objectives add ticktosecond dummy

scoreboard objectives add timer.value dummy
scoreboard objectives add timer.mode dummy
scoreboard objectives add timer.settingspage dummy

scoreboard objectives add timermode trigger
scoreboard objectives add timer trigger

function timer:tick
tellraw @a ["",{"text":"---------------------------------------------","bold":true,"strikethrough":true,"color":"aqua"},{"text":"\n","bold":true},{"text":" Timer Datapack","bold":true,"color":"green"},{"text":" - v1.0.0","color":"dark_gray"},{"text":"\n"},{"text":" Created by MrJulsen\n ","color":"gray"},{"text":"View Source Code on ","color":"dark_gray"},{"text":"GitHub","underlined":true,"color":"blue","clickEvent":{"action":"open_url","value":"https://github.com/MisterJulsen/Timer-Datapack"}},{"text":".","color":"gray"},{"text":"\n"},{"text":"---------------------------------------------","bold":true,"strikethrough":true,"color":"aqua"}]
