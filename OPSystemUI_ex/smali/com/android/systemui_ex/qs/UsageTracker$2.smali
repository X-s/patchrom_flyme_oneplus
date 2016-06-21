.class Lcom/android/systemui_ex/qs/UsageTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "UsageTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/qs/UsageTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/qs/UsageTracker;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/qs/UsageTracker;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/systemui_ex/qs/UsageTracker$2;->this$0:Lcom/android/systemui_ex/qs/UsageTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/systemui_ex/qs/UsageTracker$2;->this$0:Lcom/android/systemui_ex/qs/UsageTracker;

    # getter for: Lcom/android/systemui_ex/qs/UsageTracker;->mResetAction:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui_ex/qs/UsageTracker;->access$000(Lcom/android/systemui_ex/qs/UsageTracker;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/systemui_ex/qs/UsageTracker$2;->this$0:Lcom/android/systemui_ex/qs/UsageTracker;

    invoke-virtual {v0}, Lcom/android/systemui_ex/qs/UsageTracker;->reset()V

    .line 100
    :cond_0
    return-void
.end method
