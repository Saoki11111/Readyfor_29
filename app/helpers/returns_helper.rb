module ReturnsHelper
  def return_count_options
    ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
     "11", "12", "13", "14", "15", "16", "17", "18", "19", "20",
      "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"]
  end

  def return_month_options
    ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10",
     "11", "12"]
  end

  def return_year_options
    ["2018", "2019", "2020", "2021", "2022", "2023","2024", "2025",
     "2026", "2027", "2028", "2029", "2030"]
  end

  def return_payment_page_url(project_id, return_id, payment_view)
    "/projects/#{project_id}/returns/#{return_id}/#{payment_view}"
  end
end
