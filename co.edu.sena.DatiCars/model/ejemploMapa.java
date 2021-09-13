package model;

import java.awt.BorderLayout;
import java.util.concurrent.TimeUnit;

import javax.swing.JFrame;
import javax.swing.WindowConstants;

import com.teamdev.jxmaps.swing.MapView;
import com.teamdev.jxmaps.*;


public class ejemploMapa extends MapView{

		private static Map map;


		private CircleOptions settingsCircle;

		private  PolylineOptions settingsLine;

		
		public CircleOptions getSettingsCircle() {
			return settingsCircle;
		}

		public void setSettingsCircle(CircleOptions settingsCircle) {
			this.settingsCircle = settingsCircle;
		}





	
		public Marker generateMarker(LatLng pos)
		{
			Marker marker=null;
		
				
				 marker = new Marker(map);
				marker.setPosition(pos);
				map.setCenter(pos);
		
			System.out.println("Graficado marker");
			return marker;
		}


		public void generateSimplePath(LatLng start,LatLng end,Boolean markers)
		{
			LatLng[] path = {start,end};
			Polyline polyline = new Polyline(map);
			polyline.setPath(path);
			if(markers)
			{
				generateMarker(start);
				generateMarker(end);
			}
		}

		public Map darMap()
		{
			return map;
		}


		public void generateArea(LatLng center,Double radius)
		{
			Circle circle = new Circle(map);
			circle.setCenter(center);
			circle.setRadius(radius);
			circle.setVisible(true);
			circle.setOptions(settingsCircle);
		}


		public void GenerateLine(boolean markers,LatLng... path)
		{
			if(markers)
			{
				for(LatLng p:path)
				{
					generateMarker(p);
				}
			}
			Polyline polyline = new Polyline(map);
			polyline.setPath(path);
		}

	

		public ejemploMapa(String pString) {

			JFrame frame = new JFrame("Chicago-Data: "+pString);


			settingsCircle=new CircleOptions();
			settingsCircle.setFillColor("#FF0000");
			settingsCircle.setRadius(2000000);
			settingsCircle.setFillOpacity(0.35);

			settingsLine=new PolylineOptions();
			settingsLine.setGeodesic(true);
			settingsLine.setStrokeColor("#FF0000");
			settingsLine.setStrokeOpacity(1.0);
			settingsLine.setStrokeWeight(2.0);

			setOnMapReadyHandler(new MapReadyHandler() {
				@Override
				public void onMapReady(MapStatus status) {
					if (status == MapStatus.MAP_STATUS_OK) {
						
						map = getMap();
						MapOptions mapOptions = new MapOptions();
						MapTypeControlOptions controlOptions = new MapTypeControlOptions();
						controlOptions.setPosition(ControlPosition.BOTTOM_LEFT);
						mapOptions.setMapTypeControlOptions(controlOptions);
						
						map.setOptions(mapOptions);
						map.setCenter(new LatLng(42.045527, -88.037659));
						map.setZoom(10);

					}
				}
			});
			System.out.print("Espere mientras se genera el mapa ");
			try {
				for(int i=0;i<10;i++)
				{
					TimeUnit.SECONDS.sleep(1);
					System.out.print(".");
				}
			} catch (InterruptedException e1) {
				
				e1.printStackTrace();
			}
			System.out.println("|");
			frame.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
			frame.add(this, BorderLayout.CENTER);
			frame.setSize(700, 500);
			frame.setLocationRelativeTo(null);
			frame.setVisible(true);
		}
		

		public static void main(String[] args) {
			
			final ejemploMapa example = new ejemploMapa("test");
			example.generateMarker(map.getCenter());
			
		

		}



	}
