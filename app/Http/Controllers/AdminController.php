<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Company;
use App\Models\Owner;
use App\Models\Product;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AdminController extends Controller
{
    
    public function authenticate(Request $request): RedirectResponse
    {

        $request->validate([
            'password' => ['required'],
        ]);


        $credentials = [
            'username' => 'admin',
            'password' => $request->password,
        ];

        if(Auth::attempt($credentials)){
            $request->session()->regenerate();

            return redirect()->intended('dashboard');
        }


        return redirect()->back()->withErrors([
            'password' => 'The provided credentials do not match our records.',
        ]);
    }


    public function logout(Request $request): RedirectResponse
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect('/');
    }

    public function manageProducts(){

        $products = Product::with('company')->get();

        return view('manage_products', compact('products'));
    }


    public function manageCompany(){
        $ActiveCompanies = Company::with(['owner', 'contact'])->where('isActive', 1)->get();
        $DeactCompanies = Company::with('owner', 'contact')->where('isActive', 0)->get();

        return view('manage_companies', compact('ActiveCompanies', 'DeactCompanies'));
    }

    //show companies associated products!
    public function showCompanyProducts($id){

        $company = Company::findorFail($id);
        $products = $company->products->where('isHidden', 0);

        return view('company-products', compact('products', 'company'));
    }

    public function deactivate($id){
        $company = Company::findOrFail($id);
        $company->isActive = 0;
        $company->timestamps = false;
        $company->save();

        $company->products()->update(['isHidden' => 1]);

        return redirect()->back()->with('success', 'company deactivate and products hidden');
    }

    public function activate($id){
        $company = Company::findOrFail($id);
        $company->isActive = 1;
        $company->timestamps = false;
        $company->save();

        $company->products()->update(['isHidden' => 0]);

        return redirect()->back()->with('success', 'company deactivate and products hidden');
    }
}
