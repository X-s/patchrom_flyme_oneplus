.class public abstract Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;
.super Lcom/oneplus/gallery2/media/BaseSeparatorMedia;
.source "TimeGroupedMediaList.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/TimeSeparatorMedia;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/TimeGroupedMediaList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SeparatorMedia"
.end annotation


# static fields
.field private static final DELAY_UPDATE_SUMMARY:I = 0x1f4


# instance fields
.field groupedMediaCount:I

.field private final m_AddressClassifier:Lcom/oneplus/gallery2/location/AddressClassifier;

.field private m_IsSummaryUpdateScheduled:Z

.field private final m_Time:Ljava/lang/Long;

.field private final m_UpdateSummaryRunnable:Ljava/lang/Runnable;

.field owner:Lcom/oneplus/gallery2/media/TimeGroupedMediaList;


# direct methods
.method protected constructor <init>(Lcom/oneplus/gallery2/media/MediaSource;JZ)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/BaseSeparatorMedia;-><init>(Lcom/oneplus/gallery2/media/MediaSource;)V

    .line 89
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->m_Time:Ljava/lang/Long;

    .line 90
    if-nez p4, :cond_0

    .line 96
    iput-object v1, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->m_AddressClassifier:Lcom/oneplus/gallery2/location/AddressClassifier;

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->m_AddressClassifier:Lcom/oneplus/gallery2/location/AddressClassifier;

    if-nez v0, :cond_2

    .line 122
    iput-object v1, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->m_UpdateSummaryRunnable:Ljava/lang/Runnable;

    .line 123
    :goto_1
    return-void

    .line 92
    :cond_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    const-class v2, Lcom/oneplus/gallery2/location/LocationManager;

    invoke-virtual {v0, v2}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/location/LocationManager;

    .line 93
    if-nez v0, :cond_1

    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->m_AddressClassifier:Lcom/oneplus/gallery2/location/AddressClassifier;

    goto :goto_0

    :cond_1
    invoke-interface {v0, v3}, Lcom/oneplus/gallery2/location/LocationManager;->createAddressClassifier(I)Lcom/oneplus/gallery2/location/AddressClassifier;

    move-result-object v0

    goto :goto_2

    .line 99
    :cond_2
    new-instance v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia$1;-><init>(Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->m_UpdateSummaryRunnable:Ljava/lang/Runnable;

    .line 108
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->m_AddressClassifier:Lcom/oneplus/gallery2/location/AddressClassifier;

    sget-object v1, Lcom/oneplus/gallery2/location/AddressClassifier;->EVENT_UPDATED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia$2;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia$2;-><init>(Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/location/AddressClassifier;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;Z)V
    .locals 0

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->m_IsSummaryUpdateScheduled:Z

    return-void
.end method

.method static synthetic access$1(Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;)V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->updateSummary()V

    return-void
.end method

.method static synthetic access$2(Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;)Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->m_IsSummaryUpdateScheduled:Z

    return v0
.end method

.method static synthetic access$3(Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->m_UpdateSummaryRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private updateSummary()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 220
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->m_AddressClassifier:Lcom/oneplus/gallery2/location/AddressClassifier;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->getExpectedLocationType()Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Lcom/oneplus/gallery2/location/AddressClassifier;->getLocationNameList(Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;I)Ljava/util/List;

    move-result-object v3

    .line 221
    if-nez v3, :cond_1

    .line 237
    :cond_0
    sget-object v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->PROP_SUMMARY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 238
    :goto_0
    return-void

    .line 221
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "address_comma"

    const-string/jumbo v2, "string"

    const-string/jumbo v4, "com.oneplus.gallery"

    .line 224
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 225
    if-gtz v1, :cond_2

    const-string/jumbo v0, ", "

    move-object v1, v0

    .line 226
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 227
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    move v2, v0

    :goto_2
    if-ge v2, v5, :cond_3

    .line 229
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v6, 0x100

    if-gt v0, v6, :cond_3

    .line 227
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 225
    :cond_2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 234
    :cond_3
    sget-object v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->PROP_SUMMARY:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v4}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    .prologue
    .line 130
    sget-object v0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->PROP_TIME:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v0, :cond_0

    .line 132
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/media/BaseSeparatorMedia;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->m_Time:Ljava/lang/Long;

    return-object v0
.end method

.method public getAddressClassifier()Lcom/oneplus/gallery2/location/AddressClassifier;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->m_AddressClassifier:Lcom/oneplus/gallery2/location/AddressClassifier;

    return-object v0
.end method

.method protected getExpectedLocationType()Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;->LOCALITY:Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

    return-object v0
.end method

.method public getGroupedMediaCount()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->groupedMediaCount:I

    return v0
.end method

.method protected getMediaList()Lcom/oneplus/gallery2/media/TimeGroupedMediaList;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->owner:Lcom/oneplus/gallery2/media/TimeGroupedMediaList;

    return-object v0
.end method

.method protected onLocaleChanged()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method protected onMediaAddedToGroup(Lcom/oneplus/gallery2/media/Media;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 174
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->m_IsSummaryUpdateScheduled:Z

    if-eqz v0, :cond_0

    .line 179
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->m_AddressClassifier:Lcom/oneplus/gallery2/location/AddressClassifier;

    if-nez v0, :cond_1

    .line 181
    :goto_1
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->m_IsSummaryUpdateScheduled:Z

    .line 177
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->m_UpdateSummaryRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->post(Landroid/os/Handler;Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->m_AddressClassifier:Lcom/oneplus/gallery2/location/AddressClassifier;

    invoke-interface {v0, p1, v4}, Lcom/oneplus/gallery2/location/AddressClassifier;->addMedia(Lcom/oneplus/gallery2/media/Media;I)Z

    goto :goto_1
.end method

.method protected onMediaRemovedFromGroup(Lcom/oneplus/gallery2/media/Media;)V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->m_AddressClassifier:Lcom/oneplus/gallery2/location/AddressClassifier;

    if-nez v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->m_AddressClassifier:Lcom/oneplus/gallery2/location/AddressClassifier;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/oneplus/gallery2/location/AddressClassifier;->removeMedia(Lcom/oneplus/gallery2/media/Media;I)Z

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 207
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->m_AddressClassifier:Lcom/oneplus/gallery2/location/AddressClassifier;

    if-nez v0, :cond_0

    .line 209
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->m_IsSummaryUpdateScheduled:Z

    if-nez v0, :cond_1

    .line 214
    :goto_1
    iput-object v2, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->owner:Lcom/oneplus/gallery2/media/TimeGroupedMediaList;

    .line 215
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->m_AddressClassifier:Lcom/oneplus/gallery2/location/AddressClassifier;

    invoke-interface {v0}, Lcom/oneplus/gallery2/location/AddressClassifier;->release()V

    goto :goto_0

    .line 211
    :cond_1
    iput-boolean v1, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->m_IsSummaryUpdateScheduled:Z

    .line 212
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TimeGroupedMediaList$SeparatorMedia;->m_UpdateSummaryRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeCallbacks(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)V

    goto :goto_1
.end method
