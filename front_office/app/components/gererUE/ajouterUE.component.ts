import { Component } from '@angular/core';
import { HttpService } from '../../services/http.service';

@Component({
  selector: 'ajouterUE',
  providers: [HttpService],
  templateUrl: '../../../app/components/gererUE/ajouterUE.html'
})

export class AjouterUEComponent {
link = 'http://localhost:3000/gererUE';
listeUE: any;

constructor (private _httpService: HttpService) { }

ngOnInit() {
  this.getListeUE();
}

getListeUE() {
  this._httpService.httpGet(this.link)
      .subscribe(
        data => {
          this.listeUE = data;
        },
        error => alert(error),
        () => console.log("Finished")
      );
}

ajoutUE(unNumero, unLabel, unResponsable) {
  this._httpService.httpPost('http://localhost:3000/gererUE', 'numero='+unNumero+'&label='+unLabel+'&responsable='+unResponsable)
      .subscribe(data => {
          this.test = JSON.stringify(data);
        }, error => {
            console.log(JSON.stringify(error.json()));
        });
  this.getListeUE();
}
}
