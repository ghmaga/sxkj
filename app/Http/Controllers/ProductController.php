<?php

namespace App\Http\Controllers;

use App\Models\Slide;
use App\Models\Brand;
use App\Models\Product;
use App\Models\ProductSku;
use App\Models\ProductFile;
use App\Models\ProductVideo;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index(Request $request)
    {
        //获取产品轮换图id=0
        $slides = Slide::where('parent_id', 0)->orderBy('order', 'desc')->get();
        $brands = Brand::orderBy('order', 'desc')->get();
        

        $cate1 = Product::where('parent_id', 'like', '%1%')->orderBy('order', 'desc')->get();
        $cate2 = Product::where('parent_id', 'like', '%2%')->orderBy('order', 'desc')->get();
        $cate3 = Product::where('parent_id', 'like', '%3%')->orderBy('order', 'desc')->get();
        $cate4 = Product::where('parent_id', 'like', '%4%')->orderBy('order', 'desc')->get();
        $cate5 = Product::where('parent_id', 'like', '%5%')->orderBy('order', 'desc')->get();
        $cate6 = Product::where('parent_id', 'like', '%6%')->orderBy('order', 'desc')->get();
        $cate7 = Product::where('parent_id', 'like', '%7%')->orderBy('order', 'desc')->get();
        $cate8 = Product::where('parent_id', 'like', '%8%')->orderBy('order', 'desc')->get();

        //搜索

            // 创建一个查询构造器
            $builder = Product::query();
            // 判断是否有提交 search 参数，如果有就赋值给 $search 变量
            // search 参数用来模糊搜索商品
            if ($search = $request->input('search', '')) {
                $like = '%'.$search.'%';
                // 模糊搜索商品标题、商品详情、SKU 标题、SKU描述
                $builder->where(function ($query) use ($like) {
                    $query->where('title', 'like', $like)
                        ->orWhere('en_title', 'like', $like)
                        ->orWhere('body', 'like', $like)
                        ->orWhere('en_body', 'like', $like)
                        ->orWhereHas('skus', function ($query) use ($like) {
                            $query->where('title', 'like', $like)
                                ->orWhere('en_title', 'like', $like)
                                ->orWhere('description', 'like', $like)
                                ->orWhere('en_description', 'like', $like);
                        });
                });
                $products = $builder->orderBy('order', 'desc')->paginate(10);
            } else {
                $products = Product::where('recommend', 1)->orderBy('order', 'desc')->limit(2)->get();
            }     
         // dd($products);


    	return view('product.index', compact('slides', 'products', 'brands', 'cate1', 'cate2', 'cate3', 'cate4', 'cate5', 'cate6', 'cate7', 'cate8'));
    }

    public function show($id)
    {
    	$product = Product::find($id);
    	$skus = ProductSku::where('product_id', $id)->orderBy('order', 'desc')->get();
        $files = ProductFile::where('product_id', $id)->orderBy('order', 'desc')->get();
        $videos = ProductVideo::where('product_id', $id)->orderBy('order', 'desc')->get();
        $brands = Brand::orderBy('order', 'desc')->get();
        // dd($videos);
        $slides = Slide::where('parent_id', 0)->orderBy('order', 'desc')->get();
    	// dd($skus);

        $cate1 = Product::where('parent_id', 'like', '%1%')->orderBy('order', 'desc')->get();
        $cate2 = Product::where('parent_id', 'like', '%2%')->orderBy('order', 'desc')->get();
        $cate3 = Product::where('parent_id', 'like', '%3%')->orderBy('order', 'desc')->get();
        $cate4 = Product::where('parent_id', 'like', '%4%')->orderBy('order', 'desc')->get();
        $cate5 = Product::where('parent_id', 'like', '%5%')->orderBy('order', 'desc')->get();
        $cate6 = Product::where('parent_id', 'like', '%6%')->orderBy('order', 'desc')->get();
        $cate7 = Product::where('parent_id', 'like', '%7%')->orderBy('order', 'desc')->get();
        $cate8 = Product::where('parent_id', 'like', '%8%')->orderBy('order', 'desc')->get();


    	return view('product.show', compact('product', 'skus', 'slides', 'files', 'videos', 'brands', 'cate1', 'cate2', 'cate3', 'cate4', 'cate5', 'cate6', 'cate7', 'cate8'));
    }

    public function cate($cate)
    {
        if($cate == '-1')
        {
            $catetories = Product::orderBy('order', 'desc')->paginate(10);
        }else{
            $catetories = Product::where('parent_id','like','%'.$cate.'%')->orderBy('order', 'desc')->paginate(10);
        }
        $slides = Slide::where('parent_id', 0)->orderBy('order', 'desc')->get();
        $brands = Brand::orderBy('order', 'desc')->get();
         // dd($catetories);

        // header中需要
        $cate1 = Product::where('parent_id', 'like', '%1%')->orderBy('order', 'desc')->get();
        $cate2 = Product::where('parent_id', 'like', '%2%')->orderBy('order', 'desc')->get();
        $cate3 = Product::where('parent_id', 'like', '%3%')->orderBy('order', 'desc')->get();
        $cate4 = Product::where('parent_id', 'like', '%4%')->orderBy('order', 'desc')->get();
        $cate5 = Product::where('parent_id', 'like', '%5%')->orderBy('order', 'desc')->get();
        $cate6 = Product::where('parent_id', 'like', '%6%')->orderBy('order', 'desc')->get();
        $cate7 = Product::where('parent_id', 'like', '%7%')->orderBy('order', 'desc')->get();
        $cate8 = Product::where('parent_id', 'like', '%8%')->orderBy('order', 'desc')->get();


        return view('product.cate', compact('slides', 'catetories', 'brands', 'cate1', 'cate2', 'cate3', 'cate4', 'cate5', 'cate6', 'cate7', 'cate8'));
    }
}
