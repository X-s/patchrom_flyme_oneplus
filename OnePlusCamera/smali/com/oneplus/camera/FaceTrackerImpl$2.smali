.class Lcom/oneplus/camera/FaceTrackerImpl$2;
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

.field final synthetic val$prevCamera:Lcom/oneplus/camera/Camera;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/FaceTrackerImpl;Lcom/oneplus/camera/Camera;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/oneplus/camera/FaceTrackerImpl$2;->this$0:Lcom/oneplus/camera/FaceTrackerImpl;

    iput-object p2, p0, Lcom/oneplus/camera/FaceTrackerImpl$2;->val$prevCamera:Lcom/oneplus/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/oneplus/camera/FaceTrackerImpl$2;->val$prevCamera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_FACES:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/FaceTrackerImpl$2;->this$0:Lcom/oneplus/camera/FaceTrackerImpl;

    # getter for: Lcom/oneplus/camera/FaceTrackerImpl;->m_FacesChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    invoke-static {v2}, Lcom/oneplus/camera/FaceTrackerImpl;->access$200(Lcom/oneplus/camera/FaceTrackerImpl;)Lcom/oneplus/base/PropertyChangedCallback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 114
    return-void
.end method
