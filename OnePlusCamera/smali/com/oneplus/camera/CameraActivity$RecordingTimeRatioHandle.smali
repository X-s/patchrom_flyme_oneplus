.class final Lcom/oneplus/camera/CameraActivity$RecordingTimeRatioHandle;
.super Lcom/oneplus/base/Handle;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecordingTimeRatioHandle"
.end annotation


# instance fields
.field public final ratio:F

.field final synthetic this$0:Lcom/oneplus/camera/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;F)V
    .locals 1
    .param p2, "ratio"    # F

    .prologue
    .line 559
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity$RecordingTimeRatioHandle;->this$0:Lcom/oneplus/camera/CameraActivity;

    .line 560
    const-string v0, "VideoRecordingTimeRatio"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 561
    iput p2, p0, Lcom/oneplus/camera/CameraActivity$RecordingTimeRatioHandle;->ratio:F

    .line 562
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 567
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$RecordingTimeRatioHandle;->this$0:Lcom/oneplus/camera/CameraActivity;

    # invokes: Lcom/oneplus/camera/CameraActivity;->restoreRecordingTimeRatio(Lcom/oneplus/camera/CameraActivity$RecordingTimeRatioHandle;)V
    invoke-static {v0, p0}, Lcom/oneplus/camera/CameraActivity;->access$300(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/CameraActivity$RecordingTimeRatioHandle;)V

    .line 568
    return-void
.end method
