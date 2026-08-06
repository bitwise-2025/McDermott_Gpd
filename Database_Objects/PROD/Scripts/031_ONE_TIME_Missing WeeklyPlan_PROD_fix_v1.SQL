--Update Typo code
update gpd.reprocess_NCSA_Work_Plan
set IWP='997-EL01-162'
where rssk=215
and ProjectNumber='99236910'


--Cleanup older records that have been approved for removal

DELETE from gpd.reprocess_NCSA_Work_Plan
where rssk in (173,627,567)
and ProjectNumber='99236910'