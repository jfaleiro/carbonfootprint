This small application demonstrates Shiny's automatic UI updates as a tool to perform some _ad hoc_ investigation in data extracted from the 1974 issue of _Motor Trend_, an US automobile magazine. 

The data comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973–74 models).  

Select features by moving the **Predictor** and the **Outcome** drop bown boxes to visualize a linear interpolation between the features selected. The shaded area represents the 95% confidence interval of the linear prediction.

You can select a **Clustered** featured in the third drop-down box to add colors to points as a way to help visualize clusters.

On the right side you have samples of the server and UI code that should highlight as the application executes. You can see that `renderPlot` expression is automatically re-evaluated every type one of the reactives associated to the drop-down boxes `input$xcol`, `input$ycol` or `input$cluster` is modified.

Enjoy!
