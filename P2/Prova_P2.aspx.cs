using System;
using System.Collections.Generic;


namespace ProgramacaoWeb._02_ASP.NET
{
    public partial class Prova_P2 : System.Web.UI.Page
    {

        public string nome;
        public string estado;
        public string cargo;

        //Coleção para Exibição
        List<string> o_Dados = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {    

            }            

        }

        protected void btnApagar_Click(object sender, EventArgs e)
        {
            txtCidade.Text = "";
            txtCurriculum.Text = "";
            txtEndereco.Text = "";
            txtNome.Text = "";
            txtOcupacao.Text = "";
            lbDadosSalvos.Text = "";
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            lbTrabalhe.Text = "Trabahe Conosco";
            lbDadosSalvos.Text = "Dados salvos com sucesso !";
            lbDadosSalvos.Focus();
        }
        protected void cargoSelecionar()
        {
            if (rbAnalista .Checked == true)
               cargo = rbAnalista.Text;

            if (rbDBA.Checked == true)
                cargo = rbDBA.Text;

            if (rbPrAsp.Checked == true)
                cargo = rbPrAsp.Text;

            if (rbPrCsharp.Checked == true)
                cargo = rbPrCsharp.Text;

            if (rbPrPhP.Checked == true)
                cargo = rbPrPhP.Text;

        }

        protected void btnExibir_Click(object sender, EventArgs e)
        {
            lbTrabalhe.Text = "Trabahe Conosco";
            lbDadosSalvos.Text = "";
            cargoSelecionar(); // seleciona o cargo                    

            o_Dados.Add("Nome: " + txtNome.Text);
            o_Dados.Add("<br />");
            o_Dados.Add("Endereço: " + txtEndereco.Text);
            o_Dados.Add("<br />");
            o_Dados.Add("Cidade: " + txtCidade.Text);
            o_Dados.Add("<br />");
            o_Dados.Add("Estado: " + estado);
            o_Dados.Add("<br />");
            o_Dados.Add("Ocupação Atual: " + txtOcupacao.Text);
            o_Dados.Add("<br />");
            o_Dados.Add("Cargo: " + cargo);
            o_Dados.Add("<br />");
            o_Dados.Add("Currículum: " + txtCurriculum.Text);
            for(int i = 0; i < o_Dados .Count; i++)
            {
                lbDadosSalvos.Text += o_Dados[i].ToString();
            }          

        }

        protected void ddlEstados_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.estado = ddlEstados.SelectedItem.Text;
            
        }
    }
}