using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace WebApiSysmap.Models
{
    public class Produto
    {
        public int ProdutoId { get; set; }
        public string Nome { get; set; }
       // [Required(ErrorMessage="Data é necessária")]
        public DateTime DataCriacao { get; set; }

        public DateTime DataAlteracao { get; set; }
        public DateTime DataExclusao { get; set; }
        [Range(1,10, ErrorMessage = "Id do Usuario é obrigatorio")]
        public int CriadoPorUsuId { get; set; }
        public int AlteradoPorUsuId { get; set; }
        public int ExcluidoPorUsuId { get; set; }
        public bool IndAtivo { get; set; }
    }
}
