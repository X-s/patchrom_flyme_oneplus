.class Lcom/oneplus/camera/OPPictureProcessService$2;
.super Ljava/lang/Object;
.source "OPPictureProcessService.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/OPPictureProcessService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/OPPictureProcessService;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/OPPictureProcessService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/OPPictureProcessService;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/oneplus/camera/OPPictureProcessService$2;->this$0:Lcom/oneplus/camera/OPPictureProcessService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService$2;->this$0:Lcom/oneplus/camera/OPPictureProcessService;

    invoke-static {v0}, Lcom/oneplus/camera/OPPictureProcessService;->-get1(Lcom/oneplus/camera/OPPictureProcessService;)Landroid/os/Handler;

    move-result-object v0

    const v1, -0x5573f

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 104
    return-void
.end method
