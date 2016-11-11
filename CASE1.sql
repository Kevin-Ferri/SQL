 --Case#1
 SELECT physician.physician_first_name, physician.physician_last_name, Building.building_name
 FROM physician
 INNER JOIN BUiLDING ON Physician.building_id=building.building_id
 WHERE Building_name='AGNES' OR Building_name='Palladius';