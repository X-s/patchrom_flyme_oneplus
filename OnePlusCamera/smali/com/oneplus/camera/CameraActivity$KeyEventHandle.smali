.class Lcom/oneplus/camera/CameraActivity$KeyEventHandle;
.super Lcom/oneplus/base/Handle;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyEventHandle"
.end annotation


# instance fields
.field public handler:Lcom/oneplus/camera/KeyEventHandler;

.field final synthetic this$0:Lcom/oneplus/camera/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/KeyEventHandler;)V
    .locals 1
    .param p2, "handler"    # Lcom/oneplus/camera/KeyEventHandler;

    .prologue
    .line 664
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity$KeyEventHandle;->this$0:Lcom/oneplus/camera/CameraActivity;

    .line 665
    const-string v0, "Key Event Handle"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 666
    iput-object p2, p0, Lcom/oneplus/camera/CameraActivity$KeyEventHandle;->handler:Lcom/oneplus/camera/KeyEventHandler;

    .line 667
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 672
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$KeyEventHandle;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->verifyAccess()V

    .line 673
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$KeyEventHandle;->this$0:Lcom/oneplus/camera/CameraActivity;

    # getter for: Lcom/oneplus/camera/CameraActivity;->m_KeyEventHandles:Ljava/util/List;
    invoke-static {v0}, Lcom/oneplus/camera/CameraActivity;->access$900(Lcom/oneplus/camera/CameraActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 674
    return-void
.end method
