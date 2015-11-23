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
  licenseKey: "<generate one from http://v-play.net/license/trial>"

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
    
    
    
  }
}

