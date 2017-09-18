import { Component } from '@angular/core';

@Component({
  templateUrl: './app/home.component.html',
})

export class HomeComponent { 
  cards: any;
  mappingCards: any;

  constructor() {
    this.cards = [
        {route: 'Purchase Orders', icon: 'work', routerLink: '/purchaseorders'},
        {route: 'Shipments & Receipts', icon: 'local_shipping', routerLink: '/shipments'},
        {route: 'AP Invoices', icon: 'mail', routerLink: '/apinvoices'},
        {route: 'Acknowledgements', icon: 'thumb_up', routerLink: '/acknowledgements'},
        {route: 'ScaleConnect', icon: 'account_balance', routerLink: '/scaleconnect'},
        {route: 'Mappings', icon: 'map', routerLink: '/mappings'},
    ];
  }
}
