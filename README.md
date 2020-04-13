# EssentialFeed
# Essential Feed App – Image Feed Feature

[![Build Status](https://travis-ci.com/deepsdm99/EssentialFeed.svg?branch=master)](https://travis-ci.com/deepsdm99/EssentialFeed)
#### Primary course (happy path):
1. Execute "Load Image Feed" command with above data.
2. System downloads data from the URL.
3. System validates downloaded data.
4. System creates image feed from valid data.
5. System delivers image feed.

#### Invalid data – error course (sad path):
1. System delivers invalid data error.

#### Expired cache course (sad path): 
1. System deletes cache.
2. System delivers no feed images.

#### Empty cache course (sad path): 
1. System delivers no feed images.


### Cache Feed Use Case

#### Data:
- Image Feed

#### Primary course (happy path):
1. Execute "Save Image Feed" command with above data.
2. System deletes old cache data.
3. System encodes image feed.
4. System timestamps the new cache.
5. System saves new cache data.
6. System delivers success message.

Given the customer doesn't have connectivity

## Model Specs

### Feed Image

| Property      | Type                |
|---------------|---------------------|
| `id`          | `UUID`              |
| `description` | `String` (optional) |
| `location`    | `String` (optional) |
| `url`	        | `URL`               |

### Payload contract
