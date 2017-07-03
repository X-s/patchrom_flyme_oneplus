.class Lcom/oneplus/gallery2/OPGallery$11$1$1;
.super Lcom/oneplus/gallery2/media/AlbumMediaSet$RenameCallback;
.source "OPGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/OPGallery$11$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/oneplus/gallery2/OPGallery$11$1;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/OPGallery$11$1;)V
    .locals 0

    .prologue
    .line 1259
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGallery$11$1$1;->this$2:Lcom/oneplus/gallery2/OPGallery$11$1;

    invoke-direct {p0}, Lcom/oneplus/gallery2/media/AlbumMediaSet$RenameCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenameCompleted(Lcom/oneplus/gallery2/media/AlbumMediaSet;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "album"    # Lcom/oneplus/gallery2/media/AlbumMediaSet;
    .param p2, "success"    # Z
    .param p3, "oldName"    # Ljava/lang/String;
    .param p4, "newName"    # Ljava/lang/String;
    .param p5, "flags"    # I

    .prologue
    .line 1263
    if-eqz p2, :cond_1

    .line 1265
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGallery$11$1$1;->this$2:Lcom/oneplus/gallery2/OPGallery$11$1;

    iget-object v0, v0, Lcom/oneplus/gallery2/OPGallery$11$1;->this$1:Lcom/oneplus/gallery2/OPGallery$11;

    iget-object v0, v0, Lcom/oneplus/gallery2/OPGallery$11;->val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

    if-eqz v0, :cond_0

    .line 1266
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGallery$11$1$1;->this$2:Lcom/oneplus/gallery2/OPGallery$11$1;

    iget-object v0, v0, Lcom/oneplus/gallery2/OPGallery$11$1;->this$1:Lcom/oneplus/gallery2/OPGallery$11;

    iget-object v0, v0, Lcom/oneplus/gallery2/OPGallery$11;->val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGallery$11$1$1;->this$2:Lcom/oneplus/gallery2/OPGallery$11$1;

    iget-object v1, v1, Lcom/oneplus/gallery2/OPGallery$11$1;->this$1:Lcom/oneplus/gallery2/OPGallery$11;

    iget-object v1, v1, Lcom/oneplus/gallery2/OPGallery$11;->val$mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    invoke-virtual {v0, v1}, Lcom/oneplus/base/OperationCallbackHelper;->callOnCompleted(Ljava/lang/Object;)V

    .line 1274
    :cond_0
    :goto_0
    return-void

    .line 1270
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGallery$11$1$1;->this$2:Lcom/oneplus/gallery2/OPGallery$11$1;

    iget-object v0, v0, Lcom/oneplus/gallery2/OPGallery$11$1;->this$1:Lcom/oneplus/gallery2/OPGallery$11;

    iget-object v0, v0, Lcom/oneplus/gallery2/OPGallery$11;->this$0:Lcom/oneplus/gallery2/OPGallery;

    iget-object v0, v0, Lcom/oneplus/gallery2/OPGallery;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "renameMediaSet() - Fail to rename "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGallery$11$1$1;->this$2:Lcom/oneplus/gallery2/OPGallery$11$1;

    iget-object v0, v0, Lcom/oneplus/gallery2/OPGallery$11$1;->this$1:Lcom/oneplus/gallery2/OPGallery$11;

    iget-object v0, v0, Lcom/oneplus/gallery2/OPGallery$11;->val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

    if-eqz v0, :cond_0

    .line 1272
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGallery$11$1$1;->this$2:Lcom/oneplus/gallery2/OPGallery$11$1;

    iget-object v0, v0, Lcom/oneplus/gallery2/OPGallery$11$1;->this$1:Lcom/oneplus/gallery2/OPGallery$11;

    iget-object v0, v0, Lcom/oneplus/gallery2/OPGallery$11;->val$callbackHelper:Lcom/oneplus/base/OperationCallbackHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/base/OperationCallbackHelper;->callOnCanceled(Ljava/lang/Object;)V

    goto :goto_0
.end method
