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
    .param p1, "this$0"    # Lcom/android/settings_ex/sim/SimSettings;
    .param p2, "$anonymous0"    # I
    .param p3, "val$i"    # I

    .prologue
    .line 245
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
    .line 249
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimSettings$3;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    invoke-static {v0}, Lcom/android/settings_ex/sim/SimSettings;->-get0(Lcom/android/settings_ex/sim/SimSettings;)[I

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/sim/SimSettings$3;->val$i:I

    aput p1, v0, v1

    .line 250
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimSettings$3;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    invoke-static {v0}, Lcom/android/settings_ex/sim/SimSettings;->-wrap1(Lcom/android/settings_ex/sim/SimSettings;)V

    .line 247
    return-void
.end method
