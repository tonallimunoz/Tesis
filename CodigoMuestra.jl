#Paquetes para: llamar URL (URIParser), Visualizador (VegaLite)
using Pkg
Pkg.add(["URIParser", "VegaLite"])
using URIParser, VegaLite

#Datos de irradiancia generados por el modelo SkyGlow
cdmxirr = URI("https://raw.githubusercontent.com/tonallimunoz/Tesis/master/MapaCL-CDMX/irradianciasector.csv")

@vlplot(width=800, height=600) + 
@vlplot(
    mark={ 
        :geoshape    
    },
    data={
        url=URI("https://raw.githubusercontent.com/tonallimunoz/Tesis/master/MapaCL-CDMX/sectorescdmx.json"), #Capa de sectores
        format={
            typ=:topojson, 
            feature=:"OGRGeoJSON"
        }     
    
    },
    #Asignar valores de irradiancia a capa de sectores
    transform=[{ 
        lookup="properties.sector",
        from={
            data={
                url=cdmxirr,
                format={
                    typ=:csv
                }
            },
            key=:Sectores,
            fields=["Irradiancia"]
        }
    }],
    color={
        "Irradiancia:q",
        scale={domain=[2, 140], scheme=:reds},
        legend={title="Irradiancia (W/m)"}
    },
    projection={
        typ=:albers
    }
)