.class Lcom/oneplus/camera/OPPictureProcessService$1;
.super Ljava/lang/Object;
.source "OPPictureProcessService.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


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
    .line 71
    iput-object p1, p0, Lcom/oneplus/camera/OPPictureProcessService$1;->this$0:Lcom/oneplus/camera/OPPictureProcessService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 3
    .param p1, "error"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 76
    invoke-static {}, Lcom/oneplus/camera/OPPictureProcessService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError() - error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService$1;->this$0:Lcom/oneplus/camera/OPPictureProcessService;

    invoke-static {v0}, Lcom/oneplus/camera/OPPictureProcessService;->-wrap3(Lcom/oneplus/camera/OPPictureProcessService;)V

    .line 74
    :cond_0
    return-void
.end method
