.class Lcom/android/settings_ex/sim/SimSettings$2;
.super Landroid/telephony/PhoneStateListener;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/sim/SimSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/sim/SimSettings;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/settings_ex/sim/SimSettings$2;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 302
    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$2;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    const-string v5, "sim_cellular_data"

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 303
    .local v1, "pref":Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 304
    const-string v4, "ril.cdma.inecmmode"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 306
    .local v0, "ecbMode":Z
    if-nez p1, :cond_1

    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$2;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;
    invoke-static {v4}, Lcom/android/settings_ex/sim/SimSettings;->access$100(Lcom/android/settings_ex/sim/SimSettings;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_1

    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$2;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # invokes: Lcom/android/settings_ex/sim/SimSettings;->disableDds()Z
    invoke-static {v4}, Lcom/android/settings_ex/sim/SimSettings;->access$200(Lcom/android/settings_ex/sim/SimSettings;)Z

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 309
    .end local v0    # "ecbMode":Z
    :cond_0
    return-void

    .restart local v0    # "ecbMode":Z
    :cond_1
    move v2, v3

    .line 306
    goto :goto_0
.end method
