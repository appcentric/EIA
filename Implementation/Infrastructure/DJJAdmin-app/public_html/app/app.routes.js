"use strict";
var router_1 = require('@angular/router');
var dashboarddemo_1 = require('./demo/view/dashboarddemo');
var sampledemo_1 = require('./demo/view/sampledemo');
var formsdemo_1 = require('./demo/view/formsdemo');
var datademo_1 = require('./demo/view/datademo');
var panelsdemo_1 = require('./demo/view/panelsdemo');
var overlaysdemo_1 = require('./demo/view/overlaysdemo');
var menusdemo_1 = require('./demo/view/menusdemo');
var messagesdemo_1 = require('./demo/view/messagesdemo');
var miscdemo_1 = require('./demo/view/miscdemo');
var emptydemo_1 = require('./demo/view/emptydemo');
var chartsdemo_1 = require('./demo/view/chartsdemo');
var filedemo_1 = require('./demo/view/filedemo');
var utilsdemo_1 = require('./demo/view/utilsdemo');
var documentation_1 = require('./demo/view/documentation');
var home_component_1 = require('./home.component');
var ap_invoices_component_1 = require('./consumers/invoices/ap-invoices.component');
var purchase_orders_component_1 = require('./consumers/purchase-orders/purchase-orders.component');
var shipments_component_1 = require('./consumers/shipments/shipments.component');
var acknowledgements_component_1 = require('./acknowledgements/acknowledgements.component');
var scale_connect_component_1 = require('./scale-connect/scale-connect.component');
var scale_connect_asn_component_1 = require('./scale-connect/scale-connect-asn/scale-connect-asn.component');
var scale_connect_po_component_1 = require('./scale-connect/scale-connect-po/scale-connect-po.component');
var mappings_component_1 = require('./administration/mappings/mappings.component');
var consumers_component_1 = require('./administration/consumers/consumers.component');
var freight_vendors_component_1 = require('./administration/freight-vendors/freight-vendors.component');
var items_component_1 = require('./administration/items/items.component');
var ship_froms_component_1 = require('./administration/ship-froms/ship-froms.component');
var ship_tos_component_1 = require('./administration/ship-tos/ship-tos.component');
var suppliers_component_1 = require('./administration/suppliers/suppliers.component');
exports.routes = [
    { path: '', component: home_component_1.HomeComponent },
    { path: 'dashboard', component: dashboarddemo_1.DashboardDemo },
    { path: 'sample', component: sampledemo_1.SampleDemo },
    { path: 'forms', component: formsdemo_1.FormsDemo },
    { path: 'data', component: datademo_1.DataDemo },
    { path: 'panels', component: panelsdemo_1.PanelsDemo },
    { path: 'overlays', component: overlaysdemo_1.OverlaysDemo },
    { path: 'menus', component: menusdemo_1.MenusDemo },
    { path: 'messages', component: messagesdemo_1.MessagesDemo },
    { path: 'misc', component: miscdemo_1.MiscDemo },
    { path: 'empty', component: emptydemo_1.EmptyDemo },
    { path: 'charts', component: chartsdemo_1.ChartsDemo },
    { path: 'file', component: filedemo_1.FileDemo },
    { path: 'utils', component: utilsdemo_1.UtilsDemo },
    { path: 'documentation', component: documentation_1.Documentation },
    { path: 'home', component: home_component_1.HomeComponent },
    { path: 'apinvoices', component: ap_invoices_component_1.APInvoicesComponent },
    { path: 'purchaseorders', component: purchase_orders_component_1.PurchaseOrdersComponent },
    { path: 'shipments', component: shipments_component_1.ShipmentsComponent },
    { path: 'acknowledgements', component: acknowledgements_component_1.AcknowledgementsComponent },
    { path: 'scaleconnect', component: scale_connect_component_1.ScaleConnectComponent },
    { path: 'scaleconnectpo', component: scale_connect_po_component_1.ScaleConnectPOComponent },
    { path: 'scaleconnectasn', component: scale_connect_asn_component_1.ScaleConnectASNComponent },
    { path: 'mappings', component: mappings_component_1.MappingsComponent },
    { path: 'consumers', component: consumers_component_1.ConsumersComponent },
    { path: 'freightvendors', component: freight_vendors_component_1.FreightVendorsComponent },
    { path: 'items', component: items_component_1.ItemsComponent },
    { path: 'shipfroms', component: ship_froms_component_1.ShipFromsComponent },
    { path: 'shiptos', component: ship_tos_component_1.ShipTosComponent },
    { path: 'suppliers', component: suppliers_component_1.SuppliersComponent },
];
exports.AppRoutes = router_1.RouterModule.forRoot(exports.routes);
//# sourceMappingURL=app.routes.js.map