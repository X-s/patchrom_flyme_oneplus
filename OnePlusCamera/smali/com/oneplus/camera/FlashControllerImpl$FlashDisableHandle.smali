.class final Lcom/oneplus/camera/FlashControllerImpl$FlashDisableHandle;
.super Lcom/oneplus/base/Handle;
.source "FlashControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/FlashControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FlashDisableHandle"
.end annotation


# instance fields
.field public final reason:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

.field final synthetic this$0:Lcom/oneplus/camera/FlashControllerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/FlashControllerImpl;Lcom/oneplus/camera/FlashController$FlashDisabledReason;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/camera/FlashControllerImpl;
    .param p2, "reason"    # Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/oneplus/camera/FlashControllerImpl$FlashDisableHandle;->this$0:Lcom/oneplus/camera/FlashControllerImpl;

    .line 71
    const-string/jumbo v0, "FlashDisable"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 72
    iput-object p2, p0, Lcom/oneplus/camera/FlashControllerImpl$FlashDisableHandle;->reason:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    .line 69
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl$FlashDisableHandle;->this$0:Lcom/oneplus/camera/FlashControllerImpl;

    invoke-static {v0, p0}, Lcom/oneplus/camera/FlashControllerImpl;->-wrap1(Lcom/oneplus/camera/FlashControllerImpl;Lcom/oneplus/base/Handle;)V

    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/oneplus/base/Handle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "{ Reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/FlashControllerImpl$FlashDisableHandle;->reason:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
