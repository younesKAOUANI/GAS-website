'use strict';

/**
 * project-timing service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::project-timing.project-timing');
