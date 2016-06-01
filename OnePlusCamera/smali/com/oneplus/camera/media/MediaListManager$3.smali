.class final Lcom/oneplus/camera/media/MediaListManager$3;
.super Landroid/database/ContentObserver;
.source "MediaListManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/media/MediaListManager;->refreshMediaLists()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;

    .prologue
    .line 893
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 897
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/camera/media/MediaListManager$3;->onChange(ZLandroid/net/Uri;)V

    .line 898
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 903
    # invokes: Lcom/oneplus/camera/media/MediaListManager;->onMediaStoreContentChanged(Landroid/net/Uri;)V
    invoke-static {p2}, Lcom/oneplus/camera/media/MediaListManager;->access$700(Landroid/net/Uri;)V

    .line 904
    return-void
.end method
