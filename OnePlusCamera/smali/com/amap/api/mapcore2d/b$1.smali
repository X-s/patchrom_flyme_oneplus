.class Lcom/amap/api/mapcore2d/b$1;
.super Ljava/util/TimerTask;
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
.field final synthetic a:Lcom/amap/api/mapcore2d/b;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/b;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b$1;->a:Lcom/amap/api/mapcore2d/b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b$1;->a:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapDelegateImpGLSurfaceView"

    const-string/jumbo v2, "TimerTask run"

    .line 178
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
