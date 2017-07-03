.class Lcom/oneplus/gallery/OPGallery$8$2;
.super Ljava/lang/Object;
.source "OPGallery.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/OPGallery$8;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/OPGallery$8;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/OPGallery$8;)V
    .locals 0

    .prologue
    .line 706
    iput-object p1, p0, Lcom/oneplus/gallery/OPGallery$8$2;->this$1:Lcom/oneplus/gallery/OPGallery$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 710
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 711
    iget-object v0, p0, Lcom/oneplus/gallery/OPGallery$8$2;->this$1:Lcom/oneplus/gallery/OPGallery$8;

    iget-object v0, v0, Lcom/oneplus/gallery/OPGallery$8;->this$0:Lcom/oneplus/gallery/OPGallery;

    iget-object v1, p0, Lcom/oneplus/gallery/OPGallery$8$2;->this$1:Lcom/oneplus/gallery/OPGallery$8;

    iget-object v1, v1, Lcom/oneplus/gallery/OPGallery$8;->val$mediaSet:Lcom/oneplus/gallery/media/MediaSet;

    iget-object v2, p0, Lcom/oneplus/gallery/OPGallery$8$2;->this$1:Lcom/oneplus/gallery/OPGallery$8;

    iget-object v2, v2, Lcom/oneplus/gallery/OPGallery$8;->val$mediaList:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/gallery/OPGallery$8$2;->this$1:Lcom/oneplus/gallery/OPGallery$8;

    iget-object v3, v3, Lcom/oneplus/gallery/OPGallery$8;->val$finalMediaType:Lcom/oneplus/gallery/media/MediaType;

    iget-object v4, p0, Lcom/oneplus/gallery/OPGallery$8$2;->this$1:Lcom/oneplus/gallery/OPGallery$8;

    iget-object v4, v4, Lcom/oneplus/gallery/OPGallery$8;->val$callback:Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;

    # invokes: Lcom/oneplus/gallery/OPGallery;->deleteMedia(Lcom/oneplus/gallery/media/MediaSet;Ljava/util/List;Lcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/gallery/OPGallery;->access$700(Lcom/oneplus/gallery/OPGallery;Lcom/oneplus/gallery/media/MediaSet;Ljava/util/List;Lcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/Gallery$MediaDeletionCallback;)V

    .line 712
    return-void
.end method
