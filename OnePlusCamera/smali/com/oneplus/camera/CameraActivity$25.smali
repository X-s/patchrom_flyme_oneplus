.class Lcom/oneplus/camera/CameraActivity$25;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraActivity;->onCountDownTimerChanged(J)V
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
    .line 3561
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity$25;->this$0:Lcom/oneplus/camera/CameraActivity;

    iput-wide p2, p0, Lcom/oneplus/camera/CameraActivity$25;->val$seconds:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3566
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$25;->this$0:Lcom/oneplus/camera/CameraActivity;

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity$25;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-static {v1}, Lcom/oneplus/camera/CameraActivity;->-get3(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/CameraThread;

    move-result-object v1

    iget-wide v2, p0, Lcom/oneplus/camera/CameraActivity$25;->val$seconds:J

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/camera/CameraThread;->playCameraTimerSound(J)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/camera/CameraActivity;->-set0(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 3564
    return-void
.end method
