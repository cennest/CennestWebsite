var $main = $('#main'), $header = $('.header');
var $frame = $main.find('.frame');
var $slidee = $frame.find('.slidee');
var $sly;

var slyHorizontalOptions = {
    horizontal: 1,
    itemNav: 'centered',
    smart: 1,
    activateOn: 'click',
    mouseDragging: 1,
    touchDragging: 1,
    releaseSwing: 1,
    scrollBy: 1,
    speed: 300,
    elasticBounds: 1,
    dragHandle: 1,
    dynamicHandle: 1,
    clickBar: 1,
};

var FrameworkView = {
    init: function () {
        $frameworkList = FrameworkList.getAllFrameworks();
        $frameworkList.forEach(function (framework) {
            $slidee.append('<li id="' + framework.id + '">' +
                        '<div class="tile-container">'+
                        '<div class="tile-button">'+
                            '<div class="text-container">' +
                                    '<div class="top-text">' + framework.Tiles.text + '</div>' +
                                '</div>' +
                                '<div class="icon-container ' + framework.Tiles.imageCssClass + '">' +
                                '</div>' +
                        '</div>'+
                    '</div>'+
                    '</li>');
        });
        if ($sly) {
            this.destroySly();
        }
        $sly = new Sly($frame, slyHorizontalOptions).init();
        $header.removeClass('gridheader');
        $main.removeClass('grid');
        $main.animate().addClass('horizontalgrid');
        $frame.fadeIn();
        $sly.reload();
        
        this.bindEvent(window, 'resize', this.handleResizeEvent);
        $slidee.on('click', 'li', this.handleListClick);
    },
        destroySly: function () {
            if ($sly) {
                $sly.destroy();
                $sly = null;
            }
        },
bindEvent: function (element, evt, fn) {
    if (element && evt) {
        if (typeof evt === 'function') {
            fn = evt;
            evt = 'click';
        }
        jQuery(element).bind(evt, fn);
    } else {
        //log
    }
},
unbindEvent: function (element, evt, fn) {
    if (element && evt) {
        if (typeof evt === 'function') {
            fn = evt;
            evt = 'click';
        }
        jQuery(element).unbind(evt, fn);
    } else {
        //log
    }
},
handleResizeEvent: function (e) {
    if ($sly) {
        $sly.reload();
    }
},
handleListClick: function () {
    console.log('project framework of ' + this.id);
}

}

var HighlightTab = {
    init: function () {
        var $frameworkLi = $("#liFramework");
        $frameworkLi.addClass("active");
    }
}


