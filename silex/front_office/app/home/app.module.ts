import { NgModule }      from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule }   from '@angular/forms';
import { RouterModule }   from '@angular/router';

import { ToolbarComponent } from '../shared/toolbar/toolbar.component';
import { NavbarComponent } from '../shared/navbar/navbar.component';
import { AppComponent }   from './app.component';
import { AffecterHeureComponent } from '../components/affecterHeure/affecterHeure.component';
import { DescriptionProfComponent } from '../components/descriptionProf/descriptionProf.component';
import { ListeHeureAffecterComponent } from '../components/listeHeureAffecter/listeHeureAffecter.component';
import { PlanningProfComponent } from '../components/planningProf/planningProf.component';
import { AccueilComponent } from '../components/accueil/accueil.component';
import { HttpModule } from '@angular/http';

import {CalendarModule} from 'primeng/primeng';

@NgModule({
  imports: [
    BrowserModule,
    FormsModule,
    HttpModule,
    CalendarModule,
    RouterModule.forRoot([
      { path: '', redirectTo: '/accueil', pathMatch:'full' },
      { path: 'affecterHeure', component: AffecterHeureComponent },
      { path: 'description', component: DescriptionProfComponent },
      { path: 'listeHeureAffecter', component: ListeHeureAffecterComponent },
      { path: 'planningProf', component: PlanningProfComponent },
      { path: 'accueil', component: AccueilComponent }
    ])
  ],
  declarations: [ AppComponent, ToolbarComponent, NavbarComponent,
  DescriptionProfComponent, AffecterHeureComponent,
  ListeHeureAffecterComponent, PlanningProfComponent, AccueilComponent ],
  bootstrap:    [ AppComponent ]
})
export class AppModule { }
