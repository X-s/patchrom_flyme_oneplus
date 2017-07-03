.class Lcom/oneplus/gallery/OPGallery$7$2;
.super Ljava/lang/Object;
.source "OPGallery.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/OPGallery$7;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/OPGallery$7;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/OPGallery$7;)V
    .locals 0

    .prologue
    .line 585
    iput-object p1, p0, Lcom/oneplus/gallery/OPGallery$7$2;->this$1:Lcom/oneplus/gallery/OPGallery$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 589
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 590
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery$7$2;->this$1:Lcom/oneplus/gallery/OPGallery$7;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGallery$7;->val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery$7$2;->this$1:Lcom/oneplus/gallery/OPGallery$7;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGallery$7;->val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/base/OperationCallbackHelper;->callOnCanceled(Ljava/lang/Object;)V

    .line 592
    :cond_0
    return-void
.end method
