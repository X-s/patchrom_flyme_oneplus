.class Lcom/amap/api/mapcore2d/bi;
.super Landroid/view/View;
.source "ScaleView.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/amap/api/mapcore2d/b;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/b;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v3, -0x1000000

    .line 32
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, ""

    .line 17
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bi;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/amap/api/mapcore2d/bi;->b:I

    .line 33
    iput-object p2, p0, Lcom/amap/api/mapcore2d/bi;->c:Lcom/amap/api/mapcore2d/b;

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bi;->d:Landroid/graphics/Paint;

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bi;->f:Landroid/graphics/Rect;

    .line 36
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bi;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bi;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bi;->d:Landroid/graphics/Paint;

    sget v1, Lcom/amap/api/mapcore2d/p;->a:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 39
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bi;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bi;->e:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bi;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bi;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bi;->e:Landroid/graphics/Paint;

    sget v1, Lcom/amap/api/mapcore2d/p;->a:F

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 44
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bi;->d:Landroid/graphics/Paint;

    .line 26
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bi;->e:Landroid/graphics/Paint;

    .line 27
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bi;->f:Landroid/graphics/Rect;

    .line 28
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bi;->a:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 92
    iput p1, p0, Lcom/amap/api/mapcore2d/bi;->b:I

    .line 93
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bi;->a:Ljava/lang/String;

    .line 89
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const-string/jumbo v2, "onDraw"

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bi;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->q()Lcom/amap/api/mapcore2d/ak;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->a()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bi;->a:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    :cond_0
    return-void

    .line 51
    :cond_1
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 57
    :cond_2
    iget v0, p0, Lcom/amap/api/mapcore2d/bi;->b:I

    if-eqz v0, :cond_0

    .line 61
    iget v0, p0, Lcom/amap/api/mapcore2d/bi;->b:I

    .line 63
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bi;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-gt v0, v1, :cond_3

    :goto_1
    move v6, v0

    .line 69
    :goto_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bi;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->A()Landroid/graphics/Point;

    move-result-object v1

    .line 70
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bi;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bi;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/bi;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/amap/api/mapcore2d/bi;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 72
    iget v0, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v6

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bi;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0xa

    if-gt v0, v2, :cond_4

    .line 75
    iget v0, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bi;->f:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int v2, v6, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 77
    :goto_3
    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bi;->f:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x5

    .line 78
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bi;->a:Ljava/lang/String;

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/amap/api/mapcore2d/bi;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 79
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bi;->f:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int v2, v6, v2

    div-int/lit8 v2, v2, 0x2

    sub-int v7, v0, v2

    .line 80
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bi;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    add-int v8, v1, v0

    .line 81
    int-to-float v1, v7

    add-int/lit8 v0, v8, -0x2

    int-to-float v2, v0

    int-to-float v3, v7

    add-int/lit8 v0, v8, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/amap/api/mapcore2d/bi;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 82
    int-to-float v1, v7

    int-to-float v2, v8

    add-int v0, v7, v6

    int-to-float v3, v0

    int-to-float v4, v8

    iget-object v5, p0, Lcom/amap/api/mapcore2d/bi;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 83
    add-int v0, v7, v6

    int-to-float v1, v0

    add-int/lit8 v0, v8, -0x2

    int-to-float v2, v0

    add-int v0, v7, v6

    int-to-float v3, v0

    add-int/lit8 v0, v8, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/amap/api/mapcore2d/bi;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 85
    return-void

    .line 64
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bi;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v1

    div-int/lit8 v0, v1, 0x5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 68
    :catch_1
    move-exception v1

    const-string/jumbo v3, "ScaleView"

    .line 67
    invoke-static {v1, v3, v2}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v6, v0

    goto/16 :goto_2

    .line 73
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bi;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0xa

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bi;->f:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, v6

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    goto :goto_3
.end method
