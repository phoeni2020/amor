<?php $__env->startSection('content'); ?>

	<?php if($ps->slider == 1): ?>

		<?php if(count($sliders)): ?>
			<?php echo $__env->make('includes.slider-style', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
		<?php endif; ?>
	<?php endif; ?>

	<?php if($ps->slider == 1): ?>
		<!-- Hero Area Start -->
		<section class="hero-area">
		    
			<?php if($ps->slider == 1): ?>

				<?php if(count($sliders)): ?>
			
					<div style="padding:10px" class="row">
					    
					    <div class="col-lg-3">  <div style="display:block;" class="mona categories_menu_inner">
                        <ul>
                            <?php
                                $i=1;
                            ?>
                            <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                                <li class="<?php echo e(count($category->subs) > 0 ? 'dropdown_list':''); ?> <?php echo e($i >= 15 ? 'rx-child' : ''); ?>">
                                    <?php if(count($category->subs) > 0): ?>
                                        <div class="img">
                                            <img src="<?php echo e(asset('assets/images/categories/'.$category->photo)); ?>" alt="">
                                        </div>
                                        <div class="link-area">
                                            <span><a href="<?php echo e(route('front.category',$category->slug)); ?>"><?php if(session('language') == 1||session('language') == null): ?><?php echo e($category->name); ?><?php else: ?><?php echo e($category->name_ar); ?><?php endif; ?></a></span>
                                            <?php if(count($category->subs) > 0): ?>
                                                <a href="javascript:;">
                                                    <i class="fa fa-angle-right" aria-hidden="true"></i>
                                                </a>
                                            <?php endif; ?>
                                        </div>

                                    <?php else: ?>
                                        <a href="<?php echo e(route('front.category',$category->slug)); ?>"><img src="<?php echo e(asset('assets/images/categories/'.$category->photo)); ?>"><?php if(session()->get('language') == 1 ||session()->get('language') == null ): ?><?php echo e($category->name); ?><?php else: ?><?php echo e($category->name_ar); ?><?php endif; ?></a>

                                    <?php endif; ?>
                                    <?php if(count($category->subs) > 0): ?>

                                        <?php
                                            $ck = 0;
                                            foreach($category->subs as $subcat) {
                                                if(count($subcat->childs) > 0) {
                                                    $ck = 1;
                                                    break;
                                                }
                                            }
                                        ?>
                                        <ul class="<?php echo e($ck == 1 ? 'categories_mega_menu' : 'categories_mega_menu column_1'); ?>">
                                            <?php $__currentLoopData = $category->subs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subcat): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <?php if(session('language') == 1||session('language') == null && $subcat->name != null): ?>
                                                  <li>
                                                    <a href="<?php echo e(route('front.subcat',['slug1' => $subcat->category->slug, 'slug2' => $subcat->slug])); ?>"><?php echo e($subcat->name); ?></a>
                                                    <?php if(count($subcat->childs) > 0): ?>
                                                        <div class="categorie_sub_menu">
                                                            <ul>
                                                                <?php $__currentLoopData = $subcat->childs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $childcat): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                                 <?php if($childcat->name != null): ?>
                                                                    <li><a href="<?php echo e(route('front.childcat',['slug1' => $childcat->subcategory->category->slug, 'slug2' => $childcat->subcategory->slug, 'slug3' => $childcat->slug])); ?>"><?php echo e($childcat->name); ?></a></li>
                                                                 <?php endif; ?>
                                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                            </ul>
                                                        </div>
                                                    <?php endif; ?>
                                                </li>
                                                <?php elseif(session('language') == 2 && $subcat->name_ar != null): ?> 
                                                <li>
                                                    <a href="<?php echo e(route('front.subcat',['slug1' => $subcat->category->slug, 'slug2' => $subcat->slug])); ?>"><?php echo e($subcat->name_ar); ?></a>
                                                    <?php if(count($subcat->childs) > 0): ?>
                                                        <div class="categorie_sub_menu">
                                                            <ul>
                                                                <?php $__currentLoopData = $subcat->childs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $childcat): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                                    <?php if($childcat->name_ar != null): ?>
                                                                        <li><a href="<?php echo e(route('front.childcat',['slug1' => $childcat->subcategory->category->slug, 'slug2' => $childcat->subcategory->slug, 'slug3' => $childcat->slug])); ?>"><?php echo e($childcat->name_ar); ?></a></li>
                                                                    <?php endif; ?>
                                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                            </ul>
                                                        </div>
                                                    <?php endif; ?>
                                                </li>
                                                <?php endif; ?>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </ul>

                                    <?php endif; ?>

                                </li>

                                <?php
                                    $i++;
                                ?>

                                <?php if($i == 10): ?>
                                    <li>
                                        <a href="<?php echo e(route('front.categories')); ?>"><i class="fas fa-plus"></i> <?php echo e($langg->lang15); ?> </a>
                                    </li>
                                    <?php break; ?>
                                <?php endif; ?>


                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                        </ul>
                    </div>     </div>
					<div class="hero-area-slider col-lg-6">
						<div class="slide-progress"></div>
						<div class="intro-carousel">
							<?php if(session('language') == 2): ?>
								<?php
									$data_ar = App\Models\Slider_ar::all();
								?>
								<?php $__currentLoopData = $data_ar; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
									<?php
										$data_ar = App\Models\Slider::find($data->id);
									?>									
									<div class="intro-content <?php echo e($data_ar->position); ?>" 
									style="background-image: url(<?php echo e(asset('assets/images/sliders/'.$data->photo)); ?>)">
										<div class="container">
											<div class="row">
												<div class="col-lg-8">
													<div class="slider-content">
														<!-- layer 1 -->
														<div class="layer-1">
															<h4 style="font-size: <?php echo e($data_ar->subtitle_size); ?>px; color: <?php echo e($data_ar->subtitle_color); ?>" class="subtitle subtitle<?php echo e($data->id); ?>" data-animation="animated <?php echo e($data->subtitle_anime); ?>"><?php echo e($data->subtitle_text); ?></h4>
															<h2 style="font-size: <?php echo e($data_ar->title_size); ?>px; color: <?php echo e($data_ar->title_color); ?>" class="title title<?php echo e($data->id); ?>" data-animation="animated <?php echo e($data->title_anime); ?>"><?php echo e($data->title_text); ?></h2>
														</div>
														<!-- layer 2 -->
														<div class="layer-2">
															<p style="font-size: <?php echo e($data_ar->details_size); ?>px; color: <?php echo e($data_ar->details_color); ?>"  class="text text<?php echo e($data_ar->id); ?>" data-animation="animated <?php echo e($data_ar->details_anime); ?>"><?php echo e($data->details_text); ?></p>
														</div>
														<!-- layer 3 -->
														<div class="layer-3">
															<a href="<?php echo e($data_ar->link); ?>" target="_blank" class="mybtn1"><span><?php echo e($langg->lang25); ?> <i class="fas fa-chevron-right"></i></span></a>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
							<?php else: ?>
								<?php $__currentLoopData = $sliders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
									<div class="intro-content <?php echo e($data->position); ?>" style="background-image: url(<?php echo e(asset('assets/images/sliders/'.$data->photo)); ?>)">
										<div class="container">
											<div class="row">
												<div class="col-lg-8">
													<div class="slider-content">
														<!-- layer 1 -->
														<div class="layer-1">
															<h4 style="font-size: <?php echo e($data->subtitle_size); ?>px; color: <?php echo e($data->subtitle_color); ?>" class="subtitle subtitle<?php echo e($data->id); ?>" data-animation="animated <?php echo e($data->subtitle_anime); ?>"><?php echo e($data->subtitle_text); ?></h4>
															<h2 style="font-size: <?php echo e($data->title_size); ?>px; color: <?php echo e($data->title_color); ?>" class="title title<?php echo e($data->id); ?>" data-animation="animated <?php echo e($data->title_anime); ?>"><?php echo e($data->title_text); ?></h2>
														</div>
														<!-- layer 2 -->
														<div class="layer-2">
															<p style="font-size: <?php echo e($data->details_size); ?>px; color: <?php echo e($data->details_color); ?>"  class="text text<?php echo e($data->id); ?>" data-animation="animated <?php echo e($data->details_anime); ?>"><?php echo e($data->details_text); ?></p>
														</div>
														<!-- layer 3 -->
														<div class="layer-3">
															<a href="<?php echo e($data->link); ?>" target="_blank" class="mybtn1"><span><?php echo e($langg->lang25); ?> <i class="fas fa-chevron-right"></i></span></a>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
							<?php endif; ?>
						</div>
					</div>
				<?php endif; ?>

			<?php endif; ?>
			<div class="col-lg-3 remove-padding">
								<div class="left">
									
									
										<img  class="loma" style="height:190px; width:450px; padding-bottom:5px;padding-top:10px" src="<?php echo e(asset('assets/images/banners/3a1a9c02-b55b-476c-b451-dad7a968ef2c.jpg')); ?>" alt="">
									<img class="loma" style="height:170px; width:450px;"src="<?php echo e(asset('assets/images/banners/1568889164bottom1.jpg')); ?>" alt="">
									
									
								
								</div>
								
							</div>
</div>
		</section>
		<!-- Hero Area End -->
	<?php endif; ?>

	
	
<?php if($ps->featured == 1): ?>
		<!-- Trending Item Area Start -->
		<section  class="trending">
			<div  class="container">
				<div class="row">
					<div class="col-lg-12 remove-padding">
						<div class="section-top">
							<h2 class="section-title">
								<?php echo e($langg->lang26); ?>

							</h2>
							
						</div>
					</div>
				</div>
				<div style="background:white;padding:3px" class="row">
					<div class="col-lg-12 remove-padding">
						<div class="trending-item-slider">
							<?php $__currentLoopData = $feature_products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $prod): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
								<?php echo $__env->make('includes.product.slider-product', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
							<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
						</div>
					</div>

				</div>
			</div>
		</section>
			<?php if($ps->small_banner == 1): ?>
		<!-- Banner Area One Start -->
		<section class="banner-section">
			<div class="container" style="background:white;">
				<?php $__currentLoopData = $top_small_banners->chunk(2); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $chunk): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
					<div class="row">
						<?php $__currentLoopData = $chunk; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $img): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
							<div class="col-lg-6 remove-padding">
								<div class="left">
									<a class="banner-effect" href="<?php echo e($img->link); ?>" target="_blank">
										<?php
											if(session('language') == 2){$photo = $img->photo_ar;}
											else{$photo = $img->photo;}
										?>
										<img src="<?php echo e(asset('assets/images/banners/'.$photo)); ?>" alt="">
									</a>
								</div>
							</div>
						<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
					</div>
				<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
			</div>
		</section>
		<!-- Banner Area One Start -->
	<?php endif; ?>
		<!-- Tranding Item Area End -->
	<?php endif; ?>

	<?php if($ps->featured_category == 1): ?>

		
		<section class="slider-buttom-category d-none d-md-block">
			<div class="container-fluid">
				<div class="row" style="background:white;padding:3px">
					<?php $__currentLoopData = $categories->where('is_featured','=',1); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $cat): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
						<div class="col-xl-2 col-lg-3 col-md-4 sc-common-padding">
							<a href="<?php echo e(route('front.category',$cat->slug)); ?>" class="single-category">
								<div class="left">
									<h5 class="title">
										<?php echo e($cat->name); ?>

									</h5>
									<p class="count">
										<?php echo e(count($cat->products)); ?> <?php echo e($langg->lang4); ?>

									</p>
								</div>
								<div class="right">
									<img src="<?php echo e(asset('assets/images/categories/'.$cat->image)); ?>" alt="">
								</div>
							</a>
						</div>
					<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
				</div>
			</div>
		</section>
		

	<?php endif; ?>

	



	<section id="extraData">
		<div class="text-center">
			<img src="<?php echo e(asset('assets/images/'.$gs->loader)); ?>">
		</div>
	</section>


<?php $__env->stopSection(); ?>

<?php $__env->startSection('scripts'); ?>
	<script>
		$(window).on('load',function() {

			setTimeout(function(){

				$('#extraData').load('<?php echo e(route('front.extraIndex')); ?>');

			}, 500);
		});

	</script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.front', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>