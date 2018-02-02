.class Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$4;
.super Ljava/lang/Object;
.source "MotionVectorPreviewRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;

.field final synthetic val$newCamera:Lcom/oneplus/camera/Camera;

.field final synthetic val$oldCamera:Lcom/oneplus/camera/Camera;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;
    .param p2, "val$oldCamera"    # Lcom/oneplus/camera/Camera;
    .param p3, "val$newCamera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$4;->this$0:Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;

    iput-object p2, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$4;->val$oldCamera:Lcom/oneplus/camera/Camera;

    iput-object p3, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$4;->val$newCamera:Lcom/oneplus/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 174
    iget-object v0, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$4;->val$oldCamera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->EVENT_MOTION_VECTOR_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$4;->this$0:Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;

    invoke-static {v2}, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->-get1(Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;)Lcom/oneplus/base/EventHandler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 175
    iget-object v0, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$4;->val$oldCamera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_MOTION_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$4;->this$0:Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;

    invoke-static {v2}, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->-get0(Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;)Lcom/oneplus/base/PropertyChangedCallback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 178
    iget-object v0, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$4;->val$newCamera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->EVENT_MOTION_VECTOR_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$4;->this$0:Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;

    invoke-static {v2}, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->-get1(Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;)Lcom/oneplus/base/EventHandler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 179
    iget-object v0, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$4;->val$newCamera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_MOTION_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$4;->this$0:Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;

    invoke-static {v2}, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->-get0(Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;)Lcom/oneplus/base/PropertyChangedCallback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 182
    iget-object v1, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$4;->this$0:Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;

    iget-object v0, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$4;->val$newCamera:Lcom/oneplus/camera/Camera;

    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_MOTION_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x2715

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 171
    return-void
.end method
