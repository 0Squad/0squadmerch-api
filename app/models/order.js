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

orderSchema.virtual('orderPrice').get(function() {
  let total = 0;
  for (let i = 0; i < this.items.length; i++) {
    total += this.items[i].price * this.items[i].quantity;
  }
  return total;
});

const Order = mongoose.model('Order', orderSchema);

module.exports = Order;
