"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
//imported modules from angular
var core_1 = require('@angular/core');
var forms_1 = require('@angular/forms');
var http_1 = require('@angular/http');
var platform_browser_1 = require('@angular/platform-browser');
var common_1 = require('@angular/common');
var app_routes_1 = require('./app.routes');
//import all components. These need be declared in the declarations array
var home_component_1 = require('./home.component');
var consumer_mappings_component_1 = require('./administration/consumers/consumer-mappings.component');
var consumer_entities_component_1 = require('./administration/consumers/consumer-entities.component');
var consumers_component_1 = require('./administration/consumers/consumers.component');
var freight_vendor_mappings_component_1 = require('./administration/freight-vendors/freight-vendor-mappings.component');
var freight_vendor_entities_component_1 = require('./administration/freight-vendors/freight-vendor-entities.component');
var freight_vendors_component_1 = require('./administration/freight-vendors/freight-vendors.component');
var item_mappings_component_1 = require('./administration/items/item-mappings.component');
var item_entities_component_1 = require('./administration/items/item-entities.component');
var items_component_1 = require('./administration/items/items.component');
var ship_from_mappings_component_1 = require('./administration/ship-froms/ship-from-mappings.component');
var ship_from_entities_component_1 = require('./administration/ship-froms/ship-from-entities.component');
var ship_froms_component_1 = require('./administration/ship-froms/ship-froms.component');
var ship_to_mappings_component_1 = require('./administration/ship-tos/ship-to-mappings.component');
var ship_to_entities_component_1 = require('./administration/ship-tos/ship-to-entities.component');
var ship_tos_component_1 = require('./administration/ship-tos/ship-tos.component');
var supplier_mappings_component_1 = require('./administration/suppliers/supplier-mappings.component');
var supplier_entities_component_1 = require('./administration/suppliers/supplier-entities.component');
var suppliers_component_1 = require('./administration/suppliers/suppliers.component');
var ap_invoices_component_1 = require('./consumers/invoices/ap-invoices.component');
var purchase_orders_component_1 = require('./consumers/purchase-orders/purchase-orders.component');
var shipments_component_1 = require('./consumers/shipments/shipments.component');
var acknowledgements_component_1 = require('./acknowledgements/acknowledgements.component');
var scale_connect_component_1 = require('./scale-connect/scale-connect.component');
var scale_connect_asn_component_1 = require('./scale-connect/scale-connect-asn/scale-connect-asn.component');
var scale_connect_po_component_1 = require('./scale-connect/scale-connect-po/scale-connect-po.component');
var mappings_component_1 = require('./administration/mappings/mappings.component');
var spinner_component_1 = require('./shared/spinner.component');
//import all primeng modules
var primeng_1 = require('primeng/primeng');
var primeng_2 = require('primeng/primeng');
var primeng_3 = require('primeng/primeng');
var primeng_4 = require('primeng/primeng');
var primeng_5 = require('primeng/primeng');
var primeng_6 = require('primeng/primeng');
var primeng_7 = require('primeng/primeng');
var primeng_8 = require('primeng/primeng');
var primeng_9 = require('primeng/primeng');
var primeng_10 = require('primeng/primeng');
var primeng_11 = require('primeng/primeng');
var primeng_12 = require('primeng/primeng');
var primeng_13 = require('primeng/primeng');
var primeng_14 = require('primeng/primeng');
var primeng_15 = require('primeng/primeng');
var primeng_16 = require('primeng/primeng');
var primeng_17 = require('primeng/primeng');
var primeng_18 = require('primeng/primeng');
var primeng_19 = require('primeng/primeng');
var primeng_20 = require('primeng/primeng');
var primeng_21 = require('primeng/primeng');
var primeng_22 = require('primeng/primeng');
var primeng_23 = require('primeng/primeng');
var primeng_24 = require('primeng/primeng');
var primeng_25 = require('primeng/primeng');
var primeng_26 = require('primeng/primeng');
var primeng_27 = require('primeng/primeng');
var primeng_28 = require('primeng/primeng');
var primeng_29 = require('primeng/primeng');
var primeng_30 = require('primeng/primeng');
var primeng_31 = require('primeng/primeng');
var primeng_32 = require('primeng/primeng');
var primeng_33 = require('primeng/primeng');
var primeng_34 = require('primeng/primeng');
var primeng_35 = require('primeng/primeng');
var primeng_36 = require('primeng/primeng');
var primeng_37 = require('primeng/primeng');
var primeng_38 = require('primeng/primeng');
var primeng_39 = require('primeng/primeng');
var primeng_40 = require('primeng/primeng');
var primeng_41 = require('primeng/primeng');
var primeng_42 = require('primeng/primeng');
var primeng_43 = require('primeng/primeng');
var primeng_44 = require('primeng/primeng');
var primeng_45 = require('primeng/primeng');
var primeng_46 = require('primeng/primeng');
var primeng_47 = require('primeng/primeng');
var primeng_48 = require('primeng/primeng');
var primeng_49 = require('primeng/primeng');
var primeng_50 = require('primeng/primeng');
var primeng_51 = require('primeng/primeng');
var primeng_52 = require('primeng/primeng');
var primeng_53 = require('primeng/primeng');
var primeng_54 = require('primeng/primeng');
var primeng_55 = require('primeng/primeng');
var primeng_56 = require('primeng/primeng');
var primeng_57 = require('primeng/primeng');
var primeng_58 = require('primeng/primeng');
var primeng_59 = require('primeng/primeng');
var primeng_60 = require('primeng/primeng');
var primeng_61 = require('primeng/primeng');
var application_1 = require('./application');
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
//import services and declare them in providers
var DJJAPI_service_1 = require('./services/DJJAPI.service');
var carservice_1 = require('./demo/service/carservice');
var countryservice_1 = require('./demo/service/countryservice');
var eventservice_1 = require('./demo/service/eventservice');
var nodeservice_1 = require('./demo/service/nodeservice');
var AppModule = (function () {
    function AppModule() {
    }
    AppModule = __decorate([
        core_1.NgModule({
            imports: [
                platform_browser_1.BrowserModule,
                forms_1.FormsModule,
                forms_1.ReactiveFormsModule,
                app_routes_1.AppRoutes,
                http_1.HttpModule,
                primeng_1.AccordionModule,
                primeng_2.AutoCompleteModule,
                primeng_3.BreadcrumbModule,
                primeng_4.ButtonModule,
                primeng_5.CalendarModule,
                primeng_6.CarouselModule,
                primeng_7.ChartModule,
                primeng_8.CheckboxModule,
                primeng_9.CodeHighlighterModule,
                primeng_10.ConfirmDialogModule,
                primeng_11.SharedModule,
                primeng_12.ContextMenuModule,
                primeng_13.DataGridModule,
                primeng_14.DataListModule,
                primeng_15.DataScrollerModule,
                primeng_16.DataTableModule,
                primeng_17.DialogModule,
                primeng_18.DragDropModule,
                primeng_19.DropdownModule,
                primeng_20.EditorModule,
                primeng_21.FieldsetModule,
                primeng_22.FileUploadModule,
                primeng_23.GalleriaModule,
                primeng_24.GMapModule,
                primeng_25.GrowlModule,
                primeng_26.InputMaskModule,
                primeng_27.InputSwitchModule,
                primeng_28.InputTextModule,
                primeng_29.InputTextareaModule,
                primeng_30.LightboxModule,
                primeng_31.ListboxModule,
                primeng_32.MegaMenuModule,
                primeng_33.MenuModule,
                primeng_34.MenubarModule,
                primeng_35.MessagesModule,
                primeng_36.MultiSelectModule,
                primeng_37.OrderListModule,
                primeng_38.OverlayPanelModule,
                primeng_39.PaginatorModule,
                primeng_40.PanelModule,
                primeng_41.PanelMenuModule,
                primeng_42.PasswordModule,
                primeng_43.PickListModule,
                primeng_44.ProgressBarModule,
                primeng_45.RadioButtonModule,
                primeng_46.RatingModule,
                primeng_47.ScheduleModule,
                primeng_48.SelectButtonModule,
                primeng_49.SlideMenuModule,
                primeng_50.SliderModule,
                primeng_51.SpinnerModule,
                primeng_52.SplitButtonModule,
                primeng_53.TabMenuModule,
                primeng_54.TabViewModule,
                primeng_55.TerminalModule,
                primeng_56.TieredMenuModule,
                primeng_57.ToggleButtonModule,
                primeng_58.ToolbarModule,
                primeng_59.TooltipModule,
                primeng_60.TreeModule,
                primeng_61.TreeTableModule
            ],
            declarations: [
                application_1.Application,
                home_component_1.HomeComponent,
                consumer_mappings_component_1.ConsumerMappingsComponent,
                consumer_entities_component_1.ConsumerEntitiesComponent,
                consumers_component_1.ConsumersComponent,
                freight_vendor_mappings_component_1.FreightVendorMappingsComponent,
                freight_vendor_entities_component_1.FreightVendorEntitiesComponent,
                freight_vendors_component_1.FreightVendorsComponent,
                item_mappings_component_1.ItemMappingsComponent,
                item_entities_component_1.ItemEntitiesComponent,
                items_component_1.ItemsComponent,
                ship_from_mappings_component_1.ShipFromMappingsComponent,
                ship_from_entities_component_1.ShipFromEntitiesComponent,
                ship_froms_component_1.ShipFromsComponent,
                ship_to_mappings_component_1.ShipToMappingsComponent,
                ship_to_entities_component_1.ShipToEntitiesComponent,
                ship_tos_component_1.ShipTosComponent,
                supplier_mappings_component_1.SupplierMappingsComponent,
                supplier_entities_component_1.SupplierEntitiesComponent,
                suppliers_component_1.SuppliersComponent,
                ap_invoices_component_1.APInvoicesComponent,
                purchase_orders_component_1.PurchaseOrdersComponent,
                shipments_component_1.ShipmentsComponent,
                acknowledgements_component_1.AcknowledgementsComponent,
                scale_connect_component_1.ScaleConnectComponent,
                scale_connect_asn_component_1.ScaleConnectASNComponent,
                scale_connect_po_component_1.ScaleConnectPOComponent,
                spinner_component_1.SpinnerComponent,
                mappings_component_1.MappingsComponent,
                spinner_component_1.SpinnerComponent,
                dashboarddemo_1.DashboardDemo,
                sampledemo_1.SampleDemo,
                formsdemo_1.FormsDemo,
                datademo_1.DataDemo,
                panelsdemo_1.PanelsDemo,
                overlaysdemo_1.OverlaysDemo,
                menusdemo_1.MenusDemo,
                messagesdemo_1.MessagesDemo,
                messagesdemo_1.MessagesDemo,
                miscdemo_1.MiscDemo,
                chartsdemo_1.ChartsDemo,
                emptydemo_1.EmptyDemo,
                filedemo_1.FileDemo,
                utilsdemo_1.UtilsDemo,
                documentation_1.Documentation
            ],
            providers: [
                { provide: common_1.LocationStrategy, useClass: common_1.HashLocationStrategy },
                carservice_1.CarService, countryservice_1.CountryService, eventservice_1.EventService, nodeservice_1.NodeService, DJJAPI_service_1.DJJAPIService
            ],
            bootstrap: [application_1.Application]
        }), 
        __metadata('design:paramtypes', [])
    ], AppModule);
    return AppModule;
}());
exports.AppModule = AppModule;
//# sourceMappingURL=app.module.js.map