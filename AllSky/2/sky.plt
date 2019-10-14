splot "results.dat" with lines title "Skyglow:log-scale" #data name and plot title
#set logscale z                         #comment line (using #) to show levels in linear scale, does not influence color map,isolines only
unset surf                              #no 3D surface plot, color map on base only
set view map                            #view perpendicularly to the map (base)
set size ratio -1                       #preserve aspect ratio of the plot
replot		                        #first redraw (not quite neccessary, from aesthetic reasons only)
set object 1 rectangle from screen 0,0 to screen 1,1 fillcolor rgb"white" #white background
set title "Log of Skyglow" 		#plot title in earlier versions of gnuplot
set dgrid3d 60,60,4	                #x- and y-density of regularly spaced points, smoothing (larger number=less smooth)
set pm3d		                #activate regular grid recalculation
set pm3d interpolate 5,5                #color smoothing parameters
set palette rgbformulae 7,5,15         #color palette
#set palette gray negative               #inverted greyscale palette
set contour base                        #activate line contours (isolines) on the base
#set cntrparam levels 11                #aproximate number of isolines
set cntrparam levels discrete -15,-14,-13,-12,-11,-10,-9,-8,-7,-6,-5,-4,-3,-2,-1,0,1,2,3,4,5,6,7,8,9,10   #exact isolines for logarithmic values
set cntrparam bspline                   #isolines draw method
#set clabel '%.0e'                      #decimal points of the legend, e=scientific format
set clabel '%.0f'                       #decimal points of the legend, f=floating format
set xrange [-90.000000:90.000000]	#scale of the plot
set yrange [-90.000000:90.000000]	#scale of the plot
unset xtics                             #no ticks on x-axis
unset ytics                             #no ticks on y-axis
unset ylabel                            #no label at y-axis
unset border                            #no plot border
#set key left                            #position of the legend, use 'unset key' command to hide the legend
#unset key                               #hide legend
set key at -130,90                       #position of the legend in the coordinate system of the plot
#Following lines hide the area near horizont (white cicle in the plot).
#For compatibility with earlier versions of GNUplot we use polyline instead of the circle.
set style line 101 linecolor rgbcolor '#FFFFFF' linewidth 6 
set arrow from 90.000,0.000,1 to 89.586,8.626,1 nohead front linestyle 101
set arrow from 89.658,7.844,1 to 88.493,16.401,1 nohead front linestyle 101
set arrow from 88.633,15.628,1 to 86.727,24.051,1 nohead front linestyle 101
set arrow from 86.933,23.294,1 to 84.300,31.519,1 nohead front linestyle 101
set arrow from 84.572,30.782,1 to 81.233,38.746,1 nohead front linestyle 101
set arrow from 81.568,38.036,1 to 77.547,45.678,1 nohead front linestyle 101
set arrow from 77.942,45.000,1 to 73.270,52.263,1 nohead front linestyle 101
set arrow from 73.724,51.622,1 to 68.437,58.450,1 nohead front linestyle 101
set arrow from 68.944,57.851,1 to 63.082,64.193,1 nohead front linestyle 101
set arrow from 63.640,63.640,1 to 57.247,69.446,1 nohead front linestyle 101
set arrow from 57.851,68.944,1 to 50.977,74.171,1 nohead front linestyle 101
set arrow from 51.622,73.724,1 to 44.318,78.332,1 nohead front linestyle 101
set arrow from 45.000,77.942,1 to 37.322,81.897,1 nohead front linestyle 101
set arrow from 38.036,81.568,1 to 30.043,84.838,1 nohead front linestyle 101
set arrow from 30.782,84.572,1 to 22.534,87.133,1 nohead front linestyle 101
set arrow from 23.294,86.933,1 to 14.854,88.766,1 nohead front linestyle 101
set arrow from 15.628,88.633,1 to 7.061,89.723,1 nohead front linestyle 101
set arrow from 7.844,89.658,1 to -0.785,89.997,1 nohead front linestyle 101
set arrow from 0.000,90.000,1 to -8.626,89.586,1 nohead front linestyle 101
set arrow from -7.844,89.658,1 to -16.401,88.493,1 nohead front linestyle 101
set arrow from -15.628,88.633,1 to -24.051,86.727,1 nohead front linestyle 101
set arrow from -23.294,86.933,1 to -31.519,84.300,1 nohead front linestyle 101
set arrow from -30.782,84.572,1 to -38.746,81.233,1 nohead front linestyle 101
set arrow from -38.036,81.568,1 to -45.678,77.547,1 nohead front linestyle 101
set arrow from -45.000,77.942,1 to -52.263,73.270,1 nohead front linestyle 101
set arrow from -51.622,73.724,1 to -58.450,68.437,1 nohead front linestyle 101
set arrow from -57.851,68.944,1 to -64.193,63.082,1 nohead front linestyle 101
set arrow from -63.640,63.640,1 to -69.446,57.247,1 nohead front linestyle 101
set arrow from -68.944,57.851,1 to -74.171,50.977,1 nohead front linestyle 101
set arrow from -73.724,51.622,1 to -78.332,44.318,1 nohead front linestyle 101
set arrow from -77.942,45.000,1 to -81.897,37.322,1 nohead front linestyle 101
set arrow from -81.568,38.036,1 to -84.838,30.043,1 nohead front linestyle 101
set arrow from -84.572,30.782,1 to -87.133,22.534,1 nohead front linestyle 101
set arrow from -86.933,23.294,1 to -88.766,14.854,1 nohead front linestyle 101
set arrow from -88.633,15.628,1 to -89.723,7.061,1 nohead front linestyle 101
set arrow from -89.658,7.844,1 to -89.997,-0.785,1 nohead front linestyle 101
set arrow from -90.000,0.000,1 to -89.586,-8.626,1 nohead front linestyle 101
set arrow from -89.658,-7.844,1 to -88.493,-16.401,1 nohead front linestyle 101
set arrow from -88.633,-15.628,1 to -86.727,-24.051,1 nohead front linestyle 101
set arrow from -86.933,-23.294,1 to -84.300,-31.519,1 nohead front linestyle 101
set arrow from -84.572,-30.782,1 to -81.233,-38.746,1 nohead front linestyle 101
set arrow from -81.568,-38.036,1 to -77.547,-45.678,1 nohead front linestyle 101
set arrow from -77.942,-45.000,1 to -73.270,-52.263,1 nohead front linestyle 101
set arrow from -73.724,-51.622,1 to -68.437,-58.450,1 nohead front linestyle 101
set arrow from -68.944,-57.851,1 to -63.082,-64.193,1 nohead front linestyle 101
set arrow from -63.640,-63.640,1 to -57.247,-69.446,1 nohead front linestyle 101
set arrow from -57.851,-68.944,1 to -50.977,-74.171,1 nohead front linestyle 101
set arrow from -51.622,-73.724,1 to -44.318,-78.332,1 nohead front linestyle 101
set arrow from -45.000,-77.942,1 to -37.322,-81.897,1 nohead front linestyle 101
set arrow from -38.036,-81.568,1 to -30.043,-84.838,1 nohead front linestyle 101
set arrow from -30.782,-84.572,1 to -22.534,-87.133,1 nohead front linestyle 101
set arrow from -23.294,-86.933,1 to -14.854,-88.766,1 nohead front linestyle 101
set arrow from -15.628,-88.633,1 to -7.061,-89.723,1 nohead front linestyle 101
set arrow from -7.844,-89.658,1 to 0.785,-89.997,1 nohead front linestyle 101
set arrow from -0.000,-90.000,1 to 8.626,-89.586,1 nohead front linestyle 101
set arrow from 7.844,-89.658,1 to 16.401,-88.493,1 nohead front linestyle 101
set arrow from 15.628,-88.633,1 to 24.051,-86.727,1 nohead front linestyle 101
set arrow from 23.294,-86.933,1 to 31.519,-84.300,1 nohead front linestyle 101
set arrow from 30.782,-84.572,1 to 38.746,-81.233,1 nohead front linestyle 101
set arrow from 38.036,-81.568,1 to 45.678,-77.547,1 nohead front linestyle 101
set arrow from 45.000,-77.942,1 to 52.263,-73.270,1 nohead front linestyle 101
set arrow from 51.622,-73.724,1 to 58.450,-68.437,1 nohead front linestyle 101
set arrow from 57.851,-68.944,1 to 64.193,-63.082,1 nohead front linestyle 101
set arrow from 63.640,-63.640,1 to 69.446,-57.247,1 nohead front linestyle 101
set arrow from 68.944,-57.851,1 to 74.171,-50.977,1 nohead front linestyle 101
set arrow from 73.724,-51.622,1 to 78.332,-44.318,1 nohead front linestyle 101
set arrow from 77.942,-45.000,1 to 81.897,-37.322,1 nohead front linestyle 101
set arrow from 81.568,-38.036,1 to 84.838,-30.043,1 nohead front linestyle 101
set arrow from 84.572,-30.782,1 to 87.133,-22.534,1 nohead front linestyle 101
set arrow from 86.933,-23.294,1 to 88.766,-14.854,1 nohead front linestyle 101
set arrow from 88.633,-15.628,1 to 89.723,-7.061,1 nohead front linestyle 101
set arrow from 89.658,-7.844,1 to 89.997,0.785,1 nohead front linestyle 101
unset mouse                         #deactivate mouse (and plot 3D-rotating)
replot                              #final redraw

#--- Writes Windows Metafile using grayscale map and black dashed isolines --------
set terminal emf enhanced monochrome dashed linewidth 2 dashlength 2 size 1600,1024 font ',24'  #Enhanced Windows metafile, black dashed lines
set output 'results_bw.emf'		#picture filename 
set palette gray gamma 2		#more light map
set palette negative			#inverted grayscale
replot 					#write picture
unset output				#close file
#--- End --------------------------------------------------------------------------

#--- Writes Windows Metafile in full-colour ---------------------------------------
set terminal emf enhanced color solid linewidth 3 size 1600,1024 font ",24"	#Enhanced Windows metafile, coloured palette, coloured solid lines
set output 'results_col.emf'		#picture filename 
set palette rgbformulae 7,5,15         #color palette
set palette positive			#inverted grayscale
replot					#write picture
unset output				#close file
#--- End --------------------------------------------------------------------------

#--- Writes Portable Network Graphics (PNG) picture in full-colour ----------------
set terminal png size 1600,1024 linewidth 2 font ',24' 	#PNG, coloured palette, coloured solid lines
set output 'results_col.png'		#picture filename 
set palette rgbformulae 7,5,15         #color palette
set palette positive			#inverted grayscale
replot 					#write picture
unset output				#close file
#--- End --------------------------------------------------------------------------



