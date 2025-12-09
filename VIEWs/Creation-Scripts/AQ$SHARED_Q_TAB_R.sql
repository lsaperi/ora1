CREATE OR REPLACE FORCE EDITIONABLE VIEW AQ$SHARED_Q_TAB_R (QUEUE, NAME, ADDRESS, PROTOCOL, RULE, RULE_SET, TRANSFORMATION) AS
  SELECT queue_name QUEUE, s.name NAME , address ADDRESS , protocol PROTOCOL, rule_condition RULE, ruleset_name RULE_SET, trans_name TRANSFORMATION  FROM AQ$_SHARED_Q_TAB_S s , sys.all_rules r WHERE (bitand(s.subscriber_type, 1) = 1) AND s.rule_name = r.rule_name and r.rule_owner = 'XX_DEV'  WITH READ ONLY;

