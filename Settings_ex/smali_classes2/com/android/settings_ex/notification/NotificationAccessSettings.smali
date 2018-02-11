.class public Lcom/android/settings_ex/notification/NotificationAccessSettings;
.super Lcom/android/settings_ex/utils/ManagedServiceSettings;
.source "NotificationAccessSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;
    }
.end annotation


# static fields
.field private static final CONFIG:Lcom/android/settings_ex/utils/ManagedServiceSettings$Config;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mNm:Landroid/app/NotificationManager;


# direct methods
.method static synthetic -get0()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/settings_ex/notification/NotificationAccessSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/notification/NotificationAccessSettings;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationAccessSettings;->mNm:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic -get2()Lcom/android/settings_ex/utils/ServiceListing;
    .locals 1

    sget-object v0, Lcom/android/settings_ex/notification/NotificationAccessSettings;->mServiceListing:Lcom/android/settings_ex/utils/ServiceListing;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/android/settings_ex/notification/NotificationAccessSettings;->deleteRules(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/settings_ex/notification/NotificationAccessSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/notification/NotificationAccessSettings;->TAG:Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/android/settings_ex/notification/NotificationAccessSettings;->getNotificationListenerConfig()Lcom/android/settings_ex/utils/ManagedServiceSettings$Config;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/notification/NotificationAccessSettings;->CONFIG:Lcom/android/settings_ex/utils/ManagedServiceSettings$Config;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings_ex/utils/ManagedServiceSettings;-><init>()V

    return-void
.end method

.method private static deleteRules(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 96
    new-instance v0, Lcom/android/settings_ex/notification/NotificationAccessSettings$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_ex/notification/NotificationAccessSettings$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method

.method public static getEnabledListenersCount(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    sget-object v0, Lcom/android/settings_ex/notification/NotificationAccessSettings;->CONFIG:Lcom/android/settings_ex/utils/ManagedServiceSettings$Config;

    invoke-static {v0, p0}, Lcom/android/settings_ex/utils/ServiceListing;->getEnabledServicesCount(Lcom/android/settings_ex/utils/ManagedServiceSettings$Config;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getListenersCount(Landroid/content/pm/PackageManager;)I
    .locals 1
    .param p0, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 73
    sget-object v0, Lcom/android/settings_ex/notification/NotificationAccessSettings;->CONFIG:Lcom/android/settings_ex/utils/ManagedServiceSettings$Config;

    invoke-static {v0, p0}, Lcom/android/settings_ex/utils/ServiceListing;->getServicesCount(Lcom/android/settings_ex/utils/ManagedServiceSettings$Config;Landroid/content/pm/PackageManager;)I

    move-result v0

    return v0
.end method

.method private static getNotificationListenerConfig()Lcom/android/settings_ex/utils/ManagedServiceSettings$Config;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/android/settings_ex/utils/ManagedServiceSettings$Config;

    invoke-direct {v0}, Lcom/android/settings_ex/utils/ManagedServiceSettings$Config;-><init>()V

    .line 51
    .local v0, "c":Lcom/android/settings_ex/utils/ManagedServiceSettings$Config;
    sget-object v1, Lcom/android/settings_ex/notification/NotificationAccessSettings;->TAG:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings_ex/utils/ManagedServiceSettings$Config;->tag:Ljava/lang/String;

    .line 52
    const-string/jumbo v1, "enabled_notification_listeners"

    iput-object v1, v0, Lcom/android/settings_ex/utils/ManagedServiceSettings$Config;->setting:Ljava/lang/String;

    .line 53
    const-string/jumbo v1, "android.service.notification.NotificationListenerService"

    iput-object v1, v0, Lcom/android/settings_ex/utils/ManagedServiceSettings$Config;->intentAction:Ljava/lang/String;

    .line 54
    const-string/jumbo v1, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    iput-object v1, v0, Lcom/android/settings_ex/utils/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    .line 55
    const-string/jumbo v1, "notification listener"

    iput-object v1, v0, Lcom/android/settings_ex/utils/ManagedServiceSettings$Config;->noun:Ljava/lang/String;

    .line 56
    const v1, 0x7f0e0e85

    iput v1, v0, Lcom/android/settings_ex/utils/ManagedServiceSettings$Config;->warningDialogTitle:I

    .line 57
    const v1, 0x7f0e0e86

    iput v1, v0, Lcom/android/settings_ex/utils/ManagedServiceSettings$Config;->warningDialogSummary:I

    .line 58
    const v1, 0x7f0e0e84

    iput v1, v0, Lcom/android/settings_ex/utils/ManagedServiceSettings$Config;->emptyText:I

    .line 59
    return-object v0
.end method


# virtual methods
.method protected getConfig()Lcom/android/settings_ex/utils/ManagedServiceSettings$Config;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/settings_ex/notification/NotificationAccessSettings;->CONFIG:Lcom/android/settings_ex/utils/ManagedServiceSettings$Config;

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 64
    const/16 v0, 0xb3

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/android/settings_ex/utils/ManagedServiceSettings;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/NotificationAccessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationAccessSettings;->mNm:Landroid/app/NotificationManager;

    .line 44
    return-void
.end method

.method protected setEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    .line 81
    if-nez p3, :cond_1

    .line 82
    sget-object v0, Lcom/android/settings_ex/notification/NotificationAccessSettings;->mServiceListing:Lcom/android/settings_ex/utils/ServiceListing;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/utils/ServiceListing;->isEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x1

    return v0

    .line 86
    :cond_0
    new-instance v0, Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;-><init>(Lcom/android/settings_ex/notification/NotificationAccessSettings;)V

    invoke-virtual {v0, p1, p2}, Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->setServiceInfo(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationAccessSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "friendlydialog"

    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x0

    return v0

    .line 91
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/utils/ManagedServiceSettings;->setEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
