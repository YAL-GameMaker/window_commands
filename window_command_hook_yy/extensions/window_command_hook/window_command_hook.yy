{
    "id": "7069d239-bb48-4b9a-b915-9e98f71e8dff",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "window_command_hook",
    "IncludedResources": [
        
    ],
    "androidPermissions": [
        
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": 113497714299118,
    "date": "2021-39-14 03:07:18",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "74bc1f95-8106-4d39-99dd-9fa859653027",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 113497714299118,
            "filename": "window_command_hook.dll",
            "final": "window_command_cleanup",
            "functions": [
                {
                    "id": "ba2c7e62-9f86-4bfa-a583-5f89ef4b1235",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        2
                    ],
                    "externalName": "window_command_run_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_run_raw",
                    "returnType": 2
                },
                {
                    "id": "1d138242-7830-43a6-9ed5-6010075a89f8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "window_command_cleanup",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_cleanup",
                    "returnType": 2
                },
                {
                    "id": "001e7d67-b650-48e4-a4f2-8c99a1e14952",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "window_command_init_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_init_raw",
                    "returnType": 2
                },
                {
                    "id": "8fe8335f-c07e-4954-a89d-30fccb28b8b8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "window_command_bind_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_bind_raw",
                    "returnType": 2
                },
                {
                    "id": "4d20a643-6c16-43f2-be02-b86590a328e2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "window_command_hook_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_hook_raw",
                    "returnType": 2
                },
                {
                    "id": "c075da34-e8f6-426a-b200-a1c6d207167e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "window_command_unhook_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_unhook_raw",
                    "returnType": 2
                },
                {
                    "id": "8a73f0fe-a027-4587-80cc-e4b05cbd7f39",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "window_command_get_active_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_get_active_raw",
                    "returnType": 2
                },
                {
                    "id": "d4a4104d-9bbe-4c7e-8bd8-b9ed11832ff2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        2
                    ],
                    "externalName": "window_command_set_active_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_set_active_raw",
                    "returnType": 2
                },
                {
                    "id": "56162fc8-2451-4eea-9901-7dd56e76567c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "window_command_check",
                    "help": "window_command_check(button) : Returns whether the given button was pressed since the last call to this function.",
                    "hidden": false,
                    "kind": 1,
                    "name": "window_command_check",
                    "returnType": 2
                },
                {
                    "id": "24dc741f-5034-4de2-974c-e42124e66b5a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "window_set_topmost_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_set_topmost_raw",
                    "returnType": 2
                },
                {
                    "id": "e972d79a-7f3a-4516-afb4-6bb19675a148",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "window_set_visible_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_set_visible_raw",
                    "returnType": 2
                },
                {
                    "id": "60a68105-3ded-4b4e-be81-68c2ecebfbd6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "window_get_background_redraw",
                    "help": "window_get_background_redraw()",
                    "hidden": false,
                    "kind": 1,
                    "name": "window_get_background_redraw",
                    "returnType": 2
                },
                {
                    "id": "5d170a4c-bae7-4f0f-9f46-f9bfd5b812df",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "window_set_background_redraw_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_set_background_redraw_raw",
                    "returnType": 2
                },
                {
                    "id": "191c1bc5-9f99-48ec-8fee-66952ab90a76",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "window_get_taskbar_button_visible_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_get_taskbar_button_visible_raw",
                    "returnType": 2
                },
                {
                    "id": "32e8f6f1-9dec-49b9-bc15-ebae10983143",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "window_set_taskbar_button_visible_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_set_taskbar_button_visible_raw",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "extensions\\window_command_hook.dll",
            "uncompress": false
        },
        {
            "id": "0ce39a50-f356-43bb-a6c2-903fceb249f7",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "3c9f317a-8c08-4e28-957c-412cc3e62052",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "window_command_close",
                    "hidden": false,
                    "value": "$F060"
                },
                {
                    "id": "41046f48-e8e7-4514-a81d-9d08ebaea8de",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "window_command_maximize",
                    "hidden": false,
                    "value": "$F030"
                },
                {
                    "id": "23f284e9-e3fe-4059-921c-7b3020df4a23",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "window_command_minimize",
                    "hidden": false,
                    "value": "$F020"
                },
                {
                    "id": "c08553ef-92fe-469a-b3b4-7e28921f3fac",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "window_command_restore",
                    "hidden": false,
                    "value": "$F120"
                },
                {
                    "id": "5185c42d-d433-4619-9b06-6c9a65c5a0f1",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "window_command_resize",
                    "hidden": false,
                    "value": "$F000"
                },
                {
                    "id": "2541f8d2-9c67-4cb5-922c-a6b84c9c6032",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "window_command_move",
                    "hidden": false,
                    "value": "$F010"
                }
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "window_command_hook.gml",
            "final": "",
            "functions": [
                {
                    "id": "b8d0899a-71a4-451c-9737-1289bf068eb8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "window_command_init",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_init",
                    "returnType": 2
                },
                {
                    "id": "831d1465-5579-4ebb-a4ef-3c10632e2922",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "window_command_hook",
                    "help": "window_command_hook(index): Hooks the specified command ",
                    "hidden": false,
                    "kind": 2,
                    "name": "window_command_hook",
                    "returnType": 2
                },
                {
                    "id": "6091dbd7-b093-4b1d-88aa-fede28b0e22f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "window_command_unhook",
                    "help": "window_command_unhook(index):",
                    "hidden": false,
                    "kind": 2,
                    "name": "window_command_unhook",
                    "returnType": 2
                },
                {
                    "id": "db905d38-1e6a-4ec6-9c1e-94e0e926bb09",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "window_command_run",
                    "help": "window_command_run(index, param = 0):",
                    "hidden": false,
                    "kind": 2,
                    "name": "window_command_run",
                    "returnType": 2
                },
                {
                    "id": "abbc0948-1d99-457e-ae7a-7de9d3f2b580",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "window_command_get_active",
                    "help": "window_command_get_active(command): Returns whether the given command is currently available.",
                    "hidden": false,
                    "kind": 2,
                    "name": "window_command_get_active",
                    "returnType": 2
                },
                {
                    "id": "a441d720-eb28-4a66-a357-c4b3cf6d03ab",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "window_command_set_active",
                    "help": "window_command_set_active(command, status:bool): Enables\/disables the command. Returns -1 if not possible.",
                    "hidden": false,
                    "kind": 2,
                    "name": "window_command_set_active",
                    "returnType": 2
                },
                {
                    "id": "60a25b04-4730-43f0-97d4-60af16c54c41",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "window_set_topmost",
                    "help": "window_set_topmost(stayontop:bool): Allows to set a window to show on top of the rest like with GM8.",
                    "hidden": false,
                    "kind": 2,
                    "name": "window_set_topmost",
                    "returnType": 2
                },
                {
                    "id": "c115c961-0358-4504-95b0-a481a718c436",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "window_set_visible_w",
                    "help": "window_set_visible_w(visible:bool): Hides or shows the window like the respective function in GM8.",
                    "hidden": false,
                    "kind": 2,
                    "name": "window_set_visible_w",
                    "returnType": 2
                },
                {
                    "id": "7d33cbcb-735b-4463-84f2-dc10e0015db7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "window_set_background_redraw",
                    "help": "window_set_background_redraw(redraw_enabled:bool)",
                    "hidden": false,
                    "kind": 2,
                    "name": "window_set_background_redraw",
                    "returnType": 2
                },
                {
                    "id": "a404f3a1-b903-4eeb-ad3d-62a7b9768053",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "window_set_taskbar_button_visible",
                    "help": "window_set_taskbar_button_visible(enable:bool)",
                    "hidden": false,
                    "kind": 2,
                    "name": "window_set_taskbar_button_visible",
                    "returnType": 2
                },
                {
                    "id": "7224b4a5-7f4d-485f-bf4d-3a8027ab58eb",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "window_get_taskbar_button_visible",
                    "help": "window_get_taskbar_button_visible()->enabled?",
                    "hidden": false,
                    "kind": 2,
                    "name": "window_get_taskbar_button_visible",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 2,
            "order": [
                
            ],
            "origname": "extensions\\gml.gml",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": true,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": "",
    "iosplistinject": "",
    "license": "Proprietary",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "options": null,
    "optionsFile": "options.json",
    "packageID": "",
    "productID": "",
    "sourcedir": "",
    "supportedTargets": 113497714299118,
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosdelegatename": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "1.0.0"
}