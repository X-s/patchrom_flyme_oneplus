.class Lcom/oneplus/camera/CameraThread$26;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraThread;->openCamera(Lcom/oneplus/camera/Camera;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraThread;

.field final synthetic val$camera:Lcom/oneplus/camera/Camera;

.field final synthetic val$flags:I


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;I)V
    .locals 0

    .prologue
    .line 2345
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread$26;->this$0:Lcom/oneplus/camera/CameraThread;

    iput-object p2, p0, Lcom/oneplus/camera/CameraThread$26;->val$camera:Lcom/oneplus/camera/Camera;

    iput p3, p0, Lcom/oneplus/camera/CameraThread$26;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2349
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread$26;->this$0:Lcom/oneplus/camera/CameraThread;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread$26;->val$camera:Lcom/oneplus/camera/Camera;

    iget v2, p0, Lcom/oneplus/camera/CameraThread$26;->val$flags:I

    # invokes: Lcom/oneplus/camera/CameraThread;->openCameraInternal(Lcom/oneplus/camera/Camera;I)Z
    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->access$2900(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;I)Z

    .line 2350
    return-void
.end method
