'use strict';

const mongoose = require('mongoose');

const productSchema = new mongoose.Schema({
  name: {
    type: String,
    required: true
  },
  description: {
    type: String,
    required: true
  },
  price: {
    type: Number,
    required: true
  },
  img: {
    type: String,
    required: true
  },
}, {
  timestamps: true,
  // toJSON: { virtuals: true },
});

// productSchema.virtual('sample').get(function length() {
//   return 'sample';
// });

const Product = mongoose.model('Product', productSchema);

module.exports = Product;
