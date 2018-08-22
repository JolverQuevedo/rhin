select * from POS where PO = '215-203'
select * from ofi_pos where OFI = '00005486' and PO= '215-203'
select * from ofis where codigo = '000005486'


delete OFI_POS where PO= '215-203' and OFI = '00005486'
update POS set OFI = null where PO = '215-203'
