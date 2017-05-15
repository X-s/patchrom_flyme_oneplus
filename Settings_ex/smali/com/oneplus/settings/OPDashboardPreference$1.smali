.class Lcom/oneplus/settings/OPDashboardPreference$1;
.super Ljava/lang/Object;
.source "OPDashboardPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPDashboardPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPDashboardPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPDashboardPreference;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/oneplus/settings/OPDashboardPreference$1;->this$0:Lcom/oneplus/settings/OPDashboardPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/oneplus/settings/OPDashboardPreference$1;->this$0:Lcom/oneplus/settings/OPDashboardPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/OPDashboardPreference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/oneplus/settings/OPDashboardPreference$1;->this$0:Lcom/oneplus/settings/OPDashboardPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/OPDashboardPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/OPDashboardPreference$1;->this$0:Lcom/oneplus/settings/OPDashboardPreference;

    invoke-virtual {v1}, Lcom/oneplus/settings/OPDashboardPreference;->getFragment()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/OPDashboardPreference$1;->this$0:Lcom/oneplus/settings/OPDashboardPreference;

    invoke-virtual {v2}, Lcom/oneplus/settings/OPDashboardPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/oneplus/settings/OPDashboardPreference$1;->this$0:Lcom/oneplus/settings/OPDashboardPreference;

    invoke-virtual {v5}, Lcom/oneplus/settings/OPDashboardPreference;->getTitleRes()I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/settings/OPDashboardPreference$1;->this$0:Lcom/oneplus/settings/OPDashboardPreference;

    invoke-virtual {v6}, Lcom/oneplus/settings/OPDashboardPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/android/settings_ex/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/OPDashboardPreference$1;->this$0:Lcom/oneplus/settings/OPDashboardPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/OPDashboardPreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/oneplus/settings/OPDashboardPreference$1;->this$0:Lcom/oneplus/settings/OPDashboardPreference;

    iget-object v1, p0, Lcom/oneplus/settings/OPDashboardPreference$1;->this$0:Lcom/oneplus/settings/OPDashboardPreference;

    invoke-virtual {v1}, Lcom/oneplus/settings/OPDashboardPreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPDashboardPreference;->startOneplusActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
