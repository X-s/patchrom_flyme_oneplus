.class final Lcom/oneplus/gallery2/media/MediaStoreMediaSource$QueryAllMediaStoreContentRunnable;
.super Ljava/lang/Object;
.source "MediaStoreMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryAllMediaStoreContentRunnable"
.end annotation


# instance fields
.field private final contentStartOffset:I

.field private final mode:I

.field final synthetic this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

.field private final token:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Ljava/lang/Object;II)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$QueryAllMediaStoreContentRunnable;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$QueryAllMediaStoreContentRunnable;->token:Ljava/lang/Object;

    .line 255
    iput p3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$QueryAllMediaStoreContentRunnable;->mode:I

    .line 256
    iput p4, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$QueryAllMediaStoreContentRunnable;->contentStartOffset:I

    .line 257
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 263
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$QueryAllMediaStoreContentRunnable;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$QueryAllMediaStoreContentRunnable;->token:Ljava/lang/Object;

    iget v2, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$QueryAllMediaStoreContentRunnable;->mode:I

    iget v3, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$QueryAllMediaStoreContentRunnable;->contentStartOffset:I

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$6(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Ljava/lang/Object;II)V

    .line 264
    return-void
.end method
