import { Component } from '@angular/core';
import { HttpService } from '../../services/http.service';

@Component({
  selector: 'gererDroits',
  templateUrl: '../../../app/components/gererDroits/gererDroits.html',
  providers: [HttpService]
})

export class GererDroitsComponent {

  // Url des méthodes GET, POST, PUT et DELETE
  urlGet = 'http://ip.jsontest.com/';
  urlPost = 'http://localhost:3000/gererPersonnel';
  urlPut = 'http://localhost:3000/gererPersonnel/1';
  urlDelete = 'http://localhost:3000/gererPersonnel';

  // Parametre des méthodes GET, POST, PUT et DELETE
  dataPost = 'nom=Dupont&prenom=Jean';
  dataPut = '{"nom":"dupont","prenom":"jean","heures":200}';
  idDelete = 5;

  //Resultat des méthodes GET, POST, PUT et DELETE
  resultGet: string;
  resultPost: string;
  resultPut: string;
  resultDelete: string;

  constructor (private _httpService: HttpService) { }

  getData() {
    this._httpService.httpGet(this.urlGet)
        .subscribe(
          data => {
            this.resultGet = JSON.stringify(data);
            alert("Valider !");
          },
          error => alert(error),
          () => console.log("Finished")
        );
  }

  postData() {
    this._httpService.httpPost(this.urlPost, this.dataPost)
        .subscribe(
          data => {
            this.resultPost = JSON.stringify(data);
            alert("Valider !");
          },
          error => alert(error),
          () => console.log("Finished")
        );
  }

  putData() {
    this._httpService.httpPut(this.urlPut, this.dataPut)
        .subscribe(
          data => {
            this.resultPut = JSON.stringify(data);
            alert("Valider !");
          },
          error => alert(error),
          () => console.log("Finished")
        );
  }

  deleteData() {
    this._httpService.httpDelete(this.urlDelete)
        .subscribe(
          data => {
            this.resultDelete = JSON.stringify(data);
            alert("Valider !");
          },
          error => alert(error),
          () => console.log("Finished")
        );
  }
}
