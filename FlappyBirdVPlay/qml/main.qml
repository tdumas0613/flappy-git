import VPlay 2.0
import QtQuick 2.0

GameWindow {
  id: gameWindow

  // you get free licenseKeys as a V-Play customer or in your V-Play Trial
  // with a licenseKey, you get the best development experience:
  //  * No watermark shown
  //  * No license reminder every couple of minutes
  //  * No fading V-Play logo
  // you can generate one from http://v-play.net/license/trial, then enter it below:
  licenseKey: "BBFD69702F7F2C5F7D3C097FE20634D2619CE5454D6946CF2DE9E901158DE93B1E1DCB83838C5505085402C3EE72C06B3609383125687F4D89A456D605E34C4115BD82D2F4B88114122BEB85C5D08AD4873B932C68271B29CB0145890B5E3C7BDEC609283FEDBEE88E730B157A6BF59A617F5C53C4B3D74FB60D3F5081B8069B61677B1FE687747B49813BC7C7565E4CE3CD9FAD43FD2E6AF0953982664D050EBDE86D76C37396084AA9FD64BAA54E89A12752F461B03FA682EB8B7D445CDC538223BE4746FB0B9EC8A8B9CDFA38CFEAD3C06021418A80DA18C6EB05151B655484B9D3A4F890CBCF10EA0B8047293E9A8D89928D6AA8111115CF19E4D6140BF3B4AEEBB9C797959ACCADDE7EC3EF5163157001E3A8E06DA2B0876F9C3E2862F33B5B0C3376C8F6672B5881C6126B289B"

  activeScene: scene

  // the size of the Window can be changed at runtime by pressing Ctrl (or Cmd on Mac) + the number keys 1-8
  // the content of the logical scene size (480x320 for landscape mode by default) gets scaled to the window size based on the scaleMode
  // you can set this size to any resolution you would like your project to start with, most of the times the one of your main target device
  width: 320
  height: 480

  EntityManager {
    id: entityManager
  }

  Scene {
    id: scene

    // the "logical size" - the scene content is auto-scaled to match the GameWindow size
    width: 320
    height: 480

    PhysicsWorld {
      debugDrawVisible: true // set this to false to hide the physics overlay
      gravity.y: -27
    }


    Image{
        id: background
        source: "../assets/background.png"
    }

    Ground {
      anchors.bottom: scene.bottom
    }

    //generates player sprite within scene
    //player defined in player.qml
    Player {
      id: player
      x: 160
      y: 180
    }
    


  }
}

