'use strict';

const express = require('express');
const { 
  makeRequest, 
  authorizate, 
  checkedRequest, 
  processLimit, 
  tokenDecoder,
  makeQuery
} = require('../db/resources');
const queries = require('../resources/queries.json');
const order = require('../resources/order.json');
const router = express.Router();

//create voting
router.post('/create', async (req, res) => {
  const reqData = {
    req, res,
    query: queries['Voting.create'],
    queryParamsOrder: order['Voting.create']
  };
  const userInfo = await authorizate(res, req.query.token);
  if (Object.prototype.hasOwnProperty.call(userInfo, 'user_id')) {
    const expectedStatus = 1;
    await checkedRequest(res, expectedStatus, userInfo.status, reqData);
  }
});

// get all votings
router.get('/all', async (req, res) => {
  processLimit(req);
  const searchText = req.query.searchText;
  const query = searchText ? 
    queries['Voting.getAllBySearch'] : queries['Voting.getAll']
  const queryParamsOrder = searchText ? 
    order['Voting.getAllBySearch'] : order['Voting.getAll']
  const reqData = {
    req, res,
    query,
    queryParamsOrder,
  };
  await makeRequest(reqData);
});

// get current votings
router.get('/current', async (req, res) => {
  processLimit(req);
  const searchText = req.query.searchText;
  const query = searchText ? 
    queries['Voting.getCurrentBySearch'] : queries['Voting.getCurrent']
  const queryParamsOrder = searchText ? 
    order['Voting.getCurrentBySearch'] : order['Voting.getCurrent']
  const reqData = {
    req, res,
    query,
    queryParamsOrder,
  };
  await makeRequest(reqData);
});

// get variants for specific voting
router.get('/:voting_id/variants', async (req, res) => {
  const reqData = {
    req, res,
    query: queries['Voting.getVariants'],
    queryParamsOrder: order['Voting.getVariants'],
  };
  await makeRequest(reqData);
});

// get result general
router.get('/:voting_id/resultGeneral', async (req, res) => {
  const reqData = {
    req, res,
    query: queries['Voting.result'],
    queryParamsOrder: order['Voting.result'],
  };
  await makeRequest(reqData);
});

// get result by district
router.get('/:voting_id/resultDistrict', async (req, res) => {
  const reqData = {
    req, res,
    query: queries['Voting.resultDistrict'],
    queryParamsOrder: order['Voting.resultDistrict'],
  };
  await makeRequest(reqData);
});

//get vote
router.get('/:voting_id/voteResult', async (req, res) => {
  const token = req.query.token || '';
  const decodedData = tokenDecoder(token);
  const { email } = decodedData;
  const queryData = {
    query: `SELECT user_id FROM users WHERE users.email = $1`,
    queryParams: [email]
  };
  const result = await makeQuery(queryData);
  const user = result[0];
  if (req.query.user_id !== user.user_id) {
    res.status(401).send('You can not get this info');
    return;
  }
  const reqData = {
    req, res,
    query: queries['Voting_results.getVote'],
    queryParamsOrder: order['Voting_results.getVote']
  };
  await makeRequest(reqData);
});

//vote
router.post('/:voting_id/vote', async (req, res) => {
  const token = req.query.token || '';
  const decodedData = tokenDecoder(token);
  const { email } = decodedData;
  const queryData = {
    query: `SELECT user_id FROM users WHERE users.email = $1`,
    queryParams: [email]
  };
  const result = await makeQuery(queryData);
  const user = result[0];
  if (req.query.user_id !== user.user_id) {
    res.status(401).send('You can not get this info');
    return;
  }
  const reqData = {
    req, res,
    query: queries['Voting_results.addVote'],
    queryParamsOrder: order['Voting_results.addVote']
  };
  const userInfo = await authorizate(res, req.query.token);
  if (Object.prototype.hasOwnProperty.call(userInfo, 'user_id')) {
    await makeRequest(reqData);
  }
});

// get specific voting
router.get('/:voting_id', async (req, res) => {
  const reqData = {
    req, res,
    query: queries['Voting.getInfo'],
    queryParamsOrder: order['Voting.getInfo'],
  };
  await makeRequest(reqData);
});

module.exports = router;
