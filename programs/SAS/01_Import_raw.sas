/*==========================================================
  Program : 01_import_raw.sas
  Purpose : Import synthetic raw clinical data
==========================================================*/

proc import
    datafile="&ROOT/data/raw/demographics.csv"
    out=RAW.DEMOGRAPHICS
    dbms=csv
    replace;
    guessingrows=max;
    getnames=yes;
run;


proc import
    datafile="&ROOT/data/raw/adverse_events.csv"
    out=RAW.AE
    dbms=csv
    replace;
    guessingrows=max;
    getnames=yes;
run;


proc import
    datafile="&ROOT/data/raw/vital_signs.csv"
    out=RAW.VS
    dbms=csv
    replace;
    guessingrows=max;
    getnames=yes;
run;


proc import
    datafile="&ROOT/data/raw/laboratory.csv"
    out=RAW.LB
    dbms=csv
    replace;
    guessingrows=max;
    getnames=yes;
run;


proc import
    datafile="&ROOT/data/raw/exposure.csv"
    out=RAW.EX
    dbms=csv
    replace;
    guessingrows=max;
    getnames=yes;
run;


proc import
    datafile="&ROOT/data/raw/concomitant_medications.csv"
    out=RAW.CM
    dbms=csv
    replace;
    guessingrows=max;
    getnames=yes;
run;


proc import
    datafile="&ROOT/data/raw/disposition.csv"
    out=RAW.DS
    dbms=csv
    replace;
    guessingrows=max;
    getnames=yes;
run;