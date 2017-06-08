.class Lcom/android/settings_ex/sim/SimSettings$3;
.super Landroid/telephony/PhoneStateListener;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/sim/SimSettings;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/sim/SimSettings;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/sim/SimSettings;II)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 991
    iput-object p1, p0, Lcom/android/settings_ex/sim/SimSettings$3;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    iput p3, p0, Lcom/android/settings_ex/sim/SimSettings$3;->val$i:I

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 995
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimSettings$3;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mCallState:[I
    invoke-static {v0}, Lcom/android/settings_ex/sim/SimSettings;->access$1700(Lcom/android/settings_ex/sim/SimSettings;)[I

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/sim/SimSettings$3;->val$i:I

    aput p1, v0, v1

    .line 996
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimSettings$3;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # invokes: Lcom/android/settings_ex/sim/SimSettings;->updateCellularDataValues()V
    invoke-static {v0}, Lcom/android/settings_ex/sim/SimSettings;->access$1800(Lcom/android/settings_ex/sim/SimSettings;)V

    .line 997
    return-void
.end method
