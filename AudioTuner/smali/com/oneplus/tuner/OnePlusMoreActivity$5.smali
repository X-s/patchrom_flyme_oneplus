.class Lcom/oneplus/tuner/OnePlusMoreActivity$5;
.super Ljava/lang/Object;
.source "OnePlusMoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/OnePlusMoreActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/OnePlusMoreActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/OnePlusMoreActivity;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/oneplus/tuner/OnePlusMoreActivity$5;->this$0:Lcom/oneplus/tuner/OnePlusMoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getAccountLoginStatus()Z

    move-result v0

    .line 74
    .local v0, "isLogin":Z
    if-nez v0, :cond_0

    .line 75
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusMoreActivity$5;->this$0:Lcom/oneplus/tuner/OnePlusMoreActivity;

    iget-object v2, p0, Lcom/oneplus/tuner/OnePlusMoreActivity$5;->this$0:Lcom/oneplus/tuner/OnePlusMoreActivity;

    const v3, 0x7f0c0598

    invoke-virtual {v2, v3}, Lcom/oneplus/tuner/OnePlusMoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 88
    :goto_0
    return-void

    .line 80
    :cond_0
    const-string v1, ""

    invoke-static {v1}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->setAccountInfo(Ljava/lang/String;)V

    .line 81
    invoke-static {v4}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->setAccountLoginStatus(Z)V

    .line 82
    const-string v1, ""

    invoke-static {v1}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->setLoginToken(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusMoreActivity$5;->this$0:Lcom/oneplus/tuner/OnePlusMoreActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusMoreActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/oneplus/tuner/OnePlusMoreActivity;->access$000(Lcom/oneplus/tuner/OnePlusMoreActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 84
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusMoreActivity$5;->this$0:Lcom/oneplus/tuner/OnePlusMoreActivity;

    iget-object v2, p0, Lcom/oneplus/tuner/OnePlusMoreActivity$5;->this$0:Lcom/oneplus/tuner/OnePlusMoreActivity;

    const v3, 0x7f0c0599

    invoke-virtual {v2, v3}, Lcom/oneplus/tuner/OnePlusMoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 87
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusMoreActivity$5;->this$0:Lcom/oneplus/tuner/OnePlusMoreActivity;

    invoke-virtual {v1}, Lcom/oneplus/tuner/OnePlusMoreActivity;->finish()V

    goto :goto_0
.end method
