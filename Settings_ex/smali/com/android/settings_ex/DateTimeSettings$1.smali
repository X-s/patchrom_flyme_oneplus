.class Lcom/android/settings_ex/DateTimeSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "DateTimeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DateTimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DateTimeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DateTimeSettings;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/settings_ex/DateTimeSettings$1;->this$0:Lcom/android/settings_ex/DateTimeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 351
    iget-object v1, p0, Lcom/android/settings_ex/DateTimeSettings$1;->this$0:Lcom/android/settings_ex/DateTimeSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 352
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 353
    iget-object v1, p0, Lcom/android/settings_ex/DateTimeSettings$1;->this$0:Lcom/android/settings_ex/DateTimeSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 355
    :cond_0
    return-void
.end method
