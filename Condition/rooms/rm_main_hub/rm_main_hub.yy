{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rm_main_hub",
  "creationCodeFile": "",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"door_to_platform","path":"rooms/rm_main_hub/rm_main_hub.yy",},
    {"name":"door_to_shoot","path":"rooms/rm_main_hub/rm_main_hub.yy",},
    {"name":"room_to_puzzle","path":"rooms/rm_main_hub/rm_main_hub.yy",},
    {"name":"room_to_rpg","path":"rooms/rm_main_hub/rm_main_hub.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"door_to_platform","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_interaction_door","path":"objects/obj_interaction_door/obj_interaction_door.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_interaction_door","path":"objects/obj_interaction_door/obj_interaction_door.yy",},"propertyId":{"name":"destination","path":"objects/obj_interaction_door/obj_interaction_door.yy",},"value":"rm_platformer",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":448.0,"y":160.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"door_to_shoot","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_interaction_door","path":"objects/obj_interaction_door/obj_interaction_door.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_interaction_door","path":"objects/obj_interaction_door/obj_interaction_door.yy",},"propertyId":{"name":"destination","path":"objects/obj_interaction_door/obj_interaction_door.yy",},"value":"rm_shoot",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":768.0,"y":160.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"room_to_puzzle","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_interaction_door","path":"objects/obj_interaction_door/obj_interaction_door.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_interaction_door","path":"objects/obj_interaction_door/obj_interaction_door.yy",},"propertyId":{"name":"destination","path":"objects/obj_interaction_door/obj_interaction_door.yy",},"value":"rm_puzzle",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1120.0,"y":160.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"room_to_rpg","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_interaction_door","path":"objects/obj_interaction_door/obj_interaction_door.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_interaction_door","path":"objects/obj_interaction_door/obj_interaction_door.yy",},"propertyId":{"name":"destination","path":"objects/obj_interaction_door/obj_interaction_door.yy",},"value":"rm_rpg",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1440.0,"y":160.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":{"name":"spr_temp_background","path":"sprites/spr_temp_background/spr_temp_background.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "rm_hubs",
    "path": "folders/Rooms/rm_hubs.yy",
  },
  "parentRoom": null,
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 1080,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 1920,
  },
  "sequenceId": null,
  "views": [
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": false,
    "inheritViewSettings": false,
  },
  "volume": 1.0,
}