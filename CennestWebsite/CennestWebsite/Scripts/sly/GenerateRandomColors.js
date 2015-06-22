
//Get Random Color
random = function (i, total) {
    var hex = '0123456789ABCDEF'.split(''),
         color = '#', i;
    for (i = 0; i < total ; i++) {
        color = color + hex[Math.floor(Math.random() * 16)];
    }
    return color;
};  

//Generate dark/light color
//hex — a hex color value such as “#abc” or “#123456″ (the hash is optional)
//lum — the luminosity factor, i.e. -0.1 is 10% darker, 0.2 is 20% lighter, etc.
function colorLuminance(hex, lum) {
    // validate hex string
    hex = String(hex).replace(/[^0-9a-f]/gi, '');
    if (hex.length < 6) {
        hex = hex[0] + hex[0] + hex[1] + hex[1] + hex[2] + hex[2];
    }
    lum = lum || 0;

    // convert to decimal and change luminosity
    var rgb = "#", c, i;
    for (i = 0; i < 3; i++) {
        c = parseInt(hex.substr(i * 2, 2), 16);
        c = Math.round(Math.min(Math.max(0, c + (c * lum)), 255)).toString(16);
        rgb += ("00" + c).substr(c.length);
    }

    return rgb;
}



