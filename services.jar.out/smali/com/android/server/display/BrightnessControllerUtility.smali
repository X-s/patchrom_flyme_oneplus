.class public Lcom/android/server/display/BrightnessControllerUtility;
.super Ljava/lang/Object;
.source "BrightnessControllerUtility.java"


# static fields
.field public static BRIGHTNESS_LEVELS:I = 0x0

.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BrightnessControllerUtility"

.field public static mAmbientLuxConfig:[F

.field public static mAmbientLuxMaxConfig:[F

.field public static mAmbientLuxMinConfig:[F

.field private static sInstance:Lcom/android/server/display/BrightnessControllerUtility;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/BrightnessControllerUtility;->DEBUG:Z

    .line 34
    const/4 v0, 0x6

    sput v0, Lcom/android/server/display/BrightnessControllerUtility;->BRIGHTNESS_LEVELS:I

    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/display/BrightnessControllerUtility;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/server/display/BrightnessControllerUtility;->sInstance:Lcom/android/server/display/BrightnessControllerUtility;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/android/server/display/BrightnessControllerUtility;

    invoke-direct {v0}, Lcom/android/server/display/BrightnessControllerUtility;-><init>()V

    sput-object v0, Lcom/android/server/display/BrightnessControllerUtility;->sInstance:Lcom/android/server/display/BrightnessControllerUtility;

    .line 44
    :cond_0
    sget-object v0, Lcom/android/server/display/BrightnessControllerUtility;->sInstance:Lcom/android/server/display/BrightnessControllerUtility;

    return-object v0
.end method


# virtual methods
.method public calculateRate(FF)I
    .locals 4
    .param p1, "nowLux"    # F
    .param p2, "lastLux"    # F

    .prologue
    const v3, 0x459c3800    # 4999.0f

    .line 81
    const/4 v0, 0x0

    .line 83
    .local v0, "rate":I
    cmpl-float v1, p1, p2

    if-lez v1, :cond_1

    .line 84
    sub-float v1, p1, p2

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v1, v2

    const v2, 0x47433b00    # 49979.0f

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 85
    const/16 v1, 0x3c

    if-ge v0, v1, :cond_0

    .line 86
    const/16 v0, 0x3c

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    sub-float v1, p2, p1

    const/high16 v2, 0x41600000    # 14.0f

    mul-float/2addr v1, v2

    const v2, 0x46ea3800    # 29980.0f

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 90
    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    .line 91
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/server/display/BrightnessControllerUtility;->mContext:Landroid/content/Context;

    .line 53
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/display/BrightnessControllerUtility;->DEBUG:Z

    .line 55
    sget v0, Lcom/android/server/display/BrightnessControllerUtility;->BRIGHTNESS_LEVELS:I

    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxConfig:[F

    .line 56
    sget v0, Lcom/android/server/display/BrightnessControllerUtility;->BRIGHTNESS_LEVELS:I

    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxMinConfig:[F

    .line 57
    sget v0, Lcom/android/server/display/BrightnessControllerUtility;->BRIGHTNESS_LEVELS:I

    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxMaxConfig:[F

    .line 51
    return-void
.end method

.method public readAutoBrightnessLuxConfig()V
    .locals 6

    .prologue
    const/4 v5, 0x6

    .line 61
    iget-object v3, p0, Lcom/android/server/display/BrightnessControllerUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 63
    .local v2, "resources":Landroid/content/res/Resources;
    const v3, 0x107002a

    .line 62
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 64
    .local v1, "lux":[I
    array-length v3, v1

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [F

    sput-object v3, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxConfig:[F

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    add-int/lit8 v3, v3, 0x1

    if-ge v0, v3, :cond_1

    .line 66
    if-nez v0, :cond_0

    .line 67
    sget-object v3, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxConfig:[F

    const/4 v4, 0x0

    aput v4, v3, v0

    .line 65
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    sget-object v3, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxConfig:[F

    add-int/lit8 v4, v0, -0x1

    aget v4, v1, v4

    int-to-float v4, v4

    aput v4, v3, v0

    goto :goto_1

    .line 72
    :cond_1
    new-array v3, v5, [F

    fill-array-data v3, :array_0

    sput-object v3, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxMinConfig:[F

    .line 75
    new-array v3, v5, [F

    fill-array-data v3, :array_1

    sput-object v3, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxMaxConfig:[F

    .line 60
    return-void

    .line 72
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x41200000    # 10.0f
        0x44070000    # 540.0f
        0x44802000    # 1025.0f
        0x45160000    # 2400.0f
    .end array-data

    .line 75
    :array_1
    .array-data 4
        0x41200000    # 10.0f
        0x42dc0000    # 110.0f
        0x448fc000    # 1150.0f
        0x4500c000    # 2060.0f
        0x4583e000    # 4220.0f
        0x45fa0000    # 8000.0f
    .end array-data
.end method

.method public resetAmbientLux(F)I
    .locals 3
    .param p1, "ambientLux"    # F

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    sget v2, Lcom/android/server/display/BrightnessControllerUtility;->BRIGHTNESS_LEVELS:I

    if-ge v1, v2, :cond_0

    .line 101
    sget-object v2, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxConfig:[F

    aget v2, v2, v1

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    .line 102
    add-int/lit8 v0, v1, 0x1

    .line 106
    :cond_0
    return v0

    .line 100
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
