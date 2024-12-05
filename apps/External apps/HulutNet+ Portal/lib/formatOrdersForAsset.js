
const jsonData = {{ getOrdersForAsset.data }};

// Function to format an ISO datetime string for `date`
function formatDateTime(isoString) {
  const date = new Date(isoString);

  const formattedDate = date.toLocaleDateString('en-US', {
    month: '2-digit',
    day: '2-digit',
    year: 'numeric',
  });

  const formattedTime = date.toLocaleTimeString('en-US', {
    hour: 'numeric',
    minute: '2-digit',
    hour12: true,
  });

  return `${formattedDate} at ${formattedTime}`;
}

// Function to format the `deadline` field
function formatDate(isoString) {
  const date = new Date(isoString);
  return date.toLocaleDateString('en-US', {
    month: '2-digit',
    day: '2-digit',
    year: 'numeric',
  });
}

// Transform the input JSON into an array of objects and format fields
const formattedData = jsonData.order_id.map((_, index) => ({
  order_id: jsonData.order_id[index],
  order_type: jsonData.order_type[index],
  ordered_by: jsonData.ordered_by[index],
  date: formatDateTime(jsonData.date[index]), // Format date field
  deadline: formatDate(jsonData.deadline[index]), // Format deadline field
  status: jsonData.status[index],
  order_description: jsonData.order_description[index],
}));

// Output the results
return formattedData