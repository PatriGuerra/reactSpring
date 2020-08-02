import React, { Component } from 'react'
import propTypes from 'prop-types'
import { Button, Alert } from 'react-bootstrap'
import 'bootstrap/dist/css/bootstrap.min.css'
import './Counter.css'
import { render } from '@testing-library/react'


class Counter extends Component {

  constructor(){
    super(); //Needed
    this.state = {
      counter : 0,
      parra: ""
    }
  }

  render = () => {
    const styled = {fontSize: "50px"}
    return (
      <div className="Counter">
          <CounterButton incrementMethod={this.increment} decrementMethod={this.decrement}/>
          <CounterButton cantidad={5} incrementMethod={this.increment} decrementMethod={this.decrement}/>
          <CounterButton cantidad={10} incrementMethod={this.increment} decrementMethod={this.decrement}/>
          <CounterButton cantidad={100} incrementMethod={this.increment} decrementMethod={this.decrement}/>
          <h3 className="count" style={styled} >{this.state.counter}</h3>
          <Button className="reset" variant="danger" onClick={this.reset}>Reset</Button>
          <hr></hr>
          <Parragraph texto={"mundo"} anadirMethod={this.anadir}/>
          <div className="pg">Hola {this.state.parra}</div>
          {/*<LearningComponents/>*/}
      </div>
    )
  }

  reset = () => {
    this.setState ({counter : 0 })
  }

  increment = (cantidad) => {
    //console.log(`increment from child in parent - ${cantidad}`)
    this.setState(
      (prevState) => ({ counter: prevState.counter + cantidad })
    )
  }

  decrement = (cantidad) => {
    this.setState(
      (prevState) => ({counter: prevState.counter - cantidad})
    )
  }

  anadir = (texto) => {
    this.setState(
      (prevState) => ({parra: texto})
    )
  }

}

class CounterButton extends Component{

  //Define de initial state in a constructor
  //state =>counter
  constructor(){
    super() //Needed
    
    //this.increment = this.increment.bind(this)
  }

  render = () => { //U dont need to bind with arrow functions in constructor
    return (
          <div className="Counter">
              <Button onClick={() => this.props.incrementMethod(this.props.cantidad)} className="BStyled" variant="primary">+{this.props.cantidad}</Button>
              <Button onClick={() => this.props.decrementMethod(this.props.cantidad)} className="BStyled" variant="primary">-{this.props.cantidad}</Button>
          </div>
    )
  }

  // increment = () => { //Update state => counter++
  //   this.props.incrementMethod(this.props.cantidad)
  // }

  // decrement = ()=> {
  //   this.props.decrementMethod(this.props.cantidad)
  // }
}

class Parragraph extends Component{
  constructor(){
    super()
  }

  render=() => {
    return (
      <Button variant="info" onClick={() => this.props.anadirMethod(this.props.texto)}>Añadir texto</Button>
    )
  }
}

CounterButton.defaultProps = {
  cantidad: 1
}

CounterButton.propTypes = {
  cantidad : propTypes.number
}

export default Counter
