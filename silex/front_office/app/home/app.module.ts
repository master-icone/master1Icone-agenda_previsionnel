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
import { VueGlobaleComponent } from '../components/vueGlobale/vueGlobale.component';

@NgModule({
  imports: [
    BrowserModule,
    FormsModule,
    RouterModule.forRoot([
      { path: '', redirectTo: '/vueGlobale', pathMatch:'full' },
      { path: 'affecterHeure', component: AffecterHeureComponent },
      { path: 'description', component: DescriptionProfComponent },
      { path: 'listeHeureAffecter', component: ListeHeureAffecterComponent },
      { path: 'planningProf', component: PlanningProfComponent },
      { path: 'vueGlobale', component: VueGlobaleComponent }
    ])
  ],
  declarations: [ AppComponent, ToolbarComponent, NavbarComponent,
  DescriptionProfComponent, AffecterHeureComponent,
  ListeHeureAffecterComponent, PlanningProfComponent, VueGlobaleComponent ],
  bootstrap:    [ AppComponent ]
})
export class AppModule { }
