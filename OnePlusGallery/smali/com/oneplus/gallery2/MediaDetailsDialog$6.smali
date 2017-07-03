.class Lcom/oneplus/gallery2/MediaDetailsDialog$6;
.super Ljava/lang/Object;
.source "MediaDetailsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/MediaDetailsDialog;->onPrepareDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/MediaDetailsDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/MediaDetailsDialog;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaDetailsDialog$6;->this$0:Lcom/oneplus/gallery2/MediaDetailsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 366
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaDetailsDialog$6;->this$0:Lcom/oneplus/gallery2/MediaDetailsDialog;

    # getter for: Lcom/oneplus/gallery2/MediaDetailsDialog;->m_DialogFragment:Lcom/oneplus/gallery2/GalleryDialogFragment;
    invoke-static {v0}, Lcom/oneplus/gallery2/MediaDetailsDialog;->access$1000(Lcom/oneplus/gallery2/MediaDetailsDialog;)Lcom/oneplus/gallery2/GalleryDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GalleryDialogFragment;->dismissAllowingStateLoss()V

    .line 367
    return-void
.end method
