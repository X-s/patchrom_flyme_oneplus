.class Lcom/android/settings_ex/notification/NotificationSettingsUtil;
.super Ljava/lang/Object;
.source "NotificationSettingsUtil.java"


# static fields
.field static final AlbumPkg:Ljava/lang/String; = "com.android.gallery3d"

.field static final CalculatorPkg:Ljava/lang/String; = "com.android.calculator2"

.field static final CalendarPkg:Ljava/lang/String; = "com.oneplus.calendar"

.field static final CameraPkg:Ljava/lang/String; = "com.android.camera2"

.field static final DeskclockPkg:Ljava/lang/String; = "com.oneplus.deskclock"

.field static final DownloadPkg:Ljava/lang/String; = "com.android.providers.downloads.ui"

.field static final MailPkg:Ljava/lang/String; = "com.netease.mobimail.oneplus"

.field static final MmsPkg:Ljava/lang/String; = "com.android.mms"

.field static final OPTunerPkg:Ljava/lang/String; = "com.oneplus.tuner"

.field static final PhonePkg:Ljava/lang/String; = "com.android.dialer"

.field static final QQPkg:Ljava/lang/String; = "com.tencent.mobileqq"

.field static final RecorderPkg:Ljava/lang/String; = "com.oneplus.soundrecorder"

.field static final SettingsPkg:Ljava/lang/String; = "com.android.settings_ex"

.field static final SimToolPkg:Ljava/lang/String; = "com.android.stk"

.field static final TeleComPkg:Ljava/lang/String; = "com.android.server.telecom"

.field static final WeChatPkg:Ljava/lang/String; = "com.tencent.mm"

.field static final filteredOutAppList:[Ljava/lang/String;

.field static final filteredOutCanSettingAppList:[Ljava/lang/String;

.field static final forbidNotificationSettingOptionApps:[Ljava/lang/String;

.field static final inCallUiPkg:Ljava/lang/String; = "com.android.incallui"

.field static final mFilteredOutCanSettingAppListSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final mFilteredOutInAppListSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final mForbiddenNotficationSettingAppSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.dialer"

    aput-object v1, v0, v3

    const-string v1, "com.android.mms"

    aput-object v1, v0, v4

    const-string v1, "com.oneplus.calendar"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "com.oneplus.deskclock"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.oneplus.tuner"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.calculator2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.camera2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.providers.downloads.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.android.gallery3d"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.oneplus.soundrecorder"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.android.stk"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/notification/NotificationSettingsUtil;->filteredOutAppList:[Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/android/settings_ex/notification/NotificationSettingsUtil;->filteredOutAppList:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/settings_ex/notification/NotificationSettingsUtil;->mFilteredOutInAppListSet:Ljava/util/HashSet;

    .line 55
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.android.server.telecom"

    aput-object v1, v0, v3

    const-string v1, "com.android.incallui"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings_ex/notification/NotificationSettingsUtil;->forbidNotificationSettingOptionApps:[Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/android/settings_ex/notification/NotificationSettingsUtil;->forbidNotificationSettingOptionApps:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/settings_ex/notification/NotificationSettingsUtil;->mForbiddenNotficationSettingAppSet:Ljava/util/HashSet;

    .line 62
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.android.settings_ex"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings_ex/notification/NotificationSettingsUtil;->filteredOutCanSettingAppList:[Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/android/settings_ex/notification/NotificationSettingsUtil;->filteredOutCanSettingAppList:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/settings_ex/notification/NotificationSettingsUtil;->mFilteredOutCanSettingAppListSet:Ljava/util/HashSet;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isAppNotificationFilteredOutInSettingsList(Ljava/lang/String;)Z
    .locals 1
    .param p0, "appName"    # Ljava/lang/String;

    .prologue
    .line 68
    sget-object v0, Lcom/android/settings_ex/notification/NotificationSettingsUtil;->mFilteredOutInAppListSet:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings_ex/notification/NotificationSettingsUtil;->mFilteredOutCanSettingAppListSet:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static shouldNotModifyNotificationSettingOptions(Ljava/lang/String;)Z
    .locals 1
    .param p0, "appName"    # Ljava/lang/String;

    .prologue
    .line 74
    sget-object v0, Lcom/android/settings_ex/notification/NotificationSettingsUtil;->mFilteredOutInAppListSet:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings_ex/notification/NotificationSettingsUtil;->mForbiddenNotficationSettingAppSet:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
