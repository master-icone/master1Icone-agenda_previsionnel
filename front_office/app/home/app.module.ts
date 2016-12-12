// Module de base du projet
import { NgModule }      from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule }   from '@angular/forms';
import { RouterModule }   from '@angular/router';
import { HttpModule } from '@angular/http';

// Gestionnaire d'inclusion de component
import { AppComponent }   from './app.component';

// Banniere et menu supérieur
import { ToolbarComponent } from '../shared/toolbar/toolbar.component';
import { NavbarComponent } from '../shared/navbar/navbar.component';

// Page du projet
import { AuthentificationComponent } from '../components/authentification/authentification.component';
import { AccueilComponent } from '../components/accueil/accueil.component';
import { InterventionsComponent } from '../components/interventions/interventions.component';
import { DechargesComponent } from '../components/decharges/decharges.component';
import { ProblemesComponent } from '../components/problemes/problemes.component';
import { GererPersonnelComponent } from '../components/gererPersonnel/gererPersonnel.component';
import { GererUEComponent } from '../components/gererUE/gererUE.component';
import { GererStatutsComponent } from '../components/gererStatuts/gererStatuts.component';
import { GererDroitsComponent } from '../components/gererDroits/gererDroits.component';

import { AjoutProfUEComponent } from '../components/ajoutProfUE/ajoutProfUE.component';

// Module primeng
import {InputTextModule} from 'primeng/primeng';
import {DataTableModule,SharedModule} from 'primeng/primeng';

@NgModule({
  imports: [
    BrowserModule,
    FormsModule,
    HttpModule,
    InputTextModule,
    DataTableModule,
    SharedModule,
    RouterModule.forRoot([
      { path: '', redirectTo: '/authentification', pathMatch:'full' },
      { path: 'authentification', component: AuthentificationComponent },
      { path: 'accueil', component: AccueilComponent },
      { path: 'interventions', component: InterventionsComponent },
      { path: 'decharges', component: DechargesComponent },
      { path: 'problemes', component: ProblemesComponent },
      { path: 'gererPersonnel', component: GererPersonnelComponent },
      { path: 'gererPersonnel/:id', component: GererPersonnelComponent },
      { path: 'gererUE', component: GererUEComponent },
      { path: 'gererUE/:id', component: GererUEComponent },
      { path: 'ajoutProfUE', component: AjoutProfUEComponent },
      { path: 'gererStatuts', component: GererStatutsComponent },
      { path: 'gererStatuts/:id', component: GererStatutsComponent },
      { path: 'gererDroits', component: GererDroitsComponent }
    ])
  ],
  declarations: [ AppComponent, ToolbarComponent, NavbarComponent,
   AuthentificationComponent, AccueilComponent, InterventionsComponent,
   DechargesComponent, ProblemesComponent, GererPersonnelComponent,
   GererUEComponent, AjoutProfUEComponent, GererStatutsComponent,
   GererDroitsComponent ],
  bootstrap: [ AppComponent ]
})

export class AppModule { }
