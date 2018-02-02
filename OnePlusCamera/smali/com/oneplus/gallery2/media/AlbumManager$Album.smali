.class final Lcom/oneplus/gallery2/media/AlbumManager$Album;
.super Ljava/lang/Object;
.source "AlbumManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/AlbumManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Album"
.end annotation


# instance fields
.field public final defaultMediaSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery2/media/MediaType;",
            "Lcom/oneplus/gallery2/media/AlbumMediaSet;",
            ">;"
        }
    .end annotation
.end field

.field public final id:J

.field public final info:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

.field public final media:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation
.end field

.field public final recycledMedia:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;)V
    .locals 2

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->defaultMediaSets:Ljava/util/Map;

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->media:Ljava/util/Set;

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->recycledMedia:Ljava/util/Set;

    .line 103
    iget-wide v0, p1, Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;->albumId:J

    iput-wide v0, p0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->id:J

    .line 104
    iput-object p1, p0, Lcom/oneplus/gallery2/media/AlbumManager$Album;->info:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    .line 105
    return-void
.end method
