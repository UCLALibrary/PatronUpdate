exec vger_support.lws_patron.insert_new_sif;
exec vger_support.lws_patron.insert_address_change_sif;
exec vger_support.lws_patron.insert_lol_change_sif;
select sif_record from vger_report.patron_sif where processed is null order by sif_id;
