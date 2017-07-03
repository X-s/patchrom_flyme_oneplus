.class final Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;
.super Ljava/lang/Object;
.source "BaseAddressClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/location/BaseAddressClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Location"
.end annotation


# instance fields
.field public final isBottomLevel:Z

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

.field public mediaCount:I

.field public final name:Ljava/lang/String;

.field public final subLocations:Ljava/util/Map;
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

.field public final type:Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->type:Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

    .line 71
    iput-object p2, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->name:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;->ordinal()I

    move-result v0

    # getter for: Lcom/oneplus/gallery2/location/BaseAddressClassifier;->BOTTOM_LEVEL_LOCATION_TYPE_ORDINAL:I
    invoke-static {}, Lcom/oneplus/gallery2/location/BaseAddressClassifier;->access$000()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->isBottomLevel:Z

    .line 73
    iget-boolean v0, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->isBottomLevel:Z

    if-eqz v0, :cond_1

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->media:Ljava/util/Set;

    .line 76
    iput-object v2, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->subLocations:Ljava/util/Map;

    .line 83
    :goto_1
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 80
    :cond_1
    iput-object v2, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->media:Ljava/util/Set;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->subLocations:Ljava/util/Map;

    goto :goto_1
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->isBottomLevel:Z

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->media:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    .line 90
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/location/BaseAddressClassifier$Location;->subLocations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method
