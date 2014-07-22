#!/usr/bin/env ruby

# Shellshock by Daniel-Middleton.com
# Inspired by danielrehn and seanlinsley of GitHub.
# Usage: Add "ruby ~/shellshock.rb" to ".bash_logout" in your home directory.

begin

  # Method to display colours
  class String
    def colorize(color_code)
      "\e[#{color_code}m#{self}\e[0m"
    end
  end

  # Array of rainbow colours
  rainbow = Array.new
  rainbow.push('38;5;160;01')
  rainbow.push('38;5;196;01')
  rainbow.push('38;5;202;01')
  rainbow.push('38;5;208;01')
  rainbow.push('38;5;214;01')
  rainbow.push('38;5;220;01')
  rainbow.push('38;5;226;01')
  rainbow.push('38;5;190;01')
  rainbow.push('38;5;154;01')
  rainbow.push('38;5;118;01')
  rainbow.push('38;5;046;01')
  rainbow.push('38;5;047;01')
  rainbow.push('38;5;048;01')
  rainbow.push('38;5;049;01')
  rainbow.push('38;5;051;01')
  rainbow.push('38;5;039;01')
  rainbow.push('38;5;027;01')
  rainbow.push('38;5;021;01')
  rainbow.push('38;5;021;01')
  rainbow.push('38;5;057;01')
  rainbow.push('38;5;093;01')

  # Array of message lines
  message = Array.new
  message.push('  .d8888b.  8888888888 8888888888      Y88b   d88P  .d88888b.  888     888 ')
  message.push(' d88P  Y88b 888        888              Y88b d88P  d88P" "Y88b 888     888 ')
  message.push('  "Y888b.   8888888    8888888            Y888P    888     888 888     888 ')
  message.push('     "Y88b. 888        888                 888     888     888 888     888 ')
  message.push('       "888 888        888                 888     888     888 888     888 ')
  message.push(' Y88b  d88P 888        888                 888     Y88b. .d88P Y88b. .d88P ')
  message.push('  "Y8888P"  8888888888 8888888888          888      "Y88888P"   "Y88888P"  ')
  message.push('  .d8888b.  8888888b.     d8888  .d8888b.  8888888888                      ')
  message.push(' d88P  Y88b 888   Y88b   d88888 d88P  Y88b 888                             ')
  message.push('  "Y888b.   888   d88P d88P 888 888        8888888                         ')
  message.push('     "Y88b. 8888888P" d88P  888 888        888                             ')
  message.push('       "888 888      d88P   888 888    888 888                             ')
  message.push(' Y88b  d88P 888     d8888888888 Y88b  d88P 888                             ')
  message.push('  "Y8888P"  888    d88P     888  "Y8888P"  8888888888                      ')
  message.push('  .d8888b.   .d88888b.  888       888 888888b.    .d88888b. Y88b   d88P    ')
  message.push(' d88P  Y88b d88P" "Y88b 888   o   888 888  "88b  d88P" "Y88b Y88b d88P     ')
  message.push(' 888        888     888 888 d888b 888 8888888K.  888     888   Y888P       ')
  message.push(' 888        888     888 888d88888b888 888  "Y88b 888     888    888        ')
  message.push(' 888    888 888     888 88888P Y88888 888    888 888     888    888        ')
  message.push(' Y88b  d88P Y88b. .d88P 8888P   Y8888 888   d88P Y88b. .d88P    888        ')
  message.push('  "Y8888P"   "Y88888P"  888P     Y888 8888888P"   "Y88888P"     888        ')
  message.push('  .d8888b.  8888888888 8888888888      Y88b   d88P  .d88888b.  888     888 ')
  message.push(' d88P  Y88b 888        888              Y88b d88P  d88P" "Y88b 888     888 ')
  message.push('  "Y888b.   8888888    8888888            Y888P    888     888 888     888 ')
  message.push('     "Y88b. 888        888                 888     888     888 888     888 ')
  message.push('       "888 888        888                 888     888     888 888     888 ')
  message.push(' Y88b  d88P 888        888                 888     Y88b. .d88P Y88b. .d88P ')
  message.push('  "Y8888P"  8888888888 8888888888          888      "Y88888P"   "Y88888P"  ')
  message.push('  .d8888b.  8888888b.     d8888  .d8888b.  8888888888                      ')
  message.push(' d88P  Y88b 888   Y88b   d88888 d88P  Y88b 888                             ')
  message.push('  "Y888b.   888   d88P d88P 888 888        8888888                         ')
  message.push('     "Y88b. 8888888P" d88P  888 888        888                             ')
  message.push('       "888 888      d88P   888 888    888 888                             ')
  message.push(' Y88b  d88P 888     d8888888888 Y88b  d88P 888                             ')
  message.push('  "Y8888P"  888    d88P     888  "Y8888P"  8888888888                      ')
  message.push('  .d8888b.   .d88888b.  888       888 888888b.    .d88888b. Y88b   d88P    ')
  message.push(' d88P  Y88b d88P" "Y88b 888   o   888 888  "88b  d88P" "Y88b Y88b d88P     ')
  message.push(' 888        888     888 888 d888b 888 8888888K.  888     888   Y888P       ')
  message.push(' 888        888     888 888d88888b888 888  "Y88b 888     888    888        ')
  message.push(' 888    888 888     888 88888P Y88888 888    888 888     888    888        ')
  message.push(' Y88b  d88P Y88b. .d88P 8888P   Y8888 888   d88P Y88b. .d88P    888        ')
  message.push('  "Y8888P"   "Y88888P"  888P     Y888 8888888P"   "Y88888P"     888        ')

  col_i = 0

  message.each { |msg|

    puts msg.colorize(rainbow.at(col_i))

    if col_i < rainbow.length
      col_i += 1

    elsif col_i == rainbow.length
      rainbow = rainbow.reverse
      col_i = 0

    end
  }

rescue
  puts 'Error in shellshock.rb'
  exit(1)
end

exit(0)