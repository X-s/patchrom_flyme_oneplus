.class final Lcom/oneplus/gallery/ui/ProcessingDialogImpl$DialogHandle;
.super Lcom/oneplus/base/Handle;
.source "ProcessingDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/ui/ProcessingDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DialogHandle"
.end annotation


# instance fields
.field public final dialog:Landroid/app/Dialog;

.field public final dialogFragment:Lcom/oneplus/gallery/GalleryDialogFragment;

.field public final dialogFragmentTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/gallery/ui/ProcessingDialogImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/ui/ProcessingDialogImpl;Landroid/app/Dialog;)V
    .locals 2
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/oneplus/gallery/ui/ProcessingDialogImpl$DialogHandle;->this$0:Lcom/oneplus/gallery/ui/ProcessingDialogImpl;

    .line 45
    const-string v0, "ProcessingDialog"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 33
    new-instance v0, Lcom/oneplus/gallery/ui/ProcessingDialogImpl$DialogHandle$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/ui/ProcessingDialogImpl$DialogHandle$1;-><init>(Lcom/oneplus/gallery/ui/ProcessingDialogImpl$DialogHandle;)V

    iput-object v0, p0, Lcom/oneplus/gallery/ui/ProcessingDialogImpl$DialogHandle;->dialogFragment:Lcom/oneplus/gallery/GalleryDialogFragment;

    .line 46
    iput-object p2, p0, Lcom/oneplus/gallery/ui/ProcessingDialogImpl$DialogHandle;->dialog:Landroid/app/Dialog;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProcessingDialog#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/ui/ProcessingDialogImpl$DialogHandle;->dialogFragmentTag:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oneplus/gallery/ui/ProcessingDialogImpl$DialogHandle;->this$0:Lcom/oneplus/gallery/ui/ProcessingDialogImpl;

    # invokes: Lcom/oneplus/gallery/ui/ProcessingDialogImpl;->dismissProcessingDialog(Lcom/oneplus/gallery/ui/ProcessingDialogImpl$DialogHandle;)V
    invoke-static {v0, p0}, Lcom/oneplus/gallery/ui/ProcessingDialogImpl;->access$000(Lcom/oneplus/gallery/ui/ProcessingDialogImpl;Lcom/oneplus/gallery/ui/ProcessingDialogImpl$DialogHandle;)V

    .line 55
    return-void
.end method
