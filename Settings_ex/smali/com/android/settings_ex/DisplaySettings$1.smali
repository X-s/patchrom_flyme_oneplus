.class Lcom/android/settings_ex/DisplaySettings$1;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Lcom/android/settings_ex/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DisplaySettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DisplaySettings;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DisplaySettings;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/settings_ex/DisplaySettings$1;->this$0:Lcom/android/settings_ex/DisplaySettings;

    iput-object p2, p0, Lcom/android/settings_ex/DisplaySettings$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 3
    .param p1, "pos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 179
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 180
    .local v0, "locked":Z
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$1;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xcb

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 182
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    .line 183
    const/4 v1, 0x1

    return v1
.end method
