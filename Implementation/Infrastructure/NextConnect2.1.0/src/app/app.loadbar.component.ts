import { Component, Input } from '@angular/core';

@Component({
    selector: 'load-bar',
    template: `
        <div *ngIf="visible">
            <div class="splash-screen">   
                <div class="load-bar">
                    <div class="bar"></div>
                    <div class="bar"></div>
                    <div class="bar"></div>
                </div>
            </div>
        </div>
    `
})
export class LoadBarComponent { 
    @Input() visible = true; 
}