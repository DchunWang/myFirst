import QtQuick 2.2

Rectangle {
    id: relay;

    signal messageReceived(string person, string notice);

    Component.onCompleted: {
        relay.messageReceived.connect(sendToPost);
        relay.messageReceived.connect(sendToTelegraph);
        relay.messageReceived.connect(sendToEmail);
        relay.messageReceived("Tom", "Happy Birthday");
    }

    function sendToPost(person, notice) {
        console.log("sending to post: " + person + "," + notice);
    }

    function sendToTelegraph(person, notice) {
        console.log("sending to telegraph:" + person + "," + notice);
    }

    function sendToEmail(person, notice) {
        console.log("sending to email: " + person + "," + notice);
    }
}
