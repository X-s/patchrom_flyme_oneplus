.class Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24$1;
.super Landroid/support/v4/media/MediaBrowserServiceCompat$Result;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24;->onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/media/MediaBrowserServiceCompat$Result",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24;

.field final synthetic val$resultWrapper:Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24;Ljava/lang/Object;Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24;
    .param p2, "$anonymous0"    # Ljava/lang/Object;
    .param p3, "val$resultWrapper"    # Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;

    .prologue
    .line 381
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24$1;->val$resultWrapper:Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;

    invoke-direct {p0, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public detach()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24$1;->val$resultWrapper:Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;->detach()V

    .line 397
    return-void
.end method

.method bridge synthetic onResultSent(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "list"    # Ljava/lang/Object;
    .param p2, "flags"    # I

    .prologue
    .line 383
    check-cast p1, Ljava/util/List;

    .end local p1    # "list":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24$1;->onResultSent(Ljava/util/List;I)V

    return-void
.end method

.method onResultSent(Ljava/util/List;I)V
    .locals 5
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 384
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    const/4 v3, 0x0

    .line 385
    .local v3, "parcelList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcel;>;"
    if-eqz p1, :cond_0

    .line 386
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "parcelList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcel;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v3, "parcelList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcel;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 388
    .local v0, "item":Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 389
    .local v2, "parcel":Landroid/os/Parcel;
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 390
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 393
    .end local v0    # "item":Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .end local v1    # "item$iterator":Ljava/util/Iterator;
    .end local v2    # "parcel":Landroid/os/Parcel;
    .end local v3    # "parcelList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcel;>;"
    :cond_0
    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi24$1;->val$resultWrapper:Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;

    invoke-virtual {v4, v3, p2}, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;->sendResult(Ljava/util/List;I)V

    .line 383
    return-void
.end method
