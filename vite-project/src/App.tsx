import {useState} from 'react'
import reactLogo from './assets/react.svg'
import gif1 from './assets/1.gif'
import gif2 from './assets/2.gif'
import gif3 from './assets/3.gif'
import gif4 from './assets/4.gif'
import gif5 from './assets/5.gif'
import './App.css'

function App() {
    const [count, setCount] = useState(0)
    const [gif, setGif] = useState(0);
    const listOfGifs = [
        gif1,
        gif2,
        gif3,
        gif4,
        gif5
    ];
    return (
        <div className="App">
            <div>
                <a href="https://vitejs.dev" target="_blank">
                    <img src="/vite.svg" className="logo" alt="Vite logo"/>
                </a>
                <a href="https://reactjs.org" target="_blank">
                    <img src={reactLogo} className="logo react" alt="React logo"/>
                </a>
            </div>
            <h1>Vite + React</h1>
            <div className="card">
                <button onClick={() => setCount((count) => count + 1)}>
                    count is {count}
                </button>
                <p>
                    Edit <code>src/App.tsx</code> and save to test HMR
                </p>
                <p>
                    new edit here
                </p>
                <p>
                    another one here
                </p>
            </div>
            <p className="read-the-docs">
                Click on the Vite and React logos to learn more
            </p>
            <button onClick={() => gif == 4 ? setGif(0) : setGif(gif + 1)}>
                change gif
            </button>
            <img src={listOfGifs.at(gif)} alt="loading..."/>
        </div>
    )
}

export default App
