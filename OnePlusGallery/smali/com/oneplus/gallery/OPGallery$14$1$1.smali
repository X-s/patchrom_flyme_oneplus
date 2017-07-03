.class Lcom/oneplus/gallery/OPGallery$14$1$1;
.super Ljava/lang/Object;
.source "OPGallery.java"

# interfaces
.implements Lcom/oneplus/base/OperationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/OPGallery$14$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/OperationCallback",
        "<",
        "Ljava/lang/Object;",
        "Lcom/oneplus/gallery/media/MediaSet;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/oneplus/gallery/OPGallery$14$1;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/OPGallery$14$1;)V
    .locals 0

    .prologue
    .line 1278
    iput-object p1, p0, Lcom/oneplus/gallery/OPGallery$14$1$1;->this$2:Lcom/oneplus/gallery/OPGallery$14$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery$14$1$1;->this$2:Lcom/oneplus/gallery/OPGallery$14$1;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGallery$14$1;->this$1:Lcom/oneplus/gallery/OPGallery$14;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGallery$14;->val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

    if-eqz v0, :cond_0

    .line 1283
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery$14$1$1;->this$2:Lcom/oneplus/gallery/OPGallery$14$1;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGallery$14$1;->this$1:Lcom/oneplus/gallery/OPGallery$14;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGallery$14;->val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/base/OperationCallbackHelper;->callOnCanceled(Ljava/lang/Object;)V

    .line 1284
    :cond_0
    return-void
.end method

.method public onCompleted(Lcom/oneplus/gallery/media/MediaSet;)V
    .locals 1
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery$14$1$1;->this$2:Lcom/oneplus/gallery/OPGallery$14$1;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGallery$14$1;->this$1:Lcom/oneplus/gallery/OPGallery$14;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGallery$14;->val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

    if-eqz v0, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery$14$1$1;->this$2:Lcom/oneplus/gallery/OPGallery$14$1;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGallery$14$1;->this$1:Lcom/oneplus/gallery/OPGallery$14;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGallery$14;->val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/base/OperationCallbackHelper;->callOnCompleted(Ljava/lang/Object;)V

    .line 1291
    :cond_0
    return-void
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1278
    check-cast p1, Lcom/oneplus/gallery/media/MediaSet;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/OPGallery$14$1$1;->onCompleted(Lcom/oneplus/gallery/media/MediaSet;)V

    return-void
.end method

.method public onStarted(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery$14$1$1;->this$2:Lcom/oneplus/gallery/OPGallery$14$1;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGallery$14$1;->this$1:Lcom/oneplus/gallery/OPGallery$14;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGallery$14;->val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

    if-eqz v0, :cond_0

    .line 1297
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery$14$1$1;->this$2:Lcom/oneplus/gallery/OPGallery$14$1;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGallery$14$1;->this$1:Lcom/oneplus/gallery/OPGallery$14;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGallery$14;->val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/base/OperationCallbackHelper;->callOnStarted(Ljava/lang/Object;)V

    .line 1298
    :cond_0
    return-void
.end method
