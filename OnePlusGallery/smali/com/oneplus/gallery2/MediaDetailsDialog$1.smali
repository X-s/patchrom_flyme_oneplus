.class Lcom/oneplus/gallery2/MediaDetailsDialog$1;
.super Lcom/oneplus/gallery2/GalleryDialogFragment;
.source "MediaDetailsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/MediaDetailsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/MediaDetailsDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/MediaDetailsDialog;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaDetailsDialog$1;->this$0:Lcom/oneplus/gallery2/MediaDetailsDialog;

    invoke-direct {p0}, Lcom/oneplus/gallery2/GalleryDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissAllowingStateLoss()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaDetailsDialog$1;->this$0:Lcom/oneplus/gallery2/MediaDetailsDialog;

    # getter for: Lcom/oneplus/gallery2/MediaDetailsDialog;->m_OnDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v0}, Lcom/oneplus/gallery2/MediaDetailsDialog;->access$000(Lcom/oneplus/gallery2/MediaDetailsDialog;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaDetailsDialog$1;->this$0:Lcom/oneplus/gallery2/MediaDetailsDialog;

    # getter for: Lcom/oneplus/gallery2/MediaDetailsDialog;->m_OnDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v0}, Lcom/oneplus/gallery2/MediaDetailsDialog;->access$000(Lcom/oneplus/gallery2/MediaDetailsDialog;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/MediaDetailsDialog$1;->this$0:Lcom/oneplus/gallery2/MediaDetailsDialog;

    # getter for: Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Dialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/oneplus/gallery2/MediaDetailsDialog;->access$100(Lcom/oneplus/gallery2/MediaDetailsDialog;)Landroid/app/Dialog;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 54
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaDetailsDialog$1;->this$0:Lcom/oneplus/gallery2/MediaDetailsDialog;

    const/4 v1, 0x0

    # setter for: Lcom/oneplus/gallery2/MediaDetailsDialog;->m_OnDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/MediaDetailsDialog;->access$002(Lcom/oneplus/gallery2/MediaDetailsDialog;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;

    .line 56
    :cond_0
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryDialogFragment;->dismissAllowingStateLoss()V

    .line 57
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaDetailsDialog$1;->this$0:Lcom/oneplus/gallery2/MediaDetailsDialog;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/MediaDetailsDialog$1;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BaseActivity;

    # setter for: Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Activity:Lcom/oneplus/base/BaseActivity;
    invoke-static {v1, v0}, Lcom/oneplus/gallery2/MediaDetailsDialog;->access$202(Lcom/oneplus/gallery2/MediaDetailsDialog;Lcom/oneplus/base/BaseActivity;)Lcom/oneplus/base/BaseActivity;

    .line 62
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaDetailsDialog$1;->this$0:Lcom/oneplus/gallery2/MediaDetailsDialog;

    iget-object v1, p0, Lcom/oneplus/gallery2/MediaDetailsDialog$1;->this$0:Lcom/oneplus/gallery2/MediaDetailsDialog;

    # getter for: Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Activity:Lcom/oneplus/base/BaseActivity;
    invoke-static {v1}, Lcom/oneplus/gallery2/MediaDetailsDialog;->access$200(Lcom/oneplus/gallery2/MediaDetailsDialog;)Lcom/oneplus/base/BaseActivity;

    move-result-object v1

    # invokes: Lcom/oneplus/gallery2/MediaDetailsDialog;->onPrepareDialog(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/MediaDetailsDialog;->access$300(Lcom/oneplus/gallery2/MediaDetailsDialog;Landroid/content/Context;)V

    .line 63
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaDetailsDialog$1;->this$0:Lcom/oneplus/gallery2/MediaDetailsDialog;

    # getter for: Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/oneplus/gallery2/MediaDetailsDialog;->access$100(Lcom/oneplus/gallery2/MediaDetailsDialog;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 68
    if-nez p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaDetailsDialog$1;->this$0:Lcom/oneplus/gallery2/MediaDetailsDialog;

    # getter for: Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/oneplus/gallery2/MediaDetailsDialog;->access$100(Lcom/oneplus/gallery2/MediaDetailsDialog;)Landroid/app/Dialog;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaDetailsDialog$1;->this$0:Lcom/oneplus/gallery2/MediaDetailsDialog;

    iget-object v1, p0, Lcom/oneplus/gallery2/MediaDetailsDialog$1;->this$0:Lcom/oneplus/gallery2/MediaDetailsDialog;

    # getter for: Lcom/oneplus/gallery2/MediaDetailsDialog;->m_MediaDetailsRetrievingHandle:Lcom/oneplus/base/Handle;
    invoke-static {v1}, Lcom/oneplus/gallery2/MediaDetailsDialog;->access$400(Lcom/oneplus/gallery2/MediaDetailsDialog;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    # setter for: Lcom/oneplus/gallery2/MediaDetailsDialog;->m_MediaDetailsRetrievingHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/MediaDetailsDialog;->access$402(Lcom/oneplus/gallery2/MediaDetailsDialog;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 73
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaDetailsDialog$1;->this$0:Lcom/oneplus/gallery2/MediaDetailsDialog;

    const/4 v1, 0x0

    # setter for: Lcom/oneplus/gallery2/MediaDetailsDialog;->m_Dialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/MediaDetailsDialog;->access$102(Lcom/oneplus/gallery2/MediaDetailsDialog;Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0
.end method
