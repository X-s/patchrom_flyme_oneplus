.class Lcom/oneplus/camera/ui/LaunchAnimation$1;
.super Ljava/lang/Object;
.source "LaunchAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/LaunchAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/LaunchAnimation;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/LaunchAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/LaunchAnimation;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/oneplus/camera/ui/LaunchAnimation$1;->this$0:Lcom/oneplus/camera/ui/LaunchAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 88
    iget-object v1, p0, Lcom/oneplus/camera/ui/LaunchAnimation$1;->this$0:Lcom/oneplus/camera/ui/LaunchAnimation;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/LaunchAnimation;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 89
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_0

    .line 91
    iget-object v1, p0, Lcom/oneplus/camera/ui/LaunchAnimation$1;->this$0:Lcom/oneplus/camera/ui/LaunchAnimation;

    invoke-static {v1}, Lcom/oneplus/camera/ui/LaunchAnimation;->-get0(Lcom/oneplus/camera/ui/LaunchAnimation;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Start waiting preview frame"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sget-object v1, Lcom/oneplus/camera/Camera;->EVENT_PREVIEW_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/ui/LaunchAnimation$1;->this$0:Lcom/oneplus/camera/ui/LaunchAnimation;

    invoke-static {v2}, Lcom/oneplus/camera/ui/LaunchAnimation;->-get2(Lcom/oneplus/camera/ui/LaunchAnimation;)Lcom/oneplus/base/EventHandler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 86
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/LaunchAnimation$1;->this$0:Lcom/oneplus/camera/ui/LaunchAnimation;

    invoke-static {v1}, Lcom/oneplus/camera/ui/LaunchAnimation;->-get0(Lcom/oneplus/camera/ui/LaunchAnimation;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "No camera to get preview frame"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
