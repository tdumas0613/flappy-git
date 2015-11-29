import VPlay 2.0
import QtQuick 2.0

EntityBase {
  id: player
  entityType: "player"

  SpriteSequenceVPlay {
    id: boy
    anchors.centerIn: parent

    SpriteVPlay {
      frameCount: 2
      frameRate: 5
      frameWidth: 95
      frameHeight: 95
      source: "../assets/player.png"
    }

    CircleCollider {
       id: collider
       radius: 13
     }

  }
}
