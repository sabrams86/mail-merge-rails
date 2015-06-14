class Home < ActiveRecord::Base

  def self.split_by_line(string)
    string.split(/\r\n/)
  end

  def self.split_by_comma(array)
    array.map do |e|
      e.split(/,/)
    end
  end

  def self.process_body(string)
    string.gsub(/\n/, '<br>')
  end

  def self.process(string, array)
    array.map do |e|
      string.gsub('{first}', e[0]).gsub('{last}', e[1]).gsub('{email}', e[2])
    end
  end

end
