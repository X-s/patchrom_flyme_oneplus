.class public final enum Lcom/oneplus/camera/AutoExposureState;
.super Ljava/lang/Enum;
.source "AutoExposureState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/AutoExposureState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/AutoExposureState;

.field public static final enum CONVERGED:Lcom/oneplus/camera/AutoExposureState;

.field public static final enum FLASH_REQUIRED:Lcom/oneplus/camera/AutoExposureState;

.field public static final enum INACTIVE:Lcom/oneplus/camera/AutoExposureState;

.field public static final enum LOCKED:Lcom/oneplus/camera/AutoExposureState;

.field public static final enum PRECAPTURE:Lcom/oneplus/camera/AutoExposureState;

.field public static final enum SEARCHING:Lcom/oneplus/camera/AutoExposureState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/oneplus/camera/AutoExposureState;

    const-string/jumbo v1, "INACTIVE"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/AutoExposureState;-><init>(Ljava/lang/String;I)V

    .line 11
    sput-object v0, Lcom/oneplus/camera/AutoExposureState;->INACTIVE:Lcom/oneplus/camera/AutoExposureState;

    .line 12
    new-instance v0, Lcom/oneplus/camera/AutoExposureState;

    const-string/jumbo v1, "SEARCHING"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/AutoExposureState;-><init>(Ljava/lang/String;I)V

    .line 15
    sput-object v0, Lcom/oneplus/camera/AutoExposureState;->SEARCHING:Lcom/oneplus/camera/AutoExposureState;

    .line 16
    new-instance v0, Lcom/oneplus/camera/AutoExposureState;

    const-string/jumbo v1, "CONVERGED"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/camera/AutoExposureState;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v0, Lcom/oneplus/camera/AutoExposureState;->CONVERGED:Lcom/oneplus/camera/AutoExposureState;

    .line 20
    new-instance v0, Lcom/oneplus/camera/AutoExposureState;

    const-string/jumbo v1, "LOCKED"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/camera/AutoExposureState;-><init>(Ljava/lang/String;I)V

    .line 23
    sput-object v0, Lcom/oneplus/camera/AutoExposureState;->LOCKED:Lcom/oneplus/camera/AutoExposureState;

    .line 24
    new-instance v0, Lcom/oneplus/camera/AutoExposureState;

    const-string/jumbo v1, "FLASH_REQUIRED"

    invoke-direct {v0, v1, v7}, Lcom/oneplus/camera/AutoExposureState;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v0, Lcom/oneplus/camera/AutoExposureState;->FLASH_REQUIRED:Lcom/oneplus/camera/AutoExposureState;

    .line 28
    new-instance v0, Lcom/oneplus/camera/AutoExposureState;

    const-string/jumbo v1, "PRECAPTURE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/AutoExposureState;-><init>(Ljava/lang/String;I)V

    .line 31
    sput-object v0, Lcom/oneplus/camera/AutoExposureState;->PRECAPTURE:Lcom/oneplus/camera/AutoExposureState;

    .line 6
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/oneplus/camera/AutoExposureState;

    sget-object v1, Lcom/oneplus/camera/AutoExposureState;->INACTIVE:Lcom/oneplus/camera/AutoExposureState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/AutoExposureState;->SEARCHING:Lcom/oneplus/camera/AutoExposureState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/camera/AutoExposureState;->CONVERGED:Lcom/oneplus/camera/AutoExposureState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/camera/AutoExposureState;->LOCKED:Lcom/oneplus/camera/AutoExposureState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oneplus/camera/AutoExposureState;->FLASH_REQUIRED:Lcom/oneplus/camera/AutoExposureState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oneplus/camera/AutoExposureState;->PRECAPTURE:Lcom/oneplus/camera/AutoExposureState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/camera/AutoExposureState;->$VALUES:[Lcom/oneplus/camera/AutoExposureState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/AutoExposureState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/oneplus/camera/AutoExposureState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/AutoExposureState;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/AutoExposureState;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oneplus/camera/AutoExposureState;->$VALUES:[Lcom/oneplus/camera/AutoExposureState;

    return-object v0
.end method
