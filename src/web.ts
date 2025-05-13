import { WebPlugin } from '@capacitor/core';

import type { machineidPlugin } from './definitions';

export class machineidWeb extends WebPlugin implements machineidPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
