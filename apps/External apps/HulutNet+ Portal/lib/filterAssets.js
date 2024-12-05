
const assets = {{ getAssets.data }};
const typeSearch = {{ typeSearch.selectedItem }}
function filterAssetsByType(assets, typeSearch) {
  // Check if typeSearch is null
  if (typeSearch === null) {
    return assets; // Return assets as is
  }

  // Filter assets based on the selected type
  const filteredAssets = {
    ...assets,
    id: [],
    name: [],
    type: [],
    media: [],
    description: [],
    language: [],
    country: [],
    spend: []
  };

  // Iterate through assets and add matching items
  for (let i = 0; i < assets.id.length; i++) {
    if (assets.type[i] === typeSearch) {
      filteredAssets.id.push(assets.id[i]);
      filteredAssets.name.push(assets.name[i]);
      filteredAssets.type.push(assets.type[i]);
      filteredAssets.media.push(assets.media[i]);
      filteredAssets.description.push(assets.description[i]);
      filteredAssets.language.push(assets.language[i]);
      filteredAssets.country.push(assets.country[i]);
      filteredAssets.spend.push(assets.spend[i]);
    }
  }

  return filteredAssets;
}

const result = filterAssetsByType(assets, typeSearch);

return result;
