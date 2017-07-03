.class Lcom/oneplus/gallery2/ui/ProcessingDialogImpl$DialogHandle$1;
.super Lcom/oneplus/gallery2/GalleryDialogFragment;
.source "ProcessingDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/ui/ProcessingDialogImpl$DialogHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery2/ui/ProcessingDialogImpl$DialogHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/ui/ProcessingDialogImpl$DialogHandle;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/oneplus/gallery2/ui/ProcessingDialogImpl$DialogHandle$1;->this$1:Lcom/oneplus/gallery2/ui/ProcessingDialogImpl$DialogHandle;

    invoke-direct {p0}, Lcom/oneplus/gallery2/GalleryDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oneplus/gallery2/ui/ProcessingDialogImpl$DialogHandle$1;->this$1:Lcom/oneplus/gallery2/ui/ProcessingDialogImpl$DialogHandle;

    iget-object v0, v0, Lcom/oneplus/gallery2/ui/ProcessingDialogImpl$DialogHandle;->dialog:Landroid/app/Dialog;

    return-object v0
.end method
