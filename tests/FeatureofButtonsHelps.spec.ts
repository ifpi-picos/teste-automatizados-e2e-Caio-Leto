import { test, expect } from '@playwright/test';

test('test', async ({ page }) => {
  
await page.goto('https://inclua2.ipea.gov.br/contato');
await page.getByRole('listitem').filter({ hasText: 'Dúvidas' }).click();
await page.getByRole('listitem').filter({ hasText: 'Problemas' }).click();
await page.getByRole('listitem').filter({ hasText: 'Sugestão' }).click();
await page.getByRole('listitem').filter({ hasText: 'Outros' }).click();
await page.getByText('Como podemos ajudar?').click();
await page.getByText('DúvidasProblemasSugestãoOutros').click();
});