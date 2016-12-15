import { Injectable } from '@angular/core';
import { AuthentificationComponent } from '../components/authentification/authentification.component';

@Injectable()
export class UtilisateurService {
    private utilisateur:string;

    constructor() {}

    setValue(utilisateur) {
        this.utilisateur = utilisateur;
    }

    getValue() {
        return this.utilisateur;
    }
}