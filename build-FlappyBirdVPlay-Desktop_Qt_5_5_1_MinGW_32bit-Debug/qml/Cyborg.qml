import VPlay 2.0
import QtQuick 2.0

EntityBase {
  id: cyborg
  entityType: "cyborg"




  SpriteSequenceVPlay {
    id: enemy
    rotation: collider.linearVelocity.y/10
    anchors.centerIn: parent

    SpriteVPlay {
      frameCount: 2
      frameRate: 5
      frameWidth: 95
      frameHeight: 95
      source: "../assets/cyborg.png"
    }


  }

}
