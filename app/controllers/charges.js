'use strict';

const controller = require('lib/wiring/controller');
const models = require('app/models');
const Charge = models.charge;

const authenticate = require('./concerns/authenticate');
// const setUser = require('./concerns/set-current-user');
// const setModel = require('./concerns/set-mongoose-model');

const create = (req, res) => {
  let charge = Object.assign(req.body, {
    _owner: req.user._id,
  });
  Charge.create(charge)
    .then(() => {
      res.sendStatus(201);
    })
    .catch(() => {
      res.sendStatus(401);
    });
};

module.exports = controller({
  create,
}, { before: [
  { method: authenticate, only: ['create'] },
], }
);
