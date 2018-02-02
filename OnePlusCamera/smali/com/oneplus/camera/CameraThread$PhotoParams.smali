.class public Lcom/oneplus/camera/CameraThread$PhotoParams;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotoParams"
.end annotation


# instance fields
.field public captureMode:Lcom/oneplus/camera/capturemode/CaptureMode;

.field public final frameCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "frameCount"    # I

    .prologue
    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    iput p1, p0, Lcom/oneplus/camera/CameraThread$PhotoParams;->frameCount:I

    .line 527
    return-void
.end method

.method public constructor <init>(ILcom/oneplus/camera/capturemode/CaptureMode;)V
    .locals 0
    .param p1, "frameCount"    # I
    .param p2, "captureMode"    # Lcom/oneplus/camera/capturemode/CaptureMode;

    .prologue
    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    iput-object p2, p0, Lcom/oneplus/camera/CameraThread$PhotoParams;->captureMode:Lcom/oneplus/camera/capturemode/CaptureMode;

    .line 540
    iput p1, p0, Lcom/oneplus/camera/CameraThread$PhotoParams;->frameCount:I

    .line 537
    return-void
.end method


# virtual methods
.method public clone()Lcom/oneplus/camera/CameraThread$PhotoParams;
    .locals 2

    .prologue
    .line 549
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/CameraThread$PhotoParams;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, "ex":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread$PhotoParams;->clone()Lcom/oneplus/camera/CameraThread$PhotoParams;

    move-result-object v0

    return-object v0
.end method
