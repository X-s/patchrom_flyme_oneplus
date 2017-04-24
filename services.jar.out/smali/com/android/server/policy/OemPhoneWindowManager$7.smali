.class Lcom/android/server/policy/OemPhoneWindowManager$7;
.super Ljava/lang/Object;
.source "OemPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 1429
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$7;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$7;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # invokes: Lcom/android/server/policy/OemPhoneWindowManager;->expandNotificationsPanel()V
    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2000(Lcom/android/server/policy/OemPhoneWindowManager;)V

    .line 1433
    return-void
.end method
