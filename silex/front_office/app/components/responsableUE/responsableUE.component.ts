import { Component, OnInit } from '@angular/core';
import { HttpService } from '../../services/http.service';

@Component({
  selector: 'responsableUE',
  templateUrl: '../../../app/components/responsableUE/responsableUE.html',
  providers: [HttpService]
})

export class ResponsableUEComponent {
  link = 'http://localhost:3000/cars';
  getData: any;


  constructor (private _httpService: HttpService) { }

  ngOnInit() {
    this.onTestGet();
  }

  onTestGet() {
    this._httpService.httpGet(this.link)
        .subscribe(
          data => {
            this.getData = data;
          },
          error => alert(error),
          () => console.log("Finished")
        );
  }
}
