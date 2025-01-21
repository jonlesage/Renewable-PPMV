# Renewable Energy System Model Validation with MATLAB/Simulink

Power plant model validation for renewable energy involves verifying that the simulation models accurately represent the dynamic behavior of renewable energy plants, ensuring reliable integration into the grid. New requirements (such as in WECC in the United States) mandate plant validation for smaller facilities, including wind farms, solar farms and grid-scale energy storage. The generic inverter control models that represent renewable energy equipment have hundrends of potential parameters to adjust, so automation of validation is essential.

![](\Images\SingleExp_Tuning.gif)

This example walks through the validation process for renewable energy systems using replay of field data. The process involves both manual and automated parameter tuning, resulting in a digital twin representation which emulates real system response.

## Getting Started with this Example:
To run this demo:
1. Run the "PPMV_Renewables.prj" to start the project
2. The folder structure walks through the material.
    - Detailed solar modeling in MATLAB&reg; and Simulink&reg;
    - Using standardized models to represent varied OEM systems
    - Performing model-validation using field data on renewable energy models
3. To validate the solar plant model, navigate to the "3_Renewable_PPMV folder"
    - Measured data is in the "SolarInverter_TestData.xlsx" file to view
    - Open the "SolarInverter_VFreplay.slx" model
    - Using the buttons in the model, select "Load Test Data" to import the XLS data
    - Double-click the "Load Parameters" button to import the initial parameters
    - Double-click the "Load Flow" button to initialize the model with the field data
    - You can push the "Run" button in Simulink to see the comparison between simulation and field data. Notice the mismatch.
    - Double-click the "Parameter Estimation" button to open the UI. Clicking Start estimation with start the process with the saved parameter estimation session.

![](\Images\PPMVWorkflow.png)

## Video Walkthrough of Example:
For more information and a video walk-through, these examples are used in the "Renewable Energy Power Plant Model Validation" video: https://www.mathworks.com/videos/renewable-energy-power-plant-model-validation-1572378243901.html

## Toolbox Requirements:

- [MATLAB](https://www.mathworks.com/products/matlab.html)
- [Optimization Toolbox&trade;](https://www.mathworks.com/products/optimization.html)
- [Control System Toolbox&trade;](https://www.mathworks.com/products/control.html)
- [Simulink](https://www.mathworks.com/products/simulink.html)
- [Simscape&trade;](https://www.mathworks.com/products/simscape.html)
- [Simscape Electrical&trade;](https://www.mathworks.com/products/simscape-electrical.html)
- [Simulink Control Design&trade;](https://www.mathworks.com/products/simcontrol.html)
- [Simulink Design Optimization&trade;](https://www.mathworks.com/products/sl-design-optimization.html)

## References:

- S. Zhu, D. Piper, D. Ramasubramanian, R. Quint, A. Isaacs and R. Bauer, "Modeling Inverter-Based Resources in Stability Studies," 2018 IEEE Power & Energy Society General Meeting (PESGM), Portland, OR, USA, 2018, pp. 1-5, doi: 10.1109/PESGM.2018.8586157.
- D. Ramasubramanian, P. Pourbeik, E. Farantatos and A. Gaikwad, "Simulation of 100% Inverter-Based Resource Grids With Positive Sequence Modeling," in IEEE Electrification Magazine, vol. 9, no. 2, pp. 62-71, June 2021, doi: 10.1109/MELE.2021.3070938.
- J. Kim et al., "Enhanced Frequency Support Scheme of Generic Inverter-Based Resource Models for Renewable-Dominated Power Grids," 2022 IEEE Energy Conversion Congress and Exposition (ECCE), Detroit, MI, USA, 2022, pp. 1-7, doi: 10.1109/ECCE50734.2022.9948100.