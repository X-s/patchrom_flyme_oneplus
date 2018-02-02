.class public Lcom/oneplus/gallery2/media/DayGroupedMediaList$DaySeparatorMedia;
.super Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;
.source "DayGroupedMediaList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/DayGroupedMediaList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DaySeparatorMedia"
.end annotation


# instance fields
.field private final m_Id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/MediaSource;JZ)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;-><init>(Lcom/oneplus/gallery2/media/MediaSource;JZ)V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DayGroupedMediaList.DaySeparatorMedia/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/DayGroupedMediaList$DaySeparatorMedia;->m_Id:Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/DayGroupedMediaList$DaySeparatorMedia;->updateTitle()V

    .line 36
    return-void
.end method

.method private updateTitle()V
    .locals 6

    .prologue
    .line 77
    sget-object v1, Lcom/oneplus/gallery2/media/DayGroupedMediaList$DaySeparatorMedia;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v2

    sget-object v0, Lcom/oneplus/gallery2/media/DayGroupedMediaList$DaySeparatorMedia;->PROP_TIME:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/DayGroupedMediaList$DaySeparatorMedia;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v0, 0x4

    invoke-static {v2, v4, v5, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/DayGroupedMediaList$DaySeparatorMedia;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 78
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/oneplus/gallery2/media/BaseDecorationMedia;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/DayGroupedMediaList$DaySeparatorMedia;->clone()Lcom/oneplus/gallery2/media/BaseSeparatorMedia;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oneplus/gallery2/media/BaseSeparatorMedia;
    .locals 6

    .prologue
    .line 42
    new-instance v1, Lcom/oneplus/gallery2/media/DayGroupedMediaList$DaySeparatorMedia;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/DayGroupedMediaList$DaySeparatorMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v2

    sget-object v0, Lcom/oneplus/gallery2/media/DayGroupedMediaList$DaySeparatorMedia;->PROP_TIME:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/DayGroupedMediaList$DaySeparatorMedia;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/DayGroupedMediaList$DaySeparatorMedia;->getAddressClassifier()Lcom/oneplus/gallery2/location/AddressClassifier;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, v2, v4, v5, v0}, Lcom/oneplus/gallery2/media/DayGroupedMediaList$DaySeparatorMedia;-><init>(Lcom/oneplus/gallery2/media/MediaSource;JZ)V

    return-object v1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/oneplus/gallery2/media/DecorationMedia;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/DayGroupedMediaList$DaySeparatorMedia;->clone()Lcom/oneplus/gallery2/media/BaseSeparatorMedia;

    move-result-object v0

    return-object v0
.end method

.method protected getExpectedLocationType()Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;->LOCALITY:Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oneplus/gallery2/media/DayGroupedMediaList$DaySeparatorMedia;->m_Id:Ljava/lang/String;

    return-object v0
.end method

.method protected onLocaleChanged()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->onLocaleChanged()V

    .line 64
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/DayGroupedMediaList$DaySeparatorMedia;->updateTitle()V

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/oneplus/gallery2/media/DayGroupedMediaList$DaySeparatorMedia;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/media/DayGroupedMediaList$DaySeparatorMedia;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
