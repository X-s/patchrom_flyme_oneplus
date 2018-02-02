.class public abstract Lcom/oneplus/gallery2/media/YearGroupedMediaList;
.super Lcom/oneplus/gallery2/media/TimeGroupedMediaList;
.source "YearGroupedMediaList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/YearGroupedMediaList$YearSeparatorMedia;
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/oneplus/gallery2/media/MediaList;Z)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;-><init>(Lcom/oneplus/gallery2/media/MediaList;Z)V

    .line 94
    return-void
.end method

.method protected constructor <init>(Lcom/oneplus/gallery2/media/YearGroupedMediaList;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList;-><init>(Lcom/oneplus/gallery2/media/TimeGroupedMediaList;)V

    .line 104
    return-void
.end method


# virtual methods
.method protected getSeparatorTime(Lcom/oneplus/gallery2/media/Media;J)J
    .locals 4

    .prologue
    const/16 v3, 0x3b

    const/4 v2, 0x6

    .line 110
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/YearGroupedMediaList;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 111
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 112
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    const/16 v2, 0x17

    .line 113
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 114
    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 115
    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    const/16 v2, 0x3e7

    .line 116
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 117
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method
