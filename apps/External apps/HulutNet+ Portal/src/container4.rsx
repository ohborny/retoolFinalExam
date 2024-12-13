<Container
  id="container4"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle4"
      value="**#{{ item.order_id }}**"
      verticalAlign="center"
    />
    <Text
      id="text12"
      horizontalAlign="center"
      style={{ ordered: [{ color: "{{ orderStatusColors.value[item] }}" }] }}
      value="{{ item.status}}"
      verticalAlign="center"
    />
  </Header>
  <View id="0994d" viewKey="View 1">
    <Text
      id="text13"
      value="Ordered by: {{ item.ordered_by }}"
      verticalAlign="center"
    />
    <Text
      id="text14"
      value="Date placed: {{ item.date }}"
      verticalAlign="center"
    />
    <Text
      id="text15"
      value="Deadline: {{ item.deadline }}"
      verticalAlign="center"
    />
    <Text
      id="descriptionLabel"
      imageWidth="fill"
      value="Description: {{ item.order_description }}"
      verticalAlign="center"
    />
  </View>
</Container>
