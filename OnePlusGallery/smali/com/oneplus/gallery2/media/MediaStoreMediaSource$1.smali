.class Lcom/oneplus/gallery2/media/MediaStoreMediaSource$1;
.super Ljava/lang/Object;
.source "MediaStoreMediaSource.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$1;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Landroid/net/Uri;)V
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$1;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    # invokes: Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->onMediaStoreContentChanged(Landroid/net/Uri;)V
    invoke-static {v0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$000(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Landroid/net/Uri;)V

    .line 112
    return-void
.end method
