constant mt = {{'A',0},{'C',0},{'G',0},{'T',0}}

global function counts(sequence nucleotides)
  integer d = new_dict(mt)
  for n in nucleotides do
    if getd_index(n,d)==NULL then return false end if
    setd(n,getd(n,d)+1,d)
  end for
  sequence res = pairs(d)
  destroy_dict(d)
  return res
end function

