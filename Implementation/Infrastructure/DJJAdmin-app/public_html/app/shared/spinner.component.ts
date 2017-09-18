import { Component, Input } from '@angular/core';

@Component({
    selector: 'spinner',
    template: `
      <i *ngIf="visible" class="ui-icon-refresh fa-spin fa"></i>
    `
})
export class SpinnerComponent { 
    @Input() visible = true; 
}