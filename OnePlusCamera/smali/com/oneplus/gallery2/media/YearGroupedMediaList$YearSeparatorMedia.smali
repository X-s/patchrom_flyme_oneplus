.class public Lcom/oneplus/gallery2/media/YearGroupedMediaList$YearSeparatorMedia;
.super Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;
.source "YearGroupedMediaList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/YearGroupedMediaList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YearSeparatorMedia"
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field private final m_Id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyy"

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/oneplus/gallery2/media/YearGroupedMediaList$YearSeparatorMedia;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/gallery2/media/MediaSource;JZ)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;-><init>(Lcom/oneplus/gallery2/media/MediaSource;JZ)V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "YearGroupedMediaList.YearSeparatorMedia/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/YearGroupedMediaList$YearSeparatorMedia;->m_Id:Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/YearGroupedMediaList$YearSeparatorMedia;->updateTitle()V

    .line 40
    return-void
.end method

.method private updateTitle()V
    .locals 6

    .prologue
    .line 81
    sget-object v1, Lcom/oneplus/gallery2/media/YearGroupedMediaList$YearSeparatorMedia;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/gallery2/media/YearGroupedMediaList$YearSeparatorMedia;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    sget-object v0, Lcom/oneplus/gallery2/media/YearGroupedMediaList$YearSeparatorMedia;->PROP_TIME:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/YearGroupedMediaList$YearSeparatorMedia;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery2/media/YearGroupedMediaList$YearSeparatorMedia;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 82
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/oneplus/gallery2/media/BaseDecorationMedia;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/YearGroupedMediaList$YearSeparatorMedia;->clone()Lcom/oneplus/gallery2/media/BaseSeparatorMedia;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/oneplus/gallery2/media/BaseSeparatorMedia;
    .locals 6

    .prologue
    .line 46
    new-instance v1, Lcom/oneplus/gallery2/media/YearGroupedMediaList$YearSeparatorMedia;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/YearGroupedMediaList$YearSeparatorMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v2

    sget-object v0, Lcom/oneplus/gallery2/media/YearGroupedMediaList$YearSeparatorMedia;->PROP_TIME:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/YearGroupedMediaList$YearSeparatorMedia;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/YearGroupedMediaList$YearSeparatorMedia;->getAddressClassifier()Lcom/oneplus/gallery2/location/AddressClassifier;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, v2, v4, v5, v0}, Lcom/oneplus/gallery2/media/YearGroupedMediaList$YearSeparatorMedia;-><init>(Lcom/oneplus/gallery2/media/MediaSource;JZ)V

    return-object v1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/oneplus/gallery2/media/DecorationMedia;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/YearGroupedMediaList$YearSeparatorMedia;->clone()Lcom/oneplus/gallery2/media/BaseSeparatorMedia;

    move-result-object v0

    return-object v0
.end method

.method protected getExpectedLocationType()Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;->ADMIN_AREA:Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oneplus/gallery2/media/YearGroupedMediaList$YearSeparatorMedia;->m_Id:Ljava/lang/String;

    return-object v0
.end method

.method protected onLocaleChanged()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->onLocaleChanged()V

    .line 68
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/YearGroupedMediaList$YearSeparatorMedia;->updateTitle()V

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/oneplus/gallery2/media/YearGroupedMediaList$YearSeparatorMedia;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/media/YearGroupedMediaList$YearSeparatorMedia;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

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
