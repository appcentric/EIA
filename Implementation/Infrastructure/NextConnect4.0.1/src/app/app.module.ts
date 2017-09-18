//imported modules from angular
import { NgModule, enableProdMode }      from '@angular/core';
import { FormBuilder, FormControl, FormGroup, FormsModule, ReactiveFormsModule, Validators } from '@angular/forms'
import { HttpModule }    from '@angular/http';
import { BrowserModule } from '@angular/platform-browser';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { AppRoutes } from './app.routes';
import 'rxjs/add/operator/toPromise';

//import all primeng modules
import { AccordionModule } from 'primeng/primeng';
import { AutoCompleteModule } from 'primeng/primeng';
import { BreadcrumbModule } from 'primeng/primeng';
import { ButtonModule } from 'primeng/primeng';
import { CalendarModule } from 'primeng/primeng';
import { CarouselModule } from 'primeng/primeng';
import { ChartModule } from 'primeng/primeng';
import { CheckboxModule } from 'primeng/primeng';
import { ChipsModule } from 'primeng/primeng';
import { CodeHighlighterModule } from 'primeng/primeng';
import { ConfirmDialogModule } from 'primeng/primeng';
import { SharedModule } from 'primeng/primeng';
import { ContextMenuModule } from 'primeng/primeng';
import { DataGridModule } from 'primeng/primeng';
import { DataListModule } from 'primeng/primeng';
import { DataScrollerModule } from 'primeng/primeng';
import { DataTableModule } from 'primeng/primeng';
import { DialogModule } from 'primeng/primeng';
import { DragDropModule } from 'primeng/primeng';
import { DropdownModule } from 'primeng/primeng';
import { EditorModule } from 'primeng/primeng';
import { FieldsetModule } from 'primeng/primeng';
import { FileUploadModule } from 'primeng/primeng';
import { GalleriaModule } from 'primeng/primeng';
import { GMapModule } from 'primeng/primeng';
import { GrowlModule } from 'primeng/primeng';
import { InplaceModule } from 'primeng/primeng';
import { InputMaskModule } from 'primeng/primeng';
import { InputSwitchModule } from 'primeng/primeng';
import { InputTextModule } from 'primeng/primeng';
import { InputTextareaModule } from 'primeng/primeng';
import { LightboxModule } from 'primeng/primeng';
import { ListboxModule } from 'primeng/primeng';
import { MegaMenuModule } from 'primeng/primeng';
import { MenuModule } from 'primeng/primeng';
import { MenubarModule } from 'primeng/primeng';
import { MessagesModule } from 'primeng/primeng';
import { MultiSelectModule } from 'primeng/primeng';
import { OrderListModule } from 'primeng/primeng';
import { OverlayPanelModule } from 'primeng/primeng';
import { PaginatorModule } from 'primeng/primeng';
import { PanelModule } from 'primeng/primeng';
import { PanelMenuModule } from 'primeng/primeng';
import { PasswordModule } from 'primeng/primeng';
import { PickListModule } from 'primeng/primeng';
import { ProgressBarModule } from 'primeng/primeng';
import { RadioButtonModule } from 'primeng/primeng';
import { RatingModule } from 'primeng/primeng';
import { ScheduleModule } from 'primeng/primeng';
import { SelectButtonModule } from 'primeng/primeng';
import { SlideMenuModule } from 'primeng/primeng';
import { SliderModule } from 'primeng/primeng';
import { SpinnerModule } from 'primeng/primeng';
import { SplitButtonModule } from 'primeng/primeng';
import { StepsModule } from 'primeng/primeng';
import { TabMenuModule } from 'primeng/primeng';
import { TabViewModule } from 'primeng/primeng';
import { TerminalModule } from 'primeng/primeng';
import { TieredMenuModule } from 'primeng/primeng';
import { ToggleButtonModule } from 'primeng/primeng';
import { ToolbarModule } from 'primeng/primeng';
import { TooltipModule } from 'primeng/primeng';
import { TreeModule } from 'primeng/primeng';
import { TreeTableModule } from 'primeng/primeng';

//import all components. These need be declared in the declarations array
import { HomeComponent } from './home/home';
import { HelpComponent } from './topbar/help';
import { ProfileComponent } from './topbar/profile';

//DJJ Components
import { ConsumerMappingsComponent } from './djj/entity-mappings/consumers/consumer-mappings';
import { ConsumerEntitiesComponent } from './djj/entity-mappings/consumers/consumer-entities';
import { ConsumersComponent } from './djj/entity-mappings/consumers/consumers';
import { FreightVendorMappingsComponent } from './djj/entity-mappings/freight-vendors/freight-vendor-mappings';
import { FreightVendorEntitiesComponent } from  './djj/entity-mappings/freight-vendors/freight-vendor-entities';
import { FreightVendorsComponent } from './djj/entity-mappings/freight-vendors/freight-vendors';
import { ItemMappingsComponent } from './djj/entity-mappings/items/item-mappings';
import { ItemEntitiesComponent } from './djj/entity-mappings/items/item-entities';
import { ItemsComponent } from './djj/entity-mappings/items/items';
import { ShipFromMappingsComponent } from './djj/entity-mappings/ship-froms/ship-from-mappings';
import { ShipFromEntitiesComponent } from './djj/entity-mappings/ship-froms/ship-from-entities';
import { ShipFromsComponent } from './djj/entity-mappings/ship-froms/ship-froms';
import { ShipToMappingsComponent } from './djj/entity-mappings/ship-tos/ship-to-mappings';
import { ShipToEntitiesComponent } from './djj/entity-mappings/ship-tos/ship-to-entities';
import { ShipTosComponent } from './djj/entity-mappings/ship-tos/ship-tos';
import { SupplierMappingsComponent } from './djj/entity-mappings/suppliers/supplier-mappings';
import { SupplierEntitiesComponent } from './djj/entity-mappings/suppliers/supplier-entities';
import { SuppliersComponent } from './djj/entity-mappings/suppliers/suppliers';
import { AllDocumentsComponent } from './djj/documents/all-docs/all-docs';
import { APInvoicesComponent } from './djj/documents/invoices/ap-invoices';
import { APInvoicesByDateComponent } from './djj/documents/invoices/ap-invoices-date';
import { PurchaseOrdersComponent } from './djj/documents/purchase-orders/purchase-orders';
import { PurchaseOrdersByDateComponent } from './djj/documents/purchase-orders/purchase-orders-date';
import { ShipmentsComponent } from './djj/documents/shipments/shipments';
import { ShipmentsByDateComponent } from './djj/documents/shipments/shipments-date';
import { AcknowledgementsComponent } from './djj/acknowledgements/acknowledgements';
import { ScaleConnectComponent } from './djj/scale-connect/sc-all-docs/sc-all-docs';
import { ScaleConnectASNComponent } from './djj/scale-connect/scale-connect-asn/scale-connect-asn';
import { ScaleConnectPOComponent } from './djj/scale-connect/scale-connect-po/scale-connect-po';

//SOA Components
import { SOAEnvironmentsComponent } from './soa/environments/environments';
import { SOAScheduleComponent } from './soa/schedule/schedule';

//Shop Floor Tools Components
import { SFTHomeComponent } from './shop-floor-tools/sft-home/sft-home';

//import app layout and theme
import { AppComponent }  from './app.component';
import { AppMenuComponent, AppSubMenu }  from './app.menu.component';
import { AppTopBar }  from './app.topbar.component';
import { AppFooter }  from './app.footer.component';
import { InlineProfileComponent }  from './app.profile.component';
import { LoadBarComponent } from './app.loadbar.component';

//import services
import { DJJAPIService } from './services/djj.service';
import { HomePageService } from './services/home-page.service';
import { AuthService } from './services/auth.service';
import { AuthGuardService } from './services/auth-guard.service';
import { SOAService } from './services/soa.service';
import { ShopFloorToolsService } from './services/sft.service';
import { AUTH_PROVIDERS } from 'angular2-jwt';

@NgModule({
    imports: [
        BrowserModule,
        FormsModule,
        ReactiveFormsModule,
        AppRoutes,
        HttpModule,
        BrowserAnimationsModule,
        AccordionModule,
        AutoCompleteModule,
        BreadcrumbModule,
        ButtonModule,
        CalendarModule,
        CarouselModule,
        ChartModule,
        CheckboxModule,
        ChipsModule,
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
        InplaceModule,
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
        StepsModule,
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
        AppComponent,
        AppMenuComponent,
        AppSubMenu,
        AppTopBar,
        AppFooter,
        InlineProfileComponent,
        LoadBarComponent,
        HomeComponent,
        HelpComponent,
        ProfileComponent,
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
        AllDocumentsComponent,
        APInvoicesComponent,
        APInvoicesByDateComponent,
        PurchaseOrdersComponent,
        PurchaseOrdersByDateComponent,
        ShipmentsComponent, 
        ShipmentsByDateComponent,   
        AcknowledgementsComponent,
        ScaleConnectComponent,
        ScaleConnectASNComponent,
        ScaleConnectPOComponent,
        SOAEnvironmentsComponent,
        SOAScheduleComponent,
        SFTHomeComponent
    ],
    providers: [
        AuthService, AuthGuardService, DJJAPIService, HomePageService, ShopFloorToolsService, SOAService
    ],
    bootstrap:[AppComponent]
})
export class AppModule { }
// enableProdMode();