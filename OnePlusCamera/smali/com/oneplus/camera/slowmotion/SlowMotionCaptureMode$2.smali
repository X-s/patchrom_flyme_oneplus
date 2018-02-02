.class Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode$2;
.super Ljava/lang/Object;
.source "SlowMotionCaptureMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode;->setSpecialVideoMode(Lcom/oneplus/camera/Camera;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode;

.field final synthetic val$camera:Lcom/oneplus/camera/Camera;

.field final synthetic val$isSpecial:Z


# direct methods
.method constructor <init>(Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode;Lcom/oneplus/camera/Camera;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode;
    .param p2, "val$camera"    # Lcom/oneplus/camera/Camera;
    .param p3, "val$isSpecial"    # Z

    .prologue
    .line 100
    iput-object p1, p0, Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode$2;->this$0:Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode;

    iput-object p2, p0, Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode$2;->val$camera:Lcom/oneplus/camera/Camera;

    iput-boolean p3, p0, Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode$2;->val$isSpecial:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode$2;->val$camera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_SPECIAL_VIDEO_MODE:Lcom/oneplus/base/PropertyKey;

    iget-boolean v2, p0, Lcom/oneplus/camera/slowmotion/SlowMotionCaptureMode$2;->val$isSpecial:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 103
    return-void
.end method
