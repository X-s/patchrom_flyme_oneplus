.class Lcom/oneplus/gallery/OPGallery$11$2;
.super Ljava/lang/Object;
.source "OPGallery.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/OPGallery$11;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/OPGallery$11;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/OPGallery$11;)V
    .locals 0

    .prologue
    .line 937
    iput-object p1, p0, Lcom/oneplus/gallery/OPGallery$11$2;->this$1:Lcom/oneplus/gallery/OPGallery$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 941
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 942
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery$11$2;->this$1:Lcom/oneplus/gallery/OPGallery$11;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGallery$11;->this$0:Lcom/oneplus/gallery/OPGallery;

    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery$11$2;->this$1:Lcom/oneplus/gallery/OPGallery$11;

    iget-object v1, v1, Lcom/oneplus/gallery/OPGallery$11;->val$mediaSetList:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/gallery/OPGallery$11$2;->this$1:Lcom/oneplus/gallery/OPGallery$11;

    iget-object v2, v2, Lcom/oneplus/gallery/OPGallery$11;->val$callback:Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;

    # invokes: Lcom/oneplus/gallery/OPGallery;->deleteMediaSet(Ljava/util/List;Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;)V
    invoke-static {v0, v1, v2}, Lcom/oneplus/gallery/OPGallery;->access$900(Lcom/oneplus/gallery/OPGallery;Ljava/util/List;Lcom/oneplus/gallery/Gallery$MediaSetDeletionCallback;)V

    .line 943
    return-void
.end method
