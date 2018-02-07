.class public Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;
.super Lcom/android/settings_ex/applications/AppStateAppOpsBridge;
.source "AppStateWriteSettingsBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$1;,
        Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;
    }
.end annotation


# static fields
.field private static final APP_OPS_OP_CODE:I = 0x17

.field public static final FILTER_WRITE_SETTINGS:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field private static final PM_PERMISSIONS:[Ljava/lang/String;

.field private static final PM_WRITE_SETTINGS:Ljava/lang/String; = "android.permission.WRITE_SETTINGS"

.field private static final TAG:Ljava/lang/String; = "AppStateWriteSettingsBridge"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 38
    const-string/jumbo v1, "android.permission.WRITE_SETTINGS"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 37
    sput-object v0, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;->PM_PERMISSIONS:[Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$1;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;->FILTER_WRITE_SETTINGS:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appState"    # Lcom/android/settings_exlib/applications/ApplicationsState;
    .param p3, "callback"    # Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;

    .prologue
    .line 43
    sget-object v5, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;->PM_PERMISSIONS:[Ljava/lang/String;

    const/16 v4, 0x17

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/applications/AppStateAppOpsBridge;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;I[Ljava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getNumberOfPackagesCanWriteSettings()I
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/android/settings_ex/applications/AppStateAppOpsBridge;->getNumPackagesAllowedByAppOps()I

    move-result v0

    return v0
.end method

.method public getNumberOfPackagesWithPermission()I
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/settings_ex/applications/AppStateAppOpsBridge;->getNumPackagesDeclaredPermission()I

    move-result v0

    return v0
.end method

.method public getWriteSettingsInfo(Ljava/lang/String;I)Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/applications/AppStateAppOpsBridge;->getPermissionInfo(Ljava/lang/String;I)Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;

    move-result-object v0

    .line 53
    .local v0, "permissionState":Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;
    new-instance v1, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    invoke-direct {v1, v0}, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;-><init>(Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;)V

    return-object v1
.end method

.method protected updateExtraInfo(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 1
    .param p1, "app"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 48
    invoke-virtual {p0, p2, p3}, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;->getWriteSettingsInfo(Ljava/lang/String;I)Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    .line 47
    return-void
.end method
