.class final Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback$1;
.super Ljava/lang/Object;
.source "MediaSource.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaObtained(Lcom/oneplus/gallery2/media/MediaSource;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 0
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaSource;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "mediaId"    # Ljava/lang/String;
    .param p4, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 61
    return-void
.end method
