.class public Lcom/oneplus/gallery/crop/CropModeManager;
.super Lcom/oneplus/base/BasicBaseObject;
.source "CropModeManager.java"


# static fields
.field public static final MIN_RECT_LENGTH_RATIO:F = 0.1f

.field public static final PROP_CROP_MODE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/gallery/crop/CropMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_CROP_MODE_TYPE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/gallery/crop/CropModeType;",
            ">;"
        }
    .end annotation
.end field

.field private static cropModeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/gallery/crop/CropMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 14
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "CropModeType"

    const-class v2, Lcom/oneplus/gallery/crop/CropModeType;

    const-class v3, Lcom/oneplus/gallery/crop/CropModeManager;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/crop/CropModeManager;->PROP_CROP_MODE_TYPE:Lcom/oneplus/base/PropertyKey;

    .line 18
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "CropMode"

    const-class v2, Lcom/oneplus/gallery/crop/CropMode;

    const-class v3, Lcom/oneplus/gallery/crop/CropModeManager;

    const/4 v4, 0x1

    new-instance v5, Lcom/oneplus/gallery/crop/CropModeFree;

    invoke-direct {v5}, Lcom/oneplus/gallery/crop/CropModeFree;-><init>()V

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/crop/CropModeManager;->PROP_CROP_MODE:Lcom/oneplus/base/PropertyKey;

    .line 28
    sget-object v0, Lcom/oneplus/gallery/crop/CropModeManager;->cropModeList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/gallery/crop/CropModeManager;->cropModeList:Ljava/util/ArrayList;

    .line 31
    sget-object v0, Lcom/oneplus/gallery/crop/CropModeManager;->cropModeList:Ljava/util/ArrayList;

    new-instance v1, Lcom/oneplus/gallery/crop/CropModeFree;

    invoke-direct {v1}, Lcom/oneplus/gallery/crop/CropModeFree;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/oneplus/gallery/crop/CropModeManager;->cropModeList:Ljava/util/ArrayList;

    new-instance v1, Lcom/oneplus/gallery/crop/CropMode1x1;

    invoke-direct {v1}, Lcom/oneplus/gallery/crop/CropMode1x1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/oneplus/gallery/crop/CropModeManager;->cropModeList:Ljava/util/ArrayList;

    new-instance v1, Lcom/oneplus/gallery/crop/CropMode4x3;

    invoke-direct {v1}, Lcom/oneplus/gallery/crop/CropMode4x3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/oneplus/gallery/crop/CropModeManager;->cropModeList:Ljava/util/ArrayList;

    new-instance v1, Lcom/oneplus/gallery/crop/CropMode3x2;

    invoke-direct {v1}, Lcom/oneplus/gallery/crop/CropMode3x2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/oneplus/gallery/crop/CropModeManager;->cropModeList:Ljava/util/ArrayList;

    new-instance v1, Lcom/oneplus/gallery/crop/CropMode16x9;

    invoke-direct {v1}, Lcom/oneplus/gallery/crop/CropMode16x9;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/oneplus/gallery/crop/CropModeManager;->cropModeList:Ljava/util/ArrayList;

    new-instance v1, Lcom/oneplus/gallery/crop/CropMode9x16;

    invoke-direct {v1}, Lcom/oneplus/gallery/crop/CropMode9x16;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/oneplus/base/BasicBaseObject;-><init>()V

    return-void
.end method

.method private setCropModeType(Lcom/oneplus/gallery/crop/CropModeType;)Z
    .locals 2
    .param p1, "cropModeType"    # Lcom/oneplus/gallery/crop/CropModeType;

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    sget-object p1, Lcom/oneplus/gallery/crop/CropModeType;->FREE:Lcom/oneplus/gallery/crop/CropModeType;

    .line 63
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/crop/CropModeManager;->getCropMode(Lcom/oneplus/gallery/crop/CropModeType;)Lcom/oneplus/gallery/crop/CropMode;

    move-result-object v0

    .line 64
    .local v0, "mode":Lcom/oneplus/gallery/crop/CropMode;
    if-eqz v0, :cond_1

    .line 66
    sget-object v1, Lcom/oneplus/gallery/crop/CropModeManager;->PROP_CROP_MODE_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-super {p0, v1, p1}, Lcom/oneplus/base/BasicBaseObject;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 67
    sget-object v1, Lcom/oneplus/gallery/crop/CropModeManager;->PROP_CROP_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-super {p0, v1, v0}, Lcom/oneplus/base/BasicBaseObject;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 68
    const/4 v1, 0x1

    .line 71
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCropMode(Lcom/oneplus/gallery/crop/CropModeType;)Lcom/oneplus/gallery/crop/CropMode;
    .locals 3
    .param p1, "type"    # Lcom/oneplus/gallery/crop/CropModeType;

    .prologue
    .line 42
    sget-object v2, Lcom/oneplus/gallery/crop/CropModeManager;->cropModeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/crop/CropMode;

    .line 43
    .local v1, "mode":Lcom/oneplus/gallery/crop/CropMode;
    invoke-virtual {v1}, Lcom/oneplus/gallery/crop/CropMode;->getCropModeType()Lcom/oneplus/gallery/crop/CropModeType;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 46
    .end local v1    # "mode":Lcom/oneplus/gallery/crop/CropMode;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/gallery/crop/CropModeManager;->PROP_CROP_MODE_TYPE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 53
    check-cast p2, Lcom/oneplus/gallery/crop/CropModeType;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/gallery/crop/CropModeManager;->setCropModeType(Lcom/oneplus/gallery/crop/CropModeType;)Z

    move-result v0

    .line 55
    :goto_0
    return v0

    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/base/BasicBaseObject;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
