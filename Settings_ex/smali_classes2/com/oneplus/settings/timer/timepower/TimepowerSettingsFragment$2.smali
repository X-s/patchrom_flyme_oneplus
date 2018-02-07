.class Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$2;
.super Ljava/lang/Object;
.source "TimepowerSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .param p1, "this$0"    # Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$2;->this$0:Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 135
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$2;->this$0:Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;

    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->-get0(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$2;->this$0:Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$2;->this$0:Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;

    invoke-static {v1, v2}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->-wrap0(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;I)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->-wrap1(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;Landroid/content/Intent;I)V

    .line 134
    return-void
.end method
