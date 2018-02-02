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
    .line 84
    iput-object p1, p0, Lcom/oneplus/camera/OPPictureProcessService$2;->this$0:Lcom/oneplus/camera/OPPictureProcessService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService$2;->this$0:Lcom/oneplus/camera/OPPictureProcessService;

    invoke-static {v0, p1}, Lcom/oneplus/camera/OPPictureProcessService;->-wrap2(Lcom/oneplus/camera/OPPictureProcessService;[B)V

    .line 87
    return-void
.end method
