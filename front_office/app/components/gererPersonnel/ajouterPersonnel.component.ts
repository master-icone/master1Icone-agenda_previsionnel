import { Component } from '@angular/core';
import { HttpService } from '../../services/http.service';
import { Router, ActivatedRoute } from '@angular/router';
import { CommunicateService } from '../../services/communicate.service';

@Component({
  selector: 'ajouterPersonnel',
  templateUrl: '../../../app/components/gererPersonnel/ajouterPersonnel.html',
  providers: [HttpService]
})

export class AjouterPersonnelComponent {
  link = 'http://localhost:3000/gererPersonnel';
  nom = "";
  prenom = "";
  heures = "";
  Statut = "";
  email = "";
  data: string;
  result: any;

  constructor (private _httpService: HttpService, private router: Router, private communicateService: CommunicateService) { }

  ajouterPersonnel() {
    this.data = 'nom='+this.nom+'&prenom='+this.prenom+'&heures='+this.heures+'&Statut='+this.Statut+'&email='+this.email;
    this._httpService.httpPost(this.link, this.data)
        .subscribe(
          data => {
            this.communicateService.setCheckParent();
            this.router.navigate(['./gererPersonnel'+'/'+data.id]);
          },
          error => {
            this.router.navigate(['./accueil']);
          },
          () => console.log("Finished")
        );
  }
}
