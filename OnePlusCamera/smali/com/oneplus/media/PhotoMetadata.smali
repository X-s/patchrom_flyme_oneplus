.class public interface abstract Lcom/oneplus/media/PhotoMetadata;
.super Ljava/lang/Object;
.source "PhotoMetadata.java"

# interfaces
.implements Lcom/oneplus/media/Metadata;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/media/PhotoMetadata$WhiteBalance;
    }
.end annotation


# static fields
.field public static final PROP_APERTURE_VALUE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_EXPOSURE_TIME:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_FLASH_DATA:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/media/FlashData;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_FOCAL_LENGTH:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_GPS_DATE_TIME_STAMP:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_ISO:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_LOCATION:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_MAKE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_MAKER_NOTE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_MODEL:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_WHITE_BALANCE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/media/PhotoMetadata$WhiteBalance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 23
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ApertureValue"

    const-class v2, Ljava/lang/Double;

    const-class v3, Lcom/oneplus/media/PhotoMetadata;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/media/PhotoMetadata;->PROP_APERTURE_VALUE:Lcom/oneplus/base/PropertyKey;

    .line 27
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ExposureTime"

    const-class v2, Landroid/util/Rational;

    const-class v3, Lcom/oneplus/media/PhotoMetadata;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/media/PhotoMetadata;->PROP_EXPOSURE_TIME:Lcom/oneplus/base/PropertyKey;

    .line 31
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "FlashData"

    const-class v2, Lcom/oneplus/media/FlashData;

    const-class v3, Lcom/oneplus/media/PhotoMetadata;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/media/PhotoMetadata;->PROP_FLASH_DATA:Lcom/oneplus/base/PropertyKey;

    .line 35
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "FocalLength"

    const-class v2, Ljava/lang/Double;

    const-class v3, Lcom/oneplus/media/PhotoMetadata;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/media/PhotoMetadata;->PROP_FOCAL_LENGTH:Lcom/oneplus/base/PropertyKey;

    .line 39
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ISO"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/media/PhotoMetadata;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/media/PhotoMetadata;->PROP_ISO:Lcom/oneplus/base/PropertyKey;

    .line 43
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Location"

    const-class v2, Landroid/location/Location;

    const-class v3, Lcom/oneplus/media/PhotoMetadata;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/media/PhotoMetadata;->PROP_LOCATION:Lcom/oneplus/base/PropertyKey;

    .line 47
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Make"

    const-class v2, Ljava/lang/String;

    const-class v3, Lcom/oneplus/media/PhotoMetadata;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/media/PhotoMetadata;->PROP_MAKE:Lcom/oneplus/base/PropertyKey;

    .line 51
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "MakerNote"

    const-class v2, Ljava/lang/Object;

    const-class v3, Lcom/oneplus/media/PhotoMetadata;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/media/PhotoMetadata;->PROP_MAKER_NOTE:Lcom/oneplus/base/PropertyKey;

    .line 55
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Model"

    const-class v2, Ljava/lang/String;

    const-class v3, Lcom/oneplus/media/PhotoMetadata;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/media/PhotoMetadata;->PROP_MODEL:Lcom/oneplus/base/PropertyKey;

    .line 59
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "WhiteBalance"

    const-class v2, Lcom/oneplus/media/PhotoMetadata$WhiteBalance;

    const-class v3, Lcom/oneplus/media/PhotoMetadata;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/media/PhotoMetadata;->PROP_WHITE_BALANCE:Lcom/oneplus/base/PropertyKey;

    .line 63
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "GPSDateTimeStamp"

    const-class v2, Ljava/lang/Long;

    const-class v3, Lcom/oneplus/media/PhotoMetadata;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/media/PhotoMetadata;->PROP_GPS_DATE_TIME_STAMP:Lcom/oneplus/base/PropertyKey;

    .line 8
    return-void
.end method
