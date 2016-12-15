import { Component, OnInit, DoCheck } from '@angular/core';
import { HttpService } from '../../services/http.service';
import { CommunicateService } from '../../services/communicate.service';
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'modifierPersonnel',
  providers: [HttpService],
  templateUrl: '../../../app/components/gererPersonnel/modifierPersonnel.html'
})

export class ModifierPersonnelComponent {
  link = 'http://localhost:3000/gererPersonnel';
  id: any;
  nom = "";
  prenom = "";
  heures = "";
  statut = "";
  email = "";
  json: string;

  constructor (private _httpService: HttpService,
               params: ActivatedRoute,
               private router: Router,
               private communicateService: CommunicateService) {
    params.params.subscribe(params => {
        this.id = params['id'];
    });
    this.display();
  }

  display() {
    if(this.id) {
      this.getPersonnel(this.id);
    }
  }

  getPersonnel(id) {
    this._httpService.httpGet(this.link+"/"+id)
        .subscribe(
          data => {
            this.nom = data.nom;
            this.prenom = data.prenom;
            this.heures = data.heures;
            this.statut = data.statut;
            this.email = data.email;
          },
          error => {
            this.router.navigate(['./accueil']);
          },
          () => console.log("Finished")
        );
  }

  modifierPersonnel() {
    this.json = '{"nom":"'+this.nom+'","prenom":"'+this.prenom+'","heures":"'+this.heures+'","statut":"'+this.statut+'","email":"'+this.email+'"}';
    this._httpService.httpPut(this.link+'/'+this.id, this.json)
        .subscribe(
          data => {
            this.communicateService.setCheckParent();
            this.router.navigate(['./gererPersonnel'+'/'+data.id]);
          },
          error => alert(error),
          () => console.log("Finished")
        );
  }
}
