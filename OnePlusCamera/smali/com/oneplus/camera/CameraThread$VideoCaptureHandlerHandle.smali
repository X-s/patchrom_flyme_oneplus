.class final Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;
.super Lcom/oneplus/base/Handle;
.source "CameraThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VideoCaptureHandlerHandle"
.end annotation


# instance fields
.field public final captureHandler:Lcom/oneplus/camera/VideoCaptureHandler;

.field final synthetic this$0:Lcom/oneplus/camera/CameraThread;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/VideoCaptureHandler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/camera/CameraThread;
    .param p2, "handler"    # Lcom/oneplus/camera/VideoCaptureHandler;

    .prologue
    .line 627
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;->this$0:Lcom/oneplus/camera/CameraThread;

    .line 629
    const-string/jumbo v0, "VideoCaptureHandler"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 630
    iput-object p2, p0, Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;->captureHandler:Lcom/oneplus/camera/VideoCaptureHandler;

    .line 627
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 636
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;->this$0:Lcom/oneplus/camera/CameraThread;

    invoke-static {v0, p0}, Lcom/oneplus/camera/CameraThread;->-wrap26(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$VideoCaptureHandlerHandle;)V

    .line 634
    return-void
.end method
