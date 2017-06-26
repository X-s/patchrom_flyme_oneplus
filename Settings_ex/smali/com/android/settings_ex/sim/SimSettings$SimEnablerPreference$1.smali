.class Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference$1;
.super Ljava/lang/Object;
.source "SimSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;)V
    .locals 0

    .prologue
    .line 797
    iput-object p1, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference$1;->this$1:Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 799
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 800
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference$1;->this$1:Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;

    # invokes: Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->sendUiccProvisioningRequest()V
    invoke-static {v0}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->access$1200(Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;)V

    .line 806
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_2

    .line 802
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference$1;->this$1:Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->update()V

    goto :goto_0

    .line 803
    :cond_2
    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference$1;->this$1:Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->update()V

    goto :goto_0
.end method
