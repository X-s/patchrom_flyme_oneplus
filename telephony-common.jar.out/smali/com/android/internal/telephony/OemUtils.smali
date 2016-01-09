.class public Lcom/android/internal/telephony/OemUtils;
.super Ljava/lang/Object;
.source "OemUtils.java"


# static fields
.field public static Disable_Crossbinding_oemDCS:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "OemUtils"

.field static final OEM_FIRST_TIME_BOOT:Ljava/lang/String; = "oem_first_bootup"

.field static oemDCSinstance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x0

    sput-object v2, Lcom/android/internal/telephony/OemUtils;->oemDCSinstance:Ljava/lang/Object;

    .line 20
    const-string v2, "persist.radio.disable_flexmap"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/OemUtils;->Disable_Crossbinding_oemDCS:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFirstTimeBootAfterUpgrade(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    .line 69
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 70
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "oem_first_bootup"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 71
    .local v0, "firstbootup":I
    if-eq v3, v0, :cond_0

    .line 72
    const/4 v2, 0x0

    .line 74
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isOemDataCardSelectionEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 32
    :cond_0
    :goto_0
    return v0

    .line 29
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/OemUtils;->oemDCSinstance:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 30
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string v0, "OemUtils"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 40
    const-string v0, "OemUtils"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method public static setFirstTimeBootAfterUpgrade(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 57
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 58
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "oem_first_bootup"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 59
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 60
    return-void
.end method

.method public static setoemDCSinstance(Ljava/lang/Object;)V
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 44
    const-string v0, "set oemDCS instance."

    invoke-static {v0}, Lcom/android/internal/telephony/OemUtils;->log(Ljava/lang/String;)V

    .line 45
    sput-object p0, Lcom/android/internal/telephony/OemUtils;->oemDCSinstance:Ljava/lang/Object;

    .line 46
    return-void
.end method
