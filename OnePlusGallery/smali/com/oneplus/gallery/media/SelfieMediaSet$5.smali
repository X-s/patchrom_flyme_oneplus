.class Lcom/oneplus/gallery/media/SelfieMediaSet$5;
.super Ljava/lang/Object;
.source "SelfieMediaSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/SelfieMediaSet;->onMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/SelfieMediaSet;

.field final synthetic val$callback:Lcom/oneplus/base/OperationCallback;

.field final synthetic val$id:J

.field final synthetic val$mediaType:Lcom/oneplus/gallery/media/MediaType;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/SelfieMediaSet;JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/base/OperationCallback;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$5;->this$0:Lcom/oneplus/gallery/media/SelfieMediaSet;

    iput-wide p2, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$5;->val$id:J

    iput-object p4, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$5;->val$mediaType:Lcom/oneplus/gallery/media/MediaType;

    iput-object p5, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$5;->val$callback:Lcom/oneplus/base/OperationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 227
    iget-wide v2, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$5;->val$id:J

    invoke-static {v2, v3}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->getExtraMediaInfo(J)Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    move-result-object v0

    .line 228
    .local v0, "extraInfo":Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;->oneplusFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$5;->this$0:Lcom/oneplus/gallery/media/SelfieMediaSet;

    iget-wide v2, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$5;->val$id:J

    iget-object v4, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$5;->val$mediaType:Lcom/oneplus/gallery/media/MediaType;

    iget-object v5, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$5;->val$callback:Lcom/oneplus/base/OperationCallback;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/oneplus/gallery/media/SelfieMediaSet;->addToMediaIdTable(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/base/OperationCallback;)Z

    .line 231
    iget-object v1, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$5;->this$0:Lcom/oneplus/gallery/media/SelfieMediaSet;

    invoke-virtual {v1}, Lcom/oneplus/gallery/media/SelfieMediaSet;->updateCoverHashCodeDelayed()V

    .line 233
    :cond_0
    return-void
.end method
