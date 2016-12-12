import { platformBrowserDynamic } from '@angular/platform-browser-dynamic';
import { AppModule } from './home/app.module';
const platform = platformBrowserDynamic();
platform.bootstrapModule(AppModule);
