import { Component } from 'react';
import { Box, Paper, Typography, TextField, FormControl, Button, Card } from '@mui/material';

import api from '../../api';

class Converter extends Component {
    constructor(props) {
        super(props);
        this.state = {
            arabic: '',
            roman: '',
        };
        this.handleChange = this.handleChange.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    handleChange(event) {
        this.setState({ arabic: event.target.value });
    }

    handleSubmit(event) {
        event.preventDefault()
    }

    async componentDidMount(){
        const response = await api.post('/roman');
        this.setState({ arabic: response.data });
    }
    
    render(){        
        const { arabic, roman } = this.state;        
        return (
            <Paper align='center'>
                <Typography>
                    Convert Arabic to Roman
                </Typography>
                <FormControl>                            
                    <Box   component="form" noValidate autoComplete="off"
                    sx={{ '& .MuiTextField-root': { m: 1, width: '250px' }, }} >
                        <FormControl >
                            <TextField size="small" id="outlined-required" label="Required" defaultValue="Arabic" values={arabic} />
                            <TextField size="small" id="outlined-required" label="Required" defaultValue="Roman" values={roman} />
                            <Card>
                                <Button variant="outlined" color="success" size="small" sx={{ '& button': { m: 1} }}
                                onClick={ () => { alert('vai salvar')}} >
                                    Convert
                                </Button>
                            </Card>
                        </FormControl>
                    </Box>
                </FormControl>
            </Paper>

        )
    }
}

export default Converter;