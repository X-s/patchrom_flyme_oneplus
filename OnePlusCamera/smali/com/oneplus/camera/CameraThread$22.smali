.class Lcom/oneplus/camera/CameraThread$22;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraThread;->closeCamera(Lcom/oneplus/camera/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraThread;

.field final synthetic val$camera:Lcom/oneplus/camera/Camera;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;)V
    .locals 0

    .prologue
    .line 1366
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread$22;->this$0:Lcom/oneplus/camera/CameraThread;

    iput-object p2, p0, Lcom/oneplus/camera/CameraThread$22;->val$camera:Lcom/oneplus/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread$22;->this$0:Lcom/oneplus/camera/CameraThread;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread$22;->val$camera:Lcom/oneplus/camera/Camera;

    # invokes: Lcom/oneplus/camera/CameraThread;->closeCameraInternal(Lcom/oneplus/camera/Camera;)V
    invoke-static {v0, v1}, Lcom/oneplus/camera/CameraThread;->access$2500(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;)V

    .line 1371
    return-void
.end method
