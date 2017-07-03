.class abstract Lcom/oneplus/gallery2/location/BaseAddressClassifier;
.super Lcom/oneplus/base/BasicBaseObject;
.source "BaseAddressClassifier.java"

# interfaces
.implements Lcom/oneplus/gallery2/location/AddressClassifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/location/BaseAddressClassifier$2;,
        Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;
    }
.end annotation


# static fields
.field private static final BOTTOM_LEVEL_LOCATION_TYPE_ORDINAL:I

.field private static final LOCATION_COMPARATOR_MEDIA_COUNT_DESC:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCATION_TYPES:[Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

.field private static final MIN_EXPECTED_LOCATION_COUNT:I = 0x2


# instance fields
.field private final m_Media:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation
.end field

.field private final m_TopLevelLocations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;->values()[Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->LOCATION_TYPES:[Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

    .line 26
    sget-object v0, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->LOCATION_TYPES:[Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->BOTTOM_LEVEL_LOCATION_TYPE_ORDINAL:I

    .line 28
    new-instance v0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$1;

    invoke-direct {v0}, Lcom/oneplus/gallery2/location/BaseAddressClassifier$1;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->LOCATION_COMPARATOR_MEDIA_COUNT_DESC:Ljava/util/Comparator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/oneplus/base/BasicBaseObject;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->m_Media:Ljava/util/Set;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->m_TopLevelLocations:Ljava/util/Map;

    .line 99
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->BOTTOM_LEVEL_LOCATION_TYPE_ORDINAL:I

    return v0
.end method

.method private static addMediaToLocation(Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;Lcom/oneplus/gallery2/media/Media;Landroid/location/Address;)Z
    .locals 7
    .param p0, "location"    # Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "address"    # Landroid/location/Address;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 141
    iget-boolean v5, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->isBottomLevel:Z

    if-eqz v5, :cond_1

    .line 143
    iget-object v5, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->media:Ljava/util/Set;

    invoke-interface {v5, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 145
    iget v4, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->mediaCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->mediaCount:I

    .line 169
    :goto_0
    return v3

    :cond_0
    move v3, v4

    .line 148
    goto :goto_0

    .line 150
    :cond_1
    sget-object v5, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->LOCATION_TYPES:[Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

    iget-object v6, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->type:Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

    invoke-virtual {v6}, Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;->ordinal()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    aget-object v1, v5, v6

    .line 151
    .local v1, "subLocationType":Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;
    invoke-static {p2, v1}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->getLocationName(Landroid/location/Address;Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;)Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "subName":Ljava/lang/String;
    iget-object v5, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->subLocations:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;

    .line 153
    .local v0, "subLocation":Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;
    if-eqz v0, :cond_3

    .line 155
    invoke-static {v0, p1, p2}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->addMediaToLocation(Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;Lcom/oneplus/gallery2/media/Media;Landroid/location/Address;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 157
    iget v4, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->mediaCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->mediaCount:I

    goto :goto_0

    :cond_2
    move v3, v4

    .line 160
    goto :goto_0

    .line 162
    :cond_3
    new-instance v0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;

    .end local v0    # "subLocation":Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;
    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;-><init>(Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;Ljava/lang/String;)V

    .line 163
    .restart local v0    # "subLocation":Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;
    invoke-static {v0, p1, p2}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->addMediaToLocation(Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;Lcom/oneplus/gallery2/media/Media;Landroid/location/Address;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 165
    iget-object v4, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->subLocations:Ljava/util/Map;

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget v4, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->mediaCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->mediaCount:I

    goto :goto_0

    :cond_4
    move v3, v4

    .line 169
    goto :goto_0
.end method

.method private addMediaToLocation(Lcom/oneplus/gallery2/media/Media;Landroid/location/Address;)Z
    .locals 4
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "address"    # Landroid/location/Address;

    .prologue
    const/4 v2, 0x0

    .line 125
    if-nez p2, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v2

    .line 127
    :cond_1
    sget-object v3, Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;->COUNTRY:Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

    invoke-static {p2, v3}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->getLocationName(Landroid/location/Address;Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->m_TopLevelLocations:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;

    .line 129
    .local v0, "location":Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;
    if-eqz v0, :cond_2

    .line 130
    invoke-static {v0, p1, p2}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->addMediaToLocation(Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;Lcom/oneplus/gallery2/media/Media;Landroid/location/Address;)Z

    move-result v2

    goto :goto_0

    .line 131
    :cond_2
    new-instance v0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;

    .end local v0    # "location":Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;
    sget-object v3, Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;->COUNTRY:Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

    invoke-direct {v0, v3, v1}, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;-><init>(Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;Ljava/lang/String;)V

    .line 132
    .restart local v0    # "location":Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;
    invoke-static {v0, p1, p2}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->addMediaToLocation(Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;Lcom/oneplus/gallery2/media/Media;Landroid/location/Address;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    iget-object v2, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->m_TopLevelLocations:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static collectLocationNames(Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;Ljava/util/List;)V
    .locals 3
    .param p0, "location"    # Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 177
    iget-object v2, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->name:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_0
    return-void

    .line 178
    :cond_1
    iget-boolean v2, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->isBottomLevel:Z

    if-nez v2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->subLocations:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;

    .line 181
    .local v1, "subLocation":Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;
    invoke-static {v1, p1}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->collectLocationNames(Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;Ljava/util/List;)V

    goto :goto_0
.end method

.method private static collectLocationNames(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "locations":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;>;"
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 190
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;

    invoke-static {v2, p1}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->collectLocationNames(Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;Ljava/util/List;)V

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    :cond_0
    return-void
.end method

.method private static collectLocations(Ljava/util/Map;Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;Ljava/util/List;)V
    .locals 3
    .param p1, "type"    # Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;",
            ">;",
            "Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "locationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;>;"
    .local p2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;>;"
    if-nez p0, :cond_1

    .line 206
    :cond_0
    return-void

    .line 199
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;

    .line 201
    .local v1, "subLocation":Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;
    iget-object v2, v1, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->type:Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

    if-ne v2, p1, :cond_2

    .line 202
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    :cond_2
    iget-object v2, v1, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->subLocations:Ljava/util/Map;

    invoke-static {v2, p1, p2}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->collectLocations(Ljava/util/Map;Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;Ljava/util/List;)V

    goto :goto_0
.end method

.method private static getLocationName(Landroid/location/Address;Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;)Ljava/lang/String;
    .locals 2
    .param p0, "address"    # Landroid/location/Address;
    .param p1, "type"    # Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

    .prologue
    .line 212
    sget-object v0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$2;->$SwitchMap$com$oneplus$gallery2$location$AddressClassifier$LocationType:[I

    invoke-virtual {p1}, Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 221
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 215
    :pswitch_0
    invoke-virtual {p0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 217
    :pswitch_1
    invoke-virtual {p0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 219
    :pswitch_2
    invoke-virtual {p0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static removeMediaFromLocation(Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;Lcom/oneplus/gallery2/media/Media;Landroid/location/Address;)Z
    .locals 7
    .param p0, "location"    # Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "address"    # Landroid/location/Address;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 363
    iget-boolean v5, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->isBottomLevel:Z

    if-eqz v5, :cond_1

    .line 365
    iget-object v5, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->media:Ljava/util/Set;

    invoke-interface {v5, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 367
    iget v4, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->mediaCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->mediaCount:I

    .line 382
    :goto_0
    return v3

    :cond_0
    move v3, v4

    .line 370
    goto :goto_0

    .line 372
    :cond_1
    sget-object v5, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->LOCATION_TYPES:[Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

    iget-object v6, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->type:Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

    invoke-virtual {v6}, Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;->ordinal()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    aget-object v1, v5, v6

    .line 373
    .local v1, "subLocationType":Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;
    invoke-static {p2, v1}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->getLocationName(Landroid/location/Address;Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;)Ljava/lang/String;

    move-result-object v2

    .line 374
    .local v2, "subName":Ljava/lang/String;
    iget-object v5, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->subLocations:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;

    .line 375
    .local v0, "subLocation":Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;
    if-eqz v0, :cond_3

    invoke-static {v0, p1, p2}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->removeMediaFromLocation(Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;Lcom/oneplus/gallery2/media/Media;Landroid/location/Address;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 377
    invoke-virtual {v0}, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 378
    iget-object v4, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->subLocations:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_2
    iget v4, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->mediaCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->mediaCount:I

    goto :goto_0

    :cond_3
    move v3, v4

    .line 382
    goto :goto_0
.end method

.method private removeMediaFromLocation(Lcom/oneplus/gallery2/media/Media;Landroid/location/Address;)Z
    .locals 4
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "address"    # Landroid/location/Address;

    .prologue
    const/4 v2, 0x0

    .line 349
    if-nez p2, :cond_1

    .line 359
    :cond_0
    :goto_0
    return v2

    .line 351
    :cond_1
    sget-object v3, Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;->COUNTRY:Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

    invoke-static {p2, v3}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->getLocationName(Landroid/location/Address;Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;)Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->m_TopLevelLocations:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;

    .line 353
    .local v0, "location":Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;
    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->removeMediaFromLocation(Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;Lcom/oneplus/gallery2/media/Media;Landroid/location/Address;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 355
    invoke-virtual {v0}, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 356
    iget-object v2, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->m_TopLevelLocations:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addMedia(Lcom/oneplus/gallery2/media/Media;I)Z
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->verifyAccess()V

    .line 107
    if-nez p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->m_Media:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getAddress()Landroid/location/Address;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->addMediaToLocation(Lcom/oneplus/gallery2/media/Media;Landroid/location/Address;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->onMediaAdded(Lcom/oneplus/gallery2/media/Media;)V

    .line 114
    sget-object v0, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->EVENT_UPDATED:Lcom/oneplus/base/EventKey;

    sget-object v1, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 118
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->onMediaAdded(Lcom/oneplus/gallery2/media/Media;)V

    goto :goto_1
.end method

.method public getLocationNameList(Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;I)Ljava/util/List;
    .locals 7
    .param p1, "expectedType"    # Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 232
    invoke-virtual {p0}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->verifyAccess()V

    .line 233
    iget-object v4, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->m_TopLevelLocations:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 234
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 282
    :cond_0
    :goto_0
    return-object v3

    .line 235
    :cond_1
    if-nez p1, :cond_2

    .line 236
    sget-object p1, Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;->COUNTRY:Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

    .line 239
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v0, "expectedLocationList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;>;"
    iget-object v4, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->m_TopLevelLocations:Ljava/util/Map;

    invoke-static {v4, p1, v0}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->collectLocations(Ljava/util/Map;Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;Ljava/util/List;)V

    .line 241
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v6, :cond_3

    .line 243
    sget-object v4, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->LOCATION_COMPARATOR_MEDIA_COUNT_DESC:Ljava/util/Comparator;

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 244
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 245
    .local v3, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v3}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->collectLocationNames(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 250
    .end local v3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v2, "locationList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;>;"
    invoke-virtual {p1}, Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;->ordinal()I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    .local v1, "i":I
    :goto_1
    sget v4, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->BOTTOM_LEVEL_LOCATION_TYPE_ORDINAL:I

    if-gt v1, v4, :cond_5

    .line 253
    iget-object v4, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->m_TopLevelLocations:Ljava/util/Map;

    sget-object v5, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->LOCATION_TYPES:[Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

    aget-object v5, v5, v1

    invoke-static {v4, v5, v2}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->collectLocations(Ljava/util/Map;Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;Ljava/util/List;)V

    .line 254
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v6, :cond_4

    .line 256
    sget-object v4, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->LOCATION_COMPARATOR_MEDIA_COUNT_DESC:Ljava/util/Comparator;

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 257
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 258
    .restart local v3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2, v3}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->collectLocationNames(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 261
    .end local v3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 265
    :cond_5
    invoke-virtual {p1}, Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;->ordinal()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_2
    if-ltz v1, :cond_7

    .line 267
    iget-object v4, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->m_TopLevelLocations:Ljava/util/Map;

    sget-object v5, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->LOCATION_TYPES:[Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

    aget-object v5, v5, v1

    invoke-static {v4, v5, v2}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->collectLocations(Ljava/util/Map;Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;Ljava/util/List;)V

    .line 268
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v6, :cond_6

    .line 270
    sget-object v4, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->LOCATION_COMPARATOR_MEDIA_COUNT_DESC:Ljava/util/Comparator;

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 271
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 272
    .restart local v3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2, v3}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->collectLocationNames(Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 275
    .end local v3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 265
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 278
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_8

    .line 279
    sget-object v4, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->LOCATION_COMPARATOR_MEDIA_COUNT_DESC:Ljava/util/Comparator;

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 280
    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 281
    .restart local v3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v3}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->collectLocationNames(Ljava/util/List;Ljava/util/List;)V

    .line 282
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto/16 :goto_0
.end method

.method protected final getMedia()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->m_Media:Ljava/util/Set;

    return-object v0
.end method

.method protected onMediaAdded(Lcom/oneplus/gallery2/media/Media;)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 301
    return-void
.end method

.method protected onMediaRemoved(Lcom/oneplus/gallery2/media/Media;)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 309
    return-void
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->verifyAccess()V

    .line 320
    iget-object v0, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->m_Media:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 321
    iget-object v0, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->m_TopLevelLocations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 324
    invoke-super {p0}, Lcom/oneplus/base/BasicBaseObject;->onRelease()V

    .line 325
    return-void
.end method

.method public removeMedia(Lcom/oneplus/gallery2/media/Media;I)Z
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->verifyAccess()V

    .line 333
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->m_Media:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 334
    :cond_0
    const/4 v0, 0x0

    .line 342
    :goto_0
    return v0

    .line 335
    :cond_1
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getAddress()Landroid/location/Address;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->removeMediaFromLocation(Lcom/oneplus/gallery2/media/Media;Landroid/location/Address;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->onMediaRemoved(Lcom/oneplus/gallery2/media/Media;)V

    .line 338
    sget-object v0, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->EVENT_UPDATED:Lcom/oneplus/base/EventKey;

    sget-object v1, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 342
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 341
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->onMediaRemoved(Lcom/oneplus/gallery2/media/Media;)V

    goto :goto_1
.end method

.method public final updateMedia(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 3
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    const/4 v1, 0x0

    .line 394
    invoke-virtual {p0}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->verifyAccess()V

    .line 395
    iget-object v2, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->m_Media:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 410
    :cond_0
    :goto_0
    return v1

    .line 399
    :cond_1
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getPreviousAddress()Landroid/location/Address;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->removeMediaFromLocation(Lcom/oneplus/gallery2/media/Media;Landroid/location/Address;)Z

    move-result v0

    .line 402
    .local v0, "updated":Z
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getAddress()Landroid/location/Address;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->addMediaToLocation(Lcom/oneplus/gallery2/media/Media;Landroid/location/Address;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 405
    if-eqz v0, :cond_0

    .line 407
    sget-object v1, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->EVENT_UPDATED:Lcom/oneplus/base/EventKey;

    sget-object v2, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 408
    const/4 v1, 0x1

    goto :goto_0
.end method
