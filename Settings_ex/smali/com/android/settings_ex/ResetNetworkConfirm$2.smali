.class Lcom/android/settings_ex/ResetNetworkConfirm$2;
.super Ljava/lang/Object;
.source "ResetNetworkConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ResetNetworkConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ResetNetworkConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ResetNetworkConfirm;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$2;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm$2;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    iget-object v0, v0, Lcom/android/settings_ex/ResetNetworkConfirm;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 106
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings_ex/ResetNetworkConfirm$2$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/ResetNetworkConfirm$2$1;-><init>(Lcom/android/settings_ex/ResetNetworkConfirm$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
