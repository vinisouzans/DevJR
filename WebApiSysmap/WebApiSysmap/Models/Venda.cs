using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApiSysmap.Models
{
    public class Venda
    {
        public int VendaId { get; set; }
        public DateTime DataCriacao { get; set; }
        public DateTime DataAlteracao { get; set; }
        public DateTime DataExclusao { get; set; }
        public int CriadoPorUsuId { get; set; }
        public int AlteradoPorUsuId { get; set; }
        public int ExcluidoPorUsuId { get; set; }
        public bool IndAtivo { get; set; }
    }
}
