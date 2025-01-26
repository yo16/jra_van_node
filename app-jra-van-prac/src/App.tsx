import './App.css'
import { Button } from '@mui/material';

function App() {

    function handleButtonInitializeDb() {
        fetch("http://localhost:3001/initializeDb")
            .then(res => res.json())
            .then(data => {
                console.log(data);
            });
    }

    function handleButtonCreateDDLFromRecordFormat() {
        fetch("http://localhost:3001/createDDLFromRecordFormat")
            .then(res => res.json())
            .then(data => {
                console.log(data);
            });
    }

    return (
        <>

            <Button
                variant="contained"
                onClick={handleButtonCreateDDLFromRecordFormat}
            >
                SQLファイル作成
            </Button>
            <hr />
            <Button
                variant="contained"
                onClick={handleButtonInitializeDb}
            >
                Initialize DB
            </Button>
        </>
    )
}

export default App
