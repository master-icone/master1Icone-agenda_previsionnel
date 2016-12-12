import { Component, OnInit } from '@angular/core';
import { HttpService } from '../../services/http.service';

@Component({
  selector: 'problemes',
  templateUrl: '../../../app/components/problemes/problemes.html',
  providers: [HttpService]
})

export class ProblemesComponent {
  link = 'http://localhost:3000/problemes';
  problemes: any;

  constructor (private _httpService: HttpService) { }

  ngOnInit() {
    this.getProblemes();
  }

  getProblemes() {
    this._httpService.httpGet(this.link)
        .subscribe(
          data => {
            this.problemes = data;
          },
          error => alert(error),
          () => console.log("Finished")
        );
  }
}
