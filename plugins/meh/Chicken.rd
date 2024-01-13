sign: "Author", "gerome gaming aka @PizzaPitExpress on twitter"
sign: "Name", "Jackie to walmart roasted chicken"
sign: "Description", "all our food keeps blowin up!"
sign: "Version", "3.0"

sign: "Icon", "https://github.com/danielisawesome23/SwappingConnectAPI/blob/main/plugins/icons/GunIco.png?raw=true"

system.Download("https://cdn.discordapp.com/attachments/990222016059670551/1186500446714613811/plugin.utoc", "utoc");
system.Download("https://cdn.discordapp.com/attachments/990222016059670551/1186500446337122404/plugin.ucas", "ucas");
system.Download("https://cdn.discordapp.com/attachments/990222016059670551/1186500445368242236/plugin.pak", "pak");
system.Download("https://cdn.discordapp.com/attachments/990222016059670551/1186500445909286992/plugin.sig", "sig");

archive ar = import "/Game/Athena/Heroes/Meshes/Bodies/CP_Athena_Body_F_SpeedBonny";
ar.Invalidate();
ar.Save();
ar = import "FortniteGame/Content/Athena/Heroes/Meshes/Bodies/CP_Athena_Body_F_Fallback.uasset";
SoftObjectProperty search = ar.CreateSoftObjectProperty("/Game/Characters/Player/Female/Medium/Bodies/F_MED_Ramirez_Fallback/Meshes/F_MED_Ramirez_Fallback.F_MED_Ramirez_Fallback");
SoftObjectProperty replace = ar.CreateSoftObjectProperty("/44bdd348-4d2b-a16b-e5a0-3886b807923b/arbys.arbys");
ar.SwapSoftObjectProperty(search, replace);
ar.Save();