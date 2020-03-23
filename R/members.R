
chmp_members <- function(conn, list, fields = NULL, exclude_fields = NULL, 
                       count = NULL, offset = NULL, email_type = NULL, status = NULL, 
                       since_timestamp_opt = NULL, before_timestamp_opt = NULL, 
                       since_last_changed = NULL, before_last_changed = NULL, 
                       unique_email_id = NULL, vip_only = NULL, interest_category_id = NULL,
                       interest_ids = NULL, interest_match = NULL, sort_field = NULL, 
                       sort_dir = NULL, since_last_campaign = NULL, unsubscribed_since = NULL,
                       key = NULL, parse = TRUE, ...) {
  
  assert_is(parse, 'logical')
  chmp_parse(chmp_members_(conn, list, fields, exclude_fields, count, offset, 
                           email_type, status, since_timestamp_opt, before_timestamp_opt, 
                           since_last_changed, before_last_changed, unique_email_id, vip_only, 
                           interest_category_id, interest_ids, interest_match, sort_field, 
                           sort_dir, since_last_campaign, unsubscribed_since, key, 
                         args, ...), parse)
}

chmp_members_ <- function(conn, list_id, fields = NULL, exclude_fields = NULL, 
                          count = NULL, offset = NULL, email_type = NULL, status = NULL, 
                          since_timestamp_opt = NULL, before_timestamp_opt = NULL, 
                          since_last_changed = NULL, before_last_changed = NULL, 
                          unique_email_id = NULL, vip_only = NULL, interest_category_id = NULL,
                          interest_ids = NULL, interest_match = NULL, sort_field = NULL, 
                          sort_dir = NULL, since_last_campaign = NULL, unsubscribed_since = NULL,
                          key = NULL, ...) {
  
  assert_is(key, 'character')
  args <- ct(list(fields = fields, exclude_fields = exclude_fields, 
                  count = count, offset = offset, email_type = email_type, status = status, 
                  since_timestamp_opt = since_timestamp_opt, before_timestamp_opt = before_timestamp_opt, 
                  since_last_changed = since_last_changed, before_last_changed = before_last_changed, 
                  unique_email_id = unique_email_id, vip_only = vip_only, interest_category_id = interest_category_id,
                  interest_ids = interest_ids, interest_match = interest_match, sort_field = sort_field, 
                  sort_dir = sort_dir, since_last_campaign = since_last_campaign, unsubscribed_since = unsubscribed_since))
  
  chmp_GET(chmpConn$dc, paste("/lists/", list_id, "/members", sep=""), conn$key %||% key, query = args, ...)
}