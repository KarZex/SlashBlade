execute @a[tag=!startedblade] ~~~ function startedblade
function cooldown
scoreboard players remove @a[scores={sa=1..}] sa 1
execute @a[tag=fly] ~~~ function fly
execute @a[tag=run] ~~~ function run
gamerule commandblockoutput false

execute @a[hasitem={location=slot.weapon.mainhand,item=blade:wood }] ~~~ function blade/wood

execute @a[hasitem={location=slot.weapon.mainhand,item=blade:white }] ~~~ function blade/white

execute @a[hasitem={location=slot.weapon.mainhand,item=blade:slashblade }] ~~~ function blade/slashblade

execute @a[hasitem={location=slot.weapon.mainhand,item=blade:tukumo }] ~~~ function blade/tukumo

execute @a[hasitem={location=slot.weapon.mainhand,item=blade:muramasa }] ~~~ function blade/muramasa

execute @a[hasitem={location=slot.weapon.mainhand,item=blade:bamboo }] ~~~ function blade/bamboo

execute @a[hasitem={location=slot.weapon.mainhand,item=blade:silverbanboo }] ~~~ function blade/silverbanboo

execute @a[hasitem={location=slot.weapon.mainhand,item=blade:tagayasan }] ~~~ function blade/tagayasan

execute @a[hasitem={location=slot.weapon.mainhand,item=blade:sabigatana }] ~~~ function blade/sabigatana

execute @a[hasitem={location=slot.weapon.mainhand,item=blade:doutanuki }] ~~~ function blade/doutanuki

execute @a[hasitem={location=slot.weapon.mainhand,item=blade:weiss }] ~~~ function blade/weiss

execute @a[hasitem={location=slot.weapon.mainhand,item=blade:haze }] ~~~ function blade/haze

execute @a[hasitem={location=slot.weapon.mainhand,item=blade:balkonw }] ~~~ function blade/balkonw

execute @a[hasitem={location=slot.weapon.mainhand,item=blade:balkons }] ~~~ function blade/balkons

execute @a[hasitem={location=slot.weapon.mainhand,item=blade:balkoni }] ~~~ function blade/balkoni

execute @a[hasitem={location=slot.weapon.mainhand,item=blade:balkong }] ~~~ function blade/balkong

execute @a[hasitem={location=slot.weapon.mainhand,item=blade:balkond }] ~~~ function blade/balkond
