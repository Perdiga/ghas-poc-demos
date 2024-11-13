import { SampleComponent } from './components/SampleComponent';

// Entry point of the TypeScript frontend application
// Set up necessary configurations and import components
const app = () => {
  const sampleComponent = new SampleComponent();
  sampleComponent.render();
};

// Run the application
app();