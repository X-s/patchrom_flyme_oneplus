.class final Lcom/oneplus/camera/UIExposureControllerImpl$AELockHandle;
.super Lcom/oneplus/base/Handle;
.source "UIExposureControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/UIExposureControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AELockHandle"
.end annotation


# instance fields
.field public final internalHandle:Lcom/oneplus/base/Handle;

.field final synthetic this$0:Lcom/oneplus/camera/UIExposureControllerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/UIExposureControllerImpl;Lcom/oneplus/base/Handle;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/camera/UIExposureControllerImpl;
    .param p2, "internalHandle"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/oneplus/camera/UIExposureControllerImpl$AELockHandle;->this$0:Lcom/oneplus/camera/UIExposureControllerImpl;

    .line 34
    const-string/jumbo v0, "AELockWrapper"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 35
    iput-object p2, p0, Lcom/oneplus/camera/UIExposureControllerImpl$AELockHandle;->internalHandle:Lcom/oneplus/base/Handle;

    .line 32
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/oneplus/camera/UIExposureControllerImpl$AELockHandle;->this$0:Lcom/oneplus/camera/UIExposureControllerImpl;

    invoke-static {v0, p0}, Lcom/oneplus/camera/UIExposureControllerImpl;->-wrap2(Lcom/oneplus/camera/UIExposureControllerImpl;Lcom/oneplus/camera/UIExposureControllerImpl$AELockHandle;)V

    .line 39
    return-void
.end method
