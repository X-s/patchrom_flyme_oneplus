.class Lcom/oneplus/gallery2/SnackBarHostActivity$SnackbarHandle;
.super Lcom/oneplus/base/Handle;
.source "SnackBarHostActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/SnackBarHostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SnackbarHandle"
.end annotation


# instance fields
.field public actionText:Ljava/lang/CharSequence;

.field public activity:Lcom/oneplus/gallery2/SnackBarHostActivity;

.field public listener:Landroid/view/View$OnClickListener;

.field public titleText:Ljava/lang/CharSequence;


# direct methods
.method protected constructor <init>(Lcom/oneplus/gallery2/SnackBarHostActivity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "activity"    # Lcom/oneplus/gallery2/SnackBarHostActivity;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "action"    # Ljava/lang/CharSequence;
    .param p4, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Snackbar Handle("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 58
    iput-object p3, p0, Lcom/oneplus/gallery2/SnackBarHostActivity$SnackbarHandle;->actionText:Ljava/lang/CharSequence;

    .line 59
    iput-object p1, p0, Lcom/oneplus/gallery2/SnackBarHostActivity$SnackbarHandle;->activity:Lcom/oneplus/gallery2/SnackBarHostActivity;

    .line 60
    iput-object p2, p0, Lcom/oneplus/gallery2/SnackBarHostActivity$SnackbarHandle;->titleText:Ljava/lang/CharSequence;

    .line 61
    iput-object p4, p0, Lcom/oneplus/gallery2/SnackBarHostActivity$SnackbarHandle;->listener:Landroid/view/View$OnClickListener;

    .line 62
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/oneplus/gallery2/SnackBarHostActivity$SnackbarHandle;->activity:Lcom/oneplus/gallery2/SnackBarHostActivity;

    if-nez v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/SnackBarHostActivity$SnackbarHandle;->activity:Lcom/oneplus/gallery2/SnackBarHostActivity;

    # getter for: Lcom/oneplus/gallery2/SnackBarHostActivity;->m_SnackbarHandles:Ljava/util/List;
    invoke-static {v0}, Lcom/oneplus/gallery2/SnackBarHostActivity;->access$000(Lcom/oneplus/gallery2/SnackBarHostActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/oneplus/gallery2/SnackBarHostActivity$SnackbarHandle;->activity:Lcom/oneplus/gallery2/SnackBarHostActivity;

    # getter for: Lcom/oneplus/gallery2/SnackBarHostActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery2/SnackBarHostActivity;->access$100(Lcom/oneplus/gallery2/SnackBarHostActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClose() - Close snackbar handle"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/oneplus/gallery2/SnackBarHostActivity$SnackbarHandle;->activity:Lcom/oneplus/gallery2/SnackBarHostActivity;

    # getter for: Lcom/oneplus/gallery2/SnackBarHostActivity;->m_SnackbarHandles:Ljava/util/List;
    invoke-static {v0}, Lcom/oneplus/gallery2/SnackBarHostActivity;->access$000(Lcom/oneplus/gallery2/SnackBarHostActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/oneplus/gallery2/SnackBarHostActivity$SnackbarHandle;->activity:Lcom/oneplus/gallery2/SnackBarHostActivity;

    const/4 v1, 0x1

    # invokes: Lcom/oneplus/gallery2/SnackBarHostActivity;->updateSnackbarVisibility(Z)V
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/SnackBarHostActivity;->access$200(Lcom/oneplus/gallery2/SnackBarHostActivity;Z)V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery2/SnackBarHostActivity$SnackbarHandle;->activity:Lcom/oneplus/gallery2/SnackBarHostActivity;

    goto :goto_0
.end method
