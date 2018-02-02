.class final Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;
.super Ljava/lang/Object;
.source "MediaStoreDirectoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DirectoryInfo"
.end annotation


# instance fields
.field public final defaultMediaSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery2/media/MediaType;",
            "Lcom/oneplus/gallery2/media/DirectoryMediaSet;",
            ">;"
        }
    .end annotation
.end field

.field public extraInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

.field public final id:J

.field public isReady:Z

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

.field public final mediaSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oneplus/gallery2/media/MediaType;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/DirectoryMediaSet;",
            ">;>;"
        }
    .end annotation
.end field

.field public path:Ljava/lang/String;

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
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->defaultMediaSets:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->media:Ljava/util/Set;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->mediaSets:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->recycledMedia:Ljava/util/Set;

    .line 81
    iput-wide p1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->id:J

    .line 82
    iput-object p3, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$DirectoryInfo;->path:Ljava/lang/String;

    .line 83
    return-void
.end method
