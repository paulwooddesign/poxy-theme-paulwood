'use strict'

angular.module('poxy') .controller 'MainCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]

    $scope.search_box = false;

    $scope.film_and_video_products = [
      {
        item: "led"
        url: "/products/lightbanks/film-video/tech-led/"
        name: "LED"
        description: "Chimera TECH LED Lightbanks create soft, beautiful light. The innovation at Chimera continues with applications for the newest LED, Plasma and Remote Phosphor technologies. Efficient diffused talent-friendly light."
      }
      {
        item: "video-pro"
        url: "/products/lightbanks/film-video/video-pro-film-video/"
        name: "Video PRO"
        description: "VIDEO PRO LIGHTBANKS ARE THE INDUSTRY STANDARD IN LIGHT MODIFIERS. VERSATILE AND LIGHTWEIGHT, THEY ARE PERFECT WHEN YOU NEED CONTROLLED SOFT LIGHTING ON SMALL SETS. USEFUL AS A SEPARATION LIGHT OR SMALL FILL. THESE LIGHTBANKS ARE PRIMARILY USED WITH SINGLE BROAD-BEAMED, OPEN-FACED INSTRUMENTS. LOW HEAT VERSIONS ARE NOW AVAILABLE FOR LEDS."
      }
      {
        item: "octaplus"
        url: "/products/lightbanks/film-video/octaplus-film-video/"
        name: "OctaPlus"
        description: "Chimera’s unique OctaPlus Lightbank design delivers big, bold, beautiful light. Everyone loves using Chimera’s OctaPlus Lightbanks—especially the patented OctaPlus 57! It’s an amazing 7 ft. octagonally-shaped Lightbank that converts to a 5 ft. version. It’s like getting two Lightbanks in one! High heat versions available."
      }
      {
        item: "daylite"
        url: "/products/lightbanks/film-video/daylite-film-video/"
        name: "Daylite"
        description: "CHIMERA’S DAYLITE SERIES BANKS STAND UP TO HIGH TEMPERATURES AND LONG DAYS. THEY HAVE A DEEP DESIGN THAT’S IDEAL FOR USE WITH A RANGE OF NARROW BEAM FRESNEL LIGHTS UP TO 24K WATTS."
      }
      {
        item: "quartz"
        url: "/products/lightbanks/film-video/quartz-film-video/"
        name: "Quartz"
        description: "Quartz Lightbanks are designed to handle the high temperatures of HMI, PAR and tungsten open-faced lights from 1K-18K. This family of Lightbanks is the work horse of the motion picture industry, a rental house favorite."
      }
      {
        item: "lanterns"
        url: "/products/lightbanks/film-video/lanterns/"
        name: "Lanterns"
        description: "CHIMERA’S LINE OF LANTERNS ARE A GREAT SOLUTION FOR OMNI-DIRECTIONAL SOFT LIGHTING. UNLIKE TRADITIONAL CHINA BALLS, THESE ARE CONTROLLABLE AND REUSABLE."
      }
      {
        item: "barger"
        url: "/products/lightbanks/film-video/barger-film-video/"
        name: "Barger"
        description: "A soft slice of light designed specifically for the Barger 4 and 6 LiteStrip. No Speed Ring needed as it is built in."
      }
      {
        item: "micro-2-led"
        url: "/products/lightbanks/film-video/micro/"
        name: "Micro 2 LED"
        description: "The Micro 2 LED folding Lightbank takes hard point source LED light and delivers soft light that is easy on the eyes of your talent. Collapsible and no poles or rings required, the Micro 2 series Lightbanks fit a variety of common on Camera LEDs and are perfect for videographers on the move. For traditional on camera sources, Chimera still offers the original Micro series."
      }
    ]

    # Strobe Products
    $scope.strobe_products = [
      {
        item: "super-pro"
        url: "/products/lightbanks/strobe/super-pro/"
        name: "Super PRO"
        description: ""
      }
      {
        item: "pro-ii"
        url: "/products/lightbanks/strobe/pro-ii/"
        name: "PRO II"
        description: ""
      }
      {
        item: "octaplus"
        url: "/products/lightbanks/strobe/octaplus/"
        name: "OctaPlus"
        description: ""
      }
      {
        item: "octa-beauty-dishes"
        url: "/products/lightbanks/strobe/octa-beauty-dishes/"
        name: "Octa Beauty Dishes"
        description: ""
      }
      {
        item: "mini-maxi"
        url: "/products/lightbanks/strobe/minimaxi/"
        name: "Mini / Maxi"
        description: ""
      }
    ]

    # Overhead
    $scope.overhead_products = [
      {
        name: "F2X"
        item: "f2x"
        url: "/products/lightbanks/overhead/f2x/"
        description: 'The portable F2X Lightbank can be used in the studio or on location. Constructed of super strong, thick walled aircraft-grade aluminum tubing. Color-coded frame sections for quick assembly, saving time and money. No tools required for assembly. Complete with 60" duffles for ease of portability.'
      }
      {
        name: "Modular F2"
        item: "modular-f2"
        url: "/products/lightbanks/overhead/modular-f2/"
        description: 'The Modular F2 Lightbank is perfect for permanent studio installations. The welded modular frame is constructed on 6061-T6 aluminum tubing. Modular sections measure 3 ft. x 10 ft. long, for fast, efficient set-up. The Modular F2 requires freight transportation.'
      }
    ]


    # Speed Rings
    $scope.speed_ring_products = [
      {
        item: "speed-ring-strobe"
        url: "/products/speed-rings/strobe-speed-rings/"
        name: "Strobe"
        description: "There are four categories of strobe Speed Rings, which are the cornerstone of the Chimera System: Standard, constructed from a lightweight composite. Aluminum, which are durable. Quick Release, for easy setup and take down of Lightbanks. OctaPlus, designed for eight-sided Lightbanks."
      }
      {
        item: "speed-ring-dedicated"
        url: "/products/speed-rings/dedicated/"
        name: "Dedicated"
        description: "Dedicated Speed Rings are uniquely designed to fit a specific lighting fixture."
      }
      {
        item: "speed-ring-adjustable"
        url: "/products/speed-rings/adjustable/"
        name: "Adjustable"
        description: "Adjustable Speed Rings make it easy to work with a wide variety of diameters. Have clearly marked, positive locking system for precise fit - non rotating."
      }
      {
        item: "speed-ring-circular"
        url: "/products/speed-rings/circular/"
        name: "Circular"
        description: "Circular Speed Rings fit perfectly into the accessory barn door holders of most lights. Full rotation makes it easy to position for the ideal lighting effect."
      }
      {
        item: "speed-ring-modular"
        url: "/products/speed-rings/modular/"
        name: "Modular"
        description: "Modular Speed Rings are aluminum circular rings for Video Pro and Daylight Junior Lightbanks. Using accessory blocks, the modular ring will accept the Chimera OctaPlus Lightbanks."
      }
      {
        item: "speed-ring-on-Camera-strobe"
        url: "/products/speed-rings/on-camera-strobe/"
        name: "On-Camera Strobe"
        description: "On-Camera Strobe Speed Rings allow you to use small 'speedlite' type flashes with your Chimera Lightbanks."
      }
    ]

    # Kits
    $scope.kit_products = [
      {
        item: "triolet-light-kits"
        url: "/products/lighting-kits/triolet-light-kits/"
        name: "Triolet Light Kits"
        description: 'Our "TL" Kits contain everything you need to create perfect light right out of the box. They include the Triolet light, a Small Video PRO Plus 1 Lightbank, a pro-quality stand and Chimera Stand Adapter, our 44" ballistic cloth duffle, and either a 500 or 1000-watt lamp (240 volt versions also available).'
      }
      {
        item: "video-combi-kits"
        url: "/products/lighting-kits/video-combi-kits/"
        name: "Video Combi Kits"
        description: 'Combi Lightbank Kits offer light shaping and contrast control by providing three Lightbanks of different sizes and shapes. The Video Combi Kit now contains an XS, Small and Small Strip Video PRO Plus.'
      }
      {
        name: "Still Combi Kits"
        item: "still-combi-kits"
        url: "/products/lighting-kits/still-combi-kits/"
        description: 'Combi Lightbank Kits offer light shaping and contrast control by providing three Lightbanks of different sizes and shapes -- a Medium, Small and Small Strip Super PRO Lightbank. Choice of silver or white interior.'
      }
      {
        name: "OB2 Pro Kits"
        item: "ob2-pro-kits"
        url: "/products/lighting-kits/ob2-pro-kits/"
        description: 'Your Octa 2 Beauty Dish with Versi-Octa Speed Ring, the OB2 PRO Kit, gives you beautiful light on location as well as in your studio. Now a traditional beauty dish that folds up and weighs less than a pound! Mount your camera flash on the adjustable Versi Bracket and you are ready to create beautiful head shots and portraits.'
      }
      {
        name: "Studio Kits"
        item: "studio-kits"
        url: "/products/lighting-kits/studio-kits/"
        description: "Chimera's Studio System Kits offer versatile solutions to your studio and location lighting situations. Multiple solutions in a single kit!"
      }
      {
        name: "Lantern Boom Kits"
        item: "lantern-boom-kits"
        url: "/products/lighting-kits/lantern-boom-kits/"
        description: 'The Chimera Lantern Boom Kit is the perfect lighting tool for lighting multiple people in an interview or opening up an area with that natural lighting effect. Includes Chimera Small Standard Lantern, Manfrotto Boom stand and counter weight.'
      }
      {
        name: "Panel &amp; Frame Kits"
        item: "panel-frame-kits"
        url: "/products/lighting-kits/panel-frame-kits/"
        description: 'Chimera’s Professional Panel Kits provide a time-tested method of lighting through and reflecting off of Chimera’s top quality fabrics.  The ample variety of fabric combinations and frame sizes will exceed many of your lighting needs.  All panel kits come complete in a tough ballistic cloth duffle for convenient carrying.'
      }
      {
        name: "Window Pattern Kits"
        item: "window-patern-kits"
        url: "/products/lighting-kits/window-patern-kits/"
        description: 'Window Pattern Kits are available in three convenient configurations.  They contain a frame, a window pattern holder and six window patterns, plus a clear pattern for logos, etc.  Window patterns can also be purchased separately.'
      }
    ]

    # Lights
    $scope.light_products = [
      {
        name: "Mogul Socket Ring"
        item: "mogul-socket-ring"
        url: "/products/chimera-lights/mogul-socket-ring/"
        description: 'The #9830 Socket Ring light is our original light for use with Video PRO Lightbanks and Lanterns. The Speed Ring is part of this light. The #9840 is configured with a European Plug for use with 240 V. Uses mogul style lamps.'
      }
      {
        name: "Triolet"
        item: "triolet"
        url: "/products/chimera-lights/triolet/"
        description: "The Triolet is the perfect light source for Chimera Lightbanks, Lanterns, F2 and OctaPlus Banks. Chimera's Triolet has a mogul base that can accomodate screw-in adapters, giving you the flexibility to use three different style lamps - mogul and medium base lamps up to 1000 watts, and symmetrical 2-pin lamps up to 750 watts (protective glass cover is required with 2-pin lamps)."
      }
      {
        name: "Birdcage"
        item: "birdcage"
        url: "/products/chimera-lights/birdcage/"
        description: 'The Chimera Birdcage Lantern has emerged as a unique small light source. Stand it up, hang it, lay it down, or mount it onto a light stand with the clever Dual Axis Chimera Stand Adapter #3865. You get precision light placement where you want it. Use with or without the adjustable silver/black skirt.'
      }
    ]

    # Light Modifiers
    $scope.light_modifier_products = [
      {
        name: "Grids &amp; Egg Crates"
        item: "grids-egg-crates"
        url: "/products/accessories/light-modifiers/grids-egg-crates/"
        description: "CHIMERA's Soft Fabric Egg Crate Grids have revolutionized your light control options for location film and video crews and photographers.  Collapsible, portable, and extremely lightweight, fabric grids have no supporting frame of their own."
      }
      {
        name: "Stretch Frames&reg;"
        item: "stretch-frames"
        url: "/products/accessories/light-modifiers/stretch-frames/"
        description: "These are perfect for keeping cells square and preventing Lighttools® Soft Eggcrate® Fabric Grids from sagging. They're especially effective when working with medium and large Lightbanks. Five sizes available."
      }
      {
        name: "Reflector Fabrics"
        item: "reflector-fabrics"
        url: "/products/accessories/light-modifiers/reflector-fabrics/"
        description: 'Panel fabrics attach instantly to panel frames with durable elastic corners.'
      }
      {
        name: "Barn Doors"
        item: "barn-doors"
        url: "/products/accessories/light-modifiers/barn-doors/"
        description: 'When you want to control spill light, CHIMERA Barn Doors are a convenient way to do it. They are attached to the Lightbank by VelcroTM strips.'
      }
      {
        name: "Scrims"
        item: "scrims"
        url: "/products/accessories/light-modifiers/scrims/"
        description: 'A scrim is used to diminish the harshness and/or intensity of a light source.'
      }
    ]

    # Grip
    $scope.grip_products = [
      {
        name: "Ring Brackets"
        item: "ring-brackets"
        url: "/products/accessories/grip/brackets/ring-brackets/"
        description: 'The Chimera Triolet Speed Ring Brackets (Set of 4) allows you to mount 1 to 4 Triolet lights in a single lighbank, allowing you to have greater control over light output by turning individual lights on or off for a wide range of different outputs.'
      }
      {
        name: "Brackets"
        item: "brackets"
        url: "/products/accessories/grip/brackets/"
        description: 'Unique solutions for attaching light shaping tools'
      }
      {
        name: "Stand Adapters"
        item: "stand-adapters"
        url: "/products/accessories/grip/stand-adapters/"
        description: 'Gives you confidence in mounting larger banks and lights'
      }
      {
        name: "Frame Adapters"
        item: "frame-adapters"
        url: "/products/accessories/grip/frame-adapters/"
        description: 'Your high-heat OctaPlus 57 Lightbank can be mounted to a variety of 1 to 5K lights with the help of the Quartz-Daylight Octa Brackets from Chimera. These brackets that come in a set of 4, attach to the Quartz / Daylight Circular Speed Rings ranging in sizes of 9.0 to 13.5” (22.8 to 34.2cm) or frames of 13.5” (34.2cm) and 15.5” (39.3cm).'
      }
      {
        name: "Grip Heads"
        item: "grip-heads"
        url: "/products/accessories/grip/grip-heads/"
        description: 'Strength and sturdy quality to hold and position your light shaping tools just right for that perfect look.'
      }
    ]

    # Parts
    $scope.part_products = [
      {
        name: "Front Diffusers"
        item: "front-diffusers"
        url: "/products/accessories/replacement-parts/front-diffusers/"
        description: 'Front screens come in Full, 1/2 and 1/4. These screens reduce and diffuse light by two, one and one half stops respectively. Also available are LED Lens Screens and Color Correction Screens. These tools help you do more with your light!'
      }
      {
        name: "Internal Baffles"
        item: "internal-baffles"
        url: "/products/accessories/replacement-parts/internal-baffles/"
        description: 'The Chimera Internal Baffle provides additional softening of the light emitted from the fixture the Lightbank it is mounted on. It clips into place inside the Lightbank.'
      }
      {
        name: "Poles"
        item: "poles"
        url: "/products/accessories/replacement-parts/poles/"
        description: 'Replacement poles for all Lightbanks available.'
      }
      {
        name: "Pole Assemblies"
        item: "pole-assemblies"
        url: "/products/accessories/replacement-parts/pole-assemblies/"
        description: 'Replacement Pole Assemblies for Lanterns'
      }
      {
        name: "Aluminum Tubes"
        item: "aluminum-tubes"
        url: "/products/accessories/replacement-parts/aluminum-tubes/"
        description: 'replacement aluminum poles'
      }
      {
        name: "Wires"
        item: "wires"
        url: "/products/accessories/replacement-parts/wires/"
        description: 'Replacement Wires'
      }
      {
        name: "Skirts"
        item: "skirts"
        url: "/products/accessories/replacement-parts/skirts/"
        description: 'Replacement skirts'
      }
      {
        name: "Vent Covers"
        item: "vent-covers"
        url: "/products/accessories/replacement-parts/vent-covers/"
        description: 'Replacement vent covers'
      }
      {
        name: "Bounce Disks"
        item: "bounce-disks"
        url: "/products/accessories/replacement-parts/bounce-disks/"
        description: 'Replacement Bounce disk'
      }
    ]


    $scope.mouseOverProduct = (strobe_product) ->
      $scope.msg = strobe_product.item
      $scope.description = strobe_product.description
      return

    $scope.clickProduct = (strobe_product) ->
      $scope.msg = "Clicked: " + strobe_product.item
      return

        # set the default bootswatch name
    $scope.gutter_x_size = "x24"

    # create the list of bootswatches
    $scope.gutter_x_sizes = [
      {
        name: "x36"
        size: "x36"
      }
      {
        name: "x30"
        size: "x30"
      }
      {
        name: "x28"
        size: "x28"
      }
      {
        name: "x24"
        size: "x24"
      }
      {
        name: "x18"
        size: "x18"
      }
      {
        name: "x16"
        size: "x16"
      }
      {
        name: "x14"
        size: "x14"
      }
    ]

    # set the default bootswatch name
    $scope.gutter_y_size = "y24"

    # create the list of bootswatches
    $scope.gutter_y_sizes = [
      {
        name: "y36"
        size: "y36"
      }
      {
        name: "y30"
        size: "y30"
      }
      {
        name: "y28"
        size: "y28"
      }
      {
        name: "y24"
        size: "y24"
      }
      {
        name: "y18"
        size: "y18"
      }
      {
        name: "y16"
        size: "y16"
      }
      {
        name: "y14"
        size: "y14"
      }
    ]

    # set the default layout
    $scope.layout = "light"

    # create the list of layout files
    $scope.layouts = [
      {
        name: "Light"
        url: "light"
      }
      {
        name: "Dark"
        url: "dark"
      }
      {
        name: "Flat"
        url: "flat"
      }
    ]
    return
