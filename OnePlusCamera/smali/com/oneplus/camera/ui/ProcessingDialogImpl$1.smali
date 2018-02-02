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
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ProcessingDialogImpl;

    .prologue
    .line 29
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
    const/4 v2, 0x0

    .line 34
    iget-object v0, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl$1;->this$0:Lcom/oneplus/camera/ui/ProcessingDialogImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->-get1(Lcom/oneplus/camera/ui/ProcessingDialogImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl$1;->this$0:Lcom/oneplus/camera/ui/ProcessingDialogImpl;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ProcessingDialogImpl$1;->this$0:Lcom/oneplus/camera/ui/ProcessingDialogImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->-get0(Lcom/oneplus/camera/ui/ProcessingDialogImpl;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/ui/ProcessingDialogImpl;->-wrap1(Lcom/oneplus/camera/ui/ProcessingDialogImpl;Landroid/view/View;Z)V

    .line 32
    :cond_0
    return-void
.end method
