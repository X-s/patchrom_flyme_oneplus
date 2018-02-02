.class Lcom/amap/api/mapcore2d/ao$2;
.super Ljava/lang/Object;
.source "LocationView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore2d/ao;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/ar;Lcom/amap/api/mapcore2d/w;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/ao;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/ao;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ao$2;->a:Lcom/amap/api/mapcore2d/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    const-string/jumbo v1, "onTouch"

    .line 67
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ao$2;->a:Lcom/amap/api/mapcore2d/ao;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ao;->a(Lcom/amap/api/mapcore2d/ao;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 89
    :goto_0
    return v8

    .line 68
    :cond_0
    return v8

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ao$2;->a:Lcom/amap/api/mapcore2d/ao;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ao;->c(Lcom/amap/api/mapcore2d/ao;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ao$2;->a:Lcom/amap/api/mapcore2d/ao;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/ao;->b(Lcom/amap/api/mapcore2d/ao;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 74
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ao$2;->a:Lcom/amap/api/mapcore2d/ao;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ao;->c(Lcom/amap/api/mapcore2d/ao;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/ao$2;->a:Lcom/amap/api/mapcore2d/ao;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/ao;->d(Lcom/amap/api/mapcore2d/ao;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 75
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ao$2;->a:Lcom/amap/api/mapcore2d/ao;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ao;->e(Lcom/amap/api/mapcore2d/ao;)Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/amap/api/mapcore2d/w;->c(Z)V

    .line 76
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ao$2;->a:Lcom/amap/api/mapcore2d/ao;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ao;->e(Lcom/amap/api/mapcore2d/ao;)Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->p()Landroid/location/Location;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_3

    .line 80
    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 81
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    .line 82
    iget-object v3, p0, Lcom/amap/api/mapcore2d/ao$2;->a:Lcom/amap/api/mapcore2d/ao;

    invoke-static {v3}, Lcom/amap/api/mapcore2d/ao;->e(Lcom/amap/api/mapcore2d/ao;)Lcom/amap/api/mapcore2d/w;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/amap/api/mapcore2d/w;->a(Landroid/location/Location;)V

    .line 83
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ao$2;->a:Lcom/amap/api/mapcore2d/ao;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ao;->e(Lcom/amap/api/mapcore2d/ao;)Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    iget-object v3, p0, Lcom/amap/api/mapcore2d/ao$2;->a:Lcom/amap/api/mapcore2d/ao;

    .line 84
    invoke-static {v3}, Lcom/amap/api/mapcore2d/ao;->e(Lcom/amap/api/mapcore2d/ao;)Lcom/amap/api/mapcore2d/w;

    move-result-object v3

    invoke-interface {v3}, Lcom/amap/api/mapcore2d/w;->f()F

    move-result v3

    .line 83
    invoke-static {v2, v3}, Lcom/amap/api/mapcore2d/l;->a(Lcom/amap/api/maps2d/model/LatLng;F)Lcom/amap/api/mapcore2d/l;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/mapcore2d/l;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    const-string/jumbo v2, "LocationView"

    .line 86
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_3
    return v8
.end method
