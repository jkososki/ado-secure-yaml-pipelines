param name string
param tags object = {}

param skuName string = 'Basic'

var _defaultTags = {
  org: 'Not Provided'
  owner: 'Not Provided'
}
var _tags = union(_defaultTags, tags)

resource symbolicname 'Microsoft.ContainerRegistry/registries@2021-09-01' = {
  name: name
  location: resourceGroup().location
  tags: _tags
  sku: {
    name: skuName
  }
  properties: {}
}
