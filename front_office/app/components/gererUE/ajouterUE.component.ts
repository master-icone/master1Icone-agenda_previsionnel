import { Component } from '@angular/core';
import { HttpService } from '../../services/http.service';
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'ajouterUE',
  providers: [HttpService],
  templateUrl: '../../../app/components/gererUE/ajouterUE.html'
})

export class AjouterUEComponent {
  link = 'http://localhost:3000/gererUE';
  label: string;
  numero: string;
  responsable: string;
  cm: string;
  td: string;
  tp: string;
  data: string;

  constructor (private _httpService: HttpService, private router: Router) { }

  postData() {
    this.data = 'label='+this.label+'&numero='+this.numero+'&responsable='+this.responsable+'&cm='+this.cm+'&td='+this.td+'&tp='+this.tp;
    this._httpService.httpPost(this.link, this.data)
        .subscribe(
          data => { },
          error => alert(error),
          () => console.log("Finished")
        );
    this.router.navigate(['./gererUE']);
  }
}
