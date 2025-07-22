<x-layout>
    <h1>Create Company</h1>

    <form method="POST" action="{{ route('createCompany') }}">
        @csrf
        <div>
            <label>Name</label>
            <input type="text" name="name" id="name">
        </div>
        <div>
            <label for=""></label>
            <input type="text" name="" id="">
        </div>
        <div>
            <label for=""></label>
            <input type="text" name="" id="">
        </div>
        <div>
            <label for=""></label>
            <input type="text" name="" id="">
        </div>
        <div>
            <label for=""></label>
            <input type="text" name="" id="">
        </div>
    </form>


</x-layout>