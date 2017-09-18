import { Routes, RouterModule } from '@angular/router';
import { ModuleWithProviders } from '@angular/core';
import { AuthGuardService } from './services/auth-guard.service';

import { HomeComponent } from './home/home';
import { HelpComponent } from './topbar/help';
import { ProfileComponent } from './topbar/profile';

//DJJ routes
import { AllDocumentsComponent } from './documents/all-docs/all-docs';
import { APInvoicesByDateComponent } from './documents/invoices/ap-invoices-date';
import { PurchaseOrdersByDateComponent } from './documents/purchase-orders/purchase-orders-date';
import { ShipmentsByDateComponent } from './documents/shipments/shipments-date';
import { AcknowledgementsComponent } from './acknowledgements/acknowledgements';
import { ScaleConnectComponent } from './scale-connect/sc-all-docs/sc-all-docs';
import { ScaleConnectASNComponent } from './scale-connect/scale-connect-asn/scale-connect-asn';
import { ScaleConnectPOComponent } from './scale-connect/scale-connect-po/scale-connect-po';
import { ConsumersComponent } from './entity-mappings/consumers/consumers';
import { FreightVendorsComponent } from './entity-mappings/freight-vendors/freight-vendors';
import { ItemsComponent } from './entity-mappings/items/items';
import { ShipFromsComponent } from './entity-mappings/ship-froms/ship-froms';
import { ShipTosComponent } from './entity-mappings/ship-tos/ship-tos';
import { SuppliersComponent } from './entity-mappings/suppliers/suppliers';

export const routes: Routes = [
    { path: '', component: HomeComponent },
    { path: 'home', component: HomeComponent },
    { path: 'help', component: HelpComponent },
    { path: 'profile', component: ProfileComponent, canActivate:[AuthGuardService] },
    { path: 'alldocs', component: AllDocumentsComponent, canActivate:[AuthGuardService] },
    { path: 'apinvoices', component: APInvoicesByDateComponent, canActivate:[AuthGuardService] },
    { path: 'purchaseorders', component: PurchaseOrdersByDateComponent, canActivate:[AuthGuardService] },
    { path: 'shipments', component: ShipmentsByDateComponent, canActivate:[AuthGuardService] },
    { path: 'acknowledgements', component: AcknowledgementsComponent, canActivate:[AuthGuardService] },
    { path: 'scaleconnect', component: ScaleConnectComponent, canActivate:[AuthGuardService] },
    { path: 'scaleconnectpo', component: ScaleConnectPOComponent, canActivate:[AuthGuardService] },
    { path: 'scaleconnectasn', component: ScaleConnectASNComponent, canActivate:[AuthGuardService] },
    { path: 'consumers', component: ConsumersComponent, canActivate:[AuthGuardService] },
    { path: 'freightvendors', component: FreightVendorsComponent, canActivate:[AuthGuardService] },
    { path: 'items', component: ItemsComponent, canActivate:[AuthGuardService] },
    { path: 'shipfroms', component: ShipFromsComponent, canActivate:[AuthGuardService] },
    { path: 'shiptos', component: ShipTosComponent, canActivate:[AuthGuardService] },
    { path: 'suppliers', component: SuppliersComponent, canActivate:[AuthGuardService] },
    { path: '**', redirectTo: 'home' }
];

export const AppRoutes: ModuleWithProviders = RouterModule.forRoot(routes);
