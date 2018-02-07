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
    .param p1, "this$0"    # Lcom/android/settings_ex/users/AppRestrictionsFragment;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$1;->this$0:Lcom/android/settings_ex/users/AppRestrictionsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$1;->this$0:Lcom/android/settings_ex/users/AppRestrictionsFragment;

    invoke-static {v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->-get0(Lcom/android/settings_ex/users/AppRestrictionsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$1;->this$0:Lcom/android/settings_ex/users/AppRestrictionsFragment;

    invoke-static {v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment;->-get1(Lcom/android/settings_ex/users/AppRestrictionsFragment;)Lcom/android/settings_exlib/users/AppRestrictionsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$1;->this$0:Lcom/android/settings_ex/users/AppRestrictionsFragment;

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/users/AppRestrictionsHelper;->applyUserAppsStates(Lcom/android/settings_exlib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;)V

    .line 113
    :cond_0
    return-void
.end method
