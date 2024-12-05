const inputJSON = {{ getAllOrders.data }};

// Extract and format dates
const formattedDates = inputJSON.date.map(date => new Date(date).toISOString().split('T')[0]);

// Count occurrences of each date
const dateCounts = formattedDates.reduce((counts, date) => {
  counts[date] = (counts[date] || 0) + 1;
  return counts;
}, {});

// Transform the counts object into an array of objects
const outputArray = Object.entries(dateCounts).map(([date, count]) => ({
  number_of_orders: count,
  date: date
}));

return outputArray;
