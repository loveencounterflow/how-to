
'use strict'


############################################################################################################
# njs_util                  = require 'util'
# njs_path                  = require 'path'
# njs_fs                    = require 'fs'
#...........................................................................................................
GUY                       = require '../../../apps/guy'
{ alert
  debug
  help
  info
  plain
  praise
  urge
  warn
  whisper }               = GUY.trm.get_loggers 'MEMORY-USAGE-ALERTER'
{ rpr
  inspect
  echo
  log     }               = GUY.trm
rvr                       = GUY.trm.reverse
CP                        = require 'child_process'
NOTIFIER                  = require 'node-notifier'
# unless ( uid = process.argv[ 2 ] ? null )?
#   throw new Error "^memory-usage-alerter^ must give user as first argument"

#-----------------------------------------------------------------------------------------------------------
@notify_warn = ( message ) ->
  # path = PATH.relative process.cwd(), path
  # process.setuid uid
  settings =
    title:    "🔴🔴🔴 RAM  🔴🔴🔴"
    message:  message
    wait:     false
  NOTIFIER.notify settings

#-----------------------------------------------------------------------------------------------------------
@sync = ->
  process.setuid 'root'
  debug CP.execSync 'echo 3 >> /proc/sys/vm/drop_caches', { encoding: 'utf-8', }

#-----------------------------------------------------------------------------------------------------------
@demo = ->
  ### thx to https://github.com/sebhildebrandt/systeminformation/blob/master/lib/memory.js#L79
  (commit a2c76a198c33f8b1019bf4af0b047528804f5574 2022 07 14) ###
  report      = CP.execSync 'free', { encoding: 'utf-8', }
  { total
    used
    free  }   = ( report.match /^.+\n\S+\s+(?<total>[0-9]+)\s+(?<used>[0-9]+)\s+(?<free>[0-9]+)/ ).groups
  total       = parseInt total, 10
  used        = parseInt used,  10
  free        = parseInt free,  10
  ratio       = ( used / total ) * 100
  free_ratio  = ( free / total ) * 100
  message     = "RAM usage: #{ratio.toFixed 1}%"
  # debug free + used
  # debug total - ( free + used )
  # debug { total, used, ratio, free_ratio, }
  if ratio > 75
    # @sync()
    warn rvr message
    @notify_warn message
  else
    help message
  GUY.async.after 10, => @demo()
  return null

############################################################################################################
unless module.parent?
  @demo()

  ###
  MemTotal:        3442252 kB
  MemFree:          160728 kB
  MemAvailable:     437192 kB

  good:

  MemTotal:        3442252 kB
  MemFree:          542160 kB
  MemAvailable:     672724 kB

  critical:
  MemTotal:        3442252 kB
  MemFree:          123804 kB
  MemAvailable:     220984 kB

  MemTotal:        3442252 kB
  MemFree:          311656 kB
  MemAvailable:     564864 kB
  Buffers:           55736 kB
  Cached:           427812 kB

                total        used        free      shared  buff/cache   available
  Mem:        3442252     2541852      336820       63468      563580      599452
  Swap:       2097148     1165312      931836


  ###

  # debug ( 160728 / 3442252 * 100 ).toFixed 0
  # debug ( 437192 / 3442252 * 100 ).toFixed 0
  # debug()
  # debug ( 542160 / 3442252 * 100 ).toFixed 0
  # debug ( 672724 / 3442252 * 100 ).toFixed 0
  # debug()
  # debug ( 123804 / 3442252 * 100 ).toFixed 0
  # debug ( 220984 / 3442252 * 100 ).toFixed 0
  # debug()
  # debug ( 2541852 / 3442252 * 100 ).toFixed 0
  # debug()
  # debug 3442252 * 0.68
