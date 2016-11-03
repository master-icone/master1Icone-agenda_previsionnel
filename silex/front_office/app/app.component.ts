import { Component } from '@angular/core';
import { Prof } from './prof';

const PROFS: Prof[] = [
  {id: 1, name: 'dupont'},
  {id: 2, name: 'durant'},
  {id: 3, name: 'sagnier'}
];

@Component({
  selector: 'my-app',
  template: `
  <h1>{{title}}</h1>
  <ul>
    <li *ngFor="let prof of profs" (click)="onSelect(prof)"><h5>{{prof.name}}</h5></li>
  </ul>
  <div *ngIf="selectedProf">
    Details : {{selectedProf.id}}
  </div>
  <detail [prof]="selectedProf"></detail>
  `
})
export class AppComponent {
  title = 'Planif YOUR prof';
  profs = PROFS;
  selectedProf: Prof;

  onSelect(prof: Prof): void {
    this.selectedProf = prof;
  }
}
