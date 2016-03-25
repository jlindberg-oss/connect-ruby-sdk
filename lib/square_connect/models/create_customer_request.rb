=begin
Square Connect API

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require 'date'

module SquareConnect
  # 
  class CreateCustomerRequest
    # 
    attr_accessor :given_name

    # 
    attr_accessor :family_name

    # 
    attr_accessor :company_name

    # 
    attr_accessor :nickname

    # 
    attr_accessor :email_address

    # 
    attr_accessor :address

    # 
    attr_accessor :phone_number

    # 
    attr_accessor :reference_id

    # 
    attr_accessor :note

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'given_name' => :'given_name',
        
        :'family_name' => :'family_name',
        
        :'company_name' => :'company_name',
        
        :'nickname' => :'nickname',
        
        :'email_address' => :'email_address',
        
        :'address' => :'address',
        
        :'phone_number' => :'phone_number',
        
        :'reference_id' => :'reference_id',
        
        :'note' => :'note'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'given_name' => :'String',
        :'family_name' => :'String',
        :'company_name' => :'String',
        :'nickname' => :'String',
        :'email_address' => :'String',
        :'address' => :'Address',
        :'phone_number' => :'String',
        :'reference_id' => :'String',
        :'note' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'given_name']
        self.given_name = attributes[:'given_name']
      end
      
      if attributes[:'family_name']
        self.family_name = attributes[:'family_name']
      end
      
      if attributes[:'company_name']
        self.company_name = attributes[:'company_name']
      end
      
      if attributes[:'nickname']
        self.nickname = attributes[:'nickname']
      end
      
      if attributes[:'email_address']
        self.email_address = attributes[:'email_address']
      end
      
      if attributes[:'address']
        self.address = attributes[:'address']
      end
      
      if attributes[:'phone_number']
        self.phone_number = attributes[:'phone_number']
      end
      
      if attributes[:'reference_id']
        self.reference_id = attributes[:'reference_id']
      end
      
      if attributes[:'note']
        self.note = attributes[:'note']
      end
      
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          given_name == o.given_name &&
          family_name == o.family_name &&
          company_name == o.company_name &&
          nickname == o.nickname &&
          email_address == o.email_address &&
          address == o.address &&
          phone_number == o.phone_number &&
          reference_id == o.reference_id &&
          note == o.note
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [given_name, family_name, company_name, nickname, email_address, address, phone_number, reference_id, note].hash
    end

    # build the object from hash
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          else
            #TODO show warning in debug mode
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        else
          # data not found in attributes(hash), not an issue as the data can be optional
        end
      end

      self
    end

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
        if value.to_s =~ /^(true|t|yes|y|1)$/i
          true
        else
          false
        end
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        _model = SquareConnect.const_get(type).new
        _model.build_from_hash(value)
      end
    end

    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_body (backward compatibility))
    def to_body
      to_hash
    end

    # return the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Method to output non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
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
