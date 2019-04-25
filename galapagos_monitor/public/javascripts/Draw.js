
function newTimeString(seconds) {
    return moment().add(seconds, 's').format("YYYY MM DD, HH:mm:ss");
}

// Global
var Global = {
    warningCap: 75,
    updateInterval: 2000,
    alertTimer: undefined,
    updateTimer: undefined,
    numGraphPoints: 10,
    activeTab: NaN,
    board_info: {},     // Name: {ID, IP, port}
    configs: [],        
    tracking: {},       // Name: ID,
    col: []
};

var color = Chart.helpers.color;

window.onload = function() {

	const Http = new XMLHttpRequest();
    const url='/getBoards';
    
    Http.open("GET", url);
    Http.send();
    
    Http.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            boards_data = JSON.parse(this.responseText);
            Global.board_info = boards_data;
            // console.log(Global.board_info.Default.ID);
            var op_to_add = '';
            for(item in boards_data){
                // Set the config to the selection
                op_to_add += '<br><option value="'+item+'">'+item+'</option>';
            } 
            // console.log(op_to_add);
            $('#selectBoard').append(op_to_add);
        }
    };

    // Dashboard chart config: bar chart
    var config = {
        type: 'bar',
        data: {
            datasets: [],
        },
        options: {
            scales: {
                xAxes: [{
                    type: 'category',
                    display: true,
                    barPercentage: 0.5,
                    barThickness: 'flex',
                    maxBarThickness: 50,
                    minBarLength: 2,
                    scaleLabel: {
                        display: true,
                        labelString: 'Board',
                        fontColor: '#FFFFFF',
                        fontSize: 20,
                        fontStyle: 'bold',
                        fontFamily: "Helvetica"
                    },
                    ticks: {
                        major: {
                            fontStyle: 'bold',
                            fontColor: '#FFFFFF'
                        }
                    },
                    color: '#FFFFFF',
                }],
                yAxes: [{
                    display: true,
                    gridLines: {
                        color: '#FFFFFF',
                        lineWidth: 0.5,
                        zeroLineColor: '#FFFFFF',
                        zeroLineWidth: 3,
                    },
                    scaleLabel: {
                        display: true,
                        labelString: 'Temperature',
                        fontColor: '#FFFFFF',
                        fontSize: 20,
                        fontStyle: 'bold',
                        fontFamily: "Helvetica"
                    },
                    ticks: {
                        fontStyle: 'bold',
                        fontColor: '#FFFFFF',
                        min: 30,
                        max: 90
                    },
                    color: '#FFFFFF',
                }]
            },
            legend: {
                labels: {
                    fontColor: 'rgb(255,255,255)',
                    fontSize: 15,
                    fontStyle: 'bold',
                }
            }
        }
    };

    Global.configs[0] = config;
	var ctx = document.getElementById('canvas').getContext('2d');
    window.Chart0 = new Chart(ctx, Global.configs[0]);

    // Cookie Reading/Setting
    // List: warningCap, numGraphPoints, updateInterval
    // TODO: reopen tracking list 
    if (checkCookie("warningCap")) {
        Global.warningCap = parseInt(getCookie("warningCap"));
    } else setCookie("warningCap", 75, 30, '/');
    
    if (checkCookie("numGraphPoints")) {
        Global.warningCap = parseInt(getCookie("warningCap"));
    } else setCookie("numGraphPoints", 10, 30, '/');

    if (checkCookie("updateInterval")) {
        Global.warningCap = parseInt(getCookie("warningCap"));
    } else setCookie("updateInterval", 2000, 30, '/');

};

// Function to open canvas when tag buttons have click event.
function openCanvas(evt, board){
    var i, tabcontent, tablinks;
    Global.activeTab = board;
	tabcontent = document.getElementsByClassName("tabcontent");
	tablinks = document.getElementsByClassName("tablinks");

	// Hide currently shown one
	for(i =0; i < tabcontent.length;i++){
		tabcontent[i].style.display = "none";
	}

	for(i=0; i < tablinks.length; i++){
		tablinks[i].className = tablinks[i].className.replace(" active","");
	}

	// Show the clicked element
	document.getElementById(board).style.display = "block";
	evt.currentTarget.className += " active";
}


