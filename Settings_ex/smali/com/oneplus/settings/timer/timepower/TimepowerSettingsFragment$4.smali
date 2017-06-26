.class Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$4;
.super Ljava/lang/Object;
.source "TimepowerSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$4;->this$0:Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 187
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$4;->this$0:Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;

    # getter for: Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mDlgVisible:Z
    invoke-static {v1}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->access$000(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    :goto_0
    return v0

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$4;->this$0:Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;

    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$4;->this$0:Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;

    # invokes: Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getTimeSettingsIntent(I)Landroid/content/Intent;
    invoke-static {v2, v0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->access$100(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;I)Landroid/content/Intent;

    move-result-object v2

    # invokes: Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->startDialogForResult(Landroid/content/Intent;I)V
    invoke-static {v1, v2, v0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->access$200(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;Landroid/content/Intent;I)V

    .line 193
    const/4 v0, 0x0

    goto :goto_0
.end method
