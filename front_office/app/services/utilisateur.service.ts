import { Injectable } from '@angular/core';
import { AuthentificationComponent } from '../components/authentification/authentification.component';

@Injectable()
export class UtilisateurService {
    private utilisateur:string;
    checkNavBar = false;
    checkToolBar = false; 

    constructor() {}

    setUtilisateur(utilisateur) {
        this.utilisateur = utilisateur;
    }

    getUtilisateur() {
        return this.utilisateur;
    }

    getNavBar(){
        return this.checkNavBar;
      }

     getToolBar(){
        return this.checkToolBar;
      }

      activeBar(){
        this.checkNavBar = true;
        this.checkToolBar = true;
      }

      resetNavBar(){
        this.checkNavBar = false;
      }
      resetToolBar(){  
        this.checkToolBar = false;
      }

}