//pal_swap_init_system(shd_pal_swapper)
ini_open("saveData.ini")
snickshotgun = ini_read_string("SAGE2019", "shotgunsnick", 0)
dungeonbackup = ini_read_string("SAGE2019", "dungeonbackup", 0)
srank = ini_read_string("SAGE2019", "srank", 0)
snicksrank = ini_read_string("SAGE2019", "snicksrank", 0)
combo10 = ini_read_string("SAGE2019", "combo10", 0)
secret = ini_read_string("SAGE2019", "secret", 0)
knight = ini_read_string("SAGE2019", "knight", 0)
toppin = ini_read_string("SAGE2019", "toppin", 0)
treasure = ini_read_string("SAGE2019", "treasure", 0)
ini_close()
global.SAGEshotgunsnick = snickshotgun
global.SAGEdungeonbackup = dungeonbackup
global.SAGEsrank = srank
global.SAGEcombo10 = combo10
global.SAGEsecret = secret
global.SAGEknight = knight
global.SAGEtoppin = toppin
global.SAGEtreasure = treasure