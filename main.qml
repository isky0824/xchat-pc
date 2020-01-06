import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    // 基础属性
    visible: true                       // 启动时是否可见
    width: 640                          // 宽度
    height: 480                         // 高度
    title: qsTr("Hello World")          // title
    color: "#FFFFFF"
    //background: "images/background.png"

    // 鼠标区域
    MouseArea {
        anchors.fill: parent
        onClicked: {                    // 点击事件
            Qt.quit();
        }
    }
    // Text框
    Text {
        text: qsTr("Hello World2")      // 内容
        anchors.centerIn: parent        // 位置
    }

    Image { source: "Images/bg.jpg" }

    Rectangle {
        //id: root
        color: "#F0F0F0"
        width: 200
        height: 200

        // 发送给 Qt Widgets 的信号
        /*signal qmlSignal
        // 从 Qt Widgets 接收到的信号
        signal cSignal

        Text {
            id: myText
            text: "Click me"
            font.pointSize: 14
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: qmlSignal()
        }

        // 信号处理程序（处理从 Qt Widgets 接收到的信号）
        onCSignal: {
            root.color = "blue"
            myText.text = "Call the qml signal handler"
        }*/
    }
}
