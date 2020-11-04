# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: envoy/service/auth/v3/attribute_context.proto

require 'google/protobuf'

require 'envoy/config/core/v3/address_pb'
require 'envoy/config/core/v3/base_pb'
require 'google/protobuf/timestamp_pb'
require 'udpa/annotations/status_pb'
require 'udpa/annotations/versioning_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("envoy/service/auth/v3/attribute_context.proto", :syntax => :proto3) do
    add_message "envoy.service.auth.v3.AttributeContext" do
      optional :source, :message, 1, "envoy.service.auth.v3.AttributeContext.Peer"
      optional :destination, :message, 2, "envoy.service.auth.v3.AttributeContext.Peer"
      optional :request, :message, 4, "envoy.service.auth.v3.AttributeContext.Request"
      map :context_extensions, :string, :string, 10
      optional :metadata_context, :message, 11, "envoy.config.core.v3.Metadata"
    end
    add_message "envoy.service.auth.v3.AttributeContext.Peer" do
      optional :address, :message, 1, "envoy.config.core.v3.Address"
      optional :service, :string, 2
      map :labels, :string, :string, 3
      optional :principal, :string, 4
      optional :certificate, :string, 5
    end
    add_message "envoy.service.auth.v3.AttributeContext.Request" do
      optional :time, :message, 1, "google.protobuf.Timestamp"
      optional :http, :message, 2, "envoy.service.auth.v3.AttributeContext.HttpRequest"
    end
    add_message "envoy.service.auth.v3.AttributeContext.HttpRequest" do
      optional :id, :string, 1
      optional :method, :string, 2
      map :headers, :string, :string, 3
      optional :path, :string, 4
      optional :host, :string, 5
      optional :scheme, :string, 6
      optional :query, :string, 7
      optional :fragment, :string, 8
      optional :size, :int64, 9
      optional :protocol, :string, 10
      optional :body, :string, 11
      optional :raw_body, :bytes, 12
    end
  end
end

module Envoy
  module Service
    module Auth
      module V3
        AttributeContext = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("envoy.service.auth.v3.AttributeContext").msgclass
        AttributeContext::Peer = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("envoy.service.auth.v3.AttributeContext.Peer").msgclass
        AttributeContext::Request = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("envoy.service.auth.v3.AttributeContext.Request").msgclass
        AttributeContext::HttpRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("envoy.service.auth.v3.AttributeContext.HttpRequest").msgclass
      end
    end
  end
end
