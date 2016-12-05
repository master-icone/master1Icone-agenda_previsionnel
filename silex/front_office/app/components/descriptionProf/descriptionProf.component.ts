import { Component } from '@angular/core';
import { DescriptionProfService } from './descriptionProf.service';

@Component({
  selector: 'descriptionProf',
  template: `
    <button (click)="onTestGet()">Test</button><br />
    <p>Output: {{getData}}</p>
  `,
  providers: [DescriptionProfService]
})

export class DescriptionProfComponent {
  getData: string;


  constructor (private _httpService: DescriptionProfService) { }
  onTestGet() {
    this._httpService.getDate()
        .subscribe(
          data => this.getData = JSON.stringify(data),
          error => alert(error),
          () => console.log("Finished")
        );
  }
}
