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
    .param p1, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1231
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 1236
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/camera/media/MediaListManager$3;->onChange(ZLandroid/net/Uri;)V

    .line 1234
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1242
    invoke-static {p2}, Lcom/oneplus/camera/media/MediaListManager;->-wrap2(Landroid/net/Uri;)V

    .line 1240
    return-void
.end method
