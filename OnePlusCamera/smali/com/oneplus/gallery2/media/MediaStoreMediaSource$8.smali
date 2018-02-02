.class Lcom/oneplus/gallery2/media/MediaStoreMediaSource$8;
.super Ljava/lang/Object;
.source "MediaStoreMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->deleteMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

.field private final synthetic val$handle:Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$8;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$8;->val$handle:Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$8;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$8;->val$handle:Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$9(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaStoreMediaSource$MediaDeletionHandle;)V

    .line 459
    return-void
.end method
