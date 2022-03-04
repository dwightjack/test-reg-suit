import MyBox from "./Box.vue";

export default {
  title: "Example/Box",
  component: MyBox,
};

const Template = () => ({
  components: { MyBox },
  template: "<my-Box  />",
});

export const Primary = Template.bind({});
