.class public Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile$BroadcastReceiverHelper;
.super Landroid/content/BroadcastReceiver;
.source "BottomKeysTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BroadcastReceiverHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile$BroadcastReceiverHelper;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;

    .line 144
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 145
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 149
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui.action.DISABLE_BOTTOMKEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile$BroadcastReceiverHelper;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;

    # getter for: Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->DEBUG:Z
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->access$100(Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BottomKeysTile"

    const-string v1, "receive intent from bottom key"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile$BroadcastReceiverHelper;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;

    const/4 v1, 0x0

    # invokes: Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->setEnable(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;->access$200(Lcom/android/systemui_ex/controlpanel/qs/tiles/BottomKeysTile;Z)V

    .line 153
    :cond_1
    return-void
.end method
