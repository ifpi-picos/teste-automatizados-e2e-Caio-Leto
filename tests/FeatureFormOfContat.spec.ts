import { test, expect } from '@playwright/test';

test('test', async ({ page }) => {
  await page.goto('https://inclua2.ipea.gov.br/contato');
  await page.getByRole('button', { name: 'Enviar' }).click();
  await page.locator('input[name="name"]').click();
  await page.locator('input[name="name"]').fill('User Invalid');
  await page.locator('input[name="email"]').click();
  await page.locator('input[name="email"]').fill('nobody@email.com');
  await page.locator('input[name="cel"]').click();
  await page.locator('input[name="cel"]').fill('(33) 3333-33333');
  await page.locator('input[name="whatsapp"]').click();
  await page.locator('input[name="whatsapp"]').fill('(33) 3333-33333');
  await page.locator('textarea[name="mensagem"]').click();
  await page.locator('textarea[name="mensagem"]').fill('test');
  await page.getByRole('button', { name: 'Enviar' }).click();
  await page.getByText('Processando').click();
  await page.getByText('Ocorreu um erro. Tente novamente!').nth(1).click();
});