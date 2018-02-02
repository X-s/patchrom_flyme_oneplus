.class Lcom/oneplus/camera/OPPictureProcessService$4;
.super Landroid/os/Handler;
.source "OPPictureProcessService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/OPPictureProcessService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/OPPictureProcessService;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/OPPictureProcessService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/OPPictureProcessService;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/oneplus/camera/OPPictureProcessService$4;->this$0:Lcom/oneplus/camera/OPPictureProcessService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService$4;->this$0:Lcom/oneplus/camera/OPPictureProcessService;

    invoke-static {v0, p1}, Lcom/oneplus/camera/OPPictureProcessService;->-wrap0(Lcom/oneplus/camera/OPPictureProcessService;Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 270
    :cond_0
    return-void
.end method
