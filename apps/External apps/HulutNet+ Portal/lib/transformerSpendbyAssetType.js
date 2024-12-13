// Reference external variables with curly brackets or using JS variables
const assets = {{ getAllAssets.data }}

const assetTypes = {{ assetTypes.value }};
const spendTotals = new Array(assetTypes.length).fill(0); // Initialize an array with zeros for each type

// Loop through the assets and accumulate the spend for each asset type
for (let i = 0; i < assets.name.length; i++) {
  const assetType = assets.type[i];
  const spend = assets.spend[i];

  // Find the index of the asset type in the assetTypes array
  const assetTypeIndex = assetTypes.indexOf(assetType);

  if (assetTypeIndex !== -1) {
    spendTotals[assetTypeIndex] += spend; // Add the spend to the corresponding type index
  }
}

return spendTotals;