pragma solidity ^0.4.16;

contract okrFactory {

  uint currentPeriod;
  uint objectiveCounter;
  uint projectCounter;
  uint roleCounter;

  struct objective{
    uint id; //Unique identifier for the objective; should just be an integer
    string name;
    string description;
    string successCriteria;
    uint allocation;
    uint period; //To be the period within which the Objective is being set; periods will start at 1
  }
  struct project{
    uint id;
    string name;
    string description;
    string successCriteria;
    uint allocation;
    uint period; //To be the period within which the Project is being set; periods will start at 1; must match the period of the Objective
  }
  struct role{
    uint id;
    string name;
    string description;
    string successCriteria;
    uint allocation;
    uint period; //To be the period within which the Role is being set; periods will start at 1; must match the period of the Project
  }

  function updatePeriod () {
    currentPeriod = currentPeriod + 1;
  }

  function createObjective (
    string name, string description, string successCriteria
    ) {


  }

  function createKeyResult (
    string name, string description, string successCriteria

    ) {

  }

  function createProject (
    string name, string description, string successCriteria

    ) {

  }

  function createRole (

    ) {

  }

  function allocateObjective (

    ) {

  }

  function allocateProject (

    ) {

  }

  function allocateRole (

    ) {

  }

}
