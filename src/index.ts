import { registerPlugin } from '@capacitor/core';

import type { machineidPlugin } from './definitions';

const machineid = registerPlugin<machineidPlugin>('machineid', {
  web: () => import('./web').then((m) => new m.machineidWeb()),
});

export * from './definitions';
export { machineid };
