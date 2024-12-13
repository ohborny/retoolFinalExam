const inputData = {{ getAllOrders.data }}

function calculateOrderStats(data) {
  const currentDate = new Date();
  const currentMonth = currentDate.getMonth();
  const currentYear = currentDate.getFullYear();

  let totalOrdersPlaced = 0;
  let totalOrdersDelivered = 0;

  data.date.forEach((orderDate, index) => {
    const orderDateObj = new Date(orderDate);

    // Check if the order date is in the current month and year
    if (
      orderDateObj.getMonth() === currentMonth &&
      orderDateObj.getFullYear() === currentYear
    ) {
      totalOrdersPlaced++;
      
      // Check if the status is "Delivered"
      if (data.status[index] === "Delivered") {
        totalOrdersDelivered++;
      }
    }
  });

  return { totalOrdersPlaced, totalOrdersDelivered };
}

const stats = calculateOrderStats(inputData);
return stats;
