/*==========================================================
  Program : 02_review_raw.sas
  Purpose : Review raw clinical data
==========================================================*/

/* Demographics */

proc contents data=RAW.DEMOGRAPHICS;
run;

proc print data=RAW.DEMOGRAPHICS(obs=20);
run;

proc freq data=RAW.DEMOGRAPHICS;
    tables GENDER RACE ETHNICITY RAND_GROUP / missing;
run;

proc means data=RAW.DEMOGRAPHICS
           n nmiss mean std min median max;
    var AGE;
run;


/* Adverse Events */

proc contents data=RAW.AE;
run;

proc print data=RAW.AE(obs=20);
run;

proc freq data=RAW.AE;
    tables SEVERITY SERIOUS RELATIONSHIP OUTCOME / missing;
run;


/* Vital Signs */

proc contents data=RAW.VS;
run;

proc freq data=RAW.VS;
    tables VISIT/ missing;
run;

proc means data=RAW.VS
           n nmiss mean std min median max;
    var PULSE WEIGHT;
run;


/* Laboratory */

proc contents data=RAW.LB;
run;

proc freq data=RAW.LB;
    tables TEST UNIT / missing;
run;


/* Duplicate subject check */

proc sort data=RAW.DEMOGRAPHICS
          out=WORK.DM_CHECK
          nodupkey
          dupout=WORK.DM_DUP;
    by SUBJECT;
run;

proc print data=WORK.DM_DUP;
run;