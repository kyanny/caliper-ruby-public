require 'json'
require_relative './jsonable'
#
#  @author Prashant Nayak
#  @copyright @copyright ©2013 IMS Global Learning Consortium, Inc.  All Rights Reserved.
#  @license For license information contact, info@imsglobal.org
#
#
#  The base Caliper Entity.  Analogous to a schema.org Thing.
#
module Caliper
  module Entities
    module EntityType
      AGENT = "http://purl.imsglobal.org/caliper/v1/Agent"
      ATTEMPT = "http://purl.imsglobal.org/caliper/v1/Attempt"
      DIGITAL_RESOURCE = "http://purl.imsglobal.org/caliper/v1/DigitalResource"
      ENTITY = "http://purl.imsglobal.org/caliper/v1/Entity"
      GENERATED = "http://purl.imsglobal.org/caliper/v1/Generated"
      LEARNING_OBJECTIVE = "http://purl.imsglobal.org/caliper/v1/LearningObjective"
      LIS_PERSON = "http://purl.imsglobal.org/caliper/v1/lis/Person"
      LIS_ORGANIZATION = "http://purl.imsglobal.org/caliper/v1/lis/Organization"
      RESULT = "http://purl.imsglobal.org/caliper/v1/Result"
      SESSION = "http://purl.imsglobal.org/caliper/v1/Session"
      SOFTWARE_APPLICATION = "http://purl.imsglobal.org/caliper/v1/SoftwareApplication"
      TARGET = "http://purl.imsglobal.org/caliper/v1/Target"
      VIEW = "http://purl.imsglobal.org/caliper/v1/View"
    end

    class Entity
      include Caliper::Entities::Jsonable

      attr_accessor :id,
        :type,
        :name,
        :description,
        :properties,
        :date_created,
        :date_modified

      def initialize()
        @id = ""
        @type = EntityType::ENTITY
        @name = ""
        @description = ""
        @properties = ""
        @date_created = Time.now.utc
        @date_modified = Time.now.utc
      end

    end
  end
end