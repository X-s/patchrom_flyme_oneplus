.class Lcom/oneplus/camera/CameraThread$32;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraThread;->stopCameraPreviewInternal(Lcom/oneplus/camera/Camera;[ZI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Lcom/oneplus/camera/OperationState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraThread;

.field final synthetic val$camera:Lcom/oneplus/camera/Camera;

.field final synthetic val$result:[Z


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraThread;[ZLcom/oneplus/camera/Camera;)V
    .locals 0

    .prologue
    .line 3219
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread$32;->this$0:Lcom/oneplus/camera/CameraThread;

    iput-object p2, p0, Lcom/oneplus/camera/CameraThread$32;->val$result:[Z

    iput-object p3, p0, Lcom/oneplus/camera/CameraThread$32;->val$camera:Lcom/oneplus/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 4
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/OperationState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/OperationState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3223
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/OperationState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/OperationState;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    if-ne v0, v1, :cond_0

    .line 3225
    iget-object v1, p0, Lcom/oneplus/camera/CameraThread$32;->val$result:[Z

    monitor-enter v1

    .line 3227
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread$32;->this$0:Lcom/oneplus/camera/CameraThread;

    # getter for: Lcom/oneplus/camera/CameraThread;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/camera/CameraThread;->access$3500(Lcom/oneplus/camera/CameraThread;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "stopCameraPreviewInternal() - Notify waiting thread"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3228
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread$32;->val$result:[Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 3229
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread$32;->val$result:[Z

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3230
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3231
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread$32;->val$camera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1, p0}, Lcom/oneplus/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3233
    :cond_0
    return-void

    .line 3230
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
