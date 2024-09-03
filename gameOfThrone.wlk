object rocadragon{
    const historialObjetos = []
 
    method guardarObjetos(objetos) {
        historialObjetos.addAll(objetos)
    }
    method almacen() {
      return historialObjetos
    }
}

object daenerys{
    var capacidad = 2;
    const objetos = #{}
    const historial = []
    const allObjects = []
 
    method obtenerObjeto(objeto) {
      if(capacidad>0){
        objetos.add(objeto)
        historial.add(objeto)
        capacidad-=1
        return "Se ha obtenido "+objeto+", la capacidad ahora es de "+capacidad
      }else 
        historial.add(objeto)
        return "No se puede obtener el objeto, no hay capacidad suficiente"
    }

    method objetosAct() {
        return objetos
    }

    method rocadragon() {
        capacidad+=objetos.size()
        rocadragon.guardarObjetos(objetos)
        objetos.clear()
        return "Se han guardado los objetos en Rocadragon, ahora la capacidad es de: "+capacidad
    }

    method allObjects() {
        allObjects.addAll(objetos)
        allObjects.addAll(rocadragon.almacen())
        return allObjects
    }

    method pendientes() {
        
    }

    method historial() {
        return historial
    }

}



object espadadedragon {
}

object libro {
}

object collar {
}

object armadura {
}