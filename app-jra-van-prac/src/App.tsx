
import { Button, Stack, Box, Typography } from '@mui/material';

import './App.css'



function App() {
    const SERVER_URL = "http://localhost:3001";

    // 全Create Table文実行
    function handleButtonExecuteQueryFile() {
        fetch(`${SERVER_URL}/executeQueryFile`)
            .then(res => res.json())
            .then(data => {
                console.log(data);
            });
    }

    // Create Table文のSQLファイル作成
    function handleButtonGenerateQueryFile() {
        fetch(`${SERVER_URL}/generateQueryFile`)
            .then(res => res.json())
            .then(data => {
                console.log(data);
            });
    }

    // データ取り込み
    // 蓄積型
    function handleButtonAccumulatedLoadData() {
        fetch(`${SERVER_URL}/loadAccumulatedData`)
            .then(res => res.json())
            .then(data => {
                console.log(data);
            });
    
    }

    return (
        <Stack
            direction="column"
            spacing={5}
        >
            <Stack
                direction="column"
                spacing={2}
            >
                <Box>
                    <Typography variant="h5">DB初期化関連</Typography>
                </Box>
                <Box
                    sx={{
                        paddingLeft: "30px",
                    }}
                >
                    <Button
                        variant="contained"
                        onClick={handleButtonGenerateQueryFile}
                    >
                        Create Table文のSQLファイル作成
                    </Button>
                </Box>
                <Box
                    sx={{
                        paddingLeft: "30px",
                    }}
                >
                    <Button
                        variant="contained"
                        onClick={handleButtonExecuteQueryFile}
                    >
                        全Create Table文実行
                    </Button>
                </Box>
            </Stack>
            <Stack
                direction="column"
                spacing={2}
            >
                <Box>
                    <Typography variant="h5">データ取り込み</Typography>
                </Box>
                <Box
                    sx={{
                        paddingLeft: "30px",
                    }}
                >
                <Button
                    variant="contained"
                    onClick={handleButtonAccumulatedLoadData}
                >
                    JVデータ(蓄積型)
                </Button>
                </Box>
            </Stack>
        </Stack>
    )
}

export default App
