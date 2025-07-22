<x-layout title="manage companies">
        <div class="create-company">
            <button><a style="text-decoration: none" href="{{ route('createCompany') }}">Create New Company</a></button>
        </div>


        <div class="active">
            <h1>Manage Companies</h1>
            <table border="1">
                <thead>
                    <tr>
                        <th>Company Name</th>
                        <th>Company Address</th>
                        <th>Company Telephone</th>
                        <th>Company Email</th>
                        <th>Owner</th>
                        <th>Deactivate</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($ActiveCompanies as $company)
                    <tr>
                        <td><a href="/company/products/{{ $company->id }}">{{ $company->company_name }}</a></td>
                        <td>{{ $company->company_address }}</td>
                        <td>{{ $company->company_telephone }}</td>
                        <td>{{ $company->company_email }}</td>
                        <td>{{ $company->owner->name }}</td>
                        <td>
                            <form action="{{ route('deactivate', $company->id) }}" method="POST" style="display:inline;">
                                @csrf
                                @method('PATCH')
                                <button type="submit" onclick="return confirm('Are you sure you want to deactivate this company?');">
                                    Deactivate
                                </button>
                            </form>
                        </td>
                </tr>
                    @endforeach
            </tbody>
        </table>
    </div>

        <div class="deactivate">
                <h1>Deactivated Companies</h1>
                
                <table border="1">
                    <thead>
                        <tr>
                            <th>Company Name</th>
                            <th>Company Address</th>
                            <th>Company Telephone</th>
                            <th>Company Email</th>
                            <th>Owner</th>
                            <th>Activate</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($DeactCompanies as $company)
                        <tr>
                            <td><a href="/company/products/{{ $company->id }}">{{ $company->company_name }}</a></td>
                            <td>{{ $company->company_address }}</td>
                            <td>{{ $company->company_telephone }}</td>
                            <td>{{ $company->company_email }}</td>
                            <td>{{ $company->owner->name }}</td>
                            <td>
                                <form action="{{ route('activate', $company->id) }}" method="POST" style="display:inline;">
                                    @csrf
                                    @method('PATCH')
                                    <button type="submit" onclick="return confirm('Are you sure you want to activate this company?');">
                                        Activate
                                    </button>
                                </form>
                            </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    
</x-layout>
