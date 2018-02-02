.class Lcom/amap/api/mapcore2d/o;
.super Landroid/widget/LinearLayout;
.source "CompassView.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/amap/api/mapcore2d/ar;

.field private e:Lcom/amap/api/mapcore2d/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/ar;Lcom/amap/api/mapcore2d/w;)V
    .locals 7

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "CompassView"

    .line 36
    iput-object p2, p0, Lcom/amap/api/mapcore2d/o;->d:Lcom/amap/api/mapcore2d/ar;

    .line 37
    iput-object p3, p0, Lcom/amap/api/mapcore2d/o;->e:Lcom/amap/api/mapcore2d/w;

    :try_start_0
    const-string/jumbo v0, "maps_dav_compass_needle_large2d.png"

    .line 39
    invoke-static {v0}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 40
    sget v2, Lcom/amap/api/mapcore2d/p;->a:F

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    invoke-static {v0, v2}, Lcom/amap/api/mapcore2d/cj;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/mapcore2d/o;->b:Landroid/graphics/Bitmap;

    .line 41
    sget v2, Lcom/amap/api/mapcore2d/p;->a:F

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v2, v3

    invoke-static {v0, v2}, Lcom/amap/api/mapcore2d/cj;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 42
    iget-object v2, p0, Lcom/amap/api/mapcore2d/o;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore2d/o;->b:Landroid/graphics/Bitmap;

    .line 43
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 42
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/mapcore2d/o;->a:Landroid/graphics/Bitmap;

    .line 44
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/o;->a:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 45
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 46
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 48
    iget-object v4, p0, Lcom/amap/api/mapcore2d/o;->b:Landroid/graphics/Bitmap;

    .line 49
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/amap/api/mapcore2d/o;->b:Landroid/graphics/Bitmap;

    .line 50
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    .line 48
    invoke-virtual {v2, v0, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/o;->c:Landroid/widget/ImageView;

    .line 55
    iget-object v0, p0, Lcom/amap/api/mapcore2d/o;->c:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 56
    iget-object v0, p0, Lcom/amap/api/mapcore2d/o;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/o;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 57
    iget-object v0, p0, Lcom/amap/api/mapcore2d/o;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/amap/api/mapcore2d/o$1;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore2d/o$1;-><init>(Lcom/amap/api/mapcore2d/o;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/amap/api/mapcore2d/o;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/amap/api/mapcore2d/o$2;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore2d/o$2;-><init>(Lcom/amap/api/mapcore2d/o;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 88
    iget-object v0, p0, Lcom/amap/api/mapcore2d/o;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/o;->addView(Landroid/view/View;)V

    .line 89
    return-void

    .line 53
    :catch_0
    move-exception v0

    const-string/jumbo v2, "CompassView"

    .line 52
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/o;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/amap/api/mapcore2d/o;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/o;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/amap/api/mapcore2d/o;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/mapcore2d/o;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/amap/api/mapcore2d/o;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/mapcore2d/o;)Lcom/amap/api/mapcore2d/w;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/amap/api/mapcore2d/o;->e:Lcom/amap/api/mapcore2d/w;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const-string/jumbo v1, "destory"

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/o;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 26
    iget-object v0, p0, Lcom/amap/api/mapcore2d/o;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/amap/api/mapcore2d/o;->a:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/amap/api/mapcore2d/o;->b:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    const-string/jumbo v2, "CompassView"

    .line 30
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
