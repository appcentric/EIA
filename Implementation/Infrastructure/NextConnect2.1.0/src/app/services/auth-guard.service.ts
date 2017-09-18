import { Injectable } from '@angular/core';
import { CanActivate, Router } from '@angular/router';
import { AuthService } from './auth.service';

@Injectable()
export class AuthGuardService implements CanActivate {

  constructor(private auth: AuthService, private router: Router) {}

  canActivate() {
    if(this.auth.authenticated()) {
      return true;
    }
    if (!this.auth.authenticated()){
      this.auth.logout();
      return false;
    }
  }
}