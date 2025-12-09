BEGIN DBMS_AQADM.CREATE_QUEUE(
     Queue_name          => 'AQ$_SHARED_Q_TAB_E',
     Queue_table         => 'SHARED_Q_TAB',
     Queue_type          =>  1,
     dependency_tracking =>  FALSE,
     comment             => 'exception queue');
  END;

