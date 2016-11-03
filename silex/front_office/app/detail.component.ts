import { Component, Input } from '@angular/core';
import { Prof } from './prof';

@Component({
  selector: 'detail',
  template: `<h1>vue detaillé</h1>
    <input [(ngModel)]="prof.name" placeholder="name"/>`
})

export class DetailComponent {
  @Input()
  prof: Prof;
}
