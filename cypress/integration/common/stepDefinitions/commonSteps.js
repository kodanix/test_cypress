Given('I navigate to coospace', () => {
  cy.visit('https://www.coosp.etr.u-szeged.hu');
});
  
Then('I verify title of web page as {string}', (title) => {
  cy.title().should('include', title);
});

And('I click the EN button', () => {
  cy.get('#header1r > span > a:nth-child(2)').click()
})

Then('I verify the url of web page as {string}', (url) => {
  cy.url().should('eq', url)
});

And('I click the DE button', () => {
  cy.get('#header1r > span > a:nth-child(3)').click()
})

And('I click the HU button', () => {
  cy.get('#header1r > span > a:nth-child(1)').click()
})

And('I submit my Neptun code and password and click on login', () => {
  cy.get('#username').type('asd')
  cy.get('#password').type('asd1')
  cy.wait(5000)
  cy.get('#loginleft > div > div.inputs > input[type=submit]:nth-child(7)').click()
});

Then('Validate the page url as {string}', (title) => {
  cy.url().should('eq', title)
});

And('I click on the calendar menu', () => {
  cy.get('#header3 > ul > li.menu_calendar > a').click()
});

And('Type in the search input', () => {
  cy.get('#mainsearch_form > input[type=text]:nth-child(2)').type('Kovács Dániel')
                            .type('{enter}')
});

And('I click on the link', () => {
  cy.get('#sec_bigvmenu > ul > li > a').click()
});

And('I click on the folder menu', () => {
  cy.get('#header3 > ul > li.menu_folder > a').click()
});


