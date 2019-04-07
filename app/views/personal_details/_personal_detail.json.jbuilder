json.extract! personal_detail, :id, :staff_name, :staff_nric, :staff_dob, :staff_sex, :staff_pob, :staff_race, :staff_religion, :staff_marital_status, :staff_perm_address, :staff_postcode, :staff_state, :staff_tel_no, :staff_hp_no, :staff_corr_address, :staff_employ_type, :created_at, :updated_at
json.url personal_detail_url(personal_detail, format: :json)
