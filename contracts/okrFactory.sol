pragma solidity ^0.4.16;

contract Objective {
  uint id; //Unique identifier for the objective; should just be an integer
  string name;
  string description;
  string successCriteria;
  uint allocation;
  uint period; //To be the period within which the Objective is being set; periods will start at 1

  struct keyResult {
    uint id;
    string name;
    string description;
    uint dueDate;
    uint percentComplete;
  }

  mapping (uint => keyResult) keyResults;

  function getId () public constant returns (uint) {
    return(id);
  }

  function getName () public constant returns (string) {
    return(name);
  }

  function getDescription () public constant returns (string) {
    return(description);
  }

  function getSuccessCriteria () public constant returns (string) {
    return(successCriteria);
  }

  function getAllocation () public constant returns (uint) {
    return(allocation);
  }

  function getPeriod () public constant returns (uint) {
    return(period);
  }

}

contract Project {
  uint id; //Unique identifier for the objective; should just be an integer
  string name;
  string description;
  string successCriteria;
  uint allocation;
  uint period; //To be the period within which the Objective is being set; periods will start at 1

  function getId () public constant returns (uint) {
    return(id);
  }

  function getName () public constant returns (string) {
    return(name);
  }

  function getDescription () public constant returns (string) {
    return(description);
  }

  function getSuccessCriteria () public constant returns (string) {
    return(successCriteria);
  }

  function getAllocation () public constant returns (uint) {
    return(allocation);
  }

  function getPeriod () public constant returns (uint) {
    return(period);

}

contract Role {
  uint id; //Unique identifier for the objective; should just be an integer
  string name;
  string description;
  string successCriteria;
  uint allocation;
  uint period; //To be the period within which the Objective is being set; periods will start at 1

  function getId () public constant returns (uint) {
    return(id);
  }

  function getName () public constant returns (string) {
    return(name);
  }

  function getDescription () public constant returns (string) {
    return(description);
  }

  function getSuccessCriteria () public constant returns (string) {
    return(successCriteria);
  }

  function getAllocation () public constant returns (uint) {
    return(allocation);
  }

  function getPeriod () public constant returns (uint) {
    return(period);

}

contract OkrFactory {

  uint currentPeriod;
  uint objectiveCounter;
  uint projectCounter;
  uint roleCounter;

  address[] public objectives;
  address[] public projects;
  address[] public roles;

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

  mapping (address => objective) objectiveMap;
  mapping (address => project) projectMap;
  mapping (address => role) roleMap;


  function updatePeriod () {
    currentPeriod = currentPeriod + 1;
  }

  function createObjective (
    string name,
    string description,
    string successCriteria
    ) {
      var obj = new Objective;
      objectives.push(obj);
      return obj;

  }

  function createProject (
    string name, string description, string successCriteria

    ) {
      var proj = new Project;
      projects.push(proj);
      return proj;
  }

  function createRole (

    ) {
      var role = new Role;
      roles.push(role);
      return role;
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
