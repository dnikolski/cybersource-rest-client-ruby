=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class RiskV1AuthenticationsPost201ResponseConsumerAuthenticationInformation
    # URL for the card-issuing bank’s authentication form that you receive when the card is enrolled. The value can be very large. 
    attr_accessor :acs_url

    # Indicates what displays to the customer during the authentication process. This field can contain one of these values: - `ADS`: (Card not enrolled) customer prompted to activate the card during the checkout process. - `ATTEMPTS`: (Attempts processing) Processing briefly displays before the checkout process is completed. - `ENROLLED`: (Card enrolled) the card issuer’s authentication window displays. - `UNKNOWN`: Card enrollment status cannot be determined. - `NOREDIRECT`: (Card not enrolled, authentication unavailable, or error occurred) nothing displays to the customer.  The following values can be returned if you are using rules-based payer authentication. - `RIBA`: The card-issuing bank supports risk-based authentication, but whether the cardholder is likely to be challenged cannot be determined. - `RIBA_PASS`: The card-issuing bank supports risk-based authentication and it is likely that the cardholder will not be challenged to provide credentials, also known as _silent authentication_.  For details about possible values, see `pa_enroll_authentication_path` field description and \"Rules-Based Payer Authentication\" in [CyberSource Payer Authentication Using the SCMP API.] (https://apps.cybersource.com/library/documentation/dev_guides/Payer_Authentication_SCMP_API/html/wwhelp/wwhimpl/js/html/wwhelp.htm) 
    attr_accessor :authentication_path

    # Payer authentication transaction identifier passed to link the check enrollment and validate authentication messages. 
    attr_accessor :authentication_transaction_id

    # Unique identifier generated by the card-issuing bank for Visa, American Express, JCB, Diners Club, and Discover transactions after the customer is authenticated. The value is in base64. When you request the card authorization service, CyberSource automatically converts the value, not the field name, to the format required by your payment processor. 
    attr_accessor :cavv

    # Field that is returned only when the CAVV is generated, which occurs when paresStatus contains the values Y (successful authentication) or A (attempted authentication). If you use the ATOS processor, send the value of this field in the `cavv_algorithm` request field of the authorization service. This field contains one of these values: - `2`: Visa, American Express, JCB, Diners Club, and Discover - `3`: Mastercard 
    attr_accessor :cavv_algorithm

    # Indicates whether a challenge is required in order to complete authentication. **Note** Regional mandates might determine that a challenge is required.  Possible values: - `Y`: Challenge required - `N`: Challenge not required **Note**  Used by the Hybrid integration. 
    attr_accessor :challenge_required

    # Commerce indicator for cards not enrolled. This field contains one of these values: - `internet`: Card not enrolled, or card type not supported by payer authentication. No liability shift. - `js_attempted`: Card not enrolled, but attempt to authenticate is recorded. Liability shift. - `js_failure`: J/Secure directory service is not available. No liability shift. - `spa`: Mastercard card not enrolled in the SecureCode program. No liability shift. - `vbv_attempted`: Card not enrolled, but attempt to authenticate is recorded. Liability shift. - `vbv_failure`: For payment processor Barclays, Streamline, AIBMS, or FDC Germany, you receive this result if Visa’s directory service is not available. No liability shift. 
    attr_accessor :ecommerce_indicator

    # Note This field applies only to non-U.S-issued cards.  For enroll, Numeric electronic commerce indicator (ECI) returned only for Visa, American Express, JCB, Diners Club, and Discover transactions when the card is not enrolled. For more information, see \"Interpreting the Reply,\" page 22.  If you are not using the CyberSource payment services, you must send this value to your payment processor in the subsequent request for card authorization. This field contains one of these values: - `06`: The card can be enrolled. Liability shift. - `07`: The card cannot be enrolled. No liability shift.  For validate, Numeric electronic commerce indicator (ECI) returned only for Visa, American Express, JCB, Diners Club, and Discover transactions. The field is absent when authentication fails. You must send this value to your payment processor in the subsequent request for card authorization. This field contains one of these values: - `05`: Successful authentication - `06`: Authentication attempted - `07`: Failed authentication (No response from the merchant because of a problem.) 
    attr_accessor :eci

    # ECI value that can be returned for Visa, Mastercard, American Express, JCB, Diners Club, and Discover. The field is absent when authentication fails. If your payment processor is Streamline, you must pass the value of this field instead of the value of `eci` or `ucafCollectionIndicator`.  This field can contain one of these values: - `01`: Authentication attempted (Mastercard) - `02`: Successful authentication (Mastercard) - `05`: Successful authentication (Visa, American Express, JCB, Diners Club, and Discover) - `06`: Authentication attempted (Visa, American Express, JCB, Diners Club, and Discover) 
    attr_accessor :eci_raw

    # Payer authentication request (PAReq) message that you need to forward to the ACS. The value can be very large. The value is in base64. 
    attr_accessor :pareq

    # Raw result of the authentication check. If you are configured for Asia, Middle East, and Africa Gateway Processing, you need to send the value of this field in your authorization request. This field can contain one of these values: - `A`: Proof of authentication attempt was generated. - `N`: Customer failed or canceled authentication. Transaction denied. - `U`: Authentication not completed regardless of the reason. - `Y`: Customer was successfully authenticated. 
    attr_accessor :pares_status

    # Date and time of the enrollment check combined with the VEReq and VERes elements. If you ever need to show proof of enrollment checking, you may need to parse the string for the information required by the payment card company. The value can be very large. For details about possible values, see the `pa_enroll_proofxml` field description in [CyberSource Payer Authentication Using the SCMP API.] (https://apps.cybersource.com/library/documentation/dev_guides/Payer_Authentication_SCMP_API/html/wwhelp/wwhimpl/js/html/wwhelp.htm) - For cards issued in the U.S. or Canada, Visa may require this data for specific merchant category codes. - For cards not issued in the U.S. or Canada, your bank may require this data as proof of enrollment checking for any payer authentication transaction that you re-present because of a chargeback. 
    attr_accessor :proof_xml

    # Encrypted version of the card number used in the payer authentication request message. 
    attr_accessor :proxy_pan

    # This field contains the 3D Secure version that was used to process the transaction. For example, 1.0.2 or 2.0.0. 
    attr_accessor :specification_version

    # AAV is a unique identifier generated by the card-issuing bank for Mastercard Identity Check transactions after the customer is authenticated. The value is in base64. Include the data in the card authorization request. 
    attr_accessor :ucaf_authentication_data

    # For enroll, Returned only for Mastercard transactions. Indicates that authentication is not required because the customer is not enrolled. Add the value of this field to the authorization field ucaf_collection_indicator. This field can contain these values: 0, 1.  For validate, Numeric electronic commerce indicator (ECI) returned only for Mastercard Identity Check transactions. The field is absent when authentication fails. You must send this value to your payment processor in the request for card authorization. This field contain one of these values: - `0`: Authentication data not collected, and customer authentication was not completed. - `1`: Authentication data not collected because customer authentication was not completed. - `2`: Authentication data collected because customer completed authentication. 
    attr_accessor :ucaf_collection_indicator

    # Result of the enrollment check. This field can contain one of these values: - `Y`: Card enrolled or can be enrolled; you must authenticate. Liability shift. - `N`: Card not enrolled; proceed with authorization. Liability shift. - `U`: Unable to authenticate regardless of the reason. No liability shift.  **Note** This field only applies to the Asia, Middle East, and Africa Gateway. If you are configured for this processor, you must send the value of this field in your authorization request.  The following value can be returned if you are using rules-based Payer Authentication: - `B`: Indicates that authentication was bypassed.  For details, see `pa_enroll_veres_enrolled` field description in [CyberSource Payer Authentication Using the SCMP API.] (https://apps.cybersource.com/library/documentation/dev_guides/Payer_Authentication_SCMP_API/html/wwhelp/wwhimpl/js/html/wwhelp.htm) 
    attr_accessor :veres_enrolled

    # Transaction identifier generated by CyberSource for successful enrollment or validation checks. Use this value, which is in base64, to match an outgoing PAReq with an incoming PARes. CyberSource forwards the XID with the card authorization service to these payment processors in these cases: - Barclays - Streamline (when the **ecommerceIndicator**`=spa`) 
    attr_accessor :xid

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'acs_url' => :'acsUrl',
        :'authentication_path' => :'authenticationPath',
        :'authentication_transaction_id' => :'authenticationTransactionId',
        :'cavv' => :'cavv',
        :'cavv_algorithm' => :'cavvAlgorithm',
        :'challenge_required' => :'challengeRequired',
        :'ecommerce_indicator' => :'ecommerceIndicator',
        :'eci' => :'eci',
        :'eci_raw' => :'eciRaw',
        :'pareq' => :'pareq',
        :'pares_status' => :'paresStatus',
        :'proof_xml' => :'proofXml',
        :'proxy_pan' => :'proxyPan',
        :'specification_version' => :'specificationVersion',
        :'ucaf_authentication_data' => :'ucafAuthenticationData',
        :'ucaf_collection_indicator' => :'ucafCollectionIndicator',
        :'veres_enrolled' => :'veresEnrolled',
        :'xid' => :'xid'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'acs_url' => :'String',
        :'authentication_path' => :'String',
        :'authentication_transaction_id' => :'String',
        :'cavv' => :'String',
        :'cavv_algorithm' => :'String',
        :'challenge_required' => :'String',
        :'ecommerce_indicator' => :'String',
        :'eci' => :'String',
        :'eci_raw' => :'String',
        :'pareq' => :'String',
        :'pares_status' => :'String',
        :'proof_xml' => :'String',
        :'proxy_pan' => :'String',
        :'specification_version' => :'String',
        :'ucaf_authentication_data' => :'String',
        :'ucaf_collection_indicator' => :'Float',
        :'veres_enrolled' => :'String',
        :'xid' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'acsUrl')
        self.acs_url = attributes[:'acsUrl']
      end

      if attributes.has_key?(:'authenticationPath')
        self.authentication_path = attributes[:'authenticationPath']
      end

      if attributes.has_key?(:'authenticationTransactionId')
        self.authentication_transaction_id = attributes[:'authenticationTransactionId']
      end

      if attributes.has_key?(:'cavv')
        self.cavv = attributes[:'cavv']
      end

      if attributes.has_key?(:'cavvAlgorithm')
        self.cavv_algorithm = attributes[:'cavvAlgorithm']
      end

      if attributes.has_key?(:'challengeRequired')
        self.challenge_required = attributes[:'challengeRequired']
      end

      if attributes.has_key?(:'ecommerceIndicator')
        self.ecommerce_indicator = attributes[:'ecommerceIndicator']
      end

      if attributes.has_key?(:'eci')
        self.eci = attributes[:'eci']
      end

      if attributes.has_key?(:'eciRaw')
        self.eci_raw = attributes[:'eciRaw']
      end

      if attributes.has_key?(:'pareq')
        self.pareq = attributes[:'pareq']
      end

      if attributes.has_key?(:'paresStatus')
        self.pares_status = attributes[:'paresStatus']
      end

      if attributes.has_key?(:'proofXml')
        self.proof_xml = attributes[:'proofXml']
      end

      if attributes.has_key?(:'proxyPan')
        self.proxy_pan = attributes[:'proxyPan']
      end

      if attributes.has_key?(:'specificationVersion')
        self.specification_version = attributes[:'specificationVersion']
      end

      if attributes.has_key?(:'ucafAuthenticationData')
        self.ucaf_authentication_data = attributes[:'ucafAuthenticationData']
      end

      if attributes.has_key?(:'ucafCollectionIndicator')
        self.ucaf_collection_indicator = attributes[:'ucafCollectionIndicator']
      end

      if attributes.has_key?(:'veresEnrolled')
        self.veres_enrolled = attributes[:'veresEnrolled']
      end

      if attributes.has_key?(:'xid')
        self.xid = attributes[:'xid']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@acs_url.nil? && @acs_url.to_s.length > 2048
        invalid_properties.push('invalid value for "acs_url", the character length must be smaller than or equal to 2048.')
      end

      if !@authentication_transaction_id.nil? && @authentication_transaction_id.to_s.length > 20
        invalid_properties.push('invalid value for "authentication_transaction_id", the character length must be smaller than or equal to 20.')
      end

      if !@cavv.nil? && @cavv.to_s.length > 255
        invalid_properties.push('invalid value for "cavv", the character length must be smaller than or equal to 255.')
      end

      if !@cavv_algorithm.nil? && @cavv_algorithm.to_s.length > 1
        invalid_properties.push('invalid value for "cavv_algorithm", the character length must be smaller than or equal to 1.')
      end

      if !@challenge_required.nil? && @challenge_required.to_s.length > 1
        invalid_properties.push('invalid value for "challenge_required", the character length must be smaller than or equal to 1.')
      end

      if !@ecommerce_indicator.nil? && @ecommerce_indicator.to_s.length > 255
        invalid_properties.push('invalid value for "ecommerce_indicator", the character length must be smaller than or equal to 255.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@acs_url.nil? && @acs_url.to_s.length > 2048
      return false if !@authentication_transaction_id.nil? && @authentication_transaction_id.to_s.length > 20
      return false if !@cavv.nil? && @cavv.to_s.length > 255
      return false if !@cavv_algorithm.nil? && @cavv_algorithm.to_s.length > 1
      return false if !@challenge_required.nil? && @challenge_required.to_s.length > 1
      return false if !@ecommerce_indicator.nil? && @ecommerce_indicator.to_s.length > 255
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] acs_url Value to be assigned
    def acs_url=(acs_url)
      if !acs_url.nil? && acs_url.to_s.length > 2048
        fail ArgumentError, 'invalid value for "acs_url", the character length must be smaller than or equal to 2048.'
      end

      @acs_url = acs_url
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
    # @param [Object] cavv Value to be assigned
    def cavv=(cavv)
      if !cavv.nil? && cavv.to_s.length > 255
        fail ArgumentError, 'invalid value for "cavv", the character length must be smaller than or equal to 255.'
      end

      @cavv = cavv
    end

    # Custom attribute writer method with validation
    # @param [Object] cavv_algorithm Value to be assigned
    def cavv_algorithm=(cavv_algorithm)
      if !cavv_algorithm.nil? && cavv_algorithm.to_s.length > 1
        fail ArgumentError, 'invalid value for "cavv_algorithm", the character length must be smaller than or equal to 1.'
      end

      @cavv_algorithm = cavv_algorithm
    end

    # Custom attribute writer method with validation
    # @param [Object] challenge_required Value to be assigned
    def challenge_required=(challenge_required)
      if !challenge_required.nil? && challenge_required.to_s.length > 1
        fail ArgumentError, 'invalid value for "challenge_required", the character length must be smaller than or equal to 1.'
      end

      @challenge_required = challenge_required
    end

    # Custom attribute writer method with validation
    # @param [Object] ecommerce_indicator Value to be assigned
    def ecommerce_indicator=(ecommerce_indicator)
      if !ecommerce_indicator.nil? && ecommerce_indicator.to_s.length > 255
        fail ArgumentError, 'invalid value for "ecommerce_indicator", the character length must be smaller than or equal to 255.'
      end

      @ecommerce_indicator = ecommerce_indicator
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          acs_url == o.acs_url &&
          authentication_path == o.authentication_path &&
          authentication_transaction_id == o.authentication_transaction_id &&
          cavv == o.cavv &&
          cavv_algorithm == o.cavv_algorithm &&
          challenge_required == o.challenge_required &&
          ecommerce_indicator == o.ecommerce_indicator &&
          eci == o.eci &&
          eci_raw == o.eci_raw &&
          pareq == o.pareq &&
          pares_status == o.pares_status &&
          proof_xml == o.proof_xml &&
          proxy_pan == o.proxy_pan &&
          specification_version == o.specification_version &&
          ucaf_authentication_data == o.ucaf_authentication_data &&
          ucaf_collection_indicator == o.ucaf_collection_indicator &&
          veres_enrolled == o.veres_enrolled &&
          xid == o.xid
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [acs_url, authentication_path, authentication_transaction_id, cavv, cavv_algorithm, challenge_required, ecommerce_indicator, eci, eci_raw, pareq, pares_status, proof_xml, proxy_pan, specification_version, ucaf_authentication_data, ucaf_collection_indicator, veres_enrolled, xid].hash
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
