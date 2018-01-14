.class Lcom/android/server/connectivity/Tethering$SoftApAutoShutDownObserver;
.super Landroid/database/ContentObserver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoftApAutoShutDownObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Tethering;Landroid/os/Handler;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/connectivity/Tethering;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 802
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$SoftApAutoShutDownObserver;->this$0:Lcom/android/server/connectivity/Tethering;

    .line 803
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 804
    invoke-static {p1}, Lcom/android/server/connectivity/Tethering;->-get2(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 805
    const-string/jumbo v1, "hotspot_auto_shut_down"

    .line 804
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 805
    const/4 v2, 0x0

    .line 804
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 802
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 810
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 811
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$SoftApAutoShutDownObserver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-wrap7(Lcom/android/server/connectivity/Tethering;)V

    .line 809
    return-void
.end method
