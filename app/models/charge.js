'use strict';

const mongoose = require('mongoose');

const chargeSchema = new mongoose.Schema({
  stripeToken: {
    type: String,
    required: true
  },
}, {
  timestamps: true
});


const Charge = mongoose.model('Charge', chargeSchema);

module.exports = Charge;
