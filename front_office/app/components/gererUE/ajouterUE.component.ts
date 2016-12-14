import { Component } from '@angular/core';
import { HttpService } from '../../services/http.service';
import { Router, ActivatedRoute } from '@angular/router';
import { CommunicateService } from '../../services/communicate.service';

@Component({
  selector: 'ajouterUE',
  templateUrl: '../../../app/components/gererUE/ajouterUE.html',
  providers: [HttpService]
})

export class AjouterUEComponent {
  link = 'http://localhost:3000/gererUE';
  label = "";
  numero = "";
  responsable = "";
  cm = "";
  td = "";
  tp = "";
  data: string;
  result: any;

  constructor (private _httpService: HttpService, private router: Router, private communicateService: CommunicateService) { }

  ajouterUE() {
    this.data = 'label='+this.label+'&numero='+this.numero+'&responsable='+this.responsable+'&cm='+this.cm+'&td='+this.td+'&tp='+this.tp;
    this._httpService.httpPost(this.link, this.data)
        .subscribe(
          data => {
            this.communicateService.setCheckParent();
            this.router.navigate(['./gererUE'+'/'+data.id]);
          },
          error => {
            this.router.navigate(['./accueil']);
          },
          () => console.log("Finished")
        );
  }
}
