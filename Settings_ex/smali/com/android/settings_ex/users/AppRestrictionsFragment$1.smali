.class Lcom/android/settings_ex/users/AppRestrictionsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/users/AppRestrictionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/users/AppRestrictionsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/users/AppRestrictionsFragment;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$1;->this$0:Lcom/android/settings_ex/users/AppRestrictionsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$1;->this$0:Lcom/android/settings_ex/users/AppRestrictionsFragment;

    # getter for: Lcom/android/settings_ex/users/AppRestrictionsFragment;->mAppListChanged:Z
    invoke-static {v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->access$000(Lcom/android/settings_ex/users/AppRestrictionsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$1;->this$0:Lcom/android/settings_ex/users/AppRestrictionsFragment;

    # invokes: Lcom/android/settings_ex/users/AppRestrictionsFragment;->applyUserAppsStates()V
    invoke-static {v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->access$100(Lcom/android/settings_ex/users/AppRestrictionsFragment;)V

    .line 128
    :cond_0
    return-void
.end method
