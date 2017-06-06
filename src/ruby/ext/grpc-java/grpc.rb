require 'jbundler'

Struct.new 'Status', :code, :description
Struct.new 'BatchResult', :send_message, :send_metadata, :send_close,
           :send_status, :message, :metadata, :status, :cancelled

require 'core/call'
require 'core/call_credentials'
require 'core/call_error'
require 'core/call_ops'
require 'core/channel'
require 'core/channel_credentials'
require 'core/compression_options'
require 'core/connectivity_states'
require 'core/rpc_errors'
require 'core/server'
require 'core/server_credentials'
require 'core/status_codes'
require 'core/time_consts'
require 'core/time_spec'
require 'core/write_flags'
