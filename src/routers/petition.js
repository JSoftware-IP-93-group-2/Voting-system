'use strict';

const Petition = require('../db/models/petition');
const express = require('express');
const { response } = require('express');
const { queries } = require('../db/resources');
const router = express.Router();

// create
router.post('/create', async (req, res) => {
  try {
    const { name, description, author_user_id, start_date, end_date } = req.body;
    const result = Petition.create(name, description, author_user_id, start_date, end_date);
    res.json(result);
  } catch (error) {
    console.log(error);
  }
});

//get info for petition
router.get('/:idPetition', async (req, res) => {
  const idPetition = req.params.idPetition;
  try {
    const result = await Petition.getInfo(idPetition);
    res.json(result);
  } catch(e) {
    res.status(500);
    res.json(e);
  }
})

// get result
router.get('/:idPetition/resultGeneral', async (req, res) => {
  try {
    const idPetition = req.params.idPetition;
    const result = await Petition.result(idPetition);
    res.json(result);
  } catch (error) {
    console.log(error);
  }
});

// get all
router.get('/all', async (req, res) => {
  try {
    const result = await Petition.getAll();
    res.json(result);
  } catch (error) {
    console.log(error);
  }
});

router.get('/:idPetition/resultDistrict', async (req, res) => {
  try {
    const idPetition = req.params.idPetition;
    const idDistrict = req.body.idDistrict;
    const result = await Petition.resultDistrict(idPetition, idDistrict);
    res.json(result);
  } catch (error) {
    console.log(error);
  }
});

module.exports = router;