import { AfterViewInit, ElementRef } from '@angular/core';
export declare class Application implements AfterViewInit {
    private el;
    layoutCompact: boolean;
    layoutMode: string;
    darkMenu: boolean;
    profileMode: string;
    constructor(el: ElementRef);
    ngAfterViewInit(): void;
    changeTheme(event: any, theme: any): void;
}
