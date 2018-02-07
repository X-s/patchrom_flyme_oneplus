.class Lcom/android/settings_ex/TrustedCredentialsSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TrustedCredentialsSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/TrustedCredentialsSettings;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$1;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 172
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 174
    const-string/jumbo v3, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 173
    if-nez v3, :cond_0

    .line 175
    const-string/jumbo v3, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 173
    if-eqz v3, :cond_1

    .line 176
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$1;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-static {v3}, Lcom/android/settings_ex/TrustedCredentialsSettings;->-get1(Lcom/android/settings_ex/TrustedCredentialsSettings;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;

    .line 177
    .local v1, "adapter":Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;
    invoke-virtual {v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;->load()V

    goto :goto_0

    .line 171
    .end local v1    # "adapter":Lcom/android/settings_ex/TrustedCredentialsSettings$GroupAdapter;
    .end local v2    # "adapter$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
