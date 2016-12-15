import { Injectable } from '@angular/core';
import { AuthentificationComponent } from '../components/authentification/authentification.component';

@Injectable()
export class UtilisateurService {
    private utilisateur:string;

    constructor() {}

    setValueToolBar(utilisateur) {
        this.utilisateur = utilisateur;
    }

    getValueToolBar() {
        return this.utilisateur;
    }
     setValueNavBar(utilisateur) {
        this.utilisateur = utilisateur;
    }

    getValueNavBar() {
        return this.utilisateur;
    }
}