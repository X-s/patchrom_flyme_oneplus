.class final Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;
.super Ljava/lang/Object;
.source "MediaManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaHolder"
.end annotation


# instance fields
.field public volatile media:Lcom/oneplus/gallery/media/Media;

.field public final mediaId:J

.field public final mediaType:Lcom/oneplus/gallery/media/MediaType;


# direct methods
.method public constructor <init>(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;)V
    .locals 1
    .param p1, "mediaId"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    iput-wide p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;->mediaId:J

    .line 521
    iput-object p3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;->mediaType:Lcom/oneplus/gallery/media/MediaType;

    .line 522
    iput-object p4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaHolder;->media:Lcom/oneplus/gallery/media/Media;

    .line 523
    return-void
.end method
