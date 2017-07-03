.class final Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;
.super Ljava/lang/Object;
.source "MediaManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaChangeInfo"
.end annotation


# instance fields
.field public final flags:I

.field public final id:J

.field public final media:Lcom/oneplus/gallery/media/Media;

.field public final mediaType:Lcom/oneplus/gallery/media/MediaType;

.field public final what:I


# direct methods
.method public constructor <init>(IJLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "id"    # J
    .param p4, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p5, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p6, "flags"    # I

    .prologue
    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    iput p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;->what:I

    .line 490
    iput-wide p2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;->id:J

    .line 491
    iput-object p4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;->mediaType:Lcom/oneplus/gallery/media/MediaType;

    .line 492
    iput-object p5, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;->media:Lcom/oneplus/gallery/media/Media;

    .line 493
    iput p6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;->flags:I

    .line 494
    return-void
.end method
