<x-shop::layouts.account>
    {{-- Page Title --}}
    <x-slot:title>
        @lang('shop::app.customers.account.orders.title')
    </x-slot>
    
    {{-- breadcrumbs --}}
    @section('breadcrumbs')
        <x-shop::breadcrumbs name="orders"></x-shop::breadcrumbs>
    @endSection

    <div class="flex justify-between items-center">
        <div class="">
            <h2 class="text-[26px] font-medium">
                @lang('shop::app.customers.account.orders.title')
            </h2>
        </div>
    </div>

    @if (! $orders->isEmpty())
        {{-- Orders Information --}}
        <div class="relative mt-[30px] overflow-x-auto border rounded-[12px]">
            <table class="w-full text-sm text-left">
                <thead class="border-b-[1px] border-[#E9E9E9] text-[14px] text-black bg-[#F5F5F5]">
                    <tr>
                        <th 
                            scope="col" 
                            class="px-6 py-[16px] font-medium"
                        >
                            @lang('shop::app.customers.account.orders.order_id')
                        </th>

                        <th
                            scope="col"
                            class="px-6 py-[16px] font-medium"
                        >
                            @lang('shop::app.customers.account.orders.order_date')
                        </th>

                        <th
                            scope="col"
                            class="px-6 py-[16px] font-medium"
                        >
                            @lang('shop::app.customers.account.orders.total')
                        </th>

                        <th
                            scope="col"
                            class="px-6 py-[16px] font-medium"
                        >
                            @lang('shop::app.customers.account.orders.status')
                        </th>

                        <th
                            scope="col"
                            class="px-6 py-[16px] font-medium"
                        >
                            @lang('shop::app.customers.account.orders.action')
                        </th>
                    </tr>
                </thead>

                <tbody>
                    @foreach ($orders as $order)
                    {{-- @dd($order) --}}
                        <tr class="bg-white border-b">
                            <th
                                scope="row"
                                class="px-6 py-[16px] whitespace-nowrap text-black font-medium"
                            >
                                {{ $order->id}}
                            </th>

                            <td class="px-6 py-[16px] text-black font-medium">
                                {{ $order->created_at}}
                            </td>

                            <td class="px-6 py-[16px] text-black font-medium">
                                ₹ {{ $order->grand_total}}
                            </td>

                            <td class="px-6 py-[16px] text-black font-medium"> 
                                @switch($order->status)
                                    @case('processing')

                                        <span class="px-[10px] py-[4px] rounded-[12px] bg-[#5BA34B] text-white text-[12px]">
                                            {{  $order->status }}
                                        </span>        
                                        @break

                                    @case('completed')

                                        <span class="px-[10px] py-[4px] rounded-[12px] bg-[#5BA34B] text-white text-[12px]">
                                            {{ $order->status}}
                                        </span> 
                                        @break

                                    @case('pending')

                                        <span class="px-[10px] py-[4px] rounded-[12px] bg-[#FDB60C] text-white text-[12px]">
                                            {{ $order->status }}
                                        </span> 
                                        @break

                                    @case('canceled')

                                        <span class="px-[10px] py-[4px] rounded-[12px] bg-[#FDB60C] text-white text-[12px]">
                                            {{ $order->status }}
                                        </span> 
                                        @break

                                @endswitch
                            </td>

                            <td class="px-6 py-[16px] text-black">
                                <a href="{{ route('shop.customers.account.orders.view', $order->id) }}">
                                    <span class="icon-eye text-[24px]"></span>
                                </a>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>

            <div class="flex justify-between items-center p-[30px]">
                <p class="text-[12px] font-medium">
                    Showing 1 to 8 of 40 entries
                </p>

                <nav aria-label="Page navigation">
                    <ul class="inline-flex items-center -space-x-px">
                        <li>
                            <a 
                                href="#"
                                class="flex items-center justify-center w-[35px] h-[37px] border border-[#E9E9E9] rounded-l-lg leading-normal font-medium hover:bg-gray-100"
                            >
                                <span class="icon-arrow-left text-[24px]"></span>
                            </a>
                        </li>

                        <li>
                            <a 
                                href="#"
                                class="px-[15px] py-[6px] border border-[#E9E9E9] leading-normal text-black font-medium hover:bg-gray-100"
                            >
                                1
                            </a>
                        </li>

                        <li>
                            <a 
                                href="#"
                                class="flex items-center justify-center w-[35px] h-[37px] border border-[#E9E9E9] rounded-r-lg leading-normal font-medium hover:bg-gray-100"
                            >
                                <span class="icon-arrow-right text-[24px]"></span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    @else
        {{-- Orders Empty Page --}}
        <div class="grid items-center justify-items-center w-[100%] m-auto h-[476px] place-content-center text-center">
            <img 
                class="" 
                src="{{ bagisto_asset('images/empty-dwn-product.png') }}" 
                alt="" 
                title=""
            >
            
            <p class="text-[20px]">
                @lang('shop::app.customers.account.orders.empty-order')
            </p>
        </div>
    @endif
</x-shop::layouts.account>