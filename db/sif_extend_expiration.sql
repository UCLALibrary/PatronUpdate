exec vger_support.lws_patron.insert_extend_exp_sif;
select sif_record from vger_report.patron_sif where processed is null order by sif_id;
