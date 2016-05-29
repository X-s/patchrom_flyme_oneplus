.class public Lcom/android/settings_ex/notification/ZenModeSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ZenModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;,
        Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;,
        Lcom/android/settings_ex/notification/ZenModeSettings$SettingPrefWithCallback;
    }
.end annotation


# static fields
.field private static final DAY_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final DEBUG:Z = true

.field private static final KEY_ALARM_INFO:Ljava/lang/String; = "alarm_info"

.field private static final KEY_AUTOMATION:Ljava/lang/String; = "automation"

.field private static final KEY_CALLS:Ljava/lang/String; = "calls"

.field private static final KEY_CONDITION_PROVIDERS:Ljava/lang/String; = "manage_condition_providers"

.field private static final KEY_DAYS:Ljava/lang/String; = "days"

.field private static final KEY_DOWNTIME:Ljava/lang/String; = "downtime"

.field private static final KEY_DOWNTIME_MODE:Ljava/lang/String; = "downtime_mode"

.field private static final KEY_END_TIME:Ljava/lang/String; = "end_time"

.field private static final KEY_ENTRY:Ljava/lang/String; = "entry"

.field private static final KEY_EVENTS:Ljava/lang/String; = "events"

.field private static final KEY_FAVOURITE_CONTACTS:Ljava/lang/String; = "favourite_contacts_settings"

.field private static final KEY_IMPORTANT:Ljava/lang/String; = "important"

.field private static final KEY_MESSAGES:Ljava/lang/String; = "messages"

.field private static final KEY_REPEAT_INCALLER_UNLIMIT_ENABLE:Ljava/lang/String; = "repeat_incaller_unlimit_enable"

.field private static final KEY_SPEC_INCALL_SETTINGS:Ljava/lang/String; = "spec_incall_settings"

.field private static final KEY_STARRED:Ljava/lang/String; = "starred"

.field private static final KEY_START_TIME:Ljava/lang/String; = "start_time"

.field private static final KEY_ZEN_MODE:Ljava/lang/String; = "zen_mode"

.field private static final KEY_ZEN_MODE_CATEGORY:Ljava/lang/String; = "zen_mode_category"

.field private static final KEY_ZEN_MODE_ENABLE:Ljava/lang/String; = "zen_mode_enable"

.field private static final KEY_ZEN_SETTINGS:Ljava/lang/String; = "zen_mode"

.field private static final KEY_ZEN_SETTINGS_ENABLE:Ljava/lang/String; = "zen_mode_enable"

.field private static final OEM_FAVORITES_PEOPLE:Ljava/lang/String; = "com.oneplus.contacts.action.OP_FAVORITES_PEOPLE"

.field private static final PREF_ZEN_MODE:Lcom/android/settings_ex/notification/ZenModeSettings$SettingPrefWithCallback;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "ZenModeSettings"


# instance fields
.field private mAutomationCategory:Landroid/preference/PreferenceCategory;

.field private mCalls:Landroid/preference/SwitchPreference;

.field private mConditionProviders:Landroid/preference/Preference;

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private mContext:Landroid/content/Context;

.field private mDays:Landroid/preference/Preference;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDisableListeners:Z

.field private mDowntimeMode:Lcom/android/settings_ex/notification/DropDownPreference;

.field private mDowntimeSupported:Z

.field private mEnd:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

.field private mEntry:Landroid/preference/Preference;

.field private mEvents:Landroid/preference/SwitchPreference;

.field private mFavouritePreference:Landroid/preference/Preference;

.field private final mHandler:Landroid/os/Handler;

.field private mMessages:Landroid/preference/SwitchPreference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mRepeatIncallPreference:Landroid/preference/SwitchPreference;

.field private mSelectID:I

.field private final mSettingsObserver:Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;

.field private mSpecIncallPreference:Landroid/preference/Preference;

.field private mStarred:Lcom/android/settings_ex/notification/DropDownPreference;

.field private mStart:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

.field private mZenCategory:Landroid/preference/PreferenceCategory;

.field private mZenModeEnablePreference:Landroid/preference/SwitchPreference;

.field private mZenmodePreference:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 93
    new-instance v0, Lcom/android/settings_ex/notification/ZenModeSettings$1;

    const/4 v1, 0x1

    const-string v2, "zen_mode"

    const-string v3, "zen_mode"

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/notification/ZenModeSettings$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings_ex/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/android/settings_ex/notification/ZenModeSettings$SettingPrefWithCallback;

    .line 111
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings_ex/notification/ZenModeSettings;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    .line 758
    new-instance v0, Lcom/android/settings_ex/notification/ZenModeSettings$16;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/ZenModeSettings$16;-><init>()V

    sput-object v0, Lcom/android/settings_ex/notification/ZenModeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void

    .line 93
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mHandler:Landroid/os/Handler;

    .line 134
    new-instance v0, Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;-><init>(Lcom/android/settings_ex/notification/ZenModeSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mSettingsObserver:Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mSelectID:I

    .line 941
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/notification/ZenModeSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettings;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDisableListeners:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/service/notification/ZenModeConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettings;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettings;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettings;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettings;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettings;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettings;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettings;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600()Lcom/android/settings_ex/notification/ZenModeSettings$SettingPrefWithCallback;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/settings_ex/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/android/settings_ex/notification/ZenModeSettings$SettingPrefWithCallback;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/notification/ZenModeSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettings;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->updateZenModeConfig()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettings;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mZenmodePreference:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/notification/ZenModeSettings;Landroid/service/notification/ZenModeConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettings;
    .param p1, "x1"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/ZenModeSettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/notification/ZenModeSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettings;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->updateDays()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettings;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/notification/ZenModeSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettings;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->refreshAutomationSection()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/settings_ex/notification/ZenModeSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettings;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$700(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-static {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->allKeyTitles(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-static {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->isDowntimeSupported(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettings;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static allKeyTitles(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 116
    .local v0, "rt":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const v1, 0x7f090adb

    const-string v2, "important"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    const v1, 0x7f090ae6

    const-string v2, "calls"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 118
    const v1, 0x7f090aaa

    const-string v2, "zen_mode"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    const v1, 0x7f090ae7

    const-string v2, "messages"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    const v1, 0x7f090aeb

    const-string v2, "starred"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    const v1, 0x7f090aec

    const-string v2, "events"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    const v1, 0x7f090aed

    const-string v2, "alarm_info"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    const v1, 0x7f090adc

    const-string v2, "downtime"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    const v1, 0x7f090add

    const-string v2, "days"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 125
    const v1, 0x7f090af2

    const-string v2, "start_time"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    const v1, 0x7f090af3

    const-string v2, "end_time"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    const v1, 0x7f090adf

    const-string v2, "downtime_mode"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    const v1, 0x7f090ae2

    const-string v2, "automation"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    const v1, 0x7f090aca

    const-string v2, "manage_condition_providers"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 130
    return-object v0
.end method

.method private getEntryConditionSummary()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 602
    const-string v7, "notification"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v4

    .line 606
    .local v4, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v4}, Landroid/app/INotificationManager;->getAutomaticZenModeConditions()[Landroid/service/notification/Condition;

    move-result-object v0

    .line 607
    .local v0, "automatic":[Landroid/service/notification/Condition;
    if-eqz v0, :cond_0

    array-length v7, v0

    if-nez v7, :cond_1

    .line 620
    .end local v0    # "automatic":[Landroid/service/notification/Condition;
    :cond_0
    :goto_0
    return-object v6

    .line 610
    .restart local v0    # "automatic":[Landroid/service/notification/Condition;
    :cond_1
    const v7, 0x7f090ae4

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 611
    .local v1, "divider":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 612
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v0

    if-ge v3, v7, :cond_3

    .line 613
    if-lez v3, :cond_2

    .line 614
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    :cond_2
    aget-object v7, v0, v3

    iget-object v7, v7, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 617
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 618
    .end local v0    # "automatic":[Landroid/service/notification/Condition;
    .end local v1    # "divider":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 619
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "ZenModeSettings"

    const-string v8, "Error calling getAutomaticZenModeConditions"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 4

    .prologue
    .line 672
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 676
    .local v1, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 679
    :goto_0
    return-object v2

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ZenModeSettings"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 679
    new-instance v2, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig;-><init>()V

    goto :goto_0
.end method

.method private static isDowntimeSupported(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 753
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string v1, "downtime"

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->isSystemConditionProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private refreshAutomationSection()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 573
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mConditionProviders:Landroid/preference/Preference;

    if-eqz v3, :cond_0

    .line 574
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-static {v3}, Lcom/android/settings_ex/notification/ConditionProviderSettings;->getProviderCount(Landroid/content/pm/PackageManager;)I

    move-result v2

    .line 575
    .local v2, "total":I
    if-nez v2, :cond_1

    .line 576
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mAutomationCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 599
    .end local v2    # "total":I
    :cond_0
    :goto_0
    return-void

    .line 578
    .restart local v2    # "total":I
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings_ex/notification/ConditionProviderSettings;->getEnabledProviderCount(Landroid/content/Context;)I

    move-result v1

    .line 580
    .local v1, "n":I
    if-nez v1, :cond_3

    .line 581
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mConditionProviders:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090acb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 591
    :goto_1
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getEntryConditionSummary()Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "entrySummary":Ljava/lang/String;
    if-eqz v1, :cond_2

    if-nez v0, :cond_4

    .line 593
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mEntry:Landroid/preference/Preference;

    const v4, 0x7f090ae5

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 584
    .end local v0    # "entrySummary":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mConditionProviders:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100009

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 595
    .restart local v0    # "entrySummary":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mEntry:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    .locals 6
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 684
    const-string v3, "notification"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 688
    .local v1, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v2

    .line 689
    .local v2, "success":Z
    if-eqz v2, :cond_0

    .line 690
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 692
    const-string v3, "ZenModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saved mConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->updateEndSummary()V

    .line 694
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->updateStarredEnabled()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    .end local v2    # "success":Z
    :cond_0
    :goto_0
    return v2

    .line 697
    :catch_0
    move-exception v0

    .line 698
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ZenModeSettings"

    const-string v4, "Error calling NoMan"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 699
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateControls()V
    .locals 3

    .prologue
    .line 549
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDisableListeners:Z

    .line 550
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mCalls:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mCalls:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mMessages:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 554
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mStarred:Lcom/android/settings_ex/notification/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 555
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mEvents:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 556
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->updateStarredEnabled()V

    .line 557
    iget-boolean v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDowntimeSupported:Z

    if-eqz v0, :cond_1

    .line 558
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->updateDays()V

    .line 559
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mStart:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;->setTime(II)V

    .line 560
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mEnd:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;->setTime(II)V

    .line 561
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDowntimeMode:Lcom/android/settings_ex/notification/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->sleepNone:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 563
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDisableListeners:Z

    .line 564
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->refreshAutomationSection()V

    .line 565
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->updateEndSummary()V

    .line 566
    return-void
.end method

.method private updateDays()V
    .locals 8

    .prologue
    .line 500
    iget-object v6, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v6, :cond_4

    .line 501
    iget-object v6, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v6, v6, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->tryParseDays(Ljava/lang/String;)[I

    move-result-object v2

    .line 502
    .local v2, "days":[I
    if-eqz v2, :cond_4

    array-length v6, v2

    if-eqz v6, :cond_4

    .line 503
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 505
    .local v0, "c":Ljava/util/Calendar;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v6, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->DAYS:[I

    array-length v6, v6

    if-ge v3, v6, :cond_3

    .line 506
    sget-object v6, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->DAYS:[I

    aget v1, v6, v3

    .line 507
    .local v1, "day":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v6, v2

    if-ge v4, v6, :cond_1

    .line 508
    aget v6, v2, v4

    if-ne v1, v6, :cond_2

    .line 509
    const/4 v6, 0x7

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 510
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 511
    iget-object v6, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f090ae4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    :cond_0
    sget-object v6, Lcom/android/settings_ex/notification/ZenModeSettings;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 507
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 519
    .end local v1    # "day":I
    .end local v4    # "j":I
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 520
    iget-object v6, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 521
    iget-object v6, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 528
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v2    # "days":[I
    .end local v3    # "i":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :goto_2
    return-void

    .line 526
    :cond_4
    iget-object v6, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    const v7, 0x7f090ade

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 527
    iget-object v6, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    goto :goto_2
.end method

.method private updateEndSummary()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 531
    iget-boolean v5, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDowntimeSupported:Z

    if-nez v5, :cond_0

    .line 546
    :goto_0
    return-void

    .line 533
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v5, v5, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    mul-int/lit8 v5, v5, 0x3c

    iget-object v6, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v6, v6, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    add-int v2, v5, v6

    .line 535
    .local v2, "startMin":I
    iget-object v5, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v5, v5, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    mul-int/lit8 v5, v5, 0x3c

    iget-object v6, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v6, v6, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    add-int v0, v5, v6

    .line 536
    .local v0, "endMin":I
    if-lt v2, v0, :cond_1

    const/4 v1, 0x1

    .line 538
    .local v1, "nextDay":Z
    :goto_1
    iget-object v5, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v5, v5, Landroid/service/notification/ZenModeConfig;->sleepNone:Z

    if-eqz v5, :cond_3

    .line 539
    if-eqz v1, :cond_2

    const v3, 0x7f090af6

    .line 545
    .local v3, "summaryFormat":I
    :goto_2
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mEnd:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    invoke-virtual {v4, v3}, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;->setSummaryFormat(I)V

    goto :goto_0

    .end local v1    # "nextDay":Z
    .end local v3    # "summaryFormat":I
    :cond_1
    move v1, v4

    .line 536
    goto :goto_1

    .line 539
    .restart local v1    # "nextDay":Z
    :cond_2
    const v3, 0x7f090af5

    goto :goto_2

    .line 542
    :cond_3
    if-eqz v1, :cond_4

    const v3, 0x7f090af4

    .restart local v3    # "summaryFormat":I
    :goto_3
    goto :goto_2

    .end local v3    # "summaryFormat":I
    :cond_4
    move v3, v4

    goto :goto_3
.end method

.method private updateSpecIncallSettingStatus(I)V
    .locals 3
    .param p1, "resid"    # I

    .prologue
    .line 1142
    const-string v0, ""

    .line 1144
    .local v0, "summary":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1160
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mSpecIncallPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 1161
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mSpecIncallPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1164
    :cond_0
    return-void

    .line 1146
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1148
    goto :goto_0

    .line 1150
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1152
    goto :goto_0

    .line 1154
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1144
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateStarredEnabled()V
    .locals 2

    .prologue
    .line 569
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mStarred:Lcom/android/settings_ex/notification/DropDownPreference;

    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/notification/DropDownPreference;->setEnabled(Z)V

    .line 570
    return-void

    .line 569
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateVolumeSeekbarStatus()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1026
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mRepeatIncallPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 1027
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mRepeatIncallPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "oem_three_key_define"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1031
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mZenmodePreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mZenmodePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_three_key_define"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mEvents:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mRepeatIncallPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1045
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 1027
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1033
    goto :goto_1
.end method

.method private updateZenModeConfig()V
    .locals 4

    .prologue
    .line 662
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 663
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 669
    :goto_0
    return-void

    .line 665
    :cond_0
    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 667
    const-string v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateZenModeConfig mConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->updateControls()V

    goto :goto_0
.end method


# virtual methods
.method protected cancelDialog(I)V
    .locals 2
    .param p1, "oldSettingsValue"    # I

    .prologue
    .line 748
    sget-object v0, Lcom/android/settings_ex/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/android/settings_ex/notification/ZenModeSettings$SettingPrefWithCallback;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/notification/ZenModeSettings$SettingPrefWithCallback;->setValueWithoutCallback(Landroid/content/Context;I)Z

    .line 749
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDialog:Landroid/app/AlertDialog;

    .line 750
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 183
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    .line 185
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 187
    const v4, 0x7f060079

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/notification/ZenModeSettings;->addPreferencesFromResource(I)V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 190
    .local v3, "root":Landroid/preference/PreferenceScreen;
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 192
    const-string v4, "ZenModeSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loaded mConfig="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    sget-object v4, Lcom/android/settings_ex/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/android/settings_ex/notification/ZenModeSettings$SettingPrefWithCallback;

    invoke-virtual {v4, p0}, Lcom/android/settings_ex/notification/ZenModeSettings$SettingPrefWithCallback;->init(Lcom/android/settings_ex/SettingsPreferenceFragment;)Landroid/preference/Preference;

    .line 195
    sget-object v4, Lcom/android/settings_ex/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/android/settings_ex/notification/ZenModeSettings$SettingPrefWithCallback;

    new-instance v5, Lcom/android/settings_ex/notification/ZenModeSettings$2;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/notification/ZenModeSettings$2;-><init>(Lcom/android/settings_ex/notification/ZenModeSettings;)V

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/notification/ZenModeSettings$SettingPrefWithCallback;->setCallback(Lcom/android/settings_ex/notification/ZenModeSettings$SettingPrefWithCallback$Callback;)V

    .line 206
    const-string v4, "zen_mode"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/notification/ZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 209
    const-string v4, "important"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 212
    .local v1, "important":Landroid/preference/PreferenceCategory;
    const-string v4, "calls"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mCalls:Landroid/preference/SwitchPreference;

    .line 213
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mCalls:Landroid/preference/SwitchPreference;

    new-instance v5, Lcom/android/settings_ex/notification/ZenModeSettings$3;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/notification/ZenModeSettings$3;-><init>(Lcom/android/settings_ex/notification/ZenModeSettings;)V

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 232
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mCalls:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 235
    const-string v4, "messages"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mMessages:Landroid/preference/SwitchPreference;

    .line 236
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mMessages:Landroid/preference/SwitchPreference;

    new-instance v5, Lcom/android/settings_ex/notification/ZenModeSettings$4;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/notification/ZenModeSettings$4;-><init>(Lcom/android/settings_ex/notification/ZenModeSettings;)V

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 257
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mMessages:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 260
    const-string v4, "starred"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/notification/DropDownPreference;

    iput-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mStarred:Lcom/android/settings_ex/notification/DropDownPreference;

    .line 261
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mStarred:Lcom/android/settings_ex/notification/DropDownPreference;

    const v5, 0x7f090ae9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/settings_ex/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 263
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mStarred:Lcom/android/settings_ex/notification/DropDownPreference;

    const v5, 0x7f090aeb

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/settings_ex/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 265
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mStarred:Lcom/android/settings_ex/notification/DropDownPreference;

    const v5, 0x7f090aea

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/settings_ex/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 267
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mStarred:Lcom/android/settings_ex/notification/DropDownPreference;

    new-instance v5, Lcom/android/settings_ex/notification/ZenModeSettings$5;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/notification/ZenModeSettings$5;-><init>(Lcom/android/settings_ex/notification/ZenModeSettings;)V

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/notification/DropDownPreference;->setCallback(Lcom/android/settings_ex/notification/DropDownPreference$Callback;)V

    .line 284
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mStarred:Lcom/android/settings_ex/notification/DropDownPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 289
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mStarred:Lcom/android/settings_ex/notification/DropDownPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 292
    const-string v4, "events"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mEvents:Landroid/preference/SwitchPreference;

    .line 293
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mEvents:Landroid/preference/SwitchPreference;

    new-instance v5, Lcom/android/settings_ex/notification/ZenModeSettings$6;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/notification/ZenModeSettings$6;-><init>(Lcom/android/settings_ex/notification/ZenModeSettings;)V

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 310
    const-string v4, "favourite_contacts_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/notification/ZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mFavouritePreference:Landroid/preference/Preference;

    .line 311
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mFavouritePreference:Landroid/preference/Preference;

    new-instance v5, Lcom/android/settings_ex/notification/ZenModeSettings$7;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/notification/ZenModeSettings$7;-><init>(Lcom/android/settings_ex/notification/ZenModeSettings;)V

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 327
    const-string v4, "downtime"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 329
    .local v0, "downtime":Landroid/preference/PreferenceCategory;
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings_ex/notification/ZenModeSettings;->isDowntimeSupported(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDowntimeSupported:Z

    .line 330
    iget-boolean v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDowntimeSupported:Z

    if-nez v4, :cond_1

    .line 331
    const-string v4, "downtime"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/notification/ZenModeSettings;->removePreference(Ljava/lang/String;)V

    .line 453
    :goto_0
    const-string v4, "automation"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/notification/ZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mAutomationCategory:Landroid/preference/PreferenceCategory;

    .line 454
    const-string v4, "entry"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/notification/ZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mEntry:Landroid/preference/Preference;

    .line 455
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mEntry:Landroid/preference/Preference;

    new-instance v5, Lcom/android/settings_ex/notification/ZenModeSettings$12;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/notification/ZenModeSettings$12;-><init>(Lcom/android/settings_ex/notification/ZenModeSettings;)V

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 471
    const-string v4, "manage_condition_providers"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/notification/ZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mConditionProviders:Landroid/preference/Preference;

    .line 473
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->updateControls()V

    .line 478
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 479
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mAutomationCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 481
    const-string v4, "spec_incall_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/notification/ZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mSpecIncallPreference:Landroid/preference/Preference;

    .line 483
    const-string v4, "repeat_incaller_unlimit_enable"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/notification/ZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mRepeatIncallPreference:Landroid/preference/SwitchPreference;

    .line 484
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mRepeatIncallPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 486
    const-string v4, "zen_mode_enable"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/notification/ZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mZenmodePreference:Landroid/preference/SwitchPreference;

    .line 487
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mZenmodePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 489
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "oem.threeStageKey.support"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v7, :cond_0

    .line 492
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mZenmodePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 497
    :cond_0
    return-void

    .line 333
    :cond_1
    const-string v4, "days"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    .line 334
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    new-instance v5, Lcom/android/settings_ex/notification/ZenModeSettings$8;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/notification/ZenModeSettings$8;-><init>(Lcom/android/settings_ex/notification/ZenModeSettings;)V

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 370
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 372
    .local v2, "mgr":Landroid/app/FragmentManager;
    new-instance v4, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    iget-object v5, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v2}, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mStart:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    .line 373
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mStart:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    const-string v5, "start_time"

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    .line 374
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mStart:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    const v5, 0x7f090af2

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;->setTitle(I)V

    .line 375
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mStart:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    new-instance v5, Lcom/android/settings_ex/notification/ZenModeSettings$9;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/notification/ZenModeSettings$9;-><init>(Lcom/android/settings_ex/notification/ZenModeSettings;)V

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;->setCallback(Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference$Callback;)V

    .line 397
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mStart:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 398
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mStart:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    iget-object v5, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    .line 400
    new-instance v4, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    iget-object v5, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v2}, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mEnd:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    .line 401
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mEnd:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    const-string v5, "end_time"

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    .line 402
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mEnd:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    const v5, 0x7f090af3

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;->setTitle(I)V

    .line 403
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mEnd:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    new-instance v5, Lcom/android/settings_ex/notification/ZenModeSettings$10;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/notification/ZenModeSettings$10;-><init>(Lcom/android/settings_ex/notification/ZenModeSettings;)V

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;->setCallback(Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference$Callback;)V

    .line 425
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mEnd:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 426
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mEnd:Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;

    iget-object v5, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/notification/ZenModeSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    .line 428
    const-string v4, "downtime_mode"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/notification/DropDownPreference;

    iput-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDowntimeMode:Lcom/android/settings_ex/notification/DropDownPreference;

    .line 430
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDowntimeMode:Lcom/android/settings_ex/notification/DropDownPreference;

    const v5, 0x7f090ae0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/settings_ex/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 432
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDowntimeMode:Lcom/android/settings_ex/notification/DropDownPreference;

    const v5, 0x7f090ae1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/settings_ex/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 433
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDowntimeMode:Lcom/android/settings_ex/notification/DropDownPreference;

    new-instance v5, Lcom/android/settings_ex/notification/ZenModeSettings$11;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/notification/ZenModeSettings$11;-><init>(Lcom/android/settings_ex/notification/ZenModeSettings;)V

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/notification/DropDownPreference;->setCallback(Lcom/android/settings_ex/notification/DropDownPreference$Callback;)V

    .line 449
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDowntimeMode:Lcom/android/settings_ex/notification/DropDownPreference;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/notification/DropDownPreference;->setOrder(I)V

    .line 450
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDowntimeMode:Lcom/android/settings_ex/notification/DropDownPreference;

    iget-object v5, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/notification/DropDownPreference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 656
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 657
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mSettingsObserver:Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;->unregister()V

    .line 659
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1050
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v7, "zen_mode_enable"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1055
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mZenmodePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    .line 1056
    .local v1, "mPreferenceStatus":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "oem_zen_mode_enable"

    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mZenmodePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    :goto_0
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1064
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mZenmodePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1066
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "oem_three_key_define"

    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mZenmodePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x3

    :goto_1
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1070
    const/4 v2, 0x3

    .line 1073
    .local v2, "mStatus":I
    if-eqz v1, :cond_2

    .line 1074
    const/4 v2, 0x2

    .line 1079
    :goto_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1080
    .local v3, "mThreeIntent":Landroid/content/Intent;
    const-string v4, "com.oem.intent.action.THREE_KEY_MODE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1081
    const-string v4, "switch_state"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1082
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1120
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "oem_zen_status"

    iget-object v8, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mZenmodePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v8}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v8

    if-nez v8, :cond_5

    :goto_4
    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1137
    .end local v1    # "mPreferenceStatus":Z
    .end local v2    # "mStatus":I
    .end local v3    # "mThreeIntent":Landroid/content/Intent;
    :goto_5
    return v6

    .restart local v1    # "mPreferenceStatus":Z
    :cond_0
    move v4, v6

    .line 1056
    goto :goto_0

    .line 1066
    :cond_1
    const/4 v4, 0x2

    goto :goto_1

    .line 1076
    .restart local v2    # "mStatus":I
    :cond_2
    const/4 v2, 0x3

    goto :goto_2

    .line 1088
    .end local v2    # "mStatus":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "oem_silent_status"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1091
    .local v0, "mMutemode":I
    if-nez v0, :cond_4

    .line 1093
    const/4 v2, 0x3

    .line 1095
    .restart local v2    # "mStatus":I
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1096
    .restart local v3    # "mThreeIntent":Landroid/content/Intent;
    const-string v4, "com.oem.intent.action.THREE_KEY_MODE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1098
    const-string v4, "switch_state"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1100
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    .line 1104
    .end local v2    # "mStatus":I
    .end local v3    # "mThreeIntent":Landroid/content/Intent;
    :cond_4
    const/4 v2, 0x1

    .line 1106
    .restart local v2    # "mStatus":I
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1107
    .restart local v3    # "mThreeIntent":Landroid/content/Intent;
    const-string v4, "com.oem.intent.action.THREE_KEY_MODE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1109
    const-string v4, "switch_state"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1111
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    .end local v0    # "mMutemode":I
    :cond_5
    move v5, v6

    .line 1120
    goto :goto_4

    .line 1128
    .end local v1    # "mPreferenceStatus":Z
    .end local v2    # "mStatus":I
    .end local v3    # "mThreeIntent":Landroid/content/Intent;
    :cond_6
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v7, "repeat_incaller_unlimit_enable"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1131
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "oem_repeate_incall_unlimite"

    iget-object v8, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mRepeatIncallPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v8}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v8

    if-nez v8, :cond_7

    :goto_6
    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    :cond_7
    move v5, v6

    goto :goto_6

    :cond_8
    move v6, v5

    .line 1137
    goto :goto_5
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 626
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 627
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->updateControls()V

    .line 628
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mSettingsObserver:Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;

    invoke-virtual {v2}, Lcom/android/settings_ex/notification/ZenModeSettings$SettingsObserver;->register()V

    .line 633
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_agree_incall_people"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mSelectID:I

    .line 636
    iget v2, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mSelectID:I

    invoke-direct {p0, v2}, Lcom/android/settings_ex/notification/ZenModeSettings;->updateSpecIncallSettingStatus(I)V

    .line 638
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mRepeatIncallPreference:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_repeate_incall_unlimite"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 652
    return-void

    :cond_0
    move v0, v1

    .line 638
    goto :goto_0
.end method

.method protected putZenModeSetting(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 705
    return-void
.end method

.method protected showConditionSelection(I)V
    .locals 7
    .param p1, "newSettingsValue"    # I

    .prologue
    .line 708
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 744
    :goto_0
    return-void

    .line 711
    :cond_0
    new-instance v3, Lcom/android/settings_ex/notification/ZenModeConditionSelection;

    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/settings_ex/notification/ZenModeConditionSelection;-><init>(Landroid/content/Context;)V

    .line 713
    .local v3, "zenModeConditionSelection":Lcom/android/settings_ex/notification/ZenModeConditionSelection;
    new-instance v1, Lcom/android/settings_ex/notification/ZenModeSettings$13;

    invoke-direct {v1, p0, v3}, Lcom/android/settings_ex/notification/ZenModeSettings$13;-><init>(Lcom/android/settings_ex/notification/ZenModeSettings;Lcom/android/settings_ex/notification/ZenModeConditionSelection;)V

    .line 720
    .local v1, "positiveListener":Landroid/content/DialogInterface$OnClickListener;
    sget-object v4, Lcom/android/settings_ex/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/android/settings_ex/notification/ZenModeSettings$SettingPrefWithCallback;

    iget-object v5, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/notification/ZenModeSettings$SettingPrefWithCallback;->getValue(Landroid/content/Context;)I

    move-result v0

    .line 721
    .local v0, "oldSettingsValue":I
    new-instance v2, Landroid/widget/ScrollView;

    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 722
    .local v2, "scrollView":Landroid/widget/ScrollView;
    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 723
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/android/settings_ex/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/android/settings_ex/notification/ZenModeSettings$SettingPrefWithCallback;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Lcom/android/settings_ex/notification/ZenModeSettings$SettingPrefWithCallback;->getCaption(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f09021e

    invoke-virtual {v4, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f09021c

    new-instance v6, Lcom/android/settings_ex/notification/ZenModeSettings$15;

    invoke-direct {v6, p0, v0}, Lcom/android/settings_ex/notification/ZenModeSettings$15;-><init>(Lcom/android/settings_ex/notification/ZenModeSettings;I)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings_ex/notification/ZenModeSettings$14;

    invoke-direct {v5, p0, v0}, Lcom/android/settings_ex/notification/ZenModeSettings$14;-><init>(Lcom/android/settings_ex/notification/ZenModeSettings;I)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDialog:Landroid/app/AlertDialog;

    .line 743
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
