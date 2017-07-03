.class Lcom/oneplus/gallery/MediaDetailsDialog$2$1;
.super Ljava/lang/Object;
.source "MediaDetailsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/MediaDetailsDialog$2;->onMediaDetailsRetrieved(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/base/Handle;Lcom/oneplus/gallery/media/MediaDetails;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/MediaDetailsDialog$2;

.field final synthetic val$details:Lcom/oneplus/gallery/media/MediaDetails;

.field final synthetic val$handle:Lcom/oneplus/base/Handle;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/MediaDetailsDialog$2;Lcom/oneplus/base/Handle;Lcom/oneplus/gallery/media/MediaDetails;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/oneplus/gallery/MediaDetailsDialog$2$1;->this$1:Lcom/oneplus/gallery/MediaDetailsDialog$2;

    iput-object p2, p0, Lcom/oneplus/gallery/MediaDetailsDialog$2$1;->val$handle:Lcom/oneplus/base/Handle;

    iput-object p3, p0, Lcom/oneplus/gallery/MediaDetailsDialog$2$1;->val$details:Lcom/oneplus/gallery/media/MediaDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog$2$1;->this$1:Lcom/oneplus/gallery/MediaDetailsDialog$2;

    iget-object v0, v0, Lcom/oneplus/gallery/MediaDetailsDialog$2;->this$0:Lcom/oneplus/gallery/MediaDetailsDialog;

    # getter for: Lcom/oneplus/gallery/MediaDetailsDialog;->m_MediaDetailsRetrievingHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/gallery/MediaDetailsDialog;->access$400(Lcom/oneplus/gallery/MediaDetailsDialog;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/MediaDetailsDialog$2$1;->val$handle:Lcom/oneplus/base/Handle;

    if-ne v0, v1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/oneplus/gallery/MediaDetailsDialog$2$1;->this$1:Lcom/oneplus/gallery/MediaDetailsDialog$2;

    iget-object v0, v0, Lcom/oneplus/gallery/MediaDetailsDialog$2;->this$0:Lcom/oneplus/gallery/MediaDetailsDialog;

    iget-object v1, p0, Lcom/oneplus/gallery/MediaDetailsDialog$2$1;->val$details:Lcom/oneplus/gallery/media/MediaDetails;

    # invokes: Lcom/oneplus/gallery/MediaDetailsDialog;->onMediaDetailsRetrieved(Lcom/oneplus/gallery/media/MediaDetails;)V
    invoke-static {v0, v1}, Lcom/oneplus/gallery/MediaDetailsDialog;->access$500(Lcom/oneplus/gallery/MediaDetailsDialog;Lcom/oneplus/gallery/media/MediaDetails;)V

    .line 241
    :cond_0
    return-void
.end method
