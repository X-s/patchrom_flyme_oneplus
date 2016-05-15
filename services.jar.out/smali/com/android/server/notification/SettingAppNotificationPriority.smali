.class public Lcom/android/server/notification/SettingAppNotificationPriority;
.super Ljava/lang/Object;
.source "SettingAppNotificationPriority.java"


# static fields
.field static final DEB:Z = false

.field static final FILE_PATH:Ljava/lang/String; = "//data//system//notification_policy.xml"

.field public static final RESULT_ERROR:I = -0x1

.field static final TAG:Ljava/lang/String; = "SettingAppNotificationPriority"

.field public static final mSettingAlwaysMaxPriority:[Ljava/lang/String;

.field public static final mSettingInstallMaxPriority:[Ljava/lang/String;

.field public static final mSettingPrivMaxPriority:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "com.tencent.mm"

    aput-object v1, v0, v3

    const-string v1, "com.tencent.mobileqq"

    aput-object v1, v0, v4

    const-string v1, "com.tencent.mobileqqi"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/notification/SettingAppNotificationPriority;->mSettingInstallMaxPriority:[Ljava/lang/String;

    .line 41
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.oneplus.calendar"

    aput-object v1, v0, v3

    const-string v1, "com.oneplus.deskclock"

    aput-object v1, v0, v4

    const-string v1, "com.android.dialer"

    aput-object v1, v0, v5

    const-string v1, "com.android.mms"

    aput-object v1, v0, v2

    const/4 v1, 0x4

    const-string v2, "com.netease.mobimail.oneplus"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.bluetooth"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.systemui"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.oneplus.soundrecorder"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.android.settings"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/notification/SettingAppNotificationPriority;->mSettingPrivMaxPriority:[Ljava/lang/String;

    .line 46
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.android.server.telecom"

    aput-object v1, v0, v3

    const-string v1, "com.android.phone"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/notification/SettingAppNotificationPriority;->mSettingAlwaysMaxPriority:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMaxPriorityForInstalled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 82
    .local v4, "uri":Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 83
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "pkgName":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/notification/SettingAppNotificationPriority;->isSettingMaxPriority(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 88
    .local v1, "objPM":Landroid/content/pm/PackageManager;
    invoke-static {v1, v2}, Lcom/android/server/notification/SettingAppNotificationPriority;->findUid(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v3

    .line 89
    .local v3, "uid":I
    const/4 v5, -0x1

    if-eq v5, v3, :cond_0

    .line 92
    invoke-static {v2, v3}, Lcom/android/server/notification/SettingAppNotificationPriority;->changePackagePriorityToMax(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static addMaxPriorityForPriv(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, -0x1

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 106
    .local v4, "objPM":Landroid/content/pm/PackageManager;
    sget-object v0, Lcom/android/server/notification/SettingAppNotificationPriority;->mSettingAlwaysMaxPriority:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 107
    .local v5, "pkg":Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/notification/SettingAppNotificationPriority;->findUid(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v6

    .line 108
    .local v6, "uid":I
    if-ne v8, v6, :cond_0

    .line 106
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    :cond_0
    invoke-static {v5, v6}, Lcom/android/server/notification/SettingAppNotificationPriority;->changePackagePriorityToMax(Ljava/lang/String;I)V

    goto :goto_1

    .line 112
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "uid":I
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v7, "//data//system//notification_policy.xml"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 122
    :cond_2
    return-void

    .line 117
    :cond_3
    sget-object v0, Lcom/android/server/notification/SettingAppNotificationPriority;->mSettingPrivMaxPriority:[Ljava/lang/String;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 118
    .restart local v5    # "pkg":Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/notification/SettingAppNotificationPriority;->findUid(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v6

    .line 119
    .restart local v6    # "uid":I
    if-ne v8, v6, :cond_4

    .line 117
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 120
    :cond_4
    invoke-static {v5, v6}, Lcom/android/server/notification/SettingAppNotificationPriority;->changePackagePriorityToMax(Ljava/lang/String;I)V

    goto :goto_3
.end method

.method private static changePackagePriorityToMax(Ljava/lang/String;I)V
    .locals 4
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .prologue
    .line 151
    :try_start_0
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 153
    .local v1, "sINM":Landroid/app/INotificationManager;
    const/4 v2, 0x2

    invoke-interface {v1, p0, p1, v2}, Landroid/app/INotificationManager;->setPackagePriority(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v1    # "sINM":Landroid/app/INotificationManager;
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SettingAppNotificationPriority"

    const-string v3, "Failed to set app max priority"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static findUid(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 132
    const/4 v1, 0x0

    .line 134
    .local v1, "objAppInfo":Landroid/content/pm/ApplicationInfo;
    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 139
    if-nez v1, :cond_0

    .line 140
    :goto_0
    return v2

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "SettingAppNotificationPriority"

    const-string v4, "Failed to obtain app info "

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 140
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_0
.end method

.method private static isSettingMaxPriority(Ljava/lang/String;)Z
    .locals 6
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 57
    if-eqz p0, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v4

    .line 58
    :cond_1
    sget-object v0, Lcom/android/server/notification/SettingAppNotificationPriority;->mSettingInstallMaxPriority:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 59
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    .line 58
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
