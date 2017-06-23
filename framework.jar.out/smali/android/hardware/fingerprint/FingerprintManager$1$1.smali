.class Landroid/hardware/fingerprint/FingerprintManager$1$1;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/fingerprint/FingerprintManager$1;->onLockoutReset(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/fingerprint/FingerprintManager$1;

.field final synthetic val$wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/hardware/fingerprint/FingerprintManager$1;Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    .prologue
    .line 726
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$1$1;->this$1:Landroid/hardware/fingerprint/FingerprintManager$1;

    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager$1$1;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 730
    :try_start_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$1$1;->this$1:Landroid/hardware/fingerprint/FingerprintManager$1;

    iget-object v0, v0, Landroid/hardware/fingerprint/FingerprintManager$1;->val$callback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;->onLockoutReset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$1$1;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 734
    return-void

    .line 732
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$1$1;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
