.class final Lcom/oneplus/camera/FaceTrackerImpl$FaceDetectionDisableHandle;
.super Lcom/oneplus/base/Handle;
.source "FaceTrackerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/FaceTrackerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FaceDetectionDisableHandle"
.end annotation


# instance fields
.field public final reason:Lcom/oneplus/camera/FaceTracker$FaceDetectionDisabledReason;

.field final synthetic this$0:Lcom/oneplus/camera/FaceTrackerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/FaceTrackerImpl;Lcom/oneplus/camera/FaceTracker$FaceDetectionDisabledReason;)V
    .locals 1
    .param p2, "reason"    # Lcom/oneplus/camera/FaceTracker$FaceDetectionDisabledReason;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/oneplus/camera/FaceTrackerImpl$FaceDetectionDisableHandle;->this$0:Lcom/oneplus/camera/FaceTrackerImpl;

    .line 37
    const-string v0, "FaceDetectionDisable"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 38
    iput-object p2, p0, Lcom/oneplus/camera/FaceTrackerImpl$FaceDetectionDisableHandle;->reason:Lcom/oneplus/camera/FaceTracker$FaceDetectionDisabledReason;

    .line 39
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/oneplus/camera/FaceTrackerImpl$FaceDetectionDisableHandle;->this$0:Lcom/oneplus/camera/FaceTrackerImpl;

    # invokes: Lcom/oneplus/camera/FaceTrackerImpl;->enableFaceDetection(Lcom/oneplus/base/Handle;)V
    invoke-static {v0, p0}, Lcom/oneplus/camera/FaceTrackerImpl;->access$000(Lcom/oneplus/camera/FaceTrackerImpl;Lcom/oneplus/base/Handle;)V

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/oneplus/base/Handle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{ Reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/FaceTrackerImpl$FaceDetectionDisableHandle;->reason:Lcom/oneplus/camera/FaceTracker$FaceDetectionDisabledReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
