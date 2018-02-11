.class public Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$BluetoothStateTracker;,
        Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$LocationStateTracker;,
        Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SettingsObserver;,
        Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;,
        Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SyncStateTracker;,
        Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$WifiStateTracker;
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
.method static synthetic -get0()[I
    .locals 1

    sget-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_MID:[I

    return-object v0
.end method

.method static synthetic -get1()[I
    .locals 1

    sget-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_OFF:[I

    return-object v0
.end method

.method static synthetic -get2()[I
    .locals 1

    sget-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_ON:[I

    return-object v0
.end method

.method static synthetic -get3()Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    .locals 1

    sget-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    .locals 0

    sput-object p0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.android.settings_ex"

    .line 56
    const-string/jumbo v2, "com.android.settings_ex.widget.SettingsAppWidgetProvider"

    .line 55
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sput-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 58
    sput-object v3, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    .line 82
    const v0, 0x7f020067

    .line 83
    const v1, 0x7f020066

    .line 84
    const v2, 0x7f020068

    .line 81
    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_OFF:[I

    .line 88
    const v0, 0x7f020064

    .line 89
    const v1, 0x7f020063

    .line 90
    const v2, 0x7f020065

    .line 87
    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_MID:[I

    .line 94
    const v0, 0x7f02006a

    .line 95
    const v1, 0x7f020069

    .line 96
    const v2, 0x7f02006b

    .line 93
    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_ON:[I

    .line 104
    new-instance v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$WifiStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$WifiStateTracker;-><init>(Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$WifiStateTracker;)V

    sput-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    .line 105
    new-instance v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$BluetoothStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$BluetoothStateTracker;-><init>(Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$BluetoothStateTracker;)V

    sput-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    .line 106
    new-instance v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$LocationStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$LocationStateTracker;-><init>(Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$LocationStateTracker;)V

    sput-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sLocationState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    .line 107
    new-instance v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SyncStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SyncStateTracker;-><init>(Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SyncStateTracker;)V

    sput-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 691
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 692
    const v2, 0x7f04020d

    .line 691
    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 694
    .local v0, "views":Landroid/widget/RemoteViews;
    const/4 v1, 0x0

    .line 693
    invoke-static {p0, v1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f110386

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 697
    const/4 v1, 0x1

    .line 696
    invoke-static {p0, v1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 695
    const v2, 0x7f110392

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 700
    const/4 v1, 0x2

    .line 699
    invoke-static {p0, v1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 698
    const v2, 0x7f11038f

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 702
    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 701
    const v2, 0x7f11038c

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 705
    const/4 v1, 0x4

    .line 704
    invoke-static {p0, v1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 703
    const v2, 0x7f110389

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 707
    invoke-static {v0, p0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 708
    return-object v0
.end method

.method private static checkObserver(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 656
    sget-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SettingsObserver;

    if-nez v0, :cond_0

    .line 657
    new-instance v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 658
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 657
    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SettingsObserver;

    .line 659
    sget-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SettingsObserver;->startObserving()V

    .line 655
    :cond_0
    return-void
.end method

.method private static getBrightness(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 856
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 857
    const-string/jumbo v3, "screen_brightness"

    .line 856
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 858
    .local v0, "brightness":I
    return v0

    .line 859
    .end local v0    # "brightness":I
    :catch_0
    move-exception v1

    .line 861
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    return v2
.end method

.method private static getBrightnessMode(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 872
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 873
    const-string/jumbo v5, "screen_brightness_mode"

    .line 872
    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 874
    .local v0, "brightnessMode":I
    if-ne v0, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    .line 875
    .end local v0    # "brightnessMode":I
    :catch_0
    move-exception v1

    .line 876
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SettingsAppWidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getBrightnessMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    return v3
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "buttonId"    # I

    .prologue
    const/4 v4, 0x0

    .line 796
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 797
    .local v0, "launchIntent":Landroid/content/Intent;
    const-class v2, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 798
    const-string/jumbo v2, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 799
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "custom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 800
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 802
    .local v1, "pi":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private toggleBrightness(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 889
    :try_start_0
    const-string/jumbo v7, "power"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    .line 888
    invoke-static {v7}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v6

    .line 890
    .local v6, "power":Landroid/os/IPowerManager;
    if-eqz v6, :cond_1

    .line 891
    const-string/jumbo v7, "power"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 893
    .local v5, "pm":Landroid/os/PowerManager;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 895
    .local v2, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v7, "screen_brightness"

    .line 894
    invoke-static {v2, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 896
    .local v0, "brightness":I
    const/4 v1, 0x0

    .line 898
    .local v1, "brightnessMode":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 899
    const v8, 0x1120024

    .line 898
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 901
    const-string/jumbo v7, "screen_brightness_mode"

    .line 900
    invoke-static {v2, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 906
    :cond_0
    const/4 v7, 0x1

    if-ne v1, v7, :cond_2

    .line 907
    invoke-virtual {v5}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v0

    .line 908
    const/4 v1, 0x0

    .line 918
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 919
    const v8, 0x1120024

    .line 918
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 921
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 922
    const-string/jumbo v8, "screen_brightness_mode"

    .line 921
    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 928
    :goto_1
    if-nez v1, :cond_1

    .line 929
    invoke-interface {v6, v0}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    .line 930
    const-string/jumbo v7, "screen_brightness"

    invoke-static {v2, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 886
    .end local v0    # "brightness":I
    .end local v1    # "brightnessMode":I
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v5    # "pm":Landroid/os/PowerManager;
    .end local v6    # "power":Landroid/os/IPowerManager;
    :cond_1
    :goto_2
    return-void

    .line 909
    .restart local v0    # "brightness":I
    .restart local v1    # "brightnessMode":I
    .restart local v2    # "cr":Landroid/content/ContentResolver;
    .restart local v5    # "pm":Landroid/os/PowerManager;
    .restart local v6    # "power":Landroid/os/IPowerManager;
    :cond_2
    invoke-virtual {v5}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v7

    if-ge v0, v7, :cond_3

    .line 910
    invoke-virtual {v5}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v0

    goto :goto_0

    .line 911
    :cond_3
    invoke-virtual {v5}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v7

    if-ge v0, v7, :cond_4

    .line 912
    invoke-virtual {v5}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    goto :goto_0

    .line 914
    :cond_4
    const/4 v1, 0x1

    .line 915
    invoke-virtual {v5}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 926
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 935
    .end local v0    # "brightness":I
    .end local v1    # "brightnessMode":I
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v5    # "pm":Landroid/os/PowerManager;
    .end local v6    # "power":Landroid/os/IPowerManager;
    :catch_0
    move-exception v4

    .line 936
    .local v4, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v7, "SettingsAppWidgetProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "toggleBrightness: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 933
    .end local v4    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :catch_1
    move-exception v3

    .line 934
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "SettingsAppWidgetProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "toggleBrightness: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 11
    .param p0, "views"    # Landroid/widget/RemoteViews;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v10, 0x7f110393

    const v9, 0x7f110392

    const v8, 0x7f0e0bfa

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 737
    sget-object v4, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 738
    sget-object v4, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 739
    sget-object v4, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sLocationState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 740
    sget-object v4, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 742
    invoke-static {p1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->getBrightnessMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 744
    new-array v4, v7, [Ljava/lang/Object;

    .line 745
    const v5, 0x7f0e0bfb

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 744
    invoke-virtual {p1, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 743
    invoke-virtual {p0, v9, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 747
    const v4, 0x7f0200dc

    .line 746
    invoke-virtual {p0, v10, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 748
    const v4, 0x7f110394

    .line 749
    const v5, 0x7f02006b

    .line 748
    invoke-virtual {p0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 736
    :goto_0
    return-void

    .line 751
    :cond_0
    invoke-static {p1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->getBrightness(Landroid/content/Context;)I

    move-result v0

    .line 752
    .local v0, "brightness":I
    const-string/jumbo v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 754
    .local v3, "pm":Landroid/os/PowerManager;
    invoke-virtual {v3}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v4

    int-to-float v4, v4

    .line 755
    const v5, 0x3f4ccccd    # 0.8f

    .line 754
    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 756
    .local v1, "full":I
    invoke-virtual {v3}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v4

    int-to-float v4, v4

    .line 757
    const v5, 0x3e99999a    # 0.3f

    .line 756
    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 758
    .local v2, "half":I
    if-le v0, v1, :cond_1

    .line 760
    new-array v4, v7, [Ljava/lang/Object;

    .line 761
    const v5, 0x7f0e0bfc

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 760
    invoke-virtual {p1, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 759
    invoke-virtual {p0, v9, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 763
    const v4, 0x7f0200dd

    .line 762
    invoke-virtual {p0, v10, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 778
    :goto_1
    if-le v0, v2, :cond_3

    .line 779
    const v4, 0x7f110394

    .line 780
    const v5, 0x7f02006b

    .line 779
    invoke-virtual {p0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 764
    :cond_1
    if-le v0, v2, :cond_2

    .line 766
    new-array v4, v7, [Ljava/lang/Object;

    .line 767
    const v5, 0x7f0e0bfd

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 766
    invoke-virtual {p1, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 765
    invoke-virtual {p0, v9, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 769
    const v4, 0x7f0200de

    .line 768
    invoke-virtual {p0, v10, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 772
    :cond_2
    new-array v4, v7, [Ljava/lang/Object;

    .line 773
    const v5, 0x7f0e0bfe

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 772
    invoke-virtual {p1, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 771
    invoke-virtual {p0, v9, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 775
    const v4, 0x7f0200df

    .line 774
    invoke-virtual {p0, v10, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 782
    :cond_3
    const v4, 0x7f110394

    .line 783
    const v5, 0x7f020068

    .line 782
    invoke-virtual {p0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 717
    invoke-static {p0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 719
    .local v2, "views":Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 722
    .local v1, "gm":Landroid/appwidget/AppWidgetManager;
    :try_start_0
    sget-object v3, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v1, v3, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    :goto_0
    invoke-static {p0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 716
    return-void

    .line 723
    :catch_0
    move-exception v0

    .line 724
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 681
    sget-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SettingsObserver;

    if-eqz v0, :cond_0

    .line 682
    sget-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SettingsObserver;->stopObserving()V

    .line 683
    sput-object v1, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SettingsObserver;

    .line 680
    :cond_0
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 676
    invoke-static {p1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 675
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 813
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 814
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 815
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 816
    sget-object v3, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 845
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 812
    return-void

    .line 817
    :cond_1
    const-string/jumbo v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 818
    sget-object v3, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 819
    :cond_2
    const-string/jumbo v3, "android.location.MODE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 820
    sget-object v3, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sLocationState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 821
    :cond_3
    sget-object v3, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 822
    sget-object v3, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 823
    :cond_4
    const-string/jumbo v3, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 824
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 825
    .local v2, "data":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 826
    .local v1, "buttonId":I
    if-nez v1, :cond_5

    .line 827
    sget-object v3, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 828
    :cond_5
    const/4 v3, 0x1

    if-ne v1, v3, :cond_6

    .line 829
    invoke-direct {p0, p1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->toggleBrightness(Landroid/content/Context;)V

    goto :goto_0

    .line 830
    :cond_6
    const/4 v3, 0x2

    if-ne v1, v3, :cond_7

    .line 831
    sget-object v3, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 832
    :cond_7
    const/4 v3, 0x3

    if-ne v1, v3, :cond_8

    .line 833
    sget-object v3, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sLocationState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 834
    :cond_8
    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 835
    sget-object v3, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 841
    .end local v1    # "buttonId":I
    .end local v2    # "data":Landroid/net/Uri;
    :cond_9
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 667
    invoke-static {p1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 669
    .local v1, "view":Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 670
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 669
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 665
    :cond_0
    return-void
.end method
