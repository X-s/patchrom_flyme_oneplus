.class Lcom/oneplus/tuner/base/BaseActivity$HeadsetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/base/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeadsetReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/base/BaseActivity;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/oneplus/tuner/base/BaseActivity$HeadsetReceiver;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 200
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    const-string v1, "state"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 204
    const-string v1, "shuqi"

    const-string v2, "Headset unplugged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity$HeadsetReceiver;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    iput-boolean v3, v1, Lcom/oneplus/tuner/base/BaseActivity;->mIsHeadsetPlugged:Z

    .line 206
    invoke-static {v3}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->setHeadsetPlugStatus(Z)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    const-string v1, "state"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 208
    const-string v1, "shuqi"

    const-string v2, "Headset plugged in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v1, p0, Lcom/oneplus/tuner/base/BaseActivity$HeadsetReceiver;->this$0:Lcom/oneplus/tuner/base/BaseActivity;

    iput-boolean v4, v1, Lcom/oneplus/tuner/base/BaseActivity;->mIsHeadsetPlugged:Z

    .line 210
    invoke-static {v4}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->setHeadsetPlugStatus(Z)V

    goto :goto_0
.end method
