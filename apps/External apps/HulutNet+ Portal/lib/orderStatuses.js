
const data = {{ getAllOrders.data }}
function countOrdersWithStatus(data, targetStatus) {
  return data.status.filter(status => status === targetStatus).length;
}

const totalOrdersPlaced = countOrdersWithStatus(data, "Order Placed");
const totalOrdersInProgress = countOrdersWithStatus(data, "In Progress");
const totalOrdersDelivered = countOrdersWithStatus(data, "Delivered");

return {
  totalOrdersPlaced,
  totalOrdersInProgress,
  totalOrdersDelivered
};
