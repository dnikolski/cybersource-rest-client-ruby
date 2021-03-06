=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class Riskv1authenticationresultsConsumerAuthenticationInformation
    # Identifies the UI Type the ACS will use to complete the challenge. **NOTE**: Only available for App transactions using the Cardinal Mobile SDK. 
    attr_accessor :acs_rendering_type

    # Unique transaction identifier assigned by the ACS to identify a single transaction. 
    attr_accessor :acs_transaction_id

    # Payer authentication transaction identifier passed to link the check enrollment and validate authentication messages. **Note**: Required for Standard integration for enroll service. Required for Hybrid integration for validate service. 
    attr_accessor :authentication_transaction_id

    # Indicates the type of authentication that will be used to challenge the card holder.  Possible Values:  01 - Static  02 - Dynamic  03 - OOB (Out of Band)  04 - Decoupled **NOTE**:  EMV 3-D Secure version 2.1.0 supports values 01-03.  Version 2.2.0 supports values 01-04.  Decoupled authentication is not supported at this time. 
    attr_accessor :authentication_type

    # An indicator as to why the transaction was canceled. Possible Values:  - `01`: Cardholder selected Cancel. - `02`: Reserved for future EMVCo use (values invalid until defined by EMVCo). - `03`: Transaction Timed Out—Decoupled Authentication - `04`: Transaction timed out at ACS—other timeouts - `05`: Transaction Timed out at ACS - First CReq not received by ACS - `06`: Transaction Error - `07`: Unknown - `08`: Transaction Timed Out at SDK 
    attr_accessor :challenge_cancel_code

    # This field describes the type of 3DS transaction flow that took place.  It can be one of three possible flows; CH - Challenge FR - Frictionless FD - Frictionless with delegation, (challenge not generated by the issuer but by the scheme on behalf of the issuer). 
    attr_accessor :effective_authentication_type

    # The directory server error code indicating a problem with this transaction. 
    attr_accessor :directory_server_error_code

    # Directory server text and additional detail about the error for this transaction. 
    attr_accessor :directory_server_error_description

    # Indicates the number of authentication cycles attempted by the cardholder and is tracked by the Issuing Banks ACS.Example: if customer gets the challenge window and enter in their one time password and hit submit then that interaction counter should just be 1. When customer gets the challenge window and the bank asks if they want to have the one time password  sent to their phone or their email and they have to choose before going to the next screen to enter in their one time password then this interaction count would be 2. One for the selection of how they want the one time password delivered and another with them actually entering in the one time password and hitting the submit button. 
    attr_accessor :interaction_counter

    # Provides additional information as to why the PAResStatus has a specific value. 
    attr_accessor :signed_pares_status_reason

    # SDK unique transaction identifier that is generated on each new transaction. 
    attr_accessor :sdk_transaction_id

    # Payer authentication result (PARes) message returned by the card-issuing bank. If you need to show proof of enrollment checking, you may need to decrypt and parse the string for the information required by the payment card company. For more information, see \"Storing Payer Authentication Data,\" page 160. Important The value is in base64. You must remove all carriage returns and line feeds before adding the PARes to the request. 
    attr_accessor :signed_pares

    # Unique transaction identifier assigned by the 3DS Server to identify a single transaction. 
    attr_accessor :three_ds_server_transaction_id

    # Enables the communication of trusted beneficiary/whitelist status between the ACS, the DS and the 3DS Requestor.  Possible Values:  Y - 3DS Requestor is whitelisted by cardholder  N - 3DS Requestor is not whitelisted by cardholder 
    attr_accessor :white_list_status

    # This data element will be populated by the system setting Whitelist Status. Possible Values: 01 - 3DS/ Server/ 02 – DS/03 - ACS 
    attr_accessor :white_list_status_source

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'acs_rendering_type' => :'acsRenderingType',
        :'acs_transaction_id' => :'acsTransactionId',
        :'authentication_transaction_id' => :'authenticationTransactionId',
        :'authentication_type' => :'authenticationType',
        :'challenge_cancel_code' => :'challengeCancelCode',
        :'effective_authentication_type' => :'effectiveAuthenticationType',
        :'directory_server_error_code' => :'directoryServerErrorCode',
        :'directory_server_error_description' => :'directoryServerErrorDescription',
        :'interaction_counter' => :'interactionCounter',
        :'signed_pares_status_reason' => :'signedParesStatusReason',
        :'sdk_transaction_id' => :'sdkTransactionId',
        :'signed_pares' => :'signedPares',
        :'three_ds_server_transaction_id' => :'threeDSServerTransactionId',
        :'white_list_status' => :'whiteListStatus',
        :'white_list_status_source' => :'whiteListStatusSource'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'acs_rendering_type' => :'String',
        :'acs_transaction_id' => :'String',
        :'authentication_transaction_id' => :'String',
        :'authentication_type' => :'String',
        :'challenge_cancel_code' => :'String',
        :'effective_authentication_type' => :'String',
        :'directory_server_error_code' => :'String',
        :'directory_server_error_description' => :'String',
        :'interaction_counter' => :'String',
        :'signed_pares_status_reason' => :'String',
        :'sdk_transaction_id' => :'String',
        :'signed_pares' => :'String',
        :'three_ds_server_transaction_id' => :'String',
        :'white_list_status' => :'String',
        :'white_list_status_source' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'acsRenderingType')
        self.acs_rendering_type = attributes[:'acsRenderingType']
      end

      if attributes.has_key?(:'acsTransactionId')
        self.acs_transaction_id = attributes[:'acsTransactionId']
      end

      if attributes.has_key?(:'authenticationTransactionId')
        self.authentication_transaction_id = attributes[:'authenticationTransactionId']
      end

      if attributes.has_key?(:'authenticationType')
        self.authentication_type = attributes[:'authenticationType']
      end

      if attributes.has_key?(:'challengeCancelCode')
        self.challenge_cancel_code = attributes[:'challengeCancelCode']
      end

      if attributes.has_key?(:'effectiveAuthenticationType')
        self.effective_authentication_type = attributes[:'effectiveAuthenticationType']
      end

      if attributes.has_key?(:'directoryServerErrorCode')
        self.directory_server_error_code = attributes[:'directoryServerErrorCode']
      end

      if attributes.has_key?(:'directoryServerErrorDescription')
        self.directory_server_error_description = attributes[:'directoryServerErrorDescription']
      end

      if attributes.has_key?(:'interactionCounter')
        self.interaction_counter = attributes[:'interactionCounter']
      end

      if attributes.has_key?(:'signedParesStatusReason')
        self.signed_pares_status_reason = attributes[:'signedParesStatusReason']
      end

      if attributes.has_key?(:'sdkTransactionId')
        self.sdk_transaction_id = attributes[:'sdkTransactionId']
      end

      if attributes.has_key?(:'signedPares')
        self.signed_pares = attributes[:'signedPares']
      end

      if attributes.has_key?(:'threeDSServerTransactionId')
        self.three_ds_server_transaction_id = attributes[:'threeDSServerTransactionId']
      end

      if attributes.has_key?(:'whiteListStatus')
        self.white_list_status = attributes[:'whiteListStatus']
      end

      if attributes.has_key?(:'whiteListStatusSource')
        self.white_list_status_source = attributes[:'whiteListStatusSource']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@acs_transaction_id.nil? && @acs_transaction_id.to_s.length > 36
        invalid_properties.push('invalid value for "acs_transaction_id", the character length must be smaller than or equal to 36.')
      end

      if !@authentication_transaction_id.nil? && @authentication_transaction_id.to_s.length > 20
        invalid_properties.push('invalid value for "authentication_transaction_id", the character length must be smaller than or equal to 20.')
      end

      if !@authentication_type.nil? && @authentication_type.to_s.length > 2
        invalid_properties.push('invalid value for "authentication_type", the character length must be smaller than or equal to 2.')
      end

      if !@challenge_cancel_code.nil? && @challenge_cancel_code.to_s.length > 2
        invalid_properties.push('invalid value for "challenge_cancel_code", the character length must be smaller than or equal to 2.')
      end

      if !@effective_authentication_type.nil? && @effective_authentication_type.to_s.length > 2
        invalid_properties.push('invalid value for "effective_authentication_type", the character length must be smaller than or equal to 2.')
      end

      if !@directory_server_error_code.nil? && @directory_server_error_code.to_s.length > 3
        invalid_properties.push('invalid value for "directory_server_error_code", the character length must be smaller than or equal to 3.')
      end

      if !@directory_server_error_description.nil? && @directory_server_error_description.to_s.length > 4096
        invalid_properties.push('invalid value for "directory_server_error_description", the character length must be smaller than or equal to 4096.')
      end

      if !@interaction_counter.nil? && @interaction_counter.to_s.length > 2
        invalid_properties.push('invalid value for "interaction_counter", the character length must be smaller than or equal to 2.')
      end

      if !@signed_pares_status_reason.nil? && @signed_pares_status_reason.to_s.length > 2
        invalid_properties.push('invalid value for "signed_pares_status_reason", the character length must be smaller than or equal to 2.')
      end

      if !@sdk_transaction_id.nil? && @sdk_transaction_id.to_s.length > 36
        invalid_properties.push('invalid value for "sdk_transaction_id", the character length must be smaller than or equal to 36.')
      end

      if @signed_pares.nil?
        invalid_properties.push('invalid value for "signed_pares", signed_pares cannot be nil.')
      end

      if !@three_ds_server_transaction_id.nil? && @three_ds_server_transaction_id.to_s.length > 36
        invalid_properties.push('invalid value for "three_ds_server_transaction_id", the character length must be smaller than or equal to 36.')
      end

      if !@white_list_status.nil? && @white_list_status.to_s.length > 1
        invalid_properties.push('invalid value for "white_list_status", the character length must be smaller than or equal to 1.')
      end

      if !@white_list_status_source.nil? && @white_list_status_source.to_s.length > 2
        invalid_properties.push('invalid value for "white_list_status_source", the character length must be smaller than or equal to 2.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@acs_transaction_id.nil? && @acs_transaction_id.to_s.length > 36
      return false if !@authentication_transaction_id.nil? && @authentication_transaction_id.to_s.length > 20
      return false if !@authentication_type.nil? && @authentication_type.to_s.length > 2
      return false if !@challenge_cancel_code.nil? && @challenge_cancel_code.to_s.length > 2
      return false if !@effective_authentication_type.nil? && @effective_authentication_type.to_s.length > 2
      return false if !@directory_server_error_code.nil? && @directory_server_error_code.to_s.length > 3
      return false if !@directory_server_error_description.nil? && @directory_server_error_description.to_s.length > 4096
      return false if !@interaction_counter.nil? && @interaction_counter.to_s.length > 2
      return false if !@signed_pares_status_reason.nil? && @signed_pares_status_reason.to_s.length > 2
      return false if !@sdk_transaction_id.nil? && @sdk_transaction_id.to_s.length > 36
      return false if @signed_pares.nil?
      return false if !@three_ds_server_transaction_id.nil? && @three_ds_server_transaction_id.to_s.length > 36
      return false if !@white_list_status.nil? && @white_list_status.to_s.length > 1
      return false if !@white_list_status_source.nil? && @white_list_status_source.to_s.length > 2
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] acs_transaction_id Value to be assigned
    def acs_transaction_id=(acs_transaction_id)
      if !acs_transaction_id.nil? && acs_transaction_id.to_s.length > 36
        fail ArgumentError, 'invalid value for "acs_transaction_id", the character length must be smaller than or equal to 36.'
      end

      @acs_transaction_id = acs_transaction_id
    end

    # Custom attribute writer method with validation
    # @param [Object] authentication_transaction_id Value to be assigned
    def authentication_transaction_id=(authentication_transaction_id)
      if !authentication_transaction_id.nil? && authentication_transaction_id.to_s.length > 20
        fail ArgumentError, 'invalid value for "authentication_transaction_id", the character length must be smaller than or equal to 20.'
      end

      @authentication_transaction_id = authentication_transaction_id
    end

    # Custom attribute writer method with validation
    # @param [Object] authentication_type Value to be assigned
    def authentication_type=(authentication_type)
      if !authentication_type.nil? && authentication_type.to_s.length > 2
        fail ArgumentError, 'invalid value for "authentication_type", the character length must be smaller than or equal to 2.'
      end

      @authentication_type = authentication_type
    end

    # Custom attribute writer method with validation
    # @param [Object] challenge_cancel_code Value to be assigned
    def challenge_cancel_code=(challenge_cancel_code)
      if !challenge_cancel_code.nil? && challenge_cancel_code.to_s.length > 2
        fail ArgumentError, 'invalid value for "challenge_cancel_code", the character length must be smaller than or equal to 2.'
      end

      @challenge_cancel_code = challenge_cancel_code
    end

    # Custom attribute writer method with validation
    # @param [Object] effective_authentication_type Value to be assigned
    def effective_authentication_type=(effective_authentication_type)
      if !effective_authentication_type.nil? && effective_authentication_type.to_s.length > 2
        fail ArgumentError, 'invalid value for "effective_authentication_type", the character length must be smaller than or equal to 2.'
      end

      @effective_authentication_type = effective_authentication_type
    end

    # Custom attribute writer method with validation
    # @param [Object] directory_server_error_code Value to be assigned
    def directory_server_error_code=(directory_server_error_code)
      if !directory_server_error_code.nil? && directory_server_error_code.to_s.length > 3
        fail ArgumentError, 'invalid value for "directory_server_error_code", the character length must be smaller than or equal to 3.'
      end

      @directory_server_error_code = directory_server_error_code
    end

    # Custom attribute writer method with validation
    # @param [Object] directory_server_error_description Value to be assigned
    def directory_server_error_description=(directory_server_error_description)
      if !directory_server_error_description.nil? && directory_server_error_description.to_s.length > 4096
        fail ArgumentError, 'invalid value for "directory_server_error_description", the character length must be smaller than or equal to 4096.'
      end

      @directory_server_error_description = directory_server_error_description
    end

    # Custom attribute writer method with validation
    # @param [Object] interaction_counter Value to be assigned
    def interaction_counter=(interaction_counter)
      if !interaction_counter.nil? && interaction_counter.to_s.length > 2
        fail ArgumentError, 'invalid value for "interaction_counter", the character length must be smaller than or equal to 2.'
      end

      @interaction_counter = interaction_counter
    end

    # Custom attribute writer method with validation
    # @param [Object] signed_pares_status_reason Value to be assigned
    def signed_pares_status_reason=(signed_pares_status_reason)
      if !signed_pares_status_reason.nil? && signed_pares_status_reason.to_s.length > 2
        fail ArgumentError, 'invalid value for "signed_pares_status_reason", the character length must be smaller than or equal to 2.'
      end

      @signed_pares_status_reason = signed_pares_status_reason
    end

    # Custom attribute writer method with validation
    # @param [Object] sdk_transaction_id Value to be assigned
    def sdk_transaction_id=(sdk_transaction_id)
      if !sdk_transaction_id.nil? && sdk_transaction_id.to_s.length > 36
        fail ArgumentError, 'invalid value for "sdk_transaction_id", the character length must be smaller than or equal to 36.'
      end

      @sdk_transaction_id = sdk_transaction_id
    end

    # Custom attribute writer method with validation
    # @param [Object] three_ds_server_transaction_id Value to be assigned
    def three_ds_server_transaction_id=(three_ds_server_transaction_id)
      if !three_ds_server_transaction_id.nil? && three_ds_server_transaction_id.to_s.length > 36
        fail ArgumentError, 'invalid value for "three_ds_server_transaction_id", the character length must be smaller than or equal to 36.'
      end

      @three_ds_server_transaction_id = three_ds_server_transaction_id
    end

    # Custom attribute writer method with validation
    # @param [Object] white_list_status Value to be assigned
    def white_list_status=(white_list_status)
      if !white_list_status.nil? && white_list_status.to_s.length > 1
        fail ArgumentError, 'invalid value for "white_list_status", the character length must be smaller than or equal to 1.'
      end

      @white_list_status = white_list_status
    end

    # Custom attribute writer method with validation
    # @param [Object] white_list_status_source Value to be assigned
    def white_list_status_source=(white_list_status_source)
      if !white_list_status_source.nil? && white_list_status_source.to_s.length > 2
        fail ArgumentError, 'invalid value for "white_list_status_source", the character length must be smaller than or equal to 2.'
      end

      @white_list_status_source = white_list_status_source
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          acs_rendering_type == o.acs_rendering_type &&
          acs_transaction_id == o.acs_transaction_id &&
          authentication_transaction_id == o.authentication_transaction_id &&
          authentication_type == o.authentication_type &&
          challenge_cancel_code == o.challenge_cancel_code &&
          effective_authentication_type == o.effective_authentication_type &&
          directory_server_error_code == o.directory_server_error_code &&
          directory_server_error_description == o.directory_server_error_description &&
          interaction_counter == o.interaction_counter &&
          signed_pares_status_reason == o.signed_pares_status_reason &&
          sdk_transaction_id == o.sdk_transaction_id &&
          signed_pares == o.signed_pares &&
          three_ds_server_transaction_id == o.three_ds_server_transaction_id &&
          white_list_status == o.white_list_status &&
          white_list_status_source == o.white_list_status_source
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [acs_rendering_type, acs_transaction_id, authentication_transaction_id, authentication_type, challenge_cancel_code, effective_authentication_type, directory_server_error_code, directory_server_error_description, interaction_counter, signed_pares_status_reason, sdk_transaction_id, signed_pares, three_ds_server_transaction_id, white_list_status, white_list_status_source].hash
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
