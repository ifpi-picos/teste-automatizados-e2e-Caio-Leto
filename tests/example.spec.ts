import { test, expect } from '@playwright/test';

test('has title', async ({ page }) => {
  await page.goto('https://inclua2.ipea.gov.br/contato');

  // Expect a title "to contain" a substring.
  await expect(page).toHaveTitle(/Playwright/);
});

test('get started link', async ({ page }) => {
  await page.goto('https://inclua2.ipea.gov.br/contato');

  // Click the get started link.
  await page.getByRole('link', { name: 'Get started' }).click();

  // Expects the URL to contain intro.
  await expect(page).toHaveURL(/.*intro/);
});
