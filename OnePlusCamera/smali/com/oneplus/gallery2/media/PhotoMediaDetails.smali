.class public interface abstract Lcom/oneplus/gallery2/media/PhotoMediaDetails;
.super Ljava/lang/Object;
.source "PhotoMediaDetails.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/MediaDetails;


# static fields
.field public static final KEY_APERTURE:Lcom/oneplus/gallery2/media/MediaDetails$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/gallery2/media/MediaDetails$Key",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_CAMERA_MANUFACTURER:Lcom/oneplus/gallery2/media/MediaDetails$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/gallery2/media/MediaDetails$Key",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_CAMERA_MODEL:Lcom/oneplus/gallery2/media/MediaDetails$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/gallery2/media/MediaDetails$Key",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_FOCAL_LENGTH:Lcom/oneplus/gallery2/media/MediaDetails$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/gallery2/media/MediaDetails$Key",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_ISO_SPEED:Lcom/oneplus/gallery2/media/MediaDetails$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/gallery2/media/MediaDetails$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_IS_FLASH_FIRED:Lcom/oneplus/gallery2/media/MediaDetails$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/gallery2/media/MediaDetails$Key",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_SHUTTER_SPEED:Lcom/oneplus/gallery2/media/MediaDetails$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/gallery2/media/MediaDetails$Key",
            "<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_TAKEN_TIME:Lcom/oneplus/gallery2/media/MediaDetails$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/gallery2/media/MediaDetails$Key",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_WHITE_BALANCE:Lcom/oneplus/gallery2/media/MediaDetails$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/gallery2/media/MediaDetails$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final WHITE_BALANCE_AUTO:I = 0x0

.field public static final WHITE_BALANCE_MANUAL:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcom/oneplus/gallery2/media/MediaDetails$Key;

    const-string/jumbo v1, "Photo.Aperture"

    invoke-direct {v0, v1}, Lcom/oneplus/gallery2/media/MediaDetails$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/gallery2/media/PhotoMediaDetails;->KEY_APERTURE:Lcom/oneplus/gallery2/media/MediaDetails$Key;

    .line 18
    new-instance v0, Lcom/oneplus/gallery2/media/MediaDetails$Key;

    const-string/jumbo v1, "Photo.CameraManufacturer"

    invoke-direct {v0, v1}, Lcom/oneplus/gallery2/media/MediaDetails$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/gallery2/media/PhotoMediaDetails;->KEY_CAMERA_MANUFACTURER:Lcom/oneplus/gallery2/media/MediaDetails$Key;

    .line 22
    new-instance v0, Lcom/oneplus/gallery2/media/MediaDetails$Key;

    const-string/jumbo v1, "Photo.CameraModel"

    invoke-direct {v0, v1}, Lcom/oneplus/gallery2/media/MediaDetails$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/gallery2/media/PhotoMediaDetails;->KEY_CAMERA_MODEL:Lcom/oneplus/gallery2/media/MediaDetails$Key;

    .line 26
    new-instance v0, Lcom/oneplus/gallery2/media/MediaDetails$Key;

    const-string/jumbo v1, "Photo.FocalLength"

    invoke-direct {v0, v1}, Lcom/oneplus/gallery2/media/MediaDetails$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/gallery2/media/PhotoMediaDetails;->KEY_FOCAL_LENGTH:Lcom/oneplus/gallery2/media/MediaDetails$Key;

    .line 30
    new-instance v0, Lcom/oneplus/gallery2/media/MediaDetails$Key;

    const-string/jumbo v1, "Photo.IsFlashFired"

    invoke-direct {v0, v1}, Lcom/oneplus/gallery2/media/MediaDetails$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/gallery2/media/PhotoMediaDetails;->KEY_IS_FLASH_FIRED:Lcom/oneplus/gallery2/media/MediaDetails$Key;

    .line 34
    new-instance v0, Lcom/oneplus/gallery2/media/MediaDetails$Key;

    const-string/jumbo v1, "Photo.IsoSpeed"

    invoke-direct {v0, v1}, Lcom/oneplus/gallery2/media/MediaDetails$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/gallery2/media/PhotoMediaDetails;->KEY_ISO_SPEED:Lcom/oneplus/gallery2/media/MediaDetails$Key;

    .line 38
    new-instance v0, Lcom/oneplus/gallery2/media/MediaDetails$Key;

    const-string/jumbo v1, "Photo.ShutterSpeed"

    invoke-direct {v0, v1}, Lcom/oneplus/gallery2/media/MediaDetails$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/gallery2/media/PhotoMediaDetails;->KEY_SHUTTER_SPEED:Lcom/oneplus/gallery2/media/MediaDetails$Key;

    .line 42
    new-instance v0, Lcom/oneplus/gallery2/media/MediaDetails$Key;

    const-string/jumbo v1, "Photo.TakenTime"

    invoke-direct {v0, v1}, Lcom/oneplus/gallery2/media/MediaDetails$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/gallery2/media/PhotoMediaDetails;->KEY_TAKEN_TIME:Lcom/oneplus/gallery2/media/MediaDetails$Key;

    .line 50
    new-instance v0, Lcom/oneplus/gallery2/media/MediaDetails$Key;

    const-string/jumbo v1, "Photo.WhiteBalance"

    invoke-direct {v0, v1}, Lcom/oneplus/gallery2/media/MediaDetails$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/gallery2/media/PhotoMediaDetails;->KEY_WHITE_BALANCE:Lcom/oneplus/gallery2/media/MediaDetails$Key;

    .line 60
    return-void
.end method
