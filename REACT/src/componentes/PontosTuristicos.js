import React from "react";
import { Table, Button, Form, Modal } from "react-bootstrap";

class PontosTuristicos extends React.Component{

    constructor(props){
        super(props);

        this.state = {
            id: 0,
            nome: '',
            descricao:'',
            localizacao:'',
            cidade:'',
            estado:'',
            modalAberta: true
        }

    }


  
    componentDidMount(){
        this.buscarPontosTuristicos();
    }

    buscarEstados = () => {
        fetch("http://localhost:5163/api/PontoTuristico")
        .then(resposta => resposta.json())
        .then( dados => {
            this.setState({ estados : dados})
        })
    }

    buscarPontosTuristicos = () => {
        fetch("http://localhost:5163/api/PontoTuristico")
        .then(resposta => resposta.json())
        .then( dados => {
            this.setState({ pontosturisticos : dados})
        })
    }

    deletarPontosTuristicos =() => {
        fetch("http://localhost:5163/api/PontoTuristico/")
        .then( resposta => {
            if(resposta.ok){
                this.buscarPontosTuristicos();
            }
        })
    }

    cadastraPontoTuristico = () => {
        fetch("http://localhost:5163/api/PontoTuristico/")
            .then(resposta => {
                if(resposta.ok){
                    this.buscarPontosTuristicos();
                }else{
                    alert("Não foi possivel cadastrar")
                }
            })
    }

    atualizarPontoTuristico = () => {
        fetch("http://localhost:5163/api/PontoTuristico/")
            .then(resposta => {
                if(resposta.ok){
                    this.buscarPontosTuristicos();
                }else {
                    alert("Não foi possivel atualizar os dados ")
                }
            })
    }

    componentWillUnmount(){

    }

    renderTabela(){
        return <Table striped bordered hover>
        <thead>
            <tr>
                <th>Nome</th>
                <th>Localização</th>
                <th>Ações</th>
            </tr>
        </thead>

        <tbody>

            {
                this.state.pontosturisticos.map((pontosturisticos) =>
                <tr>
                    <td>{pontosturisticos.nome}</td>
                    <td>{pontosturisticos.localizacao}</td>
                    <td><Button variant="primary" onClick={() => this.deletarPontosTuristicos(pontosturisticos.id)}>Atualizar</Button> </td>
                    <td><Button variant="danger" onClick={() => this.deletarPontosTuristicos(pontosturisticos.id)}>Deletar</Button> </td>
                </tr>
                )
            }
          

        </tbody>
    </Table>

    }

    atualizaNome = (e) => {
        this.setState(
           {
            nome: e.target.value
           } 
        )
    }

    atualizaDescricao = (e) => {
        this.setState(
           {
            descricao: e.target.value
           } 
        )
    }

    atualizaLocalizacao = (e) => {
        this.setState(
           {
            localizacao: e.target.value
           } 
        )
    }

    atualizaCidade = (e) => {
        this.setState(
           {
            cidade: e.target.value
           } 
        )
    }

    submit = () =>{

        if(this.state.id ==0){
            const pontosturisticos = {
                nome: this.state.nome,
                descricao: this.state.descricao,
                localizacao: this.state.localizacao,
                cidade: this.state.cidade,
                estado: this.state.estado
            }  
        }else{
            const pontosturisticos = {
                id: this.state.id,
                nome: this.state.nome,
                descricao: this.state.descricao,
                localizacao: this.state.localizacao,
                cidade: this.state.cidade,
                estado: this.state.estado
        }

        this.cadastraPontoTuristico();
    }}
   
    fecharModal = () =>{
        this.setState(
        {
            modalAberta: false
        })
    }

    abrirModal = () =>{
        this.setState(
        {
            modalAberta: true
        })
    }


    render(){

        return(
           <div>

            <Modal show={this.state.modalAberta} onHide={this.fecharModal}>
                <Modal.Header>
                    <Modal.Title>Dados Ponto Turistico</Modal.Title>
                </Modal.Header>
                <Modal.Body> 
                <Form>
        <Form.Group className="mb-3">
          <Form.Label htmlFor="disabledTextInput">Nome</Form.Label>
          <Form.Control type="text" placeholder="Digite o nome do ponto turistico*" value={this.state.nome} onChange={this.atualizaNome} />
        </Form.Group>
        <Form.Group className="mb-3">
          <Form.Label htmlFor="disabledTextInput">Descrição</Form.Label>
          <Form.Control id="disabledTextInput" placeholder="Digite a descrição*" value={this.state.descricao} onChange={this.atualizaDescricao} />
        </Form.Group>
        <Form.Group className="mb-3">
          <Form.Label htmlFor="disabledTextInput">Localização</Form.Label>
          <Form.Control id="disabledTextInput" placeholder="Digite a localização*" value={this.state.localizacao} onChange={this.atualizaLocalizacao} />
        </Form.Group>
        <Form.Group className="mb-3">
          <Form.Label htmlFor="disabledTextInput">Cidade</Form.Label>
          <Form.Control id="disabledTextInput" placeholder="Digite a cidade*" value={this.state.cidade} onChange={this.atualizaCidade} />
        </Form.Group>
        <Form.Group className="mb-3">
        <Form.Label htmlFor="disabledSelect">{pontosturisticos.estado}</Form.Label>
          <Form.Select id="">
          </Form.Select>
        </Form.Group>
        <Form.Group className="mb-3">
        </Form.Group>
       
    </Form>
       </Modal.Body>
                <Modal.Footer>
                    <Button variant="secondary" onClick={this.fecharModal}>
                        Fechar
                    </Button>
                    <Button variant="primary" onClick={this.fecharModal}>
                        Salvar
                    </Button>
                </Modal.Footer> 
                </Modal>
                <Button variant="warnig" type="submit" onClick={this.abrirModal}>Novo</Button>


                {this.renderTabela()}
           </div>
        )
    }
}
export default PontosTuristicos; 