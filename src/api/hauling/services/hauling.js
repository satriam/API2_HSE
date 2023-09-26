'use strict';

/**
 * hauling service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::hauling.hauling');
