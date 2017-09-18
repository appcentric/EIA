//imported modules from angular
import {NgModule}      from '@angular/core';
import { FormBuilder, FormControl, FormGroup, FormsModule, ReactiveFormsModule, Validators } from '@angular/forms'
import {HttpModule}    from '@angular/http';
import {BrowserModule} from '@angular/platform-browser';
import {LocationStrategy,HashLocationStrategy} from '@angular/common';
import {AppRoutes} from './app.routes';

//import all components. These need be declared in the declarations array
import { HomeComponent } from './home.component';
import { ConsumerMappingsComponent } from './administration/consumers/consumer-mappings.component';
import { ConsumerEntitiesComponent } from './administration/consumers/consumer-entities.component';
import { ConsumersComponent } from './administration/consumers/consumers.component';
import { FreightVendorMappingsComponent } from './administration/freight-vendors/freight-vendor-mappings.component';
import { FreightVendorEntitiesComponent } from  './administration/freight-vendors/freight-vendor-entities.component';
import { FreightVendorsComponent } from './administration/freight-vendors/freight-vendors.component';
import { ItemMappingsComponent } from './administration/items/item-mappings.component';
import { ItemEntitiesComponent } from './administration/items/item-entities.component';
import { ItemsComponent } from './administration/items/items.component';
import { ShipFromMappingsComponent } from './administration/ship-froms/ship-from-mappings.component';
import { ShipFromEntitiesComponent } from './administration/ship-froms/ship-from-entities.component';
import { ShipFromsComponent } from './administration/ship-froms/ship-froms.component';
import { ShipToMappingsComponent } from './administration/ship-tos/ship-to-mappings.component';
import { ShipToEntitiesComponent } from './administration/ship-tos/ship-to-entities.component';
import { ShipTosComponent } from './administration/ship-tos/ship-tos.component';
import { SupplierMappingsComponent } from './administration/suppliers/supplier-mappings.component';
import { SupplierEntitiesComponent } from './administration/suppliers/supplier-entities.component';
import { SuppliersComponent } from './administration/suppliers/suppliers.component';
import { APInvoicesComponent } from './consumers/invoices/ap-invoices.component';
import { PurchaseOrdersComponent } from './consumers/purchase-orders/purchase-orders.component';
import { ShipmentsComponent } from './consumers/shipments/shipments.component';
import { AcknowledgementsComponent } from './acknowledgements/acknowledgements.component';
import { ScaleConnectComponent } from './scale-connect/scale-connect.component';
import { ScaleConnectASNComponent } from './scale-connect/scale-connect-asn/scale-connect-asn.component';
import { ScaleConnectPOComponent } from './scale-connect/scale-connect-po/scale-connect-po.component';
import { MappingsComponent } from './administration/mappings/mappings.component';
import { SpinnerComponent } from './shared/spinner.component';

//import all primeng modules
import {AccordionModule} from 'primeng/primeng';
import {AutoCompleteModule} from 'primeng/primeng';
import {BreadcrumbModule} from 'primeng/primeng';
import {ButtonModule} from 'primeng/primeng';
import {CalendarModule} from 'primeng/primeng';
import {CarouselModule} from 'primeng/primeng';
import {ChartModule} from 'primeng/primeng';
import {CheckboxModule} from 'primeng/primeng';
import {CodeHighlighterModule} from 'primeng/primeng';
import {ConfirmDialogModule} from 'primeng/primeng';
import {SharedModule} from 'primeng/primeng';
import {ContextMenuModule} from 'primeng/primeng';
import {DataGridModule} from 'primeng/primeng';
import {DataListModule} from 'primeng/primeng';
import {DataScrollerModule} from 'primeng/primeng';
import {DataTableModule} from 'primeng/primeng';
import {DialogModule} from 'primeng/primeng';
import {DragDropModule} from 'primeng/primeng';
import {DropdownModule} from 'primeng/primeng';
import {EditorModule} from 'primeng/primeng';
import {FieldsetModule} from 'primeng/primeng';
import {FileUploadModule} from 'primeng/primeng';
import {GalleriaModule} from 'primeng/primeng';
import {GMapModule} from 'primeng/primeng';
import {GrowlModule} from 'primeng/primeng';
import {InputMaskModule} from 'primeng/primeng';
import {InputSwitchModule} from 'primeng/primeng';
import {InputTextModule} from 'primeng/primeng';
import {InputTextareaModule} from 'primeng/primeng';
import {LightboxModule} from 'primeng/primeng';
import {ListboxModule} from 'primeng/primeng';
import {MegaMenuModule} from 'primeng/primeng';
import {MenuModule} from 'primeng/primeng';
import {MenubarModule} from 'primeng/primeng';
import {MessagesModule} from 'primeng/primeng';
import {MultiSelectModule} from 'primeng/primeng';
import {OrderListModule} from 'primeng/primeng';
import {OverlayPanelModule} from 'primeng/primeng';
import {PaginatorModule} from 'primeng/primeng';
import {PanelModule} from 'primeng/primeng';
import {PanelMenuModule} from 'primeng/primeng';
import {PasswordModule} from 'primeng/primeng';
import {PickListModule} from 'primeng/primeng';
import {ProgressBarModule} from 'primeng/primeng';
import {RadioButtonModule} from 'primeng/primeng';
import {RatingModule} from 'primeng/primeng';
import {ScheduleModule} from 'primeng/primeng';
import {SelectButtonModule} from 'primeng/primeng';
import {SlideMenuModule} from 'primeng/primeng';
import {SliderModule} from 'primeng/primeng';
import {SpinnerModule} from 'primeng/primeng';
import {SplitButtonModule} from 'primeng/primeng';
import {TabMenuModule} from 'primeng/primeng';
import {TabViewModule} from 'primeng/primeng';
import {TerminalModule} from 'primeng/primeng';
import {TieredMenuModule} from 'primeng/primeng';
import {ToggleButtonModule} from 'primeng/primeng';
import {ToolbarModule} from 'primeng/primeng';
import {TooltipModule} from 'primeng/primeng';
import {TreeModule} from 'primeng/primeng';
import {TreeTableModule} from 'primeng/primeng';

import {Application}  from './application';
import {DashboardDemo} from './demo/view/dashboarddemo';
import {SampleDemo} from './demo/view/sampledemo';
import {FormsDemo} from './demo/view/formsdemo';
import {DataDemo} from './demo/view/datademo';
import {PanelsDemo} from './demo/view/panelsdemo';
import {OverlaysDemo} from './demo/view/overlaysdemo';
import {MenusDemo} from './demo/view/menusdemo';
import {MessagesDemo} from './demo/view/messagesdemo';
import {MiscDemo} from './demo/view/miscdemo';
import {EmptyDemo} from './demo/view/emptydemo';
import {ChartsDemo} from './demo/view/chartsdemo';
import {FileDemo} from './demo/view/filedemo';
import {UtilsDemo} from './demo/view/utilsdemo';
import {Documentation} from './demo/view/documentation';
//import services and declare them in providers
import { DJJAPIService } from './services/DJJAPI.service';
import {CarService} from './demo/service/carservice';
import {CountryService} from './demo/service/countryservice';
import {EventService} from './demo/service/eventservice';
import {NodeService} from './demo/service/nodeservice';

@NgModule({
    imports: [
        BrowserModule,
        FormsModule,
        ReactiveFormsModule,
        AppRoutes,
        HttpModule,
        AccordionModule,
        AutoCompleteModule,
        BreadcrumbModule,
        ButtonModule,
        CalendarModule,
        CarouselModule,
        ChartModule,
        CheckboxModule,
        CodeHighlighterModule,
        ConfirmDialogModule,
        SharedModule,
        ContextMenuModule,
        DataGridModule,
        DataListModule,
        DataScrollerModule,
        DataTableModule,
        DialogModule,
        DragDropModule,
        DropdownModule,
        EditorModule,
        FieldsetModule,
        FileUploadModule,
        GalleriaModule,
        GMapModule,
        GrowlModule,
        InputMaskModule,
        InputSwitchModule,
        InputTextModule,
        InputTextareaModule,
        LightboxModule,
        ListboxModule,
        MegaMenuModule,
        MenuModule,
        MenubarModule,
        MessagesModule,
        MultiSelectModule,
        OrderListModule,
        OverlayPanelModule,
        PaginatorModule,
        PanelModule,
        PanelMenuModule,
        PasswordModule,
        PickListModule,
        ProgressBarModule,
        RadioButtonModule,
        RatingModule,
        ScheduleModule,
        SelectButtonModule,
        SlideMenuModule,
        SliderModule,
        SpinnerModule,
        SplitButtonModule,
        TabMenuModule,
        TabViewModule,
        TerminalModule,
        TieredMenuModule,
        ToggleButtonModule,
        ToolbarModule,
        TooltipModule,
        TreeModule,
        TreeTableModule
    ],
    declarations: [
        Application,
        HomeComponent,
        ConsumerMappingsComponent,
        ConsumerEntitiesComponent,
        ConsumersComponent,
        FreightVendorMappingsComponent,
        FreightVendorEntitiesComponent,
        FreightVendorsComponent,
        ItemMappingsComponent,
        ItemEntitiesComponent,
        ItemsComponent,
        ShipFromMappingsComponent, 
        ShipFromEntitiesComponent,
        ShipFromsComponent,
        ShipToMappingsComponent,
        ShipToEntitiesComponent,
        ShipTosComponent,
        SupplierMappingsComponent,
        SupplierEntitiesComponent,
        SuppliersComponent,
        APInvoicesComponent,
        PurchaseOrdersComponent,
        ShipmentsComponent,    
        AcknowledgementsComponent,
        ScaleConnectComponent,
        ScaleConnectASNComponent,
        ScaleConnectPOComponent,
        SpinnerComponent,
        MappingsComponent,
        SpinnerComponent,
        DashboardDemo,
        SampleDemo,
        FormsDemo,
        DataDemo,
        PanelsDemo,
        OverlaysDemo,
        MenusDemo,
        MessagesDemo,
        MessagesDemo,
        MiscDemo,
        ChartsDemo,
        EmptyDemo,
        FileDemo,
        UtilsDemo,
        Documentation
    ],
    providers: [
        {provide: LocationStrategy, useClass: HashLocationStrategy},
        CarService,CountryService,EventService,NodeService,DJJAPIService
    ],
    bootstrap:[Application]
})
export class AppModule { }
