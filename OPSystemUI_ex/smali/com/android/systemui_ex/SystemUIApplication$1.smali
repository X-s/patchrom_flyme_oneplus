.class Lcom/android/systemui_ex/SystemUIApplication$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemUIApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/SystemUIApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/SystemUIApplication;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/SystemUIApplication;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/systemui_ex/SystemUIApplication$1;->this$0:Lcom/android/systemui_ex/SystemUIApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 97
    iget-object v2, p0, Lcom/android/systemui_ex/SystemUIApplication$1;->this$0:Lcom/android/systemui_ex/SystemUIApplication;

    # getter for: Lcom/android/systemui_ex/SystemUIApplication;->mBootCompleted:Z
    invoke-static {v2}, Lcom/android/systemui_ex/SystemUIApplication;->access$100(Lcom/android/systemui_ex/SystemUIApplication;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    :cond_0
    return-void

    .line 100
    :cond_1
    iget-object v2, p0, Lcom/android/systemui_ex/SystemUIApplication$1;->this$0:Lcom/android/systemui_ex/SystemUIApplication;

    invoke-virtual {v2, p0}, Lcom/android/systemui_ex/SystemUIApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    iget-object v2, p0, Lcom/android/systemui_ex/SystemUIApplication$1;->this$0:Lcom/android/systemui_ex/SystemUIApplication;

    const/4 v3, 0x1

    # setter for: Lcom/android/systemui_ex/SystemUIApplication;->mBootCompleted:Z
    invoke-static {v2, v3}, Lcom/android/systemui_ex/SystemUIApplication;->access$102(Lcom/android/systemui_ex/SystemUIApplication;Z)Z

    .line 102
    iget-object v2, p0, Lcom/android/systemui_ex/SystemUIApplication$1;->this$0:Lcom/android/systemui_ex/SystemUIApplication;

    # getter for: Lcom/android/systemui_ex/SystemUIApplication;->mServicesStarted:Z
    invoke-static {v2}, Lcom/android/systemui_ex/SystemUIApplication;->access$200(Lcom/android/systemui_ex/SystemUIApplication;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/android/systemui_ex/SystemUIApplication$1;->this$0:Lcom/android/systemui_ex/SystemUIApplication;

    # getter for: Lcom/android/systemui_ex/SystemUIApplication;->mServices:[Lcom/android/systemui_ex/SystemUI;
    invoke-static {v2}, Lcom/android/systemui_ex/SystemUIApplication;->access$300(Lcom/android/systemui_ex/SystemUIApplication;)[Lcom/android/systemui_ex/SystemUI;

    move-result-object v2

    array-length v0, v2

    .line 104
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 105
    iget-object v2, p0, Lcom/android/systemui_ex/SystemUIApplication$1;->this$0:Lcom/android/systemui_ex/SystemUIApplication;

    # getter for: Lcom/android/systemui_ex/SystemUIApplication;->mServices:[Lcom/android/systemui_ex/SystemUI;
    invoke-static {v2}, Lcom/android/systemui_ex/SystemUIApplication;->access$300(Lcom/android/systemui_ex/SystemUIApplication;)[Lcom/android/systemui_ex/SystemUI;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/systemui_ex/SystemUI;->onBootCompleted()V

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
