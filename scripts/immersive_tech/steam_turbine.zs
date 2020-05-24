import mods.immersivetechnology.SteamTurbine;

var steam = <liquid:steam>;
var fresh_water = <liquid:fresh_water>;

// recipes removal
SteamTurbine.removeFuel(steam);

// recipe addition

// distilled water to steam
SteamTurbine.addFuel(steam*500, fresh_water * 1000, 3);