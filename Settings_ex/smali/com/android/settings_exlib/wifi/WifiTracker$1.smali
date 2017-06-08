.class Lcom/android/settings_exlib/wifi/WifiTracker$1;
.super Landroid/database/ContentObserver;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_exlib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZLandroid/net/wifi/WifiManager;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_exlib/wifi/WifiTracker;


# direct methods
.method constructor <init>(Lcom/android/settings_exlib/wifi/WifiTracker;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/settings_exlib/wifi/WifiTracker$1;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/WifiTracker$1;->this$0:Lcom/android/settings_exlib/wifi/WifiTracker;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings_exlib/wifi/WifiTracker;->mBandChanged:Z
    invoke-static {v0, v1}, Lcom/android/settings_exlib/wifi/WifiTracker;->access$002(Lcom/android/settings_exlib/wifi/WifiTracker;Z)Z

    .line 154
    return-void
.end method
