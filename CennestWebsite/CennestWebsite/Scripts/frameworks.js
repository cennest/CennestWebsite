var Framework = (function () {
    function Framework(id, tiles, projects) {
        this.id = id;
        this.Tiles = tiles;
        this.Projects = projects;
    }
    return Framework;
})();

var Tiles = (function () {
    function Tiles(text, imageCssClass) {
        this.text = text;
        this.imageCssClass = imageCssClass;
    }
    return Tiles;
})();

var FrameworkList = {
    getAllTiles: function () {
        return [
            new Tiles('Multi-platform Book Creation', 'multiplatform-book-creation'),
            new Tiles('Modern Apps Cloud Uploader', 'cloud-uploader'),
            new Tiles('Android Infinite Circular Carousel', 'android-circular-carousel'),
            new Tiles('Multiplatform SMS4 Encryption', 'sms4'),
            new Tiles('Modern Apps Carousel', 'custom-carousel'),
            new Tiles('Azure Machine Learning Online Portal', 'machine-learning'),
            new Tiles('Wellness Management Framework', 'wmf'),
            new Tiles('Android Network Sharing Framework', 'android-network-sharing')
        ];
    },
    getAllFrameworks: function () {
        var tiles = this.getAllTiles();
        var totalFrameworks = tiles.length;
        var frameworkList = [];

        for (i = 0; i < totalFrameworks; i++) {
            frameworkList.push(new Framework(i, tiles[i]));
        }
        return frameworkList;
    }
    }