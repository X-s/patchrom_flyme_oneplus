.class final Lcom/oneplus/gallery2/media/TimeGroupedMediaList$MediaComparatorByTime;
.super Lcom/oneplus/gallery2/media/MediaComparator;
.source "TimeGroupedMediaList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/TimeGroupedMediaList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaComparatorByTime"
.end annotation


# instance fields
.field public owner:Lcom/oneplus/gallery2/media/TimeGroupedMediaList;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MediaComparator;-><init>(I)V

    .line 252
    return-void
.end method


# virtual methods
.method public compare(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media;)I
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$MediaComparatorByTime;->owner:Lcom/oneplus/gallery2/media/TimeGroupedMediaList;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;->compareMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/oneplus/gallery2/media/Media;

    check-cast p2, Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$MediaComparatorByTime;->compare(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media;)I

    move-result v0

    return v0
.end method
