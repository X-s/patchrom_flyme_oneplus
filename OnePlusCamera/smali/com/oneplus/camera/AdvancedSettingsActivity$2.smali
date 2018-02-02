.class Lcom/oneplus/camera/AdvancedSettingsActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "AdvancedSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/AdvancedSettingsActivity;->registerReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/AdvancedSettingsActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AdvancedSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/AdvancedSettingsActivity;

    .prologue
    .line 1478
    iput-object p1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$2;->this$0:Lcom/oneplus/camera/AdvancedSettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$2;->this$0:Lcom/oneplus/camera/AdvancedSettingsActivity;

    invoke-static {v0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->-wrap1(Lcom/oneplus/camera/AdvancedSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1485
    invoke-static {}, Lcom/oneplus/camera/AdvancedSettingsActivity;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Intent: "

    const-string/jumbo v2, ", finish itself"

    invoke-static {v0, v1, p2, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1486
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$2;->this$0:Lcom/oneplus/camera/AdvancedSettingsActivity;

    invoke-virtual {v0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->finish()V

    .line 1481
    :cond_0
    return-void
.end method
