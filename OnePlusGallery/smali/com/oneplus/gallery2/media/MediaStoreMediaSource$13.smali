.class Lcom/oneplus/gallery2/media/MediaStoreMediaSource$13;
.super Ljava/lang/Object;
.source "MediaStoreMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->syncMediaWithMediaStore(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;J)V
    .locals 0

    .prologue
    .line 1579
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$13;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iput-wide p2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$13;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$13;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iget-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$13;->val$id:J

    # invokes: Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->queryMediaStoreContent(J)V
    invoke-static {v0, v2, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$1600(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;J)V

    .line 1584
    return-void
.end method
