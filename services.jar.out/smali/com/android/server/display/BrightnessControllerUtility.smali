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

.field private static mScreenBrightnessConfig:[I

.field private static sInstance:Lcom/android/server/display/BrightnessControllerUtility;


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field private mNightBrihtness:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/BrightnessControllerUtility;->DEBUG:Z

    .line 36
    const/16 v0, 0x8

    sput v0, Lcom/android/server/display/BrightnessControllerUtility;->BRIGHTNESS_LEVELS:I

    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/BrightnessControllerUtility;->mNightBrihtness:I

    .line 54
    return-void
.end method

.method public static getInstance()Lcom/android/server/display/BrightnessControllerUtility;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/server/display/BrightnessControllerUtility;->sInstance:Lcom/android/server/display/BrightnessControllerUtility;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/android/server/display/BrightnessControllerUtility;

    invoke-direct {v0}, Lcom/android/server/display/BrightnessControllerUtility;-><init>()V

    sput-object v0, Lcom/android/server/display/BrightnessControllerUtility;->sInstance:Lcom/android/server/display/BrightnessControllerUtility;

    .line 51
    :cond_0
    sget-object v0, Lcom/android/server/display/BrightnessControllerUtility;->sInstance:Lcom/android/server/display/BrightnessControllerUtility;

    return-object v0
.end method


# virtual methods
.method public calculateRate(FF)I
    .locals 5
    .param p1, "nowLux"    # F
    .param p2, "lastLux"    # F

    .prologue
    const/16 v4, 0x1e

    const v3, 0x459c3800    # 4999.0f

    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, "rate":I
    cmpl-float v1, p1, p2

    if-lez v1, :cond_1

    .line 93
    sub-float v1, p1, p2

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v1, v2

    const v2, 0x47433b00    # 49979.0f

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 94
    if-ge v0, v4, :cond_0

    .line 95
    const/16 v0, 0x1e

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    sub-float v1, p2, p1

    const/high16 v2, 0x41600000    # 14.0f

    mul-float/2addr v1, v2

    const v2, 0x46ea3800    # 29980.0f

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 99
    if-le v0, v4, :cond_0

    .line 100
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method public getNightBrightness(I)I
    .locals 6
    .param p1, "brightness"    # I

    .prologue
    const/4 v5, 0x0

    .line 119
    move v1, p1

    .line 121
    .local v1, "newScreenAutoBrightness":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/BrightnessControllerUtility;->mCalendar:Ljava/util/Calendar;

    .line 122
    iget-object v2, p0, Lcom/android/server/display/BrightnessControllerUtility;->mCalendar:Ljava/util/Calendar;

    if-eqz v2, :cond_1

    .line 123
    iget-object v2, p0, Lcom/android/server/display/BrightnessControllerUtility;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 124
    .local v0, "hour":I
    const/16 v2, 0x16

    if-gt v0, v2, :cond_0

    const/4 v2, 0x7

    if-ge v0, v2, :cond_3

    .line 125
    :cond_0
    sget-object v2, Lcom/android/server/display/BrightnessControllerUtility;->mScreenBrightnessConfig:[I

    aget v2, v2, v5

    if-ne p1, v2, :cond_1

    .line 126
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/display/BrightnessControllerUtility;->mNightBrihtness:I

    .line 132
    .end local v0    # "hour":I
    :cond_1
    :goto_0
    const-string/jumbo v2, "BrightnessControllerUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mNightBrihtness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/BrightnessControllerUtility;->mNightBrihtness:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget v2, p0, Lcom/android/server/display/BrightnessControllerUtility;->mNightBrihtness:I

    if-lez v2, :cond_2

    sget-object v2, Lcom/android/server/display/BrightnessControllerUtility;->mScreenBrightnessConfig:[I

    aget v2, v2, v5

    if-ne p1, v2, :cond_2

    .line 135
    iget v1, p0, Lcom/android/server/display/BrightnessControllerUtility;->mNightBrihtness:I

    .line 138
    :cond_2
    return v1

    .line 129
    .restart local v0    # "hour":I
    :cond_3
    const/4 v2, 0x6

    iput v2, p0, Lcom/android/server/display/BrightnessControllerUtility;->mNightBrihtness:I

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/server/display/BrightnessControllerUtility;->mContext:Landroid/content/Context;

    .line 60
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/display/BrightnessControllerUtility;->DEBUG:Z

    .line 62
    sget v0, Lcom/android/server/display/BrightnessControllerUtility;->BRIGHTNESS_LEVELS:I

    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxConfig:[F

    .line 63
    sget v0, Lcom/android/server/display/BrightnessControllerUtility;->BRIGHTNESS_LEVELS:I

    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxMinConfig:[F

    .line 64
    sget v0, Lcom/android/server/display/BrightnessControllerUtility;->BRIGHTNESS_LEVELS:I

    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxMaxConfig:[F

    .line 58
    return-void
.end method

.method public readAutoBrightnessLuxConfig()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 68
    iget-object v3, p0, Lcom/android/server/display/BrightnessControllerUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 70
    .local v2, "resources":Landroid/content/res/Resources;
    const v3, 0x107002a

    .line 69
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 71
    .local v1, "lux":[I
    array-length v3, v1

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [F

    sput-object v3, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxConfig:[F

    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    add-int/lit8 v3, v3, 0x1

    if-ge v0, v3, :cond_1

    .line 73
    if-nez v0, :cond_0

    .line 74
    sget-object v3, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxConfig:[F

    const/4 v4, 0x0

    aput v4, v3, v0

    .line 72
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    sget-object v3, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxConfig:[F

    add-int/lit8 v4, v0, -0x1

    aget v4, v1, v4

    int-to-float v4, v4

    aput v4, v3, v0

    goto :goto_1

    .line 79
    :cond_1
    new-array v3, v5, [F

    fill-array-data v3, :array_0

    sput-object v3, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxMinConfig:[F

    .line 82
    new-array v3, v5, [F

    fill-array-data v3, :array_1

    sput-object v3, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxMaxConfig:[F

    .line 86
    const v3, 0x107002b

    .line 85
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    sput-object v3, Lcom/android/server/display/BrightnessControllerUtility;->mScreenBrightnessConfig:[I

    .line 67
    return-void

    .line 79
    :array_0
    .array-data 4
        0x0
        0x40000000    # 2.0f
        0x41200000    # 10.0f
        0x41a00000    # 20.0f
        0x44070000    # 540.0f
        0x44802000    # 1025.0f
        0x44fa0000    # 2000.0f
        0x452f0000    # 2800.0f
    .end array-data

    .line 82
    :array_1
    .array-data 4
        0x40a00000    # 5.0f
        0x41f00000    # 30.0f
        0x42dc0000    # 110.0f
        0x448fc000    # 1150.0f
        0x4500c000    # 2060.0f
        0x452f0000    # 2800.0f
        0x4583e000    # 4220.0f
        0x479c4000    # 80000.0f
    .end array-data
.end method

.method public resetAmbientLux(F)I
    .locals 3
    .param p1, "ambientLux"    # F

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    sget v2, Lcom/android/server/display/BrightnessControllerUtility;->BRIGHTNESS_LEVELS:I

    if-ge v1, v2, :cond_0

    .line 110
    sget-object v2, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxConfig:[F

    aget v2, v2, v1

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    .line 111
    add-int/lit8 v0, v1, 0x1

    .line 115
    :cond_0
    return v0

    .line 109
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
