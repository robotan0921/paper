#extract_data.rb

#
#テキストファイルから実験結果のみを抽出する
#
def ex_data(input, output)
    outFile = File.open(output, 'w')
    File.open(input) do |f|
        f.each_line do |line|
            if line.include?("time")
                if /[\d]*[\d]/ =~ "#{line}" then
                    outFile.puts $&
                end
            end
        end
    end
    outFile.close
end

input = "Adapter_tcp_snd_dat.log"               #<------
output = "parsed_#{input}"

ex_data("#{input}", output)

dataFile = output
#
#

sheetNumber = 0                  #<-------
headerName = ""         #<-------

#
#Excel の操作
#
require 'rubyXL'

#
# xls = "ExecutionTime.xlsx"
xls = "Adapter.xlsx"
workbook = RubyXL::Parser.parse(xls)
worksheet = workbook[sheetNumber]

column = 3
row = 1
worksheet.add_cell(0, column, headerName)
File.open(dataFile) do |f|
    f.each_line do |line|
        worksheet.add_cell(row, column, "#{line.chomp}")
        row += 1
        # if /[\d]*[\d]/ =~ "#{line}" then
        #     worksheet.add_cell(raw, 0, $&)
        #     raw += 1
        # end
    end
end

workbook.write(xls)
