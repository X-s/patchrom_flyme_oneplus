.class public Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$1;,
        Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SettingsObserver;,
        Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SyncStateTracker;,
        Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$LocationStateTracker;,
        Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$BluetoothStateTracker;,
        Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$WifiStateTracker;,
        Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;
    }
.end annotation


# static fields
.field private static final BUTTON_BLUETOOTH:I = 0x4

.field private static final BUTTON_BRIGHTNESS:I = 0x1

.field private static final BUTTON_LOCATION:I = 0x3

.field private static final BUTTON_SYNC:I = 0x2

.field private static final BUTTON_WIFI:I = 0x0

.field private static final FULL_BRIGHTNESS_THRESHOLD:F = 0.8f

.field private static final HALF_BRIGHTNESS_THRESHOLD:F = 0.3f

.field private static final IND_DRAWABLE_MID:[I

.field private static final IND_DRAWABLE_OFF:[I

.field private static final IND_DRAWABLE_ON:[I

.field private static final POS_CENTER:I = 0x1

.field private static final POS_LEFT:I = 0x0

.field private static final POS_RIGHT:I = 0x2

.field private static final STATE_DISABLED:I = 0x0

.field private static final STATE_ENABLED:I = 0x1

.field private static final STATE_INTERMEDIATE:I = 0x5

.field private static final STATE_TURNING_OFF:I = 0x3

.field private static final STATE_TURNING_ON:I = 0x2

.field private static final STATE_UNKNOWN:I = 0x4

.field static final TAG:Ljava/lang/String; = "SettingsAppWidgetProvider"

.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static final sBluetoothState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

.field private static sLocalBluetoothAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

.field private static final sLocationState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

.field private static sSettingsObserver:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SettingsObserver;

.field private static final sSyncState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

.field private static final sWifiState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 54
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.widget.SettingsAppWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 58
    sput-object v3, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    .line 81
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_OFF:[I

    .line 87
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_MID:[I

    .line 93
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_ON:[I

    .line 104
    new-instance v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$WifiStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$WifiStateTracker;-><init>(Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    .line 105
    new-instance v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$BluetoothStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$BluetoothStateTracker;-><init>(Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    .line 106
    new-instance v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$LocationStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$LocationStateTracker;-><init>(Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sLocationState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    .line 107
    new-instance v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SyncStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SyncStateTracker;-><init>(Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    return-void

    .line 81
    nop

    :array_0
    .array-data 4
        0x7f020012
        0x7f020011
        0x7f020013
    .end array-data

    .line 87
    :array_1
    .array-data 4
        0x7f02000f
        0x7f02000e
        0x7f020010
    .end array-data

    .line 93
    :array_2
    .array-data 4
        0x7f020015
        0x7f020014
        0x7f020016
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 932
    return-void
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_OFF:[I

    return-object v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_ON:[I

    return-object v0
.end method

.method static synthetic access$600()[I
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_MID:[I

    return-object v0
.end method

.method static synthetic access$800()Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    .prologue
    .line 51
    sput-object p0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 688
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04014a

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 690
    .local v0, "views":Landroid/widget/RemoteViews;
    const v1, 0x7f12025d

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 692
    const v1, 0x7f120269

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 695
    const v1, 0x7f120266

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 698
    const v1, 0x7f120263

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 700
    const v1, 0x7f120260

    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 704
    invoke-static {v0, p0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 705
    return-object v0
.end method

.method private static checkObserver(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 653
    sget-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SettingsObserver;

    if-nez v0, :cond_0

    .line 654
    new-instance v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SettingsObserver;

    .line 656
    sget-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SettingsObserver;->startObserving()V

    .line 658
    :cond_0
    return-void
.end method

.method private static getBrightness(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 847
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 852
    :goto_0
    return v0

    .line 850
    :catch_0
    move-exception v1

    .line 852
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getBrightnessMode(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 863
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness_mode"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 865
    .local v0, "brightnessMode":I
    if-ne v0, v2, :cond_0

    .line 869
    .end local v0    # "brightnessMode":I
    :goto_0
    return v2

    .restart local v0    # "brightnessMode":I
    :cond_0
    move v2, v3

    .line 865
    goto :goto_0

    .line 866
    .end local v0    # "brightnessMode":I
    :catch_0
    move-exception v1

    .line 867
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SettingsAppWidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBrightnessMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 869
    goto :goto_0
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "buttonId"    # I

    .prologue
    const/4 v4, 0x0

    .line 787
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 788
    .local v0, "launchIntent":Landroid/content/Intent;
    const-class v2, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 789
    const-string v2, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 790
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "custom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 791
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 793
    .local v1, "pi":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private toggleBrightness(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 879
    :try_start_0
    const-string v6, "power"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v5

    .line 881
    .local v5, "power":Landroid/os/IPowerManager;
    if-eqz v5, :cond_1

    .line 882
    const-string v6, "power"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 884
    .local v4, "pm":Landroid/os/PowerManager;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 885
    .local v2, "cr":Landroid/content/ContentResolver;
    const-string v6, "screen_brightness"

    invoke-static {v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 887
    .local v0, "brightness":I
    const/4 v1, 0x0

    .line 889
    .local v1, "brightnessMode":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1120026

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 891
    const-string v6, "screen_brightness_mode"

    invoke-static {v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 897
    :cond_0
    const/4 v6, 0x1

    if-ne v1, v6, :cond_2

    .line 898
    invoke-virtual {v4}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v0

    .line 899
    const/4 v1, 0x0

    .line 909
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1120026

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 912
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness_mode"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 919
    :goto_1
    if-nez v1, :cond_1

    .line 920
    invoke-interface {v5, v0}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    .line 921
    const-string v6, "screen_brightness"

    invoke-static {v2, v6, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 929
    .end local v0    # "brightness":I
    .end local v1    # "brightnessMode":I
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v4    # "pm":Landroid/os/PowerManager;
    .end local v5    # "power":Landroid/os/IPowerManager;
    :cond_1
    :goto_2
    return-void

    .line 900
    .restart local v0    # "brightness":I
    .restart local v1    # "brightnessMode":I
    .restart local v2    # "cr":Landroid/content/ContentResolver;
    .restart local v4    # "pm":Landroid/os/PowerManager;
    .restart local v5    # "power":Landroid/os/IPowerManager;
    :cond_2
    invoke-virtual {v4}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 901
    invoke-virtual {v4}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v0

    goto :goto_0

    .line 902
    :cond_3
    invoke-virtual {v4}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 903
    invoke-virtual {v4}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    goto :goto_0

    .line 905
    :cond_4
    const/4 v1, 0x1

    .line 906
    invoke-virtual {v4}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 917
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 924
    .end local v0    # "brightness":I
    .end local v1    # "brightnessMode":I
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v4    # "pm":Landroid/os/PowerManager;
    .end local v5    # "power":Landroid/os/IPowerManager;
    :catch_0
    move-exception v3

    .line 925
    .local v3, "e":Landroid/os/RemoteException;
    const-string v6, "SettingsAppWidgetProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "toggleBrightness: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 926
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 927
    .local v3, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v6, "SettingsAppWidgetProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "toggleBrightness: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 11
    .param p0, "views"    # Landroid/widget/RemoteViews;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v10, 0x7f12026a

    const v9, 0x7f120269

    const v8, 0x7f0c09ef

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 728
    sget-object v4, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 729
    sget-object v4, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 730
    sget-object v4, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sLocationState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 731
    sget-object v4, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 733
    invoke-static {p1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->getBrightnessMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 734
    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f0c09f0

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v9, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 737
    const v4, 0x7f020037

    invoke-virtual {p0, v10, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 739
    const v4, 0x7f12026b

    const v5, 0x7f020016

    invoke-virtual {p0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 777
    :goto_0
    return-void

    .line 742
    :cond_0
    invoke-static {p1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->getBrightness(Landroid/content/Context;)I

    move-result v0

    .line 743
    .local v0, "brightness":I
    const-string v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 745
    .local v3, "pm":Landroid/os/PowerManager;
    invoke-virtual {v3}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 747
    .local v1, "full":I
    invoke-virtual {v3}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e99999a    # 0.3f

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 749
    .local v2, "half":I
    if-le v0, v1, :cond_1

    .line 750
    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f0c09f1

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v9, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 753
    const v4, 0x7f020038

    invoke-virtual {p0, v10, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 769
    :goto_1
    if-le v0, v2, :cond_3

    .line 770
    const v4, 0x7f12026b

    const v5, 0x7f020016

    invoke-virtual {p0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 755
    :cond_1
    if-le v0, v2, :cond_2

    .line 756
    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f0c09f2

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v9, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 759
    const v4, 0x7f020039

    invoke-virtual {p0, v10, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 762
    :cond_2
    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f0c09f3

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v9, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 765
    const v4, 0x7f02003a

    invoke-virtual {p0, v10, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 773
    :cond_3
    const v4, 0x7f12026b

    const v5, 0x7f020013

    invoke-virtual {p0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 714
    invoke-static {p0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 716
    .local v1, "views":Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 717
    .local v0, "gm":Landroid/appwidget/AppWidgetManager;
    sget-object v2, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 718
    invoke-static {p0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 719
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 678
    sget-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SettingsObserver;

    if-eqz v0, :cond_0

    .line 679
    sget-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SettingsObserver;->stopObserving()V

    .line 680
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SettingsObserver;

    .line 682
    :cond_0
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 673
    invoke-static {p1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 674
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 804
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 805
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 806
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 807
    sget-object v3, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 836
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 837
    :cond_1
    return-void

    .line 808
    :cond_2
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 809
    sget-object v3, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 810
    :cond_3
    const-string v3, "android.location.MODE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 811
    sget-object v3, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sLocationState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 812
    :cond_4
    sget-object v3, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 813
    sget-object v3, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 814
    :cond_5
    const-string v3, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 815
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 816
    .local v2, "data":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 817
    .local v1, "buttonId":I
    if-nez v1, :cond_6

    .line 818
    sget-object v3, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 819
    :cond_6
    const/4 v3, 0x1

    if-ne v1, v3, :cond_7

    .line 820
    invoke-direct {p0, p1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->toggleBrightness(Landroid/content/Context;)V

    goto :goto_0

    .line 821
    :cond_7
    const/4 v3, 0x2

    if-ne v1, v3, :cond_8

    .line 822
    sget-object v3, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 823
    :cond_8
    const/4 v3, 0x3

    if-ne v1, v3, :cond_9

    .line 824
    sget-object v3, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sLocationState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 825
    :cond_9
    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 826
    sget-object v3, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 664
    invoke-static {p1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 666
    .local v1, "view":Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 667
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 666
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 669
    :cond_0
    return-void
.end method
