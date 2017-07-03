.class Lcom/oneplus/gallery/MediaDetailsDialog$3;
.super Ljava/lang/Object;
.source "MediaDetailsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/MediaDetailsDialog;->onPrepareDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/MediaDetailsDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/MediaDetailsDialog;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/oneplus/gallery/MediaDetailsDialog$3;->this$0:Lcom/oneplus/gallery/MediaDetailsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog$3;->this$0:Lcom/oneplus/gallery/MediaDetailsDialog;

    # getter for: Lcom/oneplus/gallery/MediaDetailsDialog;->m_DialogFragment:Lcom/oneplus/gallery/GalleryDialogFragment;
    invoke-static {v0}, Lcom/oneplus/gallery/MediaDetailsDialog;->access$600(Lcom/oneplus/gallery/MediaDetailsDialog;)Lcom/oneplus/gallery/GalleryDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/gallery/GalleryDialogFragment;->dismissAllowingStateLoss()V

    .line 280
    return-void
.end method
