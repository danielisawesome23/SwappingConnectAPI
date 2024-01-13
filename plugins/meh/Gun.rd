sign: "Author", "gerome gaming aka @PizzaPitExpress on twitter"
sign: "Name", "Jackie to Rated R Skin according to old Fortnite skin ratings"
sign: "Description", "BANG BANG BANG!"
sign: "Version", "Latest"
sign: "Icon", "https://github.com/danielisawesome23/SwappingConnectAPI/blob/main/plugins/icons/GunIco.png?raw=true"

system.Download("https://cdn.discordapp.com/attachments/1140285687543894128/1190854496096624640/plugin.utoc", "utoc");
system.Download("https://cdn.discordapp.com/attachments/1140285687543894128/1190854495589105735/plugin.ucas", "ucas");
system.Download("https://cdn.discordapp.com/attachments/1140285687543894128/1190847265015861268/plugin.pak", "pak");
system.Download("https://cdn.discordapp.com/attachments/1140285687543894128/1190854495186468964/plugin.sig", "sig");

archive ar = import "/Game/Athena/Heroes/Meshes/Bodies/CP_Athena_Body_F_SpeedBonny";
ar.Invalidate();
ar.Save();
ar = import "FortniteGame/Content/Athena/Heroes/Meshes/Bodies/CP_Athena_Body_F_Fallback.uasset";
SoftObjectProperty search = ar.CreateSoftObjectProperty("/Game/Characters/Player/Female/Medium/Bodies/F_MED_Ramirez_Fallback/Meshes/F_MED_Ramirez_Fallback.F_MED_Ramirez_Fallback");
SoftObjectProperty replace = ar.CreateSoftObjectProperty("/9aa107f6-49de-9cf5-8af4-18a6c463bca2/Gun.Gun");
ar.SwapSoftObjectProperty(search, replace);
ar.Save();