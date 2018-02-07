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
.field final synthetic this$1:Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver$1;->this$1:Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver$1;->this$1:Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;

    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;->-get0(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;)Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->-wrap2(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;)V

    .line 1018
    return-void
.end method
