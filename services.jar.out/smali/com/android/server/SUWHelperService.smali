.class Lcom/android/server/SUWHelperService;
.super Lcom/android/server/SystemService;
.source "SUWHelperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SUWHelperService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SUWHelperService"


# instance fields
.field private mContext:Landroid/content/Context;

.field mSettingsObserver:Lcom/android/server/SUWHelperService$SettingsObserver;


# direct methods
.method static synthetic -get0(Lcom/android/server/SUWHelperService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SUWHelperService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p1, p0, Lcom/android/server/SUWHelperService;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    .line 48
    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    .line 49
    const-string/jumbo v0, "SUWHelperService"

    const-string/jumbo v1, "onBootPhase: PHASE_ACTIVITY_MANAGER_READY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v0, Lcom/android/server/SUWHelperService$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/server/SUWHelperService$SettingsObserver;-><init>(Lcom/android/server/SUWHelperService;)V

    iput-object v0, p0, Lcom/android/server/SUWHelperService;->mSettingsObserver:Lcom/android/server/SUWHelperService$SettingsObserver;

    .line 51
    iget-object v0, p0, Lcom/android/server/SUWHelperService;->mSettingsObserver:Lcom/android/server/SUWHelperService$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/SUWHelperService$SettingsObserver;->observe()V

    .line 47
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method
