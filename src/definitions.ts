export interface machineidPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
