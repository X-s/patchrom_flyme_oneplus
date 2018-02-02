.class public Lcom/oneplus/camera/ui/ActionChooserIntentSender;
.super Landroid/content/BroadcastReceiver;
.source "ActionChooserIntentSender.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    const-string/jumbo v4, "ActionChooserId"

    const-wide/16 v6, 0x0

    invoke-virtual {p2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 19
    .local v2, "chooserId":J
    invoke-static {v2, v3}, Lcom/oneplus/camera/ui/ActionChooser;->getActiveChooser(J)Lcom/oneplus/camera/ui/ActionChooser;

    move-result-object v1

    .line 20
    .local v1, "chooser":Lcom/oneplus/camera/ui/ActionChooser;
    if-nez v1, :cond_0

    .line 21
    return-void

    .line 24
    :cond_0
    const-string/jumbo v4, "android.intent.extra.CHOSEN_COMPONENT"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 25
    .local v0, "activityName":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 26
    return-void

    .line 27
    :cond_1
    invoke-virtual {v1, v0}, Lcom/oneplus/camera/ui/ActionChooser;->notifyActivitySelected(Landroid/content/ComponentName;)V

    .line 15
    return-void
.end method
