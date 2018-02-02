.class Lcom/oneplus/camera/CameraThread$24;
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
    .param p1, "this$0"    # Lcom/oneplus/camera/CameraThread;
    .param p2, "val$camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 1623
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread$24;->this$0:Lcom/oneplus/camera/CameraThread;

    iput-object p2, p0, Lcom/oneplus/camera/CameraThread$24;->val$camera:Lcom/oneplus/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread$24;->this$0:Lcom/oneplus/camera/CameraThread;

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread$24;->val$camera:Lcom/oneplus/camera/Camera;

    invoke-static {v0, v1}, Lcom/oneplus/camera/CameraThread;->-wrap7(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/Camera;)V

    .line 1626
    return-void
.end method
