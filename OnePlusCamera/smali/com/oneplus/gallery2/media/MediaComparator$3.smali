.class Lcom/oneplus/gallery2/media/MediaComparator$3;
.super Lcom/oneplus/gallery2/media/MediaComparator;
.source "MediaComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MediaComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MediaComparator;-><init>(I)V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media;)I
    .locals 2

    .prologue
    .line 100
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-interface {p2}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 102
    if-nez v0, :cond_1

    .line 113
    if-nez v1, :cond_3

    .line 117
    :cond_0
    sget-object v0, Lcom/oneplus/gallery2/media/MediaComparator$3;->ID_DESC:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/gallery2/media/MediaComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 104
    :cond_1
    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 111
    return v0

    .line 106
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 107
    if-eqz v0, :cond_0

    .line 108
    neg-int v0, v0

    return v0

    :cond_3
    const/4 v0, -0x1

    .line 114
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/oneplus/gallery2/media/Media;

    check-cast p2, Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaComparator$3;->compare(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media;)I

    move-result v0

    return v0
.end method
