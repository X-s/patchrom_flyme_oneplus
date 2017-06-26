.class Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$3;
.super Ljava/lang/Object;
.source "OPFingerprintEnrollEnrolling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$3;->this$0:Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$3;->this$0:Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;

    # getter for: Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->access$100(Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling$3;->this$0:Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;

    # invokes: Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->releaseWakeLock()V
    invoke-static {v0}, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;->access$200(Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;)V

    .line 305
    :cond_0
    return-void
.end method
