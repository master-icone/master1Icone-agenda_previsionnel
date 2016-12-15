import { Component, OnInit } from '@angular/core';
import { HttpService } from '../../services/http.service';

@Component({
  selector: 'accueil',
  templateUrl: '../../../app/components/accueil/accueil.html',
  styleUrls: ['../../../app/components/accueil/accueil.css'],
  providers: [HttpService]
})

export class AccueilComponent implements OnInit {
  linkI = 'http://localhost:3000/interventions';
  interventions: any;
  utilisateur: string;
  linkP = 'http://localhost:3000/problemes';
  problemes: any;

  constructor (private _httpService: HttpService) { }

  ngOnInit() {
    this.getInterventions();
    this.getProblemes();
  }

  getInterventions() {
    this._httpService.httpGet(this.linkI)
        .subscribe(
          data => {
            this.interventions = data;
          },
          error => alert(error),
          () => console.log("Finished")
        );
  }

  getProblemes() {
    this._httpService.httpGet(this.linkP)
        .subscribe(
          data => {
            this.problemes = data;
          },
          error => alert(error),
          () => console.log("Finished")
        );
  }
}
