.class Lcom/amap/api/mapcore2d/ao;
.super Landroid/widget/LinearLayout;
.source "LocationView.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/amap/api/mapcore2d/w;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/ar;Lcom/amap/api/mapcore2d/w;)V
    .locals 5

    .prologue
    const/16 v4, 0x14

    const/4 v3, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 95
    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/ao;->f:Z

    const-string/jumbo v1, "LocationView"

    .line 41
    iput-object p3, p0, Lcom/amap/api/mapcore2d/ao;->e:Lcom/amap/api/mapcore2d/w;

    :try_start_0
    const-string/jumbo v0, "location_selected2d.png"

    .line 43
    invoke-static {v0}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ao;->a:Landroid/graphics/Bitmap;

    const-string/jumbo v0, "location_pressed2d.png"

    .line 44
    invoke-static {v0}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ao;->b:Landroid/graphics/Bitmap;

    .line 45
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ao;->a:Landroid/graphics/Bitmap;

    sget v2, Lcom/amap/api/mapcore2d/p;->a:F

    invoke-static {v0, v2}, Lcom/amap/api/mapcore2d/cj;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ao;->a:Landroid/graphics/Bitmap;

    .line 46
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ao;->b:Landroid/graphics/Bitmap;

    sget v2, Lcom/amap/api/mapcore2d/p;->a:F

    invoke-static {v0, v2}, Lcom/amap/api/mapcore2d/cj;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ao;->b:Landroid/graphics/Bitmap;

    const-string/jumbo v0, "location_unselected2d.png"

    .line 47
    invoke-static {v0}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ao;->c:Landroid/graphics/Bitmap;

    .line 48
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ao;->c:Landroid/graphics/Bitmap;

    sget v2, Lcom/amap/api/mapcore2d/p;->a:F

    invoke-static {v0, v2}, Lcom/amap/api/mapcore2d/cj;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ao;->c:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ao;->d:Landroid/widget/ImageView;

    .line 53
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ao;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ao;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 54
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ao;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3, v4, v4, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 55
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ao;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/amap/api/mapcore2d/ao$1;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore2d/ao$1;-><init>(Lcom/amap/api/mapcore2d/ao;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ao;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/amap/api/mapcore2d/ao$2;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore2d/ao$2;-><init>(Lcom/amap/api/mapcore2d/ao;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 92
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ao;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/ao;->addView(Landroid/view/View;)V

    .line 93
    return-void

    .line 51
    :catch_0
    move-exception v0

    const-string/jumbo v2, "LocationView"

    .line 50
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/ao;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ao;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/ao;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ao;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/mapcore2d/ao;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ao;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/mapcore2d/ao;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ao;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic e(Lcom/amap/api/mapcore2d/ao;)Lcom/amap/api/mapcore2d/w;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ao;->e:Lcom/amap/api/mapcore2d/w;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const-string/jumbo v1, "destory"

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ao;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 29
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ao;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 30
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ao;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/amap/api/mapcore2d/ao;->a:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/amap/api/mapcore2d/ao;->b:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/amap/api/mapcore2d/ao;->c:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    const-string/jumbo v2, "LocationView"

    .line 35
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/ao;->f:Z

    .line 99
    if-nez p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ao;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ao;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ao;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 105
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ao;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ao;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
