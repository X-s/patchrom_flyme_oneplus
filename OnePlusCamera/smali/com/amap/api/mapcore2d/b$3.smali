.class Lcom/amap/api/mapcore2d/b$3;
.super Landroid/os/Handler;
.source "AMapDelegateImpGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/amap/api/mapcore2d/b;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/b;)V
    .locals 1

    .prologue
    .line 201
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-string/jumbo v0, "handleMessage"

    .line 202
    iput-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 205
    if-nez p1, :cond_1

    .line 207
    :cond_0
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    if-eqz v0, :cond_0

    .line 210
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 344
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 212
    :pswitch_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->b(Lcom/amap/api/mapcore2d/b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 343
    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapDelegateImpGLSurfaceView"

    const-string/jumbo v2, "handle_handleMessage"

    .line 342
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->c(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->c(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;->onMapLoaded()V

    goto :goto_0

    .line 223
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Key\u9a8c\u8bc1\u5931\u8d25\uff1a["

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_3

    .line 228
    sget-object v1, Lcom/amap/api/mapcore2d/cm;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string/jumbo v1, "]"

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "amapsdk"

    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 226
    :cond_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 237
    :pswitch_4
    :try_start_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 238
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 241
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 245
    :goto_2
    if-nez v0, :cond_5

    .line 262
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->g(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

    move-result-object v0

    if-nez v0, :cond_9

    .line 266
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->destroyDrawingCache()V

    .line 267
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/b;Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;)Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

    goto :goto_0

    .line 244
    :catch_1
    move-exception v0

    const-string/jumbo v2, "AMapDelegateImpGLSurfaceView"

    .line 243
    iget-object v3, p0, Lcom/amap/api/mapcore2d/b$3;->a:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2

    .line 246
    :cond_5
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 247
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/b;->d(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/ca;

    move-result-object v2

    if-nez v2, :cond_7

    .line 250
    :goto_4
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/b;->e(Lcom/amap/api/mapcore2d/b;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_8

    .line 258
    :cond_6
    :goto_5
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/b;->g(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 259
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/b;->g(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;->onMapScreenShot(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 248
    :cond_7
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/b;->d(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/ca;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/ca;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 250
    :cond_8
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/b;->f(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/ax;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 251
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/b;->e(Lcom/amap/api/mapcore2d/b;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 252
    if-eqz v2, :cond_6

    .line 253
    iget-object v3, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v3}, Lcom/amap/api/mapcore2d/b;->e(Lcom/amap/api/mapcore2d/b;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 254
    iget-object v4, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v4}, Lcom/amap/api/mapcore2d/b;->e(Lcom/amap/api/mapcore2d/b;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    .line 255
    int-to-float v3, v3

    int-to-float v4, v4

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 263
    :cond_9
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->g(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;->onMapScreenShot(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 272
    :pswitch_5
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->h(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/b;->i(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    move-result-object v1

    if-nez v1, :cond_c

    .line 277
    :goto_6
    sget-object v1, Lcom/amap/api/mapcore2d/p;->h:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 279
    :cond_a
    iget v1, v0, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_b

    iget-object v1, v0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-object v0, v0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 280
    invoke-static {v2, v3, v0, v1}, Lcom/amap/api/mapcore2d/ci;->a(DD)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 285
    :cond_b
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->d(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/ca;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ca;->setVisibility(I)V

    .line 288
    :goto_7
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->j(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$CancelableCallback;

    move-result-object v0

    if-nez v0, :cond_f

    .line 293
    :goto_8
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->k(Lcom/amap/api/mapcore2d/b;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 296
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/b;->b(Lcom/amap/api/mapcore2d/b;Z)Z

    goto/16 :goto_0

    .line 274
    :cond_c
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/b;ZLcom/amap/api/maps2d/model/CameraPosition;)V

    goto :goto_6

    .line 277
    :cond_d
    sget-object v1, Lcom/amap/api/mapcore2d/p;->h:Ljava/lang/String;

    .line 278
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_7

    .line 283
    :cond_e
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->d(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/ca;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ca;->setVisibility(I)V

    goto :goto_7

    .line 289
    :cond_f
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/b;Z)Z

    .line 290
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->j(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$CancelableCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/maps2d/AMap$CancelableCallback;->onFinish()V

    .line 291
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/b;Z)Z

    goto :goto_8

    .line 294
    :cond_10
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/b;Lcom/amap/api/maps2d/AMap$CancelableCallback;)Lcom/amap/api/maps2d/AMap$CancelableCallback;

    goto/16 :goto_0

    .line 302
    :pswitch_6
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->i(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 303
    new-instance v0, Lcom/amap/api/maps2d/model/CameraPosition;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    .line 304
    invoke-static {v1}, Lcom/amap/api/mapcore2d/b;->l(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/b;->f()F

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/maps2d/model/CameraPosition;-><init>(Lcom/amap/api/maps2d/model/LatLng;FFF)V

    .line 305
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/b;->i(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;->onCameraChange(Lcom/amap/api/maps2d/model/CameraPosition;)V

    goto/16 :goto_0

    .line 310
    :pswitch_7
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->m(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/j;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    .line 311
    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->m(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/j;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->m(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/j;->h()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 314
    :pswitch_8
    new-instance v0, Lcom/amap/api/mapcore2d/ad;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    .line 316
    invoke-static {v1}, Lcom/amap/api/mapcore2d/b;->m(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/j;

    move-result-object v1

    .line 317
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/j;->b()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    .line 318
    invoke-static {v2}, Lcom/amap/api/mapcore2d/b;->m(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/j;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore2d/ad;-><init>(II)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    .line 319
    invoke-static {v1}, Lcom/amap/api/mapcore2d/b;->m(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/j;->d()F

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    .line 320
    invoke-static {v2}, Lcom/amap/api/mapcore2d/b;->m(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/j;->e()F

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    .line 321
    invoke-static {v3}, Lcom/amap/api/mapcore2d/b;->m(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/j;->f()F

    move-result v3

    .line 315
    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore2d/l;->a(Lcom/amap/api/mapcore2d/ad;FFF)Lcom/amap/api/mapcore2d/l;

    move-result-object v0

    .line 322
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/b;->m(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/j;->a()Z

    move-result v1

    if-nez v1, :cond_11

    .line 325
    :goto_9
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/ar;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/ar;->a(Lcom/amap/api/mapcore2d/l;)V

    goto/16 :goto_0

    .line 323
    :cond_11
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/mapcore2d/l;->l:Z

    goto :goto_9

    .line 335
    :pswitch_9
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->d:Lcom/amap/api/mapcore2d/ay$b;

    if-eqz v0, :cond_2

    .line 336
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$3;->b:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->d:Lcom/amap/api/mapcore2d/ay$b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$b;->a()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_9
    .end packed-switch

    .line 312
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_8
    .end packed-switch
.end method
