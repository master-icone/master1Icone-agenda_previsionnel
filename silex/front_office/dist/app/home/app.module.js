"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
var core_1 = require("@angular/core");
var platform_browser_1 = require("@angular/platform-browser");
var forms_1 = require("@angular/forms");
var router_1 = require("@angular/router");
var toolbar_component_1 = require("../shared/toolbar/toolbar.component");
var navbar_component_1 = require("../shared/navbar/navbar.component");
var app_component_1 = require("./app.component");
var affecterHeure_component_1 = require("../components/affecterHeure/affecterHeure.component");
var descriptionProf_component_1 = require("../components/descriptionProf/descriptionProf.component");
var listeHeureAffecter_component_1 = require("../components/listeHeureAffecter/listeHeureAffecter.component");
var planningProf_component_1 = require("../components/planningProf/planningProf.component");
var vueGlobale_component_1 = require("../components/vueGlobale/vueGlobale.component");
var http_1 = require("@angular/http");
var primeng_1 = require("primeng/primeng");
var AppModule = (function () {
    function AppModule() {
    }
    return AppModule;
}());
AppModule = __decorate([
    core_1.NgModule({
        imports: [
            platform_browser_1.BrowserModule,
            forms_1.FormsModule,
            http_1.HttpModule,
            primeng_1.CalendarModule,
            router_1.RouterModule.forRoot([
                { path: '', redirectTo: '/vueGlobale', pathMatch: 'full' },
                { path: 'affecterHeure', component: affecterHeure_component_1.AffecterHeureComponent },
                { path: 'description', component: descriptionProf_component_1.DescriptionProfComponent },
                { path: 'listeHeureAffecter', component: listeHeureAffecter_component_1.ListeHeureAffecterComponent },
                { path: 'planningProf', component: planningProf_component_1.PlanningProfComponent },
                { path: 'vueGlobale', component: vueGlobale_component_1.VueGlobaleComponent }
            ])
        ],
        declarations: [app_component_1.AppComponent, toolbar_component_1.ToolbarComponent, navbar_component_1.NavbarComponent,
            descriptionProf_component_1.DescriptionProfComponent, affecterHeure_component_1.AffecterHeureComponent,
            listeHeureAffecter_component_1.ListeHeureAffecterComponent, planningProf_component_1.PlanningProfComponent, vueGlobale_component_1.VueGlobaleComponent],
        bootstrap: [app_component_1.AppComponent]
    }),
    __metadata("design:paramtypes", [])
], AppModule);
exports.AppModule = AppModule;
//# sourceMappingURL=app.module.js.map