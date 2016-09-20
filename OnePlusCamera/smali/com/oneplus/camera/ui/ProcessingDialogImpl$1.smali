.class Lcom/oneplus/camera/ui/ProcessingDialogImpl$1;
.super Ljava/lang/Object;
.source "ProcessingDialogImpl.java"

# interfaces
.implements Lcom/oneplus/camera/UIComponent$ViewRotationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/ProcessingDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ProcessingDialogImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ProcessingDialogImpl;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl$1;->this$0:Lcom/oneplus/camera/ui/ProcessingDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotated(Landroid/view/View;Lcom/oneplus/base/Rotation;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl$1;->this$0:Lcom/oneplus/camera/ui/ProcessingDialogImpl;

    # getter for: Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_DialogHandles:Ljava/util/List;
    invoke-static {v0}, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->access$000(Lcom/oneplus/camera/ui/ProcessingDialogImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl$1;->this$0:Lcom/oneplus/camera/ui/ProcessingDialogImpl;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl$1;->this$0:Lcom/oneplus/camera/ui/ProcessingDialogImpl;

    # getter for: Lcom/oneplus/camera/ui/ProcessingDialogImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;
    invoke-static {v1}, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->access$100(Lcom/oneplus/camera/ui/ProcessingDialogImpl;)Lcom/oneplus/camera/widget/RotateRelativeLayout;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lcom/oneplus/camera/ui/ProcessingDialogImpl;->setViewVisibility(Landroid/view/View;Z)V
    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->access$200(Lcom/oneplus/camera/ui/ProcessingDialogImpl;Landroid/view/View;Z)V

    .line 36
    :cond_0
    return-void
.end method
