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
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$1;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$1;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-static {v0, p1}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$0(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Landroid/net/Uri;)V

    .line 120
    return-void
.end method
