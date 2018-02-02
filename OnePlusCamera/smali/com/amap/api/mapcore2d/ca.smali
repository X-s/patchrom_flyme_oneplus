.class Lcom/amap/api/mapcore2d/ca;
.super Landroid/view/View;
.source "WaterMarkerView.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Paint;

.field private d:Z

.field private e:I

.field private f:Lcom/amap/api/mapcore2d/b;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/b;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ca;->c:Landroid/graphics/Paint;

    .line 23
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/ca;->d:Z

    .line 24
    iput v1, p0, Lcom/amap/api/mapcore2d/ca;->e:I

    .line 26
    iput v1, p0, Lcom/amap/api/mapcore2d/ca;->g:I

    const/16 v0, 0xa

    .line 28
    iput v0, p0, Lcom/amap/api/mapcore2d/ca;->h:I

    const-string/jumbo v1, "WaterMarkerView"

    .line 50
    iput-object p2, p0, Lcom/amap/api/mapcore2d/ca;->f:Lcom/amap/api/mapcore2d/b;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 54
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore2d/p;->e:Lcom/amap/api/mapcore2d/p$a;

    sget-object v3, Lcom/amap/api/mapcore2d/p$a;->b:Lcom/amap/api/mapcore2d/p$a;

    if-eq v0, v3, :cond_0

    const-string/jumbo v0, "ap2d.data"

    .line 57
    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 59
    :goto_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/amap/api/mapcore2d/ca;->a:Landroid/graphics/Bitmap;

    .line 60
    iget-object v3, p0, Lcom/amap/api/mapcore2d/ca;->a:Landroid/graphics/Bitmap;

    sget v4, Lcom/amap/api/mapcore2d/p;->a:F

    invoke-static {v3, v4}, Lcom/amap/api/mapcore2d/cj;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/amap/api/mapcore2d/ca;->a:Landroid/graphics/Bitmap;

    .line 62
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 64
    sget-object v0, Lcom/amap/api/mapcore2d/p;->e:Lcom/amap/api/mapcore2d/p$a;

    sget-object v3, Lcom/amap/api/mapcore2d/p$a;->b:Lcom/amap/api/mapcore2d/p$a;

    if-eq v0, v3, :cond_1

    const-string/jumbo v0, "ap12d.data"

    .line 67
    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 70
    :goto_1
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/mapcore2d/ca;->b:Landroid/graphics/Bitmap;

    .line 71
    iget-object v2, p0, Lcom/amap/api/mapcore2d/ca;->b:Landroid/graphics/Bitmap;

    sget v3, Lcom/amap/api/mapcore2d/p;->a:F

    invoke-static {v2, v3}, Lcom/amap/api/mapcore2d/cj;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/mapcore2d/ca;->b:Landroid/graphics/Bitmap;

    .line 73
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 74
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ca;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore2d/ca;->e:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ca;->c:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ca;->c:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ca;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "apl2d.data"

    .line 55
    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "apl12d.data"

    .line 65
    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 78
    :catch_0
    move-exception v0

    const-string/jumbo v2, "WaterMarkerView"

    .line 77
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const-string/jumbo v1, "destory"

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ca;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 36
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ca;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    :goto_1
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/amap/api/mapcore2d/ca;->a:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/amap/api/mapcore2d/ca;->b:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/amap/api/mapcore2d/ca;->c:Landroid/graphics/Paint;

    .line 45
    :goto_2
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ca;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    const-string/jumbo v2, "WaterMarkerView"

    .line 43
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 37
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ca;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 103
    iput p1, p0, Lcom/amap/api/mapcore2d/ca;->g:I

    .line 104
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/ca;->d:Z

    .line 95
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ca;->invalidate()V

    .line 96
    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ca;->d:Z

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ca;->a:Landroid/graphics/Bitmap;

    return-object v0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ca;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 99
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/amap/api/mapcore2d/ca;->h:I

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ca;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/amap/api/mapcore2d/ca;->e:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ca;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ca;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    .line 118
    iget v1, p0, Lcom/amap/api/mapcore2d/ca;->g:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 120
    iget v1, p0, Lcom/amap/api/mapcore2d/ca;->g:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/16 v0, 0xa

    .line 123
    iput v0, p0, Lcom/amap/api/mapcore2d/ca;->h:I

    .line 126
    :goto_0
    sget-object v0, Lcom/amap/api/mapcore2d/p;->e:Lcom/amap/api/mapcore2d/p$a;

    sget-object v1, Lcom/amap/api/mapcore2d/p$a;->b:Lcom/amap/api/mapcore2d/p$a;

    if-eq v0, v1, :cond_3

    .line 133
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ca;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore2d/ca;->h:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ca;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/amap/api/mapcore2d/ca;->e:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x8

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amap/api/mapcore2d/ca;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 139
    :goto_1
    return-void

    .line 115
    :cond_0
    return-void

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ca;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v1

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amap/api/mapcore2d/ca;->h:I

    goto :goto_0

    .line 121
    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ca;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v1

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/amap/api/mapcore2d/ca;->h:I

    goto :goto_0

    .line 127
    :cond_3
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ca;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore2d/ca;->h:I

    add-int/lit8 v1, v1, 0xf

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ca;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/amap/api/mapcore2d/ca;->e:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x8

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amap/api/mapcore2d/ca;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method
