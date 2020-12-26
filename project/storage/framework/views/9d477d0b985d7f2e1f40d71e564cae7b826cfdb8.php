
<?php if(strpos($prod->discount_date, '-') !== false || strpos($prod->discount_date, '/') !== false): ?>

<?php if(Carbon\Carbon::now()->format('Y-m-d') < Carbon\Carbon::parse($prod->discount_date)->format('Y-m-d')): ?>

												
                                                <?php
													$product = new \App\Models\Product();
                                                    $price = $product->showPrice($prod->price);
                                                    $name = $product->showName($prod->name);
                                                    if(isset($prod->name_ar)){
                                                        $name = $prod->name_ar;
                                                    }
                                                    ?>
												
												<?php if($product->user->is_vendor == 2): ?>
												<a href="<?php echo e(route('front.product', $prod->slug)); ?>" class="item">
													<div class="item-img">
														<?php if(!empty($prod->features)): ?>
															<div class="sell-area">
															<?php $__currentLoopData = $prod->features; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $data1): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
																<span class="sale" style="background-color:<?php echo e($prod->colors[$key]); ?>"><?php echo e($prod->features[$key]); ?></span>
																<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?> 
															</div>
														<?php endif; ?>
															<div class="extra-list">
																<ul>
																	<li>
																		<?php if(Auth::guard('web')->check()): ?>
		
																		<span class="add-to-wish" data-href="<?php echo e(route('user-wishlist-add',$prod->id)); ?>" data-toggle="tooltip" data-placement="right" title="<?php echo e($langg->lang54); ?>" data-placement="right"><i class="icofont-heart-alt" ></i>
																		</span>
		
																		<?php else: ?> 
		
																		<span rel-toggle="tooltip" title="<?php echo e($langg->lang54); ?>" data-toggle="modal" id="wish-btn" data-target="#comment-log-reg" data-placement="right">
																			<i class="icofont-heart-alt"></i>
																		</span>
		
																		<?php endif; ?>
																	</li>
																	<li>
																	<span class="quick-view" rel-toggle="tooltip" title="<?php echo e($langg->lang55); ?>" href="javascript:;" data-href="<?php echo e(route('product.quick',$prod->id)); ?>" data-toggle="modal" data-target="#quickview" data-placement="right"> <i class="icofont-eye"></i>
																	</span>
																	</li>
																</ul>
															</div>
														<img class="img-fluid" src="<?php echo e($prod->thumbnail ? asset('assets/images/thumbnails/'.$prod->thumbnail):asset('assets/images/noimage.png')); ?>" alt="">
													</div>
													<div class="info">
														<div class="stars">
																											<div class="ratings">
																													<div class="empty-stars"></div>
																													<div class="full-stars" style="width:<?php echo e(App\Models\Rating::ratings($prod->id)); ?>%"></div>
																											</div>
														</div>
														<?php
															$product = new \App\Models\Product();
                                                            $price = $product->showPrice($prod->price);
                                                            $name = $product->showName($prod->name);
                                                            if(isset($prod->name_ar)){
                                                                $name = $prod->name_ar;
                                                            }
                                                            $previous_price = $product->showPreviousPrice($prod->previous_price);
														?>
														<h4 class="price"><?php echo e($price); ?> <del><small><?php echo e($previous_price); ?></small></del></h4>
																<h5 class="name"><?php echo e($name); ?></h5>
																<div class="item-cart-area">
																	<?php if($prod->product_type == "affiliate"): ?>
																		<span class="add-to-cart-btn affilate-btn"
																			data-href="<?php echo e(route('affiliate.product', $prod->slug)); ?>"><i class="icofont-cart"></i>
																			<?php echo e($langg->lang251); ?>

																		</span>
																	<?php else: ?>
																		<?php if($prod->emptyStock()): ?>
																		<span class="add-to-cart-btn cart-out-of-stock">
																			<i class="icofont-close-circled"></i> <?php echo e($langg->lang78); ?>

																		</span>													
																		<?php else: ?>
																		<span class="add-to-cart add-to-cart-btn" data-href="<?php echo e(route('product.cart.add',$prod->id)); ?>">
																			<i class="icofont-cart"></i> <?php echo e($langg->lang56); ?>

																		</span>
																		<span class="add-to-cart-quick add-to-cart-btn"
																			data-href="<?php echo e(route('product.cart.quickadd',$prod->id)); ?>">
																			<i class="icofont-cart"></i> <?php echo e($langg->lang251); ?>

																		</span>
																		<?php endif; ?>
																	<?php endif; ?>
																</div>
													</div>
													
							<div class="deal-counter">
								<div data-countdown="<?php echo e($prod->discount_date); ?>"></div>
						</div>
												</a>
				                                <?php endif; ?>

												


				<a href="<?php echo e(route('front.product', $prod->slug)); ?>" class="item">
					<div class="item-img">
						<?php if(!empty($prod->features)): ?>
							<div class="sell-area">
							<?php $__currentLoopData = $prod->features; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $data1): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
								<span class="sale" style="background-color:<?php echo e($prod->colors[$key]); ?>"><?php echo e($prod->features[$key]); ?></span>
								<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?> 
							</div>
						<?php endif; ?>
							<div class="extra-list">
								<ul>
									<li>
										<?php if(Auth::guard('web')->check()): ?>

										<span class="add-to-wish" data-href="<?php echo e(route('user-wishlist-add',$prod->id)); ?>" data-toggle="tooltip" data-placement="right" title="<?php echo e($langg->lang54); ?>" data-placement="right"><i class="icofont-heart-alt" ></i>
										</span>

										<?php else: ?> 

										<span rel-toggle="tooltip" title="<?php echo e($langg->lang54); ?>" data-toggle="modal" id="wish-btn" data-target="#comment-log-reg" data-placement="right">
											<i class="icofont-heart-alt"></i>
										</span>

										<?php endif; ?>
									</li>
									<li>
									<span class="quick-view" rel-toggle="tooltip" title="<?php echo e($langg->lang55); ?>" href="javascript:;" data-href="<?php echo e(route('product.quick',$prod->id)); ?>" data-toggle="modal" data-target="#quickview" data-placement="right"> <i class="icofont-eye"></i>
									</span>
									</li>
								</ul>
							</div>
						<img class="img-fluid" src="<?php echo e($prod->thumbnail ? asset('assets/images/thumbnails/'.$prod->thumbnail):asset('assets/images/noimage.png')); ?>" alt="">
					</div>
					<div class="info">
						<div class="stars">
																			<div class="ratings">
																					<div class="empty-stars"></div>
																					<div class="full-stars" style="width:<?php echo e(App\Models\Rating::ratings($prod->id)); ?>%"></div>
																			</div>
						</div>
						<?php
							$product = new \App\Models\Product();
                            $price = $product->showPrice($prod->price);
                            $name = $product->showName($prod->name);
                            if(isset($prod->name_ar)){
                                $name = $prod->name_ar;
                            }
                            $previous_price = $product->showPreviousPrice($prod->previous_price);
						?>

						<h4 class="price"><?php echo e($price); ?> <del><small><?php echo e($previous_price); ?></small></del></h4>
								<h5 class="name"><?php echo e($name); ?></h5>
								<div class="item-cart-area">
															<?php if($prod->product_type == "affiliate"): ?>
																<span class="add-to-cart-btn affilate-btn" data-href="<?php echo e(route('affiliate.product', $prod->slug)); ?>"><i class="icofont-cart"></i> <?php echo e($langg->lang251); ?>

																</span>
															<?php else: ?>
																<span class="add-to-cart add-to-cart-btn" data-href="<?php echo e(route('product.cart.add',$prod->id)); ?>">
																	<i class="icofont-cart"></i> <?php echo e($langg->lang56); ?>

																</span>
																<span class="add-to-cart-quick add-to-cart-btn" data-href="<?php echo e(route('product.cart.quickadd',$prod->id)); ?>">
																	<i class="icofont-cart"></i> <?php echo e($langg->lang251); ?>

																</span>
															<?php endif; ?>
								</div>
					</div>
					
		<div class="deal-counter">
		<div data-countdown="<?php echo e($prod->discount_date); ?>"></div>
		</div>
				</a>



								<?php endif; ?>				

<?php endif; ?>