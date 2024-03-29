-- /* POS 요청 전문 */
-- create table if not exists client_rx_transaction (
--     rx_id bigint generated by default as identity
--     , transaction_type varchar(255) /* APPROVAL, CANCEL, NETCANCEL */
--     , type1	varchar(255)
--     , m1	varchar(255)
--     , m2	varchar(255)
--     , site_cd	varchar(255)
--     , tid	varchar(255)
--     , organ_cd	varchar(255)
--     , pos_no	varchar(255)
--     , account_dt	varchar(255)
--     , wcc	varchar(255)
--     , track_ii	varchar(255)
--     , buyer_fg	varchar(255)
--     , inst_m	varchar(255)
--     , p_code	varchar(255)
--     , save_fg	varchar(255)
--     , svc	varchar(255)
--     , tax	varchar(255)
--     , total_amt	varchar(255)
--     , approval_dt	varchar(255)
--     , approval_no	varchar(255)
--     , approval_van	varchar(255)
--     , cancel_cause	varchar(255)
--     , passwd	varchar(255)
--     , person_nbr	varchar(255)
--     , cheq_cd	varchar(255)
--     , cheq_mn	varchar(255)
--     , cheq_no	varchar(255)
--     , cheq_dt	varchar(255)
--     , cheq_amt	varchar(255)
--     , cheq_bank	varchar(255)
--     , cheq_acnt	varchar(255)
--     , order_no	varchar(255)
--     , store_cd	varchar(255)
--     , customer_nm	varchar(255)
--     , product_nm	varchar(255)
--     , os_type	varchar(255)
--     , dummy_1	varchar(255)
--     , dummy_2	varchar(255)
--     , dummy_3	varchar(255)
--     , dummy_4	varchar(255)
--     , dummy_5	varchar(255)
--     , dummy_6	varchar(255)
--     , dummy_7	varchar(255)
--     , dummy_8	varchar(255)
--     , dummy_9	varchar(255)
--     , dummy_10	varchar(255)
--     , dummy_11	varchar(255)
--     , dummy_12	varchar(255)
--     , dummy_13	varchar(255)
--     , dummy_14	varchar(255)
--     , dummy_15	varchar(255)
--     , pos_enc_data	varchar(255)
--     , ic_chip_data	varchar(255)
--     , sign_head	varchar(255)
--     , sign_data	varchar(255)
--     , screening_dt	varchar(255)
--     , biz_no	varchar(255)
--     , cnt varchar(255)
--     , online_fg	varchar(255)
--     , dc_amt	varchar(255)
--     , dc_approval_no	varchar(255)
--     , dc_fg	varchar(255)
--     , section_id	varchar(255)
--     , member_no	varchar(255)
--     , session_key	varchar(255)
--     , encrypt_data	varchar(255)
--     , card_code	varchar(255)
--     , org_isp_tid	varchar(255)
--     , cavv	varchar(255)
--     , xid	varchar(255)
--     , eci	varchar(255)
--     , mall_bizid	varchar(255)
--     , mall_domain	varchar(255)
--     , user_ip	varchar(255)
--     , goods_name	varchar(255)
--     , merchant_info	varchar(255)
--     , currency_cd	varchar(255)
--     , cash_viss_cd	varchar(255)
--     , track_iii	varchar(255)
--     , ic_serial	varchar(255)
--     , ic_simplify	varchar(255)
--     , created_at timestamp default current_timestamp
--     , updated_at timestamp
--     , primary key (rx_id)
-- 	, constraint ck_transaction_type check (transaction_type in ('APPROVAL', 'CANCEL', 'NETCANCEL'))
-- );
--
-- /* KFTC 요청 전문 */
-- create table if not exists kftc_tx_transaction (
--     tx_id bigint generated by default as identity
-- 	, client_rx_id bigint not null
--     , transaction_type varchar(255) /* APPROVAL, CANCEL, NETCANCEL */
--     , tid_van	varchar(255)
--     , sign_data_decoding	varchar(255)
--     , sign_yn	varchar(255)
--     , tran_date	varchar(255)
--     , save_fg	varchar(255)
--     , app_dt_van	varchar(255)
--     , naco_cd	varchar(255)
--     , naco_nm	varchar(255)
--     , card_kind	varchar(255)
--     , iso	varchar(255)
--     , iso_header	varchar(255)
--     , msg_type	varchar(255)
--     , primary_bit	varchar(255)
--     , secondary_bitmap	varchar(255)
--     , tran_kind	varchar(255)
--     , membership_point1	varchar(255)
--     , membership_point2	varchar(255)
--     , jm_send_dt	varchar(255)
--     , shop_filler	varchar(255)
--     , seq	varchar(255)
--     , tran_time	varchar(255)
--     , product_cd	varchar(255)
--     , wcc_van	varchar(255)
--     , kikwan_cd_len	varchar(255)
--     , kikwan_cd	varchar(255)
--     , track_ii_len	varchar(255)
--     , track_ii	varchar(255)
--     , pg_info_len	varchar(255)
--     , pg_no	varchar(255)
--     , pg_domain	varchar(255)
--     , pg_ip_addr	varchar(255)
--     , tran_sn	varchar(255)
--     , res_cd	varchar(255)
--     , term_id	varchar(255)
--     , shop_id	varchar(255)
--     , bonus_msg	varchar(255)
--     , used_point	varchar(255)
--     , useable_point	varchar(255)
--     , remain_point	varchar(255)
--     , res_msg1	varchar(255)
--     , res_msg2	varchar(255)
--     , money_cd	varchar(255)
--     , pin	varchar(255)
--     , cash_ic_length	varchar(255)
--     , cash_ic_issue_cd	varchar(255)
--     , cash_ic_trackiii	varchar(255)
--     , cash_ic_encrypt_data	varchar(255)
--     , inst_m_len	varchar(255)
--     , inst_m	varchar(255)
--     , app_no_len	varchar(255)
--     , app_no_van	varchar(255)
--     , card_message_len	varchar(255)
--     , viss_nm	varchar(255)
--     , vaco_cd	varchar(255)
--     , card_msg	varchar(255)
--     , emv_data	varchar(255)
--     , cheq_len	varchar(255)
--     , cheq_bank	varchar(255)
--     , cheq_dt	varchar(255)
--     , cheq_no	varchar(255)
--     , cheq_mn	varchar(255)
--     , cheq_amt	varchar(255)
--     , cheq_seq	varchar(255)
--     , remain_amt	varchar(255)
--     , isp_visa_data	varchar(255)
--     , sign_data_len	varchar(255)
--     , sign_data	varchar(255)
--     , total_amt	varchar(255)
--     , wechat_len	varchar(255)
--     , wechat_trade_no	varchar(255)
--     , wechat_order_no	varchar(255)
--     , card_info_len	varchar(255)
--     , cash_viss_cd	varchar(255)
--     , cash_viss_nm	varchar(255)
--     , cash_viss_branch_cd	varchar(255)
--     , cash_account_no	varchar(255)
--     , cash_ledger_balance_cd	varchar(255)
--     , cash_ledger_balance	varchar(255)
--     , cash_remain_amt	varchar(255)
--     , cash_vaco_cd	varchar(255)
--     , cash_vaco_nm	varchar(255)
--     , cash_vaco_branch_cd	varchar(255)
--     , cash_charge_rate	varchar(255)
--     , cash_shop_charge	varchar(255)
--     , cash_viss_charge	varchar(255)
--     , cash_vaco_charge	varchar(255)
--     , created_at timestamp default current_timestamp
--     , updated_at timestamp
--     , primary key (tx_id)
-- 	, constraint fk_client_rx_id foreign key(client_rx_id) references client_rx_transaction(rx_id) on delete cascade on update cascade
-- 	, constraint ck_transaction_type check (transaction_type in ('APPROVAL', 'CANCEL', 'NETCANCEL'))
-- );
--
-- /* KFTC 응답 전문 */
-- create table if not exists kftc_rx_transaction (
--     rx_id bigint generated by default as identity
--     , tx_id bigint not null
--     , res_cd    varchar(255)
--     , res_msg   varchar(255)
--     , approval_no   varchar(255)
--     , approval_dt   varchar(255)
--     , approval_msg  varchar(255)
--     , created_at timestamp default current_timestamp
--     , updated_at timestamp
--     , primary key (rx_id)
-- 	, constraint fk_tx_id foreign key(tx_id) references kftc_tx_transaction(tx_id) on delete cascade on update cascade
-- );
-- /* POS 응답 전문 */
-- create table if not exists client_tx_transaction (
--     tx_id bigint generated by default as identity
--     , rx_id bigint not null
--     , res_cd	varchar(255)
--     , res_msg	varchar(255)
--     , seq	varchar(255)
--     , track_ii	varchar(255)
--     , approval_dt	varchar(255)
--     , approval_no	varchar(255)
--     , approval_van	varchar(255)
--     , viss_cd	varchar(255)
--     , viss_nm	varchar(255)
--     , vaco_cd	varchar(255)
--     , vaco_nm	varchar(255)
--     , shop_id	varchar(255)
--     , dc_point	varchar(255)
--     , valid_point	varchar(255)
--     , saved_point	varchar(255)
--     , dc_amt	varchar(255)
--     , pay_amt	varchar(255)
--     , new_point	varchar(255)
--     , old_point	varchar(255)
--     , used_point	varchar(255)
--     , useable_point	varchar(255)
--     , remain_point	varchar(255)
--     , dc_cnt	varchar(255)
--     , dc_approval_no	varchar(255)
--     , dc_fd	varchar(255)
--     , sk_dc_type	varchar(255)
--     , sk_approval_no	varchar(255)
--     , sk_dc_vip_r_cnt	varchar(255)
--     , sk_dc_vip_yn	varchar(255)
--     , sk_dc_norm_yn	varchar(255)
--     , sk_dc_cnt	varchar(255)
--     , sk_dc_couple_fg	varchar(255)
--     , sk_dc4couple_y_cnt	varchar(255)
--     , sk_dc4couple_d_cnt	varchar(255)
--     , sk_dc_level	varchar(255)
--     , sk_dc_halfday_fg	varchar(255)
--     , sk_club_yn	varchar(255)
--     , sk_club_cnt	varchar(255)
--     , section_id	varchar(255)
--     , member_no	varchar(255)
--     , isp_tid	varchar(255)
--     , cash_viss_cd	varchar(255)
--     , cash_viss_nm	varchar(255)
--     , cash_viss_branch_cd	varchar(255)
--     , cash_vaco_cd	varchar(255)
--     , cash_vaco_nm	varchar(255)
--     , cash_vaco_branch_cd	varchar(255)
--     , cash_charge_rate	varchar(255)
--     , cash_shop_charge	varchar(255)
--     , cash_viss_charge	varchar(255)
--     , cash_vaco_charge	varchar(255)
--     , cash_account_no	varchar(255)
--     , cash_ledger_balance_cd	varchar(255)
--     , cash_ledger_balance	varchar(255)
--     , cash_remain_amt	varchar(255)
--     , alipay_customer	varchar(255)
--     , alipay_cny	varchar(255)
--     , wechat_trade_no	varchar(255)
--     , wechat_order_no	varchar(255)
--     , created_at timestamp default current_timestamp
--     , updated_at timestamp
--     , primary key (tx_id)
--     , constraint fk_rx_id foreign key(rx_id) references client_rx_transaction(rx_id) on delete cascade on update cascade
-- );
--
--
-- /* update_at trigger*/
-- create or replace function update_modified_column()
-- returns trigger as $$
-- begin
--     new.updated_at = now();
--     return new;
-- end;
-- $$ language 'plpgsql';
-- create trigger update_client_rx_transaction_column_updated_at
-- before
-- update on client_rx_transaction
-- for each row execute procedure  update_modified_column();
-- create trigger update_client_tx_transaction_column_updated_at
-- before
-- update on client_tx_transaction
-- for each row execute procedure  update_modified_column();
-- create trigger update_kftc_rx_transaction_column_updated_at
-- before
-- update on kftc_rx_transaction
-- for each row execute procedure  update_modified_column();
-- create trigger update_kftc_tx_transaction_column_updated_at
-- before
-- update on kftc_tx_transaction
-- for each row execute procedure  update_modified_column();
--
--
