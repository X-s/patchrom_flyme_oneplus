.class Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$2;
.super Landroid/os/Handler;
.source "PowerUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    .prologue
    .line 722
    iput-object p1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 726
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 755
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 725
    return-void

    .line 728
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;

    .line 730
    .local v1, "entry":Lcom/android/settings_ex/fuelgauge/BatteryEntry;
    iget-object v5, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    .line 731
    iget-object v6, v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v6, v6, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 730
    invoke-virtual {v5, v6}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;

    .line 732
    .local v2, "pgp":Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;
    if-eqz v2, :cond_0

    .line 733
    iget-object v5, v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 734
    .local v4, "userId":I
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 735
    .local v3, "userHandle":Landroid/os/UserHandle;
    iget-object v5, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    iget-object v5, v5, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    invoke-virtual {v1}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 736
    iget-object v5, v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 737
    iget-object v5, v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v5, v5, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v5, v6, :cond_0

    .line 738
    iget-object v5, v1, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setContentDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 743
    .end local v1    # "entry":Lcom/android/settings_ex/fuelgauge/BatteryEntry;
    .end local v2    # "pgp":Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;
    .end local v3    # "userHandle":Landroid/os/UserHandle;
    .end local v4    # "userId":I
    :sswitch_1
    iget-object v5, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    invoke-virtual {v5}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 744
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 745
    invoke-virtual {v0}, Landroid/app/Activity;->reportFullyDrawn()V

    goto :goto_0

    .line 749
    .end local v0    # "activity":Landroid/app/Activity;
    :sswitch_2
    iget-object v5, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    invoke-static {v5}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->-get0(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->update()V

    .line 750
    iget-object v5, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    invoke-static {v5}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->-get1(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 751
    iget-object v5, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    invoke-static {v5}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->-wrap0(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)V

    goto :goto_0

    .line 726
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3e8 -> :sswitch_2
    .end sparse-switch
.end method
