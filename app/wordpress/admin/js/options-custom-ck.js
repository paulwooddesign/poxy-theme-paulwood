/**
 * Custom scripts needed for the colorpicker, image button selectors,
 * and navigation tabs.
 */jQuery(document).ready(function(e){function t(){e(".group").hide();var t="";typeof localStorage!="undefined"&&(t=localStorage.getItem("active_tab"));if(t!=""&&e(t).length){e(t).fadeIn();e(t+"-tab").addClass("nav-tab-active")}else{e(".group:first").fadeIn();e(".nav-tab-wrapper a:first").addClass("nav-tab-active")}e(".nav-tab-wrapper a").click(function(t){t.preventDefault();e(".nav-tab-wrapper a").removeClass("nav-tab-active");e(this).addClass("nav-tab-active").blur();var n=e(this).attr("href");typeof localStorage!="undefined"&&localStorage.setItem("active_tab",e(this).attr("href"));e(".group").hide();e(n).fadeIn();e(".wp-editor-wrap").each(function(){var t=e(this).find("iframe");t.height()<30&&t.css({height:"auto"})})})}e(".of-color").wpColorPicker();e(".of-radio-img-img").click(function(){e(this).parent().parent().find(".of-radio-img-img").removeClass("of-radio-img-selected");e(this).addClass("of-radio-img-selected")});e(".of-radio-img-label").hide();e(".of-radio-img-img").show();e(".of-radio-img-radio").hide();e(".nav-tab-wrapper").length>0&&t()});