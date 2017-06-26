.class Lcom/android/settings_ex/sim/SimSettings$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
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
    .line 161
    iput-object p1, p0, Lcom/android/settings_ex/sim/SimSettings$1;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimSettings$1;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # invokes: Lcom/android/settings_ex/sim/SimSettings;->updateSubscriptions()V
    invoke-static {v0}, Lcom/android/settings_ex/sim/SimSettings;->access$000(Lcom/android/settings_ex/sim/SimSettings;)V

    .line 166
    return-void
.end method
