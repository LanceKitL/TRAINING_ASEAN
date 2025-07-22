<x-layout title="Company Produts">


    <h1><span style="color:aquamarine">{{$company->company_name}}</span> Products</h1>

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
</x-layout>

