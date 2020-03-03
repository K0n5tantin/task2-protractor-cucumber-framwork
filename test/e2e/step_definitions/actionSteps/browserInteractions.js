"use strict";
const { When } = require('cucumber');
const highlightElement = require('../utils/stepFunctions.js').highlightElement;
const logger = require('../../config/loggerConfig.js').logger;
const elementHelper = require('../utils/stepFunctions.js').getPageObjectElement;

When(/^I wait "([^"]*)" seconds$/, (waitTime) => {
    logger.info(`I wait ${waitTime} seconds`);
    return browser.sleep(waitTime * 1000);
});

When(/^I open "([^"]*)" url$/, (url) => {
    logger.info(`I open ${url} url`);
    return browser.get(url);
});

When(/^I maximize page/, () => {
    logger.info(`I maximize page`);
    return browser.manage().window().maximize();
});

When(/^I highlight "([^"]*)"$/, (alias) => {
    logger.info(`I highlight ${alias}`);
    return highlightElement(alias);
});

When(/^I input "([^"]*)" in "([^"]*)"$/, (stringInput, alias) => {
    logger.info(`I input ${stringInput} in ${alias}`);
    return elementHelper(alias).sendKeys(stringInput, protractor.Key.RETURN);
});