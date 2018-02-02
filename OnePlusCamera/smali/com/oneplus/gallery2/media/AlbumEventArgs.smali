.class public Lcom/oneplus/gallery2/media/AlbumEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "AlbumEventArgs.java"


# instance fields
.field private final m_AlbumId:J

.field private final m_MediaSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/AlbumMediaSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/AlbumMediaSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/oneplus/gallery2/media/AlbumEventArgs;->m_AlbumId:J

    .line 27
    if-nez p3, :cond_0

    sget-object p3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    iput-object p3, p0, Lcom/oneplus/gallery2/media/AlbumEventArgs;->m_MediaSets:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public final getAlbumId()J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/AlbumEventArgs;->m_AlbumId:J

    return-wide v0
.end method

.method public final getMediaSets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/AlbumMediaSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumEventArgs;->m_MediaSets:Ljava/util/List;

    return-object v0
.end method
