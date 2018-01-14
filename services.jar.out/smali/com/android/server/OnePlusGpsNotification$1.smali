.class Lcom/android/server/OnePlusGpsNotification$1;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusGpsNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusGpsNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusGpsNotification;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusGpsNotification;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OnePlusGpsNotification;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/server/OnePlusGpsNotification$1;->this$0:Lcom/android/server/OnePlusGpsNotification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 74
    .local v1, "packages":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/OnePlusGpsNotification$1;->this$0:Lcom/android/server/OnePlusGpsNotification;

    invoke-static {v2}, Lcom/android/server/OnePlusGpsNotification;->-get0(Lcom/android/server/OnePlusGpsNotification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    const-string/jumbo v2, "forcePackageName"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    sget-boolean v2, Lcom/android/server/OnePlusGpsNotification;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 78
    iget-object v2, p0, Lcom/android/server/OnePlusGpsNotification$1;->this$0:Lcom/android/server/OnePlusGpsNotification;

    iget-object v2, v2, Lcom/android/server/OnePlusGpsNotification;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mReceiver packageName  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_2
    iget-object v2, p0, Lcom/android/server/OnePlusGpsNotification$1;->this$0:Lcom/android/server/OnePlusGpsNotification;

    invoke-static {v2}, Lcom/android/server/OnePlusGpsNotification;->-get5(Lcom/android/server/OnePlusGpsNotification;)Landroid/app/ActivityManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_0
.end method
