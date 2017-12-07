.class Lcom/android/internal/telephony/OPOnlineConfigApn$1;
.super Landroid/content/BroadcastReceiver;
.source "OPOnlineConfigApn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/OPOnlineConfigApn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/OPOnlineConfigApn;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/OPOnlineConfigApn;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/OPOnlineConfigApn;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/internal/telephony/OPOnlineConfigApn$1;->this$0:Lcom/android/internal/telephony/OPOnlineConfigApn;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 154
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/android/internal/telephony/OPOnlineConfigApn$1;->this$0:Lcom/android/internal/telephony/OPOnlineConfigApn;

    const-string/jumbo v2, "ACTION_BOOT_COMPLETED call triggerOPOnlineConfigApnLoading(0)"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/OPOnlineConfigApn;->-wrap0(Lcom/android/internal/telephony/OPOnlineConfigApn;Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/android/internal/telephony/OPOnlineConfigApn$1;->this$0:Lcom/android/internal/telephony/OPOnlineConfigApn;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/OPOnlineConfigApn;->-wrap2(Lcom/android/internal/telephony/OPOnlineConfigApn;I)V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    const-string/jumbo v1, "android.intent.action.restoreDefaultAPN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/internal/telephony/OPOnlineConfigApn$1;->this$0:Lcom/android/internal/telephony/OPOnlineConfigApn;

    const-string/jumbo v2, "RESTORE_DEFAULT_APN_CMD_ACTION call triggerOPOnlineConfigApnLoading(1)"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/OPOnlineConfigApn;->-wrap0(Lcom/android/internal/telephony/OPOnlineConfigApn;Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/android/internal/telephony/OPOnlineConfigApn$1;->this$0:Lcom/android/internal/telephony/OPOnlineConfigApn;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/OPOnlineConfigApn;->-wrap2(Lcom/android/internal/telephony/OPOnlineConfigApn;I)V

    goto :goto_0
.end method
