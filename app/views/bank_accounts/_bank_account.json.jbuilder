json.extract! bank_account, :id, :bank_name, :bank_account_no, :account_type, :personal_detail_id, :created_at, :updated_at
json.url bank_account_url(bank_account, format: :json)
