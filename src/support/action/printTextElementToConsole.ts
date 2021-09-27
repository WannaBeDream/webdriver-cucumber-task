import { Selector } from 'webdriverio';

/**
 * Print text of element into console
 * @param  {String}   selector Element selector
 */
export default async (selector: Selector) => {
   console.log(await $(selector).getText());
};
