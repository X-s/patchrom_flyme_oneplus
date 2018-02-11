.class public Lcom/android/settings_ex/applications/AppStateNotificationBridge;
.super Lcom/android/settings_ex/applications/AppStateBaseBridge;
.source "AppStateNotificationBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/AppStateNotificationBridge$1;,
        Lcom/android/settings_ex/applications/AppStateNotificationBridge$2;,
        Lcom/android/settings_ex/applications/AppStateNotificationBridge$3;,
        Lcom/android/settings_ex/applications/AppStateNotificationBridge$4;,
        Lcom/android/settings_ex/applications/AppStateNotificationBridge$5;
    }
.end annotation


# static fields
.field public static final FILTER_APP_NOTIFICATION_BLOCKED:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_APP_NOTIFICATION_HIDE_ALL:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_APP_NOTIFICATION_HIDE_SENSITIVE:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_APP_NOTIFICATION_PRIORITY:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_APP_NOTIFICATION_SILENCED:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNotifBackend:Lcom/android/settings_ex/notification/NotificationBackend;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/android/settings_ex/applications/AppStateNotificationBridge$1;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/AppStateNotificationBridge$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_BLOCKED:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 84
    new-instance v0, Lcom/android/settings_ex/applications/AppStateNotificationBridge$2;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/AppStateNotificationBridge$2;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_SILENCED:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 100
    new-instance v0, Lcom/android/settings_ex/applications/AppStateNotificationBridge$3;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/AppStateNotificationBridge$3;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_PRIORITY:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 123
    new-instance v0, Lcom/android/settings_ex/applications/AppStateNotificationBridge$4;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/AppStateNotificationBridge$4;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_HIDE_SENSITIVE:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 138
    new-instance v0, Lcom/android/settings_ex/applications/AppStateNotificationBridge$5;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/AppStateNotificationBridge$5;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_HIDE_ALL:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;Lcom/android/settings_ex/notification/NotificationBackend;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appState"    # Lcom/android/settings_exlib/applications/ApplicationsState;
    .param p3, "callback"    # Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;
    .param p4, "notifBackend"    # Lcom/android/settings_ex/notification/NotificationBackend;

    .prologue
    .line 45
    invoke-direct {p0, p2, p3}, Lcom/android/settings_ex/applications/AppStateBaseBridge;-><init>(Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;)V

    .line 46
    iput-object p1, p0, Lcom/android/settings_ex/applications/AppStateNotificationBridge;->mContext:Landroid/content/Context;

    .line 47
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStateNotificationBridge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/AppStateNotificationBridge;->mPm:Landroid/content/pm/PackageManager;

    .line 48
    iput-object p4, p0, Lcom/android/settings_ex/applications/AppStateNotificationBridge;->mNotifBackend:Lcom/android/settings_ex/notification/NotificationBackend;

    .line 44
    return-void
.end method


# virtual methods
.method protected loadAllExtraInfo()V
    .locals 8

    .prologue
    .line 53
    iget-object v4, p0, Lcom/android/settings_ex/applications/AppStateNotificationBridge;->mAppSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-virtual {v4}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v2

    .line 54
    .local v2, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 55
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 56
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 57
    .local v1, "app":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    iget-object v4, p0, Lcom/android/settings_ex/applications/AppStateNotificationBridge;->mNotifBackend:Lcom/android/settings_ex/notification/NotificationBackend;

    iget-object v5, p0, Lcom/android/settings_ex/applications/AppStateNotificationBridge;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings_ex/applications/AppStateNotificationBridge;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/settings_ex/notification/NotificationBackend;->loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    move-result-object v4

    iput-object v4, v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    .line 55
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 52
    .end local v1    # "app":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    :cond_0
    return-void
.end method

.method protected updateExtraInfo(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 4
    .param p1, "app"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStateNotificationBridge;->mNotifBackend:Lcom/android/settings_ex/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings_ex/applications/AppStateNotificationBridge;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/applications/AppStateNotificationBridge;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/notification/NotificationBackend;->loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    .line 62
    return-void
.end method
