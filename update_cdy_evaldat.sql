-- public.cdy_evaldat source

CREATE OR REPLACE VIEW public.cdy_evaldat
AS SELECT v.key AS meas_id,
    s.fname,
    s.snr,
    s.utlg,
    s.m_ix,
    s.datum,
    p.shrtname,
    p.propname,
    p.typ,
    p.propunit,
    s.s0,
    s.s1,
    s.s_wert,
    v.m_wert
   FROM cdy_msdat s,
    cdy_mvdat v,
    cdy_prop p
  WHERE s.korrektur::text = 'N'::text AND p.item_ix = s.m_ix 
  AND s.snr = v.snr AND s.utlg = v.utlg AND s.m_wert = v.m_wert 
  AND s.fname::text = v.fname::text AND s.datum = v.datum 
  AND s.m_ix = v.m_ix AND s.korrektur::text = v.korrektur::text 
  AND s.s0 = v.s0 AND s.s1 = v.s1;