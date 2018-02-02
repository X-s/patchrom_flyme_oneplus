.class Lcom/amap/api/mapcore2d/cb$1;
.super Ljava/lang/Object;
.source "ZoomControllerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore2d/cb;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/ap;Lcom/amap/api/mapcore2d/w;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/cb;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/cb;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/amap/api/mapcore2d/cb$1;->a:Lcom/amap/api/mapcore2d/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cb$1;->a:Lcom/amap/api/mapcore2d/cb;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cb;->b(Lcom/amap/api/mapcore2d/cb;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cb$1;->a:Lcom/amap/api/mapcore2d/cb;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/cb;->a(Lcom/amap/api/mapcore2d/cb;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 93
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cb$1;->a:Lcom/amap/api/mapcore2d/cb;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cb;->c(Lcom/amap/api/mapcore2d/cb;)Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->f()F

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cb$1;->a:Lcom/amap/api/mapcore2d/cb;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/cb;->c(Lcom/amap/api/mapcore2d/cb;)Lcom/amap/api/mapcore2d/w;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore2d/w;->h()F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cb$1;->a:Lcom/amap/api/mapcore2d/cb;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cb;->e(Lcom/amap/api/mapcore2d/cb;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cb$1;->a:Lcom/amap/api/mapcore2d/cb;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/cb;->d(Lcom/amap/api/mapcore2d/cb;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cb$1;->a:Lcom/amap/api/mapcore2d/cb;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cb$1;->a:Lcom/amap/api/mapcore2d/cb;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/cb;->c(Lcom/amap/api/mapcore2d/cb;)Lcom/amap/api/mapcore2d/w;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore2d/w;->f()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/cb;->a(F)V

    .line 98
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cb$1;->a:Lcom/amap/api/mapcore2d/cb;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cb;->g(Lcom/amap/api/mapcore2d/cb;)Lcom/amap/api/mapcore2d/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ap;->c()Z

    .line 99
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cb$1;->a:Lcom/amap/api/mapcore2d/cb;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cb;->e(Lcom/amap/api/mapcore2d/cb;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cb$1;->a:Lcom/amap/api/mapcore2d/cb;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/cb;->f(Lcom/amap/api/mapcore2d/cb;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
