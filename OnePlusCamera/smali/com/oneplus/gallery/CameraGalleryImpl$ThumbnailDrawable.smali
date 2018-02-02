.class final Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CameraGalleryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/CameraGalleryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThumbnailDrawable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable$1;
    }
.end annotation


# static fields
.field private static final DURATION_THUMB_SWITCH_ANIMATION:J = 0x12cL


# instance fields
.field private m_IsScrolling:Z

.field private m_LowQualityThumbnail:Landroid/graphics/Bitmap;

.field private final m_Paint:Landroid/graphics/Paint;

.field private m_PrevThumbnail:Landroid/graphics/Bitmap;

.field private final m_SourceRect:Landroid/graphics/Rect;

.field private final m_ThumbSwitchRunnable:Ljava/lang/Runnable;

.field private m_ThumbSwitchStartTime:J

.field private m_Thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method static synthetic -wrap0(Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->animateThumbnailSwitch()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 459
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 444
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_Paint:Landroid/graphics/Paint;

    .line 446
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_SourceRect:Landroid/graphics/Rect;

    .line 448
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable$1;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_ThumbSwitchRunnable:Ljava/lang/Runnable;

    .line 461
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_Paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 459
    return-void
.end method

.method private animateThumbnailSwitch()V
    .locals 4

    .prologue
    .line 466
    iget-wide v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_ThumbSwitchStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 467
    return-void

    .line 468
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->invalidateSelf()V

    .line 464
    return-void
.end method

.method private startSwitchAnimation()V
    .locals 4

    .prologue
    .line 618
    iget-wide v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_ThumbSwitchStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 620
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_ThumbSwitchStartTime:J

    .line 621
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->animateThumbnailSwitch()V

    .line 616
    :goto_0
    return-void

    .line 624
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_ThumbSwitchStartTime:J

    goto :goto_0
.end method

.method private stopSwitchAnimation()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 629
    iget-wide v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_ThumbSwitchStartTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 631
    iput-wide v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_ThumbSwitchStartTime:J

    .line 632
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_ThumbSwitchRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 633
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->invalidateSelf()V

    .line 627
    :cond_0
    return-void
.end method


# virtual methods
.method public clearThumbnails()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 473
    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    .line 474
    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_LowQualityThumbnail:Landroid/graphics/Bitmap;

    .line 471
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 482
    iget-wide v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_ThumbSwitchStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gtz v7, :cond_1

    .line 484
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_PrevThumbnail:Landroid/graphics/Bitmap;

    .line 485
    const/high16 v5, 0x7fc00000    # NaNf

    .line 504
    .local v5, "switchProgress":F
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 505
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 507
    iget-boolean v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_IsScrolling:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_LowQualityThumbnail:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_3

    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_LowQualityThumbnail:Landroid/graphics/Bitmap;

    .line 508
    .local v6, "thumb":Landroid/graphics/Bitmap;
    :goto_1
    if-eqz v6, :cond_0

    .line 510
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_SourceRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 511
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_SourceRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 478
    :cond_0
    :goto_2
    return-void

    .line 489
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .end local v5    # "switchProgress":F
    .end local v6    # "thumb":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_ThumbSwitchStartTime:J

    sub-long v2, v8, v10

    .line 490
    .local v2, "duration":J
    const-wide/16 v8, 0x12c

    cmp-long v7, v2, v8

    if-ltz v7, :cond_2

    .line 492
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_ThumbSwitchStartTime:J

    .line 493
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_PrevThumbnail:Landroid/graphics/Bitmap;

    .line 494
    const/high16 v5, 0x7fc00000    # NaNf

    .restart local v5    # "switchProgress":F
    goto :goto_0

    .line 498
    .end local v5    # "switchProgress":F
    :cond_2
    long-to-float v7, v2

    const/high16 v8, 0x43960000    # 300.0f

    div-float v5, v7, v8

    .line 499
    .restart local v5    # "switchProgress":F
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_ThumbSwitchRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x1e

    add-long/2addr v8, v10

    invoke-virtual {p0, v7, v8, v9}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 507
    .end local v2    # "duration":J
    .restart local v1    # "bounds":Landroid/graphics/Rect;
    :cond_3
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 517
    :cond_4
    iget-boolean v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_IsScrolling:Z

    if-eqz v7, :cond_5

    .line 519
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    .line 520
    .local v4, "prevThumb":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_LowQualityThumbnail:Landroid/graphics/Bitmap;

    .line 527
    .restart local v6    # "thumb":Landroid/graphics/Bitmap;
    :goto_3
    if-eqz v4, :cond_8

    .line 529
    if-eqz v6, :cond_7

    .line 531
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_SourceRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 532
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_SourceRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v7, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 533
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 534
    .local v0, "alpha":I
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_Paint:Landroid/graphics/Paint;

    int-to-float v8, v0

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 535
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_SourceRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 536
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_SourceRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 537
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_2

    .line 524
    .end local v0    # "alpha":I
    .end local v4    # "prevThumb":Landroid/graphics/Bitmap;
    .end local v6    # "thumb":Landroid/graphics/Bitmap;
    :cond_5
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_PrevThumbnail:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_6

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_PrevThumbnail:Landroid/graphics/Bitmap;

    .line 525
    .restart local v4    # "prevThumb":Landroid/graphics/Bitmap;
    :goto_4
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    .restart local v6    # "thumb":Landroid/graphics/Bitmap;
    goto :goto_3

    .line 524
    .end local v4    # "prevThumb":Landroid/graphics/Bitmap;
    .end local v6    # "thumb":Landroid/graphics/Bitmap;
    :cond_6
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_LowQualityThumbnail:Landroid/graphics/Bitmap;

    .restart local v4    # "prevThumb":Landroid/graphics/Bitmap;
    goto :goto_4

    .line 541
    .restart local v6    # "thumb":Landroid/graphics/Bitmap;
    :cond_7
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_SourceRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 542
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_SourceRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v7, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 545
    :cond_8
    if-eqz v6, :cond_0

    .line 547
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_SourceRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 548
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_SourceRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method public getLowQualityThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_LowQualityThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 561
    const/4 v0, -0x3

    return v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 570
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 574
    return-void
.end method

.method public setLowQualityThumbnail(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 579
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_LowQualityThumbnail:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    .line 581
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_LowQualityThumbnail:Landroid/graphics/Bitmap;

    .line 582
    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_IsScrolling:Z

    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->invalidateSelf()V

    .line 577
    :cond_0
    return-void
.end method

.method public setScrollingState(Z)V
    .locals 0
    .param p1, "isScrolling"    # Z

    .prologue
    .line 587
    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .param p1, "thumb"    # Landroid/graphics/Bitmap;
    .param p2, "animate"    # Z

    .prologue
    .line 601
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    .line 603
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_PrevThumbnail:Landroid/graphics/Bitmap;

    .line 604
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_Thumbnail:Landroid/graphics/Bitmap;

    .line 605
    if-eqz p2, :cond_1

    .line 606
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->startSwitchAnimation()V

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->m_PrevThumbnail:Landroid/graphics/Bitmap;

    .line 610
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->stopSwitchAnimation()V

    .line 611
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->invalidateSelf()V

    goto :goto_0
.end method
