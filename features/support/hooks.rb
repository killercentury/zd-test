After('@clear-local-storage') do
  page.execute_script("window.localStorage.clear()")
end