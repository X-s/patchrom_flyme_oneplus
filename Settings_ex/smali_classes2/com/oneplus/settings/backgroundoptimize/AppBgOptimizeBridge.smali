.class public Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;
.super Lcom/android/settings_ex/applications/AppStateBaseBridge;
.source "AppBgOptimizeBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge$1;,
        Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge$2;
    }
.end annotation


# static fields
.field public static final FILTER_APP_BG_All:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_APP_BG_NOT_OPTIMIZE:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mManager:Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge$1;

    invoke-direct {v0}, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->FILTER_APP_BG_All:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 79
    new-instance v0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge$2;

    invoke-direct {v0}, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge$2;-><init>()V

    sput-object v0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->FILTER_APP_BG_NOT_OPTIMIZE:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appState"    # Lcom/android/settings_exlib/applications/ApplicationsState;
    .param p3, "callback"    # Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;

    .prologue
    .line 40
    invoke-direct {p0, p2, p3}, Lcom/android/settings_ex/applications/AppStateBaseBridge;-><init>(Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;)V

    .line 41
    iput-object p1, p0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->mContext:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->mPm:Landroid/content/pm/PackageManager;

    .line 43
    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->mManager:Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    .line 39
    return-void
.end method


# virtual methods
.method protected loadAllExtraInfo()V
    .locals 7

    .prologue
    .line 48
    iget-object v5, p0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->mAppSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-virtual {v5}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v2

    .line 49
    .local v2, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 50
    .local v0, "N":I
    iget-object v5, p0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->mManager:Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getAllAppControlModesMap(I)Ljava/util/Map;

    move-result-object v4

    .line 52
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/oneplus/settings/backgroundoptimize/AppControlMode;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 53
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 54
    .local v1, "app":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    iget-object v5, v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    .line 52
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47
    .end local v1    # "app":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    :cond_0
    return-void
.end method

.method protected updateExtraInfo(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 3
    .param p1, "app"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;

    iget-object v1, p0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->mManager:Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    invoke-virtual {v1, p2, v2}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getAppControlMode(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, p2, v2, v1}, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;-><init>(Ljava/lang/String;II)V

    iput-object v0, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    .line 59
    return-void
.end method
