[ map(select((.Described.Distillery.Region | length) >= 1)) | .[] | { "bottleID": .bottleID, regions: [.Described.Distillery.Region | .[].name] | join(", ") } ]