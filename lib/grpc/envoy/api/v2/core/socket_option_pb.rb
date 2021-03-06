# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: envoy/api/v2/core/socket_option.proto

require 'google/protobuf'

require 'udpa/annotations/migrate_pb'
require 'udpa/annotations/status_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("envoy/api/v2/core/socket_option.proto", :syntax => :proto3) do
    add_message "envoy.api.v2.core.SocketOption" do
      optional :description, :string, 1
      optional :level, :int64, 2
      optional :name, :int64, 3
      optional :state, :enum, 6, "envoy.api.v2.core.SocketOption.SocketState"
      oneof :value do
        optional :int_value, :int64, 4
        optional :buf_value, :bytes, 5
      end
    end
    add_enum "envoy.api.v2.core.SocketOption.SocketState" do
      value :STATE_PREBIND, 0
      value :STATE_BOUND, 1
      value :STATE_LISTENING, 2
    end
  end
end

module Envoy
  module Api
    module V2
      module Core
        SocketOption = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("envoy.api.v2.core.SocketOption").msgclass
        SocketOption::SocketState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("envoy.api.v2.core.SocketOption.SocketState").enummodule
      end
    end
  end
end
