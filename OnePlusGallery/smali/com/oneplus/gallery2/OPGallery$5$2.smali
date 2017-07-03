.class Lcom/oneplus/gallery2/OPGallery$5$2;
.super Ljava/lang/Object;
.source "OPGallery.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/OPGallery$5;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery2/OPGallery$5;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/OPGallery$5;)V
    .locals 0

    .prologue
    .line 668
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGallery$5$2;->this$1:Lcom/oneplus/gallery2/OPGallery$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 672
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 673
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGallery$5$2;->this$1:Lcom/oneplus/gallery2/OPGallery$5;

    iget-object v0, v0, Lcom/oneplus/gallery2/OPGallery$5;->this$0:Lcom/oneplus/gallery2/OPGallery;

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGallery$5$2;->this$1:Lcom/oneplus/gallery2/OPGallery$5;

    iget-object v1, v1, Lcom/oneplus/gallery2/OPGallery$5;->val$mediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGallery$5$2;->this$1:Lcom/oneplus/gallery2/OPGallery$5;

    iget-object v2, v2, Lcom/oneplus/gallery2/OPGallery$5;->val$mediaList:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/gallery2/OPGallery$5$2;->this$1:Lcom/oneplus/gallery2/OPGallery$5;

    iget-object v3, v3, Lcom/oneplus/gallery2/OPGallery$5;->val$finalMediaType:Lcom/oneplus/gallery2/media/MediaType;

    iget-object v4, p0, Lcom/oneplus/gallery2/OPGallery$5$2;->this$1:Lcom/oneplus/gallery2/OPGallery$5;

    iget-object v4, v4, Lcom/oneplus/gallery2/OPGallery$5;->val$callback:Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;

    # invokes: Lcom/oneplus/gallery2/OPGallery;->deleteMedia(Lcom/oneplus/gallery2/media/MediaSet;Ljava/util/List;Lcom/oneplus/gallery2/media/MediaType;Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/gallery2/OPGallery;->access$700(Lcom/oneplus/gallery2/OPGallery;Lcom/oneplus/gallery2/media/MediaSet;Ljava/util/List;Lcom/oneplus/gallery2/media/MediaType;Lcom/oneplus/gallery2/Gallery$MediaDeletionCallback;)V

    .line 674
    return-void
.end method
