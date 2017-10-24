using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
using System.Data;

namespace libro.AccesoLibro
{
    public class LibroRepository
    {
        private LIBRERIA_MAVCEntities1 Datos = null;

        public LibroRepository()
        {
            Datos = new LIBRERIA_MAVCEntities1();
        }

        //public int consultar(int Id)
        //{
           // var row = Datos.Libroes.Find(Id);
            //return Datos.SaveChanges();
        //}
                
        public List<Libro> ObtenerLibros()
        {
            return Datos.Libroes.ToList();
        }

        public List<Libro> ObtenerPorNombre(String Nombre)
        {
            IQueryable<Libro> libro = from p in Datos.Libroes
                                        where p.Nombre.Contains(Nombre)
                                        select p;
            return libro.ToList();
        }

        public Libro Agregar(String Nombre, String Autor, String Editorial)
        {
            Libro libro = new Libro();
            libro.Id = 0;
            libro.Nombre = Nombre;
            libro.Autor = Autor;
            libro.Editorial = Editorial;

            Datos.Libroes.Add(libro);
            Datos.SaveChanges();
            return libro;
        }

        public int Eliminar(int Id)
        {
            var row = Datos.Libroes.Find(Id);
            Datos.Libroes.Remove(row);
            return Datos.SaveChanges();
        }

        public int Actualizar(int id, string nombre, string autor, string editorial)
        {
            int resultado = 0;
            var row = Datos.Libroes.Find(id);
            row.Id = id;
            row.Nombre = nombre;
            row.Autor = autor;
            row.Editorial = editorial;

            return Datos.SaveChanges();            
        }

    }
}
