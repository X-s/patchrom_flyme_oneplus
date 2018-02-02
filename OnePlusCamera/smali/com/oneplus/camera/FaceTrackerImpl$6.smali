.class Lcom/oneplus/camera/FaceTrackerImpl$6;
.super Ljava/lang/Object;
.source "FaceTrackerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/FaceTrackerImpl;->updateFaceDetectionState(Lcom/oneplus/camera/Camera;)V
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
    .line 283
    iput-object p1, p0, Lcom/oneplus/camera/FaceTrackerImpl$6;->this$0:Lcom/oneplus/camera/FaceTrackerImpl;

    iput-object p2, p0, Lcom/oneplus/camera/FaceTrackerImpl$6;->val$camera:Lcom/oneplus/camera/Camera;

    iput-boolean p3, p0, Lcom/oneplus/camera/FaceTrackerImpl$6;->val$isEmpty:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 288
    iget-object v0, p0, Lcom/oneplus/camera/FaceTrackerImpl$6;->val$camera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_FACE_DETECTION_ENABLED:Lcom/oneplus/base/PropertyKey;

    iget-boolean v2, p0, Lcom/oneplus/camera/FaceTrackerImpl$6;->val$isEmpty:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 286
    return-void
.end method
