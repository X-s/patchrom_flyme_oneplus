.class Lcom/oneplus/gallery/OPGalleryActivity$SnackbarHandle;
.super Lcom/oneplus/base/Handle;
.source "OPGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/OPGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SnackbarHandle"
.end annotation


# instance fields
.field public actionText:Ljava/lang/String;

.field public activity:Lcom/oneplus/gallery/OPGalleryActivity;

.field public listener:Landroid/view/View$OnClickListener;

.field public titleText:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/oneplus/gallery/OPGalleryActivity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "activity"    # Lcom/oneplus/gallery/OPGalleryActivity;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Snackbar Handle("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 402
    iput-object p3, p0, Lcom/oneplus/gallery/OPGalleryActivity$SnackbarHandle;->actionText:Ljava/lang/String;

    .line 403
    iput-object p1, p0, Lcom/oneplus/gallery/OPGalleryActivity$SnackbarHandle;->activity:Lcom/oneplus/gallery/OPGalleryActivity;

    .line 404
    iput-object p2, p0, Lcom/oneplus/gallery/OPGalleryActivity$SnackbarHandle;->titleText:Ljava/lang/String;

    .line 405
    iput-object p4, p0, Lcom/oneplus/gallery/OPGalleryActivity$SnackbarHandle;->listener:Landroid/view/View$OnClickListener;

    .line 406
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 411
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity$SnackbarHandle;->activity:Lcom/oneplus/gallery/OPGalleryActivity;

    if-nez v0, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity$SnackbarHandle;->activity:Lcom/oneplus/gallery/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery/OPGalleryActivity;->m_SnackbarHandles:Ljava/util/List;
    invoke-static {v0}, Lcom/oneplus/gallery/OPGalleryActivity;->access$2400(Lcom/oneplus/gallery/OPGalleryActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity$SnackbarHandle;->activity:Lcom/oneplus/gallery/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery/OPGalleryActivity;->access$2500(Lcom/oneplus/gallery/OPGalleryActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClose() - Close snackbar handle"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity$SnackbarHandle;->activity:Lcom/oneplus/gallery/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery/OPGalleryActivity;->m_SnackbarHandles:Ljava/util/List;
    invoke-static {v0}, Lcom/oneplus/gallery/OPGalleryActivity;->access$2400(Lcom/oneplus/gallery/OPGalleryActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 417
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity$SnackbarHandle;->activity:Lcom/oneplus/gallery/OPGalleryActivity;

    const/4 v1, 0x1

    # invokes: Lcom/oneplus/gallery/OPGalleryActivity;->updateSnackbarVisibility(Z)V
    invoke-static {v0, v1}, Lcom/oneplus/gallery/OPGalleryActivity;->access$2600(Lcom/oneplus/gallery/OPGalleryActivity;Z)V

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity$SnackbarHandle;->activity:Lcom/oneplus/gallery/OPGalleryActivity;

    goto :goto_0
.end method
