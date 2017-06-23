.class Lcom/android/internal/telephony/PhoneBase$3;
.super Landroid/content/BroadcastReceiver;
.source "PhoneBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/PhoneBase;->startMonitoringImsService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneBase$3;->this$0:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 594
    const-string v2, "availableArray"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 596
    .local v1, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "activeArray"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 598
    .local v0, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase$3;->this$0:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase$3;->this$0:Lcom/android/internal/telephony/PhoneBase;

    const/16 v4, 0x378

    new-instance v5, Lcom/android/internal/telephony/PhoneBase$TetherStateChange;

    iget-object v6, p0, Lcom/android/internal/telephony/PhoneBase$3;->this$0:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v5, v6, v1, v0}, Lcom/android/internal/telephony/PhoneBase$TetherStateChange;-><init>(Lcom/android/internal/telephony/PhoneBase;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/PhoneBase;->sendMessage(Landroid/os/Message;)Z

    .line 599
    return-void
.end method
