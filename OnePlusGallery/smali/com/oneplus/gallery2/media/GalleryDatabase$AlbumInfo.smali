.class public final Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;
.super Ljava/lang/Object;
.source "GalleryDatabase.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/GalleryDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlbumInfo"
.end annotation


# instance fields
.field public volatile albumId:J

.field public volatile creationTime:J

.field public volatile lastMediaAddedTime:J

.field public volatile lastModifiedTime:J

.field public volatile name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->albumId:J

    .line 230
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "albumId"    # J

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->albumId:J

    .line 233
    iput-wide p1, p0, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->albumId:J

    .line 234
    return-void
.end method


# virtual methods
.method public clone()Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;
    .locals 2

    .prologue
    .line 242
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 244
    :catch_0
    move-exception v0

    .line 246
    .local v0, "ex":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->clone()Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    move-result-object v0

    return-object v0
.end method
