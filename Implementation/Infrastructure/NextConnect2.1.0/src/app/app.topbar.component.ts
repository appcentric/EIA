import { Component, Inject, forwardRef } from '@angular/core';
import { AppComponent } from './app.component';
import { AuthService } from './services/auth.service';

@Component({
    selector: 'app-topbar',
    templateUrl: './app.topbar.component.html'
})
export class AppTopBar {

    constructor(@Inject(forwardRef(() => AppComponent)) public app:AppComponent, private auth: AuthService) {}
}