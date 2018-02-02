.class Lcom/oneplus/camera/FaceTrackerImpl$3;
.super Ljava/lang/Object;
.source "FaceTrackerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/FaceTrackerImpl;->onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/FaceTrackerImpl;

.field final synthetic val$camera:Lcom/oneplus/camera/Camera;

.field final synthetic val$isEmpty:Z


# direct methods
.method constructor <init>(Lcom/oneplus/camera/FaceTrackerImpl;Lcom/oneplus/camera/Camera;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/FaceTrackerImpl;
    .param p2, "val$camera"    # Lcom/oneplus/camera/Camera;
    .param p3, "val$isEmpty"    # Z

    .prologue
    .line 120
    iput-object p1, p0, Lcom/oneplus/camera/FaceTrackerImpl$3;->this$0:Lcom/oneplus/camera/FaceTrackerImpl;

    iput-object p2, p0, Lcom/oneplus/camera/FaceTrackerImpl$3;->val$camera:Lcom/oneplus/camera/Camera;

    iput-boolean p3, p0, Lcom/oneplus/camera/FaceTrackerImpl$3;->val$isEmpty:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, Lcom/oneplus/camera/FaceTrackerImpl$3;->val$camera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_FACE_DETECTION_ENABLED:Lcom/oneplus/base/PropertyKey;

    iget-boolean v2, p0, Lcom/oneplus/camera/FaceTrackerImpl$3;->val$isEmpty:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/oneplus/camera/FaceTrackerImpl$3;->val$camera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_FACES:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/FaceTrackerImpl$3;->this$0:Lcom/oneplus/camera/FaceTrackerImpl;

    invoke-static {v2}, Lcom/oneplus/camera/FaceTrackerImpl;->-get0(Lcom/oneplus/camera/FaceTrackerImpl;)Lcom/oneplus/base/PropertyChangedCallback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 127
    iget-object v1, p0, Lcom/oneplus/camera/FaceTrackerImpl$3;->this$0:Lcom/oneplus/camera/FaceTrackerImpl;

    iget-object v2, p0, Lcom/oneplus/camera/FaceTrackerImpl$3;->val$camera:Lcom/oneplus/camera/Camera;

    iget-object v0, p0, Lcom/oneplus/camera/FaceTrackerImpl$3;->val$camera:Lcom/oneplus/camera/Camera;

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_FACES:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/oneplus/camera/FaceTrackerImpl;->-wrap3(Lcom/oneplus/camera/FaceTrackerImpl;Lcom/oneplus/camera/Camera;Ljava/util/List;)V

    .line 123
    return-void
.end method
