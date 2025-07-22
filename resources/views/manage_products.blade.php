<x-layout title="Products Listings">

    <div style="display:flex; justify-content:space-between;">
        <h1>Here are the products listings</h1>
        <div>
            <button id="translate">french</button>
        </div>
    </div>

    <table border="1">
        <th>Name</th>
        <th>Description</th>
        <th>Brand Name</th>
        <th>Country Origin</th>
        <th>Gross Weight</th>
        <th>Net Content Weight</th>
        <tbody id="test">
            @foreach ($products as $product)
                    <tr>
                        <td>{{$product->name_fr}}</td>
                        <td>{{$product->description_fr}}</td>
                        <td>{{$product->brand_name}}</td>
                        <td>{{$product->country_origin}}</td>
                        <td>{{$product->gross_weight}}</td>
                        <td>{{$product->net_content}}<span>{{$product->weight_unit}}</span></td>
                    </tr>
            @endforeach
        </tbody>
    </table>

    <script>
        const translateBtn = document.getElementById('translate');
        const body = document.getElementById('test');

        translateBtn.addEventListener('click', () => {
            if(translateBtn.innerText === 'french'){
                translateBtn.innerText = 'english';
                body.innerHTML = `
                    @foreach ($products as $product)
                        <tr>
                            <td>{{$product->name_fr}}</td>
                            <td>{{$product->description_fr}}</td>
                            <td>{{$product->brand_name}}</td>
                            <td>{{$product->country_origin}}</td>
                            <td>{{$product->gross_weight}}</td>
                            <td>{{$product->net_content}}<span>{{$product->weight_unit}}</span></td>
                        </tr>
                    @endforeach
                `
            }else if(translateBtn.innerText === "english"){
                translateBtn.innerText = 'french';
                body.innerHTML = `
                    @foreach ($products as $product)
                        <tr>
                            <td>{{$product->name}}</td>
                            <td>{{$product->description}}</td>
                            <td>{{$product->brand_name}}</td>
                            <td>{{$product->country_origin}}</td>
                            <td>{{$product->gross_weight}}</td>
                            <td>{{$product->net_content}}<span>{{$product->weight_unit}}</span></td>
                        </tr>
                    @endforeach
                `
            }
        })  

        
    </script>

</x-layout>