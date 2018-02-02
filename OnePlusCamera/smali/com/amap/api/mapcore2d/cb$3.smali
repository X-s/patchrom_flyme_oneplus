.class Lcom/amap/api/mapcore2d/cb$3;
.super Ljava/lang/Object;
.source "ZoomControllerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 122
    iput-object p1, p0, Lcom/amap/api/mapcore2d/cb$3;->a:Lcom/amap/api/mapcore2d/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string/jumbo v1, "ontouch"

    .line 126
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cb$3;->a:Lcom/amap/api/mapcore2d/cb;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cb;->c(Lcom/amap/api/mapcore2d/cb;)Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->f()F

    move-result v0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/cb$3;->a:Lcom/amap/api/mapcore2d/cb;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/cb;->c(Lcom/amap/api/mapcore2d/cb;)Lcom/amap/api/mapcore2d/w;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/api/mapcore2d/w;->h()F

    move-result v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    .line 127
    return v3

    .line 129
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 141
    :goto_0
    return v3

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cb$3;->a:Lcom/amap/api/mapcore2d/cb;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cb;->e(Lcom/amap/api/mapcore2d/cb;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cb$3;->a:Lcom/amap/api/mapcore2d/cb;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/cb;->i(Lcom/amap/api/mapcore2d/cb;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cb$3;->a:Lcom/amap/api/mapcore2d/cb;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cb;->e(Lcom/amap/api/mapcore2d/cb;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/cb$3;->a:Lcom/amap/api/mapcore2d/cb;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/cb;->f(Lcom/amap/api/mapcore2d/cb;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cb$3;->a:Lcom/amap/api/mapcore2d/cb;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cb;->c(Lcom/amap/api/mapcore2d/cb;)Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-static {}, Lcom/amap/api/mapcore2d/l;->b()Lcom/amap/api/mapcore2d/l;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amap/api/mapcore2d/w;->b(Lcom/amap/api/mapcore2d/l;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    const-string/jumbo v2, "ZoomControllerView"

    .line 138
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
