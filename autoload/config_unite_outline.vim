function! config_unite_outline#closest_tag()
   if exists('b:unite')
      return ''
   endif

   if g:unite_outline_should_update
      silent let candidates = unite#get_candidates([['outline', '!']])
   else
      silent let candidates = unite#get_candidates(['outline'])
   endif

   let g:unite_outline_should_update = 0

   if empty(candidates)
      return ''
   endif

   let curline = line('.')
   let prevtag = ''
   let prevword = ''
   let accscope = ''

   for candidate in candidates
      if candidate.action__line > curline
         break
      endif

      if prevword != '' && candidate.action__signature =~ prevword
         let accscope = accscope == '' ? prevword : accscope . '#' . prevword
         let prevtag = accscope . '#' . candidate.abbr
      else
         let accscope = ''
         let prevtag = candidate.abbr
      endif

      let prevword = candidate.word
   endfor


   return prevtag
endfunction
