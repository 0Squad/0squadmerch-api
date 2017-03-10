'use strict';

const controller = require('lib/wiring/controller');
const models = require('app/models');
const Charge = models.charge;

// const authenticate = require('./concerns/authenticate');
// const setUser = require('./concerns/set-current-user');
// const setModel = require('./concerns/set-mongoose-model');

const create = (req, res, next) => {
  console.log(req.body);

  let charge = Object.assign(req.body);
  Charge.create(charge)
    .then(charge =>
      res.status(201)
        .json({
          charge: charge.toJSON({ virtuals: true, user: req.user }),
        }))
    .catch(next);
};

module.exports = controller({
  create,
}
// }, { before: [
//   { method: setUser, only: ['index', 'show'] },
//   { method: authenticate, except: ['index', 'show'] },
//   { method: setModel(Charge), only: ['show'] },
//   { method: setModel(Charge, { forUser: true }), only: ['update', 'destroy'] },
// ], }
);
