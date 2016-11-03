import { Component } from '@angular/core';
import { Prof } from '../prof';

const PROFS: Prof[] = [
  {id: 1, name: 'dupont'},
  {id: 2, name: 'durant'},
  {id: 3, name: 'sagnier'}
];

@Component({
  selector: 'my-app',
  templateUrl: 'app/home/components.html'
})
export class AppComponent {
  title = 'Planif YOUR prof';
  profs = PROFS;
  selectedProf: Prof;

  onSelect(prof: Prof): void {
    this.selectedProf = prof;
  }
}
