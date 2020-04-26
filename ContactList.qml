import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.13


ListView {
    id:list
    clip: true
    boundsBehavior: ListViews.StopAtBounds
    ScrollBar.vertical: ScrollBar {}
    delegate: ContactItem {
        text: name
        icon: ava
        selected: list.currentIndex === index
        onLeftClick: {
            list.currentIndex = index
        }
    }
}
