import VPlay 2.0
import QtQuick 2.0

EntityBase {
  id: player
  entityType: "player"




  SpriteSequenceVPlay {
    id: boy
    rotation: collider.linearVelocity.y/10
    anchors.centerIn: parent

    SpriteVPlay {
      frameCount: 2
      frameRate: 5
      frameWidth: 95
      frameHeight: 95
      source: "../assets/player.png"
    }


  }

  CircleCollider {
     id: collider
     radius: 13
   }



  function push() {
    collider.body.linearVelocity = Qt.point(0,0)
    var localForwardVector = collider.body.toWorldVector(Qt.point(0,-280));
    collider.body.applyLinearImpulse(localForwardVector, collider.body.getWorldCenter());
  }
}
