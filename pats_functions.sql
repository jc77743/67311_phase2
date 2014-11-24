-- FUNCTIONS AND TRIGGERS FOR PATS DATABASE
--
-- by (student_1) & (student_2)
--
--
-- calculate_total_costs
-- (associated with two triggers: update_total_costs_for_medicines_changes & update_total_costs_for_treatments_changes)




-- calculate_overnight_stay
-- (associated with a trigger: update_overnight_stay_flag)

CREATE OR REPLACE FUNCTION calculate_overnight_stay() RETURNS TRIGGER AS $$
DECLARE
total_minutes integer;
BEGIN

END;
$$ LANGUAGE plpgsql;

--will this fire on a visit insert, cuz the insert data throws an error for a nil overnight boolean?
CREATE TRIGGER update_overnight_stay_flag() AFTER INSERT OR UPDATE OR DELETE ON treatments
EXECUTE PROCEDURE calculate_overnight_stay();



-- set_end_date_for_medicine_costs
-- (associated with a trigger: set_end_date_for_previous_medicine_cost)




-- set_end_date_for_procedure_costs
-- (associated with a trigger: set_end_date_for_previous_procedure_cost)




-- decrease_stock_amount_after_dosage
-- (associated with a trigger: update_stock_amount_for_medicines)




-- verify_that_medicine_requested_in_stock
-- (takes medicine_id and units_needed as arguments and returns a boolean)




-- verify_that_medicine_is_appropriate_for_pet
-- (takes medicine_id and pet_id as arguments and returns a boolean)

