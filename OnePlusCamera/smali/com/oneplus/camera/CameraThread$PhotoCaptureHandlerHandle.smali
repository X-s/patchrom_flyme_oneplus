.class final Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;
.super Lcom/oneplus/base/Handle;
.source "CameraThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotoCaptureHandlerHandle"
.end annotation


# instance fields
.field public final captureHandler:Lcom/oneplus/camera/PhotoCaptureHandler;

.field final synthetic this$0:Lcom/oneplus/camera/CameraThread;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/PhotoCaptureHandler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/camera/CameraThread;
    .param p2, "handler"    # Lcom/oneplus/camera/PhotoCaptureHandler;

    .prologue
    .line 611
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;->this$0:Lcom/oneplus/camera/CameraThread;

    .line 613
    const-string/jumbo v0, "PhotoCaptureHandler"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 614
    iput-object p2, p0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;->captureHandler:Lcom/oneplus/camera/PhotoCaptureHandler;

    .line 611
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 620
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;->this$0:Lcom/oneplus/camera/CameraThread;

    invoke-static {v0, p0}, Lcom/oneplus/camera/CameraThread;->-wrap25(Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraThread$PhotoCaptureHandlerHandle;)V

    .line 618
    return-void
.end method
