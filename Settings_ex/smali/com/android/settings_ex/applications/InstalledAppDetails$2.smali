.class Lcom/android/settings_ex/applications/InstalledAppDetails$2;
.super Landroid/content/BroadcastReceiver;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V
    .locals 0

    .prologue
    .line 1310
    iput-object p1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$2;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1313
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$2;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/InstalledAppDetails$2;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/android/settings_ex/applications/InstalledAppDetails;->updateForceStopButton(Z)V
    invoke-static {v1, v0}, Lcom/android/settings_ex/applications/InstalledAppDetails;->access$1300(Lcom/android/settings_ex/applications/InstalledAppDetails;Z)V

    .line 1314
    return-void

    .line 1313
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
