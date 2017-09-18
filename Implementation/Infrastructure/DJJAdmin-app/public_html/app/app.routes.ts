import {Routes,RouterModule} from '@angular/router';
import {ModuleWithProviders} from '@angular/core';
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
import { HomeComponent } from './home.component';
import { APInvoicesComponent } from './consumers/invoices/ap-invoices.component';
import { PurchaseOrdersComponent } from './consumers/purchase-orders/purchase-orders.component';
import { ShipmentsComponent } from './consumers/shipments/shipments.component';
import { AcknowledgementsComponent } from './acknowledgements/acknowledgements.component';
import { ScaleConnectComponent } from './scale-connect/scale-connect.component';
import { ScaleConnectASNComponent } from './scale-connect/scale-connect-asn/scale-connect-asn.component';
import { ScaleConnectPOComponent } from './scale-connect/scale-connect-po/scale-connect-po.component';
import { MappingsComponent } from './administration/mappings/mappings.component';
import { ConsumersComponent } from './administration/consumers/consumers.component';
import { FreightVendorsComponent } from './administration/freight-vendors/freight-vendors.component';
import { ItemsComponent } from './administration/items/items.component';
import { ShipFromsComponent } from './administration/ship-froms/ship-froms.component';
import { ShipTosComponent } from './administration/ship-tos/ship-tos.component';
import { SuppliersComponent } from './administration/suppliers/suppliers.component';

export const routes: Routes = [
    {path: '', component: HomeComponent},
    {path: 'dashboard', component: DashboardDemo},
    {path: 'sample', component: SampleDemo},
    {path: 'forms', component: FormsDemo},
    {path: 'data', component: DataDemo},
    {path: 'panels', component: PanelsDemo},
    {path: 'overlays', component: OverlaysDemo},
    {path: 'menus', component: MenusDemo},
    {path: 'messages', component: MessagesDemo},
    {path: 'misc', component: MiscDemo},
    {path: 'empty', component: EmptyDemo},
    {path: 'charts', component: ChartsDemo},
    {path: 'file', component: FileDemo},
    {path: 'utils', component: UtilsDemo},
    {path: 'documentation', component: Documentation},
    { path: 'home', component: HomeComponent },
    { path: 'apinvoices', component: APInvoicesComponent },
    { path: 'purchaseorders', component: PurchaseOrdersComponent },
    { path: 'shipments', component: ShipmentsComponent },
    { path: 'acknowledgements', component: AcknowledgementsComponent },
    { path: 'scaleconnect', component: ScaleConnectComponent },
    { path: 'scaleconnectpo', component: ScaleConnectPOComponent },
    { path: 'scaleconnectasn', component: ScaleConnectASNComponent },
    { path: 'mappings', component: MappingsComponent },
    { path: 'consumers', component: ConsumersComponent },
    { path: 'freightvendors', component: FreightVendorsComponent },
    { path: 'items', component: ItemsComponent },
    { path: 'shipfroms', component: ShipFromsComponent },
    { path: 'shiptos', component: ShipTosComponent },
    { path: 'suppliers', component: SuppliersComponent },
];

export const AppRoutes: ModuleWithProviders = RouterModule.forRoot(routes);
