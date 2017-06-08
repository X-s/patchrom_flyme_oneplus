.class Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "PrivateVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClearCacheObserver"
.end annotation


# instance fields
.field private mRemaining:I

.field private final mTarget:Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;I)V
    .locals 0
    .param p1, "target"    # Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;
    .param p2, "remaining"    # I

    .prologue
    .line 789
    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    .line 790
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;->mTarget:Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;

    .line 791
    iput p2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;->mRemaining:I

    .line 792
    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;)Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;->mTarget:Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;

    return-object v0
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z

    .prologue
    .line 796
    monitor-enter p0

    .line 797
    :try_start_0
    iget v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;->mRemaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;->mRemaining:I

    if-nez v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;->mTarget:Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver$1;-><init>(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 805
    :cond_0
    monitor-exit p0

    .line 806
    return-void

    .line 805
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
