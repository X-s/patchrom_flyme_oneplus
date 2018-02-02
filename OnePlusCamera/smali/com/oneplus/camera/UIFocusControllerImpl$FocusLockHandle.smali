.class final Lcom/oneplus/camera/UIFocusControllerImpl$FocusLockHandle;
.super Lcom/oneplus/base/Handle;
.source "UIFocusControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/UIFocusControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FocusLockHandle"
.end annotation


# instance fields
.field public final internalHandle:Lcom/oneplus/base/Handle;

.field final synthetic this$0:Lcom/oneplus/camera/UIFocusControllerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/UIFocusControllerImpl;Lcom/oneplus/base/Handle;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/camera/UIFocusControllerImpl;
    .param p2, "internalHandle"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/oneplus/camera/UIFocusControllerImpl$FocusLockHandle;->this$0:Lcom/oneplus/camera/UIFocusControllerImpl;

    .line 32
    const-string/jumbo v0, "FocusLockWrapper"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p2, p0, Lcom/oneplus/camera/UIFocusControllerImpl$FocusLockHandle;->internalHandle:Lcom/oneplus/base/Handle;

    .line 30
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oneplus/camera/UIFocusControllerImpl$FocusLockHandle;->this$0:Lcom/oneplus/camera/UIFocusControllerImpl;

    invoke-static {v0, p0}, Lcom/oneplus/camera/UIFocusControllerImpl;->-wrap1(Lcom/oneplus/camera/UIFocusControllerImpl;Lcom/oneplus/camera/UIFocusControllerImpl$FocusLockHandle;)V

    .line 37
    return-void
.end method
