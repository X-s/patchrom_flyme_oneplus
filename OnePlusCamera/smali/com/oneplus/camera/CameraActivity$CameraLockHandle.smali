.class final Lcom/oneplus/camera/CameraActivity$CameraLockHandle;
.super Lcom/oneplus/base/Handle;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CameraLockHandle"
.end annotation


# instance fields
.field public final lensFacing:Lcom/oneplus/camera/Camera$LensFacing;

.field final synthetic this$0:Lcom/oneplus/camera/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/Camera$LensFacing;)V
    .locals 1
    .param p2, "lensFacing"    # Lcom/oneplus/camera/Camera$LensFacing;

    .prologue
    .line 645
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity$CameraLockHandle;->this$0:Lcom/oneplus/camera/CameraActivity;

    .line 646
    const-string v0, "CameraLock"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 647
    iput-object p2, p0, Lcom/oneplus/camera/CameraActivity$CameraLockHandle;->lensFacing:Lcom/oneplus/camera/Camera$LensFacing;

    .line 648
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 653
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$CameraLockHandle;->this$0:Lcom/oneplus/camera/CameraActivity;

    # invokes: Lcom/oneplus/camera/CameraActivity;->unlockCamera(Lcom/oneplus/camera/CameraActivity$CameraLockHandle;)V
    invoke-static {v0, p0}, Lcom/oneplus/camera/CameraActivity;->access$800(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/CameraActivity$CameraLockHandle;)V

    .line 654
    return-void
.end method
