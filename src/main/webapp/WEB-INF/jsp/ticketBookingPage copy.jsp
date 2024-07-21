<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ticket Booking</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
    <div class="container mt-5">
        <h2 class="mb-4">Book Your Ticket</h2>
        <form id="bookingForm" action="/ticket" method="POST">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Ticket Number</label>
                        <input type="text" class="form-control" id="ticketNumberDisplay" name="ticketNumberDisplay"
                            value="${ticketRecord.ticketNumber}" required disabled>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Flight Number</label>
                        <input type="text" class="form-control" id="flightNumber" name="flightNumberDisplay"
                            value="${flight.flightNumber}" required disabled>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label>To</label>
                        <input type="text" class="form-control" id="toLocation" name="toLocationDisplay"
                            value="${sourceAirport.airportLocation}" required disabled>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>From</label>
                        <input type="text" class="form-control" id="fromLocation" name="fromLocationDisplay"
                            value="${destinationAirport.airportLocation}" required disabled>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Carrier Name</label>
                        <input type="text" class="form-control" id="carrierName" name="carrierNameDisplay"
                            value="${flight.carrierName}" required disabled>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Ticket Price</label>
                        <input type="text" class="form-control" id="ticketFare" name="totalAmountDisplay"
                            value="${ticketRecord.fare}" required disabled>
                    </div>
                </div>
            </div>
            <!-- Hidden inputs for submitting data -->
            <input type="text" id="flightNumberHidden" name="flightNumber" value="${flight.flightNumber}" required>
            <input type="text" id="carrierNameHidden" name="carrierName" value="${flight.carrierName}" required>
            <input type="text" id="fromLocationHidden" name="fromLocation" value="${sourceAirport.airportLocation}"
                required>
            <input type="text" id="toLocationHidden" name="toLocation" value="${destinationAirport.airportLocation}"
                required>


            <!-- Passenger details section -->
            <div>
                <div id="passengerContainer">
                    <input type="text" name="pname" placeholder="Name" class="form-control mb-2" required>
                    <input type="number" name="birthYear" placeholder="Birth Year" class="form-control mb-2" required>
                </div>
                <button type="button" class="btn btn-danger" onclick="removeEntry(this)">Remove</button>
            </div>

            <button type="button" onclick="addPassenger()" class="btn btn-info">Add Passenger</button>
            <br>
            <div>
                <button type="button" onclick="calculateTotalCost()" class="btn btn-primary">Calculate Total
                    Cost</button>
            </div>

            <div>
                <label>Total Amount:</label>
                <input type="number" id="totalAmount" name="totalAmount" class="form-control mb-2" required disabled>
            </div>

            <button type="submit" class="btn btn-success mt-3">Book Ticket</button>
        </form>
    </div>

    <script>
        function addPassenger() {
            const container = document.getElementById('passengerContainer');
            if (container.children.length <= 6) { // Assuming each passenger has 2 inputs, adjust the limit accordingly
                // Create a div to hold both inputs for a passenger
                const passengerDiv = document.createElement('div');

                // Create the name input
                const nameInput = document.createElement('input');
                nameInput.type = 'text';
                nameInput.name = 'pname';
                nameInput.placeholder = 'Name';
                nameInput.className = 'form-control mb-2';
                passengerDiv.appendChild(nameInput);

                // Create the birth year input
                const birthYearInput = document.createElement('input');
                birthYearInput.type = 'number';
                birthYearInput.name = 'birthYear';
                birthYearInput.placeholder = 'Birth Year';
                birthYearInput.className = 'form-control mb-2';
                passengerDiv.appendChild(birthYearInput);

                // Append the new passenger div to the container
                container.appendChild(passengerDiv);
            } else {
                alert('Maximum of 6 passengers allowed.');
            }
        }

        function removeEntry(button) {
            // Find the parent element of the button, which is the div containing the birth year input and the remove button
            var parentDiv = button.parentElement;
            // Remove the parent div from the document
            parentDiv.remove();
        }

        function calculateTotalCost() {
            const basePrice = parseFloat(document.getElementById('ticketFare').value);
            const birthYears = document.getElementsByName('birthYear');
            const currentYear = new Date().getFullYear();
            let totalCost = 0;

            for (let i = 0; i < birthYears.length; i++) {
                const age = currentYear - parseInt(birthYears[i].value);
                let discount = 0;
                if (age < 12) {
                    discount = 0.3; // 30% discount for children
                } else if (age >= 60) {
                    discount = 0.2; // 20% discount for seniors
                }
                totalCost += basePrice - (basePrice * discount);
            }

            document.getElementById('totalAmount').value = totalCost.toFixed(2);
        }
    </script>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>