/* Copyright 2015 Esri
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */


import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.4

import ArcGIS.AppFramework 1.0
import ArcGIS.AppFramework.Controls 1.0

App {
    id: app
    width: 400
    height: 640

    // Scale factor
    property double scaleFactor: AppFramework.displayScaleFactor

    // App
    property color themeColor: "green"
    property alias fontSourceSansProReg : fontSourceSansProReg
    FontLoader {
        id: fontSourceSansProReg
        source: app.folder.fileUrl("assets/fonts/SourceSansPro-Regular.ttf")
    }

    // Map layers and field info for attribute display
    property string parksFeatureService: "http://services1.arcgis.com/e7dVfn25KpfE6dDd/arcgis/rest/services/WashingtonDCMap/FeatureServer/2"
    property string schoolsFeatureService: "http://services1.arcgis.com/e7dVfn25KpfE6dDd/arcgis/rest/services/WashingtonDCMap/FeatureServer/0"
    property string postOfficeFeatureService: "http://services1.arcgis.com/e7dVfn25KpfE6dDd/arcgis/rest/services/WashingtonDCMap/FeatureServer/1"


    StackView {
        id: stackView
        width: app.width
        height: app.height
        initialItem: mapPage
    }

    Component {
        id: mapPage

        MapPage {

        }
    }
}

