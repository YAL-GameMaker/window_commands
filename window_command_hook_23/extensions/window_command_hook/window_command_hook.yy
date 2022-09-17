{
  "optionsFile": "options.json",
  "options": [],
  "exportToGame": true,
  "supportedTargets": 113497714299118,
  "extensionVersion": "1.0.0",
  "packageId": "",
  "productId": "",
  "author": "",
  "date": "2019-12-12T01:34:29",
  "license": "Proprietary",
  "description": "",
  "helpfile": "",
  "iosProps": true,
  "tvosProps": false,
  "androidProps": true,
  "installdir": "",
  "files": [
    {"filename":"window_command_hook.dll","origname":"extensions\\window_command_hook.dll","init":"","final":"","kind":1,"uncompress":false,"functions":[
        {"externalName":"window_command_hook_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"window_command_hook_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"window_command_unhook_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"window_command_unhook_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"window_command_check_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"window_command_check_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"window_command_run_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"window_command_run_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"window_command_get_active_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"window_command_get_active_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"window_command_set_active_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"window_command_set_active_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"window_get_background_redraw_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"window_get_background_redraw_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"window_set_background_redraw_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"window_set_background_redraw_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"window_get_topmost_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"window_get_topmost_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"window_set_topmost_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"window_set_topmost_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"window_get_taskbar_button_visible_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"window_get_taskbar_button_visible_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"window_set_taskbar_button_visible_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"window_set_taskbar_button_visible_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"window_set_visible_w_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"window_set_visible_w_raw","tags":[],"resourceType":"GMExtensionFunction",},
      ],"constants":[
        
      ],"ProxyFiles":[
        {"name":"window_command_hook_x64.dll","tags":[],"resourceVersion":"1.0","resourceType":"GMProxyFile","TargetMask":6,},
      ],"copyToTargets":9223372036854775807,"order":[
        {"name":"window_command_hook_raw","path":"extensions/window_command_hook/window_command_hook.yy",},
        {"name":"window_command_unhook_raw","path":"extensions/window_command_hook/window_command_hook.yy",},
        {"name":"window_command_check_raw","path":"extensions/window_command_hook/window_command_hook.yy",},
        {"name":"window_command_run_raw","path":"extensions/window_command_hook/window_command_hook.yy",},
        {"name":"window_command_get_active_raw","path":"extensions/window_command_hook/window_command_hook.yy",},
        {"name":"window_command_set_active_raw","path":"extensions/window_command_hook/window_command_hook.yy",},
        {"name":"window_get_background_redraw_raw","path":"extensions/window_command_hook/window_command_hook.yy",},
        {"name":"window_set_background_redraw_raw","path":"extensions/window_command_hook/window_command_hook.yy",},
        {"name":"window_get_topmost_raw","path":"extensions/window_command_hook/window_command_hook.yy",},
        {"name":"window_set_topmost_raw","path":"extensions/window_command_hook/window_command_hook.yy",},
        {"name":"window_get_taskbar_button_visible_raw","path":"extensions/window_command_hook/window_command_hook.yy",},
        {"name":"window_set_taskbar_button_visible_raw","path":"extensions/window_command_hook/window_command_hook.yy",},
        {"name":"window_set_visible_w_raw","path":"extensions/window_command_hook/window_command_hook.yy",},
      ],"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMExtensionFile",},
    {"filename":"window_command_hook.gml","origname":"extensions\\gml.gml","init":"window_command_hook_init","final":"","kind":2,"uncompress":false,"functions":[
        {"externalName":"window_command_hook_init","kind":11,"help":"","hidden":true,"returnType":2,"argCount":0,"args":[],"resourceVersion":"1.0","name":"window_command_hook_init","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"window_command_hook_prepare_buffer","kind":11,"help":"","hidden":true,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"window_command_hook_prepare_buffer","tags":[],"resourceType":"GMExtensionFunction",},
      ],"constants":[
        {"value":"$F060","hidden":false,"resourceVersion":"1.0","name":"window_command_close","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"$F030","hidden":false,"resourceVersion":"1.0","name":"window_command_maximize","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"$F020","hidden":false,"resourceVersion":"1.0","name":"window_command_minimize","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"$F120","hidden":false,"resourceVersion":"1.0","name":"window_command_restore","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"$F000","hidden":false,"resourceVersion":"1.0","name":"window_command_resize","tags":[],"resourceType":"GMExtensionConstant",},
        {"value":"$F010","hidden":false,"resourceVersion":"1.0","name":"window_command_move","tags":[],"resourceType":"GMExtensionConstant",},
      ],"ProxyFiles":[],"copyToTargets":9223372036854775807,"order":[
        {"name":"window_command_hook_init","path":"extensions/window_command_hook/window_command_hook.yy",},
        {"name":"window_command_hook_prepare_buffer","path":"extensions/window_command_hook/window_command_hook.yy",},
      ],"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMExtensionFile",},
    {"filename":"autogen.gml","origname":"extensions\\autogen.gml","init":"","final":"","kind":2,"uncompress":false,"functions":[
        {"externalName":"window_command_hook","kind":2,"help":"window_command_hook(command:int)->bool","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"window_command_hook","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"window_command_unhook","kind":2,"help":"window_command_unhook(command:int)->bool","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"window_command_unhook","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"window_command_check","kind":2,"help":"window_command_check(command:int)->bool","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"window_command_check","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"window_command_run","kind":2,"help":"window_command_run(wParam:int, lParam:int = 0)->int","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"window_command_run","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"window_command_get_active","kind":2,"help":"window_command_get_active(command:int)->int","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"window_command_get_active","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"window_command_set_active","kind":2,"help":"window_command_set_active(command:int, value:bool)->int","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"window_command_set_active","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"window_get_background_redraw","kind":2,"help":"window_get_background_redraw()->bool","hidden":false,"returnType":2,"argCount":0,"args":[],"resourceVersion":"1.0","name":"window_get_background_redraw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"window_set_background_redraw","kind":2,"help":"window_set_background_redraw(enable:bool)->bool","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"window_set_background_redraw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"window_get_topmost","kind":2,"help":"window_get_topmost()->bool","hidden":false,"returnType":2,"argCount":0,"args":[],"resourceVersion":"1.0","name":"window_get_topmost","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"window_set_topmost","kind":2,"help":"window_set_topmost(enable:bool)->bool","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"window_set_topmost","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"window_get_taskbar_button_visible","kind":2,"help":"window_get_taskbar_button_visible()->bool","hidden":false,"returnType":2,"argCount":0,"args":[],"resourceVersion":"1.0","name":"window_get_taskbar_button_visible","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"window_set_taskbar_button_visible","kind":2,"help":"window_set_taskbar_button_visible(show_button:bool)->bool","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"window_set_taskbar_button_visible","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"window_set_visible_w","kind":2,"help":"window_set_visible_w(visible:bool)->bool","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"window_set_visible_w","tags":[],"resourceType":"GMExtensionFunction",},
      ],"constants":[
        
      ],"ProxyFiles":[],"copyToTargets":-1,"order":[
        {"name":"window_command_hook","path":"extensions/window_command_hook/window_command_hook.yy",},
        {"name":"window_command_unhook","path":"extensions/window_command_hook/window_command_hook.yy",},
        {"name":"window_command_check","path":"extensions/window_command_hook/window_command_hook.yy",},
        {"name":"window_command_run","path":"extensions/window_command_hook/window_command_hook.yy",},
        {"name":"window_command_get_active","path":"extensions/window_command_hook/window_command_hook.yy",},
        {"name":"window_command_set_active","path":"extensions/window_command_hook/window_command_hook.yy",},
        {"name":"window_get_background_redraw","path":"extensions/window_command_hook/window_command_hook.yy",},
        {"name":"window_set_background_redraw","path":"extensions/window_command_hook/window_command_hook.yy",},
        {"name":"window_get_topmost","path":"extensions/window_command_hook/window_command_hook.yy",},
        {"name":"window_set_topmost","path":"extensions/window_command_hook/window_command_hook.yy",},
        {"name":"window_get_taskbar_button_visible","path":"extensions/window_command_hook/window_command_hook.yy",},
        {"name":"window_set_taskbar_button_visible","path":"extensions/window_command_hook/window_command_hook.yy",},
        {"name":"window_set_visible_w","path":"extensions/window_command_hook/window_command_hook.yy",},
      ],"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMExtensionFile",},
  ],
  "classname": "",
  "tvosclassname": "",
  "tvosdelegatename": "",
  "iosdelegatename": "",
  "androidclassname": "",
  "sourcedir": "",
  "androidsourcedir": "",
  "macsourcedir": "",
  "maccompilerflags": "",
  "tvosmaccompilerflags": "",
  "maclinkerflags": "",
  "tvosmaclinkerflags": "",
  "androidcodeinjection": "",
  "ioscodeinjection": "",
  "tvoscodeinjection": "",
  "iosSystemFrameworkEntries": [],
  "tvosSystemFrameworkEntries": [],
  "iosThirdPartyFrameworkEntries": [],
  "tvosThirdPartyFrameworkEntries": [],
  "IncludedResources": [],
  "androidPermissions": [],
  "copyToTargets": 113497714299118,
  "parent": {
    "name": "Extensions",
    "path": "folders/Extensions.yy",
  },
  "resourceVersion": "1.2",
  "name": "window_command_hook",
  "tags": [],
  "resourceType": "GMExtension",
}