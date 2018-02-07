.class public Lcom/android/settings_ex/applications/AppStateOverlayBridge;
.super Lcom/android/settings_ex/applications/AppStateAppOpsBridge;
.source "AppStateOverlayBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/AppStateOverlayBridge$1;,
        Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;
    }
.end annotation


# static fields
.field private static final APP_OPS_OP_CODE:I = 0x18

.field public static final FILTER_SYSTEM_ALERT_WINDOW:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field private static final PM_PERMISSION:[Ljava/lang/String;

.field private static final PM_SYSTEM_ALERT_WINDOW:Ljava/lang/String; = "android.permission.SYSTEM_ALERT_WINDOW"

.field private static final TAG:Ljava/lang/String; = "AppStateOverlayBridge"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 37
    const-string/jumbo v1, "android.permission.SYSTEM_ALERT_WINDOW"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 36
    sput-object v0, Lcom/android/settings_ex/applications/AppStateOverlayBridge;->PM_PERMISSION:[Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/android/settings_ex/applications/AppStateOverlayBridge$1;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/AppStateOverlayBridge$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/AppStateOverlayBridge;->FILTER_SYSTEM_ALERT_WINDOW:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appState"    # Lcom/android/settings_exlib/applications/ApplicationsState;
    .param p3, "callback"    # Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;

    .prologue
    .line 41
    sget-object v5, Lcom/android/settings_ex/applications/AppStateOverlayBridge;->PM_PERMISSION:[Ljava/lang/String;

    const/16 v4, 0x18

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/applications/AppStateAppOpsBridge;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;I[Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getNumberOfPackagesCanDrawOverlay()I
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lcom/android/settings_ex/applications/AppStateAppOpsBridge;->getNumPackagesAllowedByAppOps()I

    move-result v0

    return v0
.end method

.method public getNumberOfPackagesWithPermission()I
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/android/settings_ex/applications/AppStateAppOpsBridge;->getNumPackagesDeclaredPermission()I

    move-result v0

    return v0
.end method

.method public getOverlayInfo(Ljava/lang/String;I)Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/applications/AppStateAppOpsBridge;->getPermissionInfo(Ljava/lang/String;I)Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;

    move-result-object v0

    .line 51
    .local v0, "permissionState":Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;
    new-instance v1, Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;

    invoke-direct {v1, v0}, Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;-><init>(Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;)V

    return-object v1
.end method

.method protected updateExtraInfo(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 1
    .param p1, "app"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p2, p3}, Lcom/android/settings_ex/applications/AppStateOverlayBridge;->getOverlayInfo(Ljava/lang/String;I)Lcom/android/settings_ex/applications/AppStateOverlayBridge$OverlayState;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    .line 45
    return-void
.end method
