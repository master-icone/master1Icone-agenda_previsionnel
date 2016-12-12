import { Component, OnInit } from '@angular/core';
import { HttpService } from '../../services/http.service';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'gererPersonnel',
  providers: [HttpService],
  templateUrl: '../../../app/components/gererPersonnel/gererPersonnel.html'
})

export class GererPersonnelComponent {
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

  ngOnInit() {
    this.getListePersonnel();
  }

  change() {
    if(this.id) {
      this.getPersonnel(this.id);
    }
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

  getListePersonnel() {
    this._httpService.httpGet(this.link)
        .subscribe(
          data => {
            this.listePersonnel = data;
          },
          error => alert(error),
          () => console.log("Finished")
        );
  }

  getPersonnel(id) {
    this._httpService.httpGet(this.link+"/"+id)
        .subscribe(
          data => {
            this.personnel = data;
          },
          error => alert(error),
          () => console.log("Finished")
        );
  }
}
