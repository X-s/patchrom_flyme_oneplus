.class Lcom/android/settings_ex/sim/OPSimSettings$8;
.super Landroid/telephony/PhoneStateListener;
.source "OPSimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/sim/OPSimSettings;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/sim/OPSimSettings;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/sim/OPSimSettings;II)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 509
    iput-object p1, p0, Lcom/android/settings_ex/sim/OPSimSettings$8;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    iput p3, p0, Lcom/android/settings_ex/sim/OPSimSettings$8;->val$i:I

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "ignored"    # Ljava/lang/String;

    .prologue
    .line 512
    const-string v0, "OPSimSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v0, p0, Lcom/android/settings_ex/sim/OPSimSettings$8;->this$0:Lcom/android/settings_ex/sim/OPSimSettings;

    # getter for: Lcom/android/settings_ex/sim/OPSimSettings;->mCallState:[I
    invoke-static {v0}, Lcom/android/settings_ex/sim/OPSimSettings;->access$1300(Lcom/android/settings_ex/sim/OPSimSettings;)[I

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/sim/OPSimSettings$8;->val$i:I

    aput p1, v0, v1

    .line 515
    return-void
.end method
