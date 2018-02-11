.class public Lcom/android/settings_ex/applications/AppStateUsageBridge;
.super Lcom/android/settings_ex/applications/AppStateAppOpsBridge;
.source "AppStateUsageBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/AppStateUsageBridge$1;,
        Lcom/android/settings_ex/applications/AppStateUsageBridge$UsageState;
    }
.end annotation


# static fields
.field private static final APP_OPS_OP_CODE:I = 0x2b

.field public static final FILTER_APP_USAGE:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field private static final PM_PERMISSION:[Ljava/lang/String;

.field private static final PM_USAGE_STATS:Ljava/lang/String; = "android.permission.PACKAGE_USAGE_STATS"

.field private static final TAG:Ljava/lang/String; = "AppStateUsageBridge"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 38
    const-string/jumbo v1, "android.permission.PACKAGE_USAGE_STATS"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 37
    sput-object v0, Lcom/android/settings_ex/applications/AppStateUsageBridge;->PM_PERMISSION:[Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/android/settings_ex/applications/AppStateUsageBridge$1;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/AppStateUsageBridge$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/AppStateUsageBridge;->FILTER_APP_USAGE:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appState"    # Lcom/android/settings_exlib/applications/ApplicationsState;
    .param p3, "callback"    # Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;

    .prologue
    .line 42
    sget-object v5, Lcom/android/settings_ex/applications/AppStateUsageBridge;->PM_PERMISSION:[Ljava/lang/String;

    const/16 v4, 0x2b

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/applications/AppStateAppOpsBridge;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;I[Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getUsageInfo(Ljava/lang/String;I)Lcom/android/settings_ex/applications/AppStateUsageBridge$UsageState;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/applications/AppStateAppOpsBridge;->getPermissionInfo(Ljava/lang/String;I)Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;

    move-result-object v0

    .line 52
    .local v0, "permissionState":Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;
    new-instance v1, Lcom/android/settings_ex/applications/AppStateUsageBridge$UsageState;

    invoke-direct {v1, v0}, Lcom/android/settings_ex/applications/AppStateUsageBridge$UsageState;-><init>(Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;)V

    return-object v1
.end method

.method protected updateExtraInfo(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 1
    .param p1, "app"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 47
    invoke-virtual {p0, p2, p3}, Lcom/android/settings_ex/applications/AppStateUsageBridge;->getUsageInfo(Ljava/lang/String;I)Lcom/android/settings_ex/applications/AppStateUsageBridge$UsageState;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    .line 46
    return-void
.end method
