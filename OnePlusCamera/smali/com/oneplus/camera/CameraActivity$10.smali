.class Lcom/oneplus/camera/CameraActivity$10;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraActivity;->capturePhoto(Lcom/oneplus/camera/CameraActivity$CaptureHandleImpl;ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraActivity;

.field final synthetic val$seconds:J


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraActivity;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/CameraActivity;
    .param p2, "val$seconds"    # J

    .prologue
    .line 1320
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity$10;->this$0:Lcom/oneplus/camera/CameraActivity;

    iput-wide p2, p0, Lcom/oneplus/camera/CameraActivity$10;->val$seconds:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$10;->this$0:Lcom/oneplus/camera/CameraActivity;

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity$10;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-static {v1}, Lcom/oneplus/camera/CameraActivity;->-get3(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/CameraThread;

    move-result-object v1

    iget-wide v2, p0, Lcom/oneplus/camera/CameraActivity$10;->val$seconds:J

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/CameraThread;->playCameraTimerSound(J)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/camera/CameraActivity;->-set0(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1323
    return-void
.end method
