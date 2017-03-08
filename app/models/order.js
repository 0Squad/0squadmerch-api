'use strict';

const mongoose = require('mongoose');

const orderSchema = new mongoose.Schema({
  items: {
    type: Array,
    default: [],
    required: true
  },
  complete: {
    type: Boolean,
    default: false
  },
  _owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true,
  },
}, {
  timestamps: true,
  toJSON: { virtuals: true }
});

// orderSchema.virtual('sample').get(function length() {
//   return 'sample';
// });

const Order = mongoose.model('Order', orderSchema);

module.exports = Order;
