.class Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver$1;
.super Ljava/lang/Object;
.source "PrivateVolumeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;)V
    .locals 0

    .prologue
    .line 802
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver$1;->this$0:Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver$1;->this$0:Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;

    # getter for: Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;->mTarget:Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;->access$600(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;)Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->update()V

    .line 806
    return-void
.end method
