.class Lcom/oneplus/gallery2/media/MediaStoreMediaSource$17;
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

.field private final synthetic val$id:J


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$17;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iput-wide p2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$17;->val$id:J

    .line 1919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$17;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iget-wide v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$17;->val$id:J

    invoke-static {v0, v2, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$16(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;J)V

    .line 1925
    return-void
.end method
