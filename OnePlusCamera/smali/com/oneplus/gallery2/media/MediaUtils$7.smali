.class Lcom/oneplus/gallery2/media/MediaUtils$7;
.super Ljava/lang/Object;
.source "MediaUtils.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/PrepareSharingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/MediaUtils;->prepareSharing(Ljava/util/Collection;Lcom/oneplus/gallery2/media/PrepareMultiSharingCallback;I)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback:Lcom/oneplus/gallery2/media/PrepareMultiSharingCallback;

.field private final synthetic val$counter:Lcom/oneplus/base/Ref;

.field private final synthetic val$handle:Lcom/oneplus/base/Handle;

.field private final synthetic val$media:Ljava/util/Collection;

.field private final synthetic val$resultMedia:Ljava/util/List;

.field private final synthetic val$resultMimeType:Ljava/util/List;

.field private final synthetic val$resultUris:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/oneplus/base/Ref;Ljava/util/Collection;Lcom/oneplus/gallery2/media/PrepareMultiSharingCallback;Lcom/oneplus/base/Handle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaUtils$7;->val$resultMedia:Ljava/util/List;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/MediaUtils$7;->val$resultUris:Ljava/util/List;

    iput-object p3, p0, Lcom/oneplus/gallery2/media/MediaUtils$7;->val$resultMimeType:Ljava/util/List;

    iput-object p4, p0, Lcom/oneplus/gallery2/media/MediaUtils$7;->val$counter:Lcom/oneplus/base/Ref;

    iput-object p5, p0, Lcom/oneplus/gallery2/media/MediaUtils$7;->val$media:Ljava/util/Collection;

    iput-object p6, p0, Lcom/oneplus/gallery2/media/MediaUtils$7;->val$callback:Lcom/oneplus/gallery2/media/PrepareMultiSharingCallback;

    iput-object p7, p0, Lcom/oneplus/gallery2/media/MediaUtils$7;->val$handle:Lcom/oneplus/base/Handle;

    .line 723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lcom/oneplus/gallery2/media/Media;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/PrepareSharingResult;)V
    .locals 4

    .prologue
    .line 729
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$7;->val$resultMedia:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$7;->val$resultUris:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$7;->val$resultMimeType:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 732
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaUtils$7;->val$counter:Lcom/oneplus/base/Ref;

    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$7;->val$counter:Lcom/oneplus/base/Ref;

    invoke-interface {v0}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 735
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$7;->val$counter:Lcom/oneplus/base/Ref;

    invoke-interface {v0}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaUtils$7;->val$media:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$7;->val$callback:Lcom/oneplus/gallery2/media/PrepareMultiSharingCallback;

    if-nez v0, :cond_2

    .line 739
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$7;->val$handle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 741
    :goto_1
    return-void

    .line 735
    :cond_1
    sget-object v0, Lcom/oneplus/gallery2/media/PrepareSharingResult;->SUCCESS:Lcom/oneplus/gallery2/media/PrepareSharingResult;

    if-ne p4, v0, :cond_0

    goto :goto_1

    .line 738
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$7;->val$callback:Lcom/oneplus/gallery2/media/PrepareMultiSharingCallback;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaUtils$7;->val$resultMedia:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaUtils$7;->val$resultUris:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaUtils$7;->val$resultMimeType:Ljava/util/List;

    invoke-interface {v0, v1, v2, v3, p4}, Lcom/oneplus/gallery2/media/PrepareMultiSharingCallback;->onPrepared(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/oneplus/gallery2/media/PrepareSharingResult;)V

    goto :goto_0
.end method
