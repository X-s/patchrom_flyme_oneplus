.class Lcom/android/settings_ex/CryptKeeperSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "CryptKeeperSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/CryptKeeperSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/CryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/CryptKeeperSettings;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings_ex/CryptKeeperSettings$1;->this$0:Lcom/android/settings_ex/CryptKeeperSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v10, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "action":Ljava/lang/String;
    const-string v11, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 59
    const-string v11, "level"

    invoke-virtual {p2, v11, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 60
    .local v2, "level":I
    const-string v11, "plugged"

    invoke-virtual {p2, v11, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 61
    .local v6, "plugged":I
    const-string v11, "invalid_charger"

    invoke-virtual {p2, v11, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 63
    .local v1, "invalidCharger":I
    const-string v11, "vold.pfe"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "pfeState":Ljava/lang/String;
    const-string v11, "activated"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 65
    .local v4, "pfeActivated":Z
    const/16 v11, 0x50

    if-lt v2, v11, :cond_1

    move v3, v8

    .line 66
    .local v3, "levelOk":Z
    :goto_0
    and-int/lit8 v11, v6, 0x7

    if-eqz v11, :cond_2

    if-nez v1, :cond_2

    move v7, v8

    .line 71
    .local v7, "pluggedOk":Z
    :goto_1
    iget-object v11, p0, Lcom/android/settings_ex/CryptKeeperSettings$1;->this$0:Lcom/android/settings_ex/CryptKeeperSettings;

    # getter for: Lcom/android/settings_ex/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;
    invoke-static {v11}, Lcom/android/settings_ex/CryptKeeperSettings;->access$000(Lcom/android/settings_ex/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v11

    if-eqz v3, :cond_3

    if-eqz v7, :cond_3

    if-nez v4, :cond_3

    :goto_2
    invoke-virtual {v11, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 72
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeperSettings$1;->this$0:Lcom/android/settings_ex/CryptKeeperSettings;

    # getter for: Lcom/android/settings_ex/CryptKeeperSettings;->mPowerWarning:Landroid/view/View;
    invoke-static {v8}, Lcom/android/settings_ex/CryptKeeperSettings;->access$100(Lcom/android/settings_ex/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v11

    if-eqz v7, :cond_4

    move v8, v10

    :goto_3
    invoke-virtual {v11, v8}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeperSettings$1;->this$0:Lcom/android/settings_ex/CryptKeeperSettings;

    # getter for: Lcom/android/settings_ex/CryptKeeperSettings;->mBatteryWarning:Landroid/view/View;
    invoke-static {v8}, Lcom/android/settings_ex/CryptKeeperSettings;->access$200(Lcom/android/settings_ex/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v8

    if-eqz v3, :cond_5

    :goto_4
    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .end local v1    # "invalidCharger":I
    .end local v2    # "level":I
    .end local v3    # "levelOk":Z
    .end local v4    # "pfeActivated":Z
    .end local v5    # "pfeState":Ljava/lang/String;
    .end local v6    # "plugged":I
    .end local v7    # "pluggedOk":Z
    :cond_0
    return-void

    .restart local v1    # "invalidCharger":I
    .restart local v2    # "level":I
    .restart local v4    # "pfeActivated":Z
    .restart local v5    # "pfeState":Ljava/lang/String;
    .restart local v6    # "plugged":I
    :cond_1
    move v3, v9

    .line 65
    goto :goto_0

    .restart local v3    # "levelOk":Z
    :cond_2
    move v7, v9

    .line 66
    goto :goto_1

    .restart local v7    # "pluggedOk":Z
    :cond_3
    move v8, v9

    .line 71
    goto :goto_2

    :cond_4
    move v8, v9

    .line 72
    goto :goto_3

    :cond_5
    move v10, v9

    .line 73
    goto :goto_4
.end method
