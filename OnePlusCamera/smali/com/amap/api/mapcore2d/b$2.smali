.class Lcom/amap/api/mapcore2d/b$2;
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
    .line 185
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b$2;->b:Lcom/amap/api/mapcore2d/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-string/jumbo v0, "onTouchHandler"

    .line 186
    iput-object v0, p0, Lcom/amap/api/mapcore2d/b$2;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$2;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapTouchListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$2;->b:Lcom/amap/api/mapcore2d/b;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapTouchListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    invoke-interface {v1, v0}, Lcom/amap/api/maps2d/AMap$OnMapTouchListener;->onTouch(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapDelegateImpGLSurfaceView"

    .line 196
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b$2;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
