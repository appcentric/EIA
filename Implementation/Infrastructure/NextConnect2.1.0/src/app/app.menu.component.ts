import { Component, Input, OnInit, EventEmitter, ViewChild, Inject, forwardRef } from '@angular/core';
import { trigger, state, style, transition, animate } from '@angular/animations';
import { Location } from '@angular/common';
import { Router } from '@angular/router';
import { MenuItem } from 'primeng/primeng';
import { AppComponent } from './app.component';
import { AuthService } from './services/auth.service';

@Component({
    selector: 'app-menu',
    template: `
        <ul app-submenu [item]="model" root="true" class="ultima-menu ultima-main-menu clearfix" [reset]="reset" visible="true"></ul>
    `
})
export class AppMenuComponent implements OnInit {

    @Input() reset: boolean;

    model: any[];

    scrapVisible: boolean;
    soaVisible: boolean;

    constructor(@Inject(forwardRef(() => AppComponent)) public app:AppComponent, public auth: AuthService) {

    }
    
    ngOnInit() {
        if (this.auth.authenticated()) {
           if (this.auth.userProfile.app_metadata.group === 'scrap'){
                this.scrapVisible = true;
                this.soaVisible = false;
            }
            if (this.auth.userProfile.app_metadata.group === 'soa'){
                this.scrapVisible = true;
                this.soaVisible = true;
            }
        }

        this.model = [
            {label: 'Home', icon: 'home', routerLink: ['/home']},
            {label: 'All Documents', icon: 'view_list',visible: this.scrapVisible, routerLink: ['/alldocs']},
            {label: 'Purchase Orders', icon: 'work', visible: this.scrapVisible, routerLink: ['/purchaseorders']},
            {label: 'Shipments', icon: 'local_shipping', visible: this.scrapVisible, routerLink: ['/shipments']},
            {label: 'AP Invoices', icon: 'mail',visible: this.scrapVisible, routerLink: ['/apinvoices']},
            {label: 'Acknowledgements', icon: 'thumb_up', visible: this.scrapVisible, routerLink: ['/acknowledgements']},
            {
                label: 'ScaleConnect', icon: 'account_balance', visible: this.scrapVisible,
                items: [
                    {label: 'ScaleConnect PO', routerLink: ['/scaleconnectpo']},
                    {label: 'ScaleConnect ASN', routerLink: ['/scaleconnectasn']}
                ]
            },
            {
                label: 'Mappings', icon: 'map', visible: this.scrapVisible,
                items: [
                    {label: 'Consumers', routerLink: ['/consumers']},
                    {label: 'Freight Vendors', routerLink: ['/freightvendors']},
                    {label: 'Items', routerLink: ['/items']},
                    {label: 'Ship Froms', routerLink: ['/shipfroms']},
                    {label: 'Ship Tos', routerLink: ['/shiptos']},
                    {label: 'Suppliers', routerLink: ['/suppliers']}
                ]
            },
            {
                label: 'Settings', icon: 'settings_application', 
                items: [
                    {
                        label: 'Customization', icon: 'settings_application',
                        items: [
                            {label: 'Compact Size', icon: 'fiber_manual_record', command: () => this.app.layoutCompact = true},
                            {label: 'Material Size', icon: 'fiber_smart_record',  command: () => this.app.layoutCompact = false},
                            // {label: 'Static Menu', icon: 'menu',  command: () => this.app.changeToStaticMenu()},
                            // {label: 'Overlay Menu', icon: 'exit_to_app',  command: () => this.app.changeToOverlayMenu()},
                            // {label: 'Horizontal Menu', icon: 'border_horizontal',  command: () => this.app.changeToHorizontalMenu()},
                            {label: 'Light Menu', icon: 'label_outline',  command: () => this.app.darkMenu = false},
                            {label: 'Dark Menu', icon: 'label',  command: () => this.app.darkMenu = true},
                            // {label: 'Inline Profile', icon: 'contacts',  command: () => this.app.profileMode = 'inline'},
                            // {label: 'Top Profile', icon: 'person_pin',  command: () => this.app.profileMode = 'top'},
                        ]
                    },
                    {
                        label: 'Change Theme', icon: 'palette',
                        items: [
                            {label: 'Indigo - Pink', icon: 'brush', command: (event) => {this.changeTheme('indigo')}},
                            {label: 'Brown - Green', icon: 'brush', command: (event) => {this.changeTheme('brown')}},
                            {label: 'Blue - Amber', icon: 'brush', command: (event) => {this.changeTheme('blue')}},
                            {label: 'Blue Grey - Green', icon: 'brush', command: (event) => {this.changeTheme('blue-grey')}},
                            {label: 'Dark - Blue', icon: 'brush', command: (event) => {this.changeTheme('dark-blue')}},
                            {label: 'Dark - Green', icon: 'brush', command: (event) => {this.changeTheme('dark-green')}},
                            {label: 'Green - Yellow', icon: 'brush', command: (event) => {this.changeTheme('green')}},
                            {label: 'Purple - Cyan', icon: 'brush', command: (event) => {this.changeTheme('purple-cyan')}},
                            {label: 'Purple - Amber', icon: 'brush', command: (event) => {this.changeTheme('purple-amber')}},
                            {label: 'Teal - Lime', icon: 'brush', command: (event) => {this.changeTheme('teal')}},
                            {label: 'Cyan - Amber', icon: 'brush', command: (event) => {this.changeTheme('cyan')}},
                            {label: 'Grey - Deep Orange', icon: 'brush', command: (event) => {this.changeTheme('grey')}}
                        ]
                    }
                ]
            }
        ];
    }

    changeTheme(theme) {
        let themeLink: HTMLLinkElement = <HTMLLinkElement> document.getElementById('theme-css');
        let layoutLink: HTMLLinkElement = <HTMLLinkElement> document.getElementById('layout-css');
        
        themeLink.href = 'assets/theme/theme-' + theme +'.css';
        layoutLink.href = 'assets/layout/css/layout-' + theme +'.css';
    }
}

@Component({
    selector: '[app-submenu]',
    template: `
        <ng-template ngFor let-child let-i="index" [ngForOf]="(root ? item : item.items)">
            <li [ngClass]="{'active-menuitem': isActive(i)}" *ngIf="child.visible === false ? false : true">
                <a [href]="child.url||'#'" (click)="itemClick($event,child,i)" class="ripplelink" *ngIf="!child.routerLink" [attr.tabindex]="!visible ? '-1' : null">
                    <i class="material-icons">{{child.icon}}</i>
                    <span>{{child.label}}</span>
                    <i class="material-icons" *ngIf="child.items">keyboard_arrow_down</i>
                </a>

                <a (click)="itemClick($event,child,i)" class="ripplelink" *ngIf="child.routerLink"
                    [routerLink]="child.routerLink" routerLinkActive="active-menuitem-routerlink" [routerLinkActiveOptions]="{exact: true}" [attr.tabindex]="!visible ? '-1' : null">
                    <i class="material-icons">{{child.icon}}</i>
                    <span>{{child.label}}</span>
                    <i class="material-icons" *ngIf="child.items">keyboard_arrow_down</i>
                </a>
                <ul app-submenu [item]="child" *ngIf="child.items" [@children]="isActive(i) ? 'visible' : 'hidden'" [visible]="isActive(i)"></ul>
            </li>
        </ng-template>
    `,
    animations: [
        trigger('children', [
            state('hidden', style({
                height: '0px'
            })),
            state('visible', style({
                height: '*'
            })),
            transition('visible => hidden', animate('400ms cubic-bezier(0.86, 0, 0.07, 1)')),
            transition('hidden => visible', animate('400ms cubic-bezier(0.86, 0, 0.07, 1)'))
        ])
    ]
})
export class AppSubMenu {

    @Input() item: MenuItem;
    
    @Input() root: boolean;
    
    @Input() visible: boolean;

    _reset: boolean;
        
    activeIndex: number;

    constructor(@Inject(forwardRef(() => AppComponent)) public app:AppComponent, public router: Router, public location: Location) {}
        
    itemClick(event: Event, item: MenuItem, index: number) {
        //avoid processing disabled items
        if(item.disabled) {
            event.preventDefault();
            return true;
        }
        
        //activate current item and deactivate active sibling if any
        this.activeIndex = (this.activeIndex === index) ? null : index;
                
        //execute command
        if(item.command) {
            if(!item.eventEmitter) {
                item.eventEmitter = new EventEmitter();
                item.eventEmitter.subscribe(item.command);
            }
            
            item.eventEmitter.emit({
                originalEvent: event,
                item: item
            });
        }

        //prevent hash change
        if(item.items || (!item.url && !item.routerLink)) {
            event.preventDefault();
        }
        
        //hide menu
        if(!item.items) {
            if(this.app.isHorizontal())
                this.app.resetMenu = true;
            else
                this.app.resetMenu = false;
                
            this.app.overlayMenuActive = false;
            this.app.staticMenuMobileActive = false;
        }
    }
    
    isActive(index: number): boolean {
        return this.activeIndex === index;
    }

    @Input() get reset(): boolean {
        return this._reset;
    }

    set reset(val:boolean) {
        this._reset = val;

        if(this._reset && this.app.isHorizontal()) {
            this.activeIndex = null;
        }
    }
}