.class Lcom/android/settings_ex/FingerprintAndPWD$5;
.super Ljava/lang/Object;
.source "FingerprintAndPWD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/FingerprintAndPWD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/FingerprintAndPWD;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/FingerprintAndPWD;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/settings_ex/FingerprintAndPWD$5;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD$5;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    # getter for: Lcom/android/settings_ex/FingerprintAndPWD;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/settings_ex/FingerprintAndPWD;->access$900(Lcom/android/settings_ex/FingerprintAndPWD;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD$5;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    # invokes: Lcom/android/settings_ex/FingerprintAndPWD;->releaseWakeLock()V
    invoke-static {v0}, Lcom/android/settings_ex/FingerprintAndPWD;->access$1200(Lcom/android/settings_ex/FingerprintAndPWD;)V

    .line 478
    :cond_0
    return-void
.end method
