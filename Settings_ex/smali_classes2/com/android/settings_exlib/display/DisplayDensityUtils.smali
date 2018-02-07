.class public Lcom/android/settings_exlib/display/DisplayDensityUtils;
.super Ljava/lang/Object;
.source "DisplayDensityUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_exlib/display/DisplayDensityUtils$-void_clearForcedDisplayDensity_int_displayId_LambdaImpl0;,
        Lcom/android/settings_exlib/display/DisplayDensityUtils$-void_setForcedDisplayDensity_int_displayId_int_density_LambdaImpl0;
    }
.end annotation


# static fields
.field private static final DEFINDED_DP:I = 0x1a4

.field private static final LOG_TAG:Ljava/lang/String; = "DisplayDensityUtils"

.field private static final MAX_SCALE:F = 1.5f

.field private static final MIN_DIMENSION_DP:I = 0x140

.field private static final MIN_SCALE:F = 0.85f

.field private static final MIN_SCALE_INTERVAL:F = 0.09f

.field private static final SUMMARIES_LARGER:[I

.field private static final SUMMARIES_SMALLER:[I

.field private static final SUMMARY_CUSTOM:I

.field public static final SUMMARY_DEFAULT:I


# instance fields
.field private final mCurrentIndex:I

.field private final mDefaultDensity:I

.field private final mEntries:[Ljava/lang/String;

.field private final mValues:[I


# direct methods
.method static synthetic -com_android_settingslib_display_DisplayDensityUtils_lambda$1(II)V
    .locals 4
    .param p0, "displayId"    # I
    .param p1, "userId"    # I

    .prologue
    .line 244
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 245
    .local v1, "wm":Landroid/view/IWindowManager;
    invoke-interface {v1, p0, p1}, Landroid/view/IWindowManager;->clearForcedDisplayDensityForUser(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 0
    .end local v1    # "wm":Landroid/view/IWindowManager;
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "exc":Landroid/os/RemoteException;
    const-string/jumbo v2, "DisplayDensityUtils"

    const-string/jumbo v3, "Unable to clear forced display density setting"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic -com_android_settingslib_display_DisplayDensityUtils_lambda$2(III)V
    .locals 4
    .param p0, "displayId"    # I
    .param p1, "density"    # I
    .param p2, "userId"    # I

    .prologue
    .line 265
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 266
    .local v1, "wm":Landroid/view/IWindowManager;
    invoke-interface {v1, p0, p1, p2}, Landroid/view/IWindowManager;->setForcedDisplayDensityForUser(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 0
    .end local v1    # "wm":Landroid/view/IWindowManager;
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "exc":Landroid/os/RemoteException;
    const-string/jumbo v2, "DisplayDensityUtils"

    const-string/jumbo v3, "Unable to save forced display density setting"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    sget v0, Lcom/android/settings_exlib/R$string;->screen_zoom_summary_default:I

    sput v0, Lcom/android/settings_exlib/display/DisplayDensityUtils;->SUMMARY_DEFAULT:I

    .line 55
    sget v0, Lcom/android/settings_exlib/R$string;->screen_zoom_summary_custom:I

    sput v0, Lcom/android/settings_exlib/display/DisplayDensityUtils;->SUMMARY_CUSTOM:I

    .line 61
    new-array v0, v3, [I

    .line 63
    sget v1, Lcom/android/settings_exlib/R$string;->screen_zoom_summary_small:I

    aput v1, v0, v2

    .line 61
    sput-object v0, Lcom/android/settings_exlib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    .line 73
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 75
    sget v1, Lcom/android/settings_exlib/R$string;->screen_zoom_summary_large:I

    aput v1, v0, v2

    .line 76
    sget v1, Lcom/android/settings_exlib/R$string;->screen_zoom_summary_very_large:I

    aput v1, v0, v3

    .line 77
    sget v1, Lcom/android/settings_exlib/R$string;->screen_zoom_summary_extremely_large:I

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 73
    sput-object v0, Lcom/android/settings_exlib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/16 v22, 0x0

    .line 98
    invoke-static/range {v22 .. v22}, Lcom/android/settings_exlib/display/DisplayDensityUtils;->getDefaultDisplayDensity(I)I

    move-result v6

    .line 100
    .local v6, "defaultDensity":I
    if-gtz v6, :cond_0

    .line 101
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_exlib/display/DisplayDensityUtils;->mEntries:[Ljava/lang/String;

    .line 102
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_exlib/display/DisplayDensityUtils;->mValues:[I

    .line 103
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_exlib/display/DisplayDensityUtils;->mDefaultDensity:I

    .line 104
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_exlib/display/DisplayDensityUtils;->mCurrentIndex:I

    .line 105
    return-void

    .line 108
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 109
    .local v20, "res":Landroid/content/res/Resources;
    new-instance v14, Landroid/util/DisplayMetrics;

    invoke-direct {v14}, Landroid/util/DisplayMetrics;-><init>()V

    .line 110
    .local v14, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 112
    iget v4, v14, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 113
    .local v4, "currentDensity":I
    const/4 v5, -0x1

    .line 116
    .local v5, "currentDensityIndex":I
    iget v0, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    iget v0, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 117
    .local v15, "minDimensionPx":I
    mul-int/lit16 v0, v15, 0xa0

    move/from16 v22, v0

    move/from16 v0, v22

    div-int/lit16 v12, v0, 0x140

    .line 118
    .local v12, "maxDensity":I
    int-to-float v0, v12

    move/from16 v22, v0

    int-to-float v0, v6

    move/from16 v23, v0

    div-float v22, v22, v23

    const/high16 v23, 0x3fc00000    # 1.5f

    move/from16 v0, v23

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 119
    .local v13, "maxScale":F
    const v16, 0x3f59999a    # 0.85f

    .line 121
    .local v16, "minScale":F
    sget-object v22, Lcom/android/settings_exlib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v18, v0

    .line 123
    .local v18, "numLarger":I
    sget-object v22, Lcom/android/settings_exlib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v19, v0

    .line 127
    .local v19, "numSmaller":I
    add-int/lit8 v22, v19, 0x1

    add-int v22, v22, v18

    move/from16 v0, v22

    new-array v9, v0, [Ljava/lang/String;

    .line 128
    .local v9, "entries":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v21, v0

    .line 129
    .local v21, "values":[I
    const/4 v3, 0x0

    .line 131
    .local v3, "curIndex":I
    if-lez v19, :cond_2

    .line 132
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    const v23, 0x3e199998    # 0.14999998f

    div-float v11, v23, v22

    .line 135
    .local v11, "interval":F
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move/from16 v0, v19

    if-ge v10, v0, :cond_2

    .line 137
    sub-int v22, v19, v10

    mul-int/lit8 v22, v22, 0x28

    move/from16 v0, v22

    rsub-int v7, v0, 0x1a4

    .line 139
    .local v7, "density":I
    if-ne v4, v7, :cond_1

    .line 140
    move v5, v3

    .line 142
    :cond_1
    sget-object v22, Lcom/android/settings_exlib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    aget v22, v22, v10

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v9, v3

    .line 143
    aput v7, v21, v3

    .line 144
    add-int/lit8 v3, v3, 0x1

    .line 135
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 148
    .end local v7    # "density":I
    .end local v10    # "i":I
    .end local v11    # "interval":F
    :cond_2
    if-ne v4, v6, :cond_3

    .line 149
    move v5, v3

    .line 151
    :cond_3
    aput v6, v21, v3

    .line 152
    sget v22, Lcom/android/settings_exlib/display/DisplayDensityUtils;->SUMMARY_DEFAULT:I

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v9, v3

    .line 153
    add-int/lit8 v3, v3, 0x1

    .line 155
    if-lez v18, :cond_8

    .line 156
    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v22, v13, v22

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v11, v22, v23

    .line 157
    .restart local v11    # "interval":F
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_1
    move/from16 v0, v18

    if-ge v10, v0, :cond_8

    .line 160
    const/4 v7, 0x0

    .line 161
    .restart local v7    # "density":I
    if-nez v10, :cond_6

    .line 162
    const/16 v7, 0x1e0

    .line 169
    :cond_4
    :goto_2
    if-ne v4, v7, :cond_5

    .line 170
    move v5, v3

    .line 172
    :cond_5
    aput v7, v21, v3

    .line 173
    sget-object v22, Lcom/android/settings_exlib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    aget v22, v22, v10

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v9, v3

    .line 174
    add-int/lit8 v3, v3, 0x1

    .line 157
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 163
    :cond_6
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v10, v0, :cond_7

    .line 164
    const/16 v7, 0x1f4

    goto :goto_2

    .line 165
    :cond_7
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v10, v0, :cond_4

    .line 166
    const/16 v7, 0x21c

    goto :goto_2

    .line 179
    .end local v7    # "density":I
    .end local v10    # "i":I
    .end local v11    # "interval":F
    :cond_8
    if-ltz v5, :cond_9

    .line 180
    move v8, v5

    .line 194
    .local v8, "displayIndex":I
    :goto_3
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/settings_exlib/display/DisplayDensityUtils;->mDefaultDensity:I

    .line 195
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/settings_exlib/display/DisplayDensityUtils;->mCurrentIndex:I

    .line 196
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/settings_exlib/display/DisplayDensityUtils;->mEntries:[Ljava/lang/String;

    .line 197
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_exlib/display/DisplayDensityUtils;->mValues:[I

    .line 97
    return-void

    .line 184
    .end local v8    # "displayIndex":I
    :cond_9
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v17, v22, 0x1

    .line 185
    .local v17, "newLength":I
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v21

    .line 186
    aput v4, v21, v3

    .line 188
    move/from16 v0, v17

    invoke-static {v9, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "entries":[Ljava/lang/String;
    check-cast v9, [Ljava/lang/String;

    .line 189
    .restart local v9    # "entries":[Ljava/lang/String;
    sget v22, Lcom/android/settings_exlib/display/DisplayDensityUtils;->SUMMARY_CUSTOM:I

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, v23, v25

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v9, v3

    .line 191
    move v8, v3

    .restart local v8    # "displayIndex":I
    goto :goto_3
.end method

.method public static clearForcedDisplayDensity(I)V
    .locals 2
    .param p0, "displayId"    # I

    .prologue
    .line 241
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 242
    .local v0, "userId":I
    new-instance v1, Lcom/android/settings_exlib/display/DisplayDensityUtils$-void_clearForcedDisplayDensity_int_displayId_LambdaImpl0;

    invoke-direct {v1, p0, v0}, Lcom/android/settings_exlib/display/DisplayDensityUtils$-void_clearForcedDisplayDensity_int_displayId_LambdaImpl0;-><init>(II)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 240
    return-void
.end method

.method private static getDefaultDisplayDensity(I)I
    .locals 3
    .param p0, "displayId"    # I

    .prologue
    .line 225
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 226
    .local v1, "wm":Landroid/view/IWindowManager;
    invoke-interface {v1, p0}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 227
    .end local v1    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .line 228
    .local v0, "exc":Landroid/os/RemoteException;
    const/4 v2, -0x1

    return v2
.end method

.method public static setForcedDisplayDensity(II)V
    .locals 2
    .param p0, "displayId"    # I
    .param p1, "density"    # I

    .prologue
    .line 262
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 263
    .local v0, "userId":I
    new-instance v1, Lcom/android/settings_exlib/display/DisplayDensityUtils$-void_setForcedDisplayDensity_int_displayId_int_density_LambdaImpl0;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settings_exlib/display/DisplayDensityUtils$-void_setForcedDisplayDensity_int_displayId_int_density_LambdaImpl0;-><init>(III)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 261
    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/android/settings_exlib/display/DisplayDensityUtils;->mCurrentIndex:I

    return v0
.end method

.method public getDefaultDensity()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/android/settings_exlib/display/DisplayDensityUtils;->mDefaultDensity:I

    return v0
.end method

.method public getEntries()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/settings_exlib/display/DisplayDensityUtils;->mEntries:[Ljava/lang/String;

    return-object v0
.end method

.method public getValues()[I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/settings_exlib/display/DisplayDensityUtils;->mValues:[I

    return-object v0
.end method
