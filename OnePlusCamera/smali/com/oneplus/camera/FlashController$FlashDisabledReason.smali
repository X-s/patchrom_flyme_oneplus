.class public final enum Lcom/oneplus/camera/FlashController$FlashDisabledReason;
.super Ljava/lang/Enum;
.source "FlashController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/FlashController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlashDisabledReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/FlashController$FlashDisabledReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/FlashController$FlashDisabledReason;

.field public static final enum AE_LOCKED:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

.field public static final enum CALLING:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

.field public static final enum CAMERA_GALLERY_OPENING:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

.field public static final enum LOW_BATTERY_LEVEL:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

.field public static final enum LOW_BATTERY_TEMPERATURE:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

.field public static final enum NOT_SUPPORTED_IN_CAPTURE:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

.field public static final enum NOT_SUPPORTED_IN_CAPTURE_MODE:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

.field public static final enum NOT_SUPPORTED_IN_EFFECT:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

.field public static final enum NOT_SUPPORTED_IN_SCENE:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

.field public static final enum UNKNOWN:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

.field public static final enum USING_WIFI_HOTSPOT:Lcom/oneplus/camera/FlashController$FlashDisabledReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/FlashController$FlashDisabledReason;-><init>(Ljava/lang/String;I)V

    .line 38
    sput-object v0, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->UNKNOWN:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    .line 39
    new-instance v0, Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    const-string/jumbo v1, "NOT_SUPPORTED_IN_CAPTURE"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/FlashController$FlashDisabledReason;-><init>(Ljava/lang/String;I)V

    .line 42
    sput-object v0, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->NOT_SUPPORTED_IN_CAPTURE:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    .line 43
    new-instance v0, Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    const-string/jumbo v1, "NOT_SUPPORTED_IN_SCENE"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/camera/FlashController$FlashDisabledReason;-><init>(Ljava/lang/String;I)V

    .line 46
    sput-object v0, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->NOT_SUPPORTED_IN_SCENE:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    .line 47
    new-instance v0, Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    const-string/jumbo v1, "LOW_BATTERY_LEVEL"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/camera/FlashController$FlashDisabledReason;-><init>(Ljava/lang/String;I)V

    .line 50
    sput-object v0, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->LOW_BATTERY_LEVEL:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    .line 51
    new-instance v0, Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    const-string/jumbo v1, "NOT_SUPPORTED_IN_CAPTURE_MODE"

    invoke-direct {v0, v1, v7}, Lcom/oneplus/camera/FlashController$FlashDisabledReason;-><init>(Ljava/lang/String;I)V

    .line 54
    sput-object v0, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->NOT_SUPPORTED_IN_CAPTURE_MODE:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    .line 55
    new-instance v0, Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    const-string/jumbo v1, "NOT_SUPPORTED_IN_EFFECT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/FlashController$FlashDisabledReason;-><init>(Ljava/lang/String;I)V

    .line 58
    sput-object v0, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->NOT_SUPPORTED_IN_EFFECT:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    .line 59
    new-instance v0, Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    const-string/jumbo v1, "LOW_BATTERY_TEMPERATURE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/FlashController$FlashDisabledReason;-><init>(Ljava/lang/String;I)V

    .line 62
    sput-object v0, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->LOW_BATTERY_TEMPERATURE:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    .line 63
    new-instance v0, Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    const-string/jumbo v1, "USING_WIFI_HOTSPOT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/FlashController$FlashDisabledReason;-><init>(Ljava/lang/String;I)V

    .line 66
    sput-object v0, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->USING_WIFI_HOTSPOT:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    .line 67
    new-instance v0, Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    const-string/jumbo v1, "CALLING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/FlashController$FlashDisabledReason;-><init>(Ljava/lang/String;I)V

    .line 70
    sput-object v0, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->CALLING:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    .line 71
    new-instance v0, Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    const-string/jumbo v1, "AE_LOCKED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/FlashController$FlashDisabledReason;-><init>(Ljava/lang/String;I)V

    .line 74
    sput-object v0, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->AE_LOCKED:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    .line 75
    new-instance v0, Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    const-string/jumbo v1, "CAMERA_GALLERY_OPENING"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/FlashController$FlashDisabledReason;-><init>(Ljava/lang/String;I)V

    .line 78
    sput-object v0, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->CAMERA_GALLERY_OPENING:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    .line 33
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    sget-object v1, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->UNKNOWN:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->NOT_SUPPORTED_IN_CAPTURE:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->NOT_SUPPORTED_IN_SCENE:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->LOW_BATTERY_LEVEL:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->NOT_SUPPORTED_IN_CAPTURE_MODE:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->NOT_SUPPORTED_IN_EFFECT:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->LOW_BATTERY_TEMPERATURE:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->USING_WIFI_HOTSPOT:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->CALLING:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->AE_LOCKED:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->CAMERA_GALLERY_OPENING:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->$VALUES:[Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/FlashController$FlashDisabledReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/FlashController$FlashDisabledReason;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->$VALUES:[Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    return-object v0
.end method
