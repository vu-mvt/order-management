//@ui5-bundle ordermanagement/Component-preload.js
sap.ui.require.preload({
	"ordermanagement/Component.js":function(){
sap.ui.define(["sap/ui/core/UIComponent","ordermanagement/model/models"],(e,t)=>{"use strict";return e.extend("ordermanagement.Component",{metadata:{manifest:"json",interfaces:["sap.ui.core.IAsyncContentCreation"]},init(){e.prototype.init.apply(this,arguments);this.setModel(t.createDeviceModel(),"device");this.getRouter().initialize()}})});
},
	"ordermanagement/controller/App.controller.js":function(){
sap.ui.define(["sap/ui/core/mvc/Controller"],e=>{"use strict";return e.extend("ordermanagement.controller.App",{onInit(){}})});
},
	"ordermanagement/controller/Order.controller.js":function(){
sap.ui.define(["sap/ui/core/mvc/Controller"],e=>{"use strict";return e.extend("ordermanagement.controller.Order",{onInit(){}})});
},
	"ordermanagement/i18n/i18n.properties":'# This is the resource bundle for ordermanagement\n\n#Texts for manifest.json\n\n#XTIT: Application name\nappTitle=App Title\n\n#YDES: Application description\nappDescription=An SAP Fiori application.\n#XTIT: Main view title\ntitle=App Title',
	"ordermanagement/manifest.json":'{"_version":"1.65.0","sap.app":{"id":"ordermanagement","type":"application","i18n":"i18n/i18n.properties","applicationVersion":{"version":"0.0.1"},"title":"{{appTitle}}","description":"{{appDescription}}","resources":"resources.json","sourceTemplate":{"id":"@sap/generator-fiori:basic","version":"1.16.3","toolsId":"cdc8ab02-5e75-4b5f-83b9-aaed5705941d"},"dataSources":{"mainService":{"uri":"odata/v4/order-management-service/","type":"OData","settings":{"annotations":[],"odataVersion":"4.0"}}}},"sap.ui":{"technology":"UI5","icons":{"icon":"","favIcon":"","phone":"","phone@2":"","tablet":"","tablet@2":""},"deviceTypes":{"desktop":true,"tablet":true,"phone":true}},"sap.ui5":{"flexEnabled":true,"dependencies":{"minUI5Version":"1.132.1","libs":{"sap.m":{},"sap.ui.core":{}}},"contentDensities":{"compact":true,"cozy":true},"models":{"i18n":{"type":"sap.ui.model.resource.ResourceModel","settings":{"bundleName":"ordermanagement.i18n.i18n"}},"":{"dataSource":"mainService","preload":true,"settings":{"operationMode":"Server","autoExpandSelect":true,"earlyRequests":true}}},"resources":{"css":[{"uri":"css/style.css"}]},"routing":{"config":{"routerClass":"sap.m.routing.Router","controlAggregation":"pages","controlId":"app","transition":"slide","type":"View","viewType":"XML","path":"ordermanagement.view"},"routes":[{"name":"RouteOrder","pattern":":?query:","target":["TargetOrder"]}],"targets":{"TargetOrder":{"id":"Order","name":"Order"}}},"rootView":{"viewName":"ordermanagement.view.App","type":"XML","id":"App"}},"sap.cloud":{"public":true,"service":"order-management"}}',
	"ordermanagement/model/models.js":function(){
sap.ui.define(["sap/ui/model/json/JSONModel","sap/ui/Device"],function(e,n){"use strict";return{createDeviceModel:function(){var i=new e(n);i.setDefaultBindingMode("OneWay");return i}}});
},
	"ordermanagement/view/App.view.xml":'<mvc:View controllerName="ordermanagement.controller.App"\n    displayBlock="true"\n    xmlns:mvc="sap.ui.core.mvc"\n    xmlns="sap.m"><App id="app"></App></mvc:View>',
	"ordermanagement/view/Order.view.xml":'<mvc:View controllerName="ordermanagement.controller.Order"\n    xmlns:mvc="sap.ui.core.mvc"\n    xmlns="sap.m"><Page id="page" title="{i18n>title}"></Page></mvc:View>'
});
//# sourceMappingURL=Component-preload.js.map
