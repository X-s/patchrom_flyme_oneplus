.class public Lcom/android/systemui_ex/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static DEVICE_14001:Ljava/lang/String;

.field public static DEVICE_14049:Ljava/lang/String;

.field public static DEVICE_15055:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static mDisplayLongLength:I

.field private static mDisplayShortLength:I

.field private static sDeviceTag:Ljava/lang/String;

.field private static sFeatureIsBlackTheme:Ljava/lang/Boolean;

.field private static sFeatureThreeKey:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 26
    const-string v0, "14001"

    sput-object v0, Lcom/android/systemui_ex/util/Utils;->DEVICE_14001:Ljava/lang/String;

    .line 27
    const-string v0, "14049"

    sput-object v0, Lcom/android/systemui_ex/util/Utils;->DEVICE_14049:Ljava/lang/String;

    .line 28
    const-string v0, "15055"

    sput-object v0, Lcom/android/systemui_ex/util/Utils;->DEVICE_15055:Ljava/lang/String;

    .line 29
    const-string v0, "Utils"

    sput-object v0, Lcom/android/systemui_ex/util/Utils;->TAG:Ljava/lang/String;

    .line 30
    const-string v0, ""

    sput-object v0, Lcom/android/systemui_ex/util/Utils;->sDeviceTag:Ljava/lang/String;

    .line 31
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/systemui_ex/util/Utils;->sFeatureIsBlackTheme:Ljava/lang/Boolean;

    .line 32
    sput-boolean v2, Lcom/android/systemui_ex/util/Utils;->sFeatureThreeKey:Z

    .line 33
    sput v1, Lcom/android/systemui_ex/util/Utils;->mDisplayLongLength:I

    .line 34
    sput v1, Lcom/android/systemui_ex/util/Utils;->mDisplayShortLength:I

    return-void
.end method

.method public static getDeviceTag()Ljava/lang/String;
    .locals 5

    .prologue
    .line 40
    sget-object v2, Lcom/android/systemui_ex/util/Utils;->sDeviceTag:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    sget-object v2, Lcom/android/systemui_ex/util/Utils;->sDeviceTag:Ljava/lang/String;

    .line 59
    .local v0, "device":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 45
    .end local v0    # "device":Ljava/lang/String;
    :cond_0
    :try_start_0
    const-string v2, "ro.product.device"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .restart local v0    # "device":Ljava/lang/String;
    const-string v2, "ONEPLUS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    sget-object v2, Lcom/android/systemui_ex/util/Utils;->DEVICE_14001:Ljava/lang/String;

    goto :goto_0

    .line 49
    :cond_1
    const-string v2, "OnePlus2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50
    sget-object v2, Lcom/android/systemui_ex/util/Utils;->DEVICE_14049:Ljava/lang/String;

    goto :goto_0

    .line 51
    :cond_2
    const-string v2, "SUM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "OnePlus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 52
    :cond_3
    sget-object v2, Lcom/android/systemui_ex/util/Utils;->DEVICE_15055:Ljava/lang/String;

    goto :goto_0

    .line 54
    :cond_4
    sget-object v2, Lcom/android/systemui_ex/util/Utils;->DEVICE_14001:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/systemui_ex/util/Utils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui_ex/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v2, ""

    goto :goto_0
.end method

.method public static getDisplayHeight(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orientation"    # I

    .prologue
    const/4 v1, -0x1

    .line 150
    sget v0, Lcom/android/systemui_ex/util/Utils;->mDisplayLongLength:I

    if-ne v0, v1, :cond_0

    sget v0, Lcom/android/systemui_ex/util/Utils;->mDisplayShortLength:I

    if-ne v0, v1, :cond_0

    .line 151
    invoke-static {p0}, Lcom/android/systemui_ex/util/Utils;->initDisplayLength(Landroid/content/Context;)V

    .line 154
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 155
    sget v0, Lcom/android/systemui_ex/util/Utils;->mDisplayShortLength:I

    .line 157
    :goto_0
    return v0

    :cond_1
    sget v0, Lcom/android/systemui_ex/util/Utils;->mDisplayLongLength:I

    goto :goto_0
.end method

.method public static getDisplayWidth(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orientation"    # I

    .prologue
    const/4 v1, -0x1

    .line 138
    sget v0, Lcom/android/systemui_ex/util/Utils;->mDisplayLongLength:I

    if-ne v0, v1, :cond_0

    sget v0, Lcom/android/systemui_ex/util/Utils;->mDisplayShortLength:I

    if-ne v0, v1, :cond_0

    .line 139
    invoke-static {p0}, Lcom/android/systemui_ex/util/Utils;->initDisplayLength(Landroid/content/Context;)V

    .line 142
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 143
    sget v0, Lcom/android/systemui_ex/util/Utils;->mDisplayLongLength:I

    .line 145
    :goto_0
    return v0

    :cond_1
    sget v0, Lcom/android/systemui_ex/util/Utils;->mDisplayShortLength:I

    goto :goto_0
.end method

.method private static initDisplayLength(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 163
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 164
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 165
    .local v1, "point":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 166
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sput v3, Lcom/android/systemui_ex/util/Utils;->mDisplayLongLength:I

    .line 167
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sput v3, Lcom/android/systemui_ex/util/Utils;->mDisplayShortLength:I

    .line 168
    return-void
.end method

.method public static initFeatures(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/systemui_ex/util/Utils;->sFeatureIsBlackTheme:Ljava/lang/Boolean;

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.threeStageKey.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui_ex/util/Utils;->sFeatureThreeKey:Z

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui_ex/util/Utils;->sDeviceTag:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public static isActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 183
    .local v0, "resolveInfo":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 184
    const/4 v1, 0x1

    .line 186
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isBackKeyRight(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 200
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_acc_key_define"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 202
    :goto_0
    return v1

    .line 200
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public static isBlackTheme()Z
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/android/systemui_ex/util/Utils;->sFeatureIsBlackTheme:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isDozeEnable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "doze_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isEnableWakeUpByNotification(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 68
    const/4 v1, 0x0

    .line 70
    .local v1, "value":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "oem_oneplus_screen_turnoff"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 75
    :goto_0
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->getDeviceTag()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/systemui_ex/util/Utils;->DEVICE_15055:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 76
    if-ne v1, v2, :cond_0

    .line 78
    :goto_1
    return v2

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    sget-object v4, Lcom/android/systemui_ex/util/Utils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui_ex/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    move v2, v3

    .line 76
    goto :goto_1

    .line 78
    :cond_1
    invoke-static {p0}, Lcom/android/systemui_ex/util/Utils;->isDozeEnable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    :goto_2
    move v2, v3

    goto :goto_1

    :cond_3
    if-ne v1, v2, :cond_2

    move v3, v2

    goto :goto_2
.end method

.method public static isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .param p0, "packagename"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 173
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return v2

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isPreventModeEnalbed(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 84
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_acc_anti_misoperation_screen"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 86
    :cond_0
    :goto_0
    return v1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public static showLogs()Z
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public static supportThreekeyFeature()Z
    .locals 1

    .prologue
    .line 191
    sget-boolean v0, Lcom/android/systemui_ex/util/Utils;->sFeatureThreeKey:Z

    return v0
.end method
