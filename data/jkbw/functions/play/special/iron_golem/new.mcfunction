# 判定玩家
scoreboard players operation @s[team=jkbw.red] jkbw.Player.ID = @p[scores={jkbw.Player.State=2,jkbw.Player.UseIrongolem=1..},gamemode=adventure,team=jkbw.red] jkbw.Player.ID
scoreboard players operation @s[team=jkbw.blue] jkbw.Player.ID = @p[scores={jkbw.Player.State=2,jkbw.Player.UseIrongolem=1..},gamemode=adventure,team=jkbw.blue] jkbw.Player.ID
scoreboard players operation @s[team=jkbw.green] jkbw.Player.ID = @p[scores={jkbw.Player.State=2,jkbw.Player.UseIrongolem=1..},gamemode=adventure,team=jkbw.green] jkbw.Player.ID
scoreboard players operation @s[team=jkbw.yellow] jkbw.Player.ID = @p[scores={jkbw.Player.State=2,jkbw.Player.UseIrongolem=1..},gamemode=adventure,team=jkbw.yellow] jkbw.Player.ID
scoreboard players operation @s[team=jkbw.cyan] jkbw.Player.ID = @p[scores={jkbw.Player.State=2,jkbw.Player.UseIrongolem=1..},gamemode=adventure,team=jkbw.cyan] jkbw.Player.ID
scoreboard players operation @s[team=jkbw.white] jkbw.Player.ID = @p[scores={jkbw.Player.State=2,jkbw.Player.UseIrongolem=1..},gamemode=adventure,team=jkbw.white] jkbw.Player.ID
scoreboard players operation @s[team=jkbw.pink] jkbw.Player.ID = @p[scores={jkbw.Player.State=2,jkbw.Player.UseIrongolem=1..},gamemode=adventure,team=jkbw.pink] jkbw.Player.ID
scoreboard players operation @s[team=jkbw.gray] jkbw.Player.ID = @p[scores={jkbw.Player.State=2,jkbw.Player.UseIrongolem=1..},gamemode=adventure,team=jkbw.gray] jkbw.Player.ID

# 伤害与生存时间
attribute @s generic.attack_damage base set 4
scoreboard players set @s jkbw.Entity.Time 240