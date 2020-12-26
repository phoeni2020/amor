                                {{-- If This product belongs to vendor then apply this --}}
                                

                                {{-- check  If This vendor status is active --}}
                                	@php
																	$product = new \App\Models\Product();
                                                                    $price = $product->showPrice($prod->price);
                                                                    $name = $product->showName($prod->name);
                                                                    if(isset($prod->name_ar)){
                                                                        $name = $prod->name_ar;
                                                                    }
                                                                    $previous_price = $product->showPreviousPrice($prod->previous_price);
																@endphp
                                @if($product->user->is_vendor == 2)
									<li>
														<div class="single-box">
															<div class="left-area">
															    <a href="{{ route('front.product',$prod->slug) }}">
																<img  src="{{ $prod->thumbnail ? asset('assets/images/thumbnails/'.$prod->thumbnail):asset('assets/images/noimage.png') }}" alt=""></a>
															</div>
															<div class="right-area">
																	<div class="stars">
					                                                  <div class="ratings">
					                                                      <div class="empty-stars"></div>
					                                                      <div class="full-stars" style="width:{{App\Models\Rating::ratings($prod->id)}}%"></div>
					                                                  </div>
																		</div>
															
																		<h4 class="price">{{ $price }} <del>{{ $previous_price }}</del> </h4>
																		<p class="text"><a href="{{ route('front.product',$prod->slug) }}">{{ mb_strlen($name,'utf-8') > 35 ? mb_substr($name,0,35,'utf-8').'...' : $name}}</a></p>
															</div>
														</div>
													</li>

								@endif

                                {{-- If This product belongs admin and apply this --}}


													<li>
														<div class="single-box">
															<div class="left-area">
															    <a href="{{ route('front.product',$prod->slug) }}">
																<img src="{{ $prod->thumbnail ? asset('assets/images/thumbnails/'.$prod->thumbnail):asset('assets/images/noimage.png') }}" alt="" ></a>
															</div>
															<div style="text-align: center;" class="right-area">
																	<div class="stars">
					                                                  <div class="ratings">
					                                                      <div class="empty-stars"></div>
					                                                      <div class="full-stars" style="width:{{App\Models\Rating::ratings($prod->id)}}%"></div>
					                                                  </div>
																		</div>
																@php
																	$product = new \App\Models\Product();
                                                                    $price = $product->showPrice($prod->price);
                                                                    $name = $product->showName($prod->name);
                                                                    if(isset($prod->name_ar)){
                                                                        $name = $prod->name_ar;
                                                                    }
                                                                    $previous_price = $product->showPreviousPrice($prod->previous_price);
																@endphp
																		<h4 class="price">{{ $price }} <del>{{ $previous_price }}</del> </h4>
																		<p class="text">
																		    {{ mb_strlen($name,'utf-8') > 35 ? mb_substr($name,0,35,'utf-8').'...' : $name }}</a></p>
															</div>
														</div>
													</li>
								

						
