.class Lcom/oneplus/gallery/PhotoEditorFragment$12$1;
.super Ljava/lang/Object;
.source "PhotoEditorFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/PhotoEditorFragment$12;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/PhotoEditorFragment$12;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/PhotoEditorFragment$12;)V
    .locals 0

    .prologue
    .line 572
    iput-object p1, p0, Lcom/oneplus/gallery/PhotoEditorFragment$12$1;->this$1:Lcom/oneplus/gallery/PhotoEditorFragment$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 576
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment$12$1;->this$1:Lcom/oneplus/gallery/PhotoEditorFragment$12;

    invoke-virtual {v1}, Lcom/oneplus/gallery/PhotoEditorFragment$12;->dismissAllowingStateLoss()V

    .line 577
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment$12$1;->this$1:Lcom/oneplus/gallery/PhotoEditorFragment$12;

    invoke-virtual {v1}, Lcom/oneplus/gallery/PhotoEditorFragment$12;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v0

    .line 578
    .local v0, "activity":Lcom/oneplus/gallery/GalleryActivity;
    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {v0}, Lcom/oneplus/gallery/GalleryActivity;->finish()V

    .line 580
    :cond_0
    return-void
.end method
