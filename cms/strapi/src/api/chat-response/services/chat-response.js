'use strict';

/**
 * chat-response service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::chat-response.chat-response');
