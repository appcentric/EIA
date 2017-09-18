import { Injectable }      from '@angular/core';
import { tokenNotExpired } from 'angular2-jwt';
import { Router } from '@angular/router';
import 'rxjs/add/operator/filter';

// Avoid name not found warnings
//if needed you can uncomment this code to use with auth0-lock from CDN (uncomment script in index.html)
// declare var Auth0Lock: any;

//use this code to use auth0-lock from node_modules
let Auth0Lock = require('auth0-lock').default;


@Injectable()
export class AuthService {
  // Configure Auth0
  lock = new Auth0Lock('ldNCIe3rDS2IyxIQOiEoC6iI68rgyP1H', 'taylorengel.auth0.com', {
    theme: {
      logo: "assets/layout/images/logo.png",
      primaryColor: "#558B2F"
    },
    languageDictionary: {
      title: "Nucor NextConnect",
      emailInputPlaceholder: "first.last@nucor.com",
    }
  });

  //Store profile object in auth class
  userProfile: any;

  scrapVisible: boolean;
  soaVisible: boolean;
  sftVisible: boolean;

constructor(private router: Router) {
    // Set userProfile attribute of already saved profile
    this.userProfile = JSON.parse(localStorage.getItem('profile'));

    // Add callback for the Lock `authenticated` event
    this.lock.on('authenticated', (authResult, profile) => {
      localStorage.setItem('id_token', authResult.idToken);
      localStorage.setItem('access_token', authResult.accessToken);
      // Fetch profile information
      this.lock.getUserInfo(authResult.accessToken, (error, profile) => {
        if (error) {
          // Handle error
          alert(error);
          return;
        }
        localStorage.setItem('profile', JSON.stringify(profile));
        this.userProfile = profile;
        window.location.reload();
      });
    });
  }

  public login(): void {
    // Call the show method to display the widget.
    this.lock.show();    
  }

  public authenticated(): boolean {
    // Check if there's an unexpired JWT
    // This searches for an item in localStorage with key == 'id_token'
    if (this.userProfile){
       return tokenNotExpired();
    }
  }

  public logout(): void {
    // Remove token and profile from localStorage
    localStorage.removeItem('id_token');
    localStorage.removeItem('access_token');
    localStorage.removeItem('profile');
    this.userProfile = null;
    this.router.navigate(['/home']);  
  }

  public logoutOnTokenExpiration() {
    if(!this.authenticated()){
      this.logout();
    }
  }
}


// COMMENTED OUT AUTH0.JS V8 SDK THIS IS TO BE USED IF YOU WANT CUSTOM HTML/CSS LOGIN. HAD ISSUES WITH USER PROFILE HANDLING

// import { Injectable } from '@angular/core';
// import { tokenNotExpired } from 'angular2-jwt';
// import { Router } from '@angular/router';

// // Avoid name not found warnings
// declare var auth0: any;
// // let auth0 = require('auth0-js').default;

// @Injectable()
// export class AuthService {

//   userProfile: any;

//   // Configure Auth0
//   auth0 = new auth0.WebAuth({
//     domain: 'taylorengel.auth0.com',
//     clientID: 'ldNCIe3rDS2IyxIQOiEoC6iI68rgyP1H',
//     // specify your desired callback URL
//     callbackURL: 'http://localhost:4200/home',
//     responseType: 'token id_token'
//   });

//   constructor(private router: Router) { }

//   public login(username: string, password: string): void {
//     this.auth0.client.login({
//       realm: 'Username-Password-Authentication',
//       username,
//       password
//     }, (err, authResult) => {
//       if (err) {
//         alert(`Error: ${err.description}`);
//         return;
//       }
//       if (authResult && authResult.accessToken && authResult.idToken) {
//         this.setSession(authResult);
//       }
//       this.router.navigate(['/home']);
//     });
//   }

//   public authenticated(): boolean {
//     // Check whether the id_token is expired or not
//     return tokenNotExpired();
//   }

//   private setSession(authResult): void {
//     // Set the time that the access token will expire at
//     localStorage.setItem('access_token', authResult.accessToken);
//     localStorage.setItem('id_token', authResult.idToken);
//     this.auth0.client.userInfo(authResult.accessToken, function(err, user) {
//       // Now you have the user's information
//       if (err) {
//         return console.log(err);
//       }
//       else{
//         localStorage.setItem('profile', JSON.stringify(user));
//         this.userProfile = user;
//       }
//     });  
//   }

//   public getProfile(cb): void {
//     let accessToken = localStorage.getItem('access_token');
//     if (!accessToken) {
//       throw 'Access token must exist to fetch profile';
//     }

//     let self = this;
//     this.auth0.getUserInfo(accessToken, (err, profile) => {
//       if (profile) {
//         self.userProfile = profile;
//       }
//       cb(err, profile);
//     });
//   }

//   public logout(): void {
//     // Remove token from localStorage
//     localStorage.removeItem('access_token');
//     localStorage.removeItem('id_token');
//     localStorage.removeItem('profile');
//     this.userProfile = null;
//     // this.router.navigate(['/home']);
//   }
//   // private setUser(authResult): void {
//   //   localStorage.setItem('access_token', authResult.accessToken);
//   //   localStorage.setItem('id_token', authResult.idToken);
//   //   this.auth0.client.userInfo(authResult.accessToken, function(err, user) {
//   //     // Now you have the user's information
//   //     if (err) {
//   //       return console.log(err);
//   //     }
//   //     else{
//   //       localStorage.setItem('profile', JSON.stringify(user));
//   //       this.userProfile = user;
//   //     }
//   //   });
//   // }
// }
