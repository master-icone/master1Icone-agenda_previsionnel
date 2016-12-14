import { Component } from '@angular/core';
import { HttpService } from '../../services/http.service';
import { Router, ActivatedRoute } from '@angular/router';
import { CommunicateService } from '../../services/communicate.service';

@Component({
  selector: 'ajouterStatuts',
  templateUrl: '../../../app/components/gererStatuts/ajouterStatuts.html',
  providers: [HttpService, CommunicateService]
})

export class AjouterPersonnelComponent {
  link = 'http://localhost:3000/gererPersonnel';
  listePersonnel: any;
  personnel: any;
  id: any;
  test: string;

constructor (private _httpService: HttpService, params: ActivatedRoute) {
    params.params.subscribe(params => {
        this.id = params['id'];
    });
    this.change();
  }

  ajoutPersonnel() {
    this._httpService.httpPost('http://localhost:3000/gererPersonnel', 'nom=Assin&prenom=Marc&heure=200')
        .subscribe(data => {
            this.test = JSON.stringify(data);
          }, error => {
              console.log(JSON.stringify(error.json()));
          });
    this.getListePersonnel();
  }
}