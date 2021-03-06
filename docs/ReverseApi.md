# LocationIQClient::ReverseApi

All URIs are relative to *https://eu1.locationiq.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reverse**](ReverseApi.md#reverse) | **GET** /reverse.php | Reverse Geocoding


# **reverse**
> Location reverse(lat, lon, format, normalizecity, opts)

Reverse Geocoding

Reverse geocoding is the process of converting a coordinate or location (latitude, longitude) to a readable address or place name. This permits the identification of nearby street addresses, places, and/or area subdivisions such as a neighborhood, county, state, or country.

### Example
```ruby
# load the gem
require 'locationiq-ruby-client'
# setup authorization
LocationIQClient.configure do |config|
  # Configure API key authorization: key
  config.api_key['key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['key'] = 'Bearer'
end

api_instance = LocationIQClient::ReverseApi.new
lat = 17.24 # Float | Latitude of the location to generate an address for.
lon = 74.25 # Float | Longitude of the location to generate an address for.
format = json # String | Format to geocode. Only JSON supported for SDKs
normalizecity = 1 # Integer | Normalizes village to city level data to city
opts = {
  addressdetails: 1, # Integer | Include a breakdown of the address into elements. Defaults to 1.
  accept_language: en, # String | Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language=native
  namedetails: 0, # Integer | Include a list of alternative names in the results. These may include language variants, references, operator and brand.
  extratags: 0 # Integer | Include additional information in the result if available, e.g. wikipedia link, opening hours.
}

begin
  #Reverse Geocoding
  result = api_instance.reverse(lat, lon, format, normalizecity, opts)
  p result
rescue LocationIQClient::ApiError => e
  puts "Exception when calling ReverseApi->reverse: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lat** | **Float**| Latitude of the location to generate an address for. | 
 **lon** | **Float**| Longitude of the location to generate an address for. | 
 **format** | **String**| Format to geocode. Only JSON supported for SDKs | 
 **normalizecity** | **Integer**| Normalizes village to city level data to city | 
 **addressdetails** | **Integer**| Include a breakdown of the address into elements. Defaults to 1. | [optional] [default to 1]
 **accept_language** | **String**| Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language&#x3D;native | [optional] 
 **namedetails** | **Integer**| Include a list of alternative names in the results. These may include language variants, references, operator and brand. | [optional] 
 **extratags** | **Integer**| Include additional information in the result if available, e.g. wikipedia link, opening hours. | [optional] 

### Return type

[**Location**](Location.md)

### Authorization

[key](../README.md#key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



