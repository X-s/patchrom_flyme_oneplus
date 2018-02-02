.class Lcom/amap/api/mapcore2d/az$1;
.super Ljava/lang/Object;
.source "MemoryTileManager.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore2d/az;->a(Landroid/graphics/Bitmap;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/amap/api/mapcore2d/az;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/az;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/amap/api/mapcore2d/az$1;->b:Lcom/amap/api/mapcore2d/az;

    iput-object p2, p0, Lcom/amap/api/mapcore2d/az$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 270
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$1;->b:Lcom/amap/api/mapcore2d/az;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/az;->a(Lcom/amap/api/mapcore2d/az;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$1;->b:Lcom/amap/api/mapcore2d/az;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/az;->b(Lcom/amap/api/mapcore2d/az;)Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 284
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    move v5, v2

    .line 286
    :goto_2
    if-lt v5, v6, :cond_2

    .line 312
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$1;->b:Lcom/amap/api/mapcore2d/az;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/az;->a(Lcom/amap/api/mapcore2d/az;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 272
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$1;->b:Lcom/amap/api/mapcore2d/az;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/az;->a(Lcom/amap/api/mapcore2d/az;)Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 273
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$1;->b:Lcom/amap/api/mapcore2d/az;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/az;->a(Lcom/amap/api/mapcore2d/az;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 274
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$1;->b:Lcom/amap/api/mapcore2d/az;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/az;->a(Lcom/amap/api/mapcore2d/az;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 275
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$1;->b:Lcom/amap/api/mapcore2d/az;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/az;->a(Lcom/amap/api/mapcore2d/az;)Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 276
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$1;->b:Lcom/amap/api/mapcore2d/az;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/az;->a(Lcom/amap/api/mapcore2d/az;)Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_0

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$1;->b:Lcom/amap/api/mapcore2d/az;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/az;->a(Lcom/amap/api/mapcore2d/az;Landroid/graphics/Path;)Landroid/graphics/Path;

    goto :goto_1

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$1;->a:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bu;

    .line 288
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az$1;->b:Lcom/amap/api/mapcore2d/az;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/az;->a(Lcom/amap/api/mapcore2d/az;)Landroid/graphics/Paint;

    move-result-object v1

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 289
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bu;->b()I

    move-result v1

    .line 290
    if-eq v1, v4, :cond_3

    const/4 v3, 0x2

    .line 292
    if-eq v1, v3, :cond_4

    const/4 v3, 0x3

    .line 294
    if-eq v1, v3, :cond_5

    .line 297
    :goto_3
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bu;->a()Ljava/util/List;

    move-result-object v7

    .line 298
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    move v3, v2

    move v1, v4

    .line 300
    :goto_4
    if-lt v3, v8, :cond_6

    .line 309
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$1;->b:Lcom/amap/api/mapcore2d/az;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/az;->b(Lcom/amap/api/mapcore2d/az;)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/az$1;->b:Lcom/amap/api/mapcore2d/az;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/az;->a(Lcom/amap/api/mapcore2d/az;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 310
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az$1;->b:Lcom/amap/api/mapcore2d/az;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/az;->b(Lcom/amap/api/mapcore2d/az;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 286
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_2

    .line 291
    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az$1;->b:Lcom/amap/api/mapcore2d/az;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/az;->a(Lcom/amap/api/mapcore2d/az;)Landroid/graphics/Paint;

    move-result-object v1

    const/high16 v3, -0x10000

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 293
    :cond_4
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az$1;->b:Lcom/amap/api/mapcore2d/az;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/az;->a(Lcom/amap/api/mapcore2d/az;)Landroid/graphics/Paint;

    move-result-object v1

    const/16 v3, -0x100

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 295
    :cond_5
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az$1;->b:Lcom/amap/api/mapcore2d/az;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/az;->a(Lcom/amap/api/mapcore2d/az;)Landroid/graphics/Paint;

    move-result-object v1

    const v3, -0xff0100

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 301
    :cond_6
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 302
    if-nez v1, :cond_7

    .line 306
    iget-object v9, p0, Lcom/amap/api/mapcore2d/az$1;->b:Lcom/amap/api/mapcore2d/az;

    invoke-static {v9}, Lcom/amap/api/mapcore2d/az;->b(Lcom/amap/api/mapcore2d/az;)Landroid/graphics/Path;

    move-result-object v9

    iget v10, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9, v10, v0}, Landroid/graphics/Path;->lineTo(FF)V

    move v0, v1

    .line 300
    :goto_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_4

    .line 304
    :cond_7
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az$1;->b:Lcom/amap/api/mapcore2d/az;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/az;->b(Lcom/amap/api/mapcore2d/az;)Landroid/graphics/Path;

    move-result-object v1

    iget v9, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v9, v0}, Landroid/graphics/Path;->moveTo(FF)V

    move v0, v2

    goto :goto_5
.end method
