.class Lcom/android/settings_ex/sim/SimBootReceiver$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "SimBootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/sim/SimBootReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/sim/SimBootReceiver;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/sim/SimBootReceiver;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/settings_ex/sim/SimBootReceiver$1;->this$0:Lcom/android/settings_ex/sim/SimBootReceiver;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method
