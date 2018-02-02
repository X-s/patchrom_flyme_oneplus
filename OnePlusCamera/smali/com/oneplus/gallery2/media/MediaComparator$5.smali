.class Lcom/oneplus/gallery2/media/MediaComparator$5;
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
    .line 156
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/MediaComparator;-><init>(I)V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media;)I
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 162
    invoke-interface {p2}, Lcom/oneplus/gallery2/media/Media;->getTakenTime()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getTakenTime()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v2, 0x0

    .line 163
    cmp-long v2, v4, v2

    if-ltz v2, :cond_0

    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    .line 164
    return v6

    :cond_0
    move v2, v0

    .line 163
    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x1

    .line 165
    cmp-long v2, v4, v2

    if-gtz v2, :cond_2

    move v0, v1

    :cond_2
    if-nez v0, :cond_3

    .line 166
    return v1

    .line 169
    :cond_3
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-interface {p2}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 171
    if-nez v0, :cond_5

    .line 182
    if-nez v2, :cond_7

    .line 186
    :cond_4
    sget-object v0, Lcom/oneplus/gallery2/media/MediaComparator$5;->ID_DESC:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/gallery2/media/MediaComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 173
    :cond_5
    if-nez v2, :cond_6

    .line 180
    return v1

    .line 175
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 176
    if-eqz v0, :cond_4

    .line 177
    neg-int v0, v0

    return v0

    .line 183
    :cond_7
    return v6
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/oneplus/gallery2/media/Media;

    check-cast p2, Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/media/MediaComparator$5;->compare(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media;)I

    move-result v0

    return v0
.end method
