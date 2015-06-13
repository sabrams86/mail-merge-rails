class Home < ActiveRecord::Base

  def self.splitByLine(string)
    return string.split(/\r\n/)
  end

  def self.splitByComma(array)
    return array.map do |e|
      e.split(/,/)
    end
  end

  def self.processBody(string)
    return string.gsub(/\n/, '<br>')
  end

  def self.process(string, array)
    return array.map do |e|
      string.gsub('{first}', e[0]).gsub('{last}', e[1]).gsub('{email}', e[2])
    end
  end

end
