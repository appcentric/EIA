import { Component } from '@angular/core';
import { AuthService } from '../services/auth.service';

@Component({
  selector: 'profile',
  templateUrl: './profile.html'
})
export class ProfileComponent {
  
  constructor(public auth: AuthService) { }  
  
}