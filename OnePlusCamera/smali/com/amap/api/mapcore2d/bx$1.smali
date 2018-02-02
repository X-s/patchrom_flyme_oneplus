.class Lcom/amap/api/mapcore2d/bx$1;
.super Landroid/os/Handler;
.source "UiSettingsDelegateImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/bx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/bx;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/bx;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bx$1;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 27
    if-nez p1, :cond_1

    .line 28
    :cond_0
    return-void

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bx$1;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bx;->a(Lcom/amap/api/mapcore2d/bx;)Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 54
    :goto_0
    return-void

    .line 33
    :pswitch_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bx$1;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bx;->a(Lcom/amap/api/mapcore2d/bx;)Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bx$1;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/bx;->b(Lcom/amap/api/mapcore2d/bx;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/w;->d(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    const-string/jumbo v1, "UiSettingsDelegateImp"

    const-string/jumbo v2, "handle_handleMessage"

    .line 51
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bx$1;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bx;->a(Lcom/amap/api/mapcore2d/bx;)Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bx$1;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/bx;->c(Lcom/amap/api/mapcore2d/bx;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/w;->g(Z)V

    goto :goto_0

    .line 41
    :pswitch_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bx$1;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bx;->a(Lcom/amap/api/mapcore2d/bx;)Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bx$1;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/bx;->d(Lcom/amap/api/mapcore2d/bx;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/w;->f(Z)V

    goto :goto_0

    .line 45
    :pswitch_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bx$1;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bx;->a(Lcom/amap/api/mapcore2d/bx;)Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bx$1;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/bx;->e(Lcom/amap/api/mapcore2d/bx;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/w;->e(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
