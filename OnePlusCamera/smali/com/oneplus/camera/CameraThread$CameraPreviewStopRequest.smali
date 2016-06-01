.class final Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;
.super Ljava/lang/Object;
.source "CameraThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CameraPreviewStopRequest"
.end annotation


# instance fields
.field public final camera:Lcom/oneplus/camera/Camera;

.field public final flags:I

.field public final result:[Z


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/Camera;[ZI)V
    .locals 0
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .param p2, "result"    # [Z
    .param p3, "flags"    # I

    .prologue
    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 617
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;->camera:Lcom/oneplus/camera/Camera;

    .line 618
    iput p3, p0, Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;->flags:I

    .line 619
    iput-object p2, p0, Lcom/oneplus/camera/CameraThread$CameraPreviewStopRequest;->result:[Z

    .line 620
    return-void
.end method
