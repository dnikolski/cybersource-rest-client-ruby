=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  # Contains information about the buyer.
  class Riskv1decisionsBuyerInformation
    # Specifies the customer account user name.
    attr_accessor :username

    # The merchant's password that CyberSource hashes and stores as a hashed password.  For details about this field, see the `customer_password` field description in [Decision Manager Developer Guide Using the SCMP API.](https://www.cybersource.com/developers/documentation/fraud_management/) 
    attr_accessor :hashed_password

    # Recipient’s date of birth. **Format**: `YYYYMMDD`.  This field is a `pass-through`, which means that CyberSource ensures that the value is eight numeric characters but otherwise does not verify the value or modify it in any way before sending it to the processor. If the field is not required for the transaction, CyberSource does not forward it to the processor.  For more details, see `recipient_date_of_birth` field description in the [Credit Card Services Using the SCMP API Guide.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/wwhelp/wwhimpl/js/html/wwhelp.htm) 
    attr_accessor :date_of_birth

    attr_accessor :personal_identification

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'username' => :'username',
        :'hashed_password' => :'hashedPassword',
        :'date_of_birth' => :'dateOfBirth',
        :'personal_identification' => :'personalIdentification'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'username' => :'String',
        :'hashed_password' => :'String',
        :'date_of_birth' => :'String',
        :'personal_identification' => :'Array<Ptsv2paymentsBuyerInformationPersonalIdentification>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'username')
        self.username = attributes[:'username']
      end

      if attributes.has_key?(:'hashedPassword')
        self.hashed_password = attributes[:'hashedPassword']
      end

      if attributes.has_key?(:'dateOfBirth')
        self.date_of_birth = attributes[:'dateOfBirth']
      end

      if attributes.has_key?(:'personalIdentification')
        if (value = attributes[:'personalIdentification']).is_a?(Array)
          self.personal_identification = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@username.nil? && @username.to_s.length > 255
        invalid_properties.push('invalid value for "username", the character length must be smaller than or equal to 255.')
      end

      if !@hashed_password.nil? && @hashed_password.to_s.length > 100
        invalid_properties.push('invalid value for "hashed_password", the character length must be smaller than or equal to 100.')
      end

      if !@date_of_birth.nil? && @date_of_birth.to_s.length > 8
        invalid_properties.push('invalid value for "date_of_birth", the character length must be smaller than or equal to 8.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@username.nil? && @username.to_s.length > 255
      return false if !@hashed_password.nil? && @hashed_password.to_s.length > 100
      return false if !@date_of_birth.nil? && @date_of_birth.to_s.length > 8
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] username Value to be assigned
    def username=(username)
      if !username.nil? && username.to_s.length > 255
        fail ArgumentError, 'invalid value for "username", the character length must be smaller than or equal to 255.'
      end

      @username = username
    end

    # Custom attribute writer method with validation
    # @param [Object] hashed_password Value to be assigned
    def hashed_password=(hashed_password)
      if !hashed_password.nil? && hashed_password.to_s.length > 100
        fail ArgumentError, 'invalid value for "hashed_password", the character length must be smaller than or equal to 100.'
      end

      @hashed_password = hashed_password
    end

    # Custom attribute writer method with validation
    # @param [Object] date_of_birth Value to be assigned
    def date_of_birth=(date_of_birth)
      if !date_of_birth.nil? && date_of_birth.to_s.length > 8
        fail ArgumentError, 'invalid value for "date_of_birth", the character length must be smaller than or equal to 8.'
      end

      @date_of_birth = date_of_birth
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          username == o.username &&
          hashed_password == o.hashed_password &&
          date_of_birth == o.date_of_birth &&
          personal_identification == o.personal_identification
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [username, hashed_password, date_of_birth, personal_identification].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = CyberSource.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
