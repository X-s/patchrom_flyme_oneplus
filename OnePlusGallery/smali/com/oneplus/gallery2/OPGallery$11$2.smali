.class Lcom/oneplus/gallery2/OPGallery$11$2;
.super Ljava/lang/Object;
.source "OPGallery.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/OPGallery$11;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery2/OPGallery$11;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/OPGallery$11;)V
    .locals 0

    .prologue
    .line 1285
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGallery$11$2;->this$1:Lcom/oneplus/gallery2/OPGallery$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1289
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1290
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGallery$11$2;->this$1:Lcom/oneplus/gallery2/OPGallery$11;

    iget-object v0, v0, Lcom/oneplus/gallery2/OPGallery$11;->val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

    if-eqz v0, :cond_0

    .line 1291
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGallery$11$2;->this$1:Lcom/oneplus/gallery2/OPGallery$11;

    iget-object v0, v0, Lcom/oneplus/gallery2/OPGallery$11;->val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/base/OperationCallbackHelper;->callOnCanceled(Ljava/lang/Object;)V

    .line 1292
    :cond_0
    return-void
.end method
