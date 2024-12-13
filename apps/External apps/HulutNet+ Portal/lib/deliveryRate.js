// Input data
const orders = {{ getAllOrders.data }};

// Function to calculate delivery rate for the current month
function calculateDeliveryRate(data) {
  const currentMonth = new Date().getMonth() + 1; // December is month 12
  const currentYear = new Date().getFullYear(); // 2024

  let deliveredCount = 0;
  let totalOrdersInMonth = 0;

  data.date.forEach((dateStr, index) => {
    const orderDate = new Date(dateStr);
    const orderMonth = orderDate.getMonth() + 1;
    const orderYear = orderDate.getFullYear();

    if (orderMonth === currentMonth && orderYear === currentYear) {
      totalOrdersInMonth++;
      if (data.status[index] === "Delivered") {
        deliveredCount++;
      }
    }
  });

  const deliveryRate = totalOrdersInMonth > 0 
    ? (deliveredCount / totalOrdersInMonth) * 100
    : 0;

  return {
    deliveredCount,
    totalOrdersInMonth,
    deliveryRate: deliveryRate
  };
}


// Calculate and log the result
const result = calculateDeliveryRate(orders);
return result;
